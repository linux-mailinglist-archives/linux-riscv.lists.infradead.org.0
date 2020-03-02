Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF121767F7
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 00:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSMPw7DPdcsy0NmOhL2SOir1RkpzDH0968wiTgUt0rU=; b=ozERQWp4TgBNNp
	yO1EQdumVSUflofIh4pzzk0jxKARoxlqxcDibqerPZ02abtbdBc8zH7disLkmWRBATg8uyhpGCkWq
	vM7Wua9ihxVKuLxNY6j2Q9Ajq/MDqY1aecY+f3+mi9kKa92XeDA6IZV3iBcSc92U1KcorOFEOo1mS
	IiCcEHrgj87zTgDo61JbxmBTksqwUv2ZuDt7GTCHoUnssRrbX0b5KVIM48TN6FnRlD9taY7cLtble
	1mLSXtCsZ7gAeeJeRLaivqsVN5yV1PgGyOcycXLCWSDA/H2ofAItciY+1e5jzbz3yljnJWhExREGf
	xW6u1JqbW5wT9xZ4zooA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uGQ-0002yX-AW; Mon, 02 Mar 2020 23:14:18 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8uGK-0002uB-0E
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 23:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583190868; x=1614726868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=An4QxOIbgeJWb2ziaNibTecv8A2NG8L/MhNmQAwRso4=;
 b=ePfUt0J1EXQ1fe0hUg4f4wNRLBT+Kja7siH3qgx4W96JPara3HRAkfWP
 M5bJq5J8pTGIRyHYVFQto/CwG+ILSfG5QG57L+/73lCdiHY7BKsn70mjj
 jEUH7zQ2IIwLHiqOR0HYSUuh0qFkDs1OLCotElsTyh1Dcz4dPAs3smePD
 E7BGlGVOvVJn2nFqrgm3ojuG9VgwhyLFi6hmErT2TYQ4kur28fZI0Pkdz
 02XjW18+PPdjj2XI/dW83ayvmyfiGd2Nx3UCI5jzZBkq4ZPgi3Q2gmnDS
 Bez90exsAGUFJPtaSgs66chC9i9TlHLf9y/lq1ZI7DLBToMLDcNL546zy w==;
IronPort-SDR: 7yJlo/Co5QSNwmP5XoOfl4FH01quYrc8vXCX8a6gsRENenhliTOs+aJOdBvW54/gdMrXDqxXRi
 yTI3oV8xJ3FRlLgnSgsQOwMZxqV5axibyIcWVY9N5bzFSjV5Fe6Ges57Iu4EZqIsdJ8cyWED5J
 QJH5nuU9Pk9IdJ7Xi7D1ZS6LSHMt6Xk2tkWABQXbP4r/7hOse+r6/WwbJmJpdcZFCpKfhRJqKT
 7u85Gvv1VPcDUxcZXYaDIGR9VX0CLKx+i784S6Ja9Ee/P1UFyBw4DlDI4exSUcq9CTj0fWH6MU
 S6E=
X-IronPort-AV: E=Sophos;i="5.70,508,1574092800"; d="scan'208";a="233148686"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 03 Mar 2020 07:13:57 +0800
IronPort-SDR: 49TZO/bUf5jj8/Z7CwqRbRVeJB7+M1LaOPwfbX1kmHS6iFoS1FiMDN+ha567Vdf8NG9fk8G4P+
 zHW1+fZk2gjQ4vAyE4lV+mv4rflIFJzHRF9DmirgjKu4yJodLr/4ooQdIrwYk7bWFfGShkud0b
 JLxlsNCJBB33lGDj2yFOoMDnqynCK22q8CqNQgcmTN6zLwKQr/FeHg427+F2R/McbJ0Q2S6RDI
 dbGzOP95D4EwekfUfzHWytViHbxuB0rp1iu4CfuVSc0r9xi1SzzCM8y5R0VKgmNvYFYmGkHC7Y
 GpOFBWQTS3qEGSE9LZNLJjoa
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 15:06:07 -0800
IronPort-SDR: NEpdmUaJ9bZcwWy8DsNyzAMLJ6giCXg883z2OrKbGpn9zhr9ixzPWVF5akUozek7BXnM+Tz9d3
 8gygzaSLUuJyrBukLook9gUK02xsKRSGqMqA19E3jQTahWs+ae7F/JTc+QkvxmbS/qF3T4+6nQ
 DgwvnMaMA4pSBim38e/x7ZC7M5CgWn0rrkpqbzTaRF/phSsdctlNEh73vT8pN1+AR1E2njw/yr
 cezushU2p0XEvaZ1K+hzmBMR9FGhYEZvNp8Aor64A32FMAzPtVprZQyfUoM9CdjCgeL3skoV5+
 w9I=
WDCIronportException: Internal
Received: from usa002267.ad.shared (HELO yoda.hgst.com) ([10.86.54.35])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 Mar 2020 15:13:51 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] irqchip/sifive-plic: Enable/Disable external
 interrupts upon cpu online/offline
Date: Mon,  2 Mar 2020 15:11:45 -0800
Message-Id: <20200302231146.15530-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200302231146.15530-1-atish.patra@wdc.com>
References: <20200302231146.15530-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_151412_079095_DDF96BC0 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Vincent Chen <vincent.chen@sifive.com>,
 Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 Steven Price <steven.price@arm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Atish Patra <atish.patra@wdc.com>, Anju T Sudhakar <anju@linux.vnet.ibm.com>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, PLIC threshold is only initialized once in the beginning.
However, threshold can be set to disabled if a CPU is marked offline with
CPU hotplug feature. This will not allow to change the irq affinity to a
CPU that just came online.

Add PLIC specific CPU hotplug callbacks and enable the threshold when a CPU
comes online. Take this opportunity to move the external interrupt enable
code from trap init to PLIC driver as well. On cpu offline path, the driver
performs the exact opposite operations i.e. disable the interrupt and
the threshold.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/kernel/traps.c         |  2 +-
 drivers/irqchip/irq-sifive-plic.c | 38 +++++++++++++++++++++++++++----
 include/linux/cpuhotplug.h        |  1 +
 3 files changed, 36 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index ffb3d94bf0cc..55ea614d89bf 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -157,5 +157,5 @@ void __init trap_init(void)
 	/* Set the exception vector address */
 	csr_write(CSR_TVEC, &handle_exception);
 	/* Enable interrupts */
-	csr_write(CSR_IE, IE_SIE | IE_EIE);
+	csr_write(CSR_IE, IE_SIE);
 }
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index aa4af886e43a..7c7f37393f99 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -4,6 +4,7 @@
  * Copyright (C) 2018 Christoph Hellwig
  */
 #define pr_fmt(fmt) "plic: " fmt
+#include <linux/cpu.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/irq.h>
@@ -55,6 +56,9 @@
 #define     CONTEXT_THRESHOLD		0x00
 #define     CONTEXT_CLAIM		0x04
 
+#define	PLIC_DISABLE_THRESHOLD		0xf
+#define	PLIC_ENABLE_THRESHOLD		0
+
 static void __iomem *plic_regs;
 
 struct plic_handler {
@@ -230,6 +234,32 @@ static int plic_find_hart_id(struct device_node *node)
 	return -1;
 }
 
+static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
+{
+	/* priority must be > threshold to trigger an interrupt */
+	writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
+}
+
+static int plic_dying_cpu(unsigned int cpu)
+{
+	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
+
+	csr_clear(CSR_IE, IE_EIE);
+	plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
+
+	return 0;
+}
+
+static int plic_starting_cpu(unsigned int cpu)
+{
+	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
+
+	csr_set(CSR_IE, IE_EIE);
+	plic_set_threshold(handler, PLIC_ENABLE_THRESHOLD);
+
+	return 0;
+}
+
 static int __init plic_init(struct device_node *node,
 		struct device_node *parent)
 {
@@ -267,7 +297,6 @@ static int __init plic_init(struct device_node *node,
 		struct plic_handler *handler;
 		irq_hw_number_t hwirq;
 		int cpu, hartid;
-		u32 threshold = 0;
 
 		if (of_irq_parse_one(node, i, &parent)) {
 			pr_err("failed to parse parent for context %d.\n", i);
@@ -301,7 +330,7 @@ static int __init plic_init(struct device_node *node,
 		handler = per_cpu_ptr(&plic_handlers, cpu);
 		if (handler->present) {
 			pr_warn("handler already present for context %d.\n", i);
-			threshold = 0xffffffff;
+			plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
 			goto done;
 		}
 
@@ -313,13 +342,14 @@ static int __init plic_init(struct device_node *node,
 			plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
 
 done:
-		/* priority must be > threshold to trigger an interrupt */
-		writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
 		for (hwirq = 1; hwirq <= nr_irqs; hwirq++)
 			plic_toggle(handler, hwirq, 0);
 		nr_handlers++;
 	}
 
+	cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
+				  "irqchip/sifive/plic:starting",
+				  plic_starting_cpu, plic_dying_cpu);
 	pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
 		nr_irqs, nr_handlers, nr_contexts);
 	set_handle_irq(plic_handle_irq);
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index d37c17e68268..77d70b633531 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -102,6 +102,7 @@ enum cpuhp_state {
 	CPUHP_AP_IRQ_ARMADA_XP_STARTING,
 	CPUHP_AP_IRQ_BCM2836_STARTING,
 	CPUHP_AP_IRQ_MIPS_GIC_STARTING,
+	CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
 	CPUHP_AP_ARM_MVEBU_COHERENCY,
 	CPUHP_AP_MICROCODE_LOADER,
 	CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING,
-- 
2.25.0


