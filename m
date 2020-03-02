Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6561767F6
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 00:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksgfSLhWSP9TEvIDcKBaB9wJZHgeKNOGuYPtqQLMyF4=; b=iGTlEi9HuAsv/d
	5xzZtm8eTF9GrpNKWrXFSXecxYmuRndBEu6+5oBmTfvEr7IhjFbHslyR4gxWDxb7662wTWOusw/O0
	4YMgKJ9ZJcee3U+unYNtjWiOYYWkeeAkThYmDyS4UEcRZ5jkGj+CmDJBQjU/YIJZwjxjikf4O/C8Z
	jqYADj4FqgoXTg3UPOZIQPhODyllxy/lDLArZi8x2tpMYHpZtrAxBC/03tQ0/9dpA1tbM9Y7NkEHs
	awxN+SIe0uOkCZvsC+ZJOl1MxWyIp/aUhQvuLtnMUIuGERJvicdxFHP00WgURFTmosa/rxpKG7Omu
	lMQlWwznmhPtULnG+zhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uGN-0002wl-Kw; Mon, 02 Mar 2020 23:14:15 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8uGJ-0002tr-Rv
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 23:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583190868; x=1614726868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mjs7be7Jt2PfOz6LF6Rk11t6ekJAzXeK7FYTH2QG7xw=;
 b=VMsDSbLTGTn/ZX+BNPhwZpasSDWHSvJgT1CDGlcQBijX1wPiXiXPcLR+
 E2YXfyA42lePL4Jk3ej6NKeMOxnaTo1f+cnbkcNwQy1QKLwF0NZ3cmfap
 cP5f2v1s30aFniiY1rsVVX3LfYfNGvjUvQVD7X/xTixfkkHTvrBxRn5qo
 EQymEqFgJrtn4GNACyc54T45geXTT3DbEDHDM1IOAFnHE4Yp/31BOu9Bt
 flVIe6r/UjlSG87umkwg3azsiiPhfKo5Q/1zBPyhFBA5gB9W9j+nbxBqn
 KlZ+Q8QeOdUx5USv1tNG3/ejc8DRLlxDtSYo4TRv+2Mzkt+YkPTdkmNi3 w==;
IronPort-SDR: un/hSuY9/R9Kdy3B5U900UWgzV51Ch971k1gddRplZX13aAjF68BpLdlNlyg9fvD/i8APrASn+
 BXDuUFZetZmidi4SS6u6dfNySCP0NAcuqzY8EDPy/3X63kYgbubkkY2zjTrljGVfynyZB0R2Zt
 qCwO3FxFBVnz8laVej0jFknVAu8uzNVAKwiZc6G2Qk8yHiVMVDSHT2075iVvYLuiHonC7ejbIV
 9lp6Xq6KrnsI68tCOu+kXOvvM830kwj70HNTK7Pxd2/Dbzr2ye5jwxr9jxIFK1MwQcHzqRV+0Z
 Yho=
X-IronPort-AV: E=Sophos;i="5.70,508,1574092800"; d="scan'208";a="233148687"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 03 Mar 2020 07:13:58 +0800
IronPort-SDR: f5k/WLt5XqsLqJw9WYR2nCXP87ctBKv37V117UkoW1JF/Ee1crqCqgP2WgkSIWpetbcrabc1cr
 Mov8McolIgDpNJ3ZgfjnBJ/ii92IjJFHa6TMOkR6GGE38tM4apdPsxhl4DNXMYwIKwYAegkZd+
 tk+UX4ovPTBAnoGKhr/eXd9x5fin0f6m5tJykwerm2I0psugJOwSC9WEtMnKj0hQj0DRf1+tS6
 3YGmQTPSNo9owb6MmeSAn/buHjS7SPpBX9jC/fYBz1k1XKU8uXYUBPvFz/UetxdT8HtgmMXpq3
 8b9rvSKG9mmbK584K4EFz8uD
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 15:06:08 -0800
IronPort-SDR: UvUo/F33SJdtlcBWIL2Kco3te34Zifbebw4+5JxuHLG+p0jo1p4F+q5MVTtgASDhqRG3HrOMI9
 Hc0BmZnLxBrNj8W/gM4O4u4+eYI45N0KHfw7lD/eDhrygj0u0+ATRSRTU8G3a4sejTwhsW2srP
 ksv7Ek8oHmmYGtzzuX1rSRfeWCdkk1Lw/bXNC6FgcwP1AGVYR50q1YWSemF7GRwdwy41mB2Kme
 9u+yxtwY1Bwe7F7GAtr1FvsG7uflcop4a5JmStae2UCxUIFMgOzRtIA2fm5mJ5zApRKQpv6Cqa
 y2s=
WDCIronportException: Internal
Received: from usa002267.ad.shared (HELO yoda.hgst.com) ([10.86.54.35])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 Mar 2020 15:13:52 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] irqchip/sifive-plic: Add support for multiple PLICs
Date: Mon,  2 Mar 2020 15:11:46 -0800
Message-Id: <20200302231146.15530-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200302231146.15530-1-atish.patra@wdc.com>
References: <20200302231146.15530-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_151411_938636_DD305CA4 
X-CRM114-Status: GOOD (  16.36  )
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

Current, PLIC driver can support only 1 PLIC on the board. However,
there can be multiple PLICs present on a two socket systems in RISC-V.

Modify the driver so that each PLIC handler can have a information
about individual PLIC registers and an irqdomain associated with it.

Tested on two socket RISC-V system based on VCU118 FPGA connected via
OmniXtend protocol.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 drivers/irqchip/irq-sifive-plic.c | 81 +++++++++++++++++++------------
 1 file changed, 51 insertions(+), 30 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 7c7f37393f99..c34fb3ae0ff8 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -59,7 +59,11 @@
 #define	PLIC_DISABLE_THRESHOLD		0xf
 #define	PLIC_ENABLE_THRESHOLD		0
 
-static void __iomem *plic_regs;
+struct plic_priv {
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
+	struct plic_priv	*priv;
 };
 static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
 
@@ -88,31 +93,40 @@ static inline void plic_toggle(struct plic_handler *handler,
 }
 
 static inline void plic_irq_toggle(const struct cpumask *mask,
-				   int hwirq, int enable)
+				   struct irq_data *d, int enable)
 {
 	int cpu;
+	struct plic_priv *priv = irq_get_chip_data(d->irq);
 
-	writel(enable, plic_regs + PRIORITY_BASE + hwirq * PRIORITY_PER_ID);
+	writel(enable, priv->regs + PRIORITY_BASE + d->hwirq * PRIORITY_PER_ID);
 	for_each_cpu(cpu, mask) {
 		struct plic_handler *handler = per_cpu_ptr(&plic_handlers, cpu);
 
-		if (handler->present)
-			plic_toggle(handler, hwirq, enable);
+		if (handler->present &&
+		    cpumask_test_cpu(cpu, &handler->priv->lmask))
+			plic_toggle(handler, d->hwirq, enable);
 	}
 }
 
 static void plic_irq_unmask(struct irq_data *d)
 {
-	unsigned int cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
-					   cpu_online_mask);
+	struct cpumask amask;
+	unsigned int cpu;
+	struct plic_priv *priv = irq_get_chip_data(d->irq);
+
+	cpumask_and(&amask, &priv->lmask, cpu_online_mask);
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
+	struct plic_priv *priv = irq_get_chip_data(d->irq);
+
+	plic_irq_toggle(&priv->lmask, d, 0);
 }
 
 #ifdef CONFIG_SMP
@@ -120,17 +134,21 @@ static int plic_set_affinity(struct irq_data *d,
 			     const struct cpumask *mask_val, bool force)
 {
 	unsigned int cpu;
+	struct cpumask amask;
+	struct plic_priv *priv = irq_get_chip_data(d->irq);
+
+	cpumask_and(&amask, &priv->lmask, mask_val);
 
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
+	plic_irq_toggle(&priv->lmask, d, 0);
+	plic_irq_toggle(cpumask_of(cpu), d, 1);
 
 	irq_data_update_effective_affinity(d, cpumask_of(cpu));
 
@@ -191,8 +209,6 @@ static const struct irq_domain_ops plic_irqdomain_ops = {
 	.free		= irq_domain_free_irqs_top,
 };
 
-static struct irq_domain *plic_irqdomain;
-
 /*
  * Handling an interrupt is a two-step process: first you claim the interrupt
  * by reading the claim register, then you complete the interrupt by writing
@@ -209,7 +225,7 @@ static void plic_handle_irq(struct pt_regs *regs)
 
 	csr_clear(CSR_IE, IE_EIE);
 	while ((hwirq = readl(claim))) {
-		int irq = irq_find_mapping(plic_irqdomain, hwirq);
+		int irq = irq_find_mapping(handler->priv->irqdomain, hwirq);
 
 		if (unlikely(irq <= 0))
 			pr_warn_ratelimited("can't find mapping for hwirq %lu\n",
@@ -265,15 +281,17 @@ static int __init plic_init(struct device_node *node,
 {
 	int error = 0, nr_contexts, nr_handlers = 0, i;
 	u32 nr_irqs;
+	struct plic_priv *priv;
 
-	if (plic_regs) {
-		pr_warn("PLIC already present.\n");
-		return -ENXIO;
-	}
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
 
-	plic_regs = of_iomap(node, 0);
-	if (WARN_ON(!plic_regs))
-		return -EIO;
+	priv->regs = of_iomap(node, 0);
+	if (WARN_ON(!priv->regs)) {
+		error = -EIO;
+		goto out_free_priv;
+	}
 
 	error = -EINVAL;
 	of_property_read_u32(node, "riscv,ndev", &nr_irqs);
@@ -287,9 +305,9 @@ static int __init plic_init(struct device_node *node,
 		goto out_iounmap;
 
 	error = -ENOMEM;
-	plic_irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
-			&plic_irqdomain_ops, NULL);
-	if (WARN_ON(!plic_irqdomain))
+	priv->irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
+			&plic_irqdomain_ops, priv);
+	if (WARN_ON(!priv->irqdomain))
 		goto out_iounmap;
 
 	for (i = 0; i < nr_contexts; i++) {
@@ -334,13 +352,14 @@ static int __init plic_init(struct device_node *node,
 			goto done;
 		}
 
+		cpumask_set_cpu(cpu, &priv->lmask);
 		handler->present = true;
 		handler->hart_base =
-			plic_regs + CONTEXT_BASE + i * CONTEXT_PER_HART;
+			priv->regs + CONTEXT_BASE + i * CONTEXT_PER_HART;
 		raw_spin_lock_init(&handler->enable_lock);
 		handler->enable_base =
-			plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
-
+			priv->regs + ENABLE_BASE + i * ENABLE_PER_HART;
+		handler->priv = priv;
 done:
 		for (hwirq = 1; hwirq <= nr_irqs; hwirq++)
 			plic_toggle(handler, hwirq, 0);
@@ -356,7 +375,9 @@ static int __init plic_init(struct device_node *node,
 	return 0;
 
 out_iounmap:
-	iounmap(plic_regs);
+	iounmap(priv->regs);
+out_free_priv:
+	kfree(priv);
 	return error;
 }
 
-- 
2.25.0


