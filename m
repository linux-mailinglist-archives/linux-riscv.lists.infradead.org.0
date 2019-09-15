Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35B4B32B1
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 01:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=GmVjBKpBMI2RnrALR3UNthZik5vvRnCvTsnx6ir1fRc=; b=sYBQwJy3g/3GqRc24ITjkypXV
	VNhxyZxce1dmmCQZhPJLeday4CZjj7FSTAdlkgwwQvWci2PpbD9FMhhapj5n7/K1/9c+zIdQZxeoC
	2joJViU3o1n0oae0bmqRx0yX7/D2z94BsVURfkJl+8fiHW2dp2Ht2UxPrz06HPYzd0zTiag+ujecA
	RVOSgU/tblH7AvBaQ1AUy9EymYn5KxFmXSK0MiA+IjW+Fjes3hJdx2iX6xdme1KgbLfT7mLy4Qk/z
	UubRh+DRykpKUuC16O3V1AUxKBdTt0hClzYrQm2fkhLCdYGuzAwLTyQGGeyGyMIAdjBPpxd5aUtzE
	eVGH10Iug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9eEF-0006Fq-Rv; Sun, 15 Sep 2019 23:46:51 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9eEB-0006FR-PZ
 for linux-riscv@lists.infradead.org; Sun, 15 Sep 2019 23:46:49 +0000
Received: by mail-io1-f67.google.com with SMTP id b19so14652016iob.4
 for <linux-riscv@lists.infradead.org>; Sun, 15 Sep 2019 16:46:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=xyRWB+l7PZydI8LLr4Hd5cj+Mp8bWhYxguWgd/GvMXs=;
 b=nhZUuzxjGEh/IAFHbWIk2+XP4BAytJtqamQbL4mFOzEtb8s1Fxw9ZgEoE9gigK433d
 OXMqOTYAtHBKi/bwGtnFaNAI4cjdxFS0Q4puY2SdQcUZh543/wYLP2s7vIXEhtPhm/Qx
 YpaiDLCERvp29TMczYRkHQ1/ZTsrCG2EfWHNqwPaPTFms6AnCV4E5TADcTGqNmrrsTQD
 S8JNbPwqY4BC4WEYXVQoy0lNbJ96L7xWCfDo8wdz7RrE95Pu5m7FYTkk6sLfSxksatVP
 u75RStbCrqhBkQQloKnnc+gQ+odzNRVi2qKEldV24UsZ8eO1p4rmkyjprQbktSiqYtpk
 bPRw==
X-Gm-Message-State: APjAAAVaYa6f7OLF1N7oy6APqcZTzVM4lxXeqM41f9kT9bM9GP4qzNvH
 LkzPU+KYPjuXrAbxmGZ7VjPTTQ==
X-Google-Smtp-Source: APXvYqxAFk+kS/PRpqnZYCVrW9uD4CZQEWp8b/8Q2oi1bF+TPD8/wVKMzOgDa0s86/KIcqn201w/PQ==
X-Received: by 2002:a6b:acc5:: with SMTP id
 v188mr13732192ioe.268.1568591205136; 
 Sun, 15 Sep 2019 16:46:45 -0700 (PDT)
Received: from localhost ([199.167.24.142])
 by smtp.gmail.com with ESMTPSA id m67sm49429512iof.21.2019.09.15.16.46.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 16:46:44 -0700 (PDT)
Date: Sun, 15 Sep 2019 16:46:44 -0700 (PDT)
X-Google-Original-Date: Sun, 15 Sep 2019 16:36:37 PDT (-0700)
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
In-Reply-To: <861rwhs9on.wl-maz@kernel.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: maz@kernel.org, Alistair Francis <Alistair.Francis@wdc.com>
Message-ID: <mhng-828163d7-e51f-4dba-89f3-316343f20dca@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_164647_834240_AD1A5BD8 
X-CRM114-Status: GOOD (  30.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: jason@lakedaemon.net, Darius Rad <darius@bluespec.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, David Johnson <davidj@sifive.com>,
 tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 15 Sep 2019 11:20:40 PDT (-0700), maz@kernel.org wrote:
> On Sun, 15 Sep 2019 18:31:33 +0100,
> Palmer Dabbelt <palmer@sifive.com> wrote:
>
> Hi Palmer,
>
>>
>> On Sun, 15 Sep 2019 07:24:20 PDT (-0700), maz@kernel.org wrote:
>> > On Thu, 12 Sep 2019 22:40:34 +0100,
>> > Darius Rad <darius@bluespec.com> wrote:
>> >
>> > Hi Darius,
>> >
>> >>
>> >> As per the existing comment, irq_mask and irq_unmask do not need
>> >> to do anything for the PLIC.  However, the functions must exist
>> >> (the pointers cannot be NULL) as they are not optional, based on
>> >> the documentation (Documentation/core-api/genericirq.rst) as well
>> >> as existing usage (e.g., include/linux/irqchip/chained_irq.h).
>> >>
>> >> Signed-off-by: Darius Rad <darius@bluespec.com>
>> >> ---
>> >>  drivers/irqchip/irq-sifive-plic.c | 13 +++++++++----
>> >>  1 file changed, 9 insertions(+), 4 deletions(-)
>> >>
>> >> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>> >> index cf755964f2f8..52d5169f924f 100644
>> >> --- a/drivers/irqchip/irq-sifive-plic.c
>> >> +++ b/drivers/irqchip/irq-sifive-plic.c
>> >> @@ -111,6 +111,13 @@ static void plic_irq_disable(struct irq_data *d)
>> >>  	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
>> >>  }
>> >>  +/*
>> >> + * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>> >> + * by reading claim and "unmasked" when writing it back.
>> >> + */
>> >> +static void plic_irq_mask(struct irq_data *d) { }
>> >> +static void plic_irq_unmask(struct irq_data *d) { }
>> >
>> > This outlines a bigger issue. If your irqchip doesn't require
>> > mask/unmask, you're probably not using the right interrupt
>> > flow. Looking at the code, I see you're using handle_simple_irq, which
>> > is almost universally wrong.
>> >
>> > As per the description above, these interrupts should be using the
>> > fasteoi flow, which is designed for this exact behaviour (the
>> > interrupt controller knows which interrupt is in flight and doesn't
>> > require SW to do anything bar signalling the EOI).
>> >
>> > Another thing is that mask/unmask tends to be a requirement, while
>> > enable/disable tends to be optional. There is no hard line here, but
>> > the expectations are that:
>> >
>> > (a) A disabled line can drop interrupts
>> > (b) A masked line cannot drop interrupts
>> >
>> > Depending what the PLIC architecture mandates, you'll need to
>> > implement one and/or the other. Having just (a) is indicative of a HW
>> > bug, and I'm not assuming that this is the case. (b) only is pretty
>> > common, and (a)+(b) has a few adepts. My bet is that it requires (b)
>> > only.
>> >
>> >> +
>> >>  #ifdef CONFIG_SMP
>> >>  static int plic_set_affinity(struct irq_data *d,
>> >>  			     const struct cpumask *mask_val, bool force)
>> >> @@ -138,12 +145,10 @@ static int plic_set_affinity(struct irq_data *d,
>> >>   static struct irq_chip plic_chip = {
>> >>  	.name		= "SiFive PLIC",
>> >> -	/*
>> >> -	 * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>> >> -	 * by reading claim and "unmasked" when writing it back.
>> >> -	 */
>> >>  	.irq_enable	= plic_irq_enable,
>> >>  	.irq_disable	= plic_irq_disable,
>> >> +	.irq_mask	= plic_irq_mask,
>> >> +	.irq_unmask	= plic_irq_unmask,
>> >>  #ifdef CONFIG_SMP
>> >>  	.irq_set_affinity = plic_set_affinity,
>> >>  #endif
>> >
>> > Can you give the following patch a go? It brings the irq flow in line
>> > with what the HW can do. It is of course fully untested (not even
>> > compile tested...).
>> >
>> > Thanks,
>> >
>> > 	M.
>> >
>> > From c0ce33a992ec18f5d3bac7f70de62b1ba2b42090 Mon Sep 17 00:00:00 2001
>> > From: Marc Zyngier <maz@kernel.org>
>> > Date: Sun, 15 Sep 2019 15:17:45 +0100
>> > Subject: [PATCH] irqchip/sifive-plic: Switch to fasteoi flow
>> >
>> > The SiFive PLIC interrupt controller seems to have all the HW
>> > features to support the fasteoi flow, but the driver seems to be
>> > stuck in a distant past. Bring it into the 21st century.
>>
>> Thanks.  We'd gotten these comments during the review process but
>> nobody had gotten the time to actually fix the issues.
>
> No worries. The IRQ subsystem is an acquired taste... ;-)
>
>> >
>> > Signed-off-by: Marc Zyngier <maz@kernel.org>
>> > ---
>> >  drivers/irqchip/irq-sifive-plic.c | 29 +++++++++++++++--------------
>> >  1 file changed, 15 insertions(+), 14 deletions(-)
>> >
>> > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>> > index cf755964f2f8..8fea384d392b 100644
>> > --- a/drivers/irqchip/irq-sifive-plic.c
>> > +++ b/drivers/irqchip/irq-sifive-plic.c
>> > @@ -97,7 +97,7 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
>> >  	}
>> >  }
>> >  -static void plic_irq_enable(struct irq_data *d)
>> > +static void plic_irq_mask(struct irq_data *d)
>
> Of course, this is wrong. The perks of trying to do something at the
> last minute while boarding an airplane. Don't do that.
>
> This should of course read "plic_irq_unmask"...
>
>> >  {
>> >  	unsigned int cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
>> >  					   cpu_online_mask);
>> > @@ -106,7 +106,7 @@ static void plic_irq_enable(struct irq_data *d)
>> >  	plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
>> >  }
>> >  -static void plic_irq_disable(struct irq_data *d)
>> > +static void plic_irq_unmask(struct irq_data *d)
>
> ... and this should be "plic_irq_mask".
>
> [...]
>
>> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
>> Tested-by: Palmer Dabbelt <palmer@sifive.com> (QEMU Boot)
>
> Huhuh... It may be that QEMU doesn't implement the full-fat PLIC, as
> the above bug should have kept the IRQ lines masked.

Yep, looks like the PLIC implementation in QEMU is nonsense.  That needs to be 
rewritten, and this needs to be tested on hardware.

>> We should test them on the hardware, but I don't have any with me
>> right now.  David's probably in the best spot to do this, as he's got
>> a setup that does all the weird interrupt sources (ie, PCIe).
>>
>> David: do you mind testing this?  I've put the patch here:
>>
>>    ssh://gitolite.kernel.org/pub/scm/linux/kernel/git/palmer/linux.git
>>    -b plic-fasteoi
>
> I've pushed out a branch with the fixed patch:
>
> git://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git irq/plic-fasteoi
>
> Thanks,
>
> 	M.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
