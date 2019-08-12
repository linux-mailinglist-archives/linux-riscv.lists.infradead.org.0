Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE4E8A201
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 17:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qv+vIlNCUNfzbNNZuTWzT7cEIwxxP7ZcYiZ1Kz7koTo=; b=ZsYw+y4/26JumI
	WNe+U4W6FpYOQyaEHe2DhCuVuk60HfMcfr97cj0ww1PHGvLZi+g4X1efUCBVn2+20S/MNI+Th0zsG
	XFN5jVXG4EU0mrMI3QdtpCOkJ3oXAVWB5Uu407I03FgoCV3O315iBAB3Uhcu1e9RWHYwswd77KhBn
	S2l9SrFp7FWvU7B9MQpDchjGW/NeXWfQ71KwCiIf+AoPTaa8p0kjG9sl5bWGmK32ZVHhgB9HXQsw9
	Rj0gMH1eUH03vTlP+PH6x+62JGX7ppTi8ePgpubdei2XwdA8GCVzTVQZwwFxL3DBOcazDkxQqaQCD
	rSBVvzoSIxCjc4vskBZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxByZ-0001t6-MS; Mon, 12 Aug 2019 15:11:11 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hxByE-0001gG-Rz; Mon, 12 Aug 2019 15:10:50 +0000
Date: Mon, 12 Aug 2019 08:10:50 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Nick Hu <nickhu@andestech.com>
Subject: Re: [PATCH 2/2] riscv: Add KASAN support
Message-ID: <20190812151050.GJ26897@infradead.org>
References: <cover.1565161957.git.nickhu@andestech.com>
 <88358ef8f7cfcb7fd01b6b989eccaddbe00a1e57.1565161957.git.nickhu@andestech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88358ef8f7cfcb7fd01b6b989eccaddbe00a1e57.1565161957.git.nickhu@andestech.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: aou@eecs.berkeley.edu, alankao@andestech.com, atish.patra@wdc.com,
 gregkh@linuxfoundation.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, zong@andestech.com, alexios.zavras@intel.com,
 Anup.Patel@wdc.com, glider@google.com, green.hu@gmail.com,
 paul.walmsley@sifive.com, aryabinin@virtuozzo.com, tglx@linutronix.de,
 deanbo422@gmail.com, linux-riscv@lists.infradead.org, dvyukov@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> 2. KASAN can't debug the modules since the modules are allocated in VMALLOC
> area. We mapped the shadow memory, which corresponding to VMALLOC area,
> to the kasan_early_shadow_page because we don't have enough physical space
> for all the shadow memory corresponding to VMALLOC area.

How do other architectures solve this problem?

> @@ -54,6 +54,8 @@ config RISCV
>  	select EDAC_SUPPORT
>  	select ARCH_HAS_GIGANTIC_PAGE
>  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> +	select GENERIC_STRNCPY_FROM_USER if KASAN

Is there any reason why we can't always enabled this?  Also just
enabling the generic efficient strncpy_from_user should probably be
a separate patch.

> +	select HAVE_ARCH_KASAN if MMU

Based on your cover letter this should be if MMU && 64BIT

>  #define __HAVE_ARCH_MEMCPY
>  extern asmlinkage void *memcpy(void *, const void *, size_t);
> +extern asmlinkage void *__memcpy(void *, const void *, size_t);
>  
>  #define __HAVE_ARCH_MEMMOVE
>  extern asmlinkage void *memmove(void *, const void *, size_t);
> +extern asmlinkage void *__memmove(void *, const void *, size_t);
> +
> +#define memcpy(dst, src, len) __memcpy(dst, src, len)
> +#define memmove(dst, src, len) __memmove(dst, src, len)
> +#define memset(s, c, n) __memset(s, c, n)

This looks weird and at least needs a very good comment.  Also
with this we effectively don't need the non-prefixed prototypes
anymore.  Also you probably want to split the renaming of the mem*
routines into a separate patch with a proper changelog.

>  #include <asm/tlbflush.h>
>  #include <asm/thread_info.h>
>  
> +#ifdef CONFIG_KASAN
> +#include <asm/kasan.h>
> +#endif

Any good reason to not just always include the header?

> +
>  #ifdef CONFIG_DUMMY_CONSOLE
>  struct screen_info screen_info = {
>  	.orig_video_lines	= 30,
> @@ -64,12 +68,17 @@ void __init setup_arch(char **cmdline_p)
>  
>  	setup_bootmem();
>  	paging_init();
> +
>  	unflatten_device_tree();

spurious whitespace change.

> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 23cd1a9..9700980 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -46,6 +46,7 @@ SECTIONS
>  		KPROBES_TEXT
>  		ENTRY_TEXT
>  		IRQENTRY_TEXT
> +		SOFTIRQENTRY_TEXT

Hmm.  What is the relation to kasan here?  Maybe we should add this
separately with a good changelog?

> +++ b/arch/riscv/mm/kasan_init.c
> @@ -0,0 +1,102 @@
> +// SPDX-License-Identifier: GPL-2.0

This probably also wants a copyright statement.

> +	// init for swapper_pg_dir

Please use /* */ style comments.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
