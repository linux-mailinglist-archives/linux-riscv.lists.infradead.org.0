Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6822E5CA
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 22:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vByg9JjhOym1cPrkK6EJiMvgb6kTkD+usDxtkyV2zq0=; b=sHhokpEp2eSW7O
	frDiW5HU2p/nIgTitIj0oJfq0pVkYgoCezjufgNAHvhpPgKf3rTxhPb80FgbveYPTTCAlUBiAShtl
	Aewka5+XaHyxTXHwBG30YxfNLY4OCO/9UpMo7VUvZN9FC9zv7b9tK9O9V5inrhFrES4BzfGm9feqI
	e5jO/7dnagSHw8QtIb9M/tKG9zxSmIvNi2HxYIZyVNY1vuZjQ8QeFSLoVa7Q1aOr0tDfoKskOlT17
	MPdl81c977enK01kmOyADDy7wn7B2tO9fcRn9DU+Lysjyrvq/7NpuhL+H9R/0RzuxNT1AAFsTu63D
	H2r+KhK4MEtAmSfy6XMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW4uH-00079Q-If; Wed, 29 May 2019 20:10:41 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW4uD-00078m-QJ
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 20:10:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id w34so512896pga.12
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 13:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4tO49DCZiMUuRTyd+RB4sj1Pf9UNQPKfv9m6vwCN9bU=;
 b=lZClLD4C5PJCN/fAXazHH9tFux7V7osICYTD415D0JHAHk0wYmLL0BNiWP2GXwT2jO
 iJp3k2hMYmE015ugulaI/SgLfdBc+b7Ih3aLb8qGzEGNW1C7RUJZUITdm8wIg0lnn62N
 UjssZpDlWyvPgk7k0JOYPvkBQgpbe6QGWgOn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4tO49DCZiMUuRTyd+RB4sj1Pf9UNQPKfv9m6vwCN9bU=;
 b=Wv7uWE16IWDlbL3QdvGvCb7up6OZASF4hvDzdlwWYaSbF9SZRPp+CFrJnjSC2nakyv
 SQKdP6ugorTRGaqoBUKkMFZmGLFdc1lHLE/vtf2q17wpRNkHqjhLNZPQ2Y54ypY991Ca
 +gJjQb3Wp/hMfRic0LMwf0Ljnopa1UfNsiM0z85mJftrvGXmxlWu12ylSzBTDkpsQ/CM
 xoTcwK1Xb6DKM8O+IGcq3jv53QbiCpbaZV/kT9lNHuc/2s5O1SBd+PAGXMjvVD/IWO4F
 sLCkGxBwF8aallWq4sONWxAj7Y8DMRfda9CbePJGZ5KL45Yq1snxAWQ7MJzB54vvyxDC
 qhBQ==
X-Gm-Message-State: APjAAAV0jl4uwr3tDsOeBjP5S6EU9IFPLUbmJr1rnKnsnQzTNxoyBln7
 49AFSPm3yEjfJhJmaEh/tH06mQ==
X-Google-Smtp-Source: APXvYqzGkzotfqRqlViLgd17DR1DtrVmfgKSVcRWSDYtwWcN+yj4Gv1oMUrd81n+gHG7RpUcJbaPsA==
X-Received: by 2002:a63:9d8d:: with SMTP id
 i135mr140578933pgd.245.1559160636677; 
 Wed, 29 May 2019 13:10:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g8sm432758pjp.17.2019.05.29.13.10.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 13:10:35 -0700 (PDT)
Date: Wed, 29 May 2019 13:10:34 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v4 04/14] arm64, mm: Move generic mmap layout functions
 to mm
Message-ID: <201905291310.D7E954C95B@keescook>
References: <20190526134746.9315-1-alex@ghiti.fr>
 <20190526134746.9315-5-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526134746.9315-5-alex@ghiti.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_131037_888077_C05A514D 
X-CRM114-Status: GOOD (  27.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, linux-mm@kvack.org,
 Paul Burton <paul.burton@mips.com>, linux-riscv@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, James Hogan <jhogan@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-mips@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 26, 2019 at 09:47:36AM -0400, Alexandre Ghiti wrote:
> arm64 handles top-down mmap layout in a way that can be easily reused
> by other architectures, so make it available in mm.
> It then introduces a new config ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
> that can be set by other architectures to benefit from those functions.
> Note that this new config depends on MMU being enabled, if selected
> without MMU support, a warning will be thrown.
> 
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Acked-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/Kconfig                       | 10 ++++
>  arch/arm64/Kconfig                 |  1 +
>  arch/arm64/include/asm/processor.h |  2 -
>  arch/arm64/mm/mmap.c               | 76 -----------------------------
>  kernel/sysctl.c                    |  6 ++-
>  mm/util.c                          | 78 +++++++++++++++++++++++++++++-
>  6 files changed, 92 insertions(+), 81 deletions(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index c47b328eada0..df3ab04270fa 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -701,6 +701,16 @@ config HAVE_ARCH_COMPAT_MMAP_BASES
>  	  and vice-versa 32-bit applications to call 64-bit mmap().
>  	  Required for applications doing different bitness syscalls.
>  
> +# This allows to use a set of generic functions to determine mmap base
> +# address by giving priority to top-down scheme only if the process
> +# is not in legacy mode (compat task, unlimited stack size or
> +# sysctl_legacy_va_layout).
> +# Architecture that selects this option can provide its own version of:
> +# - STACK_RND_MASK
> +config ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
> +	bool
> +	depends on MMU
> +
>  config HAVE_COPY_THREAD_TLS
>  	bool
>  	help
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 4780eb7af842..3d754c19c11e 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -69,6 +69,7 @@ config ARM64
>  	select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000 || CC_IS_CLANG
>  	select ARCH_SUPPORTS_NUMA_BALANCING
>  	select ARCH_WANT_COMPAT_IPC_PARSE_VERSION
> +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
>  	select ARCH_WANT_FRAME_POINTERS
>  	select ARCH_HAS_UBSAN_SANITIZE_ALL
>  	select ARM_AMBA
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index fcd0e691b1ea..3bd818edf319 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -282,8 +282,6 @@ static inline void spin_lock_prefetch(const void *ptr)
>  		     "nop") : : "p" (ptr));
>  }
>  
> -#define HAVE_ARCH_PICK_MMAP_LAYOUT
> -
>  #endif
>  
>  extern unsigned long __ro_after_init signal_minsigstksz; /* sigframe size */
> diff --git a/arch/arm64/mm/mmap.c b/arch/arm64/mm/mmap.c
> index ac89686c4af8..c74224421216 100644
> --- a/arch/arm64/mm/mmap.c
> +++ b/arch/arm64/mm/mmap.c
> @@ -31,82 +31,6 @@
>  
>  #include <asm/cputype.h>
>  
> -/*
> - * Leave enough space between the mmap area and the stack to honour ulimit in
> - * the face of randomisation.
> - */
> -#define MIN_GAP (SZ_128M)
> -#define MAX_GAP	(STACK_TOP/6*5)
> -
> -static int mmap_is_legacy(struct rlimit *rlim_stack)
> -{
> -	if (current->personality & ADDR_COMPAT_LAYOUT)
> -		return 1;
> -
> -	if (rlim_stack->rlim_cur == RLIM_INFINITY)
> -		return 1;
> -
> -	return sysctl_legacy_va_layout;
> -}
> -
> -unsigned long arch_mmap_rnd(void)
> -{
> -	unsigned long rnd;
> -
> -#ifdef CONFIG_COMPAT
> -	if (is_compat_task())
> -		rnd = get_random_long() & ((1UL << mmap_rnd_compat_bits) - 1);
> -	else
> -#endif
> -		rnd = get_random_long() & ((1UL << mmap_rnd_bits) - 1);
> -	return rnd << PAGE_SHIFT;
> -}
> -
> -static unsigned long mmap_base(unsigned long rnd, struct rlimit *rlim_stack)
> -{
> -	unsigned long gap = rlim_stack->rlim_cur;
> -	unsigned long pad = stack_guard_gap;
> -
> -	/* Account for stack randomization if necessary */
> -	if (current->flags & PF_RANDOMIZE)
> -		pad += (STACK_RND_MASK << PAGE_SHIFT);
> -
> -	/* Values close to RLIM_INFINITY can overflow. */
> -	if (gap + pad > gap)
> -		gap += pad;
> -
> -	if (gap < MIN_GAP)
> -		gap = MIN_GAP;
> -	else if (gap > MAX_GAP)
> -		gap = MAX_GAP;
> -
> -	return PAGE_ALIGN(STACK_TOP - gap - rnd);
> -}
> -
> -/*
> - * This function, called very early during the creation of a new process VM
> - * image, sets up which VM layout function to use:
> - */
> -void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
> -{
> -	unsigned long random_factor = 0UL;
> -
> -	if (current->flags & PF_RANDOMIZE)
> -		random_factor = arch_mmap_rnd();
> -
> -	/*
> -	 * Fall back to the standard layout if the personality bit is set, or
> -	 * if the expected stack growth is unlimited:
> -	 */
> -	if (mmap_is_legacy(rlim_stack)) {
> -		mm->mmap_base = TASK_UNMAPPED_BASE + random_factor;
> -		mm->get_unmapped_area = arch_get_unmapped_area;
> -	} else {
> -		mm->mmap_base = mmap_base(random_factor, rlim_stack);
> -		mm->get_unmapped_area = arch_get_unmapped_area_topdown;
> -	}
> -}
> -
>  /*
>   * You really shouldn't be using read() or write() on /dev/mem.  This might go
>   * away in the future.
> diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> index 943c89178e3d..aebd03cc4b65 100644
> --- a/kernel/sysctl.c
> +++ b/kernel/sysctl.c
> @@ -271,7 +271,8 @@ extern struct ctl_table epoll_table[];
>  extern struct ctl_table firmware_config_table[];
>  #endif
>  
> -#ifdef HAVE_ARCH_PICK_MMAP_LAYOUT
> +#if defined(HAVE_ARCH_PICK_MMAP_LAYOUT) || \
> +    defined(CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT)
>  int sysctl_legacy_va_layout;
>  #endif
>  
> @@ -1566,7 +1567,8 @@ static struct ctl_table vm_table[] = {
>  		.proc_handler	= proc_dointvec,
>  		.extra1		= &zero,
>  	},
> -#ifdef HAVE_ARCH_PICK_MMAP_LAYOUT
> +#if defined(HAVE_ARCH_PICK_MMAP_LAYOUT) || \
> +    defined(CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT)
>  	{
>  		.procname	= "legacy_va_layout",
>  		.data		= &sysctl_legacy_va_layout,
> diff --git a/mm/util.c b/mm/util.c
> index dab33b896146..717f5d75c16e 100644
> --- a/mm/util.c
> +++ b/mm/util.c
> @@ -15,7 +15,12 @@
>  #include <linux/vmalloc.h>
>  #include <linux/userfaultfd_k.h>
>  #include <linux/elf.h>
> +#include <linux/elf-randomize.h>
> +#include <linux/personality.h>
>  #include <linux/random.h>
> +#include <linux/processor.h>
> +#include <linux/sizes.h>
> +#include <linux/compat.h>
>  
>  #include <linux/uaccess.h>
>  
> @@ -313,7 +318,78 @@ unsigned long randomize_stack_top(unsigned long stack_top)
>  #endif
>  }
>  
> -#if defined(CONFIG_MMU) && !defined(HAVE_ARCH_PICK_MMAP_LAYOUT)
> +#ifdef CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
> +#ifdef CONFIG_ARCH_HAS_ELF_RANDOMIZE
> +unsigned long arch_mmap_rnd(void)
> +{
> +	unsigned long rnd;
> +
> +#ifdef CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS
> +	if (is_compat_task())
> +		rnd = get_random_long() & ((1UL << mmap_rnd_compat_bits) - 1);
> +	else
> +#endif /* CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS */
> +		rnd = get_random_long() & ((1UL << mmap_rnd_bits) - 1);
> +
> +	return rnd << PAGE_SHIFT;
> +}
> +#endif /* CONFIG_ARCH_HAS_ELF_RANDOMIZE */
> +
> +static int mmap_is_legacy(struct rlimit *rlim_stack)
> +{
> +	if (current->personality & ADDR_COMPAT_LAYOUT)
> +		return 1;
> +
> +	if (rlim_stack->rlim_cur == RLIM_INFINITY)
> +		return 1;
> +
> +	return sysctl_legacy_va_layout;
> +}
> +
> +/*
> + * Leave enough space between the mmap area and the stack to honour ulimit in
> + * the face of randomisation.
> + */
> +#define MIN_GAP		(SZ_128M)
> +#define MAX_GAP		(STACK_TOP / 6 * 5)
> +
> +static unsigned long mmap_base(unsigned long rnd, struct rlimit *rlim_stack)
> +{
> +	unsigned long gap = rlim_stack->rlim_cur;
> +	unsigned long pad = stack_guard_gap;
> +
> +	/* Account for stack randomization if necessary */
> +	if (current->flags & PF_RANDOMIZE)
> +		pad += (STACK_RND_MASK << PAGE_SHIFT);
> +
> +	/* Values close to RLIM_INFINITY can overflow. */
> +	if (gap + pad > gap)
> +		gap += pad;
> +
> +	if (gap < MIN_GAP)
> +		gap = MIN_GAP;
> +	else if (gap > MAX_GAP)
> +		gap = MAX_GAP;
> +
> +	return PAGE_ALIGN(STACK_TOP - gap - rnd);
> +}
> +
> +void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
> +{
> +	unsigned long random_factor = 0UL;
> +
> +	if (current->flags & PF_RANDOMIZE)
> +		random_factor = arch_mmap_rnd();
> +
> +	if (mmap_is_legacy(rlim_stack)) {
> +		mm->mmap_base = TASK_UNMAPPED_BASE + random_factor;
> +		mm->get_unmapped_area = arch_get_unmapped_area;
> +	} else {
> +		mm->mmap_base = mmap_base(random_factor, rlim_stack);
> +		mm->get_unmapped_area = arch_get_unmapped_area_topdown;
> +	}
> +}
> +#elif defined(CONFIG_MMU) && !defined(HAVE_ARCH_PICK_MMAP_LAYOUT)
>  void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
>  {
>  	mm->mmap_base = TASK_UNMAPPED_BASE;
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
