Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5E2B0875
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Sep 2019 07:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q0iQ9VHEhL/bntGO77chKiQ/LF3i0mgNm4YJi3RqFkA=; b=YtpjjB0KYXIXpk4mYyvAB8WF1
	jATllzHuo3Z+As2sz590kZ/YKGUAB0vTDteehJIcS0zowUCEPTtagHtn6ukO1KhWm78j+FP0eUzLx
	vcBHlhEmiG6WSU51rIX9PzM95ejlH3+/d2m5W7Agt3dwJ0Y64P2ZO+XSC0ozbdJoCAr56NOJ0zCSi
	fhLgc1KWxUkBILarhWamgt2X7EAivmR4EVHz+une7PKzbOGK3uzk/6OMervTLcq6uPY6m8DV3q4y1
	LJ9knMAfkyyPNmgl+qGAGJBvfk/dIHMlf60gSCYMjWjB4koXQwRJLd2cD30i6eRHXNFpG37J9/817
	yfpmZHteA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Hzt-0007xG-Uu; Thu, 12 Sep 2019 05:50:25 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Hzq-0007wv-5a
 for linux-riscv@lists.infradead.org; Thu, 12 Sep 2019 05:50:24 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 78FC4240007;
 Thu, 12 Sep 2019 05:50:07 +0000 (UTC)
Subject: Re: [PATCH] riscv: mm: Fix ASLR on RISC-V
To: Wende Tan <twd2.me@gmail.com>, linux-riscv@lists.infradead.org
References: <3883C7B2-4CA1-4E13-9A02-F3DA4F5DA585@gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <70ccc862-1c75-3537-f1c7-7a6c1ec2b2fc@ghiti.fr>
Date: Thu, 12 Sep 2019 01:50:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3883C7B2-4CA1-4E13-9A02-F3DA4F5DA585@gmail.com>
Content-Language: sv-FI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_225022_513797_9BE82B52 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: twd2@163.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 9/12/19 12:39 AM, Wende Tan wrote:
> The ASLR on RISC-V does not work well (only randomize stack addresses)
> because RISC-V arch is lacking of `arch_mmap_rnd()`,
> `arch_pick_mmap_layout()` and `arch_randomize_brk()`. Add them.


Hi Wende,

A patchset introducing those functions has already been merged in 
linux-next, please
take a look at the newly introduced ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
config option.

Thanks anyway,

Alex


>
> Signed-off-by: Wende Tan <twd2.me@gmail.com>
> ---
>   arch/riscv/Kconfig                 |  9 ++++
>   arch/riscv/include/asm/processor.h |  5 +++
>   arch/riscv/mm/Makefile             |  1 +
>   arch/riscv/mm/mmap.c               | 86 ++++++++++++++++++++++++++++++++++++++
>   4 files changed, 101 insertions(+)
>   create mode 100644 arch/riscv/mm/mmap.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 59a4727..0f3b8ba 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -18,6 +18,7 @@ config RISCV
>   	select OF_EARLY_FLATTREE
>   	select OF_IRQ
>   	select ARCH_HAS_BINFMT_FLAT
> +	select ARCH_HAS_ELF_RANDOMIZE
>   	select ARCH_WANT_FRAME_POINTERS
>   	select CLONE_BACKWARDS
>   	select COMMON_CLK
> @@ -31,6 +32,7 @@ config RISCV
>   	select GENERIC_SMP_IDLE_THREAD
>   	select GENERIC_ATOMIC64 if !64BIT
>   	select HAVE_ARCH_AUDITSYSCALL
> +	select HAVE_ARCH_MMAP_RND_BITS if MMU
>   	select HAVE_MEMBLOCK_NODE_MAP
>   	select HAVE_DMA_CONTIGUOUS
>   	select HAVE_FUTEX_CMPXCHG if FUTEX
> @@ -58,6 +60,13 @@ config RISCV
>   config MMU
>   	def_bool y
>   
> +config ARCH_MMAP_RND_BITS_MIN
> +	default 12
> +
> +config ARCH_MMAP_RND_BITS_MAX
> +	default 24 if 64BIT
> +	default 12
> +
>   config ZONE_DMA32
>   	bool
>   	default y if 64BIT
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
> index f539149..2638748 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -20,6 +20,11 @@
>   #define STACK_TOP_MAX		STACK_TOP
>   #define STACK_ALIGN		16
>   
> +/*
> + * RISC-V has an arch_pick_mmap_layout()
> + */
> +#define HAVE_ARCH_PICK_MMAP_LAYOUT 1
> +
>   #ifndef __ASSEMBLY__
>   
>   struct task_struct;
> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> index 74055e1..742e6f3 100644
> --- a/arch/riscv/mm/Makefile
> +++ b/arch/riscv/mm/Makefile
> @@ -11,6 +11,7 @@ obj-y += extable.o
>   obj-y += ioremap.o
>   obj-y += cacheflush.o
>   obj-y += context.o
> +obj-y += mmap.o
>   obj-y += sifive_l2_cache.o
>   
>   obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
> diff --git a/arch/riscv/mm/mmap.c b/arch/riscv/mm/mmap.c
> new file mode 100644
> index 00000000..07c7933
> --- /dev/null
> +++ b/arch/riscv/mm/mmap.c
> @@ -0,0 +1,86 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Based on arch/mips/mm/mmap.c
> + *
> + * Copyright (C) 2011 Wind River Systems,
> + *   written by Ralf Baechle <ralf@linux-mips.org>
> + * Copyright (C) 2019 Wende Tan <twd2.me@gmail.com>
> + */
> +#include <linux/compiler.h>
> +#include <linux/elf-randomize.h>
> +#include <linux/errno.h>
> +#include <linux/mm.h>
> +#include <linux/mman.h>
> +#include <linux/personality.h>
> +#include <linux/random.h>
> +#include <linux/sched/mm.h>
> +
> +/* gap between mmap and stack */
> +#define RISCV_MIN_GAP (128 * 1024 * 1024UL)
> +#define RISCV_MAX_GAP ((TASK_SIZE) / 6 * 5)
> +
> +unsigned long arch_mmap_rnd(void)
> +{
> +	unsigned long rnd = get_random_long() & ((1UL << mmap_rnd_bits) - 1);
> +
> +	return rnd << PAGE_SHIFT;
> +}
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
> +static unsigned long mmap_base(unsigned long rnd, struct rlimit *rlim_stack)
> +{
> +	unsigned long gap = rlim_stack->rlim_cur;
> +
> +	if (gap < RISCV_MIN_GAP)
> +		gap = RISCV_MIN_GAP;
> +	else if (gap > RISCV_MAX_GAP)
> +		gap = RISCV_MAX_GAP;
> +
> +	return PAGE_ALIGN(TASK_SIZE - gap - rnd);
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
> +
> +static inline unsigned long brk_rnd(void)
> +{
> +	unsigned long rnd = get_random_long() & ((1UL << mmap_rnd_bits) - 1);
> +
> +	return rnd << PAGE_SHIFT;
> +}
> +
> +unsigned long arch_randomize_brk(struct mm_struct *mm)
> +{
> +	unsigned long base = mm->brk;
> +	unsigned long ret;
> +
> +	ret = PAGE_ALIGN(base + brk_rnd());
> +
> +	if (ret < mm->brk)
> +		return mm->brk;
> +
> +	return ret;
> +}

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
