Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF39109841
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 05:14:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grZRpFWiAB07plB68Te3yLwexb6ckWX7xk7FXWo85nk=; b=rZRkeRMIDYNGuq
	Gm9Cn995UMor7FJEekpJ8zuZGttOYpYgMpdexpCOPRhjwnuDwo45yQk71OeJc7/gmtXB4Vjlr2Ewq
	MbKygYS/anFMJbzs8NJBNo5n1c7q4CE+E+BpW/dRKQqDlVvcxm9Qsy4/m79nM9AuOugazGm0ExJbx
	iUB3xPkVF7PfDn9V1FfPNaQseNtzjobXA+nJqm/zOO/a3MnaqNBAM8wJibbzLmslq0nFuUusb0+jh
	CFsHagvsEhrlpuuEkM3I9iqAfqywYsAX4bsID7FGhdpuDgY/dQ3LlyVCEA6wMxUDZpqSJf3z4RYLC
	XWrSsW1Ulqj2mByEdg+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZSFN-0007Bs-Ui; Tue, 26 Nov 2019 04:14:41 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZSFK-0007BQ-AH
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 04:14:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id t26so1659321wmi.4
 for <linux-riscv@lists.infradead.org>; Mon, 25 Nov 2019 20:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xFemv6wCZalf/9FIJedyD8IoPPbwLyub0+LMLtADr4Y=;
 b=KEZDFhU/h0tVP//zt+DQk0efvcyC1ew9ggc6zktCUmLFBN++tWwfdUJmKxb7JaQAde
 m1xe+L87gsIxnNiFBifwR1LkP/RE7BwjTOaon14wr5XtxSI4I3OqoMimZlRpyO3BDK7I
 rhK7t1pqe/U8QJZK38U6g73BSJNlf7UgLng1G8qu05sjausIx8KOUkY0Rof2XTTP2g2M
 2/xhUi7BIBZjjW3Uo+LFuGYkVbB0OHJJUQwHkGdBFpBuOzHeml/twnCFK5Vg8sQJcYeL
 F6pvzLZuT/DSYKxyG4w2ZnKmQMgkadezNtLgWyZaNtq4Ecbmgbm+/6DLbHVwDr0XU1XJ
 +w4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xFemv6wCZalf/9FIJedyD8IoPPbwLyub0+LMLtADr4Y=;
 b=Q4YORb/obya5w8AYccsyk5tTX56VXFLFY/pXcB93QiFrVsv6fEARDOl+6APzoKjosV
 9e5xFzR4kv3akd00talEbl/4GtIqhuZG7inqrX17DdInqTvFNfpmEO6DDzfesY8w0n6M
 hagLMkwukcDCCxdAVEs50wlpRUIzaGjjB4zaN0SC48uUL8z6MKHFDnYtiEa/VXMcivHD
 DHgEFizPHBrdwXB5E1Dw/ysBHk8CFVT/Ot9DFTH7l4Y/Kh2PBh5qFktfEFD7ADBXs9Tu
 FvokdxpXHR3cmOi4i5pZapyueXeMXZmg4DyP8LXVThkGcdcfftJ+FPmqd9Uj/rYRKyIH
 d1KA==
X-Gm-Message-State: APjAAAW6OGM8g7IlYv5Zoo4JTm0B1BFj6AwheaqYPyCLpIMWmzF+t82o
 BfIZFSNysxanimCi/s8an+xAuQWeYHetwW3aoekG5A==
X-Google-Smtp-Source: APXvYqzoA5B9vUcfyEmHKOBxoNoyUHVAz8idRDlq3cIlYOGg2WlGSZVoW5eBmsLK8Flb1AC0QGTgtEXEE47MYBSSJw8=
X-Received: by 2002:a05:600c:2292:: with SMTP id
 18mr1987740wmf.103.1574741676457; 
 Mon, 25 Nov 2019 20:14:36 -0800 (PST)
MIME-Version: 1.0
References: <20191126032033.14825-1-atish.patra@wdc.com>
 <20191126032033.14825-4-atish.patra@wdc.com>
In-Reply-To: <20191126032033.14825-4-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 26 Nov 2019 09:44:25 +0530
Message-ID: <CAAhSdy2icvYPfa5Dm+1qF9sr=22ErHVYr=ZmXYqu6dHZing81A@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] RISC-V: Introduce a new config for SBI v0.1
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_201438_358545_D52ECCDB 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 8:50 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> We now have SBI v0.2 which is more scalable and extendable to handle
> future needs for RISC-V supervisor interfaces.
>
> Introduce a new config and move all SBI v0.1 code under that config.
> This allows to implement the new replacement SBI extensions cleanly
> and remove v0.1 extensions easily in future. Currently, the config
> is enabled by default. Once all M-mode software with v0.1 are no
> longer in use, this config option and all relevant code can be easily
> removed.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/Kconfig           |   6 ++
>  arch/riscv/include/asm/sbi.h |   2 +
>  arch/riscv/kernel/sbi.c      | 154 +++++++++++++++++++++++++++++------
>  3 files changed, 138 insertions(+), 24 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index ca3b5541ae93..15c020d6837b 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -304,6 +304,12 @@ config SECCOMP
>           and the task is only allowed to execute a few safe syscalls
>           defined by each seccomp mode.
>
> +config RISCV_SBI_V01
> +       bool "SBI v0.1 support"
> +       default y
> +       help
> +         This config allows kernel to use SBI v0.1 APIs. This will be
> +         deprecated in future once legacy M-mode software are no longer in use.
>  endmenu
>
>  menu "Boot options"
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 906438322932..cc82ae63f8e0 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -10,6 +10,7 @@
>
>  #ifdef CONFIG_RISCV_SBI
>  enum sbi_ext_id {
> +#ifdef CONFIG_RISCV_SBI_V01
>         SBI_EXT_0_1_SET_TIMER = 0x0,
>         SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
>         SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
> @@ -19,6 +20,7 @@ enum sbi_ext_id {
>         SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
>         SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
>         SBI_EXT_0_1_SHUTDOWN = 0x8,
> +#endif
>         SBI_EXT_BASE = 0x10,
>  };
>
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> index 8b36269fa515..8574de1074c4 100644
> --- a/arch/riscv/kernel/sbi.c
> +++ b/arch/riscv/kernel/sbi.c
> @@ -8,6 +8,14 @@
>  unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
>  EXPORT_SYMBOL(sbi_spec_version);
>
> +void (*__sbi_set_timer)(uint64_t stime);
> +int (*__sbi_send_ipi)(const unsigned long *hart_mask);
> +int (*__sbi_rfence)(unsigned long extid, unsigned long fid,
> +                 const unsigned long *hart_mask,
> +                 unsigned long hbase, unsigned long start,
> +                 unsigned long size, unsigned long arg4,
> +                 unsigned long arg5);
> +

Make these function pointers static.

>  struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
>                         unsigned long arg1, unsigned long arg2,
>                         unsigned long arg3, unsigned long arg4,
> @@ -52,6 +60,32 @@ static int sbi_err_map_linux_errno(int err)
>         };
>  }
>
> +static inline void __sbi_set_timer_dummy_warn(uint64_t stime_value)

Don't make this function inline because you are assigning it to function
pointer below.

> +{
> +       pr_warn("Timer extension is not available in SBI v%lu.%lu\n",
> +               sbi_major_version(), sbi_minor_version());
> +}
> +
> +static inline int __sbi_send_ipi_dummy_warn(const unsigned long *hart_mask)

Same as above.

> +{
> +       pr_warn("IPI extension is not available in SBI v%lu.%lu\n",
> +               sbi_major_version(), sbi_minor_version());
> +       return 0;
> +}
> +
> +static inline int __sbi_rfence_dummy_warn(unsigned long extid,
> +                            unsigned long fid,
> +                            const unsigned long *hart_mask,
> +                            unsigned long hbase, unsigned long start,
> +                            unsigned long size, unsigned long arg4,
> +                            unsigned long arg5)

Same as above.

> +{
> +       pr_warn("remote fence extension is not available in SBI v%lu.%lu\n",
> +               sbi_major_version(), sbi_minor_version());
> +       return 0;
> +}
> +
> +#ifdef CONFIG_RISCV_SBI_V01
>  /**
>   * sbi_console_putchar() - Writes given character to the console device.
>   * @ch: The data to be written to the console.
> @@ -80,41 +114,106 @@ int sbi_console_getchar(void)
>  EXPORT_SYMBOL(sbi_console_getchar);
>
>  /**
> - * sbi_set_timer() - Program the timer for next timer event.
> - * @stime_value: The value after which next timer event should fire.
> + * sbi_shutdown() - Remove all the harts from executing supervisor code.
>   *
>   * Return: None
>   */
> -void sbi_set_timer(uint64_t stime_value)
> +void sbi_shutdown(void)
>  {
> -#if __riscv_xlen == 32
> -       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
> -                         stime_value >> 32, 0, 0, 0, 0);
> -#else
> -       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
> -#endif
> +       sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_set_timer);
>
>  /**
> - * sbi_shutdown() - Remove all the harts from executing supervisor code.
> + * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
>   *
>   * Return: None
>   */
> -void sbi_shutdown(void)
> +void sbi_clear_ipi(void)
>  {
> -       sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
> +       sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_shutdown);
>
>  /**
> - * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
> + * sbi_set_timer_v01() - Program the timer for next timer event.
> + * @stime_value: The value after which next timer event should fire.
>   *
>   * Return: None
>   */
> -void sbi_clear_ipi(void)
> +static void __sbi_set_timer_v01(uint64_t stime_value)
>  {
> -       sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
> +#if __riscv_xlen == 32
> +       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
> +                 stime_value >> 32, 0, 0, 0, 0);
> +#else
> +       sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
> +#endif
> +}
> +
> +static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
> +{
> +       sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
> +                 0, 0, 0, 0, 0);
> +       return 0;
> +}
> +
> +static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
> +                            const unsigned long *hart_mask,
> +                            unsigned long hbase, unsigned long start,
> +                            unsigned long size, unsigned long arg4,
> +                            unsigned long arg5)
> +{
> +       switch (ext) {
> +       case SBI_EXT_0_1_REMOTE_FENCE_I:
> +               sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
> +                         (unsigned long)hart_mask, 0, 0, 0, 0, 0);
> +               break;
> +       case SBI_EXT_0_1_REMOTE_SFENCE_VMA:
> +               sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> +                         (unsigned long)hart_mask, start, size,
> +                         0, 0, 0);
> +               break;
> +       case SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID:
> +               sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> +                         (unsigned long)hart_mask, start, size,
> +                         arg4, 0, 0);
> +               break;
> +       default:
> +               pr_err("extid [%lu]not supported in SBI v0.1\n", ext);
> +       }
> +
> +       return 0;
> +}
> +#else
> +static void __sbi_set_timer_v01(uint64_t stime_value)
> +{
> +       __sbi_set_timer_dummy_warn(0);
> +}
> +static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
> +{
> +       return __sbi_send_ipi_dummy_warn(NULL);
> +}
> +static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
> +                            const unsigned long *hart_mask,
> +                            unsigned long hbase, unsigned long start,
> +                            unsigned long size, unsigned long arg4,
> +                            unsigned long arg5)
> +{
> +       return __sbi_rfence_dummy_warn(0, 0, 0, 0, 0, 0, 0, 0);
> +
> +}
> +#endif /* CONFIG_RISCV_SBI_V01 */
> +
> +/**
> + * sbi_set_timer() - Program the timer for next timer event.
> + * @stime_value: The value after which next timer event should fire.
> + *
> + * Return: None
> + */
> +void sbi_set_timer(uint64_t stime_value)
> +{
> +       __sbi_set_timer(stime_value);
>  }
>
>  /**
> @@ -125,11 +224,11 @@ void sbi_clear_ipi(void)
>   */
>  void sbi_send_ipi(const unsigned long *hart_mask)
>  {
> -       sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
> -                       0, 0, 0, 0, 0);
> +       __sbi_send_ipi(hart_mask);
>  }
>  EXPORT_SYMBOL(sbi_send_ipi);
>
> +
>  /**
>   * sbi_remote_fence_i() - Execute FENCE.I instruction on given remote harts.
>   * @hart_mask: A cpu mask containing all the target harts.
> @@ -138,8 +237,8 @@ EXPORT_SYMBOL(sbi_send_ipi);
>   */
>  void sbi_remote_fence_i(const unsigned long *hart_mask)
>  {
> -       sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned long)hart_mask,
> -                       0, 0, 0, 0, 0);
> +       __sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
> +                    hart_mask, 0, 0, 0, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_fence_i);
>
> @@ -156,8 +255,8 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
>                                          unsigned long start,
>                                          unsigned long size)
>  {
> -       sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> -                       (unsigned long)hart_mask, start, size, 0, 0, 0);
> +       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> +                    hart_mask, 0, start, size, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_sfence_vma);
>
> @@ -177,8 +276,8 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>                                               unsigned long size,
>                                               unsigned long asid)
>  {
> -       sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> -                       (unsigned long)hart_mask, start, size, asid, 0, 0);
> +       __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> +                    hart_mask, 0, start, size, asid, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
>
> @@ -254,8 +353,15 @@ int __init sbi_init(void)
>
>         pr_info("SBI specification v%lu.%lu detected\n",
>                 sbi_major_version(), sbi_minor_version());
> -       if (!sbi_spec_is_0_1())
> +
> +       if (sbi_spec_is_0_1()) {
> +               __sbi_set_timer = __sbi_set_timer_v01;
> +               __sbi_send_ipi  = __sbi_send_ipi_v01;
> +               __sbi_rfence    = __sbi_rfence_v01;
> +       } else {
>                 pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
>                         sbi_get_firmware_id(), sbi_get_firmware_version());
> +       }
> +
>         return 0;
>  }
> --
> 2.23.0
>

Minor comments above otherwise looks good.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
