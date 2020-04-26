Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E921B906F
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 15:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yYXwDqywnxQUI+vD+2dFTwtskNzX/fHxHB1snXxCfaI=; b=fbS3/o5uc+zkIktXYUkpvqX6x
	L9A14NRN8heQcmWvHdDqQjPPNIniwGKo06pBnmh7L/uK2JEzr+iKR6bvIJT6wpFvjaNWDDv3h3Pl7
	7G4yW+i1kTBYK9AVYu6feT+LU/46z1KGyYc962wt9EjzjSJJfaJNpWo9detocNfV0XiUrDxE6JW1x
	ZQO0Jti7/gnsgTwwlPUQsVVME9TBMjOiyQlcaTjDq290/7D/8TRDYhAd8iFWSw/0K7CPOYCyZG9Xg
	wKoNsd4J0M2Vq5vmUvVrcFsLxBp+/qcsc90XZPV5xiqLGlFvfVMRV0gEQTjTYgrh28ibXD2Xekp8A
	FMVnI64Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jShBz-0007bn-UM; Sun, 26 Apr 2020 13:19:31 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jShBt-0007Zx-H1
 for linux-riscv@lists.infradead.org; Sun, 26 Apr 2020 13:19:29 +0000
Received: by mail-ot1-x341.google.com with SMTP id e20so21334456otk.12
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 06:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yYXwDqywnxQUI+vD+2dFTwtskNzX/fHxHB1snXxCfaI=;
 b=QBM4aLepspQnmt/hCdVncb4Nm2jwa33dteodt5D4QJgrWDRjxsY/azU1+iRaS7RD5P
 uN3BDlwcjb8od8YMXmyGkinlTdcpTo+JbWico1uGyvZd8Noji7JJmbMlD9NAA315AsJe
 EfUP/jrsZt6l8yJLyYnF92WUbNtlsuJJhMCtvittUjnYvOr6yhqSJnJpLs/anithK/OP
 m6SOft36UeWlCu0pGuoY3PbJDFhwwX2dRNlTrfZVp1uig2ndajCLaE3wpjHy00ntMioP
 C+Yi0kogh04QSLfgZkBvUxAnfX9elPT6AgBz/dhhIctvM1+nLhOCcOt3aVxPZTNWPj8X
 Kbeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yYXwDqywnxQUI+vD+2dFTwtskNzX/fHxHB1snXxCfaI=;
 b=Zu+noUHJg5H/10Z3ffqgqgbIoSc4DZgVBteTd/hK+OWT1X+oZaSnv3zO3kqMCqGQy1
 2sYV/g7GQtVKdrCLdcZsm3pkpF6m6Qro9WMwI+JBkJ/33OjrzO2EDdxcY1FjXGvriAyG
 U+5+kDEGxGSWD1a6mOT+z2xbfj8uI/dHmz0yVYm3PX/HrfSBG9r5cotDNVGpLDotmhTj
 WoUxkSawa+w31d9YKA9jBqkTFuklB15nd+GKrnT8opsNKTM3YqaebY78iYlUOoneLyO7
 5j4KzygsmxM3S5U1yABxib402W6dUNMxDYkmvI7uwMjn3DXttwP9EhY71BnsQLFTjYvp
 +D2Q==
X-Gm-Message-State: AGi0PuYvmTPOiGHHbqypfSfwJ0zUTEe38xIBrrH2kXFpeKAGfzOEL3mi
 R7G+yjUFlpNX4LMpBy0/LsFgcFdfehyd9Uptdy6hEQ==
X-Google-Smtp-Source: APiQypLfr78a21DD+6mlktZjeVwVAlSQPDdwBgdv0hbHZ960IqxLv+kJOghJKo9ReWjoKv54vjdMCBzErF3UreLiBOo=
X-Received: by 2002:aca:5651:: with SMTP id k78mr5529295oib.32.1587907163563; 
 Sun, 26 Apr 2020 06:19:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200426110740.123638-1-zong.li@sifive.com>
 <CAAhSdy3FCdzLV-nH03T=PBxB2tdZXhRrugcC2NcoA=22qpv+Lw@mail.gmail.com>
In-Reply-To: <CAAhSdy3FCdzLV-nH03T=PBxB2tdZXhRrugcC2NcoA=22qpv+Lw@mail.gmail.com>
From: Zong Li <zong.li@sifive.com>
Date: Sun, 26 Apr 2020 21:19:13 +0800
Message-ID: <CANXhq0qW9ORoZ5qc5g8ikO9QdeYX=p0fwoP8pyFFkk02a7imnw@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: allow many cores to handle IRQs
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_061925_739088_09910F7D 
X-CRM114-Status: GOOD (  22.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 8:47 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Sun, Apr 26, 2020 at 4:37 PM Zong Li <zong.li@sifive.com> wrote:
> >
> > Currently, driver forces the IRQs to be handled by only one core. This
> > patch provides the way to enable others cores to handle IRQs if needed,
> > so users could decide how many cores they wanted on default by boot
> > argument.
> >
> > Use 'irqaffinity' boot argument to determine affinity. If there is no
> > irqaffinity in dts or kernel configuration, use irq default affinity,
> > so all harts would try to claim IRQ.
> >
> > For example, add irqaffinity=0 in chosen node to set irq affinity to
> > hart 0. It also supports more than one harts to handle irq, such as set
> > irqaffinity=0,3,4.
> >
> > You can change IRQ affinity from user-space using procfs. For example,
> > you can make CPU0 and CPU2 serve IRQ together by the following command:
> >
> > echo 4 > /proc/irq/<x>/smp_affinity
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 21 +++++++--------------
> >  1 file changed, 7 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> > index d0a71febdadc..bc1440d54185 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -111,15 +111,12 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
> >  static void plic_irq_unmask(struct irq_data *d)
> >  {
> >         struct cpumask amask;
> > -       unsigned int cpu;
> >         struct plic_priv *priv = irq_get_chip_data(d->irq);
> >
> >         cpumask_and(&amask, &priv->lmask, cpu_online_mask);
> > -       cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
> > -                                          &amask);
> > -       if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
> > -               return;
> > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > +       cpumask_and(&amask, &amask, irq_data_get_affinity_mask(d));
> > +
> > +       plic_irq_toggle(&amask, d, 1);
> >  }
> >
> >  static void plic_irq_mask(struct irq_data *d)
> > @@ -133,24 +130,20 @@ static void plic_irq_mask(struct irq_data *d)
> >  static int plic_set_affinity(struct irq_data *d,
> >                              const struct cpumask *mask_val, bool force)
> >  {
> > -       unsigned int cpu;
> >         struct cpumask amask;
> >         struct plic_priv *priv = irq_get_chip_data(d->irq);
> >
> >         cpumask_and(&amask, &priv->lmask, mask_val);
> >
> >         if (force)
> > -               cpu = cpumask_first(&amask);
> > +               cpumask_copy(&amask, mask_val);
> >         else
> > -               cpu = cpumask_any_and(&amask, cpu_online_mask);
> > -
> > -       if (cpu >= nr_cpu_ids)
> > -               return -EINVAL;
> > +               cpumask_and(&amask, &amask, cpu_online_mask);
> >
> >         plic_irq_toggle(&priv->lmask, d, 0);
> > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > +       plic_irq_toggle(&amask, d, 1);
> >
> > -       irq_data_update_effective_affinity(d, cpumask_of(cpu));
> > +       irq_data_update_effective_affinity(d, &amask);
> >
> >         return IRQ_SET_MASK_OK_DONE;
> >  }
> > --
> > 2.26.1
> >
>
> I strongly oppose (NACK) this patch due to performance reasons.
>
> In PLIC, if we enable an IRQ X for N CPUs then when IRQ X occurs:
> 1) All N CPUs will take interrupt
> 2) All N CPUs will try to read PLIC CLAIM register
> 3) Only one of the CPUs will see IRQ X using the CLAIM register
> but other N - 1 CPUs will see no interrupt and return back to what
> they were doing. In other words, N - 1 CPUs will just waste CPU
> every time IRQ X occurs.
>
> Example1, one Application doing heavy network traffic will
> degrade performance of other applications because with every
> network RX/TX interrupt N-1 CPUs will waste CPU trying to
> process network interrupt.
>
> Example1, one Application doing heavy MMC/SD traffic will
> degrade performance of other applications because with every
> SPI read/write interrupt N-1 CPUs will waste CPU trying to
> process it.
>
> In fact, the current PLIC approach is actually a performance
> optimization. This implementation also works fine with in-kernel
> load-balancer and user space load balancer.
>

Yes, it's exactly, I know what you pointed out. But the idea of this
patch is just providing a way that users could enable other cores if
they wanted, it could still enable only one core by this change. The
purpose here is thinking of flexible use, rather than limitation.
Maybe it would be a happy medium that we make the default case enable
only one core? It is a good open discussion.

> Regards,
> Anup

