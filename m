Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CD2B4B8
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Apr 2019 03:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YGS3ivROdSMFG+jftCKyfYumM1HUNQTLB/43Q46UfwI=; b=rgpwRE3jb4AU4jnQL/mtxluOS
	M8DeDq4CfGRHuSaQGh3XQsEKhMmRE1Sn69yn+JBTZVIo5ScA9BYP34L74KP+XE7iUC11CaIPG+Ybz
	IzFMLKIRYuDpp26wI5adlBJREZB2mqYJ59hQQfpXCrtrAB1uXuWicQ0yOmm0D+2PejMSMpQNdy2cJ
	vIHEqLyevHB55gN0egVu20on82be+jkCLk4lgillESGGWsaiwUYeJF+g04BcGVp5oQ2Y9ItAjCADa
	z1bNmM6FMKHZamIbQS106Vmv3CtcXb3auqGtZ/wwyF2d3A+FpJpsMc6paAwv+m+dzRMVVX5yZl7kL
	Kmjl9s22Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKYxu-0001Lz-R4; Sun, 28 Apr 2019 01:50:50 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKYxp-0001LC-RP
 for linux-riscv@lists.infradead.org; Sun, 28 Apr 2019 01:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556416246; x=1587952246;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=4MX0d4Og/3AYYU7mE5atKWYq9ihRFJMpJiOwpwGLAOg=;
 b=Gdc2WAOG1nF8mcrPpfOqfzvWAlIV2/mOn3v2O9yd98nY4Ct1dxAkDN/c
 8hBTZ6HRvoC8bHD/lunpWh1dTlzr1ikCl1QJqw0yqcyF+NbVSLmuA89kl
 LzJSCied3n/WuTDhe6L4DA1jPhF3/zQoxpPZe8nMiXsT84DFJYzQAe180
 qZHV0SkXbz+jlgAqp2iO+EHAKOHCR7ljeQBTp13zWqhfIxpGAhq4/sAx6
 +xsHm11rOn4dRPtBarDTEoc4c8WFvojcLdhjmDr4D6Loj5MlrrZhBrShk
 g1vKCe6VvpH8oUqkrG975ZIRIPKFRyKL8CnjmtBXC+TfI2LQvbQYxcOHo A==;
X-IronPort-AV: E=Sophos;i="5.60,403,1549900800"; d="scan'208";a="106995365"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Apr 2019 09:50:41 +0800
IronPort-SDR: 00a8zPsjzqKNWyTULVB9AtiPMjtMM4tkcMjhYWbwcejQ3Tj+lDxcPDXpYWeF32N3715gMqg4y9
 jgUJezbw/7+CVgyjm+n5k898BLlSVFdN0ZC8pVZKqQ58ymu/+VwIvgyB5KZUQ15RknASnS2BYp
 5SekPFT7WKoAAtDBAUDnYnsAIBg0FiVZmMwIHgFMFG1K1Dh6uzero0WYMvvsnDc3aAS6PEsmNA
 MYnahj76GOxXvhotqqHyIQ+VU8nANT3EigQl8PafPRd3WSsRroEjlO/yyPg7DzIs6Kl5FpHjDn
 0ngSgUPeRxLlVQEL/uf5CGxa
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 27 Apr 2019 18:27:07 -0700
IronPort-SDR: Rn4JUIAWk0RkIBa/J0B206QY8v+uXnmX99b/4aN/A6cdpAe5cxGSTiTLL2AGAw/9umRC71n0s7
 FJghdc4hnLhbS0DyIxXHcKrGcYzHv7RCAkzcVoOJvuAIVGCH1SExgKvLIFKQJnimLu4m2lP0E4
 GMlsDZXK+iko4ZXa20Wjm/4f20U3utrdodiXkgev0G6YRVe/J5jRLxLxVtZergcHm8ZjgZUXOB
 iY9MVh7DNpVv8cHeFjSdtdR/D6KAu6KR+EHIzS+xIG3AAJhDoA3e/f6aWt569w9Z1Do/nh9uYt
 zdk=
Received: from c2h11g2.ad.shared (HELO [10.86.53.94]) ([10.86.53.94])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Apr 2019 18:50:42 -0700
Subject: Re: [PATCH v3 3/3] clk: sifive: add a driver for the SiFive FU540
 PRCI IP block
To: Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20190411082733.3736-2-paul.walmsley@sifive.com>
 <20190411082733.3736-4-paul.walmsley@sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <256b9312-4740-e7b1-84ac-c0cc1ff4bc77@wdc.com>
Date: Sat, 27 Apr 2019 18:50:40 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190411082733.3736-4-paul.walmsley@sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_185045_952777_EAA1D7F1 
X-CRM114-Status: GOOD (  31.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Paul Walmsley <paul@pwsan.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Stephen Boyd <sboyd@kernel.org>, "Wesley W . Terpstra" <wesley@sifive.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, Megan Wachs <megan@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 4/11/19 1:28 AM, Paul Walmsley wrote:
> Add driver code for the SiFive FU540 PRCI IP block.  This IP block
> handles reset and clock control for the SiFive FU540 device and
> implements SoC-level clock tree controls and dividers.
> 
> Based on code written by Wesley Terpstra <wesley@sifive.com>:
> https://github.com/riscv/riscv-linux/commit/999529edf517ed75b56659d456d221b2ee56bb60
> 
> Boot and PLL rate change were tested on a SiFive HiFive Unleashed
> board.
> 
> This version includes several changes requested by Stephen Boyd
> <sboyd@kernel.org>.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: Wesley W. Terpstra <wesley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Megan Wachs <megan@sifive.com>
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-clk@vger.kernel.org
> ---
>   drivers/clk/Kconfig             |   1 +
>   drivers/clk/Makefile            |   1 +
>   drivers/clk/sifive/Kconfig      |  18 +
>   drivers/clk/sifive/Makefile     |   1 +
>   drivers/clk/sifive/fu540-prci.c | 630 ++++++++++++++++++++++++++++++++
>   5 files changed, 651 insertions(+)
>   create mode 100644 drivers/clk/sifive/Kconfig
>   create mode 100644 drivers/clk/sifive/Makefile
>   create mode 100644 drivers/clk/sifive/fu540-prci.c
> 
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 83dc90bd5179..d2f94ff9b0fc 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -310,6 +310,7 @@ source "drivers/clk/mvebu/Kconfig"
>   source "drivers/clk/qcom/Kconfig"
>   source "drivers/clk/renesas/Kconfig"
>   source "drivers/clk/samsung/Kconfig"
> +source "drivers/clk/sifive/Kconfig"
>   source "drivers/clk/sprd/Kconfig"
>   source "drivers/clk/sunxi-ng/Kconfig"
>   source "drivers/clk/tegra/Kconfig"
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index 091ee1d8af65..5173a5ae1069 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -94,6 +94,7 @@ obj-$(CONFIG_COMMON_CLK_QCOM)		+= qcom/
>   obj-y					+= renesas/
>   obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
>   obj-$(CONFIG_COMMON_CLK_SAMSUNG)	+= samsung/
> +obj-y					+= sifive/
>   obj-$(CONFIG_ARCH_SIRF)			+= sirf/
>   obj-$(CONFIG_ARCH_SOCFPGA)		+= socfpga/
>   obj-$(CONFIG_PLAT_SPEAR)		+= spear/
> diff --git a/drivers/clk/sifive/Kconfig b/drivers/clk/sifive/Kconfig
> new file mode 100644
> index 000000000000..8db4a3eb4782
> --- /dev/null
> +++ b/drivers/clk/sifive/Kconfig
> @@ -0,0 +1,18 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +menuconfig CLK_SIFIVE
> +	bool "SiFive SoC driver support"
> +	help
> +	  SoC drivers for SiFive Linux-capable SoCs.
> +
> +if CLK_SIFIVE
> +
> +config CLK_SIFIVE_FU540_PRCI
> +	bool "PRCI driver for SiFive FU540 SoCs"
> +	select CLK_ANALOGBITS_WRPLL_CLN28HPC
> +	help
> +	  Supports the Power Reset Clock interface (PRCI) IP block found in
> +	  FU540 SoCs.  If this kernel is meant to run on a SiFive FU540 SoC,
> +	  enable this driver.
> +
> +endif
> diff --git a/drivers/clk/sifive/Makefile b/drivers/clk/sifive/Makefile
> new file mode 100644
> index 000000000000..74d58a4c0756
> --- /dev/null
> +++ b/drivers/clk/sifive/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_CLK_SIFIVE_FU540_PRCI)	+= fu540-prci.o
> diff --git a/drivers/clk/sifive/fu540-prci.c b/drivers/clk/sifive/fu540-prci.c
> new file mode 100644
> index 000000000000..ecf1dfbcc645
> --- /dev/null
> +++ b/drivers/clk/sifive/fu540-prci.c
> @@ -0,0 +1,630 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2018 SiFive, Inc.
> + * Wesley Terpstra
> + * Paul Walmsley
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * The FU540 PRCI implements clock and reset control for the SiFive
> + * FU540-C000 chip.  This driver assumes that it has sole control
> + * over all PRCI resources.
> + *
> + * This driver is based on the PRCI driver written by Wesley Terpstra:
> + * https://github.com/riscv/riscv-linux/commit/999529edf517ed75b56659d456d221b2ee56bb60
> + *
> + * References:
> + * - SiFive FU540-C000 manual v1p0, Chapter 7 "Clocking and Reset"
> + */
> +
> +#include <dt-bindings/clock/sifive-fu540-prci.h>
> +#include <linux/clkdev.h>
> +#include <linux/clk-provider.h>
> +#include <linux/clk/analogbits-wrpll-cln28hpc.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_clk.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +/*
> + * EXPECTED_CLK_PARENT_COUNT: how many parent clocks this driver expects:
> + *     hfclk and rtcclk
> + */
> +#define EXPECTED_CLK_PARENT_COUNT		2
> +
> +/*
> + * Register offsets and bitmasks
> + */
> +
> +/* COREPLLCFG0 */
> +#define PRCI_COREPLLCFG0_OFFSET			0x4
> +# define PRCI_COREPLLCFG0_DIVR_SHIFT		0
> +# define PRCI_COREPLLCFG0_DIVR_MASK		(0x3f << PRCI_COREPLLCFG0_DIVR_SHIFT)
> +# define PRCI_COREPLLCFG0_DIVF_SHIFT		6
> +# define PRCI_COREPLLCFG0_DIVF_MASK		(0x1ff << PRCI_COREPLLCFG0_DIVF_SHIFT)
> +# define PRCI_COREPLLCFG0_DIVQ_SHIFT		15
> +# define PRCI_COREPLLCFG0_DIVQ_MASK		(0x7 << PRCI_COREPLLCFG0_DIVQ_SHIFT)
> +# define PRCI_COREPLLCFG0_RANGE_SHIFT		18
> +# define PRCI_COREPLLCFG0_RANGE_MASK		(0x7 << PRCI_COREPLLCFG0_RANGE_SHIFT)
> +# define PRCI_COREPLLCFG0_BYPASS_SHIFT		24
> +# define PRCI_COREPLLCFG0_BYPASS_MASK		(0x1 << PRCI_COREPLLCFG0_BYPASS_SHIFT)
> +# define PRCI_COREPLLCFG0_FSE_SHIFT		25
> +# define PRCI_COREPLLCFG0_FSE_MASK		(0x1 << PRCI_COREPLLCFG0_FSE_SHIFT)
> +# define PRCI_COREPLLCFG0_LOCK_SHIFT		31
> +# define PRCI_COREPLLCFG0_LOCK_MASK		(0x1 << PRCI_COREPLLCFG0_LOCK_SHIFT)
> +
> +/* DDRPLLCFG0 */
> +#define PRCI_DDRPLLCFG0_OFFSET			0xc
> +# define PRCI_DDRPLLCFG0_DIVR_SHIFT		0
> +# define PRCI_DDRPLLCFG0_DIVR_MASK		(0x3f << PRCI_DDRPLLCFG0_DIVR_SHIFT)
> +# define PRCI_DDRPLLCFG0_DIVF_SHIFT		6
> +# define PRCI_DDRPLLCFG0_DIVF_MASK		(0x1ff << PRCI_DDRPLLCFG0_DIVF_SHIFT)
> +# define PRCI_DDRPLLCFG0_DIVQ_SHIFT		15
> +# define PRCI_DDRPLLCFG0_DIVQ_MASK		(0x7 << PRCI_DDRPLLCFG0_DIVQ_SHIFT)
> +# define PRCI_DDRPLLCFG0_RANGE_SHIFT		18
> +# define PRCI_DDRPLLCFG0_RANGE_MASK		(0x7 << PRCI_DDRPLLCFG0_RANGE_SHIFT)
> +# define PRCI_DDRPLLCFG0_BYPASS_SHIFT		24
> +# define PRCI_DDRPLLCFG0_BYPASS_MASK		(0x1 << PRCI_DDRPLLCFG0_BYPASS_SHIFT)
> +# define PRCI_DDRPLLCFG0_FSE_SHIFT		25
> +# define PRCI_DDRPLLCFG0_FSE_MASK		(0x1 << PRCI_DDRPLLCFG0_FSE_SHIFT)
> +# define PRCI_DDRPLLCFG0_LOCK_SHIFT		31
> +# define PRCI_DDRPLLCFG0_LOCK_MASK		(0x1 << PRCI_DDRPLLCFG0_LOCK_SHIFT)
> +
> +/* DDRPLLCFG1 */
> +#define PRCI_DDRPLLCFG1_OFFSET			0x10
> +# define PRCI_DDRPLLCFG1_CKE_SHIFT		24
> +# define PRCI_DDRPLLCFG1_CKE_MASK		(0x1 << PRCI_DDRPLLCFG1_CKE_SHIFT)
> +
> +/* GEMGXLPLLCFG0 */
> +#define PRCI_GEMGXLPLLCFG0_OFFSET		0x1c
> +# define PRCI_GEMGXLPLLCFG0_DIVR_SHIFT		0
> +# define PRCI_GEMGXLPLLCFG0_DIVR_MASK		(0x3f << PRCI_GEMGXLPLLCFG0_DIVR_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_DIVF_SHIFT		6
> +# define PRCI_GEMGXLPLLCFG0_DIVF_MASK		(0x1ff << PRCI_GEMGXLPLLCFG0_DIVF_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_DIVQ_SHIFT		15
> +# define PRCI_GEMGXLPLLCFG0_DIVQ_MASK		(0x7 << PRCI_GEMGXLPLLCFG0_DIVQ_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_RANGE_SHIFT		18
> +# define PRCI_GEMGXLPLLCFG0_RANGE_MASK		(0x7 << PRCI_GEMGXLPLLCFG0_RANGE_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_BYPASS_SHIFT	24
> +# define PRCI_GEMGXLPLLCFG0_BYPASS_MASK		(0x1 << PRCI_GEMGXLPLLCFG0_BYPASS_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_FSE_SHIFT		25
> +# define PRCI_GEMGXLPLLCFG0_FSE_MASK		(0x1 << PRCI_GEMGXLPLLCFG0_FSE_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_LOCK_SHIFT		31
> +# define PRCI_GEMGXLPLLCFG0_LOCK_MASK		(0x1 << PRCI_GEMGXLPLLCFG0_LOCK_SHIFT)
> +
> +/* GEMGXLPLLCFG1 */
> +#define PRCI_GEMGXLPLLCFG1_OFFSET		0x20
> +# define PRCI_GEMGXLPLLCFG1_CKE_SHIFT		24
> +# define PRCI_GEMGXLPLLCFG1_CKE_MASK		(0x1 << PRCI_GEMGXLPLLCFG1_CKE_SHIFT)
> +
> +/* CORECLKSEL */
> +#define PRCI_CORECLKSEL_OFFSET			0x24
> +# define PRCI_CORECLKSEL_CORECLKSEL_SHIFT	0
> +# define PRCI_CORECLKSEL_CORECLKSEL_MASK	(0x1 << PRCI_CORECLKSEL_CORECLKSEL_SHIFT)
> +
> +/* DEVICESRESETREG */
> +#define PRCI_DEVICESRESETREG_OFFSET			0x28
> +# define PRCI_DEVICESRESETREG_DDR_CTRL_RST_N_SHIFT	0
> +# define PRCI_DEVICESRESETREG_DDR_CTRL_RST_N_MASK	(0x1 << PRCI_DEVICESRESETREG_DDR_CTRL_RST_N_SHIFT)
> +# define PRCI_DEVICESRESETREG_DDR_AXI_RST_N_SHIFT	1
> +# define PRCI_DEVICESRESETREG_DDR_AXI_RST_N_MASK	(0x1 << PRCI_DEVICESRESETREG_DDR_AXI_RST_N_SHIFT)
> +# define PRCI_DEVICESRESETREG_DDR_AHB_RST_N_SHIFT	2
> +# define PRCI_DEVICESRESETREG_DDR_AHB_RST_N_MASK	(0x1 << PRCI_DEVICESRESETREG_DDR_AHB_RST_N_SHIFT)
> +# define PRCI_DEVICESRESETREG_DDR_PHY_RST_N_SHIFT	3
> +# define PRCI_DEVICESRESETREG_DDR_PHY_RST_N_MASK	(0x1 << PRCI_DEVICESRESETREG_DDR_PHY_RST_N_SHIFT)
> +# define PRCI_DEVICESRESETREG_GEMGXL_RST_N_SHIFT	5
> +# define PRCI_DEVICESRESETREG_GEMGXL_RST_N_MASK		(0x1 << PRCI_DEVICESRESETREG_GEMGXL_RST_N_SHIFT)
> +
> +/* CLKMUXSTATUSREG */
> +#define PRCI_CLKMUXSTATUSREG_OFFSET			0x2c
> +# define PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_SHIFT	1
> +# define PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_MASK	(0x1 << PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_SHIFT)
> +
> +/*
> + * Private structures
> + */
> +
> +/**
> + * struct __prci_data - per-device-instance data
> + * @va: base virtual address of the PRCI IP block
> + * @hw_clks: encapsulates struct clk_hw records
> + *
> + * PRCI per-device instance data
> + */
> +struct __prci_data {
> +	void __iomem *va;
> +	struct clk_hw_onecell_data hw_clks;
> +};
> +
> +/**
> + * struct __prci_wrpll_data - WRPLL configuration and integration data
> + * @c: WRPLL current configuration record
> + * @enable_bypass: fn ptr to code to bypass the WRPLL (if applicable; else NULL)
> + * @disable_bypass: fn ptr to code to not bypass the WRPLL (or NULL)
> + * @cfg0_offs: WRPLL CFG0 register offset (in bytes) from the PRCI base address
> + *
> + * @enable_bypass and @disable_bypass are used for WRPLL instances
> + * that contain a separate external glitchless clock mux downstream
> + * from the PLL.  The WRPLL internal bypass mux is not glitchless.
> + */
> +struct __prci_wrpll_data {
> +	struct analogbits_wrpll_cfg c;
> +	void (*enable_bypass)(struct __prci_data *pd);
> +	void (*disable_bypass)(struct __prci_data *pd);
> +	u8 cfg0_offs;
> +};
> +
> +/**
> + * struct __prci_clock - describes a clock device managed by PRCI
> + * @name: user-readable clock name string - should match the manual
> + * @parent_name: parent name for this clock
> + * @ops: struct clk_ops for the Linux clock framework to use for control
> + * @hw: Linux-private clock data
> + * @pwd: WRPLL-specific data, associated with this clock (if not NULL)
> + * @pd: PRCI-specific data associated with this clock (if not NULL)
> + *
> + * PRCI clock data.  Used by the PRCI driver to register PRCI-provided
> + * clocks to the Linux clock infrastructure.
> + */
> +struct __prci_clock {
> +	const char *name;
> +	const char *parent_name;
> +	const struct clk_ops *ops;
> +	struct clk_hw hw;
> +	struct __prci_wrpll_data *pwd;
> +	struct __prci_data *pd;
> +};
> +
> +#define clk_hw_to_prci_clock(pwd) container_of(pwd, struct __prci_clock, hw)
> +
> +/*
> + * Private functions
> + */
> +
> +/**
> + * __prci_readl() - read from a PRCI register
> + * @pd: PRCI context
> + * @offs: register offset to read from (in bytes, from PRCI base address)
> + *
> + * Read the register located at offset @offs from the base virtual
> + * address of the PRCI register target described by @pd, and return
> + * the value to the caller.
> + *
> + * Context: Any context.
> + *
> + * Return: the contents of the register described by @pd and @offs.
> + */
> +static u32 __prci_readl(struct __prci_data *pd, u32 offs)
> +{
> +	return readl_relaxed(pd->va + offs);
> +}
> +
> +static void __prci_writel(u32 v, u32 offs, struct __prci_data *pd)
> +{
> +	return writel_relaxed(v, pd->va + offs);
> +}
> +
> +/* WRPLL-related private functions */
> +
> +/**
> + * __prci_wrpll_unpack() - unpack WRPLL configuration registers into parameters
> + * @c: ptr to a struct analogbits_wrpll_cfg record to write config into
> + * @r: value read from the PRCI PLL configuration register
> + *
> + * Given a value @r read from an FU540 PRCI PLL configuration register,
> + * split it into fields and populate it into the WRPLL configuration record
> + * pointed to by @c.
> + *
> + * The COREPLLCFG0 macros are used below, but the other *PLLCFG0 macros
> + * have the same register layout.
> + *
> + * Context: Any context.
> + */
> +static void __prci_wrpll_unpack(struct analogbits_wrpll_cfg *c, u32 r)
> +{
> +	u32 v;
> +
> +	v = r & PRCI_COREPLLCFG0_DIVR_MASK;
> +	v >>= PRCI_COREPLLCFG0_DIVR_SHIFT;
> +	c->divr = v;
> +
> +	v = r & PRCI_COREPLLCFG0_DIVF_MASK;
> +	v >>= PRCI_COREPLLCFG0_DIVF_SHIFT;
> +	c->divf = v;
> +
> +	v = r & PRCI_COREPLLCFG0_DIVQ_MASK;
> +	v >>= PRCI_COREPLLCFG0_DIVQ_SHIFT;
> +	c->divq = v;
> +
> +	v = r & PRCI_COREPLLCFG0_RANGE_MASK;
> +	v >>= PRCI_COREPLLCFG0_RANGE_SHIFT;
> +	c->range = v;
> +
> +	c->flags &= (WRPLL_FLAGS_INT_FEEDBACK_MASK |
> +		     WRPLL_FLAGS_EXT_FEEDBACK_MASK);
> +
> +	/* external feedback mode not supported */
> +	c->flags |= WRPLL_FLAGS_INT_FEEDBACK_MASK;
> +}
> +
> +/**
> + * __prci_wrpll_pack() - pack PLL configuration parameters into a register value
> + * @c: pointer to a struct analogbits_wrpll_cfg record containing the PLL's cfg
> + *
> + * Using a set of WRPLL configuration values pointed to by @c,
> + * assemble a PRCI PLL configuration register value, and return it to
> + * the caller.
> + *
> + * Context: Any context.  Caller must ensure that the contents of the
> + *          record pointed to by @c do not change during the execution
> + *          of this function.
> + *
> + * Returns: a value suitable for writing into a PRCI PLL configuration
> + *          register
> + */
> +static u32 __prci_wrpll_pack(struct analogbits_wrpll_cfg * const c)
> +{
> +	u32 r = 0;
> +
> +	r |= c->divr << PRCI_COREPLLCFG0_DIVR_SHIFT;
> +	r |= c->divf << PRCI_COREPLLCFG0_DIVF_SHIFT;
> +	r |= c->divq << PRCI_COREPLLCFG0_DIVQ_SHIFT;
> +	r |= c->range << PRCI_COREPLLCFG0_RANGE_SHIFT;
> +
> +	/* external feedback mode not supported */
> +	r |= PRCI_COREPLLCFG0_FSE_MASK;
> +
> +	return r;
> +}
> +
> +/**
> + * __prci_wrpll_read_cfg() - read the WRPLL configuration from the PRCI
> + * @pd: PRCI context
> + * @pwd: PRCI WRPLL metadata
> + *
> + * Read the current configuration of the PLL identified by @pwd from
> + * the PRCI identified by @pd, and store it into the local configuration
> + * cache in @pwd.
> + *
> + * Context: Any context.  Caller must prevent the records pointed to by
> + *          @pd and @pwd from changing during execution.
> + */
> +static void __prci_wrpll_read_cfg(struct __prci_data *pd,
> +				  struct __prci_wrpll_data *pwd)
> +{
> +	__prci_wrpll_unpack(&pwd->c, __prci_readl(pd, pwd->cfg0_offs));
> +}
> +
> +/**
> + * __prci_wrpll_write_cfg() - write WRPLL configuration into the PRCI
> + * @pd: PRCI context
> + * @pwd: PRCI WRPLL metadata
> + * @c: WRPLL configuration record to write
> + *
> + * Write the WRPLL configuration described by @c into the WRPLL
> + * configuration register identified by @pwd in the PRCI instance
> + * described by @c.  Make a cached copy of the WRPLL's current
> + * configuration so it can be used by other code.
> + *
> + * Context: Any context.  Caller must prevent the records pointed to by
> + *          @pd and @pwd from changing during execution.
> + */
> +static void __prci_wrpll_write_cfg(struct __prci_data *pd,
> +				   struct __prci_wrpll_data *pwd,
> +				   struct analogbits_wrpll_cfg *c)
> +{
> +	__prci_writel(__prci_wrpll_pack(c), pwd->cfg0_offs, pd);
> +
> +	memcpy(&pwd->c, c, sizeof(struct analogbits_wrpll_cfg));
> +}
> +
> +/* Core clock mux control */
> +
> +/**
> + * __prci_coreclksel_use_hfclk() - switch the CORECLK mux to output HFCLK
> + * @pd: struct __prci_data * for the PRCI containing the CORECLK mux reg
> + *
> + * Switch the CORECLK mux to the HFCLK input source; return once complete.
> + *
> + * Context: Any context.  Caller must prevent concurrent changes to the
> + *          PRCI_CORECLKSEL_OFFSET register.
> + */
> +static void __prci_coreclksel_use_hfclk(struct __prci_data *pd)
> +{
> +	u32 r;
> +
> +	r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);
> +	r |= PRCI_CORECLKSEL_CORECLKSEL_MASK;
> +	__prci_writel(r, PRCI_CORECLKSEL_OFFSET, pd);
> +
> +	r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET); /* barrier */
> +}
> +
> +/**
> + * __prci_coreclksel_use_corepll() - switch the CORECLK mux to output COREPLL
> + * @pd: struct __prci_data * for the PRCI containing the CORECLK mux reg
> + *
> + * Switch the CORECLK mux to the PLL output clock; return once complete.
> + *
> + * Context: Any context.  Caller must prevent concurrent changes to the
> + *          PRCI_CORECLKSEL_OFFSET register.
> + */
> +static void __prci_coreclksel_use_corepll(struct __prci_data *pd)
> +{
> +	u32 r;
> +
> +	r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);
> +	r &= ~PRCI_CORECLKSEL_CORECLKSEL_MASK;
> +	__prci_writel(r, PRCI_CORECLKSEL_OFFSET, pd);
> +
> +	r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET); /* barrier */
> +}
> +
> +/*
> + * Linux clock framework integration
> + *
> + * See the Linux clock framework documentation for more information on
> + * these functions.
> + */
> +
> +static unsigned long sifive_fu540_prci_wrpll_recalc_rate(struct clk_hw *hw,
> +							 unsigned long parent_rate)
> +{
> +	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> +	struct __prci_wrpll_data *pwd = pc->pwd;
> +
> +	return analogbits_wrpll_calc_output_rate(&pwd->c, parent_rate);
> +}
> +
> +static long sifive_fu540_prci_wrpll_round_rate(struct clk_hw *hw,
> +					       unsigned long rate,
> +					       unsigned long *parent_rate)
> +{
> +	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> +	struct __prci_wrpll_data *pwd = pc->pwd;
> +	struct analogbits_wrpll_cfg c;
> +
> +	memcpy(&c, &pwd->c, sizeof(c));
> +
> +	analogbits_wrpll_configure_for_rate(&c, rate, *parent_rate);
> +
> +	return analogbits_wrpll_calc_output_rate(&c, *parent_rate);
> +}
> +
> +static int sifive_fu540_prci_wrpll_set_rate(struct clk_hw *hw,
> +					    unsigned long rate,
> +					    unsigned long parent_rate)
> +{
> +	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> +	struct __prci_wrpll_data *pwd = pc->pwd;
> +	struct __prci_data *pd = pc->pd;
> +	int r;
> +
> +	r = analogbits_wrpll_configure_for_rate(&pwd->c, rate, parent_rate);
> +	if (r)
> +		return r;
> +
> +	if (pwd->enable_bypass)
> +		pwd->enable_bypass(pd);
> +
> +	__prci_wrpll_write_cfg(pd, pwd, &pwd->c);
> +
> +	udelay(analogbits_wrpll_calc_max_lock_us(&pwd->c));
> +
> +	if (pwd->disable_bypass)
> +		pwd->disable_bypass(pd);
> +
> +	return 0;
> +}
> +
> +static const struct clk_ops sifive_fu540_prci_wrpll_clk_ops = {
> +	.set_rate = sifive_fu540_prci_wrpll_set_rate,
> +	.round_rate = sifive_fu540_prci_wrpll_round_rate,
> +	.recalc_rate = sifive_fu540_prci_wrpll_recalc_rate,
> +};
> +
> +static const struct clk_ops sifive_fu540_prci_wrpll_ro_clk_ops = {
> +	.recalc_rate = sifive_fu540_prci_wrpll_recalc_rate,
> +};
> +
> +/* TLCLKSEL clock integration */
> +
> +static unsigned long sifive_fu540_prci_tlclksel_recalc_rate(struct clk_hw *hw,
> +							    unsigned long parent_rate)
> +{
> +	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> +	struct __prci_data *pd = pc->pd;
> +	u32 v;
> +	u8 div;
> +
> +	v = __prci_readl(pd, PRCI_CLKMUXSTATUSREG_OFFSET);
> +	v &= PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_MASK;
> +	div = v ? 1 : 2;
> +
> +	return div_u64(parent_rate, div);
> +}
> +
> +static const struct clk_ops sifive_fu540_prci_tlclksel_clk_ops = {
> +	.recalc_rate = sifive_fu540_prci_tlclksel_recalc_rate,
> +};
> +
> +/*
> + * PRCI integration data for each WRPLL instance
> + */
> +
> +static struct __prci_wrpll_data __prci_corepll_data = {
> +	.cfg0_offs = PRCI_COREPLLCFG0_OFFSET,
> +	.enable_bypass = __prci_coreclksel_use_hfclk,
> +	.disable_bypass = __prci_coreclksel_use_corepll,
> +};
> +
> +static struct __prci_wrpll_data __prci_ddrpll_data = {
> +	.cfg0_offs = PRCI_DDRPLLCFG0_OFFSET,
> +};
> +
> +static struct __prci_wrpll_data __prci_gemgxlpll_data = {
> +	.cfg0_offs = PRCI_GEMGXLPLLCFG0_OFFSET,
> +};
> +
> +/*
> + * List of clock controls provided by the PRCI
> + */
> +
> +static struct __prci_clock __prci_init_clocks[] = {
> +	[PRCI_CLK_COREPLL] = {
> +		.name = "corepll",
> +		.parent_name = "hfclk",
> +		.ops = &sifive_fu540_prci_wrpll_clk_ops,
> +		.pwd = &__prci_corepll_data,
> +	},
> +	[PRCI_CLK_DDRPLL] = {
> +		.name = "ddrpll",
> +		.parent_name = "hfclk",
> +		.ops = &sifive_fu540_prci_wrpll_ro_clk_ops,
> +		.pwd = &__prci_ddrpll_data,
> +	},
> +	[PRCI_CLK_GEMGXLPLL] = {
> +		.name = "gemgxlpll",
> +		.parent_name = "hfclk",
> +		.ops = &sifive_fu540_prci_wrpll_clk_ops,
> +		.pwd = &__prci_gemgxlpll_data,
> +	},
> +	[PRCI_CLK_TLCLK] = {
> +		.name = "tlclk",
> +		.parent_name = "corepll",
> +		.ops = &sifive_fu540_prci_tlclksel_clk_ops,
> +	},
> +};
> +
> +/**
> + * __prci_register_clocks() - register clock controls in the PRCI with Linux
> + * @dev: Linux struct device *
> + *
> + * Register the list of clock controls described in __prci_init_plls[] with
> + * the Linux clock framework.
> + *
> + * Return: 0 upon success or a negative error code upon failure.
> + */
> +static int __prci_register_clocks(struct device *dev, struct __prci_data *pd)
> +{
> +	struct clk_init_data init;
> +	struct __prci_clock *pic;
> +	int parent_count, i, clk_hw_count, r;
> +
> +	parent_count = of_clk_get_parent_count(dev->of_node);
> +	if (parent_count != EXPECTED_CLK_PARENT_COUNT) {
> +		dev_err(dev, "expected only two parent clocks, found %d\n",
> +			parent_count);
> +		return -EINVAL;
> +	}
> +
> +	memset(&init, 0, sizeof(struct clk_init_data));
> +
> +	/* Register PLLs */
> +	clk_hw_count = sizeof(__prci_init_clocks) / sizeof(struct __prci_clock);
> +
> +	for (i = 0; i < clk_hw_count; ++i) {
> +		pic = &__prci_init_clocks[i];
> +
> +		init.name = pic->name;
> +		init.parent_names = &pic->parent_name;
> +		init.num_parents = 1;
> +		init.ops = pic->ops;
> +		pic->hw.init = &init;
> +
> +		pic->pd = pd;
> +
> +		if (pic->pwd)
> +			__prci_wrpll_read_cfg(pd, pic->pwd);
> +
> +		r = devm_clk_hw_register(dev, &pic->hw);
> +		if (r) {
> +			dev_warn(dev, "Failed to register clock %s: %d\n",
> +				 init.name, r);
> +			return r;
> +		}
> +
> +		r = clk_hw_register_clkdev(&pic->hw, pic->name, dev_name(dev));
> +		if (r) {
> +			dev_warn(dev, "Failed to register clkdev for %s: %d\n",
> +				 init.name, r);
> +			return r;
> +		}
> +
> +		pd->hw_clks.hws[i] = &pic->hw;
> +	}
> +
> +	pd->hw_clks.num = i;
> +
> +	r = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
> +					&pd->hw_clks);
> +	if (r) {
> +		dev_err(dev, "could not add hw_provider: %d\n", r);
> +		return r;
> +	}
> +
> +	return 0;
> +}
> +
> +/*
> + * Linux device model integration
> + *
> + * See the Linux device model documentation for more information about
> + * these functions.
> + */
> +static int sifive_fu540_prci_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct resource *res;
> +	struct __prci_data *pd;
> +	int r;
> +
> +	pd = devm_kzalloc(dev, sizeof(*pd), GFP_KERNEL);
> +	if (!pd)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	pd->va = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(pd->va))
> +		return PTR_ERR(pd->va);
> +
> +	r = __prci_register_clocks(dev, pd);
> +	if (r) {
> +		dev_err(dev, "could not register clocks: %d\n", r);
> +		return r;
> +	}
> +
> +	dev_dbg(dev, "SiFive FU540 PRCI probed\n");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id sifive_fu540_prci_of_match[] = {
> +	{ .compatible = "sifive,fu540-c000-prci", },

All the existing unleashed devices have prci clock compatible string as
"sifive,aloeprci0" or "sifive,ux00prci0". Should it be added to maintain 
backward compatibility?

Even after adding the compatible string (just for my testing purpose), I 
get this while booting.

[    0.104571] sifive-fu540-prci 10000000.prci: expected only two parent 
clocks, found 1
[    0.112460] sifive-fu540-prci 10000000.prci: could not register 
clocks: -22
[    0.119499] sifive-fu540-prci: probe of 10000000.prci failed with 
error -22

Looking at the DT entries, your DT patch has

+		prci: clock-controller@10000000 {
+			compatible = "sifive,fu540-c000-prci";
+			reg = <0x0 0x10000000 0x0 0x1000>;
+			clocks = <&hfclk>, <&rtcclk>;
+			#clock-cells = <1>;
+		};


while current DT from FSBL 
(https://github.com/sifive/freedom-u540-c000-bootloader/blob/master/fsbl/ux00_fsbl.dts)

prci: prci@10000000 {
			compatible = "sifive,aloeprci0", "sifive,ux00prci0";
			reg = <0x0 0x10000000 0x0 0x1000>;
			reg-names = "control";
			clocks = <&refclk>;
			#clock-cells = <1>;
		};

This seems to be the cause of error. It looks like this patch needs a 
complete different DT (your DT patch) than FSBL provides.

This means everybody must upgrade the FSBL to use your DT patch in their 
boards once this driver is merged. Is this okay?

Regards,
Atish
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, sifive_fu540_prci_of_match);
> +
> +static struct platform_driver sifive_fu540_prci_driver = {
> +	.driver	= {
> +		.name = "sifive-fu540-prci",
> +		.of_match_table = sifive_fu540_prci_of_match,
> +	},
> +	.probe = sifive_fu540_prci_probe,
> +};
> +
> +static int __init sifive_fu540_prci_init(void)
> +{
> +	return platform_driver_register(&sifive_fu540_prci_driver);
> +}
> +core_initcall(sifive_fu540_prci_init);
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
