Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE781B97BE
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 08:50:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PVKCPVALnvwEaD1U6h5gcX2vEpDpla/uMGs4UxNrgo=; b=C9bh5WXTb5x4ci
	shycqpCAnEToOT5WpxyjEkzVqgfg/35f2FHr3VdhE/RRriWoy8e4p09fK+q7D8GsuUTSfqIUTweQY
	Em6G/PN/V5JSoNFJAyXhTk4aOUAc75R92mv2Bhk/I97iM25Tpa/Xabb4Tu7hLGYjU1YVSBTCcTC9D
	lgMhDVg8+GLmLcTV5xFMlmpkGEjVfhbGcYvD6/X2fsl2urCZP450lEaZJNFqyW9U52UJODOhd6hsa
	bCw8FbA+5psOhEDyfekbnig8JDXk6zJUcYAQaboBtRsK9fbFRvMJiVowuJlo22BELxVM3FXRxJgYz
	bHBRB/UTTDRU6fw9sJBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxaY-000294-Ol; Mon, 27 Apr 2020 06:49:58 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxaU-000288-Mi
 for linux-riscv@lists.infradead.org; Mon, 27 Apr 2020 06:49:57 +0000
Received: by mail-qk1-x743.google.com with SMTP id o135so4586077qke.6
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 23:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1PVKCPVALnvwEaD1U6h5gcX2vEpDpla/uMGs4UxNrgo=;
 b=dnof+psRHwMyPQG6q9AUqfbAV+LAZEaYYdzXGpK7uS08Ud2s7wACrrU1FhJgePSRWn
 As3HERLV8aQDCz392ujJWVtQ2zp7Bby4eFUObw/+cUg8OemZ9HNCYeFUDbxhqRm+UB9l
 WgHVng0KHWYMKjDQuQdnvK8GMxQ+lVDxd3iSM92CiwfLKwfCdaJYrtyaOC944UOf3Crb
 P+tsZncrVASVuD9uWj+1z/KDtnNqU7f6lyLvw4ssMDC4nIoM38vs4wMGbu3Kz1acgnFN
 gzTfBTMLeUBWp/MptIk2IFJ+sxlszVD0NiiK0o7T+FC5G8NSCCRGcep4zgV9mHD53uDo
 2XpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1PVKCPVALnvwEaD1U6h5gcX2vEpDpla/uMGs4UxNrgo=;
 b=cDALzdsRPIpOtcgExif9mTee4HPZYHvboXZZ1sUt5MEP5Dutnitzr6DcxoiCUZdm/g
 1tX94Yt+SyuLi09ROZ5UuRu4Qa/n/RcVxK+EpoAoJAYIAYYqPc+uK1PMMmjW/lVBDJBG
 elBTLhPTI5fwdKKFMIYaDzGO3iuMnd1VCypo2Abs6D8+Zh/T3qZ5K8szzX+A/I1Qm/fE
 qZTJ1QIlyI7xwVaiVoxmQ4mX3YeKIWtbAgLgy56+gl9D/8GNQOJ3BVSO2752E32d6mni
 kjMy7TYm890vk3CleBZd6e/b/6RNmIFC9J2leK/WZ8byFi3F9bgh1F8yQ3lqVtkqdXd5
 rung==
X-Gm-Message-State: AGi0Pua7qs1foXItmi7j1YSoyueDzYMb/0lpo0GZ8JJUD/LXT/16hh0K
 43H5K1vMkaPJ6BNwHGkwrNPAPgOMNC/pLByy1Faz7w==
X-Google-Smtp-Source: APiQypIeh88b6nTXu37F/D2EhkcMWCvN3p06uEFyOroXB45mhT/g7603VxSPSZNbJ7xigEPD0SZyZuV+VXVrxMTsTbE=
X-Received: by 2002:a37:91c6:: with SMTP id
 t189mr20287581qkd.280.1587970193304; 
 Sun, 26 Apr 2020 23:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200426110740.123638-1-zong.li@sifive.com>
 <CAAhSdy3FCdzLV-nH03T=PBxB2tdZXhRrugcC2NcoA=22qpv+Lw@mail.gmail.com>
 <CANXhq0qW9ORoZ5qc5g8ikO9QdeYX=p0fwoP8pyFFkk02a7imnw@mail.gmail.com>
 <CAAhSdy2f2-SQP6TdgxA0HM2ft3eBJd6kEkB--RH=2gUuLktXLQ@mail.gmail.com>
 <CANXhq0pDYa2QfGZX87d5gyO5V2uzA3-ttPZXf7s1EkMUcG37Cw@mail.gmail.com>
 <CAAhSdy188_Kkfsz2bX05T3Rr12XDNtwGiwfqaT2TFVW7auGUaw@mail.gmail.com>
 <CANXhq0qGq33u34q7nhJE4GG03pZ8BBJrnusr=FgmTeJwtq-=4Q@mail.gmail.com>
In-Reply-To: <CANXhq0qGq33u34q7nhJE4GG03pZ8BBJrnusr=FgmTeJwtq-=4Q@mail.gmail.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Mon, 27 Apr 2020 14:49:42 +0800
Message-ID: <CAHCEeh+FVYd6GKDuN4fXz9ku57vmdyVR1y_mzu89-sanNa_E3A@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: allow many cores to handle IRQs
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_234955_263090_03DC6CE2 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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
Cc: Marc Zyngier <maz@kernel.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Zong Li <zong.li@sifive.com> =E6=96=BC 2020=E5=B9=B44=E6=9C=8826=E6=97=A5 =
=E9=80=B1=E6=97=A5 =E4=B8=8B=E5=8D=8811:35=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Sun, Apr 26, 2020 at 11:21 PM Anup Patel <anup@brainfault.org> wrote:
> >
> > On Sun, Apr 26, 2020 at 8:42 PM Zong Li <zong.li@sifive.com> wrote:
> > >
> > > On Sun, Apr 26, 2020 at 9:38 PM Anup Patel <anup@brainfault.org> wrot=
e:
> > > >
> > > > +Mark Z
> > > >
> > > > On Sun, Apr 26, 2020 at 6:49 PM Zong Li <zong.li@sifive.com> wrote:
> > > > >
> > > > > On Sun, Apr 26, 2020 at 8:47 PM Anup Patel <anup@brainfault.org> =
wrote:
> > > > > >
> > > > > > On Sun, Apr 26, 2020 at 4:37 PM Zong Li <zong.li@sifive.com> wr=
ote:
> > > > > > >
> > > > > > > Currently, driver forces the IRQs to be handled by only one c=
ore. This
> > > > > > > patch provides the way to enable others cores to handle IRQs =
if needed,
> > > > > > > so users could decide how many cores they wanted on default b=
y boot
> > > > > > > argument.
> > > > > > >
> > > > > > > Use 'irqaffinity' boot argument to determine affinity. If the=
re is no
> > > > > > > irqaffinity in dts or kernel configuration, use irq default a=
ffinity,
> > > > > > > so all harts would try to claim IRQ.
> > > > > > >
> > > > > > > For example, add irqaffinity=3D0 in chosen node to set irq af=
finity to
> > > > > > > hart 0. It also supports more than one harts to handle irq, s=
uch as set
> > > > > > > irqaffinity=3D0,3,4.
> > > > > > >
> > > > > > > You can change IRQ affinity from user-space using procfs. For=
 example,
> > > > > > > you can make CPU0 and CPU2 serve IRQ together by the followin=
g command:
> > > > > > >
> > > > > > > echo 4 > /proc/irq/<x>/smp_affinity
> > > > > > >
> > > > > > > Signed-off-by: Zong Li <zong.li@sifive.com>
> > > > > > > ---
> > > > > > >  drivers/irqchip/irq-sifive-plic.c | 21 +++++++--------------
> > > > > > >  1 file changed, 7 insertions(+), 14 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqc=
hip/irq-sifive-plic.c
> > > > > > > index d0a71febdadc..bc1440d54185 100644
> > > > > > > --- a/drivers/irqchip/irq-sifive-plic.c
> > > > > > > +++ b/drivers/irqchip/irq-sifive-plic.c
> > > > > > > @@ -111,15 +111,12 @@ static inline void plic_irq_toggle(cons=
t struct cpumask *mask,
> > > > > > >  static void plic_irq_unmask(struct irq_data *d)
> > > > > > >  {
> > > > > > >         struct cpumask amask;
> > > > > > > -       unsigned int cpu;
> > > > > > >         struct plic_priv *priv =3D irq_get_chip_data(d->irq);
> > > > > > >
> > > > > > >         cpumask_and(&amask, &priv->lmask, cpu_online_mask);
> > > > > > > -       cpu =3D cpumask_any_and(irq_data_get_affinity_mask(d)=
,
> > > > > > > -                                          &amask);
> > > > > > > -       if (WARN_ON_ONCE(cpu >=3D nr_cpu_ids))
> > > > > > > -               return;
> > > > > > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > > > > > +       cpumask_and(&amask, &amask, irq_data_get_affinity_mas=
k(d));
> > > > > > > +
> > > > > > > +       plic_irq_toggle(&amask, d, 1);
> > > > > > >  }
> > > > > > >
> > > > > > >  static void plic_irq_mask(struct irq_data *d)
> > > > > > > @@ -133,24 +130,20 @@ static void plic_irq_mask(struct irq_da=
ta *d)
> > > > > > >  static int plic_set_affinity(struct irq_data *d,
> > > > > > >                              const struct cpumask *mask_val, =
bool force)
> > > > > > >  {
> > > > > > > -       unsigned int cpu;
> > > > > > >         struct cpumask amask;
> > > > > > >         struct plic_priv *priv =3D irq_get_chip_data(d->irq);
> > > > > > >
> > > > > > >         cpumask_and(&amask, &priv->lmask, mask_val);
> > > > > > >
> > > > > > >         if (force)
> > > > > > > -               cpu =3D cpumask_first(&amask);
> > > > > > > +               cpumask_copy(&amask, mask_val);
> > > > > > >         else
> > > > > > > -               cpu =3D cpumask_any_and(&amask, cpu_online_ma=
sk);
> > > > > > > -
> > > > > > > -       if (cpu >=3D nr_cpu_ids)
> > > > > > > -               return -EINVAL;
> > > > > > > +               cpumask_and(&amask, &amask, cpu_online_mask);
> > > > > > >
> > > > > > >         plic_irq_toggle(&priv->lmask, d, 0);
> > > > > > > -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> > > > > > > +       plic_irq_toggle(&amask, d, 1);
> > > > > > >
> > > > > > > -       irq_data_update_effective_affinity(d, cpumask_of(cpu)=
);
> > > > > > > +       irq_data_update_effective_affinity(d, &amask);
> > > > > > >
> > > > > > >         return IRQ_SET_MASK_OK_DONE;
> > > > > > >  }
> > > > > > > --
> > > > > > > 2.26.1
> > > > > > >
> > > > > >
> > > > > > I strongly oppose (NACK) this patch due to performance reasons.
> > > > > >
> > > > > > In PLIC, if we enable an IRQ X for N CPUs then when IRQ X occur=
s:
> > > > > > 1) All N CPUs will take interrupt
> > > > > > 2) All N CPUs will try to read PLIC CLAIM register
> > > > > > 3) Only one of the CPUs will see IRQ X using the CLAIM register
> > > > > > but other N - 1 CPUs will see no interrupt and return back to w=
hat
> > > > > > they were doing. In other words, N - 1 CPUs will just waste CPU
> > > > > > every time IRQ X occurs.
> > > > > >
> > > > > > Example1, one Application doing heavy network traffic will
> > > > > > degrade performance of other applications because with every
> > > > > > network RX/TX interrupt N-1 CPUs will waste CPU trying to
> > > > > > process network interrupt.
> > > > > >
> > > > > > Example1, one Application doing heavy MMC/SD traffic will
> > > > > > degrade performance of other applications because with every
> > > > > > SPI read/write interrupt N-1 CPUs will waste CPU trying to
> > > > > > process it.
> > > > > >

Hi Anup,

If there is a case that there are a lot of interrupts from a single
irq number coming very quickly, the first hart is still serving the
first interrupt and still in its top half so it doesn't enable
interrupt yet but the second interrupt is coming and waiting, only the
rest of the harts can serve it. If they are masked, the interrupt
won't be able to be served it right away. In this case, I think this
patch can get better performance. Maybe we can still keep this patch
for user to define their usage in his case?

