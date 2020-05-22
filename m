Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F261DE7B0
	for <lists+linux-riscv@lfdr.de>; Fri, 22 May 2020 15:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fdcq9Q/qFZVEIOY3wMOmDnebMB2vsdh3PG3xLy57Kw=; b=tPw+/7U9aRnbRR
	gyL+6ir+hz+F+bY3N2NgyXBtBRa+EIX4AitO/69BL6Xxi67mtP/RLV2dMgEWD024Fv9Ei6BTE5nLa
	yIt7BJYrZZkY2Etik4fQCOtFNPVF8f7kseL4ZTm7p6aq4pNtDP4/Hr9io18pDwKwWoCyi5qXndDFd
	/nsU6jxY+PL9xHCfy3Skh8IbkrisAce86KNYcFrMP0u+jb5wxV4nfHZK7auRbzmriF0xYXOOv3X73
	EqgP1xpBskfcNER+GmjCfrNedHzHn/F4SyznAvYKwpmnuMHs1ISjluNYdVma9eJFLu4yHH9sqqp34
	FIBbYumHrRDNC2PYsCzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc7PT-0000L3-LE; Fri, 22 May 2020 13:08:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc7PL-0000E3-KI
 for linux-riscv@lists.infradead.org; Fri, 22 May 2020 13:08:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id e16so10092244wra.7
 for <linux-riscv@lists.infradead.org>; Fri, 22 May 2020 06:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5fdcq9Q/qFZVEIOY3wMOmDnebMB2vsdh3PG3xLy57Kw=;
 b=Wb3iaA0mKA5JY2hzvQtCh93JftuKXzy9gEpjqTdZLffa4rrK/gi6uqkYWrHlxXYIDw
 jOEcpvYJcyQBW3CwurP3TWDl6/+1Q/n4zcolLiVpsXR+iKIxrTuHZ3zqxmANlroh0CYF
 /k3PBXW6/1+N1A3gUnQk0eLOKLlELMwJ1n4cheqwvbdS2dVHd7uwzvomiVjKpeXsgERn
 fJes1U68eMXxQjrXjGosPBURXxNboBCWdKurFybveyx4o26dgaQZGZCEFSNYi2HGWdk2
 No2zI0elfnYvUufHgiSMnodCpSxcVMkXEfFG9WVTpuEONDV/1n8ZGXHGMuUvJWBvv4Sq
 du8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5fdcq9Q/qFZVEIOY3wMOmDnebMB2vsdh3PG3xLy57Kw=;
 b=WQcHy48w85NSGvuEPaIT2h/LmHKHPdfXVmOLqy/ZF5TnnkExhPCKf1033MqalL9bad
 QUEBeAJdxMIhx9fm1USb72xVGIxs8kUGt1Ez390FkA4aOpZ76aFYLogwH/tiGmyHWhkt
 gD/Sjcdm2U67jJ9uAjb7lDA5tLzolaXnzBb7aAbyZMqSsheyA6ribgvj3TkK6YqLgkSm
 H15aM22mxQdVdO2kQ81DnFeLdJkc9sa3VdHYmURuDkYPkKppJBD9ISVSRw9Ui9wLsJZE
 zHEl4aVQKOpKnAV9o6ETwf8sIvmoueHSa49uXiwalZ+e5UuJYGPzkDc3VYUEaSitPOEL
 xJpQ==
X-Gm-Message-State: AOAM5324EVzp2pPDZZoMDJXoKyvhdgrOFT0Y/x223O6Tnxb1x5n1WoK0
 QnJtfYBfIOO6ZkEydI2u5UUEzsoard0=
X-Google-Smtp-Source: ABdhPJzP8wkNZ2bLrBJYw5tdl8VQ+0PG0mL3VmgVANTQw4YVIDWuGq0R7N0gnAoNojW2ZJYL0OKnLQ==
X-Received: by 2002:adf:dfcf:: with SMTP id q15mr3235951wrn.137.1590152893283; 
 Fri, 22 May 2020 06:08:13 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:a82f:eaec:3c49:875a?
 ([2a01:e34:ed2f:f020:a82f:eaec:3c49:875a])
 by smtp.googlemail.com with ESMTPSA id g6sm9410238wrp.75.2020.05.22.06.08.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 06:08:12 -0700 (PDT)
Subject: Re: [PATCH v5 4/6] clocksource/drivers/timer-riscv: Use per-CPU timer
 interrupt
To: Anup Patel <anup.patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
References: <20200521133301.816665-1-anup.patel@wdc.com>
 <20200521133301.816665-5-anup.patel@wdc.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <af395b79-c74c-3c6d-8331-b84e37b01797@linaro.org>
Date: Fri, 22 May 2020 15:08:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200521133301.816665-5-anup.patel@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_060815_817388_ADBA593E 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-kernel@vger.kernel.org,
 Anup Patel <anup@brainfault.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 21/05/2020 15:32, Anup Patel wrote:
> Instead of directly calling RISC-V timer interrupt handler from
> RISC-V local interrupt conntroller driver, this patch implements
> RISC-V timer interrupt as a per-CPU interrupt using per-CPU APIs
> of Linux IRQ subsystem.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>

via which tree do you want this patch to be merged ?

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
>  	return 0;
>  }
>  
> +static unsigned int riscv_clock_event_irq;
>  static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = {
>  	.name			= "riscv_timer_clockevent",
>  	.features		= CLOCK_EVT_FEAT_ONESHOT,
> @@ -74,30 +78,35 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
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
> +	struct of_phandle_args oirq;
>  
>  	hartid = riscv_of_processor_hartid(n);
>  	if (hartid < 0) {
> @@ -115,6 +124,13 @@ static int __init riscv_timer_init_dt(struct device_node *n)
>  	if (cpuid != smp_processor_id())
>  		return 0;
>  
> +	oirq.np = riscv_of_intc_domain_node();
> +	oirq.args_count = 1;
> +	oirq.args[0] = RV_IRQ_TIMER;
> +	riscv_clock_event_irq = irq_create_of_mapping(&oirq);
> +	if (!riscv_clock_event_irq)
> +		return -ENODEV;
> +
>  	pr_info("%s: Registering clocksource cpuid [%d] hartid [%d]\n",
>  	       __func__, cpuid, hartid);
>  	error = clocksource_register_hz(&riscv_clocksource, riscv_timebase);
> @@ -126,6 +142,14 @@ static int __init riscv_timer_init_dt(struct device_node *n)
>  
>  	sched_clock_register(riscv_sched_clock, 64, riscv_timebase);
>  
> +	error = request_percpu_irq(riscv_clock_event_irq,
> +				    riscv_timer_interrupt,
> +				    "riscv-timer", &riscv_clock_event);
> +	if (error) {
> +		pr_err("registering percpu irq failed [%d]\n", error);
> +		return error;
> +	}
> +
>  	error = cpuhp_setup_state(CPUHP_AP_RISCV_TIMER_STARTING,
>  			 "clockevents/riscv/timer:starting",
>  			 riscv_timer_starting_cpu, riscv_timer_dying_cpu);
> diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
> index 2f364e6a87f9..d4fbc3543459 100644
> --- a/drivers/irqchip/irq-riscv-intc.c
> +++ b/drivers/irqchip/irq-riscv-intc.c
> @@ -23,20 +23,12 @@ static struct irq_domain *intc_domain;
>  
>  static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
>  {
> -	struct pt_regs *old_regs;
>  	unsigned long cause = regs->cause & ~CAUSE_IRQ_FLAG;
>  
>  	if (unlikely(cause >= BITS_PER_LONG))
>  		panic("unexpected interrupt cause");
>  
>  	switch (cause) {
> -	case RV_IRQ_TIMER:
> -		old_regs = set_irq_regs(regs);
> -		irq_enter();
> -		riscv_timer_interrupt();
> -		irq_exit();
> -		set_irq_regs(old_regs);
> -		break;
>  #ifdef CONFIG_SMP
>  	case RV_IRQ_SOFT:
>  		/*
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

