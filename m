Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD261A6BF7
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 20:15:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U0b9NzPY39K0SdpStnfLywY/t9DuYxkB4s0Wc1XFSLg=; b=eSASFWYjvEcVRhYRjciLofsOj
	di5bd6RYftnZbDtQDG3Fv+7djD50BvgwMvZvDR7DgElVZhyZzk2P4M9JeAHvAU8MwRibcSaqaAoAZ
	nu5mdyGSWK1Hid+pjCoY+q/B+eMR2feAK7TzFPRTpdctzSE857oh0aKLEw92dk2S1LjXt1zevIkmn
	yj63ZMUAXx7y9nhcAO+lmdMJHQmlAtd1yWvw7J7GpjXtpbkYOEokICMIUapxlQwBuCL0LVB9AbL/x
	CIRcqaQIjAZc9EfoqhHX56FpqUP7nZ9I3SeapAdFNkuqfLvqNDmjN4hWHNuk5wW2vCOaaoxN2Nv9/
	ZJ4YGM/rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO3cM-0006eI-Bc; Mon, 13 Apr 2020 18:15:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO3cI-0006ds-Lv
 for linux-riscv@lists.infradead.org; Mon, 13 Apr 2020 18:15:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id g12so3041122wmh.3
 for <linux-riscv@lists.infradead.org>; Mon, 13 Apr 2020 11:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U0b9NzPY39K0SdpStnfLywY/t9DuYxkB4s0Wc1XFSLg=;
 b=Hbruzb3cuEf+jmsmvPYHVR68AhAZUsovwc4DGJCIjSOhbnxayT24fhm2P6EsykYwnf
 I625p8bcWGrwk4Rd73b5139AAoKkNkW7Whik+GHQ2AiUKCWBdqzycilMSnh9JFgScc0j
 w0g2cmygKv/cuofAXVx4kvunYXT4CBcgY2S2lH1Wp6hHiZmG6CquyKNZPU04VMyxcAEM
 UpdmlcUQRbSOFWqlIdaKcvrBpGWuVj0K397RpPlGat9IeBzkylAo15HG66RYoBqSZdeG
 spGOUxTM9oAWGi8vWlybNlvP/oXi/WLu2C2KE/Q9KAkMHBWFZqj6ilihBihZ66r0hemQ
 2+EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U0b9NzPY39K0SdpStnfLywY/t9DuYxkB4s0Wc1XFSLg=;
 b=mmfilu75YxO00eYvSL2sAueW3PhwN9jrAU4lVMYWiOpHWr1hoiOXxWlBEUoHuCfN1b
 cmnB+05AfMBX8tk8hXewP4kKee3C/SG/uEp+HOe44K5upO1+b/FkZX2rNZQUZnTtVJlQ
 N/AgjahucIoi5+IVoTmVUzIJYXsH8Ku3TeCjdanSker8E+5L4e3pFEd6zpfnp9iXMH/Z
 BuDiD/B2xNZ8IJLp/0ok88L6ntd+CEgCenZOyYXTAu2oBD4Bu3PuqVVbv+h2ML6s5/9g
 mFjLIIEroarSGTGdqi1c4B3z8C165huWf3srWokpZCf599G9cjhEjn3blobhO/FYD5HK
 WYFA==
X-Gm-Message-State: AGi0PuYid3knSQx4sQ2sgAPWtmBrQ8+bQSN0JaoIz4Kz/yB26priEhGK
 vOLTsvSM8Na33xxb4xnUKe2S10EmbJ1WyA5aPBjK
X-Google-Smtp-Source: APiQypLg93LRP/BVhNGBNRhikjsZJoRBPt6yu00OGS6dvk3/gNhLX1G68b48HcsUdewi9EMdApyJ2zpY7lOQI4WoUi4=
X-Received: by 2002:a1c:ba09:: with SMTP id k9mr19280668wmf.176.1586801726232; 
 Mon, 13 Apr 2020 11:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <1586762401-15697-1-git-send-email-vincent.chen@sifive.com>
In-Reply-To: <1586762401-15697-1-git-send-email-vincent.chen@sifive.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Mon, 13 Apr 2020 11:15:15 -0700
Message-ID: <CAOnJCULw9X-OOgtHN7t5L1iz=gzLC6kiP80n9m2fdW-Vp0bwQA@mail.gmail.com>
Subject: Re: [PATCH] riscv: use vDSO common flow to reduce the latency of the
 time-related functions
To: Vincent Chen <vincent.chen@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_111530_923989_D4D8E9FC 
X-CRM114-Status: GOOD (  26.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Thomas Gleixner <tglx@linutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 12:20 AM Vincent Chen <vincent.chen@sifive.com> wrote:
>
> Even if RISC-V has supported the vDSO feature, the latency of the functions
> for obtaining the system time is still expensive. It is because these
> functions still trigger a corresponding system call in the process, which
> slows down the response time. If we want to remove the system call to
> reduce the latency, the kernel should have the ability to output the system
> clock information to userspace. This patch introduces the vDSO common flow
> to enable the kernel to achieve the above feature and uses "rdtime"
> instruction to obtain the current time in the user space. Under this
> condition, the latency cost by the ecall from U-mode to S-mode can be
> eliminated. After applying this patch, the latency of gettimeofday()
> measured on the HiFive unleashed board can be reduced by %61.
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  arch/riscv/Kconfig                         |  3 ++
>  arch/riscv/include/asm/clocksource.h       |  7 +++
>  arch/riscv/include/asm/processor.h         | 12 +----
>  arch/riscv/include/asm/vdso.h              |  3 --
>  arch/riscv/include/asm/vdso/clocksource.h  |  8 +++
>  arch/riscv/include/asm/vdso/gettimeofday.h | 79 ++++++++++++++++++++++++++++++
>  arch/riscv/include/asm/vdso/processor.h    | 19 +++++++
>  arch/riscv/include/asm/vdso/vsyscall.h     | 27 ++++++++++
>  arch/riscv/kernel/vdso.c                   |  4 +-
>  arch/riscv/kernel/vdso/Makefile            | 12 +++--
>  arch/riscv/kernel/vdso/clock_getres.S      | 18 -------
>  arch/riscv/kernel/vdso/clock_gettime.S     | 18 -------
>  arch/riscv/kernel/vdso/gettimeofday.S      | 18 -------
>  arch/riscv/kernel/vdso/vdso.lds.S          |  2 +
>  arch/riscv/kernel/vdso/vgettimeofday.c     | 25 ++++++++++
>  drivers/clocksource/timer-riscv.c          |  1 +
>  16 files changed, 184 insertions(+), 72 deletions(-)
>  create mode 100644 arch/riscv/include/asm/clocksource.h
>  create mode 100644 arch/riscv/include/asm/vdso/clocksource.h
>  create mode 100644 arch/riscv/include/asm/vdso/gettimeofday.h
>  create mode 100644 arch/riscv/include/asm/vdso/processor.h
>  create mode 100644 arch/riscv/include/asm/vdso/vsyscall.h
>  delete mode 100644 arch/riscv/kernel/vdso/clock_getres.S
>  delete mode 100644 arch/riscv/kernel/vdso/clock_gettime.S
>  delete mode 100644 arch/riscv/kernel/vdso/gettimeofday.S
>  create mode 100644 arch/riscv/kernel/vdso/vgettimeofday.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index a197258595ef..059ef492fa7f 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -68,6 +68,9 @@ config RISCV
>         select ARCH_HAS_GCOV_PROFILE_ALL
>         select HAVE_COPY_THREAD_TLS
>         select HAVE_ARCH_KASAN if MMU && 64BIT
> +       select HAVE_GENERIC_VDSO
> +       select GENERIC_TIME_VSYSCALL
> +       select GENERIC_GETTIMEOFDAY
>
>  config ARCH_MMAP_RND_BITS_MIN
>         default 18 if 64BIT
> diff --git a/arch/riscv/include/asm/clocksource.h b/arch/riscv/include/asm/clocksource.h
> new file mode 100644
> index 000000000000..482185566b0c
> --- /dev/null
> +++ b/arch/riscv/include/asm/clocksource.h
> @@ -0,0 +1,7 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_CLOCKSOURCE_H
> +#define _ASM_CLOCKSOURCE_H
> +
> +#include <asm/vdso/clocksource.h>
> +
> +#endif
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
> index 3ddb798264f1..d6117b316e2b 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -8,6 +8,8 @@
>
>  #include <linux/const.h>
>
> +#include <vdso/processor.h>
> +
>  #include <asm/ptrace.h>
>
>  /*
> @@ -58,16 +60,6 @@ static inline void release_thread(struct task_struct *dead_task)
>  extern unsigned long get_wchan(struct task_struct *p);
>
>
> -static inline void cpu_relax(void)
> -{
> -#ifdef __riscv_muldiv
> -       int dummy;
> -       /* In lieu of a halt instruction, induce a long-latency stall. */
> -       __asm__ __volatile__ ("div %0, %0, zero" : "=r" (dummy));
> -#endif
> -       barrier();
> -}
> -
>  static inline void wait_for_interrupt(void)
>  {
>         __asm__ __volatile__ ("wfi");
> diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vdso.h
> index 7a7fce63c474..05689eab4083 100644
> --- a/arch/riscv/include/asm/vdso.h
> +++ b/arch/riscv/include/asm/vdso.h
> @@ -10,9 +10,6 @@
>
>  #include <linux/types.h>
>
> -struct vdso_data {
> -};
> -
>  /*
>   * The VDSO symbols are mapped into Linux so we can just use regular symbol
>   * addressing to get their offsets in userspace.  The symbols are mapped at an
> diff --git a/arch/riscv/include/asm/vdso/clocksource.h b/arch/riscv/include/asm/vdso/clocksource.h
> new file mode 100644
> index 000000000000..df6ea65c1dec
> --- /dev/null
> +++ b/arch/riscv/include/asm/vdso/clocksource.h
> @@ -0,0 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_VDSOCLOCKSOURCE_H
> +#define __ASM_VDSOCLOCKSOURCE_H
> +
> +#define VDSO_ARCH_CLOCKMODES   \
> +       VDSO_CLOCKMODE_ARCHTIMER
> +
> +#endif
> diff --git a/arch/riscv/include/asm/vdso/gettimeofday.h b/arch/riscv/include/asm/vdso/gettimeofday.h
> new file mode 100644
> index 000000000000..c8e818688ec1
> --- /dev/null
> +++ b/arch/riscv/include/asm/vdso/gettimeofday.h
> @@ -0,0 +1,79 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_VDSO_GETTIMEOFDAY_H
> +#define __ASM_VDSO_GETTIMEOFDAY_H
> +
> +#ifndef __ASSEMBLY__
> +
> +#include <asm/unistd.h>
> +#include <asm/csr.h>
> +#include <uapi/linux/time.h>
> +
> +#define VDSO_HAS_CLOCK_GETRES  1
> +
> +static __always_inline
> +int gettimeofday_fallback(struct __kernel_old_timeval *_tv,
> +                         struct timezone *_tz)
> +{
> +       register struct __kernel_old_timeval *tv asm("a0") = _tv;
> +       register struct timezone *tz asm("a1") = _tz;
> +       register long ret asm("a0");
> +       register long nr asm("a7") = __NR_gettimeofday;
> +
> +       asm volatile ("ecall\n"
> +                     : "=r" (ret)
> +                     : "r"(tv), "r"(tz), "r"(nr)
> +                     : "memory");
> +
> +       return ret;
> +}
> +
> +static __always_inline
> +long clock_gettime_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
> +{
> +       register clockid_t clkid asm("a0") = _clkid;
> +       register struct __kernel_timespec *ts asm("a1") = _ts;
> +       register long ret asm("a0");
> +       register long nr asm("a7") = __NR_clock_gettime;
> +
> +       asm volatile ("ecall\n"
> +                     : "=r" (ret)
> +                     : "r"(clkid), "r"(ts), "r"(nr)
> +                     : "memory");
> +
> +       return ret;
> +}
> +
> +static __always_inline
> +int clock_getres_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
> +{
> +       register clockid_t clkid asm("a0") = _clkid;
> +       register struct __kernel_timespec *ts asm("a1") = _ts;
> +       register long ret asm("a0");
> +       register long nr asm("a7") = __NR_clock_getres;
> +
> +       asm volatile ("ecall\n"
> +                     : "=r" (ret)
> +                     : "r"(clkid), "r"(ts), "r"(nr)
> +                     : "memory");
> +
> +       return ret;
> +}
> +
> +static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
> +{
> +       /*
> +        * The purpose of csr_read(CSR_TIME) is to trap the system into
> +        * M-mode to obtain the value of CSR_TIME. Hence, unlike other
> +        * architecture, no fence instructions surround the csr_read()
> +        */
> +       return csr_read(CSR_TIME);
> +}
> +
> +static __always_inline const struct vdso_data *__arch_get_vdso_data(void)
> +{
> +       return _vdso_data;
> +}
> +
> +#endif /* !__ASSEMBLY__ */
> +
> +#endif /* __ASM_VDSO_GETTIMEOFDAY_H */
> diff --git a/arch/riscv/include/asm/vdso/processor.h b/arch/riscv/include/asm/vdso/processor.h
> new file mode 100644
> index 000000000000..82a5693b1861
> --- /dev/null
> +++ b/arch/riscv/include/asm/vdso/processor.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef __ASM_VDSO_PROCESSOR_H
> +#define __ASM_VDSO_PROCESSOR_H
> +
> +#ifndef __ASSEMBLY__
> +
> +static inline void cpu_relax(void)
> +{
> +#ifdef __riscv_muldiv
> +       int dummy;
> +       /* In lieu of a halt instruction, induce a long-latency stall. */
> +       __asm__ __volatile__ ("div %0, %0, zero" : "=r" (dummy));
> +#endif
> +       barrier();
> +}
> +
> +#endif /* __ASSEMBLY__ */
> +
> +#endif /* __ASM_VDSO_PROCESSOR_H */
> diff --git a/arch/riscv/include/asm/vdso/vsyscall.h b/arch/riscv/include/asm/vdso/vsyscall.h
> new file mode 100644
> index 000000000000..82fd5d83bd60
> --- /dev/null
> +++ b/arch/riscv/include/asm/vdso/vsyscall.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_VDSO_VSYSCALL_H
> +#define __ASM_VDSO_VSYSCALL_H
> +
> +#ifndef __ASSEMBLY__
> +
> +#include <linux/timekeeper_internal.h>
> +#include <vdso/datapage.h>
> +
> +extern struct vdso_data *vdso_data;
> +
> +/*
> + * Update the vDSO data page to keep in sync with kernel timekeeping.
> + */
> +static __always_inline struct vdso_data *__riscv_get_k_vdso_data(void)
> +{
> +       return vdso_data;
> +}
> +
> +#define __arch_get_k_vdso_data __riscv_get_k_vdso_data
> +
> +/* The asm-generic header needs to be included after the definitions above */
> +#include <asm-generic/vdso/vsyscall.h>
> +
> +#endif /* !__ASSEMBLY__ */
> +
> +#endif /* __ASM_VDSO_VSYSCALL_H */
> diff --git a/arch/riscv/kernel/vdso.c b/arch/riscv/kernel/vdso.c
> index 484d95a70907..1495af602f00 100644
> --- a/arch/riscv/kernel/vdso.c
> +++ b/arch/riscv/kernel/vdso.c
> @@ -11,8 +11,8 @@
>  #include <linux/slab.h>
>  #include <linux/binfmts.h>
>  #include <linux/err.h>
> +#include <vdso/datapage.h>
>
> -#include <asm/vdso.h>
>
>  extern char vdso_start[], vdso_end[];
>
> @@ -26,7 +26,7 @@ static union {
>         struct vdso_data        data;
>         u8                      page[PAGE_SIZE];
>  } vdso_data_store __page_aligned_data;
> -static struct vdso_data *vdso_data = &vdso_data_store.data;
> +struct vdso_data *vdso_data = &vdso_data_store.data;
>
>  static int __init vdso_init(void)
>  {
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 33b16f4212f7..9ad681e94ebe 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -1,12 +1,14 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  # Copied from arch/tile/kernel/vdso/Makefile
>
> +# Absolute relocation type $(ARCH_REL_TYPE_ABS) needs to be defined before
> +# the inclusion of generic Makefile.
> +ARCH_REL_TYPE_ABS := R_RISCV_32|R_RISCV_64|R_RISCV_JUMP_SLOT
> +include $(srctree)/lib/vdso/Makefile
>  # Symbols present in the vdso
>  vdso-syms  = rt_sigreturn
>  ifdef CONFIG_64BIT
> -vdso-syms += gettimeofday
> -vdso-syms += clock_gettime
> -vdso-syms += clock_getres
> +vdso-syms += vgettimeofday
>  endif
>  vdso-syms += getcpu
>  vdso-syms += flush_icache
> @@ -14,6 +16,10 @@ vdso-syms += flush_icache
>  # Files to link into the vdso
>  obj-vdso = $(patsubst %, %.o, $(vdso-syms))
>
> +ifneq ($(c-gettimeofday-y),)
> +  CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
> +endif
> +
>  # Build rules
>  targets := $(obj-vdso) vdso.so vdso.so.dbg vdso.lds vdso-dummy.o
>  obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
> diff --git a/arch/riscv/kernel/vdso/clock_getres.S b/arch/riscv/kernel/vdso/clock_getres.S
> deleted file mode 100644
> index 91378a52eb22..000000000000
> --- a/arch/riscv/kernel/vdso/clock_getres.S
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -/*
> - * Copyright (C) 2017 SiFive
> - */
> -
> -#include <linux/linkage.h>
> -#include <asm/unistd.h>
> -
> -       .text
> -/* int __vdso_clock_getres(clockid_t clock_id, struct timespec *res); */
> -ENTRY(__vdso_clock_getres)
> -       .cfi_startproc
> -       /* For now, just do the syscall. */
> -       li a7, __NR_clock_getres
> -       ecall
> -       ret
> -       .cfi_endproc
> -ENDPROC(__vdso_clock_getres)
> diff --git a/arch/riscv/kernel/vdso/clock_gettime.S b/arch/riscv/kernel/vdso/clock_gettime.S
> deleted file mode 100644
> index 5371fd9bc01f..000000000000
> --- a/arch/riscv/kernel/vdso/clock_gettime.S
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -/*
> - * Copyright (C) 2017 SiFive
> - */
> -
> -#include <linux/linkage.h>
> -#include <asm/unistd.h>
> -
> -       .text
> -/* int __vdso_clock_gettime(clockid_t clock_id, struct timespec *tp); */
> -ENTRY(__vdso_clock_gettime)
> -       .cfi_startproc
> -       /* For now, just do the syscall. */
> -       li a7, __NR_clock_gettime
> -       ecall
> -       ret
> -       .cfi_endproc
> -ENDPROC(__vdso_clock_gettime)
> diff --git a/arch/riscv/kernel/vdso/gettimeofday.S b/arch/riscv/kernel/vdso/gettimeofday.S
> deleted file mode 100644
> index e6fb8af88632..000000000000
> --- a/arch/riscv/kernel/vdso/gettimeofday.S
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -/*
> - * Copyright (C) 2017 SiFive
> - */
> -
> -#include <linux/linkage.h>
> -#include <asm/unistd.h>
> -
> -       .text
> -/* int __vdso_gettimeofday(struct timeval *tv, struct timezone *tz); */
> -ENTRY(__vdso_gettimeofday)
> -       .cfi_startproc
> -       /* For now, just do the syscall. */
> -       li a7, __NR_gettimeofday
> -       ecall
> -       ret
> -       .cfi_endproc
> -ENDPROC(__vdso_gettimeofday)
> diff --git a/arch/riscv/kernel/vdso/vdso.lds.S b/arch/riscv/kernel/vdso/vdso.lds.S
> index f66a091cb890..e6f558bca71b 100644
> --- a/arch/riscv/kernel/vdso/vdso.lds.S
> +++ b/arch/riscv/kernel/vdso/vdso.lds.S
> @@ -2,11 +2,13 @@
>  /*
>   * Copyright (C) 2012 Regents of the University of California
>   */
> +#include <asm/page.h>
>
>  OUTPUT_ARCH(riscv)
>
>  SECTIONS
>  {
> +       PROVIDE(_vdso_data = . + PAGE_SIZE);
>         . = SIZEOF_HEADERS;
>
>         .hash           : { *(.hash) }                  :text
> diff --git a/arch/riscv/kernel/vdso/vgettimeofday.c b/arch/riscv/kernel/vdso/vgettimeofday.c
> new file mode 100644
> index 000000000000..d264943e2e47
> --- /dev/null
> +++ b/arch/riscv/kernel/vdso/vgettimeofday.c
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copied from arch/arm64/kernel/vdso/vgettimeofday.c
> + *
> + * Copyright (C) 2018 ARM Ltd.
> + * Copyright (C) 2020 SiFive
> + */
> +
> +#include <linux/time.h>
> +#include <linux/types.h>
> +
> +int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
> +{
> +       return __cvdso_clock_gettime(clock, ts);
> +}
> +
> +int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
> +{
> +       return __cvdso_gettimeofday(tv, tz);
> +}
> +
> +int __vdso_clock_getres(clockid_t clock_id, struct __kernel_timespec *res)
> +{
> +       return __cvdso_clock_getres(clock_id, res);
> +}
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index c4f15c4068c0..adfef2736222 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -67,6 +67,7 @@ static struct clocksource riscv_clocksource = {
>         .mask           = CLOCKSOURCE_MASK(64),
>         .flags          = CLOCK_SOURCE_IS_CONTINUOUS,
>         .read           = riscv_clocksource_rdtime,
> +       .vdso_clock_mode = VDSO_CLOCKMODE_ARCHTIMER,
>  };
>
>  static int riscv_timer_starting_cpu(unsigned int cpu)
> --
> 2.7.4
>
>

Looks good to me.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish

