Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AF8C86C1
	for <lists+linux-riscv@lfdr.de>; Wed,  2 Oct 2019 12:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2OXtZyFBtt/FD601E2LzN3sdp9rxpwVSWiTrpy8a5M=; b=gdnC1AD9s+h6AA
	m52D0AgTrjXlbqSTJtGcAOU3m4Pj6V/Gxf4VaWTMjt8AB1GofVZbI3QDhG8udzvX2snOwlhI/Nv3O
	Sqk4jfTPlplr4KI6QCYXxSu15LywmG/wezwrPMJuNGL1XxvSfqyib7uylAM8rWkMzEGZM1JohmBZK
	EG/ZSIcc4x4SdA0e+ecvyPnZ12eWqO6G1IMLrKH8WXqU2M167brQZYaACgtMxkyVnYI3GWPrsul0H
	OW2y2pmKblh7Z9rjM0qjvICAlTtwQWkt1AMURNS0AlUgGaIlnkOzUu5WzO/iKh5phDHdFYnyQbjml
	j+MTACmWFwc6KYz2AD6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcIb-0001Ne-MK; Wed, 02 Oct 2019 10:56:01 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcIX-0001Li-2V
 for linux-riscv@lists.infradead.org; Wed, 02 Oct 2019 10:55:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id b128so10148440pfa.1
 for <linux-riscv@lists.infradead.org>; Wed, 02 Oct 2019 03:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wPzRaZnauK/aSS25BKAe52uX/PkUhE63Xm4WI7PnEsA=;
 b=TNtdJa+Q63hCSVXxOdIIEJnqKr19SpI6Jo84Y2RoN8/0QgK8KKKMqAN74Eu4r/cyau
 6Z2zFYk3IPQem8dbBn8M8GXZZh352Q/owHbX2AM4kWlVQ33EUpWgtwYsFsB3JOOHNWwE
 8Ghzd7eOwDtJ4xwW1kuE0g/sfx5RBWeKOs/2GPyIAVJPhj86BK5lMDMGUIMBgo4da+uv
 dBIxqYbF4hed3iD5O99xwcbI0B/iMJXjG8eEHriklXTkP46AFrAP//gIcSJfjfm3DS6C
 n12lxqfVlIh/aHCDu+pEeNbe2KxHmSoj6Jx8MWBdKrnpVFRFZ78UmXV5x5Lda0REU1XW
 N0iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wPzRaZnauK/aSS25BKAe52uX/PkUhE63Xm4WI7PnEsA=;
 b=K0iSWjBIiWe3hOKZestUR1F5k7xXWEkldB071/wHdMQvNATw/wF+t9QNEbDyKekZ9M
 MyXIighlANyg5Zhb7QZeapo29iQpZOWTKPBYrG6hU8/WGDW4x5+anmUnNpDeb1nRdfSY
 P3No4qn8okmb9beGKeXyrO6Hl97IrpReDm9HU+8w9J6v5IbvVn94byOeCMJZxqmHzmxq
 Ur1C99QWc2YwwJHYFlD+N3QEREBVChY8s3I0nzckZxOZk0avpmjE/JVH4P/z/zrBAlVW
 eiuCk0zeGvh3t9YO+SehSzhW1wurgnpvjYXZASxu2tERhOm1ghFe/uWPaC80+B/RbHXX
 NQJQ==
X-Gm-Message-State: APjAAAVxFcKIvP7YEGuG8LmIbipFAOssocjKS7ajf4su0RjYQ65fBnw+
 gDPTcaDqq99NpKTLnteDViGuRULavNlz1bdqVhPaBA==
X-Google-Smtp-Source: APXvYqzdVOZR/Rrr3CmiD2/GFLvmWZAq+/eUBBXIJUqiUj6ypMzF4YEDjEESyJRRUqzSvDHupUWRG/3q2XfK0IO/SV8=
X-Received: by 2002:a63:d20f:: with SMTP id a15mr3127214pgg.130.1570013752561; 
 Wed, 02 Oct 2019 03:55:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569995450.git.nickhu@andestech.com>
 <8d86d53e904bece0623cb8969cdc70f782fa2bae.1569995450.git.nickhu@andestech.com>
In-Reply-To: <8d86d53e904bece0623cb8969cdc70f782fa2bae.1569995450.git.nickhu@andestech.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 2 Oct 2019 12:55:41 +0200
Message-ID: <CAAeHK+ymEX7qnYi61cAyxtY5qd+_HV=xQotbOaCg_DtMA=peWA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] riscv: Add KASAN support
To: Nick Hu <nickhu@andestech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_035557_138240_0B857A13 
X-CRM114-Status: GOOD (  31.50  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, aou@eecs.berkeley.edu,
 alankao@andestech.com, atish.patra@wdc.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>, alexios.zavras@intel.com,
 Anup.Patel@wdc.com, Alexander Potapenko <glider@google.com>,
 Allison Randal <allison@lohutok.net>, paul.walmsley@sifive.com,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 8:16 AM Nick Hu <nickhu@andestech.com> wrote:
>
> This patch ports the feature Kernel Address SANitizer (KASAN).

Hi Nick,

Please also update KASAN documentation to mention that riscv is supported.

Thanks!

>
> Note: The start address of shadow memory is at the beginning of kernel
> space, which is 2^64 - (2^39 / 2) in SV39. The size of the kernel space is
> 2^38 bytes so the size of shadow memory should be 2^38 / 8. Thus, the
> shadow memory would not overlap with the fixmap area.
>
> There are currently two limitations in this port,
>
> 1. RV64 only: KASAN need large address space for extra shadow memory
> region.
>
> 2. KASAN can't debug the modules since the modules are allocated in VMALLOC
> area. We mapped the shadow memory, which corresponding to VMALLOC area, to
> the kasan_early_shadow_page because we don't have enough physical space for
> all the shadow memory corresponding to VMALLOC area.
>
> Signed-off-by: Nick Hu <nickhu@andestech.com>
> ---
>  arch/riscv/Kconfig                  |   1 +
>  arch/riscv/include/asm/kasan.h      |  27 ++++++++
>  arch/riscv/include/asm/pgtable-64.h |   5 ++
>  arch/riscv/include/asm/string.h     |   9 +++
>  arch/riscv/kernel/head.S            |   3 +
>  arch/riscv/kernel/riscv_ksyms.c     |   2 +
>  arch/riscv/kernel/setup.c           |   5 ++
>  arch/riscv/kernel/vmlinux.lds.S     |   1 +
>  arch/riscv/lib/memcpy.S             |   5 +-
>  arch/riscv/lib/memset.S             |   5 +-
>  arch/riscv/mm/Makefile              |   6 ++
>  arch/riscv/mm/kasan_init.c          | 104 ++++++++++++++++++++++++++++
>  12 files changed, 169 insertions(+), 4 deletions(-)
>  create mode 100644 arch/riscv/include/asm/kasan.h
>  create mode 100644 arch/riscv/mm/kasan_init.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 8eebbc8860bb..ca2fc8ba8550 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -61,6 +61,7 @@ config RISCV
>         select SPARSEMEM_STATIC if 32BIT
>         select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
>         select HAVE_ARCH_MMAP_RND_BITS
> +       select HAVE_ARCH_KASAN if MMU && 64BIT
>
>  config ARCH_MMAP_RND_BITS_MIN
>         default 18 if 64BIT
> diff --git a/arch/riscv/include/asm/kasan.h b/arch/riscv/include/asm/kasan.h
> new file mode 100644
> index 000000000000..eb9b1a2f641c
> --- /dev/null
> +++ b/arch/riscv/include/asm/kasan.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2019 Andes Technology Corporation */
> +
> +#ifndef __ASM_KASAN_H
> +#define __ASM_KASAN_H
> +
> +#ifndef __ASSEMBLY__
> +
> +#ifdef CONFIG_KASAN
> +
> +#include <asm/pgtable.h>
> +
> +#define KASAN_SHADOW_SCALE_SHIFT       3
> +
> +#define KASAN_SHADOW_SIZE      (UL(1) << (38 - KASAN_SHADOW_SCALE_SHIFT))
> +#define KASAN_SHADOW_START     0xffffffc000000000 // 2^64 - 2^38
> +#define KASAN_SHADOW_END       (KASAN_SHADOW_START + KASAN_SHADOW_SIZE)
> +
> +#define KASAN_SHADOW_OFFSET    (KASAN_SHADOW_END - (1ULL << \
> +                                       (64 - KASAN_SHADOW_SCALE_SHIFT)))
> +
> +void kasan_init(void);
> +asmlinkage void kasan_early_init(void);
> +
> +#endif
> +#endif
> +#endif /* __ASM_KASAN_H */
> diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
> index 7df8daa66cc8..777a1dddb3df 100644
> --- a/arch/riscv/include/asm/pgtable-64.h
> +++ b/arch/riscv/include/asm/pgtable-64.h
> @@ -59,6 +59,11 @@ static inline unsigned long pud_page_vaddr(pud_t pud)
>         return (unsigned long)pfn_to_virt(pud_val(pud) >> _PAGE_PFN_SHIFT);
>  }
>
> +static inline struct page *pud_page(pud_t pud)
> +{
> +       return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
> +}
> +
>  #define pmd_index(addr) (((addr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1))
>
>  static inline pmd_t *pmd_offset(pud_t *pud, unsigned long addr)
> diff --git a/arch/riscv/include/asm/string.h b/arch/riscv/include/asm/string.h
> index 1b5d44585962..a4451f768826 100644
> --- a/arch/riscv/include/asm/string.h
> +++ b/arch/riscv/include/asm/string.h
> @@ -11,8 +11,17 @@
>
>  #define __HAVE_ARCH_MEMSET
>  extern asmlinkage void *memset(void *, int, size_t);
> +extern asmlinkage void *__memset(void *, int, size_t);
>
>  #define __HAVE_ARCH_MEMCPY
>  extern asmlinkage void *memcpy(void *, const void *, size_t);
> +extern asmlinkage void *__memcpy(void *, const void *, size_t);
>
> +// For those files which don't want to check by kasan.
> +#if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)
> +
> +#define memcpy(dst, src, len) __memcpy(dst, src, len)
> +#define memset(s, c, n) __memset(s, c, n)
> +
> +#endif
>  #endif /* _ASM_RISCV_STRING_H */
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 72f89b7590dd..95eca23cd811 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -102,6 +102,9 @@ clear_bss_done:
>         sw zero, TASK_TI_CPU(tp)
>         la sp, init_thread_union + THREAD_SIZE
>
> +#ifdef CONFIG_KASAN
> +       call kasan_early_init
> +#endif
>         /* Start the kernel */
>         call parse_dtb
>         tail start_kernel
> diff --git a/arch/riscv/kernel/riscv_ksyms.c b/arch/riscv/kernel/riscv_ksyms.c
> index 4800cf703186..376bba7f65ce 100644
> --- a/arch/riscv/kernel/riscv_ksyms.c
> +++ b/arch/riscv/kernel/riscv_ksyms.c
> @@ -14,3 +14,5 @@ EXPORT_SYMBOL(__asm_copy_to_user);
>  EXPORT_SYMBOL(__asm_copy_from_user);
>  EXPORT_SYMBOL(memset);
>  EXPORT_SYMBOL(memcpy);
> +EXPORT_SYMBOL(__memset);
> +EXPORT_SYMBOL(__memcpy);
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index a990a6cb184f..41f7eae9bc4d 100644
> --- a/arch/riscv/kernel/setup.c
> +++ b/arch/riscv/kernel/setup.c
> @@ -23,6 +23,7 @@
>  #include <asm/smp.h>
>  #include <asm/tlbflush.h>
>  #include <asm/thread_info.h>
> +#include <asm/kasan.h>
>
>  #ifdef CONFIG_DUMMY_CONSOLE
>  struct screen_info screen_info = {
> @@ -70,6 +71,10 @@ void __init setup_arch(char **cmdline_p)
>         swiotlb_init(1);
>  #endif
>
> +#ifdef CONFIG_KASAN
> +       kasan_init();
> +#endif
> +
>  #ifdef CONFIG_SMP
>         setup_smp();
>  #endif
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 23cd1a9e52a1..97009803ba9f 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -46,6 +46,7 @@ SECTIONS
>                 KPROBES_TEXT
>                 ENTRY_TEXT
>                 IRQENTRY_TEXT
> +               SOFTIRQENTRY_TEXT
>                 *(.fixup)
>                 _etext = .;
>         }
> diff --git a/arch/riscv/lib/memcpy.S b/arch/riscv/lib/memcpy.S
> index b4c477846e91..51ab716253fa 100644
> --- a/arch/riscv/lib/memcpy.S
> +++ b/arch/riscv/lib/memcpy.S
> @@ -7,7 +7,8 @@
>  #include <asm/asm.h>
>
>  /* void *memcpy(void *, const void *, size_t) */
> -ENTRY(memcpy)
> +ENTRY(__memcpy)
> +WEAK(memcpy)
>         move t6, a0  /* Preserve return value */
>
>         /* Defer to byte-oriented copy for small sizes */
> @@ -104,4 +105,4 @@ ENTRY(memcpy)
>         bltu a1, a3, 5b
>  6:
>         ret
> -END(memcpy)
> +END(__memcpy)
> diff --git a/arch/riscv/lib/memset.S b/arch/riscv/lib/memset.S
> index 5a7386b47175..34c5360c6705 100644
> --- a/arch/riscv/lib/memset.S
> +++ b/arch/riscv/lib/memset.S
> @@ -8,7 +8,8 @@
>  #include <asm/asm.h>
>
>  /* void *memset(void *, int, size_t) */
> -ENTRY(memset)
> +ENTRY(__memset)
> +WEAK(memset)
>         move t0, a0  /* Preserve return value */
>
>         /* Defer to byte-oriented fill for small sizes */
> @@ -109,4 +110,4 @@ ENTRY(memset)
>         bltu t0, a3, 5b
>  6:
>         ret
> -END(memset)
> +END(__memset)
> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> index 9d9a17335686..b8a8ca71f86e 100644
> --- a/arch/riscv/mm/Makefile
> +++ b/arch/riscv/mm/Makefile
> @@ -17,3 +17,9 @@ ifeq ($(CONFIG_MMU),y)
>  obj-$(CONFIG_SMP) += tlbflush.o
>  endif
>  obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
> +obj-$(CONFIG_KASAN)   += kasan_init.o
> +
> +ifdef CONFIG_KASAN
> +KASAN_SANITIZE_kasan_init.o := n
> +KASAN_SANITIZE_init.o := n
> +endif
> diff --git a/arch/riscv/mm/kasan_init.c b/arch/riscv/mm/kasan_init.c
> new file mode 100644
> index 000000000000..c3152768cdbe
> --- /dev/null
> +++ b/arch/riscv/mm/kasan_init.c
> @@ -0,0 +1,104 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// Copyright (C) 2019 Andes Technology Corporation
> +
> +#include <linux/pfn.h>
> +#include <linux/init_task.h>
> +#include <linux/kasan.h>
> +#include <linux/kernel.h>
> +#include <linux/memblock.h>
> +#include <asm/tlbflush.h>
> +#include <asm/pgtable.h>
> +#include <asm/fixmap.h>
> +
> +extern pgd_t early_pg_dir[PTRS_PER_PGD];
> +asmlinkage void __init kasan_early_init(void)
> +{
> +       uintptr_t i;
> +       pgd_t *pgd = early_pg_dir + pgd_index(KASAN_SHADOW_START);
> +
> +       for (i = 0; i < PTRS_PER_PTE; ++i)
> +               set_pte(kasan_early_shadow_pte + i,
> +                       mk_pte(virt_to_page(kasan_early_shadow_page),
> +                       PAGE_KERNEL));
> +
> +       for (i = 0; i < PTRS_PER_PMD; ++i)
> +               set_pmd(kasan_early_shadow_pmd + i,
> +                pfn_pmd(PFN_DOWN(__pa((uintptr_t)kasan_early_shadow_pte)),
> +                       __pgprot(_PAGE_TABLE)));
> +
> +       for (i = KASAN_SHADOW_START; i < KASAN_SHADOW_END;
> +            i += PGDIR_SIZE, ++pgd)
> +               set_pgd(pgd,
> +                pfn_pgd(PFN_DOWN(__pa(((uintptr_t)kasan_early_shadow_pmd))),
> +                       __pgprot(_PAGE_TABLE)));
> +
> +       // init for swapper_pg_dir
> +       pgd = pgd_offset_k(KASAN_SHADOW_START);
> +
> +       for (i = KASAN_SHADOW_START; i < KASAN_SHADOW_END;
> +            i += PGDIR_SIZE, ++pgd)
> +               set_pgd(pgd,
> +                pfn_pgd(PFN_DOWN(__pa(((uintptr_t)kasan_early_shadow_pmd))),
> +                       __pgprot(_PAGE_TABLE)));
> +
> +       flush_tlb_all();
> +}
> +
> +static void __init populate(void *start, void *end)
> +{
> +       unsigned long i;
> +       unsigned long vaddr = (unsigned long)start & PAGE_MASK;
> +       unsigned long vend = PAGE_ALIGN((unsigned long)end);
> +       unsigned long n_pages = (vend - vaddr) / PAGE_SIZE;
> +       unsigned long n_pmds =
> +               (n_pages % PTRS_PER_PTE) ? n_pages / PTRS_PER_PTE + 1 :
> +                                               n_pages / PTRS_PER_PTE;
> +       pgd_t *pgd = pgd_offset_k(vaddr);
> +       pmd_t *pmd = memblock_alloc(n_pmds * sizeof(pmd_t), PAGE_SIZE);
> +       pte_t *pte = memblock_alloc(n_pages * sizeof(pte_t), PAGE_SIZE);
> +
> +       for (i = 0; i < n_pages; i++) {
> +               phys_addr_t phys = memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
> +
> +               set_pte(pte + i, pfn_pte(PHYS_PFN(phys), PAGE_KERNEL));
> +       }
> +
> +       for (i = 0; i < n_pages; ++pmd, i += PTRS_PER_PTE)
> +               set_pmd(pmd, pfn_pmd(PFN_DOWN(__pa((uintptr_t)(pte + i))),
> +                               __pgprot(_PAGE_TABLE)));
> +
> +       for (i = vaddr; i < vend; i += PGDIR_SIZE, ++pgd)
> +               set_pgd(pgd, pfn_pgd(PFN_DOWN(__pa(((uintptr_t)pmd))),
> +                               __pgprot(_PAGE_TABLE)));
> +
> +       flush_tlb_all();
> +       memset(start, 0, end - start);
> +}
> +
> +void __init kasan_init(void)
> +{
> +       struct memblock_region *reg;
> +       unsigned long i;
> +
> +       kasan_populate_early_shadow((void *)KASAN_SHADOW_START,
> +                       (void *)kasan_mem_to_shadow((void *)VMALLOC_END));
> +
> +       for_each_memblock(memory, reg) {
> +               void *start = (void *)__va(reg->base);
> +               void *end = (void *)__va(reg->base + reg->size);
> +
> +               if (start >= end)
> +                       break;
> +
> +               populate(kasan_mem_to_shadow(start),
> +                        kasan_mem_to_shadow(end));
> +       };
> +
> +       for (i = 0; i < PTRS_PER_PTE; i++)
> +               set_pte(&kasan_early_shadow_pte[i],
> +                       mk_pte(virt_to_page(kasan_early_shadow_page),
> +                       __pgprot(_PAGE_PRESENT | _PAGE_READ | _PAGE_ACCESSED)));
> +
> +       memset(kasan_early_shadow_page, 0, PAGE_SIZE);
> +       init_task.kasan_depth = 0;
> +}
> --
> 2.17.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/8d86d53e904bece0623cb8969cdc70f782fa2bae.1569995450.git.nickhu%40andestech.com.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
