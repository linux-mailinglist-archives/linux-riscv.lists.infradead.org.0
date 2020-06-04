Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CDF1EEC33
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jun 2020 22:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=dXU50/vf3BdT0KhuAX1AE6U0lathyuxAlinPdoFQsDA=; b=eCaKTPgtq78Ocg
	YmMN6Hwiwjg1QO4bSUJ6MgvScv+AaZpzYGPtzNF31E0q4N9Pl9AtxuMtGh4bnZ25JCH//lByHg0zv
	AJKM89RLAAXwZ1LZZTsq98v8wA1P5lQy47pr+W1incTw/MvFZXELkkXMnRPtJLXa+CqyYqjYZvrEt
	EWcYznOnzOsQHIGpObtGW+ZsKNeXe7AvSryfV6kO8g31ZIWrCm+v//GFvnmLlLgfsIJXcCnRGGyi4
	k4goGq45f7YJPH7IZA491G2h9W2S32NjufMf6gzXgP2d0yBa69JmDmvGsSzNfdz0V1UVo9PkFmYAV
	cY/W5iC9UlTgh1UT/AXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwfB-0002Z9-0r; Thu, 04 Jun 2020 20:40:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwez-0002RL-OS
 for linux-riscv@lists.infradead.org; Thu, 04 Jun 2020 20:40:23 +0000
Received: by mail-pl1-x641.google.com with SMTP id y11so2664698plt.12
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 13:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=dXU50/vf3BdT0KhuAX1AE6U0lathyuxAlinPdoFQsDA=;
 b=VXGVn3cka4wtLtWRU2vH5LpOwdIleHAejoNzjnxvaqIVf/dhlVR6FkJRzxO5ZpWCe0
 9nZJ9jNeqEqzYEci4etGJoLP2shWMbqXlNvMaE1uoXddVCer2efqgnk4IxQ4Hwp1SsUt
 R2wLWab5ymO7lccIXz5aWfv1oz6BNQcRh6apur0MDjE4t0v8HxB4UNLC/2UjGkpRscJw
 zB+vo9IOAlNYR3/i6dd85DkJrZnmr+O0rqtghr6vuZ3z3Uq4o2k0+xWd28RUT4QbvDmb
 owGlzpA0GcSRJHuVu+KXRaAX4hZA57rR5qgWUFOXhfMoM5YlhQGgqQVL02q80NBQp2CP
 pxhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=dXU50/vf3BdT0KhuAX1AE6U0lathyuxAlinPdoFQsDA=;
 b=g/DtiXguPzgDimZSRgHg8bAANiUKh/bwyPyu9viJXDH38ETOUGwqEHy0j4DmZesrLY
 p2zCjA8XL3iLXQ6IC63e4MTzbhIx5GvRcQakf2O9ftMsyRBsKQ7B5JReLW60YU7//Bp0
 MEOB/JjVhzAU3nGNlUViD6cvqHKiOTFHTrDyyTGHgDO3gzS9JUaLKzYvfQMXogw3/qE4
 hn1k9w4dAviuPfou5FuXbAlKMCpSK4PXPnegrafON+HHfX5pcGbzyB0B6k7JMc57uOSm
 nKWh0aWYomWqnNf5H3hD33AtGWYUmB8tCqCJvaPFjoPAxGV+pJ7CXsI5bSFq6qrWQeHq
 PuVg==
X-Gm-Message-State: AOAM5331UZrFxFJRAoAI5JaQiVLTcUACa3fOIRiyvKcqwPEVxobN3xLV
 xSv4DDinnmR/TWW1EGt3yxk02Q==
X-Google-Smtp-Source: ABdhPJw5fiXrYg6XFsz6ecwEgxwq7z/esROLzrbzW4lT5S5U/hicJMRrC2ul4ToyRSFemZY81zVUdw==
X-Received: by 2002:a17:902:eb13:: with SMTP id
 l19mr4435618plb.213.1591303220772; 
 Thu, 04 Jun 2020 13:40:20 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id nk15sm5068526pjb.57.2020.06.04.13.40.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 13:40:20 -0700 (PDT)
Date: Thu, 04 Jun 2020 13:40:20 -0700 (PDT)
X-Google-Original-Date: Thu, 04 Jun 2020 13:28:33 PDT (-0700)
Subject: Re: [PATCH 3/5] clocksource/drivers/timer-riscv: Remove MMIO related
 stuff
In-Reply-To: <20200521134544.816918-4-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-c95851de-d021-4272-aa99-6e9b492091ea@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_134021_808336_B0A07821 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

On Thu, 21 May 2020 06:45:42 PDT (-0700), Anup Patel wrote:
> Right now the RISC-V timer is convoluted to support:
> 1. Linux RISC-V S-mode (with MMU) where it will use TIME CSR
>    for clocksource and SBI timer calls for clockevent device.
> 2. Linux RISC-V M-mode (without MMU) where it will use CLINT
>    MMIO counter register for clocksource and CLINT MMIO compare
>    register for clockevent device.
>
> This patch removes MMIO related stuff from RISC-V timer driver
> so that we can have a separate CLINT timer driver.

This one will also break bisecting for the K210.

>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/Kconfig                |  2 +-
>  arch/riscv/include/asm/timex.h    | 28 +++++++---------------------
>  drivers/clocksource/Kconfig       |  2 +-
>  drivers/clocksource/timer-riscv.c | 17 ++---------------
>  4 files changed, 11 insertions(+), 38 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 2cf0c83c1a47..bbdc37a78f7b 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -52,7 +52,7 @@ config RISCV
>  	select PCI_DOMAINS_GENERIC if PCI
>  	select PCI_MSI if PCI
>  	select RISCV_INTC
> -	select RISCV_TIMER
> +	select RISCV_TIMER if RISCV_SBI
>  	select GENERIC_IRQ_MULTI_HANDLER
>  	select GENERIC_ARCH_TOPOLOGY if SMP
>  	select ARCH_HAS_PTE_SPECIAL
> diff --git a/arch/riscv/include/asm/timex.h b/arch/riscv/include/asm/timex.h
> index bad2a7c2cda5..a3fb85d505d4 100644
> --- a/arch/riscv/include/asm/timex.h
> +++ b/arch/riscv/include/asm/timex.h
> @@ -7,41 +7,27 @@
>  #define _ASM_RISCV_TIMEX_H
>
>  #include <asm/csr.h>
> -#include <asm/mmio.h>
>
>  typedef unsigned long cycles_t;
>
> -extern u64 __iomem *riscv_time_val;
> -extern u64 __iomem *riscv_time_cmp;
> -
> -#ifdef CONFIG_64BIT
> -#define mmio_get_cycles()	readq_relaxed(riscv_time_val)
> -#else
> -#define mmio_get_cycles()	readl_relaxed(riscv_time_val)
> -#define mmio_get_cycles_hi()	readl_relaxed(((u32 *)riscv_time_val) + 1)
> -#endif
> -
>  static inline cycles_t get_cycles(void)
>  {
> -	if (IS_ENABLED(CONFIG_RISCV_SBI))
> -		return csr_read(CSR_TIME);
> -	return mmio_get_cycles();
> +	return csr_read(CSR_TIME);
>  }
>  #define get_cycles get_cycles
>
> +static inline u32 get_cycles_hi(void)
> +{
> +	return csr_read(CSR_TIMEH);
> +}
> +#define get_cycles_hi get_cycles_hi
> +
>  #ifdef CONFIG_64BIT
>  static inline u64 get_cycles64(void)
>  {
>  	return get_cycles();
>  }
>  #else /* CONFIG_64BIT */
> -static inline u32 get_cycles_hi(void)
> -{
> -	if (IS_ENABLED(CONFIG_RISCV_SBI))
> -		return csr_read(CSR_TIMEH);
> -	return mmio_get_cycles_hi();
> -}
> -
>  static inline u64 get_cycles64(void)
>  {
>  	u32 hi, lo;
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index f2142e6bbea3..21950d9e3e9d 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -650,7 +650,7 @@ config ATCPIT100_TIMER
>
>  config RISCV_TIMER
>  	bool "Timer for the RISC-V platform"
> -	depends on GENERIC_SCHED_CLOCK && RISCV
> +	depends on GENERIC_SCHED_CLOCK && RISCV_SBI
>  	default y
>  	select TIMER_PROBE
>  	select TIMER_OF
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index 5fb7c5ba5c91..3e7e0cf5b899 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -19,26 +19,13 @@
>  #include <linux/of_irq.h>
>  #include <asm/smp.h>
>  #include <asm/sbi.h>
> -
> -u64 __iomem *riscv_time_cmp;
> -u64 __iomem *riscv_time_val;
> -
> -static inline void mmio_set_timer(u64 val)
> -{
> -	void __iomem *r;
> -
> -	r = riscv_time_cmp + cpuid_to_hartid_map(smp_processor_id());
> -	writeq_relaxed(val, r);
> -}
> +#include <asm/timex.h>
>
>  static int riscv_clock_next_event(unsigned long delta,
>  		struct clock_event_device *ce)
>  {
>  	csr_set(CSR_IE, IE_TIE);
> -	if (IS_ENABLED(CONFIG_RISCV_SBI))
> -		sbi_set_timer(get_cycles64() + delta);
> -	else
> -		mmio_set_timer(get_cycles64() + delta);
> +	sbi_set_timer(get_cycles64() + delta);
>  	return 0;
>  }

