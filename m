Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73364DBB86
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 04:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Qizim+3Vaj1CHXp8WcNYfFABBgjEW76UlqFZyB/Pm8=; b=DnW/vyUIfoizwY
	hCgckB+viZ+fix8s1VIyWX8WybBgOOKjvYJ3I5aTB0oxhO80O7JKdXGuNRbqpm43gg/D4KRJDpyHL
	hkw+n4rwcoaX6ldnsx0SaSLHxsMZUE8Y6EJmZkubWJIpZwlhBnf+sPJ29exD9SoJC4DXWwbCaQzF2
	27WZl7zEo0aBuw6nVSlrq14t7lurJZ1ToN3yIzVmLbVBqspt1ctzpgCaVjEbY2QL+YMMHXxX6Psaa
	SbLMPfmEDrfpzQYc6m0ceWtOg9Dcb1AU84FmORa9IyRipVGy3kNYVvfDe/HaFBOQsQdaaMpXjQ6ZO
	P7Xuhq35C1JkgvZsC8Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLISf-0002Ir-Gc; Fri, 18 Oct 2019 02:57:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLISb-0002I7-UK
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 02:57:51 +0000
Received: by mail-wm1-x343.google.com with SMTP id m18so4549053wmc.1
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 19:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Be+nqHFdPq0NG3pyh4Rq7hQf+czCYg0L1pW1x7p+760=;
 b=DoA6IJxv26NmgWjkeJeBKv/mm4gBftt7CZNlftvhSbQVjLZT75mE7vzu4UmAD3XZPr
 MRZM0pDFz2HNMJySzUfEeVzKl1VbHaCSxmAkUVujCaolp5Wh+9U/Ly3OfHSQKuvrGup6
 17AV7GSnpvpJFD26BfqTFd0Vq4dAvC4GfuQJZvzcGAxuaYucrdMCrnPHINXF+JFR7V2G
 Jp5KD1aPBzQSYNWWB+1DBO3+Y51RVtciU2HDBz2oHOnZZnFnAxepA6Ai3+9sWhQ7eM+F
 DUpXaFYjmHize5NmajKvCdL3pkf0OuvGiewLyWcoSTIHUVbZdvAoBbsATT4micGZ7Tw1
 0Z2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Be+nqHFdPq0NG3pyh4Rq7hQf+czCYg0L1pW1x7p+760=;
 b=gjoORfmtLswb3TWb2Jy1/KispBi2VYAdYakcdStFNLZoPsLO1AI+GIg0OUGX3TxSo8
 g1dciYwZzgzG1mzYBVn1wxrmX7oKvp7IkL+KNBNHF60GsCHBUvpnhqaOpqzprAVtSDBV
 nEzT7g2UZdc7w52Jk3v6sWur1u7CkWXNSuHnZOvDLk/OvXwsKA9R+6aku3s0HeAlFJFV
 oJbDlqlehI+8lUeMHSYLHlSUbzvzfEnwMmr3xn8vbKl+s+zMFhh0fz744MKh7ynuTKfb
 YEoqQkXTTNXL/HynkxXz2S/rO2uiQrGB+zBlevpPG6v35zALvloZ7AcbtiHQQzljLhdd
 t65g==
X-Gm-Message-State: APjAAAXQvnTN+A16U+kQCfzgZncdmxbRv6Lcf1uV3YSOkbA3jV1dwGD0
 5xZOsJyAaqnu+V53rPx0F864eyHgyel6xqvhU+YSyg==
X-Google-Smtp-Source: APXvYqwxdrfkpUCWZjtubzLxwgGss6R4bxw1aLLjLER8GLyL4IIeYeiFxknMdYUVFzcsXWuLWKN0LVPHIz/j2kKUtgc=
X-Received: by 2002:a05:600c:214f:: with SMTP id
 v15mr5252538wml.177.1571367467638; 
 Thu, 17 Oct 2019 19:57:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-9-hch@lst.de>
In-Reply-To: <20191017173743.5430-9-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 18 Oct 2019 08:27:36 +0530
Message-ID: <CAAhSdy2Ln1H4hSbjSt30pZQpHRiP5G2rJffDXFDS6TbvBnM-vw@mail.gmail.com>
Subject: Re: [PATCH 08/15] riscv: add support for MMIO access to the timer
 registers
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_195749_991353_FC767931 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:08 PM Christoph Hellwig <hch@lst.de> wrote:
>
> When running in M-mode we can't use the SBI to set the timer, and
> don't have access to the time CSR as that usually is emulated by
> M-mode.  Instead provide code that directly accesses the MMIO for
> the timer.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
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
>         SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
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
> +#define mmio_get_cycles()      readq_relaxed(riscv_time_val)
> +#else
> +#define mmio_get_cycles()      readl_relaxed(riscv_time_val)
> +#define mmio_get_cycles_hi()   readl_relaxed(((u32 *)riscv_time_val) + 1)
> +#endif
> +
>  static inline cycles_t get_cycles(void)
>  {
> -       return csr_read(CSR_TIME);
> +       if (IS_ENABLED(CONFIG_RISCV_SBI))
> +               return csr_read(CSR_TIME);
> +       return mmio_get_cycles();
>  }
>  #define get_cycles get_cycles
>
> @@ -24,7 +37,9 @@ static inline u64 get_cycles64(void)
>  #else /* CONFIG_64BIT */
>  static inline u32 get_cycles_hi(void)
>  {
> -       return csr_read(CSR_TIMEH);
> +       if (IS_ENABLED(CONFIG_RISCV_SBI))
> +               return csr_read(CSR_TIMEH);
> +       return mmio_get_cycles_hi();
>  }
>
>  static inline u64 get_cycles64(void)
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index 5d2fdc3e28a9..2b9fbc4ebe49 100644
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
> +       writeq_relaxed(val,
> +               riscv_time_cmp + cpuid_to_hartid_map(smp_processor_id()));
> +}
> +
>  static int riscv_clock_next_event(unsigned long delta,
>                 struct clock_event_device *ce)
>  {
>         csr_set(CSR_XIE, XIE_XTIE);
> -       sbi_set_timer(get_cycles64() + delta);
> +       if (IS_ENABLED(CONFIG_RISCV_SBI))
> +               sbi_set_timer(get_cycles64() + delta);
> +       else
> +               mmio_set_timer(get_cycles64() + delta);
>         return 0;
>  }
>
> --
> 2.20.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
