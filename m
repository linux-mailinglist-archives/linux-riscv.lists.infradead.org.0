Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB20E114AEF
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 03:34:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CSUccaqI9t7gZqNYNL0FH1HEAbPPzWNUZblCN7c4FRc=; b=HoKquuu3HPFbIC
	Az706ghStCEVCkU5bLIqFi/6g1RQHdmYmnQAEBVxAoxQ3Yry++E/qUdgK/ci4CVDHt3gsHCw3+g0v
	29XfhfCx3tlaV/EjH9vUMOM9Wcggi37RjKsA35ofn1lUZ+QamK50jWSp4/JspScRPWclyMrbkOQPE
	enteWInSkr97q8dMGAPKRiOcwiA34Z6Kwa16RC+PjkWcK8HkhwCeOKuWafRJ7/gaHwpZLrICucZ0A
	xbDqeKzrvelJHKu88VNG04t2GrnvuztucQYUbQB5eG2KBqf49uhmWSJ8g00uzLrpcpvsnXB+eGzOK
	HNjCw/XF0w6QsFpPS1Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id3RU-0000Uy-OP; Fri, 06 Dec 2019 02:34:04 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id3RQ-0000UN-TH
 for linux-riscv@lists.infradead.org; Fri, 06 Dec 2019 02:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575599690; x=1607135690;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u4ns4F+dn++weka+UCIKzTDCJRd3kH78GNtaEz0nonc=;
 b=Rhyn9tGGz74lVcZG0C7huU7adADZh3YnOVbd1yJY4XE55deLqDmcaZFQ
 xF6dfmeeyeaV99EdXJSRdpCdzmt2DwgK8xnpElstIKzgRec4wNFoZbDhM
 La6RKhR5nhfVGjFj6BWmXmaesH5GzdaFzHuGGvMp82p+0eT8BEHYxaX/C
 pYXhwJrUkCsk4oxRO20JWE3JWeSP479bp72zS72CpZ7cIvKlxN0uVqT0Q
 v+DeZ5KUGCpMYkaCdEHO7rs7tjonaT8zGtkR2bxcpSxPAvTwdsiAKajRH
 qq4lEMAyZYcCD7s4+nT5rlwJARXDNX/Pd5K/3ej+UMuIMhUgJ0G2Bh03V A==;
IronPort-SDR: zGi5Q4VOhnMVr+hMwT5zubiiE5pG0f4nfN/qkm5dMY7te0kaatkk+WJk1Ne5NddOjedwQ5NTZM
 AD8reZ13lL9pOtMMks/PMa5NWsgfHhxXbGezZJV5CZ69HO19w/LYLSfeAgkpBWkvKFATe2WYjW
 cXdIsisEIpX/GlC2DUUwFDIWQ1XL/lETtWUo+LC9Vf6rzbqDfGgd4dRnubCh1XBi5uBrmQfylv
 EO3BQ1wwfWSeLc04WHIfnwlptmI4rf+hmWQvD0jafYLoBWRo8fN1Ff/cqZL0Vd+9LvpgCSjhz1
 elE=
X-IronPort-AV: E=Sophos;i="5.69,282,1571673600"; d="scan'208";a="226202624"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 06 Dec 2019 10:34:22 +0800
IronPort-SDR: +q4DIbiCsD0Qao1w262MispRo15Gcp8mwHlxerZxpXgFNUECLflJaG3MYrCOJQolMSv7aa+pRO
 5kpZOlYe2EAcvH0K/WEOFwJn9uB0dhRgmm5rc6uqv7mw7SelnbIuX5Dbcu3ftEik+rTwxP7YIg
 Am+x3VHQGbfsHYHreFSEX4xT3t8Igp21w7dt+EEL+Wuz6PcLsP5wDpxXvLtejlnEfLQKbN2OLQ
 EAdk3XFMhBLgL959BAyumNH8tlWMtkDIXoEhGBwp2IeTItGS4NbFdCEH7vLh+JMSA0xVFNt3eV
 4XfyPf+xaEom2RkugGRFxlsi
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 18:28:05 -0800
IronPort-SDR: 1uVywYMCYS8oZsoD9gY5Fk7u9lTc0Bm8vFKGK4oFld57RoPB6F5srL4xkmacLIDCXgewFOCKFI
 8ahUQZCBoPzGuFm7oUSZihFKeyX6OQznPE6KG7aLOnE4d+xIhInyfLhALT3cm8VJXn+jWdtsGF
 l9ZrIvcKVXDlJtxq41PFE+TnJbkK2skho/2GZ+zV0o7YODXQIJP8qM0TknN6ZuG9oGas6/GhLX
 chph+Qp4OHDh4hs5mfqTU5e7wnJAOTjFHn6bPidZ8fO+uWRpYrY0/2FIGnEMGlboMcblrSh+CX
 BWE=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 05 Dec 2019 18:33:42 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] irqchip/sifive-plic: Add support for multiple PLICs
Date: Thu,  5 Dec 2019 18:31:56 -0800
Message-Id: <20191206023156.24732-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_183400_980836_89C87439 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Anup Patel <anup.patel@wdc.com>,
 Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Current, PLIC driver can support only 1 PLIC on the board. However,
there can be multiple PLICs present on a two socket systems in RISC-V.

Modify the driver so that each PLIC handler can have a information
about individual PLIC registers and an irqdomain associated with it.

Tested on two socket RISC-V system based on VCU118 FPGA connected via
OmniXtend protocol.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 drivers/irqchip/irq-sifive-plic.c | 81 +++++++++++++++++++------------
 1 file changed, 51 insertions(+), 30 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index c72c036aea76..aea1f2f0f0d5 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -55,7 +55,11 @@
 #define     CONTEXT_THRESHOLD		0x00
 #define     CONTEXT_CLAIM		0x04
 
-static void __iomem *plic_regs;
+struct plic_hw {
+	struct cpumask lmask;
+	struct irq_domain *irqdomain;
+	void __iomem *regs;
+};
 
 struct plic_handler {
 	bool			present;
@@ -66,6 +70,7 @@ struct plic_handler {
 	 */
 	raw_spinlock_t		enable_lock;
 	void __iomem		*enable_base;
+	struct plic_hw		*hw;
 };
 static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
 
@@ -84,31 +89,40 @@ static inline void plic_toggle(struct plic_handler *handler,
 }
 
 static inline void plic_irq_toggle(const struct cpumask *mask,
-				   int hwirq, int enable)
+				   struct irq_data *d, int enable)
 {
 	int cpu;
+	struct plic_hw *hw = d->domain->host_data;
 
-	writel(enable, plic_regs + PRIORITY_BASE + hwirq * PRIORITY_PER_ID);
+	writel(enable, hw->regs + PRIORITY_BASE + d->hwirq * PRIORITY_PER_ID);
 	for_each_cpu(cpu, mask) {
 		struct plic_handler *handler = per_cpu_ptr(&plic_handlers, cpu);
 
-		if (handler->present)
-			plic_toggle(handler, hwirq, enable);
+		if (handler->present &&
+		    cpumask_test_cpu(cpu, &handler->hw->lmask))
+			plic_toggle(handler, d->hwirq, enable);
 	}
 }
 
 static void plic_irq_enable(struct irq_data *d)
 {
-	unsigned int cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
-					   cpu_online_mask);
+	struct cpumask amask;
+	unsigned int cpu;
+	struct plic_hw *hw = d->domain->host_data;
+
+	cpumask_and(&amask, &hw->lmask, cpu_online_mask);
+	cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
+					   &amask);
 	if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
 		return;
-	plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
+	plic_irq_toggle(cpumask_of(cpu), d, 1);
 }
 
 static void plic_irq_disable(struct irq_data *d)
 {
-	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
+	struct plic_hw *hw = d->domain->host_data;
+
+	plic_irq_toggle(&hw->lmask, d, 0);
 }
 
 #ifdef CONFIG_SMP
@@ -116,18 +130,22 @@ static int plic_set_affinity(struct irq_data *d,
 			     const struct cpumask *mask_val, bool force)
 {
 	unsigned int cpu;
+	struct cpumask amask;
+	struct plic_hw *hw = d->domain->host_data;
+
+	cpumask_and(&amask, &hw->lmask, mask_val);
 
 	if (force)
-		cpu = cpumask_first(mask_val);
+		cpu = cpumask_first(&amask);
 	else
-		cpu = cpumask_any_and(mask_val, cpu_online_mask);
+		cpu = cpumask_any_and(&amask, cpu_online_mask);
 
 	if (cpu >= nr_cpu_ids)
 		return -EINVAL;
 
 	if (!irqd_irq_disabled(d)) {
-		plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
-		plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
+		plic_irq_toggle(&hw->lmask, d, 0);
+		plic_irq_toggle(cpumask_of(cpu), d, 1);
 	}
 
 	irq_data_update_effective_affinity(d, cpumask_of(cpu));
@@ -163,8 +181,6 @@ static const struct irq_domain_ops plic_irqdomain_ops = {
 	.xlate		= irq_domain_xlate_onecell,
 };
 
-static struct irq_domain *plic_irqdomain;
-
 /*
  * Handling an interrupt is a two-step process: first you claim the interrupt
  * by reading the claim register, then you complete the interrupt by writing
@@ -181,7 +197,7 @@ static void plic_handle_irq(struct pt_regs *regs)
 
 	csr_clear(sie, SIE_SEIE);
 	while ((hwirq = readl(claim))) {
-		int irq = irq_find_mapping(plic_irqdomain, hwirq);
+		int irq = irq_find_mapping(handler->hw->irqdomain, hwirq);
 
 		if (unlikely(irq <= 0))
 			pr_warn_ratelimited("can't find mapping for hwirq %lu\n",
@@ -212,15 +228,17 @@ static int __init plic_init(struct device_node *node,
 {
 	int error = 0, nr_contexts, nr_handlers = 0, i;
 	u32 nr_irqs;
+	struct plic_hw *hw;
 
-	if (plic_regs) {
-		pr_warn("PLIC already present.\n");
-		return -ENXIO;
-	}
+	hw = kzalloc(sizeof(*hw), GFP_KERNEL);
+	if (!hw)
+		return -ENOMEM;
 
-	plic_regs = of_iomap(node, 0);
-	if (WARN_ON(!plic_regs))
-		return -EIO;
+	hw->regs = of_iomap(node, 0);
+	if (WARN_ON(!hw->regs)) {
+		error = -EIO;
+		goto out_freehw;
+	}
 
 	error = -EINVAL;
 	of_property_read_u32(node, "riscv,ndev", &nr_irqs);
@@ -234,9 +252,9 @@ static int __init plic_init(struct device_node *node,
 		goto out_iounmap;
 
 	error = -ENOMEM;
-	plic_irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
-			&plic_irqdomain_ops, NULL);
-	if (WARN_ON(!plic_irqdomain))
+	hw->irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
+			&plic_irqdomain_ops, hw);
+	if (WARN_ON(!hw->irqdomain))
 		goto out_iounmap;
 
 	for (i = 0; i < nr_contexts; i++) {
@@ -279,13 +297,14 @@ static int __init plic_init(struct device_node *node,
 			goto done;
 		}
 
+		cpumask_set_cpu(cpu, &hw->lmask);
 		handler->present = true;
 		handler->hart_base =
-			plic_regs + CONTEXT_BASE + i * CONTEXT_PER_HART;
+			hw->regs + CONTEXT_BASE + i * CONTEXT_PER_HART;
 		raw_spin_lock_init(&handler->enable_lock);
 		handler->enable_base =
-			plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
-
+			hw->regs + ENABLE_BASE + i * ENABLE_PER_HART;
+		handler->hw = hw;
 done:
 		/* priority must be > threshold to trigger an interrupt */
 		writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
@@ -300,7 +319,9 @@ static int __init plic_init(struct device_node *node,
 	return 0;
 
 out_iounmap:
-	iounmap(plic_regs);
+	iounmap(hw->regs);
+out_freehw:
+	kfree(hw);
 	return error;
 }
 
-- 
2.24.0


