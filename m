Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2257B40C7
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 21:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Csx9K3LxmwXRBopuy21aTnyYSunvJiFp48GqRzPLHs=; b=H2oO4NPftH/lhl
	Alnh+EAWFsx+xGOF7fRnYuaMrARFuMpvwiA1+AL6U3LBAajhKeAfCeby6L888wOpaeDuM7HX6HIqK
	+IXzrVtQCXRX/IT0uypbS5J37/DnxQibHtak5wpykQvu9lAqOmmU4DVh0AMTowJSLlBA7W79P8+RQ
	t8o7u7gbVSK3I7fwC554sTlFDw95yGA0I2W7E09gAc7yAaTZUtq0zEK1vqt0SnZYBvShb754m9WPr
	WPDX5NzZaePmGTRaTF3WfwbjK1BuPFH5lyGdO7vCK5RZ9XL8f9SepA+YW+/UcB1gBT/WkxBOxIdEZ
	+w+FlsLBjqc5uo8OYJyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9wJD-0006fe-Oo; Mon, 16 Sep 2019 19:05:11 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9wJ3-0005KX-Kp
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 19:05:08 +0000
Received: by mail-qk1-x742.google.com with SMTP id y144so1112194qkb.7
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 12:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bluespec-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ff52y1FMBfOGXC1QXLgCWL9yIjtAUnNJjYA0n4sXHGw=;
 b=jDyaB28hCrNYOCRVrHupPypicL1ZWl4EPcSsbp7/EzudZJFFCa++Osz22+InSHhqhe
 8yQsqvJ3ftDs4KKneGwAWoW2HlQ8QgH7AqxuJYgaHIDsNxKJ6FjqQz0HXVqAoGgK1VW1
 wUqLnq7n502HUVJ7g1CRAfoBCImwwZEFXzXf/3w6csHa34QvKZg8yTzolYCWLFXT+270
 jRffzTJjXaWTYqVd2R9wFmU94C87uH50aejnQk4VMT/6tz2V85D0JIB84/q2rj1fmZSe
 tIqBTuxhvnLQENgzjHYYiHLf+/mLzLmXT/6PiEjc5u6cwQef43ogBcLZ5Hgiqr0afHpp
 DtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ff52y1FMBfOGXC1QXLgCWL9yIjtAUnNJjYA0n4sXHGw=;
 b=XkPh37UzD66q0Z0zjJ4eETjh8PPa8xnLWdu+3oZ9sU3Vancnhui/RvO8baqZfj1219
 z5ssv4BD1rHEV1nfl3qT9Q21J8Z3C+XLCWZEmZDFlJhtf7ryTEVuiU5ATqD1fk5WGZcL
 DH3H3SwqlEqWt12Jhv2edjWwGj0Ok6Az7nknMdCcnExOkwiuuLsqLDLdllTGQ7+GkWQH
 ujshNJYd3u1rNzAOL1IxRbTLyriIYYQBM+0YWc6R1v9bTjbXR9YlYjpDyWNHMRsXfRAR
 5g/PzPOqfzSon0mJuwu69wAIS5/gZT+tfRbeC3ZY4Hy8L9rQ5IHBFL6ZBODzNt8/qZUp
 YQQQ==
X-Gm-Message-State: APjAAAUdk2iL/+fx7stFti7YnrT5cBCU3EOT/YyxpF342xQ37sPdw3nP
 PLymPrGfACZoKiFu5JZA4rb5
X-Google-Smtp-Source: APXvYqyFqBGW3EZLWGfjxnG6wN9fqL/8sZ6Lh/2NMLDVcx8vQ5FCWUpgTf451SMMfsUw1I1EhgK/HQ==
X-Received: by 2002:a37:2746:: with SMTP id n67mr1642026qkn.368.1568660698769; 
 Mon, 16 Sep 2019 12:04:58 -0700 (PDT)
Received: from [0.0.0.0] (198-0-189-189-static.hfc.comcastbusiness.net.
 [198.0.189.189])
 by smtp.gmail.com with ESMTPSA id u17sm6288511qkj.71.2019.09.16.12.04.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Sep 2019 12:04:58 -0700 (PDT)
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
To: Marc Zyngier <maz@kernel.org>, Palmer Dabbelt <palmer@sifive.com>
References: <8636gxskmj.wl-maz@kernel.org>
 <mhng-8de39ab4-730a-4ded-a8b5-d50f34d1697b@palmer-si-x1e>
 <861rwhs9on.wl-maz@kernel.org>
From: Darius Rad <darius@bluespec.com>
Message-ID: <3c0eb4e9-ee21-d07b-ad16-735b7dc06051@bluespec.com>
Date: Mon, 16 Sep 2019 15:04:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <861rwhs9on.wl-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_120501_734735_F63FCFA5 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 David Johnson <davidj@sifive.com>, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 9/15/19 2:20 PM, Marc Zyngier wrote:
> On Sun, 15 Sep 2019 18:31:33 +0100,
> Palmer Dabbelt <palmer@sifive.com> wrote:
> 
> Hi Palmer,
> 
>>
>> On Sun, 15 Sep 2019 07:24:20 PDT (-0700), maz@kernel.org wrote:
>>> On Thu, 12 Sep 2019 22:40:34 +0100,
>>> Darius Rad <darius@bluespec.com> wrote:
>>>
>>> Hi Darius,
>>>
>>>>
>>>> As per the existing comment, irq_mask and irq_unmask do not need
>>>> to do anything for the PLIC.  However, the functions must exist
>>>> (the pointers cannot be NULL) as they are not optional, based on
>>>> the documentation (Documentation/core-api/genericirq.rst) as well
>>>> as existing usage (e.g., include/linux/irqchip/chained_irq.h).
>>>>
>>>> Signed-off-by: Darius Rad <darius@bluespec.com>
>>>> ---
>>>>  drivers/irqchip/irq-sifive-plic.c | 13 +++++++++----
>>>>  1 file changed, 9 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>>>> index cf755964f2f8..52d5169f924f 100644
>>>> --- a/drivers/irqchip/irq-sifive-plic.c
>>>> +++ b/drivers/irqchip/irq-sifive-plic.c
>>>> @@ -111,6 +111,13 @@ static void plic_irq_disable(struct irq_data *d)
>>>>  	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
>>>>  }
>>>>  +/*
>>>> + * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>>>> + * by reading claim and "unmasked" when writing it back.
>>>> + */
>>>> +static void plic_irq_mask(struct irq_data *d) { }
>>>> +static void plic_irq_unmask(struct irq_data *d) { }
>>>
>>> This outlines a bigger issue. If your irqchip doesn't require
>>> mask/unmask, you're probably not using the right interrupt
>>> flow. Looking at the code, I see you're using handle_simple_irq, which
>>> is almost universally wrong.
>>>
>>> As per the description above, these interrupts should be using the
>>> fasteoi flow, which is designed for this exact behaviour (the
>>> interrupt controller knows which interrupt is in flight and doesn't
>>> require SW to do anything bar signalling the EOI).
>>>
>>> Another thing is that mask/unmask tends to be a requirement, while
>>> enable/disable tends to be optional. There is no hard line here, but
>>> the expectations are that:
>>>
>>> (a) A disabled line can drop interrupts
>>> (b) A masked line cannot drop interrupts
>>>
>>> Depending what the PLIC architecture mandates, you'll need to
>>> implement one and/or the other. Having just (a) is indicative of a HW
>>> bug, and I'm not assuming that this is the case. (b) only is pretty
>>> common, and (a)+(b) has a few adepts. My bet is that it requires (b)
>>> only.
>>>
>>>> +
>>>>  #ifdef CONFIG_SMP
>>>>  static int plic_set_affinity(struct irq_data *d,
>>>>  			     const struct cpumask *mask_val, bool force)
>>>> @@ -138,12 +145,10 @@ static int plic_set_affinity(struct irq_data *d,
>>>>   static struct irq_chip plic_chip = {
>>>>  	.name		= "SiFive PLIC",
>>>> -	/*
>>>> -	 * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>>>> -	 * by reading claim and "unmasked" when writing it back.
>>>> -	 */
>>>>  	.irq_enable	= plic_irq_enable,
>>>>  	.irq_disable	= plic_irq_disable,
>>>> +	.irq_mask	= plic_irq_mask,
>>>> +	.irq_unmask	= plic_irq_unmask,
>>>>  #ifdef CONFIG_SMP
>>>>  	.irq_set_affinity = plic_set_affinity,
>>>>  #endif
>>>
>>> Can you give the following patch a go? It brings the irq flow in line
>>> with what the HW can do. It is of course fully untested (not even
>>> compile tested...).
>>>
>>> Thanks,
>>>
>>> 	M.
>>>
>>> From c0ce33a992ec18f5d3bac7f70de62b1ba2b42090 Mon Sep 17 00:00:00 2001
>>> From: Marc Zyngier <maz@kernel.org>
>>> Date: Sun, 15 Sep 2019 15:17:45 +0100
>>> Subject: [PATCH] irqchip/sifive-plic: Switch to fasteoi flow
>>>
>>> The SiFive PLIC interrupt controller seems to have all the HW
>>> features to support the fasteoi flow, but the driver seems to be
>>> stuck in a distant past. Bring it into the 21st century.
>>
>> Thanks.  We'd gotten these comments during the review process but
>> nobody had gotten the time to actually fix the issues.
> 
> No worries. The IRQ subsystem is an acquired taste... ;-)
> 
>>>
>>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>>> ---
>>>  drivers/irqchip/irq-sifive-plic.c | 29 +++++++++++++++--------------
>>>  1 file changed, 15 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>>> index cf755964f2f8..8fea384d392b 100644
>>> --- a/drivers/irqchip/irq-sifive-plic.c
>>> +++ b/drivers/irqchip/irq-sifive-plic.c
>>> @@ -97,7 +97,7 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
>>>  	}
>>>  }
>>>  -static void plic_irq_enable(struct irq_data *d)
>>> +static void plic_irq_mask(struct irq_data *d)
> 
> Of course, this is wrong. The perks of trying to do something at the
> last minute while boarding an airplane. Don't do that.
> 
> This should of course read "plic_irq_unmask"...
> 
>>>  {
>>>  	unsigned int cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
>>>  					   cpu_online_mask);
>>> @@ -106,7 +106,7 @@ static void plic_irq_enable(struct irq_data *d)
>>>  	plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
>>>  }
>>>  -static void plic_irq_disable(struct irq_data *d)
>>> +static void plic_irq_unmask(struct irq_data *d)
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
> 
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

That patch works for me on real-ish hardware.  I tried on two FPGA
systems that have different PLIC implementations.  Both include
a PCIe root port (and associated interrupt source).  So for
whatever it's worth:

Tested-by: Darius Rad <darius@bluespec.com>

> Thanks,
> 
> 	M.
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
