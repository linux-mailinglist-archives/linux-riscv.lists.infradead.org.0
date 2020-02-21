Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC663166C03
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 01:45:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvjEv7+3JN+sRQilJO4YmKYJ/F972qq1/cIXcZQtCvk=; b=RgPg+fzIgtxuDr
	MqUKiJHcuS21FADAZYfD3i4AhgUCngVYEiSM3I/bviVqhCJ7calnmATpcG1IC+pei8CrVWjPFVyT3
	ROza6eZNuyuAza1q/upp1m3rbOVhdeHQU9Voybu/H/81zhJvBxtG16yrh1jMrg46PlnbxhaIi0neP
	c6dX10LKmgXlG3UEZ5a+K2qHiIRqvCZqyfG64k2FJpgZviE29USMfXaSylx+UVU7+tkB5kWqyE30b
	a1u72fkRD/fzmLhKn0EYsI2qylkRpb4+I1kkEZuNVqiQB0kbE3OTJTC+gvIEL2t/a145cdbE9wnWT
	OvF1w3VRy9crZqR+8HFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4wRk-0006Up-0x; Fri, 21 Feb 2020 00:45:36 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4wRC-0004Pt-Ak
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 00:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582245926; x=1613781926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zauByF+unia1xt0CTcHhbFkLtPm1qJJUe5iAcp7OYgY=;
 b=c60Su/AyYc/Wl84XQAOmBT6YyrVGT+ZnKo3bhux/bwLYb2IGYcgzujpt
 ZOBQkdoVPY+tt7N9w9OegbuoKXYRXigSb2YG3orQ/3UnjPyTonwdEDgJn
 LYnNOFX/G6/Srkb0kfs/t4pxcc0KwmgRWxoojQa424QdxWV/m59pSRsfw
 o1NaZ+RNY/ajsFJXD/IsKYNv713ZyW7kpHf0XOQEi/TcMVvgVCG5lALKW
 JrMXabFriyUVNYFlCr+KIuDWp+13rfGDKCPwqKbfc5pz1O2luZ8fO8fJ+
 SL1ew2ERmZXlWL1lQamzPLEo9nkYK4hbLFcHdAu0xRFS20PHknLCZQWEa A==;
IronPort-SDR: d+KvQStgQ/nA9zRh7ithOwEXevDKYoc4CXWnWEM2j+SYTtIV097wyUFgIvxVFK5pMSUCL7W+vL
 MxPslHs7Q0RjatgUzHYfhpRUHWo8rIlm3YCd+94RbsIGVimYvao6KhLsiHBSnHJfBPVq4bah9y
 4/zM7PSJQJr9+BXE7U85O4nqaSsSmJSz2bf8ZHPJiMZ6NHsr54X3cu63SptqKdoU6cnXnXW+Rj
 E6hIg96FTnD0VLG+3RGxW2dmjgLbrfwCNL5+U0KtfZDSdfQdJJRd3LQ4ovVDBB4Q8bqql57VaZ
 /2Q=
X-IronPort-AV: E=Sophos;i="5.70,466,1574092800"; d="scan'208";a="232211089"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2020 08:45:10 +0800
IronPort-SDR: W1VvVeIAuNkOfS9qZQRnOuKe7Glmj1k9nRaiy4kOBftqXlI/GWM4snrP4Gc/t2zf33Qr8MClWz
 29I/NJYg3uZgs01x0yzkJlR62zL9q8jIrLoXqL9nvZS8oWSPN1a0O+zetJxsx7W7Jx2JOJI1NN
 X6N2bWEKldoPY+oReD4DaRAjf7o/Y7bGrHgKo7POSl3yklF7GTrumAu2DBZvQfhf8cJsrVbs1F
 zVlpOatWeITgy96A+JvjaEsdVDDyiwJXUg08lvdmuIVlhLPnmNBOjz7BiMd+3esJ5VEf3BLIIr
 0OlElkro/SzQOEnZWdl9kgoq
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 16:37:25 -0800
IronPort-SDR: mGqmtO4WvmnGdjt7Re0dJPbbwF0EOZsZXWkpQQKyaKAE7LJ7riPDNpffdnEIBg6iqbm/Yz+Qfa
 16liW72fuKinmBTP+m/9S/CLu559Adyn0/xikgQeZOzIA7Avq0Z+0GUdY2dQDO/kz3H6CqV6Sm
 YmcRpq0L0YuUwigFh7QCo74cn60YCqSg9z3G4Iy+Rp2pI2F8S+wx/k5MzKmIP3lv+0AcItFFKH
 udthT6A83YL3yxM4olbpJaqDTXEKFgA+0nZo+CpdExO3kJYDcP+m2e/ZAe+g7qa8KYTn+5fq3V
 w9Q=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Feb 2020 16:44:50 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 12/12] irqchip/sifive-plic: Initialize the plic handler
 when cpu comes online
Date: Thu, 20 Feb 2020 16:44:13 -0800
Message-Id: <20200221004413.12869-13-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200221004413.12869-1-atish.patra@wdc.com>
References: <20200221004413.12869-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_164503_104617_E4E34476 
X-CRM114-Status: GOOD (  15.18  )
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
Cc: Marc Zyngier <maz@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Nick Hu <nickhu@andestech.com>,
 Vincent Chen <vincent.chen@sifive.com>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Atish Patra <atish.patra@wdc.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>, Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, plic threshold and priority are only initialized once in the
beginning. However, threshold can be set to disabled if cpu is marked
offline with cpu hotplug feature. This will not allow to change the
irq affinity to a cpu that just came online.

Add plic specific cpu hotplug callback and initialize the per cpu handler
when cpu comes online.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/traps.c         |  2 +-
 drivers/irqchip/irq-sifive-plic.c | 38 +++++++++++++++++++++++++++----
 include/linux/cpuhotplug.h        |  1 +
 3 files changed, 36 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 8e13ad45ccaa..16c59807da6a 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -157,5 +157,5 @@ void trap_init(void)
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


