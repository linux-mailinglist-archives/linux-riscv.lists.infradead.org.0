Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F85E1E7218
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 03:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=I9ySmq/ziTnD5JxWwfYJIk6GUKpSL6REIC8gk6+wZMc=; b=iiw3z4dQEkpuFP
	JMxjWTaaOv/4dU52jjwHJpFG/QoJPNmNE72C5m+ddXHM+hIXWH4Twy3wd8WHb4sxov8G9xY64486v
	BUfnHFeEqfHyM+vYGwhXfo1l07O0X5olJKX9joHqZ27gm2dnjWez40ymEDs9wC1JfynzeOXAXjWLz
	xuGc2fYvZ7MVSswmLhTyIi/72WoukDFMBrrc0lihxV+mM33ocQDfbQGOaDk0gyHlLvJ6qO3g6R0O7
	ykP3fs4rqnxSehSzHCk+hVvafBlCdofwVZ1G0yViv5DPYFhPBMhdyRaOto8TptuaWMNtmA1jf2dOc
	nA7ow4+GRj8WrVgOaz8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeTxe-0007cZ-VM; Fri, 29 May 2020 01:37:26 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeTxZ-0007ax-Gn
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 01:37:23 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s69so413188pjb.4
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 18:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=I9ySmq/ziTnD5JxWwfYJIk6GUKpSL6REIC8gk6+wZMc=;
 b=fsfq+9tiV8u8HYp38iQg9BOoRCUTFfhL59YYTFKAt/ysAn3GrtGIwAl0STMCWez+jo
 /B6RmKyjAds7rB03or7Y+orv4p6rsJrikLhB7tSomO/hVQNW4ttaJioNGBzcU4qqPgn2
 JpX6+OyA6RBlEYD4kMIwwwk693CrdN+V+21ZyJ/dqMbJYnLGzYuNidneLt5MrKmCrM/6
 9Wc5OsYLP+8GHrE/kO2GqNyDSAa2J3YGogjb/aThuaUX5QjqTutwQPhR+oeNdK5jiG55
 C1qiYUOUgbXrMEj9rEvBFuV3wwYN/6horCIqfnAWOj9XOIi1ikpngxS9knF6H6KNDgjY
 9nDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=I9ySmq/ziTnD5JxWwfYJIk6GUKpSL6REIC8gk6+wZMc=;
 b=fggcIdrJ43PI4akgZJuSmVTv8ZZw5v7a4hqSIOejFnO4z6l24w19rZz9MZwDpgsjnJ
 fFGXouVxKe/hclPkHJX2frnFnbHWL/8a5OAwcg2bwPdf2q2aGqUX+EWe95cDeJ8qHABa
 fST7Tqn2kO2yHICfk06fa3rLFobBBzr+231OkQR6xpOxcnqTfgDZjKkAuVHQGlgZ0x/L
 qM1P1Q9gI0+9HVCwbGD9jx1d1CvzH0RRNLhI6t7YO17l2spDSWYnRKhx+LfkBR82sruw
 J0M0dsXM1ngtO7zH84o6D/lQzQf3voRJvFMu+gWcAiglgoSRwnGjpkyjxWgJnLJ86Hia
 ahgQ==
X-Gm-Message-State: AOAM530R7HIDPVtjU5Wkd6Y/TVb0Ax3NawzHoSig1Ohp/Ghq/+yVd1tN
 Z5ym8t2yL4HmMacsS3yvlYGBIkGrHvsbAA==
X-Google-Smtp-Source: ABdhPJzMjKkIRn90tyhAd6Gm1cXusgxHVIqzD7pgn5rxO/zcNPjJe4FguS6UJqFgV09OVFl1uVDr8Q==
X-Received: by 2002:a17:90b:110d:: with SMTP id
 gi13mr7084493pjb.173.1590716238955; 
 Thu, 28 May 2020 18:37:18 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id v197sm6073630pfc.4.2020.05.28.18.37.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 18:37:18 -0700 (PDT)
Date: Thu, 28 May 2020 18:37:18 -0700 (PDT)
X-Google-Original-Date: Thu, 28 May 2020 18:25:39 PDT (-0700)
Subject: Re: [PATCH v5 1/6] RISC-V: self-contained IPI handling routine
In-Reply-To: <20200521133301.816665-2-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-bd8faf3a-434c-4beb-a44a-3c71475304cd@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_183721_620944_307CECE1 
X-CRM114-Status: GOOD (  21.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aou@eecs.berkeley.edu, jason@lakedaemon.net, Marc Zyngier <maz@kernel.org>,
 anup@brainfault.org, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 06:32:56 PDT (-0700), Anup Patel wrote:
> Currently, the IPI handling routine riscv_software_interrupt() does
> not take any argument and also does not perform irq_enter()/irq_exit().
>
> This patch makes IPI handling routine more self-contained by:
> 1. Passing "pt_regs *" argument
> 2. Explicitly doing irq_enter()/irq_exit()
> 3. Explicitly save/restore "pt_regs *" using set_irq_regs()
>
> With above changes, IPI handling routine does not depend on caller
> function to perform irq_enter()/irq_exit() and save/restore of
> "pt_regs *" hence its more self-contained. This also enables us
> to call IPI handling routine from IRQCHIP drivers.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/include/asm/irq.h |  1 -
>  arch/riscv/include/asm/smp.h |  3 +++
>  arch/riscv/kernel/irq.c      | 16 ++++++++++------
>  arch/riscv/kernel/smp.c      | 11 +++++++++--
>  4 files changed, 22 insertions(+), 9 deletions(-)
>
> diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
> index 6e1b0e0325eb..0183e15ace66 100644
> --- a/arch/riscv/include/asm/irq.h
> +++ b/arch/riscv/include/asm/irq.h
> @@ -13,7 +13,6 @@
>  #define NR_IRQS         0
>
>  void riscv_timer_interrupt(void);
> -void riscv_software_interrupt(void);
>
>  #include <asm-generic/irq.h>
>
> diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
> index f4c7cfda6b7f..40bb1c15a731 100644
> --- a/arch/riscv/include/asm/smp.h
> +++ b/arch/riscv/include/asm/smp.h
> @@ -28,6 +28,9 @@ void show_ipi_stats(struct seq_file *p, int prec);
>  /* SMP initialization hook for setup_arch */
>  void __init setup_smp(void);
>
> +/* Called from C code, this handles an IPI. */
> +void handle_IPI(struct pt_regs *regs);
> +
>  /* Hook for the generic smp_call_function_many() routine. */
>  void arch_send_call_function_ipi_mask(struct cpumask *mask);
>
> diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
> index 345c4f2eba13..bb0bfcd537e7 100644
> --- a/arch/riscv/kernel/irq.c
> +++ b/arch/riscv/kernel/irq.c
> @@ -19,12 +19,15 @@ int arch_show_interrupts(struct seq_file *p, int prec)
>
>  asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
>  {
> -	struct pt_regs *old_regs = set_irq_regs(regs);
> +	struct pt_regs *old_regs;
>
> -	irq_enter();
>  	switch (regs->cause & ~CAUSE_IRQ_FLAG) {
>  	case RV_IRQ_TIMER:
> +		old_regs = set_irq_regs(regs);
> +		irq_enter();
>  		riscv_timer_interrupt();
> +		irq_exit();
> +		set_irq_regs(old_regs);
>  		break;
>  #ifdef CONFIG_SMP
>  	case RV_IRQ_SOFT:
> @@ -32,19 +35,20 @@ asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
>  		 * We only use software interrupts to pass IPIs, so if a non-SMP
>  		 * system gets one, then we don't know what to do.
>  		 */
> -		riscv_software_interrupt();
> +		handle_IPI(regs);
>  		break;
>  #endif
>  	case RV_IRQ_EXT:
> +		old_regs = set_irq_regs(regs);
> +		irq_enter();
>  		handle_arch_irq(regs);
> +		irq_exit();
> +		set_irq_regs(old_regs);
>  		break;
>  	default:
>  		pr_alert("unexpected interrupt cause 0x%lx", regs->cause);
>  		BUG();
>  	}
> -	irq_exit();
> -
> -	set_irq_regs(old_regs);
>  }
>
>  void __init init_IRQ(void)
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index a65a8fa0c22d..b1d4f452f843 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -123,11 +123,14 @@ static inline void clear_ipi(void)
>  		clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
>  }
>
> -void riscv_software_interrupt(void)
> +void handle_IPI(struct pt_regs *regs)
>  {
> +	struct pt_regs *old_regs = set_irq_regs(regs);
>  	unsigned long *pending_ipis = &ipi_data[smp_processor_id()].bits;
>  	unsigned long *stats = ipi_data[smp_processor_id()].stats;
>
> +	irq_enter();
> +
>  	clear_ipi();
>
>  	while (true) {
> @@ -138,7 +141,7 @@ void riscv_software_interrupt(void)
>
>  		ops = xchg(pending_ipis, 0);
>  		if (ops == 0)
> -			return;
> +			goto done;
>
>  		if (ops & (1 << IPI_RESCHEDULE)) {
>  			stats[IPI_RESCHEDULE]++;
> @@ -160,6 +163,10 @@ void riscv_software_interrupt(void)
>  		/* Order data access and bit testing. */
>  		mb();
>  	}
> +
> +done:
> +	irq_exit();
> +	set_irq_regs(old_regs);
>  }
>
>  static const char * const ipi_names[] = {

I guess we still have to figure out which tree these are going in through, but
I'm going to start acking them as I review them just so it all stays together.

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

