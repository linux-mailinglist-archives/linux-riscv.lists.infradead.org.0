Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9E41E752A
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 07:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PQJmrk0V5PrbHI+gX8ojTZANmtmzX/J0DrLuxxy0xYY=; b=B0sdxQj9Vx0GVyPkDkvWX7Xn2
	witWnhUiK1gwZZ7psvYbec0w+ur3ZNf19Rc/mEaPNhbKDV05JhGSPUmEUmjYFUvDmEbDUY3WgNI3q
	ghPc09MtiA0mcJVMSBPxw3ZgKeENsbQATSGDWFEJ5/J8vejPAycJsoP4bZ3mo0Qoupi+2WuzhceI2
	ytK2OQ2q/SmTTjF+fDi0MoqDsOqyGbn8mnK80Vz+ceE4IcGUp2Z+8jCFyx1wtlI+xKLlYBY+Rj1ZT
	CZ+44gEABlADGtGvJxHCflHw90fg7XutwpUTCbXijRMAFDC1BOniVAg6d972EbeYUfI1eItJjv+CO
	K0pl/mGvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeXCB-000184-I8; Fri, 29 May 2020 05:04:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeXC8-00017e-BP
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 05:04:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id n5so1811907wmd.0
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 22:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PQJmrk0V5PrbHI+gX8ojTZANmtmzX/J0DrLuxxy0xYY=;
 b=FpJaxduZV1R9mG8WI3Sg80SbbryBsNhUOWenjb2Mcgt6g4o36xwm8Yy5C+B0WT46cJ
 FgHqoK6viudK2NTH5JGUuEDSBFlLmbqLztCD2bJsCdaK0WqqkJKHIAajtGGhu9/9s/Bf
 FTBMyXQQiewG8yUxZnMhRbXFAX+TWVLIQnCbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PQJmrk0V5PrbHI+gX8ojTZANmtmzX/J0DrLuxxy0xYY=;
 b=pHKapSA9VzJ9wct6VMT7O5S2au+ES0goyQhji4tIoiZyfHY1jXnkpeW/VPOUB9SF1v
 rAD5YMrb3RI0rbPQVrNWz+hu1PbW5qSyf5LuERYI3PSexEh6nha0IM8b28qtmEUL9P6O
 iwgJr0vtwnT89fmZHO70kPxhz0TTaYsPLKa94JFPCqoKNyDNbK5d/1QX8WVMQx1NWwBd
 DkB7Cm7+nftD1gJyfsfX4P9LXtHlph+4Kx3WlXrYGUh0eA7Pe5G+4YOVQQJhOCDKjl2C
 vXQHCnWz7Z0fAP3puHvVWLxZwly1Nbjh82Y3yPpTJCcSt7qZfriQ3NcFw3LoLRZgzgt3
 FMjw==
X-Gm-Message-State: AOAM530NnsyFbO6zL6pLtbo2LdXaAEnc0htzAuEslbI7+p0SMMXd744M
 K60CXfAidN3DPy19SjbLnb6G3gGXqdr/ATrGOxZm
X-Google-Smtp-Source: ABdhPJyiY/MYFoX8EqaqySlCOPVN+kjGR049gcdqYbGrIqsSMLx2IJHzLdJcF1ZZVmOXlpRdoyld+a/Xx5Ihn9a3Jmk=
X-Received: by 2002:a7b:ce88:: with SMTP id q8mr371335wmj.176.1590728674524;
 Thu, 28 May 2020 22:04:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200521133301.816665-1-anup.patel@wdc.com>
 <20200521133301.816665-5-anup.patel@wdc.com>
In-Reply-To: <20200521133301.816665-5-anup.patel@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 28 May 2020 22:04:23 -0700
Message-ID: <CAOnJCUKX_+TZR8sMFDL2K4vNRwo0v12Fb5=rX5KUNpRaw8LGsg@mail.gmail.com>
Subject: Re: [PATCH v5 4/6] clocksource/drivers/timer-riscv: Use per-CPU timer
 interrupt
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_220436_443703_C7CC6293 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 6:34 AM Anup Patel <anup.patel@wdc.com> wrote:
>
> Instead of directly calling RISC-V timer interrupt handler from
> RISC-V local interrupt conntroller driver, this patch implements
> RISC-V timer interrupt as a per-CPU interrupt using per-CPU APIs
> of Linux IRQ subsystem.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/include/asm/irq.h      |  2 --
>  drivers/clocksource/timer-riscv.c | 30 +++++++++++++++++++++++++++---
>  drivers/irqchip/irq-riscv-intc.c  |  8 --------
>  3 files changed, 27 insertions(+), 13 deletions(-)
>
> diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
> index a9e5f07a7e9c..9807ad164015 100644
> --- a/arch/riscv/include/asm/irq.h
> +++ b/arch/riscv/include/asm/irq.h
> @@ -10,8 +10,6 @@
>  #include <linux/interrupt.h>
>  #include <linux/linkage.h>
>
> -void riscv_timer_interrupt(void);
> -
>  #include <asm-generic/irq.h>
>
>  #endif /* _ASM_RISCV_IRQ_H */
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index c4f15c4068c0..5fb7c5ba5c91 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -14,6 +14,9 @@
>  #include <linux/irq.h>
>  #include <linux/sched_clock.h>
>  #include <linux/io-64-nonatomic-lo-hi.h>
> +#include <linux/irqchip/irq-riscv-intc.h>
> +#include <linux/interrupt.h>
> +#include <linux/of_irq.h>
>  #include <asm/smp.h>
>  #include <asm/sbi.h>
>
> @@ -39,6 +42,7 @@ static int riscv_clock_next_event(unsigned long delta,
>         return 0;
>  }
>
> +static unsigned int riscv_clock_event_irq;
>  static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = {
>         .name                   = "riscv_timer_clockevent",
>         .features               = CLOCK_EVT_FEAT_ONESHOT,
> @@ -74,30 +78,35 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
>         struct clock_event_device *ce = per_cpu_ptr(&riscv_clock_event, cpu);
>
>         ce->cpumask = cpumask_of(cpu);
> +       ce->irq = riscv_clock_event_irq;
>         clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);
>
> -       csr_set(CSR_IE, IE_TIE);
> +       enable_percpu_irq(riscv_clock_event_irq,
> +                         irq_get_trigger_type(riscv_clock_event_irq));
>         return 0;
>  }
>
>  static int riscv_timer_dying_cpu(unsigned int cpu)
>  {
> -       csr_clear(CSR_IE, IE_TIE);
> +       disable_percpu_irq(riscv_clock_event_irq);
>         return 0;
>  }
>
>  /* called directly from the low-level interrupt handler */
> -void riscv_timer_interrupt(void)
> +static irqreturn_t riscv_timer_interrupt(int irq, void *dev_id)
>  {
>         struct clock_event_device *evdev = this_cpu_ptr(&riscv_clock_event);
>
>         csr_clear(CSR_IE, IE_TIE);
>         evdev->event_handler(evdev);
> +
> +       return IRQ_HANDLED;
>  }
>
>  static int __init riscv_timer_init_dt(struct device_node *n)
>  {
>         int cpuid, hartid, error;
> +       struct of_phandle_args oirq;
>
>         hartid = riscv_of_processor_hartid(n);
>         if (hartid < 0) {
> @@ -115,6 +124,13 @@ static int __init riscv_timer_init_dt(struct device_node *n)
>         if (cpuid != smp_processor_id())
>                 return 0;
>
> +       oirq.np = riscv_of_intc_domain_node();
> +       oirq.args_count = 1;
> +       oirq.args[0] = RV_IRQ_TIMER;
> +       riscv_clock_event_irq = irq_create_of_mapping(&oirq);
> +       if (!riscv_clock_event_irq)
> +               return -ENODEV;
> +

As the error case will result in a system without a clock, a warning message
may be a good option.

>         pr_info("%s: Registering clocksource cpuid [%d] hartid [%d]\n",
>                __func__, cpuid, hartid);
>         error = clocksource_register_hz(&riscv_clocksource, riscv_timebase);
> @@ -126,6 +142,14 @@ static int __init riscv_timer_init_dt(struct device_node *n)
>
>         sched_clock_register(riscv_sched_clock, 64, riscv_timebase);
>
> +       error = request_percpu_irq(riscv_clock_event_irq,
> +                                   riscv_timer_interrupt,
> +                                   "riscv-timer", &riscv_clock_event);
> +       if (error) {
> +               pr_err("registering percpu irq failed [%d]\n", error);
> +               return error;
> +       }
> +
>         error = cpuhp_setup_state(CPUHP_AP_RISCV_TIMER_STARTING,
>                          "clockevents/riscv/timer:starting",
>                          riscv_timer_starting_cpu, riscv_timer_dying_cpu);
> diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
> index 2f364e6a87f9..d4fbc3543459 100644
> --- a/drivers/irqchip/irq-riscv-intc.c
> +++ b/drivers/irqchip/irq-riscv-intc.c
> @@ -23,20 +23,12 @@ static struct irq_domain *intc_domain;
>
>  static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
>  {
> -       struct pt_regs *old_regs;
>         unsigned long cause = regs->cause & ~CAUSE_IRQ_FLAG;
>
>         if (unlikely(cause >= BITS_PER_LONG))
>                 panic("unexpected interrupt cause");
>
>         switch (cause) {
> -       case RV_IRQ_TIMER:
> -               old_regs = set_irq_regs(regs);
> -               irq_enter();
> -               riscv_timer_interrupt();
> -               irq_exit();
> -               set_irq_regs(old_regs);
> -               break;
>  #ifdef CONFIG_SMP
>         case RV_IRQ_SOFT:
>                 /*
> --
> 2.25.1
>
>
Otherwise, LGTM.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish

