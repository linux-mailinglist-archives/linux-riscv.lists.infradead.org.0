Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD8197DC8
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 16:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpTez8OKOR5TWlP/PUWdXXZAyEeuHfUNaQ/MOmkjK38=; b=X/Q1NwJoJheQKm
	4/6Z9BK4s2A0EDhvbSNgEyqNQeu0YeYUnS/RmBc04oaMLz+RqvLtihVovugFyyfAEFfKNryZeGHrM
	VMOqjqKn4RYESurToG8/gHfIl9Yt6+7WK3oF2fbLTo9lmYdojjav/WcRjlM/hJV/YrfjxlmYBGAnu
	YenLRKfTTC0w+IeanYY2ndelNCBLo7S0U7uMWtH0NjOhXFcq3TODNpNHFnEg7k5WOXpbY62EVMnCy
	dD8K09jAXVz9XqOhjx6OPVE5WXlSXs0OX65WRaIq634P4oXeCQV6Iri/1z4syz1i1UJ5xX9WNo8kK
	Wr7QmOxdbfwuqXhhCnHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0S4U-00067T-NS; Wed, 21 Aug 2019 14:58:46 +0000
Received: from [182.171.81.139] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0S4Q-00063D-Iu; Wed, 21 Aug 2019 14:58:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 2/6] riscv: cleanup send_ipi_mask
Date: Wed, 21 Aug 2019 23:58:33 +0900
Message-Id: <20190821145837.3686-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821145837.3686-1-hch@lst.de>
References: <20190821145837.3686-1-hch@lst.de>
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
Cc: Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Use the special barriers for atomic bitops to make the intention
a little more clear, and use riscv_cpuid_to_hartid_mask instead of
open coding it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/kernel/smp.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 8cd730239613..2e21669aa068 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -80,17 +80,15 @@ static void ipi_stop(void)
 
 static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
 {
-	int cpuid, hartid;
 	struct cpumask hartid_mask;
+	int cpu;
 
-	cpumask_clear(&hartid_mask);
-	mb();
-	for_each_cpu(cpuid, mask) {
-		set_bit(op, &ipi_data[cpuid].bits);
-		hartid = cpuid_to_hartid_map(cpuid);
-		cpumask_set_cpu(hartid, &hartid_mask);
-	}
-	mb();
+	smp_mb__before_atomic();
+	for_each_cpu(cpu, mask)
+		set_bit(op, &ipi_data[cpu].bits);
+	smp_mb__after_atomic();
+
+	riscv_cpuid_to_hartid_mask(mask, &hartid_mask);
 	sbi_send_ipi(cpumask_bits(&hartid_mask));
 }
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
