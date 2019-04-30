Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A98B100B9
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 22:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W40zmzBZyOtfALyDpUDrK+JPe/JuFbyfN25lYXar0cw=; b=fwl8wV2N5sYx8u
	qAVERx9ihLzDVxdcb10QD1z/+GV02fpeLY2Vmuj/odqd7j7UwshYdafxzZpylAxirtAYbYG174jLY
	cMnJXgAMcrAWj/en0k0nSSDWqo1q3oZ2aOQfm7//ISgOc0sGk4lS8WKnDAf7lOo7mjlyOveb/YD/a
	DVrfJR3uTfhwTj+Pd2WyGlRnI/8HqH04M8IvOFAiCBZ+V7/B9xz+E/UuYiOGttbykzU8SF3polYpe
	g/pnmTwcip2zAShMCXVyqM8mxnfmxoFFmV67Fjtu2yzeOBO4jMevsn0VLr/ENRL/Rv1X5A8e24mxj
	m+jB6zzK2J9jHqhzn0fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLZH7-00083V-3d; Tue, 30 Apr 2019 20:22:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZH3-000833-E9
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 20:22:46 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B76632087B;
 Tue, 30 Apr 2019 20:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556655764;
 bh=Kv35gbOtGUQkDfxOeQBvLR2bGLEYXN6clOrVIU0lC1s=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=fePt9ZRbemBNqPP3fkd7BgqIGS4kI8msSLWCybbFG40jToYR6zcCV3e1wmg5VSqXs
 V86nT4D1vCZhFWqangwzpie4ZpOuQGkFeMoLPnKBZ5sHe8+2IWooEtkcrf9nKpuf6U
 KN3PCrCVMr5mu/EEXkgsl02RTv8UWjAFr39PD8yM=
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1904291506060.7063@viisi.sifive.com>
References: <20190411082733.3736-2-paul.walmsley@sifive.com>
 <155656941055.168659.18136739282359756367@swboyd.mtv.corp.google.com>
 <alpine.DEB.2.21.9999.1904291506060.7063@viisi.sifive.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 1/3] clk: analogbits: add Wide-Range PLL library
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <155665576397.168659.15988829291472885637@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Tue, 30 Apr 2019 13:22:43 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_132245_541790_4208DF3F 
X-CRM114-Status: GOOD (  26.90  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Quoting Paul Walmsley (2019-04-29 18:14:14)
> On Mon, 29 Apr 2019, Stephen Boyd wrote:
> > 
> > Nitpick: This might be easier to read with a switch statement:
> > 
> >       switch (post_divr_freq) {
> >       case 0 ... 11000000:
> >               return 1;
> >       case 11000001 ... 18000000:
> >               return 2;
> >       case 18000001 ... 30000000:
> >               return 3;
> >       case 30000001 ... 50000000:
> >               return 4;
> >       case 50000000 ... 80000000:
> >               return 5;
> >       case 80000001 ... 130000000:
> >               return 6;
> >       }
> > 
> >       return 7;
> 
> To be equivalent to the original code, we'd need to write:
> 
>        switch (post_divr_freq) {
>        case 0 ... 10999999:
>                return 1;
>        case 11000000 ... 17999999:
>                return 2;
> (etc.)
> 
> In any case, it's been changed to use the gcc case range operator.

Ah right, thanks!

> > > +{
> > > +       return (c->flags & WRPLL_FLAGS_INT_FEEDBACK_MASK) ? 2 : 1;
> > > +}
> > > +
> > > +/**
> > > + * __wrpll_calc_divq() - determine DIVQ based on target PLL output clock rate
> > > + * @target_rate: target PLL output clock rate
> > > + * @vco_rate: pointer to a u64 to store the computed VCO rate into
> > > + *
> > > + * Determine a reasonable value for the PLL Q post-divider, based on the
> > > + * target output rate @target_rate for the PLL.  Along with returning the
> > > + * computed Q divider value as the return value, this function stores the
> > > + * desired target VCO rate into the variable pointed to by @vco_rate.
> > > + *
> > > + * Context: Any context.  Caller must protect the memory pointed to by
> > > + *          @vco_rate from simultaneous access or modification.
> > > + *
> > > + * Return: a positive integer DIVQ value to be programmed into the hardware
> > > + *         upon success, or 0 upon error (since 0 is an invalid DIVQ value)
> > 
> > Why are we doing that? Can't we return a normal error code and test for
> > it being negative and then consider the number if its greater than 0 to
> > be valid?
> 
> One motivation here is that this function returns a divisor value.  So a 
> zero represents a divide by zero, which is intrinsically an error for a 
> function that returns a divisor.  The other motivation is that the current 
> return value directly maps to what the hardware expects to see.
>  
> Let me know if you want me to change this anyway.

Ok, sounds fine.

>   
> > > + */
> > > +static u8 __wrpll_calc_divq(u32 target_rate, u64 *vco_rate)
> > 
> > Why does target_rate need to be u32? 
> 
> I don't think there's any specific requirement for it to be a u32.

Ok.

> 
> > Can it be unsigned long?
> 
> There are two basic principles motivating this:
> 
> 1. Use the shortest type that fits what will be contained in the variable.
>    This increases the chance that static analysis will catch any 
>    inadvertent overflows (for example, via gcc -Woverflow).
> 
> 2. Use fixed-width types for hardware-constrained values that are 
>    unrelated to the CPU's native word length.  This is a general design 
>    practice, both to avoid confusion as to whether the variable's range 
>    does in fact depend on the compiler's implementation, and to avoid API 
>    problems if the width does change.  Although this last case doesn't 
>    apply here, the general application of this practice avoids problems 
>    like the longstanding API problem we've had with clk_set_rate(), which 
>    can't take a 64 bit clock rate argument if the kernel is built with a 
>    compiler that uses 32 bit longs.
> 

Sure, makes sense.

> 
> > > +
> > > +       if (parent_rate > MAX_INPUT_FREQ || parent_rate < MIN_POST_DIVR_FREQ)
> > > +               return -1;
> > > +
> > > +       c->parent_rate = parent_rate;
> > > +       max_r_for_parent = div_u64(parent_rate, MIN_POST_DIVR_FREQ);
> > > +       c->max_r = min_t(u8, MAX_DIVR_DIVISOR, max_r_for_parent);
> > 
> > Then this min_t can be min() which is simpler to reason about.
> 
> To me they have the same meaning - min_t doesn't seem too obscure:
> 
> $ fgrep -Ir min_t\( linux/ | wc -l
> 3320
> $ 
> 
> and using it means we don't have to use a type that's needlessly large for 
> the range of values that the variable will contain.  However, if getting 
> rid of min_t() is more important to you than that principle, it can 
> of course be changed.  Do you feel strongly about it?

It's not about obscurity. min_t() is an indicator that we have to coerce
type for comparison with casting. It's nice to avoid casts if possible
and use native types for the comparison.  assignment. It's good that you
aren't using min() with a cast though, so this look fine to me and I'm
not going to stay worried about this.

> > > + * mutually exclusive.  If both bits are set, or both are zero, the struct
> > > + * analogbits_wrpll_cfg record is uninitialized or corrupt.
> > > + */
> > > +#define WRPLL_FLAGS_BYPASS_SHIFT               0
> > > +#define WRPLL_FLAGS_BYPASS_MASK                BIT(WRPLL_FLAGS_BYPASS_SHIFT)
> > > +#define WRPLL_FLAGS_RESET_SHIFT                1
> > > +#define WRPLL_FLAGS_RESET_MASK         BIT(WRPLL_FLAGS_RESET_SHIFT)
> > > +#define WRPLL_FLAGS_INT_FEEDBACK_SHIFT 2
> > > +#define WRPLL_FLAGS_INT_FEEDBACK_MASK  BIT(WRPLL_FLAGS_INT_FEEDBACK_SHIFT)
> > > +#define WRPLL_FLAGS_EXT_FEEDBACK_SHIFT 3
> > > +#define WRPLL_FLAGS_EXT_FEEDBACK_MASK  BIT(WRPLL_FLAGS_EXT_FEEDBACK_SHIFT)
> > 
> > Maybe you can use FIELD_GET/FIELD_SET?
> 
> To me BIT() is clearer and more concise.  However, please let me know if 
> the use of the FIELD_*() macros is important to you, and I will change it.

I'm not strong on it so up to you.

> > > + */
> > > +struct analogbits_wrpll_cfg {
> > > +       u8 divr;
> > > +       u8 divq;
> > > +       u8 range;
> > > +       u8 flags;
> > > +       u16 divf;
> > > +/* private: */
> > > +       u32 output_rate_cache[DIVQ_VALUES];
> > > +       unsigned long parent_rate;
> > > +       u8 max_r;
> > > +       u8 init_r;
> > > +};
> > > +
> > > +int analogbits_wrpll_configure_for_rate(struct analogbits_wrpll_cfg *c,
> > > +                                       u32 target_rate,
> > > +                                       unsigned long parent_rate);
> > > +
> > > +unsigned int analogbits_wrpll_calc_max_lock_us(struct analogbits_wrpll_cfg *c);
> > > +
> > > +unsigned long analogbits_wrpll_calc_output_rate(struct analogbits_wrpll_cfg *c,
> > > +                                               unsigned long parent_rate);
> > 
> > I wonder if it may be better to remove analogbits_ from all these
> > exported functions. I suspect that it wouldn't conflict if it was
> > prefixed with wrpll_ and it's shorter this way. Up to you.
> 
> I don't have a strong preference either way.  I've changed it to remove 
> the analogbits prefix as you request.
> 

Alright sounds good!


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
