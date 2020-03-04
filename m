Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40242179919
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 20:38:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=CxlaiecpKrK2FQgGM/H/ikntSym79ZBA2nDJv44muBY=; b=F1GzplxIHb1Mr3
	FUAXZElgmBKNnnVzlcut2MeVXPvYvingAxFay3KxIZ+I9yxRBhDGlkVyXplaaXMo5RRevMOzFP9o6
	dx9chpUVPEp/jq3051wfGKBUOwIm8BUJ7FdD5msifQbg5n8PXu16E5GWuHQE6EfNaYJkXNohTJ0Vk
	az4iHn87v60wztPPLBQNpTaXvd6H5rPo+lKy5Bm5d+1qAp3EKfM7UvCxFogci3l1sKRj59ZcnvEzo
	L5Z+NM//hYMKZtXtEk0IYN0tGrfwQ7sLxY92o+e2Bl9M+9bHtPOz7JnPL558TfiAZzBrLmLz9pE3a
	QBVkrW8CMYdMfXZOxjFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Zql-0007zw-FM; Wed, 04 Mar 2020 19:38:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Zqh-0007zQ-Mz
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 19:38:33 +0000
Received: by mail-pf1-x444.google.com with SMTP id f5so1463965pfk.9
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 11:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=CxlaiecpKrK2FQgGM/H/ikntSym79ZBA2nDJv44muBY=;
 b=tH5H/sUncqGg0yNyw3nPIat6ZlDHchqU9H66M8P9oXIYq3YDMnV2PQOt6er++hv5R0
 K187WxjC8g5Kx17tTfghffeVZ0qvPlI//+DrKzLXMxFmZe6jRSBOIlapxP3+265inVQZ
 zZox4TgZfVtOgjDYCUI6TLoJ1/qkPVaRO2xke3vPNbe448LPYfr0jewoHe7AIYX/nSkP
 iobzAvQbeaSfyKtI3uj5hnxWhJquEIbuef4JW3X8qSccOg6/P+BZe06CZsNEjUAq6p58
 r03MMkP6Dky6QBfDY0FUHpjABSqNQHDmJ/NQZg1JVvZeLFGYi7r8cmT3I/YfarfDWkj6
 Inuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=CxlaiecpKrK2FQgGM/H/ikntSym79ZBA2nDJv44muBY=;
 b=rrhv39setYDrT8+W+iWKmuYC8ZDK6i9mZohQt870LcaZJgE6a7gJGixMJkEA1+/34r
 nVBxrCjeCc5jv+Gie69skDJXWrzv2IXigFUFaTYM/8c1Hn8UXBq2MK+cI443Dp6AblLL
 y+hhUagP7uZ4Rl2VAWxtNChbhpXSVi/8Lv8ehb5gGJrd5UkIS/sy/FI0cK4Mcka6V0T2
 E2kNoBPG/91wg6VFic4ltEiK9o+SBqig8Bivu8jZj72fzETq+ftWImeErYS268UpTYza
 15NWDgu8z2mz9F8d/uU8QqN3o0obThdih9EKDNcUcuWQ6I+rDS2e9DSNVy15Gk4Wstlo
 HJOw==
X-Gm-Message-State: ANhLgQ1OHR9SmlUMiaRFtlY6oJfh6+JGkZD1To2YUkEZRBRHqX1VqhoV
 E7DXp0MI7z56KULDwUGk5foBMCMEJvI=
X-Google-Smtp-Source: ADFU+vvkzSw1ashKeJdU1maHN1wpuK6l121yw1lkWemgX8IrN/6ubJeQ1XSzVjMVlxdgRaYKWUbjUw==
X-Received: by 2002:aa7:97b4:: with SMTP id d20mr4602718pfq.62.1583350710241; 
 Wed, 04 Mar 2020 11:38:30 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id j12sm13900323pga.78.2020.03.04.11.38.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 11:38:29 -0800 (PST)
Date: Wed, 04 Mar 2020 11:38:29 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 11:37:16 PST (-0800)
Subject: Re: [PATCH 06/10] riscv: Add Kendryte K210 SoC support
In-Reply-To: <20200212103432.660256-7-damien.lemoal@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, tglx@linutronix.de, gregkh@linuxfoundation.org
Message-ID: <mhng-da7768b8-0c67-4120-8aae-7f9f08a34567@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_113831_755994_0EA5561F 
X-CRM114-Status: GOOD (  29.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Anup Patel <Anup.Patel@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 12 Feb 2020 02:34:28 PST (-0800), Damien Le Moal wrote:
> From: Christoph Hellwig <hch@lst.de>
>
> Add support for the Kendryte K210 RISC-V SoC. For now, this support
> only provides a simple sysctl driver allowing to setup the CPU and
> uart clock. This support is enabled through the new Kconfig option
> SOC_KENDRYTE and defines the config option CONFIG_K210_SYSCTL
> to enable the K210 SoC sysctl driver compilation.
>
> The sysctl driver also registers an early SoC initialization function
> allowing enabling the general purpose use of the 2MB of SRAM normally
> reserved for the SoC AI engine. This initialization function is
> automatically called before the dt early initialization using the flat
> dt root node compatible property matching the value "kendryte,k210".
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/Kconfig.socs            |   6 +
>  drivers/soc/Kconfig                |   1 +
>  drivers/soc/Makefile               |   1 +
>  drivers/soc/kendryte/Kconfig       |  14 ++
>  drivers/soc/kendryte/Makefile      |   3 +
>  drivers/soc/kendryte/k210-sysctl.c | 245 +++++++++++++++++++++++++++++
>  6 files changed, 270 insertions(+)
>  create mode 100644 drivers/soc/kendryte/Kconfig
>  create mode 100644 drivers/soc/kendryte/Makefile
>  create mode 100644 drivers/soc/kendryte/k210-sysctl.c

+Olof, Arnd, Thomas, and Greg (from get-maintainers)

LMK if you want this to go in through the RISC-V tree -- I can keep it
building, but I don't have hardware to test on.  If you want to take it,
otherwise

Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

either way

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks!

> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index d325b67d00df..4d5d4a65b2a2 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -10,4 +10,10 @@ config SOC_SIFIVE
>  	help
>  	  This enables support for SiFive SoC platform hardware.
>
> +config SOC_KENDRYTE
> +	bool "Kendryte K210 SoC"
> +	depends on !MMU
> +	help
> +	  This enables support for Kendryte K210 SoC hardware.
> +
>  endmenu
> diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
> index 1778f8c62861..425ab6f7e375 100644
> --- a/drivers/soc/Kconfig
> +++ b/drivers/soc/Kconfig
> @@ -22,5 +22,6 @@ source "drivers/soc/ux500/Kconfig"
>  source "drivers/soc/versatile/Kconfig"
>  source "drivers/soc/xilinx/Kconfig"
>  source "drivers/soc/zte/Kconfig"
> +source "drivers/soc/kendryte/Kconfig"
>
>  endmenu
> diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
> index 8b49d782a1ab..af58063bb989 100644
> --- a/drivers/soc/Makefile
> +++ b/drivers/soc/Makefile
> @@ -28,3 +28,4 @@ obj-$(CONFIG_ARCH_U8500)	+= ux500/
>  obj-$(CONFIG_PLAT_VERSATILE)	+= versatile/
>  obj-y				+= xilinx/
>  obj-$(CONFIG_ARCH_ZX)		+= zte/
> +obj-$(CONFIG_SOC_KENDRYTE)	+= kendryte/
> diff --git a/drivers/soc/kendryte/Kconfig b/drivers/soc/kendryte/Kconfig
> new file mode 100644
> index 000000000000..49785b1b0217
> --- /dev/null
> +++ b/drivers/soc/kendryte/Kconfig
> @@ -0,0 +1,14 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +if SOC_KENDRYTE
> +
> +config K210_SYSCTL
> +	bool "Kendryte K210 system controller"
> +	default y
> +	depends on RISCV
> +	help
> +	  Enables controlling the K210 various clocks and to enable
> +	  general purpose use of the extra 2MB of SRAM normally
> +	  reserved for the AI engine.
> +
> +endif
> diff --git a/drivers/soc/kendryte/Makefile b/drivers/soc/kendryte/Makefile
> new file mode 100644
> index 000000000000..002d9ce95c0d
> --- /dev/null
> +++ b/drivers/soc/kendryte/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-$(CONFIG_K210_SYSCTL)	+= k210-sysctl.o
> diff --git a/drivers/soc/kendryte/k210-sysctl.c b/drivers/soc/kendryte/k210-sysctl.c
> new file mode 100644
> index 000000000000..7d4ecd954af0
> --- /dev/null
> +++ b/drivers/soc/kendryte/k210-sysctl.c
> @@ -0,0 +1,245 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2019 Christoph Hellwig.
> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> + */
> +#include <linux/types.h>
> +#include <linux/io.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/clk-provider.h>
> +#include <linux/clkdev.h>
> +#include <asm/soc.h>
> +
> +#define K210_SYSCTL_CLK0_FREQ		26000000UL
> +
> +/* Registers base address */
> +#define K210_SYSCTL_SYSCTL_BASE_ADDR	0x50440000ULL
> +
> +/* Registers */
> +#define K210_SYSCTL_PLL0		0x08
> +#define K210_SYSCTL_PLL1		0x0c
> +/* clkr: 4bits, clkf1: 6bits, clkod: 4bits, bwadj: 4bits */
> +#define   PLL_RESET		(1 << 20)
> +#define   PLL_PWR		(1 << 21)
> +#define   PLL_INTFB		(1 << 22)
> +#define   PLL_BYPASS		(1 << 23)
> +#define   PLL_TEST		(1 << 24)
> +#define   PLL_OUT_EN		(1 << 25)
> +#define   PLL_TEST_EN		(1 << 26)
> +#define K210_SYSCTL_PLL_LOCK		0x18
> +#define   PLL0_LOCK1		(1 << 0)
> +#define   PLL0_LOCK2		(1 << 1)
> +#define   PLL0_SLIP_CLEAR	(1 << 2)
> +#define   PLL0_TEST_CLK_OUT	(1 << 3)
> +#define   PLL1_LOCK1		(1 << 8)
> +#define   PLL1_LOCK2		(1 << 9)
> +#define   PLL1_SLIP_CLEAR	(1 << 10)
> +#define   PLL1_TEST_CLK_OUT	(1 << 11)
> +#define   PLL2_LOCK1		(1 << 16)
> +#define   PLL2_LOCK2		(1 << 16)
> +#define   PLL2_SLIP_CLEAR	(1 << 18)
> +#define   PLL2_TEST_CLK_OUT	(1 << 19)
> +#define K210_SYSCTL_CLKSEL0	0x20
> +#define   CLKSEL_ACLK		(1 << 0)
> +#define K210_SYSCTL_CLKEN_CENT		0x28
> +#define   CLKEN_CPU		(1 << 0)
> +#define   CLKEN_SRAM0		(1 << 1)
> +#define   CLKEN_SRAM1		(1 << 2)
> +#define   CLKEN_APB0		(1 << 3)
> +#define   CLKEN_APB1		(1 << 4)
> +#define   CLKEN_APB2		(1 << 5)
> +#define K210_SYSCTL_CLKEN_PERI		0x2c
> +#define   CLKEN_ROM		(1 << 0)
> +#define   CLKEN_DMA		(1 << 1)
> +#define   CLKEN_AI		(1 << 2)
> +#define   CLKEN_DVP		(1 << 3)
> +#define   CLKEN_FFT		(1 << 4)
> +#define   CLKEN_GPIO		(1 << 5)
> +#define   CLKEN_SPI0		(1 << 6)
> +#define   CLKEN_SPI1		(1 << 7)
> +#define   CLKEN_SPI2		(1 << 8)
> +#define   CLKEN_SPI3		(1 << 9)
> +#define   CLKEN_I2S0		(1 << 10)
> +#define   CLKEN_I2S1		(1 << 11)
> +#define   CLKEN_I2S2		(1 << 12)
> +#define   CLKEN_I2C0		(1 << 13)
> +#define   CLKEN_I2C1		(1 << 14)
> +#define   CLKEN_I2C2		(1 << 15)
> +#define   CLKEN_UART1		(1 << 16)
> +#define   CLKEN_UART2		(1 << 17)
> +#define   CLKEN_UART3		(1 << 18)
> +#define   CLKEN_AES		(1 << 19)
> +#define   CLKEN_FPIO		(1 << 20)
> +#define   CLKEN_TIMER0		(1 << 21)
> +#define   CLKEN_TIMER1		(1 << 22)
> +#define   CLKEN_TIMER2		(1 << 23)
> +#define   CLKEN_WDT0		(1 << 24)
> +#define   CLKEN_WDT1		(1 << 25)
> +#define   CLKEN_SHA		(1 << 26)
> +#define   CLKEN_OTP		(1 << 27)
> +#define   CLKEN_RTC		(1 << 29)
> +
> +struct k210_sysctl {
> +	void __iomem		*regs;
> +	struct clk_hw		hw;
> +};
> +
> +static void k210_set_bits(u32 val, void __iomem *reg)
> +{
> +	writel(readl(reg) | val, reg);
> +}
> +
> +static void k210_clear_bits(u32 val, void __iomem *reg)
> +{
> +	writel(readl(reg) & ~val, reg);
> +}
> +
> +static void k210_pll1_enable(void __iomem *regs)
> +{
> +	u32 val;
> +
> +	val = readl(regs + K210_SYSCTL_PLL1);
> +	val &= ~0xfffff;
> +	val |= (59 << 4) | (3 << 10) | (59 << 15);
> +	writel(val, regs + K210_SYSCTL_PLL1);
> +
> +	k210_clear_bits(PLL_BYPASS, regs + K210_SYSCTL_PLL1);
> +	k210_set_bits(PLL_PWR, regs + K210_SYSCTL_PLL1);
> +
> +	/*
> +	 * Reset the pll. The magic NOPs come from the Kendryte reference SDK.
> +	 */
> +	k210_clear_bits(PLL_RESET, regs + K210_SYSCTL_PLL1);
> +	k210_set_bits(PLL_RESET, regs + K210_SYSCTL_PLL1);
> +	nop();
> +	nop();

I don't actually have one of these to test this on.

> +	k210_clear_bits(PLL_RESET, regs + K210_SYSCTL_PLL1);
> +
> +	for (;;) {
> +		val = readl(regs + K210_SYSCTL_PLL_LOCK);
> +		if (val & PLL1_LOCK2)
> +			break;
> +		writel(val | PLL1_SLIP_CLEAR, regs + K210_SYSCTL_PLL_LOCK);
> +	}
> +
> +	k210_set_bits(PLL_OUT_EN, regs + K210_SYSCTL_PLL1);
> +}
> +
> +static unsigned long k210_sysctl_clk_recalc_rate(struct clk_hw *hw,
> +		unsigned long parent_rate)
> +{
> +	struct k210_sysctl *s = container_of(hw, struct k210_sysctl, hw);
> +	u32 clksel0, pll0;
> +	u64 pll0_freq, clkr0, clkf0, clkod0;
> +
> +	/*
> +	 * If the clock selector is not set, use the base frequency.
> +	 * Otherwise, use PLL0 frequency with a frequency divisor.
> +	 */
> +	clksel0 = readl(s->regs + K210_SYSCTL_CLKSEL0);
> +	if (!(clksel0 & CLKSEL_ACLK))
> +		return K210_SYSCTL_CLK0_FREQ;
> +
> +	/*
> +	 * Get PLL0 frequency:
> +	 * freq = base frequency * clkf0 / (clkr0 * clkod0)
> +	 */
> +	pll0 = readl(s->regs + K210_SYSCTL_PLL0);
> +	clkr0 = 1 + (pll0 & 0x0000000f);
> +	clkf0 = 1 + ((pll0 & 0x000003f0) >> 4);
> +	clkod0 = 1 + ((pll0 & 0x00003c00) >> 10);
> +	pll0_freq = clkf0 * K210_SYSCTL_CLK0_FREQ / (clkr0 * clkod0);
> +
> +	/* Get the frequency divisor from the clock selector */
> +	return pll0_freq / (2ULL << ((clksel0 & 0x00000006) >> 1));
> +}
> +
> +static const struct clk_ops k210_sysctl_clk_ops = {
> +	.recalc_rate	= k210_sysctl_clk_recalc_rate,
> +};
> +
> +static const struct clk_init_data k210_clk_init_data = {
> +	.name		= "k210-sysctl-pll1",
> +	.ops		= &k210_sysctl_clk_ops,
> +};
> +
> +static int k210_sysctl_probe(struct platform_device *pdev)
> +{
> +	struct k210_sysctl *s;
> +	int error;
> +
> +	pr_info("Kendryte K210 SoC sysctl\n");
> +
> +	s = devm_kzalloc(&pdev->dev, sizeof(*s), GFP_KERNEL);
> +	if (!s)
> +		return -ENOMEM;
> +
> +	s->regs = devm_ioremap_resource(&pdev->dev,
> +			platform_get_resource(pdev, IORESOURCE_MEM, 0));
> +	if (IS_ERR(s->regs))
> +		return PTR_ERR(s->regs);
> +
> +	s->hw.init = &k210_clk_init_data;
> +	error = devm_clk_hw_register(&pdev->dev, &s->hw);
> +	if (error) {
> +		dev_err(&pdev->dev, "failed to register clk");
> +		return error;
> +	}
> +
> +	error = devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_simple_get,
> +					    &s->hw);
> +	if (error) {
> +		dev_err(&pdev->dev, "adding clk provider failed\n");
> +		return error;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id k210_sysctl_of_match[] = {
> +	{ .compatible = "kendryte,k210-sysctl", },
> +	{}
> +};
> +
> +static struct platform_driver k210_sysctl_driver = {
> +	.driver	= {
> +		.name		= "k210-sysctl",
> +		.of_match_table	= k210_sysctl_of_match,
> +	},
> +	.probe			= k210_sysctl_probe,
> +};
> +
> +static int __init k210_sysctl_init(void)
> +{
> +	return platform_driver_register(&k210_sysctl_driver);
> +}
> +core_initcall(k210_sysctl_init);
> +
> +/*
> + * This needs to be called very early during initialization, given that
> + * PLL1 needs to be enabled to be able to use all SRAM.
> + */
> +static void __init k210_soc_early_init(const void *fdt)
> +{
> +	void __iomem *regs;
> +
> +	regs = ioremap(K210_SYSCTL_SYSCTL_BASE_ADDR, 0x1000);
> +	if (!regs)
> +		panic("K210 sysctl ioremap");
> +
> +	/* Enable PLL1 to make the KPU SRAM useable */
> +	k210_pll1_enable(regs);
> +
> +	k210_set_bits(PLL_OUT_EN, regs + K210_SYSCTL_PLL0);
> +
> +	k210_set_bits(CLKEN_CPU | CLKEN_SRAM0 | CLKEN_SRAM1,
> +		      regs + K210_SYSCTL_CLKEN_CENT);
> +	k210_set_bits(CLKEN_ROM | CLKEN_TIMER0 | CLKEN_RTC,
> +		      regs + K210_SYSCTL_CLKEN_PERI);
> +
> +	k210_set_bits(CLKSEL_ACLK, regs + K210_SYSCTL_CLKSEL0);
> +
> +	iounmap(regs);
> +}
> +SOC_EARLY_INIT_DECLARE("kendryte,k210", k210_soc_early_init);

