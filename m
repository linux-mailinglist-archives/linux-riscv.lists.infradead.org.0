Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74E0168A59
	for <lists+linux-riscv@lfdr.de>; Sat, 22 Feb 2020 00:23:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JfvDFjI4pkyxfMDQIUFJfkp+yVq47Q6oPFlf7zBw8Ac=; b=CTTd46Z8N9audL
	wrjpyJHwJYlhai09XpgysXfJhktE6Zlcik1TFpRnaL9/cvLsrya47mp/NvIbTFD1IGgO+B9YMTjfY
	WTQZBd4Ig4axFDJ8dit60/T/dLHWSTnnXYsIFmCwXW+CQPT3eFxTH4RyIniB0T6Sk2FDtrSE/HVqS
	M9mnFlr8wwVt4ZIwE40bs3mwijB0QJgJhRjdgpLVCRUuY/J58wWE10P7v/tVVkd54lHeRghoQsMch
	93FHi7mPWt4NVX0zqX6eQqELO1+E1CTS/kc+RrK6drgZUJpAvgpKMtUx4tIKbvPVNcW512DSAXGj1
	Hi0MtOLDAajPMLb2u+Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Hdx-0002qG-JI; Fri, 21 Feb 2020 23:23:37 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Hdu-0002pu-Gy
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 23:23:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582327424; x=1613863424;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oT2R0meeLStyZStuUidGKZsmZN+Qxv/GRFYMm+I3XE4=;
 b=eUJjXq0FgGXFnE/XhvIzEM5+ErMWfbg4p2YjrrG/JD2YN1kscJ4oqzqS
 qS8AkRw93uIi7xKOQ9AzuvNBlS1z3XLILOcNv7k8elHMA/OGvvWj2w7dm
 j9ZTUezbqzfPpp+2yqyYrsKaFdHGiMzNao6uI/KFm5sLkfSdUiETls4rH
 p+esM32JoZ/lFkYBXQpji5mtQuJxWSYvjm2lQmEmm2l3r5/pe6B3KIpFN
 nwCKBM6umry9L+uUZMfobEwbNUzoSe1kycB4um/TRAvDBPVc0fyTDCRcc
 Zx1itJjwyiyVSNOzt7zJKSn0BksNRPvlK6cGQLl5ROzsdOpPcFnImB+16 A==;
IronPort-SDR: kPnKaZD8EZ0s1N7eJYVz1jLwRjqRanBn0BVHP8YasxjKXoDn9j4J3j8qyRBuUgdeU2IQhvukSa
 q8LcNpfRbjbeuoquCaawoEarPg1Km4Xfw9Ds/CWK4w9LP8CBIVxyZHEMsHBeLoM6Egk4NaSOAO
 gYNmT1pptJh8SdW6SEvWiHBg1Z6tvG0vzj3Yh4U0HEes2NDQFDaC9psS6clC+RhAJzDQscZq/l
 6gzM4C6AiwJW66M8dTr0f4QB5wT4fmtV5eR31Dm++KUyh//uxxmOfa42V8YLhWHZShNTu9DsjT
 4uA=
X-IronPort-AV: E=Sophos;i="5.70,470,1574092800"; d="scan'208";a="232307706"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 22 Feb 2020 07:23:31 +0800
IronPort-SDR: RvfErAefkoS7tbb4Jr9ODL3ofiqsd+mkHxr0JaQ66yg9Qc7uO3QrkyTEUFP5TOzLEOPb1so6hY
 1UffgfkT8thMSDmpycQRrvS5qKYjhjgdAkY5aOoaNaHDxMp5cKaMRqP/OtHg/pY5xUtbAl0p96
 nqVRlVYNx/MDrMJHKS/A4cPGWP4KAGq3EOfWlaUaD6Ry1RI5+QMP0B/6YlrP/awbGoCsUROM1J
 s2eZaSfQg8770XYCf9HLlwlQ/mRrcZIWs7GaWwRvCEggBfPPJtjEGGqpVD/yiGpk7bA12n6GfP
 vp16EfQ+/cC0NcQK1tQ9CDwD
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 15:15:58 -0800
IronPort-SDR: Mo93vb7y5Qr8CAlYW3THBEi4nwttZ3hDIkckXZ3un3d4jSpOVUUpNPbT4+UqeIpABwJ/9V/Im+
 hjBIwtqmFoaZmW5eU4wUi9HE2T86d9kY4YvLUcuW5kcZPndihml/KUjmkLtJhUraO1fkILBN1c
 AP2rHzQQlWPQW3DK2zdBbYQnVaCNisYiFOuxddx45mXdKFGMyGhDCwyL7Tb62fwyan3RTlAhlj
 1TlnsWdLwT84ianehFaMI0QfpJFPyFbg3yXgDhtq4U+gSB+zlw3a6KZ5evzdMTvJlRuCTmIyGJ
 V14=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 21 Feb 2020 15:23:26 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v2 PATCH] irqchip/sifive-plic: Add support for multiple PLICs
Date: Fri, 21 Feb 2020 15:22:46 -0800
Message-Id: <20200221232246.9176-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_152334_614969_8CF99D60 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Current, PLIC driver can support only 1 PLIC on the board. However,
there can be multiple PLICs present on a two socket systems in RISC-V.

Modify the driver so that each PLIC handler can have a information
about individual PLIC registers and an irqdomain associated with it.

Tested on two socket RISC-V system based on VCU118 FPGA connected via
OmniXtend protocol.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
This patch is rebased on top of 5.6-rc2 and following plic fix from
hotplug series.

https://lkml.org/lkml/2020/2/20/1220

Changes from v1->v2:
1. Use irq_chip_get_data to retrieve host_data
2. Renamed plic_hw to plic_node_ctx
---
 drivers/irqchip/irq-sifive-plic.c | 82 ++++++++++++++++++++-----------
 1 file changed, 52 insertions(+), 30 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 7c7f37393f99..9b9b6f4def4f 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -59,7 +59,11 @@
 #define	PLIC_DISABLE_THRESHOLD		0xf
 #define	PLIC_ENABLE_THRESHOLD		0
 
-static void __iomem *plic_regs;
+struct plic_node_ctx {
+	struct cpumask lmask;
+	struct irq_domain *irqdomain;
+	void __iomem *regs;
+};
 
 struct plic_handler {
 	bool			present;
@@ -70,6 +74,7 @@ struct plic_handler {
 	 */
 	raw_spinlock_t		enable_lock;
 	void __iomem		*enable_base;
+	struct plic_node_ctx		*node_ctx;
 };
 static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
 
@@ -88,31 +93,41 @@ static inline void plic_toggle(struct plic_handler *handler,
 }
 
 static inline void plic_irq_toggle(const struct cpumask *mask,
-				   int hwirq, int enable)
+				   struct irq_data *d, int enable)
 {
 	int cpu;
+	struct plic_node_ctx *node_ctx = irq_get_chip_data(d->irq);
 
-	writel(enable, plic_regs + PRIORITY_BASE + hwirq * PRIORITY_PER_ID);
+	writel(enable,
+	       node_ctx->regs + PRIORITY_BASE + d->hwirq * PRIORITY_PER_ID);
 	for_each_cpu(cpu, mask) {
 		struct plic_handler *handler = per_cpu_ptr(&plic_handlers, cpu);
 
-		if (handler->present)
-			plic_toggle(handler, hwirq, enable);
+		if (handler->present &&
+		    cpumask_test_cpu(cpu, &handler->node_ctx->lmask))
+			plic_toggle(handler, d->hwirq, enable);
 	}
 }
 
 static void plic_irq_unmask(struct irq_data *d)
 {
-	unsigned int cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
-					   cpu_online_mask);
+	struct cpumask amask;
+	unsigned int cpu;
+	struct plic_node_ctx *node_ctx = irq_get_chip_data(d->irq);
+
+	cpumask_and(&amask, &node_ctx->lmask, cpu_online_mask);
+	cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
+					   &amask);
 	if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
 		return;
-	plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
+	plic_irq_toggle(cpumask_of(cpu), d, 1);
 }
 
 static void plic_irq_mask(struct irq_data *d)
 {
-	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
+	struct plic_node_ctx *node_ctx = irq_get_chip_data(d->irq);
+
+	plic_irq_toggle(&node_ctx->lmask, d, 0);
 }
 
 #ifdef CONFIG_SMP
@@ -120,17 +135,21 @@ static int plic_set_affinity(struct irq_data *d,
 			     const struct cpumask *mask_val, bool force)
 {
 	unsigned int cpu;
+	struct cpumask amask;
+	struct plic_node_ctx *node_ctx = irq_get_chip_data(d->irq);
+
+	cpumask_and(&amask, &node_ctx->lmask, mask_val);
 
 	if (force)
-		cpu = cpumask_first(mask_val);
+		cpu = cpumask_first(&amask);
 	else
-		cpu = cpumask_any_and(mask_val, cpu_online_mask);
+		cpu = cpumask_any_and(&amask, cpu_online_mask);
 
 	if (cpu >= nr_cpu_ids)
 		return -EINVAL;
 
-	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
-	plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
+	plic_irq_toggle(&node_ctx->lmask, d, 0);
+	plic_irq_toggle(cpumask_of(cpu), d, 1);
 
 	irq_data_update_effective_affinity(d, cpumask_of(cpu));
 
@@ -191,8 +210,6 @@ static const struct irq_domain_ops plic_irqdomain_ops = {
 	.free		= irq_domain_free_irqs_top,
 };
 
-static struct irq_domain *plic_irqdomain;
-
 /*
  * Handling an interrupt is a two-step process: first you claim the interrupt
  * by reading the claim register, then you complete the interrupt by writing
@@ -209,7 +226,7 @@ static void plic_handle_irq(struct pt_regs *regs)
 
 	csr_clear(CSR_IE, IE_EIE);
 	while ((hwirq = readl(claim))) {
-		int irq = irq_find_mapping(plic_irqdomain, hwirq);
+		int irq = irq_find_mapping(handler->node_ctx->irqdomain, hwirq);
 
 		if (unlikely(irq <= 0))
 			pr_warn_ratelimited("can't find mapping for hwirq %lu\n",
@@ -265,15 +282,17 @@ static int __init plic_init(struct device_node *node,
 {
 	int error = 0, nr_contexts, nr_handlers = 0, i;
 	u32 nr_irqs;
+	struct plic_node_ctx *node_ctx;
 
-	if (plic_regs) {
-		pr_warn("PLIC already present.\n");
-		return -ENXIO;
-	}
+	node_ctx = kzalloc(sizeof(*node_ctx), GFP_KERNEL);
+	if (!node_ctx)
+		return -ENOMEM;
 
-	plic_regs = of_iomap(node, 0);
-	if (WARN_ON(!plic_regs))
-		return -EIO;
+	node_ctx->regs = of_iomap(node, 0);
+	if (WARN_ON(!node_ctx->regs)) {
+		error = -EIO;
+		goto out_free_nctx;
+	}
 
 	error = -EINVAL;
 	of_property_read_u32(node, "riscv,ndev", &nr_irqs);
@@ -287,9 +306,9 @@ static int __init plic_init(struct device_node *node,
 		goto out_iounmap;
 
 	error = -ENOMEM;
-	plic_irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
-			&plic_irqdomain_ops, NULL);
-	if (WARN_ON(!plic_irqdomain))
+	node_ctx->irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
+			&plic_irqdomain_ops, node_ctx);
+	if (WARN_ON(!node_ctx->irqdomain))
 		goto out_iounmap;
 
 	for (i = 0; i < nr_contexts; i++) {
@@ -334,13 +353,14 @@ static int __init plic_init(struct device_node *node,
 			goto done;
 		}
 
+		cpumask_set_cpu(cpu, &node_ctx->lmask);
 		handler->present = true;
 		handler->hart_base =
-			plic_regs + CONTEXT_BASE + i * CONTEXT_PER_HART;
+			node_ctx->regs + CONTEXT_BASE + i * CONTEXT_PER_HART;
 		raw_spin_lock_init(&handler->enable_lock);
 		handler->enable_base =
-			plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
-
+			node_ctx->regs + ENABLE_BASE + i * ENABLE_PER_HART;
+		handler->node_ctx = node_ctx;
 done:
 		for (hwirq = 1; hwirq <= nr_irqs; hwirq++)
 			plic_toggle(handler, hwirq, 0);
@@ -356,7 +376,9 @@ static int __init plic_init(struct device_node *node,
 	return 0;
 
 out_iounmap:
-	iounmap(plic_regs);
+	iounmap(node_ctx->regs);
+out_free_nctx:
+	kfree(node_ctx);
 	return error;
 }
 
-- 
2.25.0


