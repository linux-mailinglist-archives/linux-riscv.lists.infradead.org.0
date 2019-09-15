Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAA4B312A
	for <lists+linux-riscv@lfdr.de>; Sun, 15 Sep 2019 19:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=kzUCQlLe+4+suJo1dYrJg6qSomDJYVmRdk731rjuxV4=; b=kvtpULFs75xnOo5Jle1Qd83Fv
	bM59ZYgtWOwk1mjimjV7sgnMkGdk74KefsavfPbnq/UiboB7n+u3fLQaMI7AMDad0T1HmGsDBYySk
	NlmCF/N6L77raNKWPLL5eiTdb1ywfWsTHTr+NxRDp9im1QVN9C/yKooHClHILIXPELhp6buV5Icdb
	2x7nizg3dKCT9UgOC7uiDit75JS5AoYz2he7u4y0fjmJQZMAU46tSvSHabB3rzN0QPgU4qPzstm8Y
	FWC29ta6Uz/ueCpKa+fps+0zUXGsv8V+dd8Spjp4s0oalgaGReXM0279H6/GWzBE+USk70NzVUPdI
	0kxu0mYvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9YNC-000243-Ki; Sun, 15 Sep 2019 17:31:42 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9YN6-00023j-Ln
 for linux-riscv@lists.infradead.org; Sun, 15 Sep 2019 17:31:38 +0000
Received: by mail-pg1-f196.google.com with SMTP id c17so10326777pgg.4
 for <linux-riscv@lists.infradead.org>; Sun, 15 Sep 2019 10:31:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=7jPP6uykt4djIujvVe4JcrX0jlYqFug5SZAhTUjC5fU=;
 b=jZd5wu0OtlwTPxElVVBSUuePXtaPcfxVqwrInCXM3ML7/e8Tp740z8wGPcIQEWD2Dt
 e/HjC3VzHkYgQD86mzbJz3DrCuAfKFyPa22lVKEH/E3tg8y0CLkp0JsUWDsCiyV0MwUZ
 Ykn/5k5ORgInmC/NRLY58axA3bQpH1mzQnxcP1KdZxU9SPy3Our1UK7uhG5WPbvJaykA
 tdeyVDkWIy5q31FjJhssntdjE+oHlPsUWQRYzd/Yk+nJXU1CrszvJK/xXa3zmQjqxFNA
 nEFD/JHs7yQXGh76uTfASZ5StxJMWlxtcSBT7eWRgvg9tp7b35tAL63XSNshm5butmYf
 YWkQ==
X-Gm-Message-State: APjAAAVbFAo3EMTwbqsY8cye8XnYBngkA/M94FVC9716kOfS0tvYkz3W
 PaDqpQu6egNnDmw1ZAxdSFfiYg==
X-Google-Smtp-Source: APXvYqxq4EUBJIPAKXGYmJQK33mno/KylCwPXwHyaZL5QhyHScTMRF7BDzUNvZe0BZ0iCjoNHBkFrg==
X-Received: by 2002:a63:1521:: with SMTP id v33mr9263997pgl.9.1568568694021;
 Sun, 15 Sep 2019 10:31:34 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id s24sm28979930pgm.3.2019.09.15.10.31.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 10:31:33 -0700 (PDT)
Date: Sun, 15 Sep 2019 10:31:33 -0700 (PDT)
X-Google-Original-Date: Sun, 15 Sep 2019 10:18:16 PDT (-0700)
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
In-Reply-To: <8636gxskmj.wl-maz@kernel.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: maz@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 David Johnson <davidj@sifive.com>
Message-ID: <mhng-8de39ab4-730a-4ded-a8b5-d50f34d1697b@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_103136_725399_ACD397DE 
X-CRM114-Status: GOOD (  30.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
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
Cc: jason@lakedaemon.net, Darius Rad <darius@bluespec.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 15 Sep 2019 07:24:20 PDT (-0700), maz@kernel.org wrote:
> On Thu, 12 Sep 2019 22:40:34 +0100,
> Darius Rad <darius@bluespec.com> wrote:
>
> Hi Darius,
>
>> 
>> As per the existing comment, irq_mask and irq_unmask do not need
>> to do anything for the PLIC.  However, the functions must exist
>> (the pointers cannot be NULL) as they are not optional, based on
>> the documentation (Documentation/core-api/genericirq.rst) as well
>> as existing usage (e.g., include/linux/irqchip/chained_irq.h).
>> 
>> Signed-off-by: Darius Rad <darius@bluespec.com>
>> ---
>>  drivers/irqchip/irq-sifive-plic.c | 13 +++++++++----
>>  1 file changed, 9 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>> index cf755964f2f8..52d5169f924f 100644
>> --- a/drivers/irqchip/irq-sifive-plic.c
>> +++ b/drivers/irqchip/irq-sifive-plic.c
>> @@ -111,6 +111,13 @@ static void plic_irq_disable(struct irq_data *d)
>>  	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
>>  }
>>  
>> +/*
>> + * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>> + * by reading claim and "unmasked" when writing it back.
>> + */
>> +static void plic_irq_mask(struct irq_data *d) { }
>> +static void plic_irq_unmask(struct irq_data *d) { }
>
> This outlines a bigger issue. If your irqchip doesn't require
> mask/unmask, you're probably not using the right interrupt
> flow. Looking at the code, I see you're using handle_simple_irq, which
> is almost universally wrong.
>
> As per the description above, these interrupts should be using the
> fasteoi flow, which is designed for this exact behaviour (the
> interrupt controller knows which interrupt is in flight and doesn't
> require SW to do anything bar signalling the EOI).
>
> Another thing is that mask/unmask tends to be a requirement, while
> enable/disable tends to be optional. There is no hard line here, but
> the expectations are that:
>
> (a) A disabled line can drop interrupts
> (b) A masked line cannot drop interrupts
>
> Depending what the PLIC architecture mandates, you'll need to
> implement one and/or the other. Having just (a) is indicative of a HW
> bug, and I'm not assuming that this is the case. (b) only is pretty
> common, and (a)+(b) has a few adepts. My bet is that it requires (b)
> only.
>
>> +
>>  #ifdef CONFIG_SMP
>>  static int plic_set_affinity(struct irq_data *d,
>>  			     const struct cpumask *mask_val, bool force)
>> @@ -138,12 +145,10 @@ static int plic_set_affinity(struct irq_data *d,
>>  
>>  static struct irq_chip plic_chip = {
>>  	.name		= "SiFive PLIC",
>> -	/*
>> -	 * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>> -	 * by reading claim and "unmasked" when writing it back.
>> -	 */
>>  	.irq_enable	= plic_irq_enable,
>>  	.irq_disable	= plic_irq_disable,
>> +	.irq_mask	= plic_irq_mask,
>> +	.irq_unmask	= plic_irq_unmask,
>>  #ifdef CONFIG_SMP
>>  	.irq_set_affinity = plic_set_affinity,
>>  #endif
>
> Can you give the following patch a go? It brings the irq flow in line
> with what the HW can do. It is of course fully untested (not even
> compile tested...).
>
> Thanks,
>
> 	M.
>
> From c0ce33a992ec18f5d3bac7f70de62b1ba2b42090 Mon Sep 17 00:00:00 2001
> From: Marc Zyngier <maz@kernel.org>
> Date: Sun, 15 Sep 2019 15:17:45 +0100
> Subject: [PATCH] irqchip/sifive-plic: Switch to fasteoi flow
>
> The SiFive PLIC interrupt controller seems to have all the HW
> features to support the fasteoi flow, but the driver seems to be
> stuck in a distant past. Bring it into the 21st century.

Thanks.  We'd gotten these comments during the review process but nobody had 
gotten the time to actually fix the issues.

>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/irqchip/irq-sifive-plic.c | 29 +++++++++++++++--------------
>  1 file changed, 15 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index cf755964f2f8..8fea384d392b 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -97,7 +97,7 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
>  	}
>  }
>  
> -static void plic_irq_enable(struct irq_data *d)
> +static void plic_irq_mask(struct irq_data *d)
>  {
>  	unsigned int cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
>  					   cpu_online_mask);
> @@ -106,7 +106,7 @@ static void plic_irq_enable(struct irq_data *d)
>  	plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
>  }
>  
> -static void plic_irq_disable(struct irq_data *d)
> +static void plic_irq_unmask(struct irq_data *d)
>  {
>  	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
>  }
> @@ -125,10 +125,8 @@ static int plic_set_affinity(struct irq_data *d,
>  	if (cpu >= nr_cpu_ids)
>  		return -EINVAL;
>  
> -	if (!irqd_irq_disabled(d)) {
> -		plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
> -		plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
> -	}
> +	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
> +	plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
>  
>  	irq_data_update_effective_affinity(d, cpumask_of(cpu));
>  
> @@ -136,14 +134,18 @@ static int plic_set_affinity(struct irq_data *d,
>  }
>  #endif
>  
> +static void plic_irq_eoi(struct irq_data *d)
> +{
> +	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> +
> +	writel(d->hwirq, handler->hart_base + CONTEXT_CLAIM);
> +}
> +
>  static struct irq_chip plic_chip = {
>  	.name		= "SiFive PLIC",
> -	/*
> -	 * There is no need to mask/unmask PLIC interrupts.  They are "masked"
> -	 * by reading claim and "unmasked" when writing it back.
> -	 */
> -	.irq_enable	= plic_irq_enable,
> -	.irq_disable	= plic_irq_disable,
> +	.irq_mask	= plic_irq_mask,
> +	.irq_unmask	= plic_irq_unmask,
> +	.irq_eoi	= plic_irq_eoi,
>  #ifdef CONFIG_SMP
>  	.irq_set_affinity = plic_set_affinity,
>  #endif
> @@ -152,7 +154,7 @@ static struct irq_chip plic_chip = {
>  static int plic_irqdomain_map(struct irq_domain *d, unsigned int irq,
>  			      irq_hw_number_t hwirq)
>  {
> -	irq_set_chip_and_handler(irq, &plic_chip, handle_simple_irq);
> +	irq_set_chip_and_handler(irq, &plic_chip, handle_fasteoi_irq);
>  	irq_set_chip_data(irq, NULL);
>  	irq_set_noprobe(irq);
>  	return 0;
> @@ -188,7 +190,6 @@ static void plic_handle_irq(struct pt_regs *regs)
>  					hwirq);
>  		else
>  			generic_handle_irq(irq);
> -		writel(hwirq, claim);
>  	}
>  	csr_set(sie, SIE_SEIE);
>  }
> -- 
> 2.20.1
>
>
> -- 
> Jazz is not dead, it just smells funny.

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
Tested-by: Palmer Dabbelt <palmer@sifive.com> (QEMU Boot)

We should test them on the hardware, but I don't have any with me right now.  
David's probably in the best spot to do this, as he's got a setup that does all 
the weird interrupt sources (ie, PCIe).

David: do you mind testing this?  I've put the patch here:

    ssh://gitolite.kernel.org/pub/scm/linux/kernel/git/palmer/linux.git
    -b plic-fasteoi

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
