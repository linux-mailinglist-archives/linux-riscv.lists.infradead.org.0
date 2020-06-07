Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B471F098B
	for <lists+linux-riscv@lfdr.de>; Sun,  7 Jun 2020 06:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hoxt6Yva9F352PkyE4qaDfMaCfCL2S0dxZ3JOT5UNPQ=; b=XhImG4Dy9vAvYq3eRbxvl9yPt
	bMWzbr3Ec5iFHvD+P9408o9ZvQh5NLR2jcwdWHwpih5DWRJCgI2t6AURARFS7vE7YxGVIFICncPwg
	nDMX+nb62YEQeYllbl0Jf6X055mYTvCmP2H/ypzlNNeIOu1ITEx2OefsYotMq9guKA4H34HCueK23
	4ZUR7/OVgmoslW5M9jCafSkc7/lbf4q1je5n/FtZgD4TGPlWFAcmaVSF3zNESo0c4c53+KUtfyhCy
	Pk1rfC2BDpzkU7iM5HvMm5fyA5OC9ibWMr4d957IRaODUElokuOU+y1lg4dOORphOj6eMPoAVomY0
	TIngVeNIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhmik-0008S0-00; Sun, 07 Jun 2020 04:15:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhmif-0008RV-VL
 for linux-riscv@lists.infradead.org; Sun, 07 Jun 2020 04:15:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so13874320wro.1
 for <linux-riscv@lists.infradead.org>; Sat, 06 Jun 2020 21:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hoxt6Yva9F352PkyE4qaDfMaCfCL2S0dxZ3JOT5UNPQ=;
 b=z8yCE4yzXeIeXsWocMFnYV8yJO0awdJ7eCsbTpV/DL4MxST3MzeUpuWlZbfwCjVl7D
 fkmxfj8wNKwLFwzIlzUsvPDGzauHVZLZ8NV2sjPh4epjFsNeupkL7o+ImKfWp/b8SIIR
 9+/GfY23XdgAq2NYZmngevZ82i8UxQBlcIsaK+BPeZsqyo9/RPsakk0HaBdqX4ZIrSP+
 Z1co4sPD1oceoiJdgwM7hDP71n4T9AvP3gOS7ThbZIi8blZaY3oPj0mu7UjtEXKSpYM7
 /Rseo7P0x7Ov1AE7nJp0jZetMxpKXXR8ynMhLmgxE3kPu/pjvrhH47VADyQmYjlg96x+
 hFJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hoxt6Yva9F352PkyE4qaDfMaCfCL2S0dxZ3JOT5UNPQ=;
 b=H+M9tcsjU1dscHErXvFiEpiKVWt4aM/pgGYPdXixEtm40i+GVe1DGf7JwDjA0kb7aN
 C4e2cmcNB/JtqVmogxUcVhr62uLyhz1kCRDUw/y8j0//DCiwPD6PLXwBEj3Jo6tgDMek
 LBndamg4BuZY7qt/VFGqSX8E0rTJRsOFB0PB15gPZAVV1HqQaiQg5kfppNcTOcXlA1CB
 4+LDup9yPM5RuLPQAMx8iGlykoDGzlCDBFi/yqsqJOXmM+s1snYTBanjRd0AIxnqC5k/
 dy2y9+uz7amSOqH12BtCaPDUVT8HfglajtJWthPnmNVyQkR2sqtad+09awkhYApYSYmi
 do5Q==
X-Gm-Message-State: AOAM533UlZIcbwFiVQEgaS3hDU+OIBacwlSrl15qZM1vk24RuURueIST
 IHfIGEb96MCApD6MGJBDu+N9yRQyvlLWBiH8i4Bfmg==
X-Google-Smtp-Source: ABdhPJy1TKsmYnFmt1mhxGAm4vlPpWHuwaVoX/KNGOVKxSiGC5cDNzFiySvasFRatsFCjGdiJcM+SYfXyRWRlCzbUqk=
X-Received: by 2002:a5d:4484:: with SMTP id j4mr16823734wrq.325.1591503332327; 
 Sat, 06 Jun 2020 21:15:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200521134544.816918-4-anup.patel@wdc.com>
 <mhng-c95851de-d021-4272-aa99-6e9b492091ea@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-c95851de-d021-4272-aa99-6e9b492091ea@palmerdabbelt-glaptop1>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 7 Jun 2020 09:45:21 +0530
Message-ID: <CAAhSdy3Y08HEJBeib22GwyL0eFE7QeQ5Tbd3EX20M7yriErdsg@mail.gmail.com>
Subject: Re: [PATCH 3/5] clocksource/drivers/timer-riscv: Remove MMIO related
 stuff
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_211538_011337_26E5F82B 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
> On Thu, 21 May 2020 06:45:42 PDT (-0700), Anup Patel wrote:
> > Right now the RISC-V timer is convoluted to support:
> > 1. Linux RISC-V S-mode (with MMU) where it will use TIME CSR
> >    for clocksource and SBI timer calls for clockevent device.
> > 2. Linux RISC-V M-mode (without MMU) where it will use CLINT
> >    MMIO counter register for clocksource and CLINT MMIO compare
> >    register for clockevent device.
> >
> > This patch removes MMIO related stuff from RISC-V timer driver
> > so that we can have a separate CLINT timer driver.
>
> This one will also break bisecting for the K210.

Same comments as PATCH2. This only affects the NoMMU kernel
which is still not 100 % complete due to on-going userspace work.

Regards,
Anup

>
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  arch/riscv/Kconfig                |  2 +-
> >  arch/riscv/include/asm/timex.h    | 28 +++++++---------------------
> >  drivers/clocksource/Kconfig       |  2 +-
> >  drivers/clocksource/timer-riscv.c | 17 ++---------------
> >  4 files changed, 11 insertions(+), 38 deletions(-)
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index 2cf0c83c1a47..bbdc37a78f7b 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -52,7 +52,7 @@ config RISCV
> >       select PCI_DOMAINS_GENERIC if PCI
> >       select PCI_MSI if PCI
> >       select RISCV_INTC
> > -     select RISCV_TIMER
> > +     select RISCV_TIMER if RISCV_SBI
> >       select GENERIC_IRQ_MULTI_HANDLER
> >       select GENERIC_ARCH_TOPOLOGY if SMP
> >       select ARCH_HAS_PTE_SPECIAL
> > diff --git a/arch/riscv/include/asm/timex.h b/arch/riscv/include/asm/timex.h
> > index bad2a7c2cda5..a3fb85d505d4 100644
> > --- a/arch/riscv/include/asm/timex.h
> > +++ b/arch/riscv/include/asm/timex.h
> > @@ -7,41 +7,27 @@
> >  #define _ASM_RISCV_TIMEX_H
> >
> >  #include <asm/csr.h>
> > -#include <asm/mmio.h>
> >
> >  typedef unsigned long cycles_t;
> >
> > -extern u64 __iomem *riscv_time_val;
> > -extern u64 __iomem *riscv_time_cmp;
> > -
> > -#ifdef CONFIG_64BIT
> > -#define mmio_get_cycles()    readq_relaxed(riscv_time_val)
> > -#else
> > -#define mmio_get_cycles()    readl_relaxed(riscv_time_val)
> > -#define mmio_get_cycles_hi() readl_relaxed(((u32 *)riscv_time_val) + 1)
> > -#endif
> > -
> >  static inline cycles_t get_cycles(void)
> >  {
> > -     if (IS_ENABLED(CONFIG_RISCV_SBI))
> > -             return csr_read(CSR_TIME);
> > -     return mmio_get_cycles();
> > +     return csr_read(CSR_TIME);
> >  }
> >  #define get_cycles get_cycles
> >
> > +static inline u32 get_cycles_hi(void)
> > +{
> > +     return csr_read(CSR_TIMEH);
> > +}
> > +#define get_cycles_hi get_cycles_hi
> > +
> >  #ifdef CONFIG_64BIT
> >  static inline u64 get_cycles64(void)
> >  {
> >       return get_cycles();
> >  }
> >  #else /* CONFIG_64BIT */
> > -static inline u32 get_cycles_hi(void)
> > -{
> > -     if (IS_ENABLED(CONFIG_RISCV_SBI))
> > -             return csr_read(CSR_TIMEH);
> > -     return mmio_get_cycles_hi();
> > -}
> > -
> >  static inline u64 get_cycles64(void)
> >  {
> >       u32 hi, lo;
> > diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> > index f2142e6bbea3..21950d9e3e9d 100644
> > --- a/drivers/clocksource/Kconfig
> > +++ b/drivers/clocksource/Kconfig
> > @@ -650,7 +650,7 @@ config ATCPIT100_TIMER
> >
> >  config RISCV_TIMER
> >       bool "Timer for the RISC-V platform"
> > -     depends on GENERIC_SCHED_CLOCK && RISCV
> > +     depends on GENERIC_SCHED_CLOCK && RISCV_SBI
> >       default y
> >       select TIMER_PROBE
> >       select TIMER_OF
> > diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> > index 5fb7c5ba5c91..3e7e0cf5b899 100644
> > --- a/drivers/clocksource/timer-riscv.c
> > +++ b/drivers/clocksource/timer-riscv.c
> > @@ -19,26 +19,13 @@
> >  #include <linux/of_irq.h>
> >  #include <asm/smp.h>
> >  #include <asm/sbi.h>
> > -
> > -u64 __iomem *riscv_time_cmp;
> > -u64 __iomem *riscv_time_val;
> > -
> > -static inline void mmio_set_timer(u64 val)
> > -{
> > -     void __iomem *r;
> > -
> > -     r = riscv_time_cmp + cpuid_to_hartid_map(smp_processor_id());
> > -     writeq_relaxed(val, r);
> > -}
> > +#include <asm/timex.h>
> >
> >  static int riscv_clock_next_event(unsigned long delta,
> >               struct clock_event_device *ce)
> >  {
> >       csr_set(CSR_IE, IE_TIE);
> > -     if (IS_ENABLED(CONFIG_RISCV_SBI))
> > -             sbi_set_timer(get_cycles64() + delta);
> > -     else
> > -             mmio_set_timer(get_cycles64() + delta);
> > +     sbi_set_timer(get_cycles64() + delta);
> >       return 0;
> >  }

