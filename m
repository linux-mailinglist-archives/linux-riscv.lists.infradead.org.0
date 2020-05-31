Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F231E95D1
	for <lists+linux-riscv@lfdr.de>; Sun, 31 May 2020 07:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZOsp7syKOPdYJNF2qEn+8kNUrg72Kaa15t7iFX6GTsg=; b=gtkx6hX2Nt/9bf4u0i2AeNtGp
	5t19Njn1MHCbRE8eJfvKwUdlrWQzzggg/y1eY3ZqAFYCfN1Kcl5fpmac1+rxmPCkIMy0vjRic8kKb
	ieyGwWTUmi56wLDXNCgB0m4+LIfV0rk7tQZ7GqATCxHrTNP0XLvtjauSu+CC+BJi0Vhelg1TfbXkp
	9pM2NetpuiJmSQcIXLS9SdfjXdZIO9pPToY+Aw+r3i+q8uWh53I03XK243HhJzcgZtujzOUbKkhoO
	3p3vpq183++i2e3xwXdu3kRJ3UJ6qqOImePo93Zw1UHdtRAFu+AszVFSgeaoWqDkpAaVPKQIBZb+J
	+KrawOU0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfGuJ-00041g-Da; Sun, 31 May 2020 05:53:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfGuF-00040v-TI
 for linux-riscv@lists.infradead.org; Sun, 31 May 2020 05:53:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id x6so8064794wrm.13
 for <linux-riscv@lists.infradead.org>; Sat, 30 May 2020 22:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZOsp7syKOPdYJNF2qEn+8kNUrg72Kaa15t7iFX6GTsg=;
 b=m/YHb9Bv4Z7kRpAFa+VntBXixZPryMWBfKAJPV6iXasbRHsnJEGI9GjaMXgp9prHz6
 CUjz1w33eS5kE0b9huXrxEthWDn2jEF6BQ0BZ7Eo1enAxhmMKVqzC3GMN0wE6x0R2TKn
 CSw5rXr3VNGKiOFfXZ/ZhzgmLb32WccroxO2X+8Pb3ByPJQZHlwGFlW0jv7ZbxN86Vil
 1oJvN42r7yrTCDErY1l14+RmVd2UWGgnYnWSLdKz7/8F0BNK53UgfbOs8tTHiHoxWR1c
 VYRGFz3wHf3tA4iTJ5VFdtd1P8hsqPgw0uWN8R1FBJOi4o0JXrB8YLRAyX48bayYINhB
 BrBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZOsp7syKOPdYJNF2qEn+8kNUrg72Kaa15t7iFX6GTsg=;
 b=aTX7YVOy9rSB4PwU7SfXatXCCMbHGHieeKyeRbOweS1hPzbKI7XpC8yyYoQgAFijqb
 70+qZsgqTptVfH8fwFUbCwmufUccYf0OBHSesJNuT+TQBG7iCEeSTpis4KvwiqrmSmY3
 TpRQV2qOFrvMLdCPyGwN3AkBkFZrFI3d8VqOZ9EptGA130YTx+JySjNDE9VM0S4GC7eg
 zS4sH2zVeSlQ5ZO1a0NOiSnermh/DzJrUsy+V2JNozTolsbGjnRDvD/B/Lkn545yhpDS
 WYxwQ8EcG0x3fL8WR44rP2WZ+GNnJlHbea0S1fh0689OMXgrRr9WVXaefRwA8v5j992K
 Zg1w==
X-Gm-Message-State: AOAM531cHIkPJDmtDP0w3wKnyFQrOrX003bXVkOeSoo8ea4cuTv6L35l
 vLlOUT7ZrCgHnvEZD/G+UphyisqzqpC0upG0nG1snQ==
X-Google-Smtp-Source: ABdhPJyJam0xFtqZTAiytblPOEobRI+WU5+EzZ+a8mOLNRLeGnunjCjlPP1fJD4LcIdCubtBzLKYlz0ho71ox23rgSA=
X-Received: by 2002:adf:f707:: with SMTP id r7mr17260253wrp.390.1590904389497; 
 Sat, 30 May 2020 22:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200530100725.265481-1-anup.patel@wdc.com>
 <20200530100725.265481-5-anup.patel@wdc.com>
 <e9a832ec748671b4daef398ecf784db2@kernel.org>
In-Reply-To: <e9a832ec748671b4daef398ecf784db2@kernel.org>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 31 May 2020 11:22:58 +0530
Message-ID: <CAAhSdy3dhPgHxcKiy8kNiNpiT_G+CAkGeGFUO+ReWby2COr2gA@mail.gmail.com>
Subject: Re: [PATCH v6 4/6] clocksource/drivers/timer-riscv: Use per-CPU timer
 interrupt
To: Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_225311_945768_896A9D80 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup.patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, May 30, 2020 at 5:11 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-05-30 11:07, Anup Patel wrote:
> > Instead of directly calling RISC-V timer interrupt handler from
> > RISC-V local interrupt conntroller driver, this patch implements
> > RISC-V timer interrupt as a per-CPU interrupt using per-CPU APIs
> > of Linux IRQ subsystem.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Reviewed-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/include/asm/irq.h      |  2 --
> >  drivers/clocksource/timer-riscv.c | 41 ++++++++++++++++++++++++++++---
> >  drivers/irqchip/irq-riscv-intc.c  |  8 ------
> >  3 files changed, 38 insertions(+), 13 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/irq.h
> > b/arch/riscv/include/asm/irq.h
> > index a9e5f07a7e9c..9807ad164015 100644
> > --- a/arch/riscv/include/asm/irq.h
> > +++ b/arch/riscv/include/asm/irq.h
> > @@ -10,8 +10,6 @@
> >  #include <linux/interrupt.h>
> >  #include <linux/linkage.h>
> >
> > -void riscv_timer_interrupt(void);
> > -
> >  #include <asm-generic/irq.h>
> >
> >  #endif /* _ASM_RISCV_IRQ_H */
> > diff --git a/drivers/clocksource/timer-riscv.c
> > b/drivers/clocksource/timer-riscv.c
> > index c4f15c4068c0..1fe847983f50 100644
> > --- a/drivers/clocksource/timer-riscv.c
> > +++ b/drivers/clocksource/timer-riscv.c
> > @@ -12,8 +12,11 @@
> >  #include <linux/cpu.h>
> >  #include <linux/delay.h>
> >  #include <linux/irq.h>
> > +#include <linux/irqdomain.h>
> >  #include <linux/sched_clock.h>
> >  #include <linux/io-64-nonatomic-lo-hi.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/of_irq.h>
> >  #include <asm/smp.h>
> >  #include <asm/sbi.h>
> >
> > @@ -39,6 +42,7 @@ static int riscv_clock_next_event(unsigned long
> > delta,
> >       return 0;
> >  }
> >
> > +static unsigned int riscv_clock_event_irq;
> >  static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) =
> > {
> >       .name                   = "riscv_timer_clockevent",
> >       .features               = CLOCK_EVT_FEAT_ONESHOT,
> > @@ -74,30 +78,36 @@ static int riscv_timer_starting_cpu(unsigned int
> > cpu)
> >       struct clock_event_device *ce = per_cpu_ptr(&riscv_clock_event, cpu);
> >
> >       ce->cpumask = cpumask_of(cpu);
> > +     ce->irq = riscv_clock_event_irq;
> >       clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);
> >
> > -     csr_set(CSR_IE, IE_TIE);
> > +     enable_percpu_irq(riscv_clock_event_irq,
> > +                       irq_get_trigger_type(riscv_clock_event_irq));
> >       return 0;
> >  }
> >
> >  static int riscv_timer_dying_cpu(unsigned int cpu)
> >  {
> > -     csr_clear(CSR_IE, IE_TIE);
> > +     disable_percpu_irq(riscv_clock_event_irq);
> >       return 0;
> >  }
> >
> >  /* called directly from the low-level interrupt handler */
> > -void riscv_timer_interrupt(void)
> > +static irqreturn_t riscv_timer_interrupt(int irq, void *dev_id)
> >  {
> >       struct clock_event_device *evdev = this_cpu_ptr(&riscv_clock_event);
> >
> >       csr_clear(CSR_IE, IE_TIE);
> >       evdev->event_handler(evdev);
> > +
> > +     return IRQ_HANDLED;
> >  }
> >
> >  static int __init riscv_timer_init_dt(struct device_node *n)
> >  {
> >       int cpuid, hartid, error;
> > +     struct device_node *child;
> > +     struct irq_domain *domain;
> >
> >       hartid = riscv_of_processor_hartid(n);
> >       if (hartid < 0) {
> > @@ -115,6 +125,23 @@ static int __init riscv_timer_init_dt(struct
> > device_node *n)
> >       if (cpuid != smp_processor_id())
> >               return 0;
> >
> > +     domain = NULL;
> > +     for_each_child_of_node(n, child) {
> > +             domain = irq_find_host(child);
> > +             if (domain)
> > +                     break;
> > +     }
>
> This is a bit clumsy, and probably better written as:
>
>          child = of_get_compatible(n, "riscv,cpu-intc");
>          if (!child) { error out }
>          domain = irq_find_host(child);

I thought of not hard-coding INTC compatible string here but
both RISC-V INTC and RISC-V Timer are RISC-V specific so
I guess it's simpler to use of_get_compatible() directly.

I will update.

>
> It would be even better if each CPU would have its per-CPU interrupt
> controller designated as such (with an interrupt-parent property),
> meaning that you wouldn't have to do anything at all.
>
> Too late for that anyway.

Yes, too late now.

Regards,
Anup

