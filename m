Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423AC1B9119
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 17:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5MJobZzjC3UzmZaJmBYX9H7IZHTy4bZggyl33EIe0U4=; b=mW2UT9fxXEuNmZzas/3jki9iv
	fajph8UXqA2a93zhNe4+3y8sN8wVzFLCqzmuXsZFsns6T6d8NUeb1RxcdwnXZ92ht4apKynkDWC7h
	q7zMxmWWEYS3x3MgsUVnKQNJSKwevhdaubSVknPOAOWWfm0FxA4xJ0uyXhk3+2JFtfkzAairWW11H
	eRzRhRt2tS6qUB+z3rskSjv54B6KLBvYZK19VfzJ8/aRY6sN/MURyq89u+FWAJdo3Ll5fjhoTEIr2
	BYqcVkRjG3FJiYB0DRPietNK1SnGmialm38XwT8ghvmxHK+tziR2lMTJ0HsVtpe10w4tYwcqWfz2R
	De0oPVhKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSixZ-0007MX-DO; Sun, 26 Apr 2020 15:12:45 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSixW-0007Ls-AU
 for linux-riscv@lists.infradead.org; Sun, 26 Apr 2020 15:12:44 +0000
Received: by mail-ot1-x343.google.com with SMTP id 72so21691464otu.1
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 08:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5MJobZzjC3UzmZaJmBYX9H7IZHTy4bZggyl33EIe0U4=;
 b=XoggSe5RFNFkWGHDq3JWWN6v1izCQVePy52e95L2qwx/G8ytl9dYcdrQraeNKGNsj9
 sN9luEFeZXIQM5dsIwHHS7FHmMdQ+pG2sQb8Mt2XbdxmLeqpv+/AZDMm4KTHTxnxPNP+
 kI2OuXwlMMF9Fx5KmG32rQu69z41i2+JUicIKwQGPhtB4eOLqMCXDstRu4KREX+gMlvC
 U8w0u5PMelb5ot+GL+fbuoImHIfPfLBoM8yA+Gs36irmC4q/ZjycTjVp9W2lN5uSmLzT
 hTsojbast+sCC/PTIsRkS2ikBVKPs5SGoaMX/b+TRuxtYc3nQf+aZ33xDZu6lmGtSAlr
 Y4dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5MJobZzjC3UzmZaJmBYX9H7IZHTy4bZggyl33EIe0U4=;
 b=WoK3Fo6dvE0KbH1dOb+bF3VmGSRAJGJ9wfs4DL+ZNTX8Afo2JXWiSeS1h5HvFaBeHo
 VFQyA96jlvQnrWtvqi5LCSi3U4e/XEgYBnr0JOhmZeqk1koqem9uH3MkCPhxDVOeSZnX
 tgPnWkEtPs0Xt+TUwiJ6/ZrfXEi4O9c8iVDuj5pC2WP4h/3cXPloNBLPPAfa2tk9wXk/
 ZPcuOwURaXEel02Nr9TyvuKhJN7R7/vkZTn5P0g8pMnvoMjTKgFET2yB20gimTwYgWVr
 xlID7RA2gi5EPktkidzNQo0EUinY+EB/88ZETTyiU9BV9KC9dKMhuuzuowotinY3eN/1
 So0g==
X-Gm-Message-State: AGi0PuaSCz6YSFdcFiBxn+u4Db9CsHCMQZBAuDfd2cr6FxT0HVb0fdUN
 ECFUpETcZirmvDZFkAHXTmhSQ+oZV+Vmew2vizFMhA==
X-Google-Smtp-Source: APiQypJdo5FvYScqHy/yISKJQ1beBBChfSgxZKZKh/Qwsv42gJhPlkUIGH6Awaz6fttT7RWrqSjYUHDNoMvsvao3Yv8=
X-Received: by 2002:a05:6808:24e:: with SMTP id
 m14mr12504192oie.116.1587913960909; 
 Sun, 26 Apr 2020 08:12:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200426110740.123638-1-zong.li@sifive.com>
 <CAAhSdy3FCdzLV-nH03T=PBxB2tdZXhRrugcC2NcoA=22qpv+Lw@mail.gmail.com>
 <CANXhq0qW9ORoZ5qc5g8ikO9QdeYX=p0fwoP8pyFFkk02a7imnw@mail.gmail.com>
 <CAAhSdy2f2-SQP6TdgxA0HM2ft3eBJd6kEkB--RH=2gUuLktXLQ@mail.gmail.com>
In-Reply-To: <CAAhSdy2f2-SQP6TdgxA0HM2ft3eBJd6kEkB--RH=2gUuLktXLQ@mail.gmail.com>
From: Zong Li <zong.li@sifive.com>
Date: Sun, 26 Apr 2020 23:12:30 +0800
Message-ID: <CANXhq0pDYa2QfGZX87d5gyO5V2uzA3-ttPZXf7s1EkMUcG37Cw@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: allow many cores to handle IRQs
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_081242_393340_73A9CD18 
X-CRM114-Status: GOOD (  29.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 9:38 PM Anup Patel <anup@brainfault.org> wrote:
>
> +Mark Z
>
> On Sun, Apr 26, 2020 at 6:49 PM Zong Li <zong.li@sifive.com> wrote:
> >
> > On Sun, Apr 26, 2020 at 8:47 PM Anup Patel <anup@brainfault.org> wrote:
> > >
> > > On Sun, Apr 26, 2020 at 4:37 PM Zong Li <zong.li@sifive.com> wrote:
> > > >
> > > > Currently, driver forces the IRQs to be handled by only one core. This
> > > > patch provides the way to enable others cores to handle IRQs if needed,
> > > > so users could decide how many cores they wanted on default by boot
> > > > argument.
> > > >
> > > > Use 'irqaffinity' boot argument to determine affinity. If there is no
> > > > irqaffinity in dts or kernel configuration, use irq default affinity,
> > > > so all harts would try to claim IRQ.
> > > >
> > > > For example, add irqaffinity=0 in chosen node to set irq affinity to
> > > > hart 0. It also supports more than one harts to handle irq, such as set
> > > > irqaffinity=0,3,4.
> > > >
> > > > You can change IRQ affinity from user-space using procfs. For example,
> > > > you can make CPU0 and CPU2 serve IRQ together by the following command:
> > > >
> > > > echo 4 > /proc/irq/<x>/smp_affinity
> > > >
> > > > Signed-off-by: Zong Li <zong.li@sifive.com>
> > > > ---
> > > >  drivers/irqchip/irq-sifive-plic.c | 21 +++++++--------------
> > > >  1 file changed, 7 insertions(+), 14 deletions(-)
> > > >
> > > > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> > > > index d0a71febdadc..bc1440d54185 100644
> > > > --- a/drivers/irqchip/irq-sifive-plic.c
> > > > +++ b/drivers/irqchip/irq-sifive-plic.c
> > > > @@ -111,15 +111,12 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
> > > >  static void plic_irq_unmask(struct irq_data *d)
> > > >  {
> > > >         struct cpumask amask;
> > > > -       unsigned int cpu;
> > > >         struct plic_priv *priv = irq_get_chip_data(d->irq);
> > > >
> > > >         cpumask_and(&amask, &priv->lmask, cpu_online_mask);
> > > > -       cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
> > > > -                                          &amask);
> > > > -       if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
> > > > -               return;
> > > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > > +       cpumask_and(&amask, &amask, irq_data_get_affinity_mask(d));
> > > > +
> > > > +       plic_irq_toggle(&amask, d, 1);
> > > >  }
> > > >
> > > >  static void plic_irq_mask(struct irq_data *d)
> > > > @@ -133,24 +130,20 @@ static void plic_irq_mask(struct irq_data *d)
> > > >  static int plic_set_affinity(struct irq_data *d,
> > > >                              const struct cpumask *mask_val, bool force)
> > > >  {
> > > > -       unsigned int cpu;
> > > >         struct cpumask amask;
> > > >         struct plic_priv *priv = irq_get_chip_data(d->irq);
> > > >
> > > >         cpumask_and(&amask, &priv->lmask, mask_val);
> > > >
> > > >         if (force)
> > > > -               cpu = cpumask_first(&amask);
> > > > +               cpumask_copy(&amask, mask_val);
> > > >         else
> > > > -               cpu = cpumask_any_and(&amask, cpu_online_mask);
> > > > -
> > > > -       if (cpu >= nr_cpu_ids)
> > > > -               return -EINVAL;
> > > > +               cpumask_and(&amask, &amask, cpu_online_mask);
> > > >
> > > >         plic_irq_toggle(&priv->lmask, d, 0);
> > > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > > +       plic_irq_toggle(&amask, d, 1);
> > > >
> > > > -       irq_data_update_effective_affinity(d, cpumask_of(cpu));
> > > > +       irq_data_update_effective_affinity(d, &amask);
> > > >
> > > >         return IRQ_SET_MASK_OK_DONE;
> > > >  }
> > > > --
> > > > 2.26.1
> > > >
> > >
> > > I strongly oppose (NACK) this patch due to performance reasons.
> > >
> > > In PLIC, if we enable an IRQ X for N CPUs then when IRQ X occurs:
> > > 1) All N CPUs will take interrupt
> > > 2) All N CPUs will try to read PLIC CLAIM register
> > > 3) Only one of the CPUs will see IRQ X using the CLAIM register
> > > but other N - 1 CPUs will see no interrupt and return back to what
> > > they were doing. In other words, N - 1 CPUs will just waste CPU
> > > every time IRQ X occurs.
> > >
> > > Example1, one Application doing heavy network traffic will
> > > degrade performance of other applications because with every
> > > network RX/TX interrupt N-1 CPUs will waste CPU trying to
> > > process network interrupt.
> > >
> > > Example1, one Application doing heavy MMC/SD traffic will
> > > degrade performance of other applications because with every
> > > SPI read/write interrupt N-1 CPUs will waste CPU trying to
> > > process it.
> > >
> > > In fact, the current PLIC approach is actually a performance
> > > optimization. This implementation also works fine with in-kernel
> > > load-balancer and user space load balancer.
> > >
> >
> > Yes, it's exactly, I know what you pointed out. But the idea of this
> > patch is just providing a way that users could enable other cores if
> > they wanted, it could still enable only one core by this change. The
> > purpose here is thinking of flexible use, rather than limitation.
> > Maybe it would be a happy medium that we make the default case enable
> > only one core? It is a good open discussion.
>
> Making the default case as enable only one core is just a work-around.
>
> As-per my understanding, if we set affinity mask of N CPUs for IRQ X
> then it does not mean all N CPUs should receive IRQ X rather it means
> that exactly one of the N CPUs will receive IRQ X and the IRQ receiving
> CPU will be fixed (reflected by effective affinity returned by the driver).

is there a case that we only bundle the IRQ to CPU0, but CPU0 is more
much busy than other CPUs, and it would be better if another CPU could
take the IRQ?

>
> If we ignore above semantics and still provide a mechanism to target
> IRQ X to N CPUs then most likely someone will try and run into
> performance issues.
>
> Please don't go this path. The performance impact in case of Guest/VM
> is even worst because PLIC is trap-n-emulated by hypervisors as MMIO
> device.

OK, I won't persist in that, just wanna figure out the situation.

>
> Regards,
> Anup

