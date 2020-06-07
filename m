Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25D31F09CE
	for <lists+linux-riscv@lfdr.de>; Sun,  7 Jun 2020 06:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AKf532rI1kowr+ozO7qOCyMJ10kBW15/+nHK9KoUflE=; b=JjD//jndbkBmGFHhi4d3QjWB2
	yYugDdtDyZzL6Kj1nYPMFYZPI0iWAOOhRKVKpYZAECJzK6LmO6f+oaqKHIrKaxRWFJzipWCslZVjm
	pO1COG+XbmsKBLhdV7UkjIeOEk1mIMWpGaGzi8gAu5xPHqFLoXdLOSqyhCVkCn+aXqpqTpFjitISi
	c0EiNJ0OUEZApWTqPSoQMCxbvAw8CQidv8vM/J0Kmrf5KBMvvtiavMobf/kkokhkvl9N9sTJ8yxDs
	UyD99H+MDipFhb5/avBMWwzCYZU+I4XNvEN3Ws6TrO9odFNAWUIE68l3NjWu83AivtJpR9ylEz/lK
	v4nHuViYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhmtT-0005Z9-MZ; Sun, 07 Jun 2020 04:26:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhmtQ-0005Yl-4a
 for linux-riscv@lists.infradead.org; Sun, 07 Jun 2020 04:26:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id x14so13886828wrp.2
 for <linux-riscv@lists.infradead.org>; Sat, 06 Jun 2020 21:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AKf532rI1kowr+ozO7qOCyMJ10kBW15/+nHK9KoUflE=;
 b=ws3lEb0WwpH0mha57kXyxQSn1YUeIT+LbwUigmLBft+ggY5+CxQF/q7SHw2R2j5V78
 tAuy2vI4rT1OgFUCI3pAQ+DyqRhOmTCgOJTwbj+CX5sKE1WBmFLe5xKij7DowVz0nywc
 BRjtMZbjmpdM/uIEWo9NDsxpX2AEUs0dFHYE3YMCnrQ/8pjGL+DAIhmPsBVsFgSg8C4U
 +mG0MROAMfv/H5hgedgdYE2XDU3EiKB1MYdVtZM30BNU4tbNcwHFLjhCcnQHb1E+9CL2
 MOBnN59tHr+WjjcLiqQ6xOsfEZHc/ZQu6lKsGWX/3x50gdcaEImzDGQIWXXtYDZMJe3u
 2t+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AKf532rI1kowr+ozO7qOCyMJ10kBW15/+nHK9KoUflE=;
 b=T592JQjzOzgU9lUQHGFYsfbtDRE4Z7eJYqdRpmnkXOJgon3iSQg0onCEDY8cw8bP/B
 Xn6tVoc36QJBqtIcDuy5ZHOnbPxFT9Yx7sUFWIR8aGAEHWuK0N3rHj0aGv5QyhBdvy/d
 Z1XOJrRH4iDp+UQqCzuB8P+odaKmVbHPxPhQoUNPfHDdueyuu8P+2YY3fxvshMj18JXe
 jrChQ6bLdRDKl0D95iXpkkk3JbpsGcfPdfgR75Jm2bhPvDijU7N4TD3cQTAr9onAY+N7
 2gq0aoRmbZ3RQLym+1b1kIvPpUe08UZIUL1rwfmgSlpgbq1+NzaX7/8TubMZQlNFdk4h
 n3SA==
X-Gm-Message-State: AOAM532EJH4ORY2cL+z8grsQZE1IRENxlh774IaZOlXQvVss7/Mn7CcF
 W/ONXgBLzyxXokGTx+T00v3GwQzqS4f4lK9hOivNIA==
X-Google-Smtp-Source: ABdhPJxA2IouWQF4QmGR4Qh4t55eC+0p7nmBoSrpesZI+HFCnn4zLMs3blXTC5wVhxEy+BQghh47YBVhO+yOU9AS0Wg=
X-Received: by 2002:adf:f707:: with SMTP id r7mr18189283wrp.390.1591504002218; 
 Sat, 06 Jun 2020 21:26:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200521134544.816918-5-anup.patel@wdc.com>
 <mhng-a3c3bd81-fd8f-4975-8a33-41e40cf2b341@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-a3c3bd81-fd8f-4975-8a33-41e40cf2b341@palmerdabbelt-glaptop1>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 7 Jun 2020 09:56:30 +0530
Message-ID: <CAAhSdy12kRDzfSfU_XFOHZtBDtWFGWPC73ypju4uoxVFC_qvLA@mail.gmail.com>
Subject: Re: [PATCH 4/5] clocksource/drivers: Add CLINT timer driver
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_212644_184441_6909E57E 
X-CRM114-Status: GOOD (  27.24  )
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
> On Thu, 21 May 2020 06:45:43 PDT (-0700), Anup Patel wrote:
> > The TIME CSR and SBI calls are not available in RISC-V M-mode so we
> > add CLINT driver for Linux RISC-V M-mode (i.e. RISC-V NoMMU kernel).
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  drivers/clocksource/Kconfig       |  10 ++
> >  drivers/clocksource/Makefile      |   1 +
> >  drivers/clocksource/timer-clint.c | 226 ++++++++++++++++++++++++++++++
> >  include/linux/cpuhotplug.h        |   1 +
> >  4 files changed, 238 insertions(+)
> >  create mode 100644 drivers/clocksource/timer-clint.c
> >
> > diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> > index 21950d9e3e9d..ea97bf0eb09f 100644
> > --- a/drivers/clocksource/Kconfig
> > +++ b/drivers/clocksource/Kconfig
> > @@ -659,6 +659,16 @@ config RISCV_TIMER
> >         is accessed via both the SBI and the rdcycle instruction.  This is
> >         required for all RISC-V systems.
> >
> > +config CLINT_TIMER
> > +     bool "Timer for the RISC-V platform"
> > +     depends on GENERIC_SCHED_CLOCK && RISCV
>
> Presumably this also depends on RISCV_M_MODE?

Ahh, good catch. I will update in v2.

>
> > +     default y
> > +     select TIMER_PROBE
> > +     select TIMER_OF
> > +     help
> > +       This option enables the CLINT timer for RISC-V systems. The CLINT
> > +       driver is usually used for NoMMU RISC-V systems.
> > +
> >  config CSKY_MP_TIMER
> >       bool "SMP Timer for the C-SKY platform" if COMPILE_TEST
> >       depends on CSKY
> > diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> > index 641ba5383ab5..dca308b5ff98 100644
> > --- a/drivers/clocksource/Makefile
> > +++ b/drivers/clocksource/Makefile
> > @@ -86,6 +86,7 @@ obj-$(CONFIG_CLKSRC_ST_LPC)         += clksrc_st_lpc.o
> >  obj-$(CONFIG_X86_NUMACHIP)           += numachip.o
> >  obj-$(CONFIG_ATCPIT100_TIMER)                += timer-atcpit100.o
> >  obj-$(CONFIG_RISCV_TIMER)            += timer-riscv.o
> > +obj-$(CONFIG_CLINT_TIMER)            += timer-clint.o
> >  obj-$(CONFIG_CSKY_MP_TIMER)          += timer-mp-csky.o
> >  obj-$(CONFIG_GX6605S_TIMER)          += timer-gx6605s.o
> >  obj-$(CONFIG_HYPERV_TIMER)           += hyperv_timer.o
> > diff --git a/drivers/clocksource/timer-clint.c b/drivers/clocksource/timer-clint.c
> > new file mode 100644
> > index 000000000000..7fc4f145da65
> > --- /dev/null
> > +++ b/drivers/clocksource/timer-clint.c
> > @@ -0,0 +1,226 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> > + *
> > + * Most of the M-mode (i.e. NoMMU) RISC-V systems usually have a
> > + * CLINT MMIO timer device.
> > + */
> > +
> > +#define pr_fmt(fmt) "clint: " fmt
> > +#include <linux/bitops.h>
> > +#include <linux/clocksource.h>
> > +#include <linux/clockchips.h>
> > +#include <linux/cpu.h>
> > +#include <linux/delay.h>
> > +#include <linux/module.h>
> > +#include <linux/of_address.h>
> > +#include <linux/sched_clock.h>
> > +#include <linux/io-64-nonatomic-lo-hi.h>
> > +#include <linux/irqchip/irq-riscv-intc.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/of_irq.h>
> > +#include <linux/smp.h>
> > +
> > +#define CLINT_IPI_OFF                0
> > +#define CLINT_TIME_CMP_OFF   0x4000
> > +#define CLINT_TIME_VAL_OFF   0xbff8
> > +
> > +/* CLINT manages IPI and Timer for RISC-V M-mode  */
> > +static u32 __iomem *clint_ipi_base;
>
> It seems odd to have IPIs in the timer driver.  I know the CLINT handles both
> of them, but these really feel like two separate drivers.

AFAIK, there are no dedicated APIs in the kernel/irq subsystem for
IPI injections. Every architecture have their own way of registering
IPI injection mechanism. In ARM/ARM64, the arch code provides
set_smp_cross_call() API which drivers use to register IPI injections
mechanism. The PATCH1 of this series adds riscv_set_ipi_ops()
for this purpose.

Generally for most architectures (e.g. ARM, ARM64, MIPS, etc),
the IPI injections mechanism is registered from the irqchip driver
but for Linux RISC-V NoMMU the  IPI injection mechanism is
part of CLINT hence part of this CLINT driver.

Regards,
Anup

>
> > +static u64 __iomem *clint_time_cmp;
> > +static u64 __iomem *clint_time_val;
> > +static unsigned long clint_freq;
> > +static unsigned int clint_irq;
> > +
> > +static void clint_send_ipi(const unsigned long *hart_mask)
> > +{
> > +     u32 hartid;
> > +
> > +     for_each_set_bit(hartid, hart_mask, NR_CPUS)
> > +             writel(1, clint_ipi_base + hartid);
> > +}
> > +
> > +static void clint_clear_ipi(void)
> > +{
> > +     writel(0, clint_ipi_base + cpuid_to_hartid_map(smp_processor_id()));
> > +}
> > +
> > +static struct riscv_ipi_ops clint_ipi_ops = {
> > +     .ipi_inject = clint_send_ipi,
> > +     .ipi_clear = clint_clear_ipi,
> > +};
> > +
> > +#ifdef CONFIG_64BIT
> > +#define clint_get_cycles()   readq_relaxed(clint_time_val)
> > +#else
> > +#define clint_get_cycles()   readl_relaxed(clint_time_val)
> > +#define clint_get_cycles_hi()        readl_relaxed(((u32 *)clint_time_val) + 1)
> > +#endif
> > +
> > +#ifdef CONFIG_64BIT
> > +static u64 clint_get_cycles64(void)
> > +{
> > +     return clint_get_cycles();
> > +}
> > +#else /* CONFIG_64BIT */
> > +static u64 clint_get_cycles64(void)
> > +{
> > +     u32 hi, lo;
> > +
> > +     do {
> > +             hi = clint_get_cycles_hi();
> > +             lo = clint_get_cycles();
> > +     } while (hi != clint_get_cycles_hi());
> > +
> > +     return ((u64)hi << 32) | lo;
> > +}
> > +#endif /* CONFIG_64BIT */
> > +
> > +static int clint_clock_next_event(unsigned long delta,
> > +                                struct clock_event_device *ce)
> > +{
> > +     void __iomem *r = clint_time_cmp +
> > +                       cpuid_to_hartid_map(smp_processor_id());
> > +
> > +     csr_set(CSR_IE, IE_TIE);
> > +     writeq_relaxed(clint_get_cycles64() + delta, r);
> > +     return 0;
> > +}
> > +
> > +static DEFINE_PER_CPU(struct clock_event_device, clint_clock_event) = {
> > +     .name                   = "clint_clockevent",
> > +     .features               = CLOCK_EVT_FEAT_ONESHOT,
> > +     .rating         = 100,
> > +     .set_next_event = clint_clock_next_event,
> > +};
> > +
> > +static u64 clint_rdtime(struct clocksource *cs)
> > +{
> > +     return readq_relaxed(clint_time_val);
> > +}
> > +
> > +static u64 notrace clint_sched_clock(void)
> > +{
> > +     return readq_relaxed(clint_time_val);
> > +}
> > +
> > +static struct clocksource clint_clocksource = {
> > +     .name           = "clint_clocksource",
> > +     .rating = 300,
> > +     .mask           = CLOCKSOURCE_MASK(64),
> > +     .flags          = CLOCK_SOURCE_IS_CONTINUOUS,
> > +     .read           = clint_rdtime,
> > +};
> > +
> > +static int clint_timer_starting_cpu(unsigned int cpu)
> > +{
> > +     struct clock_event_device *ce = per_cpu_ptr(&clint_clock_event, cpu);
> > +
> > +     ce->cpumask = cpumask_of(cpu);
> > +     clockevents_config_and_register(ce, clint_freq, 200, ULONG_MAX);
> > +
> > +     enable_percpu_irq(clint_irq, irq_get_trigger_type(clint_irq));
> > +     return 0;
> > +}
> > +
> > +static int clint_timer_dying_cpu(unsigned int cpu)
> > +{
> > +     disable_percpu_irq(clint_irq);
> > +     return 0;
> > +}
> > +
> > +static irqreturn_t clint_timer_interrupt(int irq, void *dev_id)
> > +{
> > +     struct clock_event_device *evdev = this_cpu_ptr(&clint_clock_event);
> > +
> > +     csr_clear(CSR_IE, IE_TIE);
> > +     evdev->event_handler(evdev);
> > +
> > +     return IRQ_HANDLED;
> > +}
> > +
> > +static int __init clint_timer_init_dt(struct device_node *np)
> > +{
> > +     int rc;
> > +     u32 i, nr_irqs;
> > +     void __iomem *base;
> > +     struct of_phandle_args oirq;
> > +
> > +     /*
> > +      * Ensure that CLINT device interrupts are either RV_IRQ_TIMER or
> > +      * RV_IRQ_SOFT. If it's anything else then we ignore the device.
> > +      */
> > +     nr_irqs = of_irq_count(np);
> > +     for (i = 0; i < nr_irqs; i++) {
> > +             if (of_irq_parse_one(np, i, &oirq)) {
> > +                     pr_err("%pOFP: failed to parse irq %d.\n", np, i);
> > +                     continue;
> > +             }
> > +
> > +             if ((oirq.args_count != 1) ||
> > +                 (oirq.args[0] != RV_IRQ_TIMER &&
> > +                  oirq.args[0] != RV_IRQ_SOFT)) {
> > +                     pr_info("%pOFP: invalid irq %d (hwirq %d)\n",
> > +                             np, i, oirq.args[0]);
> > +                     return 0;
> > +             }
> > +     }
> > +
> > +     oirq.np = riscv_of_intc_domain_node();
> > +     oirq.args_count = 1;
> > +     oirq.args[0] = RV_IRQ_TIMER;
> > +     clint_irq = irq_create_of_mapping(&oirq);
> > +     if (!clint_irq) {
> > +             pr_err("%pOFP: could not map hwirq %d\n", np, RV_IRQ_TIMER);
> > +             return -ENODEV;
> > +     }
> > +
> > +     base = of_iomap(np, 0);
> > +     if (!base) {
> > +             pr_err("%pOFP: could not map registers\n", np);
> > +             return -ENODEV;
> > +     }
> > +
> > +     clint_ipi_base = base + CLINT_IPI_OFF;
> > +     clint_time_cmp = base + CLINT_TIME_CMP_OFF;
> > +     clint_time_val = base + CLINT_TIME_VAL_OFF;
> > +     clint_freq = riscv_timebase;
> > +
> > +     pr_info("%pOFP: timer running at %ld Hz\n", np, clint_freq);
> > +
> > +     rc = clocksource_register_hz(&clint_clocksource, clint_freq);
> > +     if (rc) {
> > +             iounmap(base);
> > +             pr_err("%pOFP: clocksource register failed [%d]\n", np, rc);
> > +             return rc;
> > +     }
> > +
> > +     sched_clock_register(clint_sched_clock, 64, clint_freq);
> > +
> > +     rc = request_percpu_irq(clint_irq, clint_timer_interrupt,
> > +                              "clint-timer", &clint_clock_event);
> > +     if (rc) {
> > +             iounmap(base);
> > +             pr_err("registering percpu irq failed [%d]\n", rc);
> > +             return rc;
> > +     }
> > +
> > +     rc = cpuhp_setup_state(CPUHP_AP_CLINT_TIMER_STARTING,
> > +                             "clockevents/clint/timer:starting",
> > +                             clint_timer_starting_cpu,
> > +                             clint_timer_dying_cpu);
> > +     if (rc) {
> > +             free_irq(clint_irq, &clint_clock_event);
> > +             iounmap(base);
> > +             pr_err("%pOFP: cpuhp setup state failed [%d]\n", np, rc);
> > +             return rc;
> > +     }
> > +
> > +     riscv_set_ipi_ops(&clint_ipi_ops);
> > +     clint_clear_ipi();
> > +
> > +     return 0;
> > +}
> > +
> > +TIMER_OF_DECLARE(clint_timer, "riscv,clint0", clint_timer_init_dt);
> > +TIMER_OF_DECLARE(clint_timer1, "sifive,clint-1.0.0", clint_timer_init_dt);
> > diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> > index 57b1f8f777d9..52552492c2f2 100644
> > --- a/include/linux/cpuhotplug.h
> > +++ b/include/linux/cpuhotplug.h
> > @@ -132,6 +132,7 @@ enum cpuhp_state {
> >       CPUHP_AP_MIPS_GIC_TIMER_STARTING,
> >       CPUHP_AP_ARC_TIMER_STARTING,
> >       CPUHP_AP_RISCV_TIMER_STARTING,
> > +     CPUHP_AP_CLINT_TIMER_STARTING,
> >       CPUHP_AP_CSKY_TIMER_STARTING,
> >       CPUHP_AP_HYPERV_TIMER_STARTING,
> >       CPUHP_AP_KVM_STARTING,

