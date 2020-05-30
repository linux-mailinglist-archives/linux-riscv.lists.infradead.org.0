Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6D31E90E8
	for <lists+linux-riscv@lfdr.de>; Sat, 30 May 2020 13:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=21sQP/zmnQFf41fXE4vZsoQf5A/BB95S7p3I3br0iJQ=; b=llmaEAAGOMJuOw4lVteWoaSZ8
	8DGPQ6PkTGSvmYpGpOe/98sirY0saWUa1I4ptAFIl6M0p2drgV04CJaXdePpTnbIuceQ6D33xZR7V
	cEJm8zWucuAshnGCLL1Ye2FZGCIEykrIfEdTPL+BLfawJV4iMumD9BWShGCjdSlbjh+5UlH6LDYv1
	o//chdYN/N0O/mQ7Hc2ze3XbX+vSla7WvaZ3qn/QHtdZ7vnoe1AK4P8/J1KmNqAThBTRmo71cm9HL
	gGj+sYbxGj5UESl8IMV5eBgdfM2IFUlu03olhCo7AXIn8VHJbHlUnY3Z/+HKV7pLiYjAv74Islwcj
	/m3mXSGqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jezrk-0001YT-UI; Sat, 30 May 2020 11:41:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jezrh-0001Y0-3L
 for linux-riscv@lists.infradead.org; Sat, 30 May 2020 11:41:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 854CF206C3;
 Sat, 30 May 2020 11:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590838884;
 bh=rVDhV2vAFhEf0xk3y1F3ElGbH9lOTyved4Q4Ncoc9sY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AdD51k266D3EFq7x6xbTQZDCUr0bLCc1yUqez9xWVWX456N+2E6Wbq1Um6/oYFj3Q
 /UEwj/rbA9oRmoodiJmN8LkDQpJTUHuIxY3QLJpnpoW33DueTnAnbA0HruDwYAwhXW
 UwYoyoRIhU98vahB5v9FNmY+Fr2rUMgwyajR4iPQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jezrf-00GX4B-0j; Sat, 30 May 2020 12:41:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Sat, 30 May 2020 12:41:22 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <anup.patel@wdc.com>
Subject: Re: [PATCH v6 4/6] clocksource/drivers/timer-riscv: Use per-CPU timer
 interrupt
In-Reply-To: <20200530100725.265481-5-anup.patel@wdc.com>
References: <20200530100725.265481-1-anup.patel@wdc.com>
 <20200530100725.265481-5-anup.patel@wdc.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <e9a832ec748671b4daef398ecf784db2@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: anup.patel@wdc.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, aou@eecs.berkeley.edu, daniel.lezcano@linaro.org,
 tglx@linutronix.de, jason@lakedaemon.net, atish.patra@wdc.com,
 Alistair.Francis@wdc.com, anup@brainfault.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_044125_182368_3B9B57D5 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Anup Patel <anup@brainfault.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-05-30 11:07, Anup Patel wrote:
> Instead of directly calling RISC-V timer interrupt handler from
> RISC-V local interrupt conntroller driver, this patch implements
> RISC-V timer interrupt as a per-CPU interrupt using per-CPU APIs
> of Linux IRQ subsystem.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/irq.h      |  2 --
>  drivers/clocksource/timer-riscv.c | 41 ++++++++++++++++++++++++++++---
>  drivers/irqchip/irq-riscv-intc.c  |  8 ------
>  3 files changed, 38 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/irq.h 
> b/arch/riscv/include/asm/irq.h
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
> diff --git a/drivers/clocksource/timer-riscv.c
> b/drivers/clocksource/timer-riscv.c
> index c4f15c4068c0..1fe847983f50 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -12,8 +12,11 @@
>  #include <linux/cpu.h>
>  #include <linux/delay.h>
>  #include <linux/irq.h>
> +#include <linux/irqdomain.h>
>  #include <linux/sched_clock.h>
>  #include <linux/io-64-nonatomic-lo-hi.h>
> +#include <linux/interrupt.h>
> +#include <linux/of_irq.h>
>  #include <asm/smp.h>
>  #include <asm/sbi.h>
> 
> @@ -39,6 +42,7 @@ static int riscv_clock_next_event(unsigned long 
> delta,
>  	return 0;
>  }
> 
> +static unsigned int riscv_clock_event_irq;
>  static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = 
> {
>  	.name			= "riscv_timer_clockevent",
>  	.features		= CLOCK_EVT_FEAT_ONESHOT,
> @@ -74,30 +78,36 @@ static int riscv_timer_starting_cpu(unsigned int 
> cpu)
>  	struct clock_event_device *ce = per_cpu_ptr(&riscv_clock_event, cpu);
> 
>  	ce->cpumask = cpumask_of(cpu);
> +	ce->irq = riscv_clock_event_irq;
>  	clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);
> 
> -	csr_set(CSR_IE, IE_TIE);
> +	enable_percpu_irq(riscv_clock_event_irq,
> +			  irq_get_trigger_type(riscv_clock_event_irq));
>  	return 0;
>  }
> 
>  static int riscv_timer_dying_cpu(unsigned int cpu)
>  {
> -	csr_clear(CSR_IE, IE_TIE);
> +	disable_percpu_irq(riscv_clock_event_irq);
>  	return 0;
>  }
> 
>  /* called directly from the low-level interrupt handler */
> -void riscv_timer_interrupt(void)
> +static irqreturn_t riscv_timer_interrupt(int irq, void *dev_id)
>  {
>  	struct clock_event_device *evdev = this_cpu_ptr(&riscv_clock_event);
> 
>  	csr_clear(CSR_IE, IE_TIE);
>  	evdev->event_handler(evdev);
> +
> +	return IRQ_HANDLED;
>  }
> 
>  static int __init riscv_timer_init_dt(struct device_node *n)
>  {
>  	int cpuid, hartid, error;
> +	struct device_node *child;
> +	struct irq_domain *domain;
> 
>  	hartid = riscv_of_processor_hartid(n);
>  	if (hartid < 0) {
> @@ -115,6 +125,23 @@ static int __init riscv_timer_init_dt(struct
> device_node *n)
>  	if (cpuid != smp_processor_id())
>  		return 0;
> 
> +	domain = NULL;
> +	for_each_child_of_node(n, child) {
> +		domain = irq_find_host(child);
> +		if (domain)
> +			break;
> +	}

This is a bit clumsy, and probably better written as:

         child = of_get_compatible(n, "riscv,cpu-intc");
         if (!child) { error out }
         domain = irq_find_host(child);

It would be even better if each CPU would have its per-CPU interrupt
controller designated as such (with an interrupt-parent property),
meaning that you wouldn't have to do anything at all.

Too late for that anyway.

         M.
-- 
Jazz is not dead. It just smells funny...

