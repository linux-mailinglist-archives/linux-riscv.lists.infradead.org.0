Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497761B90AC
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 15:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AKeJsfVQBTmRJ5DMftJ0126mlRY+cjmcCtKvFup4ozY=; b=XC72ZXqSddCAFWnRYuAt4iUNS
	WuB63KsIMnVXzjud/fAx8E1eGVRZBrXi9xcIe69e0WVnDaRYcL0CiIjwcyGAK1euT+RTmi81LbFjN
	A+2HuXcuk80ALDUgLH6ZAcSobRhEWxFlMeohZaDbYDvdkRJrqFLDRS7pdZKz8IFTugwIkJkguG7pw
	3ViILYWNqCR3eliwfwSv6jq+6IjLQHXrBF460eBLueF/ZJVzXyug0ZWWOql6YCV4uv2LUScKfCUFi
	fWpTl4lykWqpnJtbPzTVouwAo9EWfOTYsa3J03sqzKzcg1kBXAdxHLpVFdxulAkTA5OFg+9fg28Qg
	xxmW3LcIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jShUC-0003za-Bp; Sun, 26 Apr 2020 13:38:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jShU8-0003yu-KZ
 for linux-riscv@lists.infradead.org; Sun, 26 Apr 2020 13:38:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id k12so7938822wmj.3
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 06:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AKeJsfVQBTmRJ5DMftJ0126mlRY+cjmcCtKvFup4ozY=;
 b=LDAiQz7MYSSfMUnc0M3PtEkFizLlN5hTiL5JRxWtoyeXmT71fiHPcnk4OsCeezFvM7
 23TSEk2irysoDe0OEvORA1LkzD6X2g9oSmxvSpNlIyeIk6WHyTDSUZYeRSyGiJoks2Hm
 4hgkQuJajNgYXWT02+aRTAZdsGQqY73d3WQj3OkutChq/qqyrIB/0GtMoEaGawVX4qQS
 4AmWxNXtUVaNxC6rsxBFcz5OEZXJTVGstj5XUxIiWOA/DTm087YGDReBmK9zKwWEjPWR
 VI0IZXVURX+pc+DaMJ/NBNgUqojonhR8oDblVkkOcRRI3Jj4TwNmwcLscQzERxVWwhV5
 w6WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AKeJsfVQBTmRJ5DMftJ0126mlRY+cjmcCtKvFup4ozY=;
 b=YSzVNpErdRBQ4xcuTYybBeH8jRRZH3Fdeya+qnkaN3MCApZepV3Ax86+ShKmbXtVHN
 8SR5OgmBC3/g03NWB0rdkZxkV01VoNvtzBYSG0Tg9yq5TczhVtNJFZfXbFL2JOwN9i4B
 Y6O5imMeSaWZF0lCkKMReK8hQ/BwuyMhe4LBmtO9YgtiN7FEbHO+jkLgTVDgUWOyqrSs
 s09WA8AMvPEPhpIXYOxLVoypojm/Kq7wnqZIn9qAInQWOT/axEmpJ/pXGWeVvKVFMcJC
 JXPQi+B6a0pvAV376vfD+XAvF5zS3kp2B7l4wT5fg4Ahm29gFGlPKKeVL0aSe8B3Js2e
 4SLA==
X-Gm-Message-State: AGi0Pua6B/hhlcZCfZgsaw554fkdN5SyoepTG4DYZxqGjGk+8m1hmqUr
 GajfdH0iulgaCoIUhUSDV9XUQ0iox/Ez38te3vS9hQ==
X-Google-Smtp-Source: APiQypLYcPLROTkqB8LzsYssjIU4lEHWA65Pc9cTE+Y39E81HNfUzw/chX6hgTuZNKJOX8E7TCXt+lUBH8wLC3x+xqg=
X-Received: by 2002:a1c:9d0d:: with SMTP id g13mr21978860wme.102.1587908294824; 
 Sun, 26 Apr 2020 06:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200426110740.123638-1-zong.li@sifive.com>
 <CAAhSdy3FCdzLV-nH03T=PBxB2tdZXhRrugcC2NcoA=22qpv+Lw@mail.gmail.com>
 <CANXhq0qW9ORoZ5qc5g8ikO9QdeYX=p0fwoP8pyFFkk02a7imnw@mail.gmail.com>
In-Reply-To: <CANXhq0qW9ORoZ5qc5g8ikO9QdeYX=p0fwoP8pyFFkk02a7imnw@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 26 Apr 2020 19:08:03 +0530
Message-ID: <CAAhSdy2f2-SQP6TdgxA0HM2ft3eBJd6kEkB--RH=2gUuLktXLQ@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: allow many cores to handle IRQs
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_063816_676839_45963388 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

+Mark Z

On Sun, Apr 26, 2020 at 6:49 PM Zong Li <zong.li@sifive.com> wrote:
>
> On Sun, Apr 26, 2020 at 8:47 PM Anup Patel <anup@brainfault.org> wrote:
> >
> > On Sun, Apr 26, 2020 at 4:37 PM Zong Li <zong.li@sifive.com> wrote:
> > >
> > > Currently, driver forces the IRQs to be handled by only one core. This
> > > patch provides the way to enable others cores to handle IRQs if needed,
> > > so users could decide how many cores they wanted on default by boot
> > > argument.
> > >
> > > Use 'irqaffinity' boot argument to determine affinity. If there is no
> > > irqaffinity in dts or kernel configuration, use irq default affinity,
> > > so all harts would try to claim IRQ.
> > >
> > > For example, add irqaffinity=0 in chosen node to set irq affinity to
> > > hart 0. It also supports more than one harts to handle irq, such as set
> > > irqaffinity=0,3,4.
> > >
> > > You can change IRQ affinity from user-space using procfs. For example,
> > > you can make CPU0 and CPU2 serve IRQ together by the following command:
> > >
> > > echo 4 > /proc/irq/<x>/smp_affinity
> > >
> > > Signed-off-by: Zong Li <zong.li@sifive.com>
> > > ---
> > >  drivers/irqchip/irq-sifive-plic.c | 21 +++++++--------------
> > >  1 file changed, 7 insertions(+), 14 deletions(-)
> > >
> > > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> > > index d0a71febdadc..bc1440d54185 100644
> > > --- a/drivers/irqchip/irq-sifive-plic.c
> > > +++ b/drivers/irqchip/irq-sifive-plic.c
> > > @@ -111,15 +111,12 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
> > >  static void plic_irq_unmask(struct irq_data *d)
> > >  {
> > >         struct cpumask amask;
> > > -       unsigned int cpu;
> > >         struct plic_priv *priv = irq_get_chip_data(d->irq);
> > >
> > >         cpumask_and(&amask, &priv->lmask, cpu_online_mask);
> > > -       cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
> > > -                                          &amask);
> > > -       if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
> > > -               return;
> > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > +       cpumask_and(&amask, &amask, irq_data_get_affinity_mask(d));
> > > +
> > > +       plic_irq_toggle(&amask, d, 1);
> > >  }
> > >
> > >  static void plic_irq_mask(struct irq_data *d)
> > > @@ -133,24 +130,20 @@ static void plic_irq_mask(struct irq_data *d)
> > >  static int plic_set_affinity(struct irq_data *d,
> > >                              const struct cpumask *mask_val, bool force)
> > >  {
> > > -       unsigned int cpu;
> > >         struct cpumask amask;
> > >         struct plic_priv *priv = irq_get_chip_data(d->irq);
> > >
> > >         cpumask_and(&amask, &priv->lmask, mask_val);
> > >
> > >         if (force)
> > > -               cpu = cpumask_first(&amask);
> > > +               cpumask_copy(&amask, mask_val);
> > >         else
> > > -               cpu = cpumask_any_and(&amask, cpu_online_mask);
> > > -
> > > -       if (cpu >= nr_cpu_ids)
> > > -               return -EINVAL;
> > > +               cpumask_and(&amask, &amask, cpu_online_mask);
> > >
> > >         plic_irq_toggle(&priv->lmask, d, 0);
> > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > +       plic_irq_toggle(&amask, d, 1);
> > >
> > > -       irq_data_update_effective_affinity(d, cpumask_of(cpu));
> > > +       irq_data_update_effective_affinity(d, &amask);
> > >
> > >         return IRQ_SET_MASK_OK_DONE;
> > >  }
> > > --
> > > 2.26.1
> > >
> >
> > I strongly oppose (NACK) this patch due to performance reasons.
> >
> > In PLIC, if we enable an IRQ X for N CPUs then when IRQ X occurs:
> > 1) All N CPUs will take interrupt
> > 2) All N CPUs will try to read PLIC CLAIM register
> > 3) Only one of the CPUs will see IRQ X using the CLAIM register
> > but other N - 1 CPUs will see no interrupt and return back to what
> > they were doing. In other words, N - 1 CPUs will just waste CPU
> > every time IRQ X occurs.
> >
> > Example1, one Application doing heavy network traffic will
> > degrade performance of other applications because with every
> > network RX/TX interrupt N-1 CPUs will waste CPU trying to
> > process network interrupt.
> >
> > Example1, one Application doing heavy MMC/SD traffic will
> > degrade performance of other applications because with every
> > SPI read/write interrupt N-1 CPUs will waste CPU trying to
> > process it.
> >
> > In fact, the current PLIC approach is actually a performance
> > optimization. This implementation also works fine with in-kernel
> > load-balancer and user space load balancer.
> >
>
> Yes, it's exactly, I know what you pointed out. But the idea of this
> patch is just providing a way that users could enable other cores if
> they wanted, it could still enable only one core by this change. The
> purpose here is thinking of flexible use, rather than limitation.
> Maybe it would be a happy medium that we make the default case enable
> only one core? It is a good open discussion.

Making the default case as enable only one core is just a work-around.

As-per my understanding, if we set affinity mask of N CPUs for IRQ X
then it does not mean all N CPUs should receive IRQ X rather it means
that exactly one of the N CPUs will receive IRQ X and the IRQ receiving
CPU will be fixed (reflected by effective affinity returned by the driver).

If we ignore above semantics and still provide a mechanism to target
IRQ X to N CPUs then most likely someone will try and run into
performance issues.

Please don't go this path. The performance impact in case of Guest/VM
is even worst because PLIC is trap-n-emulated by hypervisors as MMIO
device.

Regards,
Anup

