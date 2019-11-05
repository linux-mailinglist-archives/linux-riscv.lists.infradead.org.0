Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DA6F04A3
	for <lists+linux-riscv@lfdr.de>; Tue,  5 Nov 2019 19:01:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8AqwiCcFeqv9feLC+gOnEeFMgm8nMgS4iyEPZ83t3A=; b=dfRViwIA6DwWNh
	fRjYBENRvmhCTERswdaLq2llCen+WThpCbyfi2mJPlxCmEndIt/0OsgIqBc94F2ZOnxXd3EtBbrXn
	IdgLG74PqTo0sBgXi/kmGSt/7jZTgl7iwFqE7DprxFkqXvm7NMA9MUme9YxQRFwLfKURizte0/2dj
	OOBp3qcej769N10pOF4/ZVJdC8vZsBX+f3VFBTQC57YucHYLqlew/tK5sSkpH8Rd2JURR0CnX8whO
	jdatimjpVliboQycvFSNoMQVH8tk1zmekrrVGlNQNFJsko+U1AvbZHAbe1Nr/ErdULObWND7zjs0F
	/XvGHIwZeHMX/nd8YK/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS38l-00011b-PX; Tue, 05 Nov 2019 18:01:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS38i-00010z-45
 for linux-riscv@lists.infradead.org; Tue, 05 Nov 2019 18:01:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so14786548pgh.10
 for <linux-riscv@lists.infradead.org>; Tue, 05 Nov 2019 10:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=OQ2sUxRTRKakBtPYk/S8WUmT3yCnF85ytB5yNnyoq6o=;
 b=NrgmzX/TspryQwSsCOZ8C24mKqj3an0i0v8R/kjSzbmAAxcRVe143F0TPH26d8/pSo
 J3fMu08Ea+OlUPMwcNZlJGmFBYtjxQHOGMxLt1kwMAkp4CJI/ldNIaPzw1/E6IjiHIrZ
 qyFfcjJt9v2xbzi66OOCuIodX8C+F+1ndNDsw1xh465NVMiVWxLmJKk8GEXolHE4GSiP
 2GVt0NWMuTOaMM47vX8TjVO6ogYYPPnfCvFso3Zoy7NNvSNRK4cqpSdWDjNbCpyW5jqA
 D5A8/py7mOENESwUELBSwcEXofwydMUynETjQFU75yvDFh8c0i57SHxtljAkotPWWFKc
 2SwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=OQ2sUxRTRKakBtPYk/S8WUmT3yCnF85ytB5yNnyoq6o=;
 b=HU78zEFM7EoUSVSmWKG13k39fceKDXWLRHKCXOSfxpWZTKcqxtU7xv7XvcXLRgW+vy
 iaBV6dQ8vhfaUkw2BzMtQflwE2CcWn2qWYmfS9SZ/nkXrgQHp9uf+0o3vYCicpcHDreu
 PBDtXBT9mzxJGzn3mcAfP0uJGbKwClJDHM6i8iFFMwQigg5M+RLSj/4po38oO/MVQvEl
 gg8DcQRHZ7sj1GP/Ang8zOjxclnuY4MJbSQ436nWacArI8BF68ut/N41cLZGwoG3z9P+
 35PA6bBV8i4iAlro8nm+dUr8U6fY0hNtgEDBqTQtZ2Avg9PrMuOLxHfFGmcm9dp3wpnn
 1cMg==
X-Gm-Message-State: APjAAAUrM9jqxH/OaH/3PwSV3rH9Kh8TYd17is61PxNOTYcPaQlnRXH/
 EfvNz+QDP8myUMQ3ut1K/hwgig==
X-Google-Smtp-Source: APXvYqyoY9Xi1zQEjfoRsCWnqjT8HneLboOSc9h2AeSevxie1StHTNNH11eVRYn9BpFm2nuNYWff4g==
X-Received: by 2002:a65:614a:: with SMTP id o10mr20962942pgv.219.1572976871332; 
 Tue, 05 Nov 2019 10:01:11 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id n8sm62516pja.30.2019.11.05.10.01.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 10:01:10 -0800 (PST)
Date: Tue, 5 Nov 2019 10:01:10 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: daniel.lezcano@linaro.org, tglx@linutronix.de
Subject: Re: [PATCH 06/12] riscv: add support for MMIO access to the timer
 registers
In-Reply-To: <20191028121043.22934-7-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911050958020.20606@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-7-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_100112_174005_1A4FB1D1 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Daniel, Thomas,

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> When running in M-mode we can't use the SBI to set the timer, and
> don't have access to the time CSR as that usually is emulated by
> M-mode.  Instead provide code that directly accesses the MMIO for
> the timer.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Anup Patel <anup@brainfault.org>

Care to give a quick ack to the drivers/clocksource/timer-riscv.c changes?

thanks,

- Paul

> ---
>  arch/riscv/include/asm/sbi.h      |  3 ++-
>  arch/riscv/include/asm/timex.h    | 19 +++++++++++++++++--
>  drivers/clocksource/timer-riscv.c | 21 +++++++++++++++++----
>  3 files changed, 36 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 0cb74eccc73f..a4774bafe033 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -95,7 +95,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>  	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
>  }
>  #else /* CONFIG_RISCV_SBI */
> -/* stub to for code is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
> +/* stubs to for code is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
> +void sbi_set_timer(uint64_t stime_value);
>  void sbi_remote_fence_i(const unsigned long *hart_mask);
>  #endif /* CONFIG_RISCV_SBI */
>  #endif /* _ASM_RISCV_SBI_H */
> diff --git a/arch/riscv/include/asm/timex.h b/arch/riscv/include/asm/timex.h
> index c7ef131b9e4c..e17837d61667 100644
> --- a/arch/riscv/include/asm/timex.h
> +++ b/arch/riscv/include/asm/timex.h
> @@ -7,12 +7,25 @@
>  #define _ASM_RISCV_TIMEX_H
>  
>  #include <asm/csr.h>
> +#include <asm/io.h>
>  
>  typedef unsigned long cycles_t;
>  
> +extern u64 __iomem *riscv_time_val;
> +extern u64 __iomem *riscv_time_cmp;
> +
> +#ifdef CONFIG_64BIT
> +#define mmio_get_cycles()	readq_relaxed(riscv_time_val)
> +#else
> +#define mmio_get_cycles()	readl_relaxed(riscv_time_val)
> +#define mmio_get_cycles_hi()	readl_relaxed(((u32 *)riscv_time_val) + 1)
> +#endif
> +
>  static inline cycles_t get_cycles(void)
>  {
> -	return csr_read(CSR_TIME);
> +	if (IS_ENABLED(CONFIG_RISCV_SBI))
> +		return csr_read(CSR_TIME);
> +	return mmio_get_cycles();
>  }
>  #define get_cycles get_cycles
>  
> @@ -24,7 +37,9 @@ static inline u64 get_cycles64(void)
>  #else /* CONFIG_64BIT */
>  static inline u32 get_cycles_hi(void)
>  {
> -	return csr_read(CSR_TIMEH);
> +	if (IS_ENABLED(CONFIG_RISCV_SBI))
> +		return csr_read(CSR_TIMEH);
> +	return mmio_get_cycles_hi();
>  }
>  
>  static inline u64 get_cycles64(void)
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index d083bfb535f6..f3eb0c04401a 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -3,9 +3,9 @@
>   * Copyright (C) 2012 Regents of the University of California
>   * Copyright (C) 2017 SiFive
>   *
> - * All RISC-V systems have a timer attached to every hart.  These timers can be
> - * read from the "time" and "timeh" CSRs, and can use the SBI to setup
> - * events.
> + * All RISC-V systems have a timer attached to every hart.  These timers can
> + * either be read from the "time" and "timeh" CSRs, and can use the SBI to
> + * setup events, or directly accessed using MMIO registers.
>   */
>  #include <linux/clocksource.h>
>  #include <linux/clockchips.h>
> @@ -13,14 +13,27 @@
>  #include <linux/delay.h>
>  #include <linux/irq.h>
>  #include <linux/sched_clock.h>
> +#include <linux/io-64-nonatomic-lo-hi.h>
>  #include <asm/smp.h>
>  #include <asm/sbi.h>
>  
> +u64 __iomem *riscv_time_cmp;
> +u64 __iomem *riscv_time_val;
> +
> +static inline void mmio_set_timer(u64 val)
> +{
> +	writeq_relaxed(val,
> +		riscv_time_cmp + cpuid_to_hartid_map(smp_processor_id()));
> +}
> +
>  static int riscv_clock_next_event(unsigned long delta,
>  		struct clock_event_device *ce)
>  {
>  	csr_set(CSR_IE, IE_TIE);
> -	sbi_set_timer(get_cycles64() + delta);
> +	if (IS_ENABLED(CONFIG_RISCV_SBI))
> +		sbi_set_timer(get_cycles64() + delta);
> +	else
> +		mmio_set_timer(get_cycles64() + delta);
>  	return 0;
>  }
>  
> -- 
> 2.20.1
> 
> 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
