Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E441FED08
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 00:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3SGb/clK+a8NjN6QtuajhDaAuLwkPVWAr8SC7x6k1w=; b=lMQksR7PQezVT0
	VCNgi8vUE/QzQvvQPGfoKYgSjDcJlssWYWCUAuFt1tUPsWdCJLbztY36RDTeU1CuVmaiZfEaoJ3x9
	SBbBWtwjlOKrlFlHSTEGDZgwWjIVz7jIrq9L3bqqgU2TvLbbaztPGOuCdEHb46BRtjpCw0p92ggpy
	o2wb7SPfYe2exZGa/Fj/wJw8BtlN02zAGbCBRH+RkAKDNalJ82+xY9bun55pBkYYzpwyddvg/SZJX
	/jrmQoeltDgfV9HA1aQtR6XdJsndZi2xNxlTDTsOKajIcua6DrXEsZdVqdS4AhL/boDB4D5JqRNLE
	n9PgHaT8+KMq6J35bIKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFC4-0007p5-2f; Mon, 29 Apr 2019 22:56:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFC0-0007oe-7b
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 22:56:14 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E45F2075E;
 Mon, 29 Apr 2019 22:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556578571;
 bh=i6OJLEMsxvHyiCFvoFdM8tR4X1TxEiuZEYRdZCCOdrU=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=vNKt+gsRRzDrmiNbTK0OkF7HeB1bcIpfnp43HpURLZrLoldO+hLvhsk2qsexaeZU2
 J/dU+kVzK4RQZPeZi1W6iWWpJHI3KlbPiSQ6D54gddt9UMl+h9aT/JTmBQUytAO67C
 qmYB+JCIB+/nk4+6xsMlxYAsTWI4VEGkYpaE6sCs=
MIME-Version: 1.0
In-Reply-To: <20190411082733.3736-4-paul.walmsley@sifive.com>
References: <20190411082733.3736-2-paul.walmsley@sifive.com>
 <20190411082733.3736-4-paul.walmsley@sifive.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 3/3] clk: sifive: add a driver for the SiFive FU540
 PRCI IP block
To: Paul Walmsley <paul.walmsley@sifive.com>, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Message-ID: <155657857064.168659.1879040965731877610@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Mon, 29 Apr 2019 15:56:10 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_155612_317487_4B41329C 
X-CRM114-Status: GOOD (  29.70  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "Wesley W . Terpstra" <wesley@sifive.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, Megan Wachs <megan@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Quoting Paul Walmsley (2019-04-11 01:27:36)
> diff --git a/drivers/clk/sifive/Makefile b/drivers/clk/sifive/Makefile
> new file mode 100644
> index 000000000000..74d58a4c0756
> --- /dev/null
> +++ b/drivers/clk/sifive/Makefile
> @@ -0,0 +1 @@

Any SPDX for this file?

> +obj-$(CONFIG_CLK_SIFIVE_FU540_PRCI)    += fu540-prci.o
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

Please remove above two hunks as they're part of SPDX already.

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

Please put this after linux.

> +#include <linux/clkdev.h>

Do you need clkdev? Isn't this all DT based? If possible, please don't
use clkdev.

> +#include <linux/clk-provider.h>
> +#include <linux/clk/analogbits-wrpll-cln28hpc.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_clk.h>

Is this used?

> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +/*
> + * EXPECTED_CLK_PARENT_COUNT: how many parent clocks this driver expects:
> + *     hfclk and rtcclk
> + */
> +#define EXPECTED_CLK_PARENT_COUNT              2
> +
> +/*
> + * Register offsets and bitmasks
> + */
> +
> +/* COREPLLCFG0 */
> +#define PRCI_COREPLLCFG0_OFFSET                        0x4
> +# define PRCI_COREPLLCFG0_DIVR_SHIFT           0
> +# define PRCI_COREPLLCFG0_DIVR_MASK            (0x3f << PRCI_COREPLLCFG0_DIVR_SHIFT)
> +# define PRCI_COREPLLCFG0_DIVF_SHIFT           6
> +# define PRCI_COREPLLCFG0_DIVF_MASK            (0x1ff << PRCI_COREPLLCFG0_DIVF_SHIFT)
> +# define PRCI_COREPLLCFG0_DIVQ_SHIFT           15
> +# define PRCI_COREPLLCFG0_DIVQ_MASK            (0x7 << PRCI_COREPLLCFG0_DIVQ_SHIFT)
> +# define PRCI_COREPLLCFG0_RANGE_SHIFT          18
> +# define PRCI_COREPLLCFG0_RANGE_MASK           (0x7 << PRCI_COREPLLCFG0_RANGE_SHIFT)
> +# define PRCI_COREPLLCFG0_BYPASS_SHIFT         24
> +# define PRCI_COREPLLCFG0_BYPASS_MASK          (0x1 << PRCI_COREPLLCFG0_BYPASS_SHIFT)
> +# define PRCI_COREPLLCFG0_FSE_SHIFT            25
> +# define PRCI_COREPLLCFG0_FSE_MASK             (0x1 << PRCI_COREPLLCFG0_FSE_SHIFT)
> +# define PRCI_COREPLLCFG0_LOCK_SHIFT           31
> +# define PRCI_COREPLLCFG0_LOCK_MASK            (0x1 << PRCI_COREPLLCFG0_LOCK_SHIFT)
> +
> +/* DDRPLLCFG0 */
> +#define PRCI_DDRPLLCFG0_OFFSET                 0xc
> +# define PRCI_DDRPLLCFG0_DIVR_SHIFT            0
> +# define PRCI_DDRPLLCFG0_DIVR_MASK             (0x3f << PRCI_DDRPLLCFG0_DIVR_SHIFT)
> +# define PRCI_DDRPLLCFG0_DIVF_SHIFT            6
> +# define PRCI_DDRPLLCFG0_DIVF_MASK             (0x1ff << PRCI_DDRPLLCFG0_DIVF_SHIFT)
> +# define PRCI_DDRPLLCFG0_DIVQ_SHIFT            15
> +# define PRCI_DDRPLLCFG0_DIVQ_MASK             (0x7 << PRCI_DDRPLLCFG0_DIVQ_SHIFT)
> +# define PRCI_DDRPLLCFG0_RANGE_SHIFT           18
> +# define PRCI_DDRPLLCFG0_RANGE_MASK            (0x7 << PRCI_DDRPLLCFG0_RANGE_SHIFT)
> +# define PRCI_DDRPLLCFG0_BYPASS_SHIFT          24
> +# define PRCI_DDRPLLCFG0_BYPASS_MASK           (0x1 << PRCI_DDRPLLCFG0_BYPASS_SHIFT)
> +# define PRCI_DDRPLLCFG0_FSE_SHIFT             25
> +# define PRCI_DDRPLLCFG0_FSE_MASK              (0x1 << PRCI_DDRPLLCFG0_FSE_SHIFT)
> +# define PRCI_DDRPLLCFG0_LOCK_SHIFT            31
> +# define PRCI_DDRPLLCFG0_LOCK_MASK             (0x1 << PRCI_DDRPLLCFG0_LOCK_SHIFT)
> +
> +/* DDRPLLCFG1 */
> +#define PRCI_DDRPLLCFG1_OFFSET                 0x10
> +# define PRCI_DDRPLLCFG1_CKE_SHIFT             24
> +# define PRCI_DDRPLLCFG1_CKE_MASK              (0x1 << PRCI_DDRPLLCFG1_CKE_SHIFT)
> +
> +/* GEMGXLPLLCFG0 */
> +#define PRCI_GEMGXLPLLCFG0_OFFSET              0x1c
> +# define PRCI_GEMGXLPLLCFG0_DIVR_SHIFT         0
> +# define PRCI_GEMGXLPLLCFG0_DIVR_MASK          (0x3f << PRCI_GEMGXLPLLCFG0_DIVR_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_DIVF_SHIFT         6
> +# define PRCI_GEMGXLPLLCFG0_DIVF_MASK          (0x1ff << PRCI_GEMGXLPLLCFG0_DIVF_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_DIVQ_SHIFT         15
> +# define PRCI_GEMGXLPLLCFG0_DIVQ_MASK          (0x7 << PRCI_GEMGXLPLLCFG0_DIVQ_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_RANGE_SHIFT                18
> +# define PRCI_GEMGXLPLLCFG0_RANGE_MASK         (0x7 << PRCI_GEMGXLPLLCFG0_RANGE_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_BYPASS_SHIFT       24
> +# define PRCI_GEMGXLPLLCFG0_BYPASS_MASK                (0x1 << PRCI_GEMGXLPLLCFG0_BYPASS_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_FSE_SHIFT          25
> +# define PRCI_GEMGXLPLLCFG0_FSE_MASK           (0x1 << PRCI_GEMGXLPLLCFG0_FSE_SHIFT)
> +# define PRCI_GEMGXLPLLCFG0_LOCK_SHIFT         31
> +# define PRCI_GEMGXLPLLCFG0_LOCK_MASK          (0x1 << PRCI_GEMGXLPLLCFG0_LOCK_SHIFT)
> +
> +/* GEMGXLPLLCFG1 */
> +#define PRCI_GEMGXLPLLCFG1_OFFSET              0x20
> +# define PRCI_GEMGXLPLLCFG1_CKE_SHIFT          24
> +# define PRCI_GEMGXLPLLCFG1_CKE_MASK           (0x1 << PRCI_GEMGXLPLLCFG1_CKE_SHIFT)
> +
> +/* CORECLKSEL */
> +#define PRCI_CORECLKSEL_OFFSET                 0x24
> +# define PRCI_CORECLKSEL_CORECLKSEL_SHIFT      0
> +# define PRCI_CORECLKSEL_CORECLKSEL_MASK       (0x1 << PRCI_CORECLKSEL_CORECLKSEL_SHIFT)
> +
> +/* DEVICESRESETREG */
> +#define PRCI_DEVICESRESETREG_OFFSET                    0x28
> +# define PRCI_DEVICESRESETREG_DDR_CTRL_RST_N_SHIFT     0
> +# define PRCI_DEVICESRESETREG_DDR_CTRL_RST_N_MASK      (0x1 << PRCI_DEVICESRESETREG_DDR_CTRL_RST_N_SHIFT)
> +# define PRCI_DEVICESRESETREG_DDR_AXI_RST_N_SHIFT      1
> +# define PRCI_DEVICESRESETREG_DDR_AXI_RST_N_MASK       (0x1 << PRCI_DEVICESRESETREG_DDR_AXI_RST_N_SHIFT)
> +# define PRCI_DEVICESRESETREG_DDR_AHB_RST_N_SHIFT      2
> +# define PRCI_DEVICESRESETREG_DDR_AHB_RST_N_MASK       (0x1 << PRCI_DEVICESRESETREG_DDR_AHB_RST_N_SHIFT)
> +# define PRCI_DEVICESRESETREG_DDR_PHY_RST_N_SHIFT      3
> +# define PRCI_DEVICESRESETREG_DDR_PHY_RST_N_MASK       (0x1 << PRCI_DEVICESRESETREG_DDR_PHY_RST_N_SHIFT)
> +# define PRCI_DEVICESRESETREG_GEMGXL_RST_N_SHIFT       5
> +# define PRCI_DEVICESRESETREG_GEMGXL_RST_N_MASK                (0x1 << PRCI_DEVICESRESETREG_GEMGXL_RST_N_SHIFT)
> +
> +/* CLKMUXSTATUSREG */
> +#define PRCI_CLKMUXSTATUSREG_OFFSET                    0x2c
> +# define PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_SHIFT    1
> +# define PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_MASK     (0x1 << PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_SHIFT)

I suspect a bunch of these macros could be simplified with FIELD_GET()
and FIELD_SET()?

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

What does PRCI stand for? The acronym is spelled out in Kconfig but not
this file.

> + */
> +struct __prci_data {
> +       void __iomem *va;
> +       struct clk_hw_onecell_data hw_clks;
> +};
> +
> +/**
> + * struct __prci_wrpll_data - WRPLL configuration and integration data
> + * @c: WRPLL current configuration record
> + * @enable_bypass: fn ptr to code to bypass the WRPLL (if applicable; else NULL)
> + * @disable_bypass: fn ptr to code to not bypass the WRPLL (or NULL)

We know it's a function pointer, perhaps just "bypass the WRPLL (if
applicable)" and "unbypass the WRLPLL (if applicable)".

> + * @cfg0_offs: WRPLL CFG0 register offset (in bytes) from the PRCI base address
> + *
> + * @enable_bypass and @disable_bypass are used for WRPLL instances
> + * that contain a separate external glitchless clock mux downstream
> + * from the PLL.  The WRPLL internal bypass mux is not glitchless.
> + */
> +struct __prci_wrpll_data {
> +       struct analogbits_wrpll_cfg c;
> +       void (*enable_bypass)(struct __prci_data *pd);
> +       void (*disable_bypass)(struct __prci_data *pd);
> +       u8 cfg0_offs;
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
> +       const char *name;
> +       const char *parent_name;
> +       const struct clk_ops *ops;
> +       struct clk_hw hw;
> +       struct __prci_wrpll_data *pwd;
> +       struct __prci_data *pd;
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
> +       return readl_relaxed(pd->va + offs);
> +}
> +
> +static void __prci_writel(u32 v, u32 offs, struct __prci_data *pd)

No kernel-doc for this wrapper? Do we need kernel-doc for the read
wrapper?

> +{
> +       return writel_relaxed(v, pd->va + offs);
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
> +       u32 v;
> +
> +       v = r & PRCI_COREPLLCFG0_DIVR_MASK;
> +       v >>= PRCI_COREPLLCFG0_DIVR_SHIFT;
> +       c->divr = v;
> +
> +       v = r & PRCI_COREPLLCFG0_DIVF_MASK;
> +       v >>= PRCI_COREPLLCFG0_DIVF_SHIFT;
> +       c->divf = v;
> +
> +       v = r & PRCI_COREPLLCFG0_DIVQ_MASK;
> +       v >>= PRCI_COREPLLCFG0_DIVQ_SHIFT;
> +       c->divq = v;
> +
> +       v = r & PRCI_COREPLLCFG0_RANGE_MASK;
> +       v >>= PRCI_COREPLLCFG0_RANGE_SHIFT;
> +       c->range = v;
> +
> +       c->flags &= (WRPLL_FLAGS_INT_FEEDBACK_MASK |
> +                    WRPLL_FLAGS_EXT_FEEDBACK_MASK);
> +
> +       /* external feedback mode not supported */
> +       c->flags |= WRPLL_FLAGS_INT_FEEDBACK_MASK;
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

Shouldn't that be const struct analogbits_wrpll_cfg *c?

> +{
> +       u32 r = 0;
> +
> +       r |= c->divr << PRCI_COREPLLCFG0_DIVR_SHIFT;
> +       r |= c->divf << PRCI_COREPLLCFG0_DIVF_SHIFT;
> +       r |= c->divq << PRCI_COREPLLCFG0_DIVQ_SHIFT;
> +       r |= c->range << PRCI_COREPLLCFG0_RANGE_SHIFT;
> +
> +       /* external feedback mode not supported */
> +       r |= PRCI_COREPLLCFG0_FSE_MASK;
> +
> +       return r;
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

Maybe call this __prci_wrpll_cache_cfg?

> +                                 struct __prci_wrpll_data *pwd)
> +{
> +       __prci_wrpll_unpack(&pwd->c, __prci_readl(pd, pwd->cfg0_offs));
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

const pd?

> +                                  struct __prci_wrpll_data *pwd,
> +                                  struct analogbits_wrpll_cfg *c)
> +{
> +       __prci_writel(__prci_wrpll_pack(c), pwd->cfg0_offs, pd);
> +
> +       memcpy(&pwd->c, c, sizeof(struct analogbits_wrpll_cfg));
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
> +       u32 r;
> +
> +       r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);
> +       r |= PRCI_CORECLKSEL_CORECLKSEL_MASK;
> +       __prci_writel(r, PRCI_CORECLKSEL_OFFSET, pd);
> +
> +       r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET); /* barrier */
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
> +       u32 r;
> +
> +       r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);
> +       r &= ~PRCI_CORECLKSEL_CORECLKSEL_MASK;
> +       __prci_writel(r, PRCI_CORECLKSEL_OFFSET, pd);
> +
> +       r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET); /* barrier */
> +}
> +
> +/*
> + * Linux clock framework integration
> + *
> + * See the Linux clock framework documentation for more information on
> + * these functions.
> + */

Seems like a useless comment.

> +
> +static unsigned long sifive_fu540_prci_wrpll_recalc_rate(struct clk_hw *hw,
> +                                                        unsigned long parent_rate)
> +{
> +       struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> +       struct __prci_wrpll_data *pwd = pc->pwd;
> +
> +       return analogbits_wrpll_calc_output_rate(&pwd->c, parent_rate);
> +}
> +
> +static long sifive_fu540_prci_wrpll_round_rate(struct clk_hw *hw,
> +                                              unsigned long rate,
> +                                              unsigned long *parent_rate)
> +{
> +       struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> +       struct __prci_wrpll_data *pwd = pc->pwd;
> +       struct analogbits_wrpll_cfg c;
> +
> +       memcpy(&c, &pwd->c, sizeof(c));
> +
> +       analogbits_wrpll_configure_for_rate(&c, rate, *parent_rate);
> +
> +       return analogbits_wrpll_calc_output_rate(&c, *parent_rate);
> +}
> +
> +static int sifive_fu540_prci_wrpll_set_rate(struct clk_hw *hw,
> +                                           unsigned long rate,
> +                                           unsigned long parent_rate)
> +{
> +       struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> +       struct __prci_wrpll_data *pwd = pc->pwd;
> +       struct __prci_data *pd = pc->pd;
> +       int r;
> +
> +       r = analogbits_wrpll_configure_for_rate(&pwd->c, rate, parent_rate);
> +       if (r)
> +               return r;
> +
> +       if (pwd->enable_bypass)
> +               pwd->enable_bypass(pd);
> +
> +       __prci_wrpll_write_cfg(pd, pwd, &pwd->c);
> +
> +       udelay(analogbits_wrpll_calc_max_lock_us(&pwd->c));

Can it be usleep_range()? This is a set_rate path after all.

> +
> +       if (pwd->disable_bypass)
> +               pwd->disable_bypass(pd);
> +
> +       return 0;
> +}
[...]
> +/* TLCLKSEL clock integration */
> +
> +static unsigned long sifive_fu540_prci_tlclksel_recalc_rate(struct clk_hw *hw,
> +                                                           unsigned long parent_rate)
> +{
> +       struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
> +       struct __prci_data *pd = pc->pd;
> +       u32 v;
> +       u8 div;
> +
> +       v = __prci_readl(pd, PRCI_CLKMUXSTATUSREG_OFFSET);
> +       v &= PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_MASK;
> +       div = v ? 1 : 2;

I thought there was a helper for this 1 vs. 2 descision?

> +
> +       return div_u64(parent_rate, div);

Why use div_u64? parent_rate is unsigned long.

> +}
> +
> +static const struct clk_ops sifive_fu540_prci_tlclksel_clk_ops = {
> +       .recalc_rate = sifive_fu540_prci_tlclksel_recalc_rate,
> +};
> +
> +/*
> + * PRCI integration data for each WRPLL instance
> + */
> +
> +static struct __prci_wrpll_data __prci_corepll_data = {
> +       .cfg0_offs = PRCI_COREPLLCFG0_OFFSET,
> +       .enable_bypass = __prci_coreclksel_use_hfclk,
> +       .disable_bypass = __prci_coreclksel_use_corepll,
> +};
> +
> +static struct __prci_wrpll_data __prci_ddrpll_data = {
> +       .cfg0_offs = PRCI_DDRPLLCFG0_OFFSET,
> +};
> +
> +static struct __prci_wrpll_data __prci_gemgxlpll_data = {
> +       .cfg0_offs = PRCI_GEMGXLPLLCFG0_OFFSET,
> +};
> +
> +/*
> + * List of clock controls provided by the PRCI
> + */
> +
> +static struct __prci_clock __prci_init_clocks[] = {
> +       [PRCI_CLK_COREPLL] = {
> +               .name = "corepll",
> +               .parent_name = "hfclk",
> +               .ops = &sifive_fu540_prci_wrpll_clk_ops,
> +               .pwd = &__prci_corepll_data,

Why is this a pointer stored in here? Put another way, why can't we
store the whole structure for the prci_wrpll_data directly inside the
prci_clock structure?

> +       },
> +       [PRCI_CLK_DDRPLL] = {
> +               .name = "ddrpll",
> +               .parent_name = "hfclk",
> +               .ops = &sifive_fu540_prci_wrpll_ro_clk_ops,
> +               .pwd = &__prci_ddrpll_data,
> +       },
> +       [PRCI_CLK_GEMGXLPLL] = {
> +               .name = "gemgxlpll",
> +               .parent_name = "hfclk",
> +               .ops = &sifive_fu540_prci_wrpll_clk_ops,
> +               .pwd = &__prci_gemgxlpll_data,
> +       },
> +       [PRCI_CLK_TLCLK] = {
> +               .name = "tlclk",
> +               .parent_name = "corepll",
> +               .ops = &sifive_fu540_prci_tlclksel_clk_ops,
> +       },
> +};
> +
> +/**
> + * __prci_register_clocks() - register clock controls in the PRCI with Linux
> + * @dev: Linux struct device *

Maybe 'device registering clks'. Or just collapse this into 'probe'
below.

> + *
> + * Register the list of clock controls described in __prci_init_plls[] with
> + * the Linux clock framework.
> + *
> + * Return: 0 upon success or a negative error code upon failure.
> + */
> +static int __prci_register_clocks(struct device *dev, struct __prci_data *pd)
> +{
> +       struct clk_init_data init;
> +       struct __prci_clock *pic;
> +       int parent_count, i, clk_hw_count, r;
> +
> +       parent_count = of_clk_get_parent_count(dev->of_node);
> +       if (parent_count != EXPECTED_CLK_PARENT_COUNT) {

We don't need to validate DT. That's what DT schemas are for.

> +               dev_err(dev, "expected only two parent clocks, found %d\n",
> +                       parent_count);
> +               return -EINVAL;
> +       }
> +
> +       memset(&init, 0, sizeof(struct clk_init_data));

sizeof(init)? Or just struct clk_init_data init = { };

> +
> +       /* Register PLLs */
> +       clk_hw_count = sizeof(__prci_init_clocks) / sizeof(struct __prci_clock);

Is this ARRAY_SIZE()?

> +
> +       for (i = 0; i < clk_hw_count; ++i) {
> +               pic = &__prci_init_clocks[i];
> +
> +               init.name = pic->name;
> +               init.parent_names = &pic->parent_name;
> +               init.num_parents = 1;
> +               init.ops = pic->ops;
> +               pic->hw.init = &init;
> +
> +               pic->pd = pd;
> +
> +               if (pic->pwd)
> +                       __prci_wrpll_read_cfg(pd, pic->pwd);
> +
> +               r = devm_clk_hw_register(dev, &pic->hw);
> +               if (r) {
> +                       dev_warn(dev, "Failed to register clock %s: %d\n",
> +                                init.name, r);
> +                       return r;
> +               }
> +
> +               r = clk_hw_register_clkdev(&pic->hw, pic->name, dev_name(dev));
> +               if (r) {
> +                       dev_warn(dev, "Failed to register clkdev for %s: %d\n",

But we return right after, and don't use devm_() to register other
clkdevs so we leak some here? I hope clkdev can be removed from this
driver.

> +                                init.name, r);
> +                       return r;
> +               }
> +
> +               pd->hw_clks.hws[i] = &pic->hw;
> +       }
> +
> +       pd->hw_clks.num = i;
> +
> +       r = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
> +                                       &pd->hw_clks);
> +       if (r) {
> +               dev_err(dev, "could not add hw_provider: %d\n", r);
> +               return r;
> +       }
> +
> +       return 0;
> +}
> +
> +/*
> + * Linux device model integration
> + *
> + * See the Linux device model documentation for more information about
> + * these functions.
> + */

Can you remove this comment? It doesn't seem worthwhile.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
