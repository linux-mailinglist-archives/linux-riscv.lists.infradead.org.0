Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3CA18438C
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 10:17:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61lis+J7vuLEk4pOuulRTvC220wB6K0I4RGsBE0rNrU=; b=XppYVZSnRX9yvS
	AA/BSpK3b7TZ+O3r7h4TLTUPVuuxEUlGa2QYvMudJPcOQpg32m4YBt/lEpv9iPqbM36vO08vtpyoI
	QWZdN8sDT1wwWDilmbeeaDLaksar1rv+PPBh0oy2mBJncjPySdGKOlfqFPswmoiqiB9o7RAU+CZRP
	hK4Wyt8XCAg+X2J268/iKhwAHSIud6QFX2BWvgI8CgYMOLNfTg4g0zJeN/n0704bPPZs53russiRQ
	PmFPP4I+WXD4xrawz8+UNDSuMBSEIVwQwOA6ri6Nhl2NGeWTbxtEPfO8FtJunSq0Qjvms190YExXY
	kNI+oRmM0N+cq3NvVJbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgRH-0006c4-6v; Fri, 13 Mar 2020 09:17:07 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgQw-0006JH-MG
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 09:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584091006; x=1615627006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=32jhvoPPiNpCB2OgkgDcP2gZp5Vlek6qTPSTvmMtcrE=;
 b=E0YrYuBtLxbbuon9CFdXYobCJJ2CiDNMwL2t2a6lYhifTJnw9tLI2Ac9
 hlg6GyQ+i8vYZvfq0r5xzYv5nrYZ3djF7PTfosDITcfOyF2wuEC8RnFyI
 M6/+ezV2DX6laZ0cwRaAyVszRtt7lzu02oL6uPWkpVmtMRVNZFJnIzGlb
 uLcp2vv3asz2uP+eqC8fF9tXe1UAFtrubAT5i+n01CZrJ2TdmU+6CNuul
 aWBxwYk/4P6r7FRzEdlAaTuIV6O26DJHkOgsYmxhAZ5zaLY/Dd7YFrdEh
 tIZod6lj6y9GpROJr5uuZMXKv3XqInIZ4gFVr8SYtxzuYOZz1cGX7YoaQ A==;
IronPort-SDR: RgqiGjtcWiVqPUB95d0dAiO0biXSYk8mzZ4RPGC/CQV1QCM+mSsbYnvAbh7vLV66nN6jiEZ9zM
 nseY+vBK6zihPhxCIfi/th5PK2XnFNMLHAMESwIlZvoaQ33aDW+wsYOINUrNNU6ZLB+YcoaDnY
 muv9fo8p+vr2WnCtilVlKF/Q6ok72M8pTOWkqIMK6EdRVznZuIrcAn4bZB5E37CnZZfAn/PH90
 FxQUNV4bKWVYQ386KsEsr35FKOWQYer1Ddo7apGN15RUh+j7rdPHR5LE5ZDgISz3yr4KSkvzwZ
 CGw=
X-IronPort-AV: E=Sophos;i="5.70,548,1574092800"; d="scan'208";a="240669777"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 17:16:44 +0800
IronPort-SDR: SvyAs8B9hW7WvKByF/QIIXxUAEz3bbZJA6Vu7mtoD9mub8eH3kPBM7vDpov2NYcpJ5sBVsmN9Z
 CF+I6Zvehc49BCZYQ9Kx8E1mzOF/9fOjXyZmLOTyuR3jtLtoJ1imCELU4GBAQ8xXyQxTAzkPci
 MHNjAY7LnGnRz0aqxOdgqJ8qum4ZRpfKGENvrciMEmcwhrvlAGXYM8OZvV9r6xxsoPWVTks62T
 vjdRQo/Pn2+57EdxoFFq4b4f5QblnxzeYsyddS59e6/DliLEE49mqsmpO0I3/7A9vFAOnWh7vo
 kAejbdvSBX5bwSjNtGBIU0mv
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:08:42 -0700
IronPort-SDR: 9KC4HlFXKSk+v7zoeg7qOMQjvGTwgSUJiqgMYzncpVDnWFsu2VqwMANEM3H5xvHGdLm5WHbTbk
 G8mT13Uc+CA+F9a7zCdKKBMlE0hjdoWQzvJ+jb8Z5F2c5cOrP6u+nUHQf/pfr9Fvr7JfXc6oKB
 1JkgP7kqWJwT2FftMNettGdPI4FKWuycPsOXBKELi6tT9evMFKl7nQDNINgZBxWE1c9jC+shNF
 QxNMnvOmJcmIdQtRN1kxbfBaMhtrjvInpshkwaphyBWkC9J2vd9xYJcvXLWhauwezJwiwFWiLf
 3CY=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Mar 2020 02:16:43 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v3 4/9] riscv: Add Kendryte K210 SoC support
Date: Fri, 13 Mar 2020 18:16:34 +0900
Message-Id: <20200313091639.87862-5-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313091639.87862-1-damien.lemoal@wdc.com>
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021646_767050_8ABFBD3F 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

Add support for the Kendryte K210 RISC-V SoC. For now, this support
only provides a simple sysctl driver allowing to setup the CPU and
uart clock. This support is enabled through the new Kconfig option
SOC_KENDRYTE and defines the config option CONFIG_K210_SYSCTL
to enable the K210 SoC sysctl driver compilation.

The sysctl driver also registers an early SoC initialization function
allowing enabling the general purpose use of the 2MB of SRAM normally
reserved for the SoC AI engine. This initialization function is
automatically called before the dt early initialization using the flat
dt root node compatible property matching the value "kendryte,k210".

Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/Kconfig.socs            |   6 +
 drivers/soc/Kconfig                |   1 +
 drivers/soc/Makefile               |   1 +
 drivers/soc/kendryte/Kconfig       |  14 ++
 drivers/soc/kendryte/Makefile      |   3 +
 drivers/soc/kendryte/k210-sysctl.c | 248 +++++++++++++++++++++++++++++
 6 files changed, 273 insertions(+)
 create mode 100644 drivers/soc/kendryte/Kconfig
 create mode 100644 drivers/soc/kendryte/Makefile
 create mode 100644 drivers/soc/kendryte/k210-sysctl.c

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 3078b2de0b2d..69071578e181 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -34,4 +34,10 @@ config SOC_VIRT
        help
          This enables support for QEMU Virt Machine.
 
+config SOC_KENDRYTE
+	bool "Kendryte K210 SoC"
+	depends on !MMU
+	help
+	  This enables support for Kendryte K210 SoC platform hardware.
+
 endmenu
diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index 1778f8c62861..425ab6f7e375 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -22,5 +22,6 @@ source "drivers/soc/ux500/Kconfig"
 source "drivers/soc/versatile/Kconfig"
 source "drivers/soc/xilinx/Kconfig"
 source "drivers/soc/zte/Kconfig"
+source "drivers/soc/kendryte/Kconfig"
 
 endmenu
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 8b49d782a1ab..af58063bb989 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -28,3 +28,4 @@ obj-$(CONFIG_ARCH_U8500)	+= ux500/
 obj-$(CONFIG_PLAT_VERSATILE)	+= versatile/
 obj-y				+= xilinx/
 obj-$(CONFIG_ARCH_ZX)		+= zte/
+obj-$(CONFIG_SOC_KENDRYTE)	+= kendryte/
diff --git a/drivers/soc/kendryte/Kconfig b/drivers/soc/kendryte/Kconfig
new file mode 100644
index 000000000000..49785b1b0217
--- /dev/null
+++ b/drivers/soc/kendryte/Kconfig
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0
+
+if SOC_KENDRYTE
+
+config K210_SYSCTL
+	bool "Kendryte K210 system controller"
+	default y
+	depends on RISCV
+	help
+	  Enables controlling the K210 various clocks and to enable
+	  general purpose use of the extra 2MB of SRAM normally
+	  reserved for the AI engine.
+
+endif
diff --git a/drivers/soc/kendryte/Makefile b/drivers/soc/kendryte/Makefile
new file mode 100644
index 000000000000..002d9ce95c0d
--- /dev/null
+++ b/drivers/soc/kendryte/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_K210_SYSCTL)	+= k210-sysctl.o
diff --git a/drivers/soc/kendryte/k210-sysctl.c b/drivers/soc/kendryte/k210-sysctl.c
new file mode 100644
index 000000000000..caaae6618f8f
--- /dev/null
+++ b/drivers/soc/kendryte/k210-sysctl.c
@@ -0,0 +1,248 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2019 Christoph Hellwig.
+ * Copyright (c) 2019 Western Digital Corporation or its affiliates.
+ */
+#include <linux/types.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
+#include <linux/bitfield.h>
+#include <asm/soc.h>
+
+#define K210_SYSCTL_CLK0_FREQ		26000000UL
+
+/* Registers base address */
+#define K210_SYSCTL_SYSCTL_BASE_ADDR	0x50440000ULL
+
+/* Registers */
+#define K210_SYSCTL_PLL0		0x08
+#define K210_SYSCTL_PLL1		0x0c
+/* clkr: 4bits, clkf1: 6bits, clkod: 4bits, bwadj: 4bits */
+#define   PLL_RESET		(1 << 20)
+#define   PLL_PWR		(1 << 21)
+#define   PLL_INTFB		(1 << 22)
+#define   PLL_BYPASS		(1 << 23)
+#define   PLL_TEST		(1 << 24)
+#define   PLL_OUT_EN		(1 << 25)
+#define   PLL_TEST_EN		(1 << 26)
+#define K210_SYSCTL_PLL_LOCK		0x18
+#define   PLL0_LOCK1		(1 << 0)
+#define   PLL0_LOCK2		(1 << 1)
+#define   PLL0_SLIP_CLEAR	(1 << 2)
+#define   PLL0_TEST_CLK_OUT	(1 << 3)
+#define   PLL1_LOCK1		(1 << 8)
+#define   PLL1_LOCK2		(1 << 9)
+#define   PLL1_SLIP_CLEAR	(1 << 10)
+#define   PLL1_TEST_CLK_OUT	(1 << 11)
+#define   PLL2_LOCK1		(1 << 16)
+#define   PLL2_LOCK2		(1 << 16)
+#define   PLL2_SLIP_CLEAR	(1 << 18)
+#define   PLL2_TEST_CLK_OUT	(1 << 19)
+#define K210_SYSCTL_CLKSEL0	0x20
+#define   CLKSEL_ACLK		(1 << 0)
+#define K210_SYSCTL_CLKEN_CENT		0x28
+#define   CLKEN_CPU		(1 << 0)
+#define   CLKEN_SRAM0		(1 << 1)
+#define   CLKEN_SRAM1		(1 << 2)
+#define   CLKEN_APB0		(1 << 3)
+#define   CLKEN_APB1		(1 << 4)
+#define   CLKEN_APB2		(1 << 5)
+#define K210_SYSCTL_CLKEN_PERI		0x2c
+#define   CLKEN_ROM		(1 << 0)
+#define   CLKEN_DMA		(1 << 1)
+#define   CLKEN_AI		(1 << 2)
+#define   CLKEN_DVP		(1 << 3)
+#define   CLKEN_FFT		(1 << 4)
+#define   CLKEN_GPIO		(1 << 5)
+#define   CLKEN_SPI0		(1 << 6)
+#define   CLKEN_SPI1		(1 << 7)
+#define   CLKEN_SPI2		(1 << 8)
+#define   CLKEN_SPI3		(1 << 9)
+#define   CLKEN_I2S0		(1 << 10)
+#define   CLKEN_I2S1		(1 << 11)
+#define   CLKEN_I2S2		(1 << 12)
+#define   CLKEN_I2C0		(1 << 13)
+#define   CLKEN_I2C1		(1 << 14)
+#define   CLKEN_I2C2		(1 << 15)
+#define   CLKEN_UART1		(1 << 16)
+#define   CLKEN_UART2		(1 << 17)
+#define   CLKEN_UART3		(1 << 18)
+#define   CLKEN_AES		(1 << 19)
+#define   CLKEN_FPIO		(1 << 20)
+#define   CLKEN_TIMER0		(1 << 21)
+#define   CLKEN_TIMER1		(1 << 22)
+#define   CLKEN_TIMER2		(1 << 23)
+#define   CLKEN_WDT0		(1 << 24)
+#define   CLKEN_WDT1		(1 << 25)
+#define   CLKEN_SHA		(1 << 26)
+#define   CLKEN_OTP		(1 << 27)
+#define   CLKEN_RTC		(1 << 29)
+
+struct k210_sysctl {
+	void __iomem		*regs;
+	struct clk_hw		hw;
+};
+
+static void k210_set_bits(u32 val, void __iomem *reg)
+{
+	writel(readl(reg) | val, reg);
+}
+
+static void k210_clear_bits(u32 val, void __iomem *reg)
+{
+	writel(readl(reg) & ~val, reg);
+}
+
+static void k210_pll1_enable(void __iomem *regs)
+{
+	u32 val;
+
+	val = readl(regs + K210_SYSCTL_PLL1);
+	val &= ~GENMASK(19, 0);				/* clkr1 = 0 */
+	val |= FIELD_PREP(GENMASK(9, 4), 0x3B);		/* clkf1 = 59 */
+	val |= FIELD_PREP(GENMASK(13, 10), 0x3);	/* clkod1 = 3 */
+	val |= FIELD_PREP(GENMASK(19, 14), 0x3B);	/* bwadj1 = 59 */
+	writel(val, regs + K210_SYSCTL_PLL1);
+
+	k210_clear_bits(PLL_BYPASS, regs + K210_SYSCTL_PLL1);
+	k210_set_bits(PLL_PWR, regs + K210_SYSCTL_PLL1);
+
+	/*
+	 * Reset the pll. The magic NOPs come from the Kendryte reference SDK.
+	 */
+	k210_clear_bits(PLL_RESET, regs + K210_SYSCTL_PLL1);
+	k210_set_bits(PLL_RESET, regs + K210_SYSCTL_PLL1);
+	nop();
+	nop();
+	k210_clear_bits(PLL_RESET, regs + K210_SYSCTL_PLL1);
+
+	for (;;) {
+		val = readl(regs + K210_SYSCTL_PLL_LOCK);
+		if (val & PLL1_LOCK2)
+			break;
+		writel(val | PLL1_SLIP_CLEAR, regs + K210_SYSCTL_PLL_LOCK);
+	}
+
+	k210_set_bits(PLL_OUT_EN, regs + K210_SYSCTL_PLL1);
+}
+
+static unsigned long k210_sysctl_clk_recalc_rate(struct clk_hw *hw,
+		unsigned long parent_rate)
+{
+	struct k210_sysctl *s = container_of(hw, struct k210_sysctl, hw);
+	u32 clksel0, pll0;
+	u64 pll0_freq, clkr0, clkf0, clkod0;
+
+	/*
+	 * If the clock selector is not set, use the base frequency.
+	 * Otherwise, use PLL0 frequency with a frequency divisor.
+	 */
+	clksel0 = readl(s->regs + K210_SYSCTL_CLKSEL0);
+	if (!(clksel0 & CLKSEL_ACLK))
+		return K210_SYSCTL_CLK0_FREQ;
+
+	/*
+	 * Get PLL0 frequency:
+	 * freq = base frequency * clkf0 / (clkr0 * clkod0)
+	 */
+	pll0 = readl(s->regs + K210_SYSCTL_PLL0);
+	clkr0 = 1 + FIELD_GET(GENMASK(3, 0), pll0);
+	clkf0 = 1 + FIELD_GET(GENMASK(9, 4), pll0);
+	clkod0 = 1 + FIELD_GET(GENMASK(13, 10), pll0);
+	pll0_freq = clkf0 * K210_SYSCTL_CLK0_FREQ / (clkr0 * clkod0);
+
+	/* Get the frequency divisor from the clock selector */
+	return pll0_freq / (2ULL << FIELD_GET(0x00000006, clksel0));
+}
+
+static const struct clk_ops k210_sysctl_clk_ops = {
+	.recalc_rate	= k210_sysctl_clk_recalc_rate,
+};
+
+static const struct clk_init_data k210_clk_init_data = {
+	.name		= "k210-sysctl-pll1",
+	.ops		= &k210_sysctl_clk_ops,
+};
+
+static int k210_sysctl_probe(struct platform_device *pdev)
+{
+	struct k210_sysctl *s;
+	int error;
+
+	pr_info("Kendryte K210 SoC sysctl\n");
+
+	s = devm_kzalloc(&pdev->dev, sizeof(*s), GFP_KERNEL);
+	if (!s)
+		return -ENOMEM;
+
+	s->regs = devm_ioremap_resource(&pdev->dev,
+			platform_get_resource(pdev, IORESOURCE_MEM, 0));
+	if (IS_ERR(s->regs))
+		return PTR_ERR(s->regs);
+
+	s->hw.init = &k210_clk_init_data;
+	error = devm_clk_hw_register(&pdev->dev, &s->hw);
+	if (error) {
+		dev_err(&pdev->dev, "failed to register clk");
+		return error;
+	}
+
+	error = devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_simple_get,
+					    &s->hw);
+	if (error) {
+		dev_err(&pdev->dev, "adding clk provider failed\n");
+		return error;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id k210_sysctl_of_match[] = {
+	{ .compatible = "kendryte,k210-sysctl", },
+	{}
+};
+
+static struct platform_driver k210_sysctl_driver = {
+	.driver	= {
+		.name		= "k210-sysctl",
+		.of_match_table	= k210_sysctl_of_match,
+	},
+	.probe			= k210_sysctl_probe,
+};
+
+static int __init k210_sysctl_init(void)
+{
+	return platform_driver_register(&k210_sysctl_driver);
+}
+core_initcall(k210_sysctl_init);
+
+/*
+ * This needs to be called very early during initialization, given that
+ * PLL1 needs to be enabled to be able to use all SRAM.
+ */
+static void __init k210_soc_early_init(const void *fdt)
+{
+	void __iomem *regs;
+
+	regs = ioremap(K210_SYSCTL_SYSCTL_BASE_ADDR, 0x1000);
+	if (!regs)
+		panic("K210 sysctl ioremap");
+
+	/* Enable PLL1 to make the KPU SRAM useable */
+	k210_pll1_enable(regs);
+
+	k210_set_bits(PLL_OUT_EN, regs + K210_SYSCTL_PLL0);
+
+	k210_set_bits(CLKEN_CPU | CLKEN_SRAM0 | CLKEN_SRAM1,
+		      regs + K210_SYSCTL_CLKEN_CENT);
+	k210_set_bits(CLKEN_ROM | CLKEN_TIMER0 | CLKEN_RTC,
+		      regs + K210_SYSCTL_CLKEN_PERI);
+
+	k210_set_bits(CLKSEL_ACLK, regs + K210_SYSCTL_CLKSEL0);
+
+	iounmap(regs);
+}
+SOC_EARLY_INIT_DECLARE("kendryte,k210", k210_soc_early_init);
-- 
2.24.1


