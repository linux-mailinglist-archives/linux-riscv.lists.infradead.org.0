Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D311B97E2
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 08:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ow7McboKHnEHo9r5OLmsIz4Khg2qeAiEPFCtI9iJ5vg=; b=edxOzkEU5ipE5N
	h3ZXcFxBFKb0nVo4P8jjkH7SW7qVykMoH/nTI5fD2l/NI9Rw3uiEqZ+gQEWZ5g0qQ7FzgEnhBOsb0
	RtBX0eIgbKHFkDGjYoD9mbQVwNhc8bWbO4yskEn6JGnpeFpdFj5LqIu523aACan5vgeT6Du50HR9T
	Dc8IFsYx7r74LpuJcmfhsXx6j5w4akZJKBsw1bibppy3N2FErvvksjRU6poz9afZv923/CMvjJIaD
	pJUa97DAHg4dQfLN9sjVVaJfiyVXqVj8o7I344Pno6h0GbnhJPBmr8cX7GRIT/fnhTdhxYNnZ8elF
	rDBgiQiI8ZzASGYvyVWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxju-0000LP-C5; Mon, 27 Apr 2020 06:59:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxjo-0000F0-2F
 for linux-riscv@lists.infradead.org; Mon, 27 Apr 2020 06:59:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so18267989wmk.5
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 23:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ow7McboKHnEHo9r5OLmsIz4Khg2qeAiEPFCtI9iJ5vg=;
 b=chxZwDHNXTJ9LJOmjqpAusafVfgN00EstU/LDJ2x3UU47pnuc7h7KV8ZvK1X26+9cQ
 m0HnppQ06MM/x9JczH2v3crR6R0b5FE62JPp/F+lKJ2mSd6UsMg0SNJBsdEVIkSNQQQh
 3xv7cS3VR3lkk5n0s8DKhUhGrUTRAtYosFliB+eaLaJJqr7LsQI4SD0MbG/Qsp7OQDUE
 5L4gF1dXrH6DMlyQbT7i8tXJznHiRk2NgtMmfQEKB1bKpigiPhCwi/+V38yU1DE1T+lD
 EQOKi9Hl1Vimen90hq9H05/SwNfrbCpzUc4pDTUWnGVlg61A83AIbexOkQdIdDzuKXv+
 Lbjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ow7McboKHnEHo9r5OLmsIz4Khg2qeAiEPFCtI9iJ5vg=;
 b=gEPvPRGAWMwukGRFg8E52OOp+pue6RuVFaSrJgVYWzELsYbvcl3XKMfmDuJQgjkGHl
 YsyndJA8EpO8vl5TdwLapZDIWuHoLCJz3N66aRieAOglCGXjxyEvFrLkOslhMFwCDezX
 2ocAFuZAE8c9GBv0W/YoEG2UDkE1H24w6ZRWbGwdMPYSZztTqEcoYiDCPCYR83ePWolt
 FDg1ZkE62MRoS2jz1r2B8FAR2a8G86KU/2Ie5PpGnz3oVSo7WFufT0+aUVy3j+pZzYme
 9EXvM0NUEHqmqI30/5Tc+E3CqrZaWcqTV/MB2MzGgep525/U4uZqKVF1hfp14FSq5mtB
 J6eA==
X-Gm-Message-State: AGi0PuZ9emFgIje9UH98OB2qG0QTbHDAgFUwW8k1ixFh7QXErqsrKwDW
 8z0W9AZM40FYM7CiWteMfkgULhlmKaduURGZIAkHBlaK9o8=
X-Google-Smtp-Source: APiQypKYmlBRKfcnlZ4RrIfnnayIILRLq4PzWZAAMN7VbVCPvBLaBtWLo5XIGj35M13x6iC9IplFe3P35RKC13YmeCk=
X-Received: by 2002:a7b:c755:: with SMTP id w21mr23998184wmk.120.1587970768932; 
 Sun, 26 Apr 2020 23:59:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200426110740.123638-1-zong.li@sifive.com>
 <CAAhSdy3FCdzLV-nH03T=PBxB2tdZXhRrugcC2NcoA=22qpv+Lw@mail.gmail.com>
 <CANXhq0qW9ORoZ5qc5g8ikO9QdeYX=p0fwoP8pyFFkk02a7imnw@mail.gmail.com>
 <CAAhSdy2f2-SQP6TdgxA0HM2ft3eBJd6kEkB--RH=2gUuLktXLQ@mail.gmail.com>
 <CANXhq0pDYa2QfGZX87d5gyO5V2uzA3-ttPZXf7s1EkMUcG37Cw@mail.gmail.com>
 <CAAhSdy188_Kkfsz2bX05T3Rr12XDNtwGiwfqaT2TFVW7auGUaw@mail.gmail.com>
 <CANXhq0qGq33u34q7nhJE4GG03pZ8BBJrnusr=FgmTeJwtq-=4Q@mail.gmail.com>
 <CAHCEeh+FVYd6GKDuN4fXz9ku57vmdyVR1y_mzu89-sanNa_E3A@mail.gmail.com>
In-Reply-To: <CAHCEeh+FVYd6GKDuN4fXz9ku57vmdyVR1y_mzu89-sanNa_E3A@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 27 Apr 2020 12:29:17 +0530
Message-ID: <CAAhSdy1=Ye4wwZMcGzQmnV05eMQzBV3steopKCx9iWJWbOORrw@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: allow many cores to handle IRQs
To: Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_235932_108886_E5056675 
X-CRM114-Status: GOOD (  27.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 12:19 PM Greentime Hu <greentime.hu@sifive.com> wro=
te:
>
> Zong Li <zong.li@sifive.com> =E6=96=BC 2020=E5=B9=B44=E6=9C=8826=E6=97=A5=
 =E9=80=B1=E6=97=A5 =E4=B8=8B=E5=8D=8811:35=E5=AF=AB=E9=81=93=EF=BC=9A
> >
> > On Sun, Apr 26, 2020 at 11:21 PM Anup Patel <anup@brainfault.org> wrote=
:
> > >
> > > On Sun, Apr 26, 2020 at 8:42 PM Zong Li <zong.li@sifive.com> wrote:
> > > >
> > > > On Sun, Apr 26, 2020 at 9:38 PM Anup Patel <anup@brainfault.org> wr=
ote:
> > > > >
> > > > > +Mark Z
> > > > >
> > > > > On Sun, Apr 26, 2020 at 6:49 PM Zong Li <zong.li@sifive.com> wrot=
e:
> > > > > >
> > > > > > On Sun, Apr 26, 2020 at 8:47 PM Anup Patel <anup@brainfault.org=
> wrote:
> > > > > > >
> > > > > > > On Sun, Apr 26, 2020 at 4:37 PM Zong Li <zong.li@sifive.com> =
wrote:
> > > > > > > >
> > > > > > > > Currently, driver forces the IRQs to be handled by only one=
 core. This
> > > > > > > > patch provides the way to enable others cores to handle IRQ=
s if needed,
> > > > > > > > so users could decide how many cores they wanted on default=
 by boot
> > > > > > > > argument.
> > > > > > > >
> > > > > > > > Use 'irqaffinity' boot argument to determine affinity. If t=
here is no
> > > > > > > > irqaffinity in dts or kernel configuration, use irq default=
 affinity,
> > > > > > > > so all harts would try to claim IRQ.
> > > > > > > >
> > > > > > > > For example, add irqaffinity=3D0 in chosen node to set irq =
affinity to
> > > > > > > > hart 0. It also supports more than one harts to handle irq,=
 such as set
> > > > > > > > irqaffinity=3D0,3,4.
> > > > > > > >
> > > > > > > > You can change IRQ affinity from user-space using procfs. F=
or example,
> > > > > > > > you can make CPU0 and CPU2 serve IRQ together by the follow=
ing command:
> > > > > > > >
> > > > > > > > echo 4 > /proc/irq/<x>/smp_affinity
> > > > > > > >
> > > > > > > > Signed-off-by: Zong Li <zong.li@sifive.com>
> > > > > > > > ---
> > > > > > > >  drivers/irqchip/irq-sifive-plic.c | 21 +++++++------------=
--
> > > > > > > >  1 file changed, 7 insertions(+), 14 deletions(-)
> > > > > > > >
> > > > > > > > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/ir=
qchip/irq-sifive-plic.c
> > > > > > > > index d0a71febdadc..bc1440d54185 100644
> > > > > > > > --- a/drivers/irqchip/irq-sifive-plic.c
> > > > > > > > +++ b/drivers/irqchip/irq-sifive-plic.c
> > > > > > > > @@ -111,15 +111,12 @@ static inline void plic_irq_toggle(co=
nst struct cpumask *mask,
> > > > > > > >  static void plic_irq_unmask(struct irq_data *d)
> > > > > > > >  {
> > > > > > > >         struct cpumask amask;
> > > > > > > > -       unsigned int cpu;
> > > > > > > >         struct plic_priv *priv =3D irq_get_chip_data(d->irq=
);
> > > > > > > >
> > > > > > > >         cpumask_and(&amask, &priv->lmask, cpu_online_mask);
> > > > > > > > -       cpu =3D cpumask_any_and(irq_data_get_affinity_mask(=
d),
> > > > > > > > -                                          &amask);
> > > > > > > > -       if (WARN_ON_ONCE(cpu >=3D nr_cpu_ids))
> > > > > > > > -               return;
> > > > > > > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > > > > > > +       cpumask_and(&amask, &amask, irq_data_get_affinity_m=
ask(d));
> > > > > > > > +
> > > > > > > > +       plic_irq_toggle(&amask, d, 1);
> > > > > > > >  }
> > > > > > > >
> > > > > > > >  static void plic_irq_mask(struct irq_data *d)
> > > > > > > > @@ -133,24 +130,20 @@ static void plic_irq_mask(struct irq_=
data *d)
> > > > > > > >  static int plic_set_affinity(struct irq_data *d,
> > > > > > > >                              const struct cpumask *mask_val=
, bool force)
> > > > > > > >  {
> > > > > > > > -       unsigned int cpu;
> > > > > > > >         struct cpumask amask;
> > > > > > > >         struct plic_priv *priv =3D irq_get_chip_data(d->irq=
);
> > > > > > > >
> > > > > > > >         cpumask_and(&amask, &priv->lmask, mask_val);
> > > > > > > >
> > > > > > > >         if (force)
> > > > > > > > -               cpu =3D cpumask_first(&amask);
> > > > > > > > +               cpumask_copy(&amask, mask_val);
> > > > > > > >         else
> > > > > > > > -               cpu =3D cpumask_any_and(&amask, cpu_online_=
mask);
> > > > > > > > -
> > > > > > > > -       if (cpu >=3D nr_cpu_ids)
> > > > > > > > -               return -EINVAL;
> > > > > > > > +               cpumask_and(&amask, &amask, cpu_online_mask=
);
> > > > > > > >
> > > > > > > >         plic_irq_toggle(&priv->lmask, d, 0);
> > > > > > > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > > > > > > +       plic_irq_toggle(&amask, d, 1);
> > > > > > > >
> > > > > > > > -       irq_data_update_effective_affinity(d, cpumask_of(cp=
u));
> > > > > > > > +       irq_data_update_effective_affinity(d, &amask);
> > > > > > > >
> > > > > > > >         return IRQ_SET_MASK_OK_DONE;
> > > > > > > >  }
> > > > > > > > --
> > > > > > > > 2.26.1
> > > > > > > >
> > > > > > >
> > > > > > > I strongly oppose (NACK) this patch due to performance reason=
s.
> > > > > > >
> > > > > > > In PLIC, if we enable an IRQ X for N CPUs then when IRQ X occ=
urs:
> > > > > > > 1) All N CPUs will take interrupt
> > > > > > > 2) All N CPUs will try to read PLIC CLAIM register
> > > > > > > 3) Only one of the CPUs will see IRQ X using the CLAIM regist=
er
> > > > > > > but other N - 1 CPUs will see no interrupt and return back to=
 what
> > > > > > > they were doing. In other words, N - 1 CPUs will just waste C=
PU
> > > > > > > every time IRQ X occurs.
> > > > > > >
> > > > > > > Example1, one Application doing heavy network traffic will
> > > > > > > degrade performance of other applications because with every
> > > > > > > network RX/TX interrupt N-1 CPUs will waste CPU trying to
> > > > > > > process network interrupt.
> > > > > > >
> > > > > > > Example1, one Application doing heavy MMC/SD traffic will
> > > > > > > degrade performance of other applications because with every
> > > > > > > SPI read/write interrupt N-1 CPUs will waste CPU trying to
> > > > > > > process it.
> > > > > > >
>
> Hi Anup,
>
> If there is a case that there are a lot of interrupts from a single
> irq number coming very quickly, the first hart is still serving the
> first interrupt and still in its top half so it doesn't enable
> interrupt yet but the second interrupt is coming and waiting, only the
> rest of the harts can serve it. If they are masked, the interrupt
> won't be able to be served it right away. In this case, I think this
> patch can get better performance. Maybe we can still keep this patch
> for user to define their usage in his case?

The way you described issue, it clearly means that other device driver
you are using does not have a optimized interrupt handler and the driver
should be fixed right away. I don't see the point in hacking PLIC driver
and slowing it down because some other device driver spending too
much time in interrupt context.

Seeing your comment, I quickly looked at Cadance MACB driver which
is very important on SiFive Unleashed. It turns out that Cadance MACB
driver does not have well designed top-half and bottom-half. Best thing
would be to change Candance MACB driver to use threaded irqs so that
majority of packet processing work on SiFive unleashed is done in kernel
thread (which is preemtible).

Regards,
Anup

