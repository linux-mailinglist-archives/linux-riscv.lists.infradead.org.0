Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3AAA653E
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 11:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/cS0nVse8c/VV9TG934NEc3iiKFQEznLoSJQ+9NVaA=; b=VuFWaUN6Zw/Wp8
	J3fsgbkZeG8iZymkEoHawCnK3hvBNpKQ5NEtZl6/J0znWOkUxHi7W6SJG/lKuux8nY5bgWn+Zxu9B
	Tpxhs33y66hjGoO9CcEFuslXVQ3Aj2AFgu1ynAJQiqk5NGSt06hjOP8R0lOAJRXC1IHeYVjhVaE87
	OARSxfFhYtbjfR1OR0KjR/MecSkTLh6tFVc6UVNSSaCnDVhwP1jciYPC/1n88G/KX1mtZFXksRAnK
	OBZFDZiQDShTo3vQTVOi7puDeMRD0zf/daHmvrUjNqROd7ehbhqX2cgfLlQpgXVp0R9CZOzZvraXp
	AMkilxeDWRZMWT4s5HSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55BC-0004L0-I3; Tue, 03 Sep 2019 09:32:50 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i55B7-0004Ha-NS; Tue, 03 Sep 2019 09:32:46 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 02/20] riscv: refactor the IPI code
Date: Tue,  3 Sep 2019 11:32:21 +0200
Message-Id: <20190903093239.21278-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903093239.21278-1-hch@lst.de>
References: <20190903093239.21278-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Atish Patra <atish.patra@wdc.com>, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This prepares for adding native non-SBI IPI code.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/smp.c | 55 +++++++++++++++++++++++------------------
 1 file changed, 31 insertions(+), 24 deletions(-)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 5a9834503a2f..8cd730239613 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -78,13 +78,38 @@ static void ipi_stop(void)
 		wait_for_interrupt();
 }
 
+static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
+{
+	int cpuid, hartid;
+	struct cpumask hartid_mask;
+
+	cpumask_clear(&hartid_mask);
+	mb();
+	for_each_cpu(cpuid, mask) {
+		set_bit(op, &ipi_data[cpuid].bits);
+		hartid = cpuid_to_hartid_map(cpuid);
+		cpumask_set_cpu(hartid, &hartid_mask);
+	}
+	mb();
+	sbi_send_ipi(cpumask_bits(&hartid_mask));
+}
+
+static void send_ipi_single(int cpu, enum ipi_message_type op)
+{
+	send_ipi_mask(cpumask_of(cpu), op);
+}
+
+static inline void clear_ipi(void)
+{
+	csr_clear(CSR_SIP, SIE_SSIE);
+}
+
 void riscv_software_interrupt(void)
 {
 	unsigned long *pending_ipis = &ipi_data[smp_processor_id()].bits;
 	unsigned long *stats = ipi_data[smp_processor_id()].stats;
 
-	/* Clear pending IPI */
-	csr_clear(CSR_SIP, SIE_SSIE);
+	clear_ipi();
 
 	while (true) {
 		unsigned long ops;
@@ -118,23 +143,6 @@ void riscv_software_interrupt(void)
 	}
 }
 
-static void
-send_ipi_message(const struct cpumask *to_whom, enum ipi_message_type operation)
-{
-	int cpuid, hartid;
-	struct cpumask hartid_mask;
-
-	cpumask_clear(&hartid_mask);
-	mb();
-	for_each_cpu(cpuid, to_whom) {
-		set_bit(operation, &ipi_data[cpuid].bits);
-		hartid = cpuid_to_hartid_map(cpuid);
-		cpumask_set_cpu(hartid, &hartid_mask);
-	}
-	mb();
-	sbi_send_ipi(cpumask_bits(&hartid_mask));
-}
-
 static const char * const ipi_names[] = {
 	[IPI_RESCHEDULE]	= "Rescheduling interrupts",
 	[IPI_CALL_FUNC]		= "Function call interrupts",
@@ -156,12 +164,12 @@ void show_ipi_stats(struct seq_file *p, int prec)
 
 void arch_send_call_function_ipi_mask(struct cpumask *mask)
 {
-	send_ipi_message(mask, IPI_CALL_FUNC);
+	send_ipi_mask(mask, IPI_CALL_FUNC);
 }
 
 void arch_send_call_function_single_ipi(int cpu)
 {
-	send_ipi_message(cpumask_of(cpu), IPI_CALL_FUNC);
+	send_ipi_single(cpu, IPI_CALL_FUNC);
 }
 
 void smp_send_stop(void)
@@ -176,7 +184,7 @@ void smp_send_stop(void)
 
 		if (system_state <= SYSTEM_RUNNING)
 			pr_crit("SMP: stopping secondary CPUs\n");
-		send_ipi_message(&mask, IPI_CPU_STOP);
+		send_ipi_mask(&mask, IPI_CPU_STOP);
 	}
 
 	/* Wait up to one second for other CPUs to stop */
@@ -191,6 +199,5 @@ void smp_send_stop(void)
 
 void smp_send_reschedule(int cpu)
 {
-	send_ipi_message(cpumask_of(cpu), IPI_RESCHEDULE);
+	send_ipi_single(cpu, IPI_RESCHEDULE);
 }
-
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
