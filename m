Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FA4B4279
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 22:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=uhXHpiNfUudQ2XASzY45OGKwSsVVKQOrmzizSDuO8jY=; b=PtzchrsNU1FT84z2YAWTZsrAp
	8vWQvVU8JRTKDUeQVm/8tZ5SQwBzyG7hugLboWKrRx+QnuqjYOi6PakiRa7YMKosE4EqreRCv3jNC
	Dc+QK498aRyL0R5/RZmDae45EknHjDhrLmERzlLVOrQT5uPtGwaXq3vcxj+8clq1OUh7qVc1yl9h2
	JgZazWINfyx2UpHh1WDcejjDjpYKCjIB/HqX0ZlcRonIhh0PegUoad5GB+vQWQMRli9SySR0Jq8PC
	mNDeLzUzPMA7TU+kojWQE95CcKC6nDc6v1og4+Y0TOUjVD5c4oR01Vumm0Ahy6XiZlJo/wO4ZfQ0w
	iYcYVTFMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9xyd-0008Ep-SV; Mon, 16 Sep 2019 20:52:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9xya-0008E4-1B
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 20:52:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id q7so640290pfh.8
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 13:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=QXDKOrZfphwrru5t9ZJj4hfad8qGZpQELCsOo06eR30=;
 b=jaG0/+ILazGusEsO0D0crnmEcNVuVWc2LzfaDAD13sjnEcpi6phjg5hSm4qDNWUz6b
 edxrGGd+W+J+JTtHkR7QOX2tD8CLok5MBKPb8GQl/mVVy9RUsN5qJoX7mcN0+4RpBQ/W
 KYI1Xs0CtdSIfQZioiP6SKlNsQJ0Z1K7YFg6ZG/Bptmt3x7BHZh666GMc+HUehA8ayHP
 yHo73cSZdIgPQ4pSRX5tQguxoO8GvXVjUgSnQtPhm0kB99W2F8o1THJycXLv5MA1g/U7
 9PDV/Afs7ICRdOwxWr8UsSe7lythEJ3SYNF24b1idKWrdG9rpjNPohcNHFhEPbGAHEG6
 9fYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=QXDKOrZfphwrru5t9ZJj4hfad8qGZpQELCsOo06eR30=;
 b=e91Li2iwsWWCAF4vCKkP0Npx7/6TEZUCupESHj9WDEl+EoIHMEiggBukY+Mj5fgjvC
 On9pVLq3lHElMqu12WVOhedW016lEbuaK0GMIGaSIMQL666aCIxHk3PZ31ql431tKAPH
 UUPUO+stX6/HOEJ0n7dxDV6sGMeJU+Q3CxkNAYNico6r/jg1gPtkj52oq2kKPE/BzKhB
 GvEkZxlD5ttU/7Pi3QqFWnND0OSzUuG6QkBXRWRwJeX38BfTVEluIDN7LOyb9v94tw+3
 Kx2NUjv4InECxAojvq2IEf8ft5Wk/yTxtq3basYSkbs/XPnEF05znzc9BeGQl3WDiAud
 Ms4A==
X-Gm-Message-State: APjAAAWuwOiYsa94gRKOQhL/G7uoXhxmoLbnAIZCSxiGHKTXU2Ehj0Qu
 A32x8PnWv/m4KEl/TyPCsJa2TQ==
X-Google-Smtp-Source: APXvYqyrlQdOm/i9v7VAXh0c7Bk81buHuIxmi05+WqvxhTaOnchSP26xUeztMKdXys+6YfETei9QAQ==
X-Received: by 2002:aa7:9508:: with SMTP id b8mr358188pfp.36.1568667119216;
 Mon, 16 Sep 2019 13:51:59 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id h2sm3530360pfq.108.2019.09.16.13.51.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 13:51:58 -0700 (PDT)
Date: Mon, 16 Sep 2019 13:51:58 -0700 (PDT)
X-Google-Original-Date: Mon, 16 Sep 2019 13:42:30 PDT (-0700)
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
In-Reply-To: <3c0eb4e9-ee21-d07b-ad16-735b7dc06051@bluespec.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Darius Rad <darius@bluespec.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>
Message-ID: <mhng-df6c7aad-d4fd-4c44-96c8-bf63465e0c97@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_135200_090389_E57B326D 
X-CRM114-Status: GOOD (  22.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jason@lakedaemon.net, maz@kernel.org, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019 12:04:56 PDT (-0700), Darius Rad wrote:
> On 9/15/19 2:20 PM, Marc Zyngier wrote:
>> On Sun, 15 Sep 2019 18:31:33 +0100,
>> Palmer Dabbelt <palmer@sifive.com> wrote:
>>
>> Hi Palmer,
>>
>>>
>>> On Sun, 15 Sep 2019 07:24:20 PDT (-0700), maz@kernel.org wrote:
>>>> On Thu, 12 Sep 2019 22:40:34 +0100,
>>>> Darius Rad <darius@bluespec.com> wrote:
>>>>
>>>> Hi Darius,
>>>>
>>>>>
>>>>> As per the existing comment, irq_mask and irq_unmask do not need
>>>>> to do anything for the PLIC.  However, the functions must exist
>>>>> (the pointers cannot be NULL) as they are not optional, based on
>>>>> the documentation (Documentation/core-api/genericirq.rst) as well
>>>>> as existing usage (e.g., include/linux/irqchip/chained_irq.h).
>>>>>
>>>>> Signed-off-by: Darius Rad <darius@bluespec.com>
>>>>> ---
>>>>>  drivers/irqchip/irq-sifive-plic.c | 13 +++++++++----
>>>>>  1 file changed, 9 insertions(+), 4 deletions(-)
>>>>>
>>>>> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>>>>> index cf755964f2f8..52d5169f924f 100644
>>>>> --- a/drivers/irqchip/irq-sifive-plic.c
>>>>> +++ b/drivers/irqchip/irq-sifive-plic.c
>>>>> @@ -111,6 +111,13 @@ static void plic_irq_disable(struct irq_data *d)
>>>>>  	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
>>>>>  }
>>>>>  +/*
>>>>> + * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>>>>> + * by reading claim and "unmasked" when writing it back.
>>>>> + */
>>>>> +static void plic_irq_mask(struct irq_data *d) { }
>>>>> +static void plic_irq_unmask(struct irq_data *d) { }
>>>>
>>>> This outlines a bigger issue. If your irqchip doesn't require
>>>> mask/unmask, you're probably not using the right interrupt
>>>> flow. Looking at the code, I see you're using handle_simple_irq, which
>>>> is almost universally wrong.
>>>>
>>>> As per the description above, these interrupts should be using the
>>>> fasteoi flow, which is designed for this exact behaviour (the
>>>> interrupt controller knows which interrupt is in flight and doesn't
>>>> require SW to do anything bar signalling the EOI).
>>>>
>>>> Another thing is that mask/unmask tends to be a requirement, while
>>>> enable/disable tends to be optional. There is no hard line here, but
>>>> the expectations are that:
>>>>
>>>> (a) A disabled line can drop interrupts
>>>> (b) A masked line cannot drop interrupts
>>>>
>>>> Depending what the PLIC architecture mandates, you'll need to
>>>> implement one and/or the other. Having just (a) is indicative of a HW
>>>> bug, and I'm not assuming that this is the case. (b) only is pretty
>>>> common, and (a)+(b) has a few adepts. My bet is that it requires (b)
>>>> only.
>>>>
>>>>> +
>>>>>  #ifdef CONFIG_SMP
>>>>>  static int plic_set_affinity(struct irq_data *d,
>>>>>  			     const struct cpumask *mask_val, bool force)
>>>>> @@ -138,12 +145,10 @@ static int plic_set_affinity(struct irq_data *d,
>>>>>   static struct irq_chip plic_chip = {
>>>>>  	.name		= "SiFive PLIC",
>>>>> -	/*
>>>>> -	 * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>>>>> -	 * by reading claim and "unmasked" when writing it back.
>>>>> -	 */
>>>>>  	.irq_enable	= plic_irq_enable,
>>>>>  	.irq_disable	= plic_irq_disable,
>>>>> +	.irq_mask	= plic_irq_mask,
>>>>> +	.irq_unmask	= plic_irq_unmask,
>>>>>  #ifdef CONFIG_SMP
>>>>>  	.irq_set_affinity = plic_set_affinity,
>>>>>  #endif
>>>>
>>>> Can you give the following patch a go? It brings the irq flow in line
>>>> with what the HW can do. It is of course fully untested (not even
>>>> compile tested...).
>>>>
>>>> Thanks,
>>>>
>>>> 	M.
>>>>
>>>> From c0ce33a992ec18f5d3bac7f70de62b1ba2b42090 Mon Sep 17 00:00:00 2001
>>>> From: Marc Zyngier <maz@kernel.org>
>>>> Date: Sun, 15 Sep 2019 15:17:45 +0100
>>>> Subject: [PATCH] irqchip/sifive-plic: Switch to fasteoi flow
>>>>
>>>> The SiFive PLIC interrupt controller seems to have all the HW
>>>> features to support the fasteoi flow, but the driver seems to be
>>>> stuck in a distant past. Bring it into the 21st century.
>>>
>>> Thanks.  We'd gotten these comments during the review process but
>>> nobody had gotten the time to actually fix the issues.
>>
>> No worries. The IRQ subsystem is an acquired taste... ;-)
>>
>>>>
>>>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>>>> ---
>>>>  drivers/irqchip/irq-sifive-plic.c | 29 +++++++++++++++--------------
>>>>  1 file changed, 15 insertions(+), 14 deletions(-)
>>>>
>>>> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>>>> index cf755964f2f8..8fea384d392b 100644
>>>> --- a/drivers/irqchip/irq-sifive-plic.c
>>>> +++ b/drivers/irqchip/irq-sifive-plic.c
>>>> @@ -97,7 +97,7 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
>>>>  	}
>>>>  }
>>>>  -static void plic_irq_enable(struct irq_data *d)
>>>> +static void plic_irq_mask(struct irq_data *d)
>>
>> Of course, this is wrong. The perks of trying to do something at the
>> last minute while boarding an airplane. Don't do that.
>>
>> This should of course read "plic_irq_unmask"...
>>
>>>>  {
>>>>  	unsigned int cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
>>>>  					   cpu_online_mask);
>>>> @@ -106,7 +106,7 @@ static void plic_irq_enable(struct irq_data *d)
>>>>  	plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
>>>>  }
>>>>  -static void plic_irq_disable(struct irq_data *d)
>>>> +static void plic_irq_unmask(struct irq_data *d)
>>
>> ... and this should be "plic_irq_mask".
>>
>> [...]
>>
>>> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
>>> Tested-by: Palmer Dabbelt <palmer@sifive.com> (QEMU Boot)
>>
>> Huhuh... It may be that QEMU doesn't implement the full-fat PLIC, as
>> the above bug should have kept the IRQ lines masked.
>>
>>> We should test them on the hardware, but I don't have any with me
>>> right now.  David's probably in the best spot to do this, as he's got
>>> a setup that does all the weird interrupt sources (ie, PCIe).
>>>
>>> David: do you mind testing this?  I've put the patch here:
>>>
>>>    ssh://gitolite.kernel.org/pub/scm/linux/kernel/git/palmer/linux.git
>>>    -b plic-fasteoi
>>
>> I've pushed out a branch with the fixed patch:
>>
>> git://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git irq/plic-fasteoi
>>
>
> That patch works for me on real-ish hardware.  I tried on two FPGA
> systems that have different PLIC implementations.  Both include
> a PCIe root port (and associated interrupt source).  So for
> whatever it's worth:
>
> Tested-by: Darius Rad <darius@bluespec.com>

Awesome, thanks.  Would it be OK to put a "(on two hardware PLIC 
implementations)" after that, just so we're clear as to who tested what?

Assuming one of yours wasn't a SiFive PLIC then it'd be great if David could 
still give this a whack, but I don't think it strictly needs to block merging 
the patch.  I've included the right David this time, with any luck that will be 
more fruitful :)

>
>> Thanks,
>>
>> 	M.
>>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
