Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BDA1EEC31
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jun 2020 22:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=sSwds6Mehfdl4NuqZWFemzPG2moYmBqluiH61i1DVVs=; b=HyWsDX1RXkxE9/
	/HPyogyopEV0Kjiy1cgEZcJhVI55JCVydEO84F7iX2epKpDMjF1MS4sTJR+0Ai6kQlOatvZLpmdzy
	x1Dhaz49YwIG46Dsy4GPaVjZzMTsMFITDHI+rWaWFvd3JWWhx2eagSrt/MtJbyFPHcAoxK1Y2BRF5
	e15CDyuSrDqQr6ZzsYraETkbY9YP/Gy5LnsEp8PyuLZODW/UbRL0szgnQc6a10WodqQD+tBzs8ls3
	Rn3kKjgzcwdr3OF5ZFbVNDoWC6y1l3kMDfAKwPhPuZdERH7TojdLnKNju2ERpMZBwfBqMLqqzdk8g
	uuZgjAP7LEaEYTMPvdCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwez-0002Qf-V1; Thu, 04 Jun 2020 20:40:21 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwew-0002Q6-Ib
 for linux-riscv@lists.infradead.org; Thu, 04 Jun 2020 20:40:20 +0000
Received: by mail-pl1-x642.google.com with SMTP id v24so2680877plo.6
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 13:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=sSwds6Mehfdl4NuqZWFemzPG2moYmBqluiH61i1DVVs=;
 b=DfIDgntuJl5g51HnSaY62dK/6YhbXj8X8+YJ6rmu3TSDzKHAN/2lW3imL53i8yFWk6
 iDQbDGHhZBmL2FzkSCdMYjXwtTn6HKYiVOrUqIlfXMzgf7d2uEfcRZSjhuO0KeVwyGxL
 HroFlPslvCldax5Aq3QMb9v8/j3s9Sj6KmCwBWx00oniLLIlMV9UL99BOcHZWntJoPHt
 PdcTPI0FTj3t9qC83vCnFTNvaU5pgOxIz2Gqrf+tT86bdkfeTzdsVIeAlHWpZhCvxYza
 U/ucwBwbpy9Wc32v7ejOGHWwKWMdQ4JzCkcuKvczhFwXtQjnWy45PtkYsDXX3UdcxAh7
 Iwsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=sSwds6Mehfdl4NuqZWFemzPG2moYmBqluiH61i1DVVs=;
 b=pl2QQtAPx/MLVtJbb6ttTCdvXQhMeygdiCmHk5I7VuBcE+EIFBNJRjPeSwXeap/hsi
 uKC+zLpSqqz0t9BdbyuHRgST1cjEIbOBt8tlmhDNgfH43TVYi/xM5y6h3ZNmXfT1Ddbs
 g6wPMWt1Ui83m+sf/MyClgfyRoRtgeyY+R1PKk19hhLf8LThlQiylKH1DA16MVQ3NjNV
 w4IdjJmVF2MENx+dS2x9EzIopQP798BRbp6gAwKkPtSVA9LmKoSMGHQmy7yh7mvoH16i
 Yp235kWdAJIQYCTrTjBgJODEM5ISkPfvvtV0fh0Wj5vP0RitC53tjvVocvYPpxW9W+++
 R9Sg==
X-Gm-Message-State: AOAM5318t1/eFQo3t7N5i5V58ZUuj3NSDgXYOTmvLOAShb5Bf320CT8z
 irPjengOmbcZ8J1jKrX+vYK163L0npUPWw==
X-Google-Smtp-Source: ABdhPJyEO+B4REHxl9bA1UQTuNCX9YLrasiTTCNpbKpwy1NuHpMqc4or97YOkoZxgWeBU20CRjL5Lg==
X-Received: by 2002:a17:902:6b49:: with SMTP id
 g9mr6448631plt.66.1591303217628; 
 Thu, 04 Jun 2020 13:40:17 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id 3sm5192023pfe.85.2020.06.04.13.40.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 13:40:17 -0700 (PDT)
Date: Thu, 04 Jun 2020 13:40:17 -0700 (PDT)
X-Google-Original-Date: Thu, 04 Jun 2020 13:26:30 PDT (-0700)
Subject: Re: [PATCH 1/5] RISC-V: Add mechanism to provide custom IPI operations
In-Reply-To: <20200521134544.816918-2-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-b031fd3d-c966-4973-a94d-3307d11b44d5@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_134018_628606_89E9EAA7 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <Damien.LeMoal@wdc.com>,
 aou@eecs.berkeley.edu, anup@brainfault.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Anup Patel <Anup.Patel@wdc.com>, robh+dt@kernel.org,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 06:45:40 PDT (-0700), Anup Patel wrote:
> We add mechanism to set custom IPI operations so that CLINT driver
> from drivers directory can provide custom IPI operations.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/include/asm/smp.h | 11 ++++++++
>  arch/riscv/kernel/smp.c      | 52 ++++++++++++++++++++++++------------
>  arch/riscv/kernel/smpboot.c  |  3 +--
>  3 files changed, 47 insertions(+), 19 deletions(-)
>
> diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
> index 40bb1c15a731..ad0601260cb1 100644
> --- a/arch/riscv/include/asm/smp.h
> +++ b/arch/riscv/include/asm/smp.h
> @@ -40,6 +40,17 @@ void arch_send_call_function_single_ipi(int cpu);
>  int riscv_hartid_to_cpuid(int hartid);
>  void riscv_cpuid_to_hartid_mask(const struct cpumask *in, struct cpumask *out);
>
> +struct riscv_ipi_ops {
> +	void (*ipi_inject)(const unsigned long *hart_mask);
> +	void (*ipi_clear)(void);
> +};
> +
> +/* Set custom IPI operations */
> +void riscv_set_ipi_ops(struct riscv_ipi_ops *ops);
> +
> +/* Clear IPI for current CPU */
> +void riscv_clear_ipi(void);
> +
>  /*
>   * Obtains the hart ID of the currently executing task.  This relies on
>   * THREAD_INFO_IN_TASK, but we define that unconditionally.
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index b1d4f452f843..8375cc5970f6 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -84,6 +84,35 @@ static void ipi_stop(void)
>  		wait_for_interrupt();
>  }
>
> +#if IS_ENABLED(CONFIG_RISCV_SBI)
> +static void clear_ipi(void)
> +{
> +	csr_clear(CSR_IP, IE_SIE);
> +}
> +
> +static struct riscv_ipi_ops sbi_ipi_ops = {
> +	.ipi_inject = sbi_send_ipi,
> +	.ipi_clear = clear_ipi,
> +};
> +
> +static struct riscv_ipi_ops *ipi_ops = &sbi_ipi_ops;
> +#else
> +static struct riscv_ipi_ops *ipi_ops;
> +#endif
> +
> +void riscv_set_ipi_ops(struct riscv_ipi_ops *ops)
> +{
> +	ipi_ops = ops;
> +}
> +EXPORT_SYMBOL_GPL(riscv_set_ipi_ops);
> +
> +void riscv_clear_ipi(void)
> +{
> +	if (ipi_ops)
> +		ipi_ops->ipi_clear();
> +}
> +EXPORT_SYMBOL_GPL(riscv_clear_ipi);

There should at least be a warning on SMP systems when an ipi_ops hasn't been
set, as otherwise the system will just hang.

> +
>  static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
>  {
>  	struct cpumask hartid_mask;
> @@ -95,10 +124,9 @@ static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
>  	smp_mb__after_atomic();
>
>  	riscv_cpuid_to_hartid_mask(mask, &hartid_mask);
> -	if (IS_ENABLED(CONFIG_RISCV_SBI))
> -		sbi_send_ipi(cpumask_bits(&hartid_mask));
> -	else
> -		clint_send_ipi_mask(mask);
> +
> +	if (ipi_ops)
> +		ipi_ops->ipi_inject(cpumask_bits(&hartid_mask));
>  }
>
>  static void send_ipi_single(int cpu, enum ipi_message_type op)
> @@ -109,18 +137,8 @@ static void send_ipi_single(int cpu, enum ipi_message_type op)
>  	set_bit(op, &ipi_data[cpu].bits);
>  	smp_mb__after_atomic();
>
> -	if (IS_ENABLED(CONFIG_RISCV_SBI))
> -		sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
> -	else
> -		clint_send_ipi_single(hartid);
> -}
> -
> -static inline void clear_ipi(void)
> -{
> -	if (IS_ENABLED(CONFIG_RISCV_SBI))
> -		csr_clear(CSR_IP, IE_SIE);
> -	else
> -		clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
> +	if (ipi_ops)
> +		ipi_ops->ipi_inject(cpumask_bits(cpumask_of(hartid)));
>  }
>
>  void handle_IPI(struct pt_regs *regs)
> @@ -131,7 +149,7 @@ void handle_IPI(struct pt_regs *regs)
>
>  	irq_enter();
>
> -	clear_ipi();
> +	riscv_clear_ipi();
>
>  	while (true) {
>  		unsigned long ops;
> diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> index 4e9922790f6e..5fe849791bf0 100644
> --- a/arch/riscv/kernel/smpboot.c
> +++ b/arch/riscv/kernel/smpboot.c
> @@ -147,8 +147,7 @@ asmlinkage __visible void smp_callin(void)
>  {
>  	struct mm_struct *mm = &init_mm;
>
> -	if (!IS_ENABLED(CONFIG_RISCV_SBI))
> -		clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
> +	riscv_clear_ipi();
>
>  	/* All kernel threads share the same mm context.  */
>  	mmgrab(mm);

