Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4271E1B9122
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 17:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Oec0onKReyMxClDdJY4/0WsT5jFsmRnzuCNfEJGndcY=; b=l+1ymRVNchQrHwJmafwNPcLQz
	hudwq7qq5jNan9FsE7xxwU9qhUhN9iye/MiuiKgjqBnSokZ1kh4QSqmMY4lwJl62QSA7jMDVSyhXq
	wKslo5Vkm6AJ7hARA/hC1XcyrPHY142yjS/jVvndwypHMWt7Dbw9BTcpRCgS3Vz66edkmctpl+poZ
	3E+4rc9zvhD3xbQyFuyCAbo7l6lqpdNZ9qDpCsKQ2igF+cXYWXCTAJv3c6aNurkZ2Tiq0khJQ+HDI
	V9ltTwiOgNgPtpzgXuZQ9dvJp6S6yz0k64Cxzq4WNlbNkvOkrTBX/NTS7ShvU1zBWNTaNRByOel9i
	FzINSNyaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSj6O-0005LM-59; Sun, 26 Apr 2020 15:21:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSj6K-0005KH-CY
 for linux-riscv@lists.infradead.org; Sun, 26 Apr 2020 15:21:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id z6so17465317wml.2
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 08:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Oec0onKReyMxClDdJY4/0WsT5jFsmRnzuCNfEJGndcY=;
 b=fKbv3cWkTUyDAeQhb386kJbwXWqxg0I/EcVVdTNgbFlmukh7OcHDr2el0Z133lHTDQ
 rxS5IcZtRpqE7nRsGYrFhrIxnCFwjYWP8IHg976WeSQXCo84T11bEpYW+0MFzEOk508C
 E4HMKA28awoKmTVPkiBCsjG4JdS9bGt2ybDf2ODOKYwVBpEWqTihfRcew5iQt5iUkV21
 S2GF1loV+k1tDi3VZLnM44qJcJSKXqPVN37UynAL89yRacAXTShmZBdmSemblCffHmOI
 7istGl3jc1IU3ewbbuDUApzG8AQHnda1YIXrVCYAMfUc1oFW80T6k3GjL1gYAof3SA5p
 qoxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Oec0onKReyMxClDdJY4/0WsT5jFsmRnzuCNfEJGndcY=;
 b=Szp/jPE9Ggx5pP2MLFlUZvq1uI375HaXtiJo9zjzeueKyzXONQtQ1YMlt0LCMl6rXr
 gRCC06e9w92eXTDmZIkB3Y40qt8sLp3+DIhZgBVM8tdr1lN2NuaA4DwM7Y25tjKSmE2H
 EIiC9UWt0olFXwGDjF/iTqKe8rvuP4OGjSWvdhBJI+6Rr8K4SE28TTKipvd15xOSooLu
 /PTW7r0veL0UK/KrL9QLJD99IN14FGSK0EhmEoutNuPNZOgrgf66VAgFP8rPbi9PbMsv
 xDFeFUNXbopaXPN5LtlmjEPnHOE3TfXzkb2HFSLyV5pCDNNGD94qozJuMnvGpom8MoFq
 Os6Q==
X-Gm-Message-State: AGi0PuY9BslxIPwEbHjD3R0qTOoDkWPV12rIofe7o54OApOyefGFOpoc
 KPyQAr6JD+Y4QSUEhvBWjP7qLTgXhcKWpR/7vSObbA==
X-Google-Smtp-Source: APiQypJbk1KuqjHN1WWjZ35IfpPcCrrEJbET0XHjFL6wF5iUqZ47hcKHcFlXnzwn/3ge4BYKCgPzZPxodt9DTgzjh68=
X-Received: by 2002:a1c:7301:: with SMTP id d1mr22595992wmb.26.1587914505976; 
 Sun, 26 Apr 2020 08:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200426110740.123638-1-zong.li@sifive.com>
 <CAAhSdy3FCdzLV-nH03T=PBxB2tdZXhRrugcC2NcoA=22qpv+Lw@mail.gmail.com>
 <CANXhq0qW9ORoZ5qc5g8ikO9QdeYX=p0fwoP8pyFFkk02a7imnw@mail.gmail.com>
 <CAAhSdy2f2-SQP6TdgxA0HM2ft3eBJd6kEkB--RH=2gUuLktXLQ@mail.gmail.com>
 <CANXhq0pDYa2QfGZX87d5gyO5V2uzA3-ttPZXf7s1EkMUcG37Cw@mail.gmail.com>
In-Reply-To: <CANXhq0pDYa2QfGZX87d5gyO5V2uzA3-ttPZXf7s1EkMUcG37Cw@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 26 Apr 2020 20:51:34 +0530
Message-ID: <CAAhSdy188_Kkfsz2bX05T3Rr12XDNtwGiwfqaT2TFVW7auGUaw@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: allow many cores to handle IRQs
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_082148_479936_F1DF5B5C 
X-CRM114-Status: GOOD (  30.97  )
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

On Sun, Apr 26, 2020 at 8:42 PM Zong Li <zong.li@sifive.com> wrote:
>
> On Sun, Apr 26, 2020 at 9:38 PM Anup Patel <anup@brainfault.org> wrote:
> >
> > +Mark Z
> >
> > On Sun, Apr 26, 2020 at 6:49 PM Zong Li <zong.li@sifive.com> wrote:
> > >
> > > On Sun, Apr 26, 2020 at 8:47 PM Anup Patel <anup@brainfault.org> wrote:
> > > >
> > > > On Sun, Apr 26, 2020 at 4:37 PM Zong Li <zong.li@sifive.com> wrote:
> > > > >
> > > > > Currently, driver forces the IRQs to be handled by only one core. This
> > > > > patch provides the way to enable others cores to handle IRQs if needed,
> > > > > so users could decide how many cores they wanted on default by boot
> > > > > argument.
> > > > >
> > > > > Use 'irqaffinity' boot argument to determine affinity. If there is no
> > > > > irqaffinity in dts or kernel configuration, use irq default affinity,
> > > > > so all harts would try to claim IRQ.
> > > > >
> > > > > For example, add irqaffinity=0 in chosen node to set irq affinity to
> > > > > hart 0. It also supports more than one harts to handle irq, such as set
> > > > > irqaffinity=0,3,4.
> > > > >
> > > > > You can change IRQ affinity from user-space using procfs. For example,
> > > > > you can make CPU0 and CPU2 serve IRQ together by the following command:
> > > > >
> > > > > echo 4 > /proc/irq/<x>/smp_affinity
> > > > >
> > > > > Signed-off-by: Zong Li <zong.li@sifive.com>
> > > > > ---
> > > > >  drivers/irqchip/irq-sifive-plic.c | 21 +++++++--------------
> > > > >  1 file changed, 7 insertions(+), 14 deletions(-)
> > > > >
> > > > > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> > > > > index d0a71febdadc..bc1440d54185 100644
> > > > > --- a/drivers/irqchip/irq-sifive-plic.c
> > > > > +++ b/drivers/irqchip/irq-sifive-plic.c
> > > > > @@ -111,15 +111,12 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
> > > > >  static void plic_irq_unmask(struct irq_data *d)
> > > > >  {
> > > > >         struct cpumask amask;
> > > > > -       unsigned int cpu;
> > > > >         struct plic_priv *priv = irq_get_chip_data(d->irq);
> > > > >
> > > > >         cpumask_and(&amask, &priv->lmask, cpu_online_mask);
> > > > > -       cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
> > > > > -                                          &amask);
> > > > > -       if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
> > > > > -               return;
> > > > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > > > +       cpumask_and(&amask, &amask, irq_data_get_affinity_mask(d));
> > > > > +
> > > > > +       plic_irq_toggle(&amask, d, 1);
> > > > >  }
> > > > >
> > > > >  static void plic_irq_mask(struct irq_data *d)
> > > > > @@ -133,24 +130,20 @@ static void plic_irq_mask(struct irq_data *d)
> > > > >  static int plic_set_affinity(struct irq_data *d,
> > > > >                              const struct cpumask *mask_val, bool force)
> > > > >  {
> > > > > -       unsigned int cpu;
> > > > >         struct cpumask amask;
> > > > >         struct plic_priv *priv = irq_get_chip_data(d->irq);
> > > > >
> > > > >         cpumask_and(&amask, &priv->lmask, mask_val);
> > > > >
> > > > >         if (force)
> > > > > -               cpu = cpumask_first(&amask);
> > > > > +               cpumask_copy(&amask, mask_val);
> > > > >         else
> > > > > -               cpu = cpumask_any_and(&amask, cpu_online_mask);
> > > > > -
> > > > > -       if (cpu >= nr_cpu_ids)
> > > > > -               return -EINVAL;
> > > > > +               cpumask_and(&amask, &amask, cpu_online_mask);
> > > > >
> > > > >         plic_irq_toggle(&priv->lmask, d, 0);
> > > > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > > > +       plic_irq_toggle(&amask, d, 1);
> > > > >
> > > > > -       irq_data_update_effective_affinity(d, cpumask_of(cpu));
> > > > > +       irq_data_update_effective_affinity(d, &amask);
> > > > >
> > > > >         return IRQ_SET_MASK_OK_DONE;
> > > > >  }
> > > > > --
> > > > > 2.26.1
> > > > >
> > > >
> > > > I strongly oppose (NACK) this patch due to performance reasons.
> > > >
> > > > In PLIC, if we enable an IRQ X for N CPUs then when IRQ X occurs:
> > > > 1) All N CPUs will take interrupt
> > > > 2) All N CPUs will try to read PLIC CLAIM register
> > > > 3) Only one of the CPUs will see IRQ X using the CLAIM register
> > > > but other N - 1 CPUs will see no interrupt and return back to what
> > > > they were doing. In other words, N - 1 CPUs will just waste CPU
> > > > every time IRQ X occurs.
> > > >
> > > > Example1, one Application doing heavy network traffic will
> > > > degrade performance of other applications because with every
> > > > network RX/TX interrupt N-1 CPUs will waste CPU trying to
> > > > process network interrupt.
> > > >
> > > > Example1, one Application doing heavy MMC/SD traffic will
> > > > degrade performance of other applications because with every
> > > > SPI read/write interrupt N-1 CPUs will waste CPU trying to
> > > > process it.
> > > >
> > > > In fact, the current PLIC approach is actually a performance
> > > > optimization. This implementation also works fine with in-kernel
> > > > load-balancer and user space load balancer.
> > > >
> > >
> > > Yes, it's exactly, I know what you pointed out. But the idea of this
> > > patch is just providing a way that users could enable other cores if
> > > they wanted, it could still enable only one core by this change. The
> > > purpose here is thinking of flexible use, rather than limitation.
> > > Maybe it would be a happy medium that we make the default case enable
> > > only one core? It is a good open discussion.
> >
> > Making the default case as enable only one core is just a work-around.
> >
> > As-per my understanding, if we set affinity mask of N CPUs for IRQ X
> > then it does not mean all N CPUs should receive IRQ X rather it means
> > that exactly one of the N CPUs will receive IRQ X and the IRQ receiving
> > CPU will be fixed (reflected by effective affinity returned by the driver).
>
> is there a case that we only bundle the IRQ to CPU0, but CPU0 is more
> much busy than other CPUs, and it would be better if another CPU could
> take the IRQ?

This is a common problem across architectures.

To tackle this, we typically run irqbalance daemon in user-space which will
change IRQ affinity based on CPU load.

Refer, https://linux.die.net/man/1/irqbalance

>
> >
> > If we ignore above semantics and still provide a mechanism to target
> > IRQ X to N CPUs then most likely someone will try and run into
> > performance issues.
> >
> > Please don't go this path. The performance impact in case of Guest/VM
> > is even worst because PLIC is trap-n-emulated by hypervisors as MMIO
> > device.
>
> OK, I won't persist in that, just wanna figure out the situation.
>
> >
> > Regards,
> > Anup

Regards,
Anup

