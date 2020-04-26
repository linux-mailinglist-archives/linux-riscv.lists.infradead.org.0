Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0314E1B912F
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 17:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UTSGgGHjq8kp92QkvHlpZms09I8imqKy0zzF+tlAzVs=; b=FpKbxndUe3m28GxWL5SGpijy/
	3dtD7/KouCoevurQNA68R7k6XSXug1brSlPk9Zj6Ic5Pi0etldqKSz5jdmXICEjq9LI66r5JYMURw
	u7Uq+/JgeN7Q66+JuF8lkwmjtycNcGweOXGrP116Bqsn98diCyS2sqpZGGxWvTy/cdeFBzssSNCFy
	P1sFiX4TPXoJb4jlhAB2fD6SkqqdZXOLTwSf28vca8iQvXAbtk4OUJ1Xzy+wY95qAX+0+WiTpr+L2
	PAFXaDqR1YMPqvZ202TRsNCeZaCbU5gzLDo23OqOS4qkNMpHgDHGiRw+Y6J7yZZCYS+QBydcqsz8I
	tJ9Vuv7WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSjJc-00021g-J0; Sun, 26 Apr 2020 15:35:32 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSjJX-0001gA-Ku
 for linux-riscv@lists.infradead.org; Sun, 26 Apr 2020 15:35:29 +0000
Received: by mail-ot1-x343.google.com with SMTP id b13so21745110oti.3
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 08:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UTSGgGHjq8kp92QkvHlpZms09I8imqKy0zzF+tlAzVs=;
 b=N2pZkcFKfYnH8MFQH1XBAgwpkBWtTWqg1Wp5m386SheDJzx/oyzGkstPWyev5lbnks
 vdViFeava3/mHV7DbMKdozanXzme/Hb4IS0Iu9Cgmvjx44HqtrstIHlx0FvtGOvagvQk
 oKW9FAXQq4cnifGaG6dTKWz/QFf7maWyGnWwkdxRr6jFf6s2exCq9+giNlX9Q1k9dSmx
 wYkfkwekV8crM+CdfX8vSFWlD4jIGO+ebfJE6rv/EDazg9aBr+dj8VrfZYlBJSP8DCbp
 Vgj6vRutX5S4eQerx4f+1+nK1xh9r9cZ4BG+nX2ba3cfyNAzv1+a002Jv2dGuZwNSD9L
 vLTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UTSGgGHjq8kp92QkvHlpZms09I8imqKy0zzF+tlAzVs=;
 b=g4f2iC4dG/TR0yxrQV31wAqqL+HDbKuiI4a45xvJbNyB7FIzuHMLT8WU6kccOJDK0p
 szXBDjeIqeF1sZdsANEDbgBHM6aNrICNntyKczXojtDmuXrRePpydi8N44jpGZ9BcAKP
 SwWqOnTtI/j8gLfVsSAgPAR/6dDwLFP6E8E4j3biwCXvv2q354JX59O6Xduaip6lgPmD
 eiNPbDjQNlU66ZNFFoo6NDPMsvJ+qANQ+6SVwxt5xY4kah+zCj0TsCL6oIWX9uJVjDpz
 sl7S46aZeSjG177y4G6k2CwJaTDYwt23PZ4JNh2BlixqfzV+RRoj7ricR99uILuv91Vv
 hQCA==
X-Gm-Message-State: AGi0PuZiOAmXyJvZ7eaVr46DPPZqkAq8vnCoDeRD+yeRQNGUbHUGxl6P
 oS18fOaKfwBJC7YBS8qzyDzgGG2mCikkbJIck5npAw==
X-Google-Smtp-Source: APiQypLNBOzO4kpsgeeFpRJdaFaQ8h8ZKwsOveqkxyYnkjXmAPDH3ozDDLlPWcyUxvefYHZVcSlpJJ1A3+ulGOMBEBY=
X-Received: by 2002:a05:6808:24e:: with SMTP id
 m14mr12552367oie.116.1587915326594; 
 Sun, 26 Apr 2020 08:35:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200426110740.123638-1-zong.li@sifive.com>
 <CAAhSdy3FCdzLV-nH03T=PBxB2tdZXhRrugcC2NcoA=22qpv+Lw@mail.gmail.com>
 <CANXhq0qW9ORoZ5qc5g8ikO9QdeYX=p0fwoP8pyFFkk02a7imnw@mail.gmail.com>
 <CAAhSdy2f2-SQP6TdgxA0HM2ft3eBJd6kEkB--RH=2gUuLktXLQ@mail.gmail.com>
 <CANXhq0pDYa2QfGZX87d5gyO5V2uzA3-ttPZXf7s1EkMUcG37Cw@mail.gmail.com>
 <CAAhSdy188_Kkfsz2bX05T3Rr12XDNtwGiwfqaT2TFVW7auGUaw@mail.gmail.com>
In-Reply-To: <CAAhSdy188_Kkfsz2bX05T3Rr12XDNtwGiwfqaT2TFVW7auGUaw@mail.gmail.com>
From: Zong Li <zong.li@sifive.com>
Date: Sun, 26 Apr 2020 23:35:16 +0800
Message-ID: <CANXhq0qGq33u34q7nhJE4GG03pZ8BBJrnusr=FgmTeJwtq-=4Q@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: allow many cores to handle IRQs
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_083527_877285_51AF9EFF 
X-CRM114-Status: GOOD (  31.46  )
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

On Sun, Apr 26, 2020 at 11:21 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Sun, Apr 26, 2020 at 8:42 PM Zong Li <zong.li@sifive.com> wrote:
> >
> > On Sun, Apr 26, 2020 at 9:38 PM Anup Patel <anup@brainfault.org> wrote:
> > >
> > > +Mark Z
> > >
> > > On Sun, Apr 26, 2020 at 6:49 PM Zong Li <zong.li@sifive.com> wrote:
> > > >
> > > > On Sun, Apr 26, 2020 at 8:47 PM Anup Patel <anup@brainfault.org> wrote:
> > > > >
> > > > > On Sun, Apr 26, 2020 at 4:37 PM Zong Li <zong.li@sifive.com> wrote:
> > > > > >
> > > > > > Currently, driver forces the IRQs to be handled by only one core. This
> > > > > > patch provides the way to enable others cores to handle IRQs if needed,
> > > > > > so users could decide how many cores they wanted on default by boot
> > > > > > argument.
> > > > > >
> > > > > > Use 'irqaffinity' boot argument to determine affinity. If there is no
> > > > > > irqaffinity in dts or kernel configuration, use irq default affinity,
> > > > > > so all harts would try to claim IRQ.
> > > > > >
> > > > > > For example, add irqaffinity=0 in chosen node to set irq affinity to
> > > > > > hart 0. It also supports more than one harts to handle irq, such as set
> > > > > > irqaffinity=0,3,4.
> > > > > >
> > > > > > You can change IRQ affinity from user-space using procfs. For example,
> > > > > > you can make CPU0 and CPU2 serve IRQ together by the following command:
> > > > > >
> > > > > > echo 4 > /proc/irq/<x>/smp_affinity
> > > > > >
> > > > > > Signed-off-by: Zong Li <zong.li@sifive.com>
> > > > > > ---
> > > > > >  drivers/irqchip/irq-sifive-plic.c | 21 +++++++--------------
> > > > > >  1 file changed, 7 insertions(+), 14 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> > > > > > index d0a71febdadc..bc1440d54185 100644
> > > > > > --- a/drivers/irqchip/irq-sifive-plic.c
> > > > > > +++ b/drivers/irqchip/irq-sifive-plic.c
> > > > > > @@ -111,15 +111,12 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
> > > > > >  static void plic_irq_unmask(struct irq_data *d)
> > > > > >  {
> > > > > >         struct cpumask amask;
> > > > > > -       unsigned int cpu;
> > > > > >         struct plic_priv *priv = irq_get_chip_data(d->irq);
> > > > > >
> > > > > >         cpumask_and(&amask, &priv->lmask, cpu_online_mask);
> > > > > > -       cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
> > > > > > -                                          &amask);
> > > > > > -       if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
> > > > > > -               return;
> > > > > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > > > > +       cpumask_and(&amask, &amask, irq_data_get_affinity_mask(d));
> > > > > > +
> > > > > > +       plic_irq_toggle(&amask, d, 1);
> > > > > >  }
> > > > > >
> > > > > >  static void plic_irq_mask(struct irq_data *d)
> > > > > > @@ -133,24 +130,20 @@ static void plic_irq_mask(struct irq_data *d)
> > > > > >  static int plic_set_affinity(struct irq_data *d,
> > > > > >                              const struct cpumask *mask_val, bool force)
> > > > > >  {
> > > > > > -       unsigned int cpu;
> > > > > >         struct cpumask amask;
> > > > > >         struct plic_priv *priv = irq_get_chip_data(d->irq);
> > > > > >
> > > > > >         cpumask_and(&amask, &priv->lmask, mask_val);
> > > > > >
> > > > > >         if (force)
> > > > > > -               cpu = cpumask_first(&amask);
> > > > > > +               cpumask_copy(&amask, mask_val);
> > > > > >         else
> > > > > > -               cpu = cpumask_any_and(&amask, cpu_online_mask);
> > > > > > -
> > > > > > -       if (cpu >= nr_cpu_ids)
> > > > > > -               return -EINVAL;
> > > > > > +               cpumask_and(&amask, &amask, cpu_online_mask);
> > > > > >
> > > > > >         plic_irq_toggle(&priv->lmask, d, 0);
> > > > > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > > > > +       plic_irq_toggle(&amask, d, 1);
> > > > > >
> > > > > > -       irq_data_update_effective_affinity(d, cpumask_of(cpu));
> > > > > > +       irq_data_update_effective_affinity(d, &amask);
> > > > > >
> > > > > >         return IRQ_SET_MASK_OK_DONE;
> > > > > >  }
> > > > > > --
> > > > > > 2.26.1
> > > > > >
> > > > >
> > > > > I strongly oppose (NACK) this patch due to performance reasons.
> > > > >
> > > > > In PLIC, if we enable an IRQ X for N CPUs then when IRQ X occurs:
> > > > > 1) All N CPUs will take interrupt
> > > > > 2) All N CPUs will try to read PLIC CLAIM register
> > > > > 3) Only one of the CPUs will see IRQ X using the CLAIM register
> > > > > but other N - 1 CPUs will see no interrupt and return back to what
> > > > > they were doing. In other words, N - 1 CPUs will just waste CPU
> > > > > every time IRQ X occurs.
> > > > >
> > > > > Example1, one Application doing heavy network traffic will
> > > > > degrade performance of other applications because with every
> > > > > network RX/TX interrupt N-1 CPUs will waste CPU trying to
> > > > > process network interrupt.
> > > > >
> > > > > Example1, one Application doing heavy MMC/SD traffic will
> > > > > degrade performance of other applications because with every
> > > > > SPI read/write interrupt N-1 CPUs will waste CPU trying to
> > > > > process it.
> > > > >
> > > > > In fact, the current PLIC approach is actually a performance
> > > > > optimization. This implementation also works fine with in-kernel
> > > > > load-balancer and user space load balancer.
> > > > >
> > > >
> > > > Yes, it's exactly, I know what you pointed out. But the idea of this
> > > > patch is just providing a way that users could enable other cores if
> > > > they wanted, it could still enable only one core by this change. The
> > > > purpose here is thinking of flexible use, rather than limitation.
> > > > Maybe it would be a happy medium that we make the default case enable
> > > > only one core? It is a good open discussion.
> > >
> > > Making the default case as enable only one core is just a work-around.
> > >
> > > As-per my understanding, if we set affinity mask of N CPUs for IRQ X
> > > then it does not mean all N CPUs should receive IRQ X rather it means
> > > that exactly one of the N CPUs will receive IRQ X and the IRQ receiving
> > > CPU will be fixed (reflected by effective affinity returned by the driver).
> >
> > is there a case that we only bundle the IRQ to CPU0, but CPU0 is more
> > much busy than other CPUs, and it would be better if another CPU could
> > take the IRQ?
>
> This is a common problem across architectures.
>
> To tackle this, we typically run irqbalance daemon in user-space which will
> change IRQ affinity based on CPU load.
>
> Refer, https://linux.die.net/man/1/irqbalance

OK, thank you for the information and figuring out the issue. Let's
stop this patch unless there are other voices.

>
> >
> > >
> > > If we ignore above semantics and still provide a mechanism to target
> > > IRQ X to N CPUs then most likely someone will try and run into
> > > performance issues.
> > >
> > > Please don't go this path. The performance impact in case of Guest/VM
> > > is even worst because PLIC is trap-n-emulated by hypervisors as MMIO
> > > device.
> >
> > OK, I won't persist in that, just wanna figure out the situation.
> >
> > >
> > > Regards,
> > > Anup
>
> Regards,
> Anup

