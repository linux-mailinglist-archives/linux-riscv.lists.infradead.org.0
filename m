Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FEFB43DB
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 00:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=gcdYc7MHzUf2apGgR2h03w57X+xTSLoTZhug4Qo8wxM=; b=ZLS9tSEVmD5JwX/No++20zSKJ
	iaiVubfn70MFIjzvtNx7UW+dR2opOgkHr5QBvJ4Chma3dtEZpgOGUHgfg2IQzfawPO5a38KzDRybh
	2PxeaPlVvt76UtYDmukDneghySylMHHJSnX7Pg5rsAX5YSk0KXHqzBO08o1ub/d5azTsCXjj2M0OX
	ogweSfPlc/fkp0K3B1pAXvFDkjbHNFOt7ibZHArP8UiiW0AcFPkY30qThFoJcZuXxEDv7/il0w7qj
	xczJ46yGMsI5TeQnUqRGqXh4SqZFk5VEx3+0GCl3pfxgzaAuJa6tfLeU9FCg/KbltwW1tPIHDqFmF
	74BhrO2kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9zJK-0002Id-OZ; Mon, 16 Sep 2019 22:17:30 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9zJG-0002I3-LE
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 22:17:28 +0000
Received: by mail-pl1-f194.google.com with SMTP id w10so522552plq.5
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 15:17:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=WswZLnUEYCGfpfuQ51663IL0Rbi4vuXzWm78VorCSEY=;
 b=FxklSuDDzXjWyLXsBa45TjwTvab4wk7IM+Ovljf4Biw4etRgG1+2xd6Ha/LSv9t9uo
 NDb6TR/x8bpRMLG+Ua+8azxVMB22q05TE3tTFRn67S3HzUR60utctICIQytMYXE3o7kd
 UNFr01B1wQS6ebu9bCbm8nb3T+tWg76NTwBwaFv9dLbdDN16p30Ucba9I93JdG6OtxXX
 bQcwVky2DKAftAjN/Ru2mG2UOYB1nIakwaZNjDy2wmgFMu1pRapFG1rE1FIzs67PRVrt
 3tzquBj3vSiP+XITrI+exspW/JpNSF8dQB8U8u4GAxNkgJ8O+aAR4MMepWU+3YKDcosF
 YXUQ==
X-Gm-Message-State: APjAAAU/+558hP/1x8896JbwE9DXV5lGyv/dkoSDSZEL04LwNSvJ3T3D
 Zhwclk0SbgPXktKu6ol+WV8Aaw==
X-Google-Smtp-Source: APXvYqxWxOB9rd6IHEXpksPhYXEmRsptRYL8TloZUWLAfq9jxHLKmjFY1le5Bmt/tHHZLxTtxHsvIw==
X-Received: by 2002:a17:902:820f:: with SMTP id
 x15mr429596pln.130.1568672245046; 
 Mon, 16 Sep 2019 15:17:25 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 22sm92469pfo.131.2019.09.16.15.17.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 15:17:24 -0700 (PDT)
Date: Mon, 16 Sep 2019 15:17:24 -0700 (PDT)
X-Google-Original-Date: Mon, 16 Sep 2019 15:15:22 PDT (-0700)
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
In-Reply-To: <20190916223323.07664bc2@why>
From: Palmer Dabbelt <palmer@sifive.com>
To: maz@kernel.org
Message-ID: <mhng-f418eee3-0240-4c67-8cda-b2c14f9a9df0@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_151726_708014_64A82D17 
X-CRM114-Status: GOOD (  28.24  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jason@lakedaemon.net, David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Darius Rad <darius@bluespec.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019 14:33:23 PDT (-0700), maz@kernel.org wrote:
> On Mon, 16 Sep 2019 13:51:58 -0700 (PDT)
> Palmer Dabbelt <palmer@sifive.com> wrote:
>
>> On Mon, 16 Sep 2019 12:04:56 PDT (-0700), Darius Rad wrote:
>> > On 9/15/19 2:20 PM, Marc Zyngier wrote:
>> >> On Sun, 15 Sep 2019 18:31:33 +0100,
>> >> Palmer Dabbelt <palmer@sifive.com> wrote:
>> >>
>> >> Hi Palmer,
>> >>
>> >>>
>> >>> On Sun, 15 Sep 2019 07:24:20 PDT (-0700), maz@kernel.org wrote:
>> >>>> On Thu, 12 Sep 2019 22:40:34 +0100,
>> >>>> Darius Rad <darius@bluespec.com> wrote:
>> >>>>
>> >>>> Hi Darius,
>> >>>>
>> >>>>>
>> >>>>> As per the existing comment, irq_mask and irq_unmask do not need
>> >>>>> to do anything for the PLIC.  However, the functions must exist
>> >>>>> (the pointers cannot be NULL) as they are not optional, based on
>> >>>>> the documentation (Documentation/core-api/genericirq.rst) as well
>> >>>>> as existing usage (e.g., include/linux/irqchip/chained_irq.h).
>> >>>>>
>> >>>>> Signed-off-by: Darius Rad <darius@bluespec.com>
>> >>>>> ---
>> >>>>>  drivers/irqchip/irq-sifive-plic.c | 13 +++++++++----
>> >>>>>  1 file changed, 9 insertions(+), 4 deletions(-)
>> >>>>>
>> >>>>> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>> >>>>> index cf755964f2f8..52d5169f924f 100644
>> >>>>> --- a/drivers/irqchip/irq-sifive-plic.c
>> >>>>> +++ b/drivers/irqchip/irq-sifive-plic.c
>> >>>>> @@ -111,6 +111,13 @@ static void plic_irq_disable(struct irq_data *d)
>> >>>>>  	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
>> >>>>>  }
>> >>>>>  +/*
>> >>>>> + * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>> >>>>> + * by reading claim and "unmasked" when writing it back.
>> >>>>> + */
>> >>>>> +static void plic_irq_mask(struct irq_data *d) { }
>> >>>>> +static void plic_irq_unmask(struct irq_data *d) { }
>> >>>>
>> >>>> This outlines a bigger issue. If your irqchip doesn't require
>> >>>> mask/unmask, you're probably not using the right interrupt
>> >>>> flow. Looking at the code, I see you're using handle_simple_irq, which
>> >>>> is almost universally wrong.
>> >>>>
>> >>>> As per the description above, these interrupts should be using the
>> >>>> fasteoi flow, which is designed for this exact behaviour (the
>> >>>> interrupt controller knows which interrupt is in flight and doesn't
>> >>>> require SW to do anything bar signalling the EOI).
>> >>>>
>> >>>> Another thing is that mask/unmask tends to be a requirement, while
>> >>>> enable/disable tends to be optional. There is no hard line here, but
>> >>>> the expectations are that:
>> >>>>
>> >>>> (a) A disabled line can drop interrupts
>> >>>> (b) A masked line cannot drop interrupts
>> >>>>
>> >>>> Depending what the PLIC architecture mandates, you'll need to
>> >>>> implement one and/or the other. Having just (a) is indicative of a HW
>> >>>> bug, and I'm not assuming that this is the case. (b) only is pretty
>> >>>> common, and (a)+(b) has a few adepts. My bet is that it requires (b)
>> >>>> only.
>> >>>>
>> >>>>> +
>> >>>>>  #ifdef CONFIG_SMP
>> >>>>>  static int plic_set_affinity(struct irq_data *d,
>> >>>>>  			     const struct cpumask *mask_val, bool force)
>> >>>>> @@ -138,12 +145,10 @@ static int plic_set_affinity(struct irq_data *d,
>> >>>>>   static struct irq_chip plic_chip = {
>> >>>>>  	.name		= "SiFive PLIC",
>> >>>>> -	/*
>> >>>>> -	 * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>> >>>>> -	 * by reading claim and "unmasked" when writing it back.
>> >>>>> -	 */
>> >>>>>  	.irq_enable	= plic_irq_enable,
>> >>>>>  	.irq_disable	= plic_irq_disable,
>> >>>>> +	.irq_mask	= plic_irq_mask,
>> >>>>> +	.irq_unmask	= plic_irq_unmask,
>> >>>>>  #ifdef CONFIG_SMP
>> >>>>>  	.irq_set_affinity = plic_set_affinity,
>> >>>>>  #endif
>> >>>>
>> >>>> Can you give the following patch a go? It brings the irq flow in line
>> >>>> with what the HW can do. It is of course fully untested (not even
>> >>>> compile tested...).
>> >>>>
>> >>>> Thanks,
>> >>>>
>> >>>> 	M.
>> >>>>
>> >>>> From c0ce33a992ec18f5d3bac7f70de62b1ba2b42090 Mon Sep 17 00:00:00 2001
>> >>>> From: Marc Zyngier <maz@kernel.org>
>> >>>> Date: Sun, 15 Sep 2019 15:17:45 +0100
>> >>>> Subject: [PATCH] irqchip/sifive-plic: Switch to fasteoi flow
>> >>>>
>> >>>> The SiFive PLIC interrupt controller seems to have all the HW
>> >>>> features to support the fasteoi flow, but the driver seems to be
>> >>>> stuck in a distant past. Bring it into the 21st century.
>> >>>
>> >>> Thanks.  We'd gotten these comments during the review process but
>> >>> nobody had gotten the time to actually fix the issues.
>> >>
>> >> No worries. The IRQ subsystem is an acquired taste... ;-)
>> >>
>> >>>>
>> >>>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> >>>> ---
>> >>>>  drivers/irqchip/irq-sifive-plic.c | 29 +++++++++++++++--------------
>> >>>>  1 file changed, 15 insertions(+), 14 deletions(-)
>> >>>>
>> >>>> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>> >>>> index cf755964f2f8..8fea384d392b 100644
>> >>>> --- a/drivers/irqchip/irq-sifive-plic.c
>> >>>> +++ b/drivers/irqchip/irq-sifive-plic.c
>> >>>> @@ -97,7 +97,7 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
>> >>>>  	}
>> >>>>  }
>> >>>>  -static void plic_irq_enable(struct irq_data *d)
>> >>>> +static void plic_irq_mask(struct irq_data *d)
>> >>
>> >> Of course, this is wrong. The perks of trying to do something at the
>> >> last minute while boarding an airplane. Don't do that.
>> >>
>> >> This should of course read "plic_irq_unmask"...
>> >>
>> >>>>  {
>> >>>>  	unsigned int cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
>> >>>>  					   cpu_online_mask);
>> >>>> @@ -106,7 +106,7 @@ static void plic_irq_enable(struct irq_data *d)
>> >>>>  	plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
>> >>>>  }
>> >>>>  -static void plic_irq_disable(struct irq_data *d)
>> >>>> +static void plic_irq_unmask(struct irq_data *d)
>> >>
>> >> ... and this should be "plic_irq_mask".
>> >>
>> >> [...]
>> >>
>> >>> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
>> >>> Tested-by: Palmer Dabbelt <palmer@sifive.com> (QEMU Boot)
>> >>
>> >> Huhuh... It may be that QEMU doesn't implement the full-fat PLIC, as
>> >> the above bug should have kept the IRQ lines masked.
>> >>
>> >>> We should test them on the hardware, but I don't have any with me
>> >>> right now.  David's probably in the best spot to do this, as he's got
>> >>> a setup that does all the weird interrupt sources (ie, PCIe).
>> >>>
>> >>> David: do you mind testing this?  I've put the patch here:
>> >>>
>> >>>    ssh://gitolite.kernel.org/pub/scm/linux/kernel/git/palmer/linux.git
>> >>>    -b plic-fasteoi
>> >>
>> >> I've pushed out a branch with the fixed patch:
>> >>
>> >> git://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git irq/plic-fasteoi
>> >>
>> >
>> > That patch works for me on real-ish hardware.  I tried on two FPGA
>> > systems that have different PLIC implementations.  Both include
>> > a PCIe root port (and associated interrupt source).  So for
>> > whatever it's worth:
>> >
>> > Tested-by: Darius Rad <darius@bluespec.com>
>>
>> Awesome, thanks.  Would it be OK to put a "(on two hardware PLIC
>> implementations)" after that, just so we're clear as to who tested
>> what?
>
> Sure, no problem.
>
>> Assuming one of yours wasn't a SiFive PLIC then it'd be great if
>> David could still give this a whack, but I don't think it strictly
>> needs to block merging the patch.  I've included the right David this
>> time, with any luck that will be more fruitful :)
>
> Well, we still have time before -rc1. Once David gets a chance to test
> it, I'll apply it. Additional question: do you want this backported to
> -stable? If so, how far?

Generally I've just been CCing stable on bug fixes and letting the automation 
handle it.  4.19 was the first version with a PLIC driver, and that was pretty 
broken so this should be deep down in the noise for anyone who's trying to use 
that -- and I doubt anyone is trying to do so.

>
> Thanks,
>
> 	M.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
