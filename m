Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148711F09D3
	for <lists+linux-riscv@lfdr.de>; Sun,  7 Jun 2020 06:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VyNLD0j+tnzf2M3FBuh45mIoPsUs+mXZDXgfBassdbg=; b=Hyc+hMKjX8lj43o1vMn6HSXq5
	ShxiNUGuKbxlnPfSsqhuke6kJzyxmpVEeTF6tMy3OXoZsqMX2eInKcE0T4SM8rI5mDY4ki/7mgQ3i
	suaeyLuPdPcCkoPW/moef8ZmI6zuBQuqBFxOS+nTCLtTA/eNDYT7JbsKQVvbWaIATn5yQiVbzJFPI
	EnzQXIAUJcUVzszF0oTjkK7zb/+bzDrmYVUat4vzJcPQCPL9HNtt6Ipdtq8aSjPIOR/jrSb6Bt3cJ
	NYKlsxV68AzEo0lxrc9QjSO27JK5Tj659hB6tNIMNaRVJ6/OWlrhc4yDWpeUD0/MI6b+idAQn4XIR
	xnjAjimLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhmyR-0008Ej-Se; Sun, 07 Jun 2020 04:31:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhmyO-0008EI-Nh
 for linux-riscv@lists.infradead.org; Sun, 07 Jun 2020 04:31:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id p5so13853243wrw.9
 for <linux-riscv@lists.infradead.org>; Sat, 06 Jun 2020 21:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VyNLD0j+tnzf2M3FBuh45mIoPsUs+mXZDXgfBassdbg=;
 b=0dnVgKVXr2OGN0RiL5Q3LNUBAoOehM9ejkv/hGkZowwOowUjxR5cBpF9q9YDqLRZtz
 W/T7vvIsflGTbaKeJpExluyj4QITSPyuxXcm3dUGdQhXnGntYR5S6yhlm9exN7CYTPoO
 PhJkTIFhMbiihX2NECOo/CKM0ZE7bCrfbHTTehgQUBvFEYP7wN4jkaK1CMseGsKlasM3
 khhcUdhLzEGjyhiyCDbbvbkCDkX5dblWGlBIMdh/cWL3w4MYzrjTbVi8qhTt61nEkRqE
 LreVyZWvgpV9nnpNaiqsPcRw2uVjEUdskAvVkglQqbI2k//7WHBtpwwBZ1TqGyYm+aak
 heCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VyNLD0j+tnzf2M3FBuh45mIoPsUs+mXZDXgfBassdbg=;
 b=jsgJNj7IkVhEzbI8aDhba+dkJuivCDd+IumcchSgkRHLOiieZADZQesFAZKrQJfM/r
 +Z6CCNwNKe2vbj/UAggQLFtoUjHAxkS9+G649osE57B/XAasfnpPPIRm3IsleFOFTfuv
 vAdHBG+AeqgN2ItceGDyjt9Cu5pw0WM8Zt2GceebzzqlldxCADdBDk+yGpdN5e67/2f6
 c+L2bvGmpBvMG7/kcIPGqkCb6jPLdfvxdoOZLRYmlkpAY+L+T+7JfM6HHRohdWLVPx5V
 PU0A8f8I2UV15lf4m/Fz9uDDpuP4lyTXIIVNlaG8iSJFqexMVl4L4sarq1YnrMgy9kWN
 CP2A==
X-Gm-Message-State: AOAM5300uxMLnUcCtUoT7o5UidnLohwJqEoKfc7KVGHnJEZbySVh2121
 KyVXFV+CiAtVMIKN3dUr7vx8NbSCPTjpCrIuWQKELw==
X-Google-Smtp-Source: ABdhPJxp1a1ocgsIfMmX025/VEhbEKi29wp+HyxE/XS+cqOjJ7U09UlG62QjVDSEd/4+78NsyJ9Lgb67dAJGErgylLE=
X-Received: by 2002:a5d:6cc1:: with SMTP id c1mr17819454wrc.144.1591504310119; 
 Sat, 06 Jun 2020 21:31:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200521134544.816918-2-anup.patel@wdc.com>
 <mhng-b031fd3d-c966-4973-a94d-3307d11b44d5@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-b031fd3d-c966-4973-a94d-3307d11b44d5@palmerdabbelt-glaptop1>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 7 Jun 2020 10:01:38 +0530
Message-ID: <CAAhSdy1mS3XQF=m8b0qug_8WL6hZUupUOcqPuHTKqK7fbxWuEg@mail.gmail.com>
Subject: Re: [PATCH 1/5] RISC-V: Add mechanism to provide custom IPI operations
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_213152_774094_186A3453 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <Damien.LeMoal@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 2:10 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Thu, 21 May 2020 06:45:40 PDT (-0700), Anup Patel wrote:
> > We add mechanism to set custom IPI operations so that CLINT driver
> > from drivers directory can provide custom IPI operations.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  arch/riscv/include/asm/smp.h | 11 ++++++++
> >  arch/riscv/kernel/smp.c      | 52 ++++++++++++++++++++++++------------
> >  arch/riscv/kernel/smpboot.c  |  3 +--
> >  3 files changed, 47 insertions(+), 19 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
> > index 40bb1c15a731..ad0601260cb1 100644
> > --- a/arch/riscv/include/asm/smp.h
> > +++ b/arch/riscv/include/asm/smp.h
> > @@ -40,6 +40,17 @@ void arch_send_call_function_single_ipi(int cpu);
> >  int riscv_hartid_to_cpuid(int hartid);
> >  void riscv_cpuid_to_hartid_mask(const struct cpumask *in, struct cpumask *out);
> >
> > +struct riscv_ipi_ops {
> > +     void (*ipi_inject)(const unsigned long *hart_mask);
> > +     void (*ipi_clear)(void);
> > +};
> > +
> > +/* Set custom IPI operations */
> > +void riscv_set_ipi_ops(struct riscv_ipi_ops *ops);
> > +
> > +/* Clear IPI for current CPU */
> > +void riscv_clear_ipi(void);
> > +
> >  /*
> >   * Obtains the hart ID of the currently executing task.  This relies on
> >   * THREAD_INFO_IN_TASK, but we define that unconditionally.
> > diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> > index b1d4f452f843..8375cc5970f6 100644
> > --- a/arch/riscv/kernel/smp.c
> > +++ b/arch/riscv/kernel/smp.c
> > @@ -84,6 +84,35 @@ static void ipi_stop(void)
> >               wait_for_interrupt();
> >  }
> >
> > +#if IS_ENABLED(CONFIG_RISCV_SBI)
> > +static void clear_ipi(void)
> > +{
> > +     csr_clear(CSR_IP, IE_SIE);
> > +}
> > +
> > +static struct riscv_ipi_ops sbi_ipi_ops = {
> > +     .ipi_inject = sbi_send_ipi,
> > +     .ipi_clear = clear_ipi,
> > +};
> > +
> > +static struct riscv_ipi_ops *ipi_ops = &sbi_ipi_ops;
> > +#else
> > +static struct riscv_ipi_ops *ipi_ops;
> > +#endif
> > +
> > +void riscv_set_ipi_ops(struct riscv_ipi_ops *ops)
> > +{
> > +     ipi_ops = ops;
> > +}
> > +EXPORT_SYMBOL_GPL(riscv_set_ipi_ops);
> > +
> > +void riscv_clear_ipi(void)
> > +{
> > +     if (ipi_ops)
> > +             ipi_ops->ipi_clear();
> > +}
> > +EXPORT_SYMBOL_GPL(riscv_clear_ipi);
>
> There should at least be a warning on SMP systems when an ipi_ops hasn't been
> set, as otherwise the system will just hang.

Sure, I will add pr_warn() here.

>
> > +
> >  static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
> >  {
> >       struct cpumask hartid_mask;
> > @@ -95,10 +124,9 @@ static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
> >       smp_mb__after_atomic();
> >
> >       riscv_cpuid_to_hartid_mask(mask, &hartid_mask);
> > -     if (IS_ENABLED(CONFIG_RISCV_SBI))
> > -             sbi_send_ipi(cpumask_bits(&hartid_mask));
> > -     else
> > -             clint_send_ipi_mask(mask);
> > +
> > +     if (ipi_ops)
> > +             ipi_ops->ipi_inject(cpumask_bits(&hartid_mask));
> >  }
> >
> >  static void send_ipi_single(int cpu, enum ipi_message_type op)
> > @@ -109,18 +137,8 @@ static void send_ipi_single(int cpu, enum ipi_message_type op)
> >       set_bit(op, &ipi_data[cpu].bits);
> >       smp_mb__after_atomic();
> >
> > -     if (IS_ENABLED(CONFIG_RISCV_SBI))
> > -             sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
> > -     else
> > -             clint_send_ipi_single(hartid);
> > -}
> > -
> > -static inline void clear_ipi(void)
> > -{
> > -     if (IS_ENABLED(CONFIG_RISCV_SBI))
> > -             csr_clear(CSR_IP, IE_SIE);
> > -     else
> > -             clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
> > +     if (ipi_ops)
> > +             ipi_ops->ipi_inject(cpumask_bits(cpumask_of(hartid)));
> >  }
> >
> >  void handle_IPI(struct pt_regs *regs)
> > @@ -131,7 +149,7 @@ void handle_IPI(struct pt_regs *regs)
> >
> >       irq_enter();
> >
> > -     clear_ipi();
> > +     riscv_clear_ipi();
> >
> >       while (true) {
> >               unsigned long ops;
> > diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> > index 4e9922790f6e..5fe849791bf0 100644
> > --- a/arch/riscv/kernel/smpboot.c
> > +++ b/arch/riscv/kernel/smpboot.c
> > @@ -147,8 +147,7 @@ asmlinkage __visible void smp_callin(void)
> >  {
> >       struct mm_struct *mm = &init_mm;
> >
> > -     if (!IS_ENABLED(CONFIG_RISCV_SBI))
> > -             clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
> > +     riscv_clear_ipi();
> >
> >       /* All kernel threads share the same mm context.  */
> >       mmgrab(mm);

Regards,
Anup

