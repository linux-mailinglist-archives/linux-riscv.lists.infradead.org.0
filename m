Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EFCEE31
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 03:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+q0K/2NNw8aUqE7tcM2B2GdFFv6ePMV4osoE5Cr8OMI=; b=fst0dZ1d5HmgSO
	DALUUECJlAOi4xUZSs4SfuH6GVHIAHI+E7vszJVJ/2910KEW8R1waLkTse5baj+II5uvVpWmoOyzU
	cadNm6klqPvjk+caUDA8RD9LngkBB09Mqvw1yFXqpEKxSFqqssWhM0GCPkJ+xC2HUVql03XoYaKQQ
	34zJjEen6TrLKIvP1smPjcyoghsL89M5KdjDqMmM7Yi2KOLm3vPn1hjXbnRmmBj0St0Yu59suwadT
	wq2WCYY71Nd49Dzc030WRD2UBW3uJnZxpbP2TCwVtxjA/RvwjQBlWN3QTUfMP/t+KZNS5JL5BeEXf
	b5m1EHq+KPf2JLtx1gOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHLh-0007bG-Rm; Tue, 30 Apr 2019 01:14:21 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHLd-0007af-Hx
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 01:14:20 +0000
Received: by mail-it1-x142.google.com with SMTP id q14so2140994itk.0
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 18:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=IRQ+zaSd3ReHjOXiu9/D3vzdnQO/55SfB5Lq63C34Cw=;
 b=HCu8JqzHruMnWa+xnMZShP810Z6Pp1vUDgzmydu0s8CdEnm7Fm/CW46olCPS1pC5xU
 gOTS66QVdXCfWcuemDz8ecXBnBAJINUezGL9jjWaobUz3m3PvFz1m5x0fp96SpUSXml5
 abDwQ6XoproFKaeVqVquSDCI85EljSnDTcpHsDqDx6FOcwLVKi9YNERn8krmMVdLah2I
 JVfO5tbH1Bw/K6xuwBK5ZlSYdbGqsH+ovJp6OKbCI2YOONCbmJKVDpm+zI+6r7Fgm0oC
 qjd57EyLPq33HXmljQMTa/CLj3s9I8sXMnUzt/5hwhbwEOz/CnemRZaXmHh/yVMpMpgd
 EFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=IRQ+zaSd3ReHjOXiu9/D3vzdnQO/55SfB5Lq63C34Cw=;
 b=Nfxt5LetjLXQ/ywUWHCfsZtzALxeqoqxsh/hyMkYcEdeLGNT8Rk7SCYYsdBjdq8Y/1
 6eDpOlYTe5MAMucGUlKLR7hfvVKw+Nxx7c7NxQsIGirt9OicQJwyvZQ09hnJ1go8kaoe
 dAP4t1L+yuecFCxqh9KGSZrOyuTMnEuxqhkO9DNw0WyIq/WQ0tqA0t544dDb5oiME/a3
 m6KPULNkvx3uOLsaH/7Y1R2hjCvKdtU0le8JU5++ATnfGdNtv6byCLD+NPRexxfZ8hnU
 1aM7qejzKxeZM09gADqeCW+v85Zsv9tcOQhlx4ZiMx1h3cYOC4RiirpJQM9NH8KhOLJj
 4+zw==
X-Gm-Message-State: APjAAAWV29gSdNpYp9bRE0WseC3bJr2DSNnTN1Rcl1hSEa2xCxj7TJLP
 KNqmRRbXzIqU1+qYlddH2TlSQQ==
X-Google-Smtp-Source: APXvYqw+1uUkly/dDjshASz3+XGYlyoO7aImSag7UWFWKx+trT3TMfpAEkFVV/hU5Rtls+rr2L5TJw==
X-Received: by 2002:a24:cec3:: with SMTP id v186mr1709309itg.173.1556586856402; 
 Mon, 29 Apr 2019 18:14:16 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 o16sm11366165ioo.45.2019.04.29.18.14.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 18:14:14 -0700 (PDT)
Date: Mon, 29 Apr 2019 18:14:14 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 1/3] clk: analogbits: add Wide-Range PLL library
In-Reply-To: <155656941055.168659.18136739282359756367@swboyd.mtv.corp.google.com>
Message-ID: <alpine.DEB.2.21.9999.1904291506060.7063@viisi.sifive.com>
References: <20190411082733.3736-2-paul.walmsley@sifive.com>
 <155656941055.168659.18136739282359756367@swboyd.mtv.corp.google.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_181417_608358_C19174D2 
X-CRM114-Status: GOOD (  32.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Paul Walmsley <paul@pwsan.com>,
 Wesley Terpstra <wesley@sifive.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Megan Wachs <megan@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 29 Apr 2019, Stephen Boyd wrote:

> Quoting Paul Walmsley (2019-04-11 01:27:32)
> > diff --git a/drivers/clk/analogbits/Kconfig b/drivers/clk/analogbits/Kconfig
> > new file mode 100644
> > index 000000000000..b5fd60c7f136
> > --- /dev/null
> > +++ b/drivers/clk/analogbits/Kconfig
> > @@ -0,0 +1,2 @@
> 
> Add SPDX for this file?

Done.

> > +config CLK_ANALOGBITS_WRPLL_CLN28HPC
> > +       bool
> > diff --git a/drivers/clk/analogbits/Makefile b/drivers/clk/analogbits/Makefile
> > new file mode 100644
> > index 000000000000..bb51a3ae77a7
> > --- /dev/null
> > +++ b/drivers/clk/analogbits/Makefile
> > @@ -0,0 +1 @@
> 
> Add SPDX for this file?

Done.

> > +obj-$(CONFIG_CLK_ANALOGBITS_WRPLL_CLN28HPC)    += wrpll-cln28hpc.o
> > diff --git a/drivers/clk/analogbits/wrpll-cln28hpc.c b/drivers/clk/analogbits/wrpll-cln28hpc.c
> > new file mode 100644
> > index 000000000000..2027872719e1
> > --- /dev/null
> > +++ b/drivers/clk/analogbits/wrpll-cln28hpc.c
> > @@ -0,0 +1,360 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2018-2019 SiFive, Inc.
> > + * Wesley Terpstra
> > + * Paul Walmsley
> > + *
> > + * This library supports configuration parsing and reprogramming of
> > + * the CLN28HPC variant of the Analog Bits Wide Range PLL.  The
> > + * intention is for this library to be reusable for any device that
> > + * integrates this PLL; thus the register structure and programming
> > + * details are expected to be provided by a separate IP block driver.
> > + *
> > + * The bulk of this code is primarily useful for clock configurations
> > + * that must operate at arbitrary rates, as opposed to clock configurations
> > + * that are restricted by software or manufacturer guidance to a small,
> > + * pre-determined set of performance points.
> > + *
> > + * References:
> > + * - Analog Bits "Wide Range PLL Datasheet", version 2015.10.01
> > + * - SiFive FU540-C000 Manual v1p0, Chapter 7 "Clocking and Reset"
> > + *   https://static.dev.sifive.com/FU540-C000-v1.0.pdf
> > + */
> > +
> > +#include <linux/bug.h>
> > +#include <linux/err.h>
> > +#include <linux/log2.h>
> > +#include <linux/math64.h>
> > +#include <linux/clk/analogbits-wrpll-cln28hpc.h>
> > +
> > +/* MIN_INPUT_FREQ: minimum input clock frequency, in Hz (Fref_min) */
> > +#define MIN_INPUT_FREQ                 7000000
> > +
> > +/* MAX_INPUT_FREQ: maximum input clock frequency, in Hz (Fref_max) */
> > +#define MAX_INPUT_FREQ                 600000000
> > +
> > +/* MIN_POST_DIVIDE_REF_FREQ: minimum post-divider reference frequency, in Hz */
> > +#define MIN_POST_DIVR_FREQ             7000000
> > +
> > +/* MAX_POST_DIVIDE_REF_FREQ: maximum post-divider reference frequency, in Hz */
> > +#define MAX_POST_DIVR_FREQ             200000000
> > +
> > +/* MIN_VCO_FREQ: minimum VCO frequency, in Hz (Fvco_min) */
> > +#define MIN_VCO_FREQ                   2400000000UL
> > +
> > +/* MAX_VCO_FREQ: maximum VCO frequency, in Hz (Fvco_max) */
> > +#define MAX_VCO_FREQ                   4800000000ULL
> > +
> > +/* MAX_DIVQ_DIVISOR: maximum output divisor.  Selected by DIVQ = 6 */
> > +#define MAX_DIVQ_DIVISOR               64
> > +
> > +/* MAX_DIVR_DIVISOR: maximum reference divisor.  Selected by DIVR = 63 */
> > +#define MAX_DIVR_DIVISOR               64
> > +
> > +/* MAX_LOCK_US: maximum PLL lock time, in microseconds (tLOCK_max) */
> > +#define MAX_LOCK_US                    70
> > +
> > +/*
> > + * ROUND_SHIFT: number of bits to shift to avoid precision loss in the rounding
> > + *              algorithm
> > + */
> > +#define ROUND_SHIFT                    20
> > +
> > +/*
> > + * Private functions
> > + */
> > +
> > +/**
> > + * __wrpll_calc_filter_range() - determine PLL loop filter bandwidth
> > + * @post_divr_freq: input clock rate after the R divider
> > + *
> > + * Select the value to be presented to the PLL RANGE input signals, based
> > + * on the input clock frequency after the post-R-divider @post_divr_freq.
> > + * This code follows the recommendations in the PLL datasheet for filter
> > + * range selection.
> > + *
> > + * Return: The RANGE value to be presented to the PLL configuration inputs,
> > + *         or -1 upon error.
> > + */
> > +static int __wrpll_calc_filter_range(unsigned long post_divr_freq)
> > +{
> > +       u8 range;
> > +
> > +       if (post_divr_freq < MIN_POST_DIVR_FREQ ||
> > +           post_divr_freq > MAX_POST_DIVR_FREQ) {
> > +               WARN(1, "%s: post-divider reference freq out of range: %lu",
> > +                    __func__, post_divr_freq);
> > +               return -1;
> > +       }
> > +
> > +       if (post_divr_freq < 11000000)
> > +               range = 1;
> > +       else if (post_divr_freq < 18000000)
> > +               range = 2;
> > +       else if (post_divr_freq < 30000000)
> > +               range = 3;
> > +       else if (post_divr_freq < 50000000)
> > +               range = 4;
> > +       else if (post_divr_freq < 80000000)
> > +               range = 5;
> > +       else if (post_divr_freq < 130000000)
> > +               range = 6;
> > +       else
> > +               range = 7;
> 
> Nitpick: This might be easier to read with a switch statement:
> 
> 	switch (post_divr_freq) {
> 	case 0 ... 11000000:
> 		return 1;
> 	case 11000001 ... 18000000:
> 		return 2;
> 	case 18000001 ... 30000000:
> 		return 3;
> 	case 30000001 ... 50000000:
> 		return 4;
> 	case 50000000 ... 80000000:
> 		return 5;
> 	case 80000001 ... 130000000:
> 		return 6;
> 	}
> 
> 	return 7;

To be equivalent to the original code, we'd need to write:

       switch (post_divr_freq) {
       case 0 ... 10999999:
               return 1;
       case 11000000 ... 17999999:
               return 2;
(etc.)

In any case, it's been changed to use the gcc case range operator.

> > +
> > +       return range;
> > +}
> > +
> > +/**
> > + * __wrpll_calc_fbdiv() - return feedback fixed divide value
> > + * @c: ptr to a struct analogbits_wrpll_cfg record to read from
> > + *
> > + * The internal feedback path includes a fixed by-two divider; the
> > + * external feedback path does not.  Return the appropriate divider
> > + * value (2 or 1) depending on whether internal or external feedback
> > + * is enabled.  This code doesn't test for invalid configurations
> > + * (e.g. both or neither of WRPLL_FLAGS_*_FEEDBACK are set); it relies
> > + * on the caller to do so.
> > + *
> > + * Context: Any context.  Caller must protect the memory pointed to by
> > + *          @c from simultaneous modification.
> > + *
> > + * Return: 2 if internal feedback is enabled or 1 if external feedback
> > + *         is enabled.
> > + */
> > +static u8 __wrpll_calc_fbdiv(struct analogbits_wrpll_cfg *c)
> 
> const c?

Done.

> > +{
> > +       return (c->flags & WRPLL_FLAGS_INT_FEEDBACK_MASK) ? 2 : 1;
> > +}
> > +
> > +/**
> > + * __wrpll_calc_divq() - determine DIVQ based on target PLL output clock rate
> > + * @target_rate: target PLL output clock rate
> > + * @vco_rate: pointer to a u64 to store the computed VCO rate into
> > + *
> > + * Determine a reasonable value for the PLL Q post-divider, based on the
> > + * target output rate @target_rate for the PLL.  Along with returning the
> > + * computed Q divider value as the return value, this function stores the
> > + * desired target VCO rate into the variable pointed to by @vco_rate.
> > + *
> > + * Context: Any context.  Caller must protect the memory pointed to by
> > + *          @vco_rate from simultaneous access or modification.
> > + *
> > + * Return: a positive integer DIVQ value to be programmed into the hardware
> > + *         upon success, or 0 upon error (since 0 is an invalid DIVQ value)
> 
> Why are we doing that? Can't we return a normal error code and test for
> it being negative and then consider the number if its greater than 0 to
> be valid?

One motivation here is that this function returns a divisor value.  So a 
zero represents a divide by zero, which is intrinsically an error for a 
function that returns a divisor.  The other motivation is that the current 
return value directly maps to what the hardware expects to see.
 
Let me know if you want me to change this anyway.
  
> > + */
> > +static u8 __wrpll_calc_divq(u32 target_rate, u64 *vco_rate)
> 
> Why does target_rate need to be u32? 

I don't think there's any specific requirement for it to be a u32.

> Can it be unsigned long?

There are two basic principles motivating this:

1. Use the shortest type that fits what will be contained in the variable.
   This increases the chance that static analysis will catch any 
   inadvertent overflows (for example, via gcc -Woverflow).

2. Use fixed-width types for hardware-constrained values that are 
   unrelated to the CPU's native word length.  This is a general design 
   practice, both to avoid confusion as to whether the variable's range 
   does in fact depend on the compiler's implementation, and to avoid API 
   problems if the width does change.  Although this last case doesn't 
   apply here, the general application of this practice avoids problems 
   like the longstanding API problem we've had with clk_set_rate(), which 
   can't take a 64 bit clock rate argument if the kernel is built with a 
   compiler that uses 32 bit longs.

> > +{
> > +       u64 s;
> > +       u8 divq = 0;
> > +
> > +       if (!vco_rate) {
> > +               WARN_ON(1);
> > +               goto wcd_out;
> > +       }
> > +
> > +       s = div_u64(MAX_VCO_FREQ, target_rate);
> > +       if (s <= 1) {
> > +               divq = 1;
> > +               *vco_rate = MAX_VCO_FREQ;
> > +       } else if (s > MAX_DIVQ_DIVISOR) {
> > +               divq = ilog2(MAX_DIVQ_DIVISOR);
> > +               *vco_rate = MIN_VCO_FREQ;
> > +       } else {
> > +               divq = ilog2(s);
> > +               *vco_rate = target_rate << divq;
> > +       }
> > +
> > +wcd_out:
> > +       return divq;
> > +}
> > +
> > +/**
> > + * __wrpll_update_parent_rate() - update PLL data when parent rate changes
> > + * @c: ptr to a struct analogbits_wrpll_cfg record to write PLL data to
> > + * @parent_rate: PLL input refclk rate (pre-R-divider)
> > + *
> > + * Pre-compute some data used by the PLL configuration algorithm when
> > + * the PLL's reference clock rate changes.  The intention is to avoid
> > + * computation when the parent rate remains constant - expected to be
> > + * the common case.
> > + *
> > + * Returns: 0 upon success or -1 if the reference clock rate is out of range.
> > + */
> > +static int __wrpll_update_parent_rate(struct analogbits_wrpll_cfg *c,
> > +                                     unsigned long parent_rate)
> > +{
> > +       u8 max_r_for_parent;
> 
> Why not just unsigned long or unsigned int?

It's just the application of that first principle mentioned above.

> > +
> > +       if (parent_rate > MAX_INPUT_FREQ || parent_rate < MIN_POST_DIVR_FREQ)
> > +               return -1;
> > +
> > +       c->parent_rate = parent_rate;
> > +       max_r_for_parent = div_u64(parent_rate, MIN_POST_DIVR_FREQ);
> > +       c->max_r = min_t(u8, MAX_DIVR_DIVISOR, max_r_for_parent);
> 
> Then this min_t can be min() which is simpler to reason about.

To me they have the same meaning - min_t doesn't seem too obscure:

$ fgrep -Ir min_t\( linux/ | wc -l
3320
$ 

and using it means we don't have to use a type that's needlessly large for 
the range of values that the variable will contain.  However, if getting 
rid of min_t() is more important to you than that principle, it can 
of course be changed.  Do you feel strongly about it?

> > +
> > +       /* Round up */
> > +       c->init_r = div_u64(parent_rate + MAX_POST_DIVR_FREQ - 1,
> > +                           MAX_POST_DIVR_FREQ);
> 
> Don't we have DIV_ROUND_UP_ULL() for this?

Thanks, changed.

> > +
> > +       return 0;
> > +}
> > +
> > +/**
> > + * analogbits_wrpll_configure() - compute PLL configuration for a target rate
> > + * @c: ptr to a struct analogbits_wrpll_cfg record to write into
> > + * @target_rate: target PLL output clock rate (post-Q-divider)
> > + * @parent_rate: PLL input refclk rate (pre-R-divider)
> > + *
> > + * Given a pointer to a PLL context @c, a desired PLL target output
> > + * rate @target_rate, and a reference clock input rate @parent_rate,
> > + * compute the appropriate PLL signal configuration values.  PLL
> 
> I don't know if we need to repeat the arguments and their description
> again in kernel-doc's first sentence. Maybe just "Compute the
> appropriate PLL signal configuration values and store in PLL context
> @c. PLL reprogramming is not ..."

As you wish.

> > + * reprogramming is not glitchless, so the caller should switch any
> > + * downstream logic to a different clock source or clock-gate it
> > + * before presenting these values to the PLL configuration signals.
> > + *
> > + * The caller must pass this function a pre-initialized struct
> > + * analogbits_wrpll_cfg record: either initialized to zero (with the
> > + * exception of the .name and .flags fields) or read from the PLL.
> > + *
> > + * Context: Any context.  Caller must protect the memory pointed to by @c
> > + *          from simultaneous access or modification.
> > + *
> > + * Return: 0 upon success; anything else upon failure.
> > + */
> > +int analogbits_wrpll_configure_for_rate(struct analogbits_wrpll_cfg *c,
> > +                                       u32 target_rate,
> 
> Why does it need to be u32? Why not unsigned long?

Same rationale and commentary as above.

> > +                                       unsigned long parent_rate)
> > +{
> > +       unsigned long ratio;
> > +       u64 target_vco_rate, delta, best_delta, f_pre_div, vco, vco_pre;
> > +       u32 best_f, f, post_divr_freq;
> > +       u8 fbdiv, divq, best_r, r;
> > +
> > +       if (c->flags == 0) {
> > +               WARN(1, "%s called with uninitialized PLL config", __func__);
> > +               return -1;
> 
> Please return linux error codes instead of -1. -EINVAL?

Done.

> > +       }
> > +
> > +       /* Initialize rounding data if it hasn't been initialized already */
> > +       if (parent_rate != c->parent_rate) {
> > +               if (__wrpll_update_parent_rate(c, parent_rate)) {
> > +                       pr_err("%s: PLL input rate is out of range\n",
> > +                              __func__);
> > +                       return -1;
> > +               }
> > +       }
> > +
> > +       c->flags &= ~WRPLL_FLAGS_RESET_MASK;
> > +
> > +       /* Put the PLL into bypass if the user requests the parent clock rate */
> > +       if (target_rate == parent_rate) {
> > +               c->flags |= WRPLL_FLAGS_BYPASS_MASK;
> > +               return 0;
> > +       }
> > +       c->flags &= ~WRPLL_FLAGS_BYPASS_MASK;
> 
> Nitpick: Detach this from the above if so that we can more clearly see
> the return 0 in the if statement.

Done.

> > +
> > +       /* Calculate the Q shift and target VCO rate */
> > +       divq = __wrpll_calc_divq(target_rate, &target_vco_rate);
> > +       if (divq == 0)
> 
> It's more normal style to write this as if (!divq)

As you wish.

> > +               return -1;
> > +       c->divq = divq;
> > +
> > +       /* Precalculate the pre-Q divider target ratio */
> > +       ratio = div64_u64((target_vco_rate << ROUND_SHIFT), parent_rate);
> > +
> > +       fbdiv = __wrpll_calc_fbdiv(c);
> > +       best_r = 0;
> > +       best_f = 0;
> > +       best_delta = MAX_VCO_FREQ;
> > +
> > +       /*
> > +        * Consider all values for R which land within
> > +        * [MIN_POST_DIVR_FREQ, MAX_POST_DIVR_FREQ]; prefer smaller R
> > +        */
> > +       for (r = c->init_r; r <= c->max_r; ++r) {
> > +               /* What is the best F we can pick in this case? */
> 
> Is this a TODO?

No.  I've removed the distraction.

> > +               f_pre_div = ratio * r;
> > +               f = (f_pre_div + (1 << ROUND_SHIFT)) >> ROUND_SHIFT;
> > +               f >>= (fbdiv - 1);
> > +
> > +               post_divr_freq = div_u64(parent_rate, r);
> > +               vco_pre = fbdiv * post_divr_freq;
> > +               vco = vco_pre * f;
> > +
> > +               /* Ensure rounding didn't take us out of range */
> > +               if (vco > target_vco_rate) {
> > +                       --f;
> > +                       vco = vco_pre * f;
> > +               } else if (vco < MIN_VCO_FREQ) {
> > +                       ++f;
> > +                       vco = vco_pre * f;
> > +               }
> > +
> > +               delta = abs(target_rate - vco);
> > +               if (delta < best_delta) {
> > +                       best_delta = delta;
> > +                       best_r = r;
> > +                       best_f = f;
> > +               }
> > +       }
> > +
> > +       c->divr = best_r - 1;
> > +       c->divf = best_f - 1;
> > +
> > +       post_divr_freq = div_u64(parent_rate, best_r);
> > +
> > +       /* Pick the best PLL jitter filter */
> > +       c->range = __wrpll_calc_filter_range(post_divr_freq);
> 
> This can return -1 (really should be an error code). Check the return
> value and then assign?

Done.

> > +
> > +       return 0;
> > +}
> > +
> > +/**
> > + * analogbits_wrpll_calc_output_rate() - calculate the PLL's target output rate
> > + * @c: ptr to a struct analogbits_wrpll_cfg record to read from
> > + * @parent_rate: PLL refclk rate
> > + *
> > + * Given a pointer to the PLL's current input configuration @c and the
> > + * PLL's input reference clock rate @parent_rate (before the R
> > + * pre-divider), calculate the PLL's output clock rate (after the Q
> > + * post-divider)
> > + *
> > + * Context: Any context.  Caller must protect the memory pointed to by @c
> > + *          from simultaneous modification.
> > + *
> > + * Return: the PLL's output clock rate, in Hz.
> > + */
> > +unsigned long analogbits_wrpll_calc_output_rate(struct analogbits_wrpll_cfg *c,
> 
> Can c be const?

Changed.

> > +                                               unsigned long parent_rate)
> > +{
> > +       u8 fbdiv;
> > +       u64 n;
> > +
> > +       WARN(c->flags & WRPLL_FLAGS_EXT_FEEDBACK_MASK,
> > +            "external feedback mode not yet supported");
> 
> Should we return then?

Changed.

> > +
> > +       fbdiv = __wrpll_calc_fbdiv(c);
> > +       n = parent_rate * fbdiv * (c->divf + 1);
> > +       n = div_u64(n, (c->divr + 1));
> 
> Drop useless parenthesis?

Done.

> > +       n >>= c->divq;
> > +
> > +       return n;
> > +}
> > +
> > +/**
> > + * analogbits_wrpll_calc_max_lock_us() - return the time for the PLL to lock
> > + * @c: ptr to a struct analogbits_wrpll_cfg record to read from
> > + *
> > + * Return the minimum amount of time (in microseconds) that the caller
> > + * must wait after reprogramming the PLL to ensure that it is locked
> > + * to the input frequency and stable.  This is likely to depend on the DIVR
> > + * value; this is under discussion with the manufacturer.
> > + *
> > + * Return: the minimum amount of time the caller must wait for the PLL
> > + *         to lock (in microseconds)
> > + */
> > +unsigned int analogbits_wrpll_calc_max_lock_us(struct analogbits_wrpll_cfg *c)
> 
> Can c be const?

Changed.

> > +{
> > +       return MAX_LOCK_US;
> > +}
> > diff --git a/include/linux/clk/analogbits-wrpll-cln28hpc.h b/include/linux/clk/analogbits-wrpll-cln28hpc.h
> > new file mode 100644
> > index 000000000000..f8dc732086fc
> > --- /dev/null
> > +++ b/include/linux/clk/analogbits-wrpll-cln28hpc.h
> > @@ -0,0 +1,96 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (C) 2018 SiFive, Inc.
> > + * Wesley Terpstra
> > + * Paul Walmsley
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2 as
> > + * published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> 
> We don't need this boiler plate now that we have SPDX. Please remove it.

Done.

> > + */
> > +
> > +#ifndef __LINUX_CLK_ANALOGBITS_WRPLL_CLN28HPC_H
> > +#define __LINUX_CLK_ANALOGBITS_WRPLL_CLN28HPC_H
> > +
> > +#include <linux/types.h>
> > +
> > +/* DIVQ_VALUES: number of valid DIVQ values */
> > +#define DIVQ_VALUES                            6
> > +
> > +/*
> > + * Bit definitions for struct analogbits_wrpll_cfg.flags
> > + *
> > + * WRPLL_FLAGS_BYPASS_FLAG: if set, the PLL is either in bypass, or should be
> > + *     programmed to enter bypass
> > + * WRPLL_FLAGS_RESET_FLAG: if set, the PLL is in reset
> > + * WRPLL_FLAGS_INT_FEEDBACK_FLAG: if set, the PLL is configured for internal
> > + *     feedback mode
> > + * WRPLL_FLAGS_EXT_FEEDBACK_FLAG: if set, the PLL is configured for external
> > + *     feedback mode (not yet supported by this driver)
> > + *
> > + * The flags WRPLL_FLAGS_INT_FEEDBACK_FLAG and WRPLL_FLAGS_EXT_FEEDBACK_FLAG are
> 
> These flags aren't defined anywhere though? Instead they're shifts and
> masks below?

Thanks, fixed.

> > + * mutually exclusive.  If both bits are set, or both are zero, the struct
> > + * analogbits_wrpll_cfg record is uninitialized or corrupt.
> > + */
> > +#define WRPLL_FLAGS_BYPASS_SHIFT               0
> > +#define WRPLL_FLAGS_BYPASS_MASK                BIT(WRPLL_FLAGS_BYPASS_SHIFT)
> > +#define WRPLL_FLAGS_RESET_SHIFT                1
> > +#define WRPLL_FLAGS_RESET_MASK         BIT(WRPLL_FLAGS_RESET_SHIFT)
> > +#define WRPLL_FLAGS_INT_FEEDBACK_SHIFT 2
> > +#define WRPLL_FLAGS_INT_FEEDBACK_MASK  BIT(WRPLL_FLAGS_INT_FEEDBACK_SHIFT)
> > +#define WRPLL_FLAGS_EXT_FEEDBACK_SHIFT 3
> > +#define WRPLL_FLAGS_EXT_FEEDBACK_MASK  BIT(WRPLL_FLAGS_EXT_FEEDBACK_SHIFT)
> 
> Maybe you can use FIELD_GET/FIELD_SET?

To me BIT() is clearer and more concise.  However, please let me know if 
the use of the FIELD_*() macros is important to you, and I will change it.

> > +
> > +/**
> > + * struct analogbits_wrpll_cfg - WRPLL configuration values
> > + * @divr: reference divider value (6 bits), as presented to the PLL signals
> > + * @divf: feedback divider value (9 bits), as presented to the PLL signals
> > + * @divq: output divider value (3 bits), as presented to the PLL signals
> > + * @flags: PLL configuration flags.  See above for more information
> > + * @range: PLL loop filter range.  See below for more information
> > + * @output_rate_cache: cached output rates, swept across DIVQ
> > + * @parent_rate: PLL refclk rate for which values are valid
> > + * @max_r: maximum possible R divider value, given @parent_rate
> > + * @init_r: initial R divider value to start the search from
> > + *
> > + * @divr, @divq, @divq, @range represent what the PLL expects to see
> > + * on its input signals.  Thus @divr and @divf are the actual divisors
> > + * minus one.  @divq is a power-of-two divider; for example, 1 =
> > + * divide-by-2 and 6 = divide-by-64.  0 is an invalid @divq value.
> > + *
> > + * When initially passing a struct analogbits_wrpll_cfg record, the
> > + * record should be zero-initialized with the exception of the @flags
> > + * field.  The only flag bits that need to be set are either
> > + * WRPLL_FLAGS_INT_FEEDBACK or WRPLL_FLAGS_EXT_FEEDBACK.
> > + *
> > + * Field names beginning with an underscore should be considered
> > + * private to the wrpll-cln28hpc.c code.
> 
> This sentence can be removed.

Thanks, done.

> > + */
> > +struct analogbits_wrpll_cfg {
> > +       u8 divr;
> > +       u8 divq;
> > +       u8 range;
> > +       u8 flags;
> > +       u16 divf;
> > +/* private: */
> > +       u32 output_rate_cache[DIVQ_VALUES];
> > +       unsigned long parent_rate;
> > +       u8 max_r;
> > +       u8 init_r;
> > +};
> > +
> > +int analogbits_wrpll_configure_for_rate(struct analogbits_wrpll_cfg *c,
> > +                                       u32 target_rate,
> > +                                       unsigned long parent_rate);
> > +
> > +unsigned int analogbits_wrpll_calc_max_lock_us(struct analogbits_wrpll_cfg *c);
> > +
> > +unsigned long analogbits_wrpll_calc_output_rate(struct analogbits_wrpll_cfg *c,
> > +                                               unsigned long parent_rate);
> 
> I wonder if it may be better to remove analogbits_ from all these
> exported functions. I suspect that it wouldn't conflict if it was
> prefixed with wrpll_ and it's shorter this way. Up to you.

I don't have a strong preference either way.  I've changed it to remove 
the analogbits prefix as you request.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
