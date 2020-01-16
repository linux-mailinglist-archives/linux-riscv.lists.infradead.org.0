Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529D013E13E
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Jan 2020 17:48:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fW5vTvEhV6P0ot0St78n8Z3BF/nnLA0PtN4XHz0X/7A=; b=b7+S34+N2173aj
	NzXVkf2RPhja4eF9foy3s+UZ6wZpPBzSMggLv8ZlCgDsNBVC4lsw6gXehD53Msb08rN+n0SLJd8w0
	W/qMNo/lB+TRcbdO4Rwqxs8r58DlLSb4EiWkydnUbzNzSQ64COFjDYzyKcH84Fre/sYcg6GDUJWyX
	IO084PwICrwM+43l0gKKblWXUrMmUWrFdPDeWRvGjlxAbkuQU43Kc6yBa6/h5da9oncv7M/AlV8FP
	tA9NEBYEuHVeKIWAVJMAZori12Yz33mH9dp2tYa548eeNbcnYFX+VI2hW30kvKY/irTM4wq1sl6Tu
	wKYnH/f4lt68cQnVeZ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8K7-0003DK-QY; Thu, 16 Jan 2020 16:48:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8I9-0001Vu-1V
 for linux-riscv@lists.infradead.org; Thu, 16 Jan 2020 16:46:50 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF5E7207FF;
 Thu, 16 Jan 2020 16:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193204;
 bh=FQ5LvOO7BuDAFNNVq0KtHArvnKn+vhhNnJvaA4MfnNQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eT3EqHSnk9/hte2Yg2VVVfFGYQyI1yqulNQLlATmqCKvDtx6FZaR72yJb86adALjw
 EqZvrBInvAbdqexGXLGo777nIkh19id4iI/cIHHSoIxpriHR9E+xO07lxgUoAP3l4h
 1F08oB5JGMN3X5bX8HoTE0WcktOXwsxaek3JEyJE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 045/205] PCI: mobiveil: Fix csr_read()/write()
 build issue
Date: Thu, 16 Jan 2020 11:40:20 -0500
Message-Id: <20200116164300.6705-45-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084645_371340_2D7045F3 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>,
 Minghuan Lian <Minghuan.Lian@nxp.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Kefeng Wang <wangkefeng.wang@huawei.com>

[ Upstream commit 4906c05b87d44c19b225935e24d62e4480ca556d ]

RISCV has csr_read()/write() macros in arch/riscv/include/asm/csr.h.

The same function naming is used in the PCI mobiveil driver thus
causing build error.

Rename csr_[read,write][l,] to mobiveil_csr_read()/write() to fix it.

drivers/pci/controller/pcie-mobiveil.c:238:69: error: macro "csr_read" passed 3 arguments, but takes just 1
 static u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)

drivers/pci/controller/pcie-mobiveil.c:253:80: error: macro "csr_write" passed 4 arguments, but takes just 2
 static void csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off, size_t size)

Fixes: bcbe0d9a8d93 ("PCI: mobiveil: Unify register accessors")
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Minghuan Lian <Minghuan.Lian@nxp.com>
Cc: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
Cc: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pci/controller/pcie-mobiveil.c | 119 +++++++++++++------------
 1 file changed, 62 insertions(+), 57 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index a45a6447b01d..32f37d08d5bc 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -235,7 +235,7 @@ static int mobiveil_pcie_write(void __iomem *addr, int size, u32 val)
 	return PCIBIOS_SUCCESSFUL;
 }
 
-static u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)
+static u32 mobiveil_csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)
 {
 	void *addr;
 	u32 val;
@@ -250,7 +250,8 @@ static u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)
 	return val;
 }
 
-static void csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off, size_t size)
+static void mobiveil_csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off,
+			       size_t size)
 {
 	void *addr;
 	int ret;
@@ -262,19 +263,19 @@ static void csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off, size_t size)
 		dev_err(&pcie->pdev->dev, "write CSR address failed\n");
 }
 
-static u32 csr_readl(struct mobiveil_pcie *pcie, u32 off)
+static u32 mobiveil_csr_readl(struct mobiveil_pcie *pcie, u32 off)
 {
-	return csr_read(pcie, off, 0x4);
+	return mobiveil_csr_read(pcie, off, 0x4);
 }
 
-static void csr_writel(struct mobiveil_pcie *pcie, u32 val, u32 off)
+static void mobiveil_csr_writel(struct mobiveil_pcie *pcie, u32 val, u32 off)
 {
-	csr_write(pcie, val, off, 0x4);
+	mobiveil_csr_write(pcie, val, off, 0x4);
 }
 
 static bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
 {
-	return (csr_readl(pcie, LTSSM_STATUS) &
+	return (mobiveil_csr_readl(pcie, LTSSM_STATUS) &
 		LTSSM_STATUS_L0_MASK) == LTSSM_STATUS_L0;
 }
 
@@ -323,7 +324,7 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
 		PCI_SLOT(devfn) << PAB_DEVICE_SHIFT |
 		PCI_FUNC(devfn) << PAB_FUNCTION_SHIFT;
 
-	csr_writel(pcie, value, PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
+	mobiveil_csr_writel(pcie, value, PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
 
 	return pcie->config_axi_slave_base + where;
 }
@@ -353,13 +354,14 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 	chained_irq_enter(chip, desc);
 
 	/* read INTx status */
-	val = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT);
-	mask = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
+	val = mobiveil_csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT);
+	mask = mobiveil_csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
 	intr_status = val & mask;
 
 	/* Handle INTx */
 	if (intr_status & PAB_INTP_INTX_MASK) {
-		shifted_status = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT);
+		shifted_status = mobiveil_csr_readl(pcie,
+						    PAB_INTP_AMBA_MISC_STAT);
 		shifted_status &= PAB_INTP_INTX_MASK;
 		shifted_status >>= PAB_INTX_START;
 		do {
@@ -373,12 +375,13 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 							    bit);
 
 				/* clear interrupt handled */
-				csr_writel(pcie, 1 << (PAB_INTX_START + bit),
-					   PAB_INTP_AMBA_MISC_STAT);
+				mobiveil_csr_writel(pcie,
+						    1 << (PAB_INTX_START + bit),
+						    PAB_INTP_AMBA_MISC_STAT);
 			}
 
-			shifted_status = csr_readl(pcie,
-						   PAB_INTP_AMBA_MISC_STAT);
+			shifted_status = mobiveil_csr_readl(pcie,
+							    PAB_INTP_AMBA_MISC_STAT);
 			shifted_status &= PAB_INTP_INTX_MASK;
 			shifted_status >>= PAB_INTX_START;
 		} while (shifted_status != 0);
@@ -413,7 +416,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 	}
 
 	/* Clear the interrupt status */
-	csr_writel(pcie, intr_status, PAB_INTP_AMBA_MISC_STAT);
+	mobiveil_csr_writel(pcie, intr_status, PAB_INTP_AMBA_MISC_STAT);
 	chained_irq_exit(chip, desc);
 }
 
@@ -474,24 +477,24 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
 		return;
 	}
 
-	value = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
+	value = mobiveil_csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
 	value &= ~(AMAP_CTRL_TYPE_MASK << AMAP_CTRL_TYPE_SHIFT | WIN_SIZE_MASK);
 	value |= type << AMAP_CTRL_TYPE_SHIFT | 1 << AMAP_CTRL_EN_SHIFT |
 		 (lower_32_bits(size64) & WIN_SIZE_MASK);
-	csr_writel(pcie, value, PAB_PEX_AMAP_CTRL(win_num));
+	mobiveil_csr_writel(pcie, value, PAB_PEX_AMAP_CTRL(win_num));
 
-	csr_writel(pcie, upper_32_bits(size64),
-		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
+	mobiveil_csr_writel(pcie, upper_32_bits(size64),
+			    PAB_EXT_PEX_AMAP_SIZEN(win_num));
 
-	csr_writel(pcie, lower_32_bits(cpu_addr),
-		   PAB_PEX_AMAP_AXI_WIN(win_num));
-	csr_writel(pcie, upper_32_bits(cpu_addr),
-		   PAB_EXT_PEX_AMAP_AXI_WIN(win_num));
+	mobiveil_csr_writel(pcie, lower_32_bits(cpu_addr),
+			    PAB_PEX_AMAP_AXI_WIN(win_num));
+	mobiveil_csr_writel(pcie, upper_32_bits(cpu_addr),
+			    PAB_EXT_PEX_AMAP_AXI_WIN(win_num));
 
-	csr_writel(pcie, lower_32_bits(pci_addr),
-		   PAB_PEX_AMAP_PEX_WIN_L(win_num));
-	csr_writel(pcie, upper_32_bits(pci_addr),
-		   PAB_PEX_AMAP_PEX_WIN_H(win_num));
+	mobiveil_csr_writel(pcie, lower_32_bits(pci_addr),
+			    PAB_PEX_AMAP_PEX_WIN_L(win_num));
+	mobiveil_csr_writel(pcie, upper_32_bits(pci_addr),
+			    PAB_PEX_AMAP_PEX_WIN_H(win_num));
 
 	pcie->ib_wins_configured++;
 }
@@ -515,27 +518,29 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
 	 * program Enable Bit to 1, Type Bit to (00) base 2, AXI Window Size Bit
 	 * to 4 KB in PAB_AXI_AMAP_CTRL register
 	 */
-	value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
+	value = mobiveil_csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
 	value &= ~(WIN_TYPE_MASK << WIN_TYPE_SHIFT | WIN_SIZE_MASK);
 	value |= 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
 		 (lower_32_bits(size64) & WIN_SIZE_MASK);
-	csr_writel(pcie, value, PAB_AXI_AMAP_CTRL(win_num));
+	mobiveil_csr_writel(pcie, value, PAB_AXI_AMAP_CTRL(win_num));
 
-	csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));
+	mobiveil_csr_writel(pcie, upper_32_bits(size64),
+			    PAB_EXT_AXI_AMAP_SIZE(win_num));
 
 	/*
 	 * program AXI window base with appropriate value in
 	 * PAB_AXI_AMAP_AXI_WIN0 register
 	 */
-	csr_writel(pcie, lower_32_bits(cpu_addr) & (~AXI_WINDOW_ALIGN_MASK),
-		   PAB_AXI_AMAP_AXI_WIN(win_num));
-	csr_writel(pcie, upper_32_bits(cpu_addr),
-		   PAB_EXT_AXI_AMAP_AXI_WIN(win_num));
+	mobiveil_csr_writel(pcie,
+			    lower_32_bits(cpu_addr) & (~AXI_WINDOW_ALIGN_MASK),
+			    PAB_AXI_AMAP_AXI_WIN(win_num));
+	mobiveil_csr_writel(pcie, upper_32_bits(cpu_addr),
+			    PAB_EXT_AXI_AMAP_AXI_WIN(win_num));
 
-	csr_writel(pcie, lower_32_bits(pci_addr),
-		   PAB_AXI_AMAP_PEX_WIN_L(win_num));
-	csr_writel(pcie, upper_32_bits(pci_addr),
-		   PAB_AXI_AMAP_PEX_WIN_H(win_num));
+	mobiveil_csr_writel(pcie, lower_32_bits(pci_addr),
+			    PAB_AXI_AMAP_PEX_WIN_L(win_num));
+	mobiveil_csr_writel(pcie, upper_32_bits(pci_addr),
+			    PAB_AXI_AMAP_PEX_WIN_H(win_num));
 
 	pcie->ob_wins_configured++;
 }
@@ -579,42 +584,42 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	struct resource_entry *win;
 
 	/* setup bus numbers */
-	value = csr_readl(pcie, PCI_PRIMARY_BUS);
+	value = mobiveil_csr_readl(pcie, PCI_PRIMARY_BUS);
 	value &= 0xff000000;
 	value |= 0x00ff0100;
-	csr_writel(pcie, value, PCI_PRIMARY_BUS);
+	mobiveil_csr_writel(pcie, value, PCI_PRIMARY_BUS);
 
 	/*
 	 * program Bus Master Enable Bit in Command Register in PAB Config
 	 * Space
 	 */
-	value = csr_readl(pcie, PCI_COMMAND);
+	value = mobiveil_csr_readl(pcie, PCI_COMMAND);
 	value |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER;
-	csr_writel(pcie, value, PCI_COMMAND);
+	mobiveil_csr_writel(pcie, value, PCI_COMMAND);
 
 	/*
 	 * program PIO Enable Bit to 1 (and PEX PIO Enable to 1) in PAB_CTRL
 	 * register
 	 */
-	pab_ctrl = csr_readl(pcie, PAB_CTRL);
+	pab_ctrl = mobiveil_csr_readl(pcie, PAB_CTRL);
 	pab_ctrl |= (1 << AMBA_PIO_ENABLE_SHIFT) | (1 << PEX_PIO_ENABLE_SHIFT);
-	csr_writel(pcie, pab_ctrl, PAB_CTRL);
+	mobiveil_csr_writel(pcie, pab_ctrl, PAB_CTRL);
 
-	csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
-		   PAB_INTP_AMBA_MISC_ENB);
+	mobiveil_csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
+			    PAB_INTP_AMBA_MISC_ENB);
 
 	/*
 	 * program PIO Enable Bit to 1 and Config Window Enable Bit to 1 in
 	 * PAB_AXI_PIO_CTRL Register
 	 */
-	value = csr_readl(pcie, PAB_AXI_PIO_CTRL);
+	value = mobiveil_csr_readl(pcie, PAB_AXI_PIO_CTRL);
 	value |= APIO_EN_MASK;
-	csr_writel(pcie, value, PAB_AXI_PIO_CTRL);
+	mobiveil_csr_writel(pcie, value, PAB_AXI_PIO_CTRL);
 
 	/* Enable PCIe PIO master */
-	value = csr_readl(pcie, PAB_PEX_PIO_CTRL);
+	value = mobiveil_csr_readl(pcie, PAB_PEX_PIO_CTRL);
 	value |= 1 << PIO_ENABLE_SHIFT;
-	csr_writel(pcie, value, PAB_PEX_PIO_CTRL);
+	mobiveil_csr_writel(pcie, value, PAB_PEX_PIO_CTRL);
 
 	/*
 	 * we'll program one outbound window for config reads and
@@ -647,10 +652,10 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	}
 
 	/* fixup for PCIe class register */
-	value = csr_readl(pcie, PAB_INTP_AXI_PIO_CLASS);
+	value = mobiveil_csr_readl(pcie, PAB_INTP_AXI_PIO_CLASS);
 	value &= 0xff;
 	value |= (PCI_CLASS_BRIDGE_PCI << 16);
-	csr_writel(pcie, value, PAB_INTP_AXI_PIO_CLASS);
+	mobiveil_csr_writel(pcie, value, PAB_INTP_AXI_PIO_CLASS);
 
 	/* setup MSI hardware registers */
 	mobiveil_pcie_enable_msi(pcie);
@@ -668,9 +673,9 @@ static void mobiveil_mask_intx_irq(struct irq_data *data)
 	pcie = irq_desc_get_chip_data(desc);
 	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
 	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
-	shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
+	shifted_val = mobiveil_csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
 	shifted_val &= ~mask;
-	csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
+	mobiveil_csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
 	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
 }
 
@@ -684,9 +689,9 @@ static void mobiveil_unmask_intx_irq(struct irq_data *data)
 	pcie = irq_desc_get_chip_data(desc);
 	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
 	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
-	shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
+	shifted_val = mobiveil_csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
 	shifted_val |= mask;
-	csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
+	mobiveil_csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
 	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
 }
 
-- 
2.20.1


