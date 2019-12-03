Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09F1110144
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 16:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FS71CG5Ryyce9IHr/+djC7Fit5NyhtvhlmTIrOtpEaE=; b=K8n7gBoyI6mvjW
	tVEJBA6waGwoGMScdr7hI/lVwBG3bpkxUB6WbJ2zuTIXyEYDUomSopea7d/V5MGivQ+dHMJXJHLT+
	vZo8F77QNCIJToQ6VcY0V7Zt9oUdk51+o/W1R/f0LiUdwne4fXqlmulEBcr88bvixd0qnDOFIEt5d
	sOEBECtS//D3/VTlMpKpkXxTbApX1ZwJm/sVjbuOFvs/VWRNdvLvCwtHov8wIGy8vJmZ8eDOU8thp
	4kL2mSxik5Yr7t4ZslJO0RufLjY+rA+cXfu06V31L/BqabouLdVy77IetgIRtjFmRvG+86K2ryTwC
	XfLSu0FoOYb3DsO2Meew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icA6X-0007gb-1B; Tue, 03 Dec 2019 15:28:45 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icA6B-0007UR-L0; Tue, 03 Dec 2019 15:28:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2BD8169A7F;
 Tue,  3 Dec 2019 15:28:22 +0000 (UTC)
Subject: Re: [PATCH 3/6] clk: realtek: add common clock support for Realtek
 SoCs
To: James Tai <james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
 <20191203074513.9416-4-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <90124940-e946-1163-8baa-5064d3d973c5@suse.de>
Date: Tue, 3 Dec 2019 16:28:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191203074513.9416-4-james.tai@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_072827_163890_B26C8516 
X-CRM114-Status: GOOD (  23.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: cylee12 <cylee12@realtek.com>, linux-realtek-soc@lists.infradead.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi James,

[dropping Palmer]

Am 03.12.19 um 08:45 schrieb James Tai:
> From: cylee12 <cylee12@realtek.com>

Please fix the author name.

> 
> This patch adds common clock support for Realtek SoCs, including PLLs,
> Mux clocks and Gate clocks.

Can you be more specific here, please? Is this compatible back to
RTD1195 or RTD1295 or just 1619 forward? I only see RTD1619 in 5/6. And
not a single .dtsi patch is included in this series for testing it.

> 
> Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
> Signed-off-by: James Tai <james.tai@realtek.com>
> ---
>  drivers/clk/Kconfig                   |   1 +
>  drivers/clk/Makefile                  |   1 +
>  drivers/clk/realtek/Kconfig           |  10 +
>  drivers/clk/realtek/Makefile          |   9 +
>  drivers/clk/realtek/clk-pll-dif.c     |  81 ++++++
>  drivers/clk/realtek/clk-pll-psaud.c   | 120 ++++++++
>  drivers/clk/realtek/clk-pll.c         | 400 ++++++++++++++++++++++++++
>  drivers/clk/realtek/clk-pll.h         | 151 ++++++++++
>  drivers/clk/realtek/clk-regmap-gate.c |  89 ++++++
>  drivers/clk/realtek/clk-regmap-gate.h |  26 ++
>  drivers/clk/realtek/clk-regmap-mux.c  |  63 ++++
>  drivers/clk/realtek/clk-regmap-mux.h  |  26 ++
>  drivers/clk/realtek/common.c          | 320 +++++++++++++++++++++
>  drivers/clk/realtek/common.h          | 123 ++++++++
>  14 files changed, 1420 insertions(+)

This patch is way too large for me to review. Please split this up
further into logically self-contained, compile-testable patches.

>  create mode 100644 drivers/clk/realtek/Kconfig
>  create mode 100644 drivers/clk/realtek/Makefile
>  create mode 100644 drivers/clk/realtek/clk-pll-dif.c
>  create mode 100644 drivers/clk/realtek/clk-pll-psaud.c
>  create mode 100644 drivers/clk/realtek/clk-pll.c
>  create mode 100644 drivers/clk/realtek/clk-pll.h
>  create mode 100644 drivers/clk/realtek/clk-regmap-gate.c
>  create mode 100644 drivers/clk/realtek/clk-regmap-gate.h
>  create mode 100644 drivers/clk/realtek/clk-regmap-mux.c
>  create mode 100644 drivers/clk/realtek/clk-regmap-mux.h
>  create mode 100644 drivers/clk/realtek/common.c
>  create mode 100644 drivers/clk/realtek/common.h
> 
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index c44247d0b83e..8e06487440ce 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -317,6 +317,7 @@ source "drivers/clk/mediatek/Kconfig"
>  source "drivers/clk/meson/Kconfig"
>  source "drivers/clk/mvebu/Kconfig"
>  source "drivers/clk/qcom/Kconfig"
> +source "drivers/clk/realtek/Kconfig"
>  source "drivers/clk/renesas/Kconfig"
>  source "drivers/clk/samsung/Kconfig"
>  source "drivers/clk/sifive/Kconfig"
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index 0138fb14e6f8..71ea17f97f7d 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -95,6 +95,7 @@ obj-$(CONFIG_COMMON_CLK_NXP)		+= nxp/
>  obj-$(CONFIG_MACH_PISTACHIO)		+= pistachio/
>  obj-$(CONFIG_COMMON_CLK_PXA)		+= pxa/
>  obj-$(CONFIG_COMMON_CLK_QCOM)		+= qcom/
> +obj-$(CONFIG_COMMON_CLK_REALTEK)	+= realtek/

Should we take the Renesas approach here and allow for COMPILE_TEST?

>  obj-y					+= renesas/
>  obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
>  obj-$(CONFIG_COMMON_CLK_SAMSUNG)	+= samsung/
> diff --git a/drivers/clk/realtek/Kconfig b/drivers/clk/realtek/Kconfig
> new file mode 100644
> index 000000000000..5bca757dddfa
> --- /dev/null
> +++ b/drivers/clk/realtek/Kconfig
> @@ -0,0 +1,10 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +config COMMON_CLK_REALTEK

I would personally think that it's not necessary to prefix with COMMON_
here, even if based on CONFIG_COMMON_CLK framework, since Realtek is no
longer common. Stephen/Michael?

Which brings us to the next aspect, is this really universally common
for Realtek? Are they compatible with old MIPS SoCs and Arm SoCs from
departments other than DHC? (e.g., Smart TV)
If the answer to any of these is no, then please rename the Kconfig
symbol to the oldest SoC for uniqueness, e.g., RTD1195.

> +	bool "Clock driver for realtek"

Spelling.

> +	select MFD_SYSCON

Please add help text and include SoC names.

> +
> +config CLK_PLL_PSAUD

Too generic name.

> +	bool
> +
> +config CLK_PLL_DIF

Ditto.

> +	bool
> diff --git a/drivers/clk/realtek/Makefile b/drivers/clk/realtek/Makefile
> new file mode 100644
> index 000000000000..050d450db067
> --- /dev/null
> +++ b/drivers/clk/realtek/Makefile
> @@ -0,0 +1,9 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_COMMON_CLK_REALTEK) += clk-rtk.o
> +
> +clk-rtk-y += common.o
> +clk-rtk-y += clk-regmap-mux.o
> +clk-rtk-y += clk-regmap-gate.o
> +clk-rtk-y += clk-pll.o
> +clk-rtk-$(CONFIG_CLK_PLL_PSAUD) += clk-pll-psaud.o
> +clk-rtk-$(CONFIG_CLK_PLL_DIF) += clk-pll-dif.o
> diff --git a/drivers/clk/realtek/clk-pll-dif.c b/drivers/clk/realtek/clk-pll-dif.c
> new file mode 100644
> index 000000000000..d19efef2626e
> --- /dev/null
> +++ b/drivers/clk/realtek/clk-pll-dif.c
> @@ -0,0 +1,81 @@
> +// SPDX-License-Identifier: GPL-2.0-only

Can you relicense this code as GPL-2.0-or-later? For Makefile and
Kconfig it doesn't matter, just for low-level code that could become
relevant for debuggers like OpenOCD, which is licensed GPLv2+.

> +/*

Care to elaborate here what "dif" is? :)

> + * Copyright (c) 2019 Realtek Semiconductor Corporation
> + * Author: Cheng-Yu Lee <cylee12@realtek.com>
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/clk.h>
> +#include <linux/spinlock.h>
> +#include <linux/delay.h>

Insert white line here?

> +#include "common.h"
> +#include "clk-pll.h"
> +
> +static int clk_pll_dif_enable(struct clk_hw *hw)
> +{
> +	struct clk_pll_dif *pll = to_clk_pll_dif(hw);
> +
> +	pr_debug("%pC: %s\n", hw->clk, __func__);

Please review debug and info messages for whether they are still needed
- in particular for info below I assume no.

> +
> +	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x0C, 0x00000048);
> +	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x08, 0x00020c00);
> +	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x04, 0x204004ca);
> +	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x00, 0x8000a000);

This is way too much dark magic!

Start with giving the offsets symbolic names, please.

Next, construct the value from symbolic constants. You will see me use
BIT() and GENMASK() macros elsewhere; please adopt those conventions.

> +	udelay(100);

Is this from some internal datasheet? Otherwise, from some MCU clocks
that I've previously implemented, I would expect there to be some status
bit indicating readyness that we should poll rather than trusting a
hardcoded delay. I don't see a single read below, nor any explanatory
comment.

> +
> +	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x08, 0x00420c00);
> +	udelay(50);
> +
> +	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x08, 0x00420c03);
> +	udelay(200);
> +
> +	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x0C, 0x00000078);
> +	udelay(100);
> +
> +	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x04, 0x204084ca);
> +
> +	/* ssc control */

This lonely comment seems kind of redundant with ssc_ofs vs. pll_ofs.

> +	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x00, 0x00000004);
> +	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x04, 0x00006800);
> +	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x0C, 0x00000000);
> +	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x10, 0x00000000);
> +	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x08, 0x001e1f98);
> +	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x00, 0x00000005);
> +	pll->status = 1;
> +
> +	return 0;
> +}
[snip]

I'll stop reviewing here and am waiting for a v2.

Thanks,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)

