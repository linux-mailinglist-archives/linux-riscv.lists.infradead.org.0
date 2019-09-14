Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525D2B2CD5
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 21:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=BuY6NAOX5bKKyFwNJM5n5wfit4V1NYWY38BGUqWFvR8=; b=YfEYyScFzpPRvZlWabCBQDT79
	V/6mNQByeWz6HhLpbZ9DDq3cV26gSq1OuT6m7rOrpqq8M8l7V3Lm8Z2RvQmnkaf/lSQxJJabExhXi
	fKDAaNsAMSTQts7Y9He8ZzdnFxXWvsKljMEolr5N5+XUFqQIy18p+QpqgZWZnXC32fOBoR+5G60i5
	khwUbR7knvytBQmT1/4YmnNFQZL+9WMB4m6fNng4EVueBUrs/HXADlA/JxEMSyiyrjb4bEXLdWYgx
	YXMHpgUADcNVYtS46IDM/KV7+72ITR46uEZTKo6SmAuSrbzjsaDFcIiIo2HKd+zZAF8ia9C3P7ygj
	q00YYfEBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9E4u-0004Gj-MF; Sat, 14 Sep 2019 19:51:28 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9E4q-0004GK-F0
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 19:51:26 +0000
Received: by mail-pl1-f195.google.com with SMTP id k1so14750502pls.11
 for <linux-riscv@lists.infradead.org>; Sat, 14 Sep 2019 12:51:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=8/82Z+AFS9yEFav5otNjqZZTLkl6BS+MrGSlNauY50Q=;
 b=pIUoXcnrh4P6Mq08uFfKqcjkgly0b5QGH3NvSKRO6C4uupDlXf6kjl4A79nXOcGshz
 H/+eOPjepbgkSgu9JtHpQ5jkFVjr+Os/75Bj6O1//OgCGm7hSJrr4lgRWhyb7qaCFtJL
 2VMNOZNgjoqyMZT8g6B30FeBJUTdnXuw2ZvYFvp6I/s9AFpQnKUuo5JdM54i2j7G5H3C
 MTR2uo4AJizmVJrncFo0CkJBlYJ2RsEH2JwWCjdfuSUEb7bS8UBAE+or1Oztojm/wgU8
 5+BE25okBr9w7/VMWcDwUn9L8UjlmhlPVL3LwumJaR5QqKcCu4zIvVUqGkI7Tf8sMoFd
 BXsw==
X-Gm-Message-State: APjAAAUoCJd3Q2uatTMAmSylEY7ZUloJNHxvGU1+ALMxwPAJTCpQ2nQ2
 dt3ikAlERR6Dp5L3e09dw7EL+g==
X-Google-Smtp-Source: APXvYqzPfbGU/elPJNGLdG9lRafcl5cXs4aUV0O4ip7XPxqZ5vaxWQW3kJO4utMNMCW3NW6nzo170A==
X-Received: by 2002:a17:902:4a:: with SMTP id
 68mr50794588pla.196.1568490683065; 
 Sat, 14 Sep 2019 12:51:23 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id x13sm34425177pfm.157.2019.09.14.12.51.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 12:51:22 -0700 (PDT)
Date: Sat, 14 Sep 2019 12:51:22 -0700 (PDT)
X-Google-Original-Date: Sat, 14 Sep 2019 12:50:08 PDT (-0700)
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
In-Reply-To: <CAMabmMJ=QcH-529O6ORWbFwOrAnMKeWTvQ=WGYgnOoihqj9uFA@mail.gmail.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: charles.papon.90@gmail.com
Message-ID: <mhng-a57ed8d7-08c6-4bd6-83c1-19925746ba6e@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_125124_507618_B4418A16 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
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
Cc: maz@kernel.org, jason@lakedaemon.net, Darius Rad <darius@bluespec.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 14 Sep 2019 12:42:32 PDT (-0700), charles.papon.90@gmail.com wrote:
> I had issues with that plic driver. The current implementation wasn't
> usable with driver using level sensitive interrupt together with the
> IRQF_ONESHOT flag.
>
> Those null were producing crashes in the chained_irq_enter function.
> Filling them with dummy function fixed the issue.

I'm not arguing it fixes a crash, the code Darius pointed to obviously doesn't 
check for NULL before calling these functions and will therefor crash.  There 
is a bunch of other code that does check, though, so I guess my question is 
really: is the bug in the PLIC driver, or in this header?

If we're not allowed to have these as NULL and there's nothing to do, then this 
is a reasonable patch.  I'm just not capable of answering that question, as I'm 
not an irqchip maintainer :)

> On Sat, Sep 14, 2019 at 9:00 PM Palmer Dabbelt <palmer@sifive.com> wrote:
>>
>> On Thu, 12 Sep 2019 14:40:34 PDT (-0700), Darius Rad wrote:
>> > As per the existing comment, irq_mask and irq_unmask do not need
>> > to do anything for the PLIC.  However, the functions must exist
>> > (the pointers cannot be NULL) as they are not optional, based on
>> > the documentation (Documentation/core-api/genericirq.rst) as well
>> > as existing usage (e.g., include/linux/irqchip/chained_irq.h).
>> >
>> > Signed-off-by: Darius Rad <darius@bluespec.com>
>> > ---
>> >  drivers/irqchip/irq-sifive-plic.c | 13 +++++++++----
>> >  1 file changed, 9 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>> > index cf755964f2f8..52d5169f924f 100644
>> > --- a/drivers/irqchip/irq-sifive-plic.c
>> > +++ b/drivers/irqchip/irq-sifive-plic.c
>> > @@ -111,6 +111,13 @@ static void plic_irq_disable(struct irq_data *d)
>> >       plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
>> >  }
>> >
>> > +/*
>> > + * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>> > + * by reading claim and "unmasked" when writing it back.
>> > + */
>> > +static void plic_irq_mask(struct irq_data *d) { }
>> > +static void plic_irq_unmask(struct irq_data *d) { }
>> > +
>> >  #ifdef CONFIG_SMP
>> >  static int plic_set_affinity(struct irq_data *d,
>> >                            const struct cpumask *mask_val, bool force)
>> > @@ -138,12 +145,10 @@ static int plic_set_affinity(struct irq_data *d,
>> >
>> >  static struct irq_chip plic_chip = {
>> >       .name           = "SiFive PLIC",
>> > -     /*
>> > -      * There is no need to mask/unmask PLIC interrupts.  They are "masked"
>> > -      * by reading claim and "unmasked" when writing it back.
>> > -      */
>> >       .irq_enable     = plic_irq_enable,
>> >       .irq_disable    = plic_irq_disable,
>> > +     .irq_mask       = plic_irq_mask,
>> > +     .irq_unmask     = plic_irq_unmask,
>> >  #ifdef CONFIG_SMP
>> >       .irq_set_affinity = plic_set_affinity,
>> >  #endif
>>
>> I can't find any other drivers in irqchip with empty irq_mask/irq_unmask.  I'm
>> not well versed in irqchip stuff, so I'll leave it up to the irqchip
>> maintainers to comment on if this is the right way to do this.  Either way, I'm
>> assuming it'll go in through some the irqchip tree so
>>
>> Acked-by: Palmer Dabbelt <palmer@sifive.com>
>>
>> just to make sure I don't get in the way if it is the right way to do it :).
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
