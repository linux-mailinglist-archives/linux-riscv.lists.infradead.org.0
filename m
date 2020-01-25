Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16B014935C
	for <lists+linux-riscv@lfdr.de>; Sat, 25 Jan 2020 05:58:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zunQhtnyAmXkCRRdHHYAHxUYa6sA1+vj9z7uwOFW/1U=; b=Xac+xALEhoTaxi0Wbw9eihGQP
	9VbPX2RIEbiFFRoQiARbCoYjuI3nlVLmJYVysknLWFQsMBcG0DvRFkKxX/pWsBb8rex5rF+MZdG4T
	V6x2JgsP6gWYTx33Bv9Zm3weF6W4PnXBONIh3kSQjratazYaMB5Ew7uo0KPjTujqOBAj0amemIFMC
	6x/Se60RNwLwztUv4pGpyQ421QLQB9RKJ2Qkn2nb0A1nc3KA+at1gtzF+qVZAitUncTBLEF9NB5cG
	t0ilpJYZDYjCGQZi64kZM27Y8hCsd0XrgeQOa0nvTQpyXSlXrvOjLjK6h9b/3nREEWwYqYwHaUFwo
	nANoXwO4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivDWL-0007dC-7i; Sat, 25 Jan 2020 04:58:09 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivDWH-0007cc-Ll
 for linux-riscv@lists.infradead.org; Sat, 25 Jan 2020 04:58:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id t2so4597805wrr.1
 for <linux-riscv@lists.infradead.org>; Fri, 24 Jan 2020 20:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zunQhtnyAmXkCRRdHHYAHxUYa6sA1+vj9z7uwOFW/1U=;
 b=kDJh5+aS4vXcf4/zReBJTjcusV+T2hmjaxa19E42KskPDySM/mYALRIMxA3hyhiFMn
 gNBlYZ6PvKzTSa07R9aKqabiqj8FoTkQJhVvD6n5PDTvi1uP5VSbdlWTij+EKd8ugs8n
 LvKTmMErbijQCuK/b3ElMIf4fXypI1JRI6ch7yoU+l8rJWHUC/tJfzCj0VK7yTGsPxEv
 k7NWNI02tD+AE4Yd14NOBS/uQFTbDwBIzsyKF5urwgbDgr48t6Y1s1zZ/opqO3uOKYDq
 mGqKPNXXFDSi7IMu8PP0GK8JFSA6sO/wICPWInvmfzB8yiQHKX1dYEYJ6HiRcS6WMhWI
 4miA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zunQhtnyAmXkCRRdHHYAHxUYa6sA1+vj9z7uwOFW/1U=;
 b=EBrpMyxg1XMbEdSoJsTlP9zxdvcE3clqPdORZ4McDTtaHFhLZfMhSf0oUZewxLMlZi
 0jFhBtvvZJep+TVj7KHtQdUQvkfr3H87kTYyySFfRWHECZoaX+mStVJ4gQJPrKpnpDJh
 BlNJSV8SLB0AUhXzzi0AAqtSH1u+HK8RkU/qHdEXpB4AQgSf2WZxuHbYoGfk9S3Yf/FT
 Q/adiqIbmW/sleTs0IQjWQjSeGtKiHhaTac9kzh35hWhyBA4a3Exxb2dMCnIwOp7pvrc
 PUY5Vie09I41qJRyh4CsLPIQ+OY40MH1sodrylQsl+RSBMraPZVP1k61jHkqTQcALa/J
 4MjA==
X-Gm-Message-State: APjAAAXmWqabWfgOsLcpwEGgLBA/u8hYsDb8FBs7Ypao9v/bmHEC5NAA
 49vaDXmT4/bQgGKw/SwxoG8KryF0FmyOBUxYG8KtdA==
X-Google-Smtp-Source: APXvYqx8nsAcdG0frbpxq4Qr+h0e3W2Qx4VCh+PD+mlr+iP29/er/xetlI4nT+nNFNDnxFC0SRWUOLOUc6fGU62jW8M=
X-Received: by 2002:a5d:50cf:: with SMTP id f15mr7823043wrt.381.1579928281012; 
 Fri, 24 Jan 2020 20:58:01 -0800 (PST)
MIME-Version: 1.0
References: <20200123201414.8933-1-alex@ghiti.fr>
In-Reply-To: <20200123201414.8933-1-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 25 Jan 2020 10:27:49 +0530
Message-ID: <CAAhSdy1LUOztgM3fXWmzGoTKYUZPbUX6jmNDj-k1uAcT49XPPQ@mail.gmail.com>
Subject: Re: [PATCH] riscv: Introduce CONFIG_RELOCATABLE
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_205805_741065_5E19DEAE 
X-CRM114-Status: GOOD (  29.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 1:44 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> This config allows to compile the kernel as PIE and to relocate it at any
> virtual address at runtime: this paves the way to KASLR and to 4-level
> page table folding at runtime. Runtime relocation is possible since
> relocation metadata are embedded into the kernel.
>
> Note that relocating at runtime introduces an overhead even if the kernel
> is loaded at the same address it was linked at and that the compiler
> options are those used in arm64 which uses the same RELA relocation format.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/Kconfig              | 11 ++++
>  arch/riscv/Makefile             |  5 +-
>  arch/riscv/boot/loader.lds.S    |  2 +-
>  arch/riscv/include/asm/page.h   |  5 +-
>  arch/riscv/kernel/head.S        |  3 +-
>  arch/riscv/kernel/vmlinux.lds.S | 10 ++--
>  arch/riscv/mm/Makefile          |  4 ++
>  arch/riscv/mm/init.c            | 92 ++++++++++++++++++++++++++++-----
>  8 files changed, 110 insertions(+), 22 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index fa7dc03459e7..c652b4b850ce 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -163,6 +163,17 @@ config PGTABLE_LEVELS
>         default 3 if 64BIT
>         default 2
>
> +config RELOCATABLE
> +       bool
> +       help
> +          This builds a kernel as a Position Independent Executable (PIE),
> +          which retains all relocation metadata required to relocate the
> +          kernel binary at runtime to a different virtual address than the
> +          address it was linked at.
> +          Since RISCV uses the RELA relocation format, this requires a
> +          relocation pass at runtime even if the kernel is loaded at the
> +          same address it was linked at.
> +

I am sure this cannot be used for NOMMU support because of the
page table mappings.

I guess this should depend on MMU.

>  source "arch/riscv/Kconfig.socs"
>
>  menu "Platform type"
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index b9009a2fbaf5..5a115cf6a9c1 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -9,7 +9,10 @@
>  #
>
>  OBJCOPYFLAGS    := -O binary
> -LDFLAGS_vmlinux :=
> +ifeq ($(CONFIG_RELOCATABLE),y)
> +LDFLAGS_vmlinux := -shared -Bsymbolic -z notext -z norelro
> +KBUILD_CFLAGS += -fPIE
> +endif
>  ifeq ($(CONFIG_DYNAMIC_FTRACE),y)
>         LDFLAGS_vmlinux := --no-relax
>  endif
> diff --git a/arch/riscv/boot/loader.lds.S b/arch/riscv/boot/loader.lds.S
> index 47a5003c2e28..a9ed218171aa 100644
> --- a/arch/riscv/boot/loader.lds.S
> +++ b/arch/riscv/boot/loader.lds.S
> @@ -7,7 +7,7 @@ ENTRY(_start)
>
>  SECTIONS
>  {
> -       . = PAGE_OFFSET;
> +       . = CONFIG_PAGE_OFFSET;
>
>         .payload : {
>                 *(.payload)

The loader.lds.S is used by NOMMU support so this should be separate patch.

> diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
> index ac699246ae7e..27c95da68ecb 100644
> --- a/arch/riscv/include/asm/page.h
> +++ b/arch/riscv/include/asm/page.h
> @@ -31,9 +31,9 @@
>   * When not using MMU this corresponds to the first free page in
>   * physical memory (aligned on a page boundary).
>   */
> -#define PAGE_OFFSET            _AC(CONFIG_PAGE_OFFSET, UL)
> +#define PAGE_OFFSET            kernel_load_addr
>
> -#define KERN_VIRT_SIZE (-PAGE_OFFSET)
> +#define KERN_VIRT_SIZE         (-_AC(CONFIG_PAGE_OFFSET, UL))
>
>  #ifndef __ASSEMBLY__
>
> @@ -97,6 +97,7 @@ extern unsigned long pfn_base;
>  #define ARCH_PFN_OFFSET                (PAGE_OFFSET >> PAGE_SHIFT)
>  #endif /* CONFIG_MMU */
>
> +extern unsigned long kernel_load_addr;

Having this variable named kernel_virt_addr seems more
logical to me.

Is it mandatory to use kernel_load_addr name ?

>  extern unsigned long max_low_pfn;
>  extern unsigned long min_low_pfn;
>
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 2227db63f895..5042b2b48a06 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -126,7 +126,8 @@ clear_bss_done:
>  #ifdef CONFIG_MMU
>  relocate:
>         /* Relocate return address */
> -       li a1, PAGE_OFFSET
> +       la a1, kernel_load_addr
> +       REG_L a1, 0(a1)
>         la a2, _start
>         sub a1, a1, a2
>         add ra, ra, a1
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 12f42f96d46e..5095aee7c37e 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -4,7 +4,7 @@
>   * Copyright (C) 2017 SiFive
>   */
>
> -#define LOAD_OFFSET PAGE_OFFSET
> +#define LOAD_OFFSET CONFIG_PAGE_OFFSET
>  #include <asm/vmlinux.lds.h>
>  #include <asm/page.h>
>  #include <asm/cache.h>
> @@ -70,9 +70,11 @@ SECTIONS
>
>         EXCEPTION_TABLE(0x10)
>
> -       .rel.dyn : {
> -               *(.rel.dyn*)
> -       }
> +        .rela.dyn : ALIGN(8) {
> +               __rela_dyn_start = .;
> +                *(.rela .rela*)
> +               __rela_dyn_end = .;
> +        }
>
>         _end = .;
>
> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> index a1bd95c8047a..dcd3d806243f 100644
> --- a/arch/riscv/mm/Makefile
> +++ b/arch/riscv/mm/Makefile
> @@ -1,6 +1,10 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>
>  CFLAGS_init.o := -mcmodel=medany
> +ifdef CONFIG_RELOCATABLE
> +CFLAGS_init.o += -fno-pie
> +endif
> +
>  ifdef CONFIG_FTRACE
>  CFLAGS_REMOVE_init.o = -pg
>  endif
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 965a8cf4829c..ac9a9f69abc0 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -12,6 +12,9 @@
>  #include <linux/sizes.h>
>  #include <linux/of_fdt.h>
>  #include <linux/libfdt.h>
> +#ifdef CONFIG_RELOCATABLE
> +#include <linux/elf.h>
> +#endif
>
>  #include <asm/fixmap.h>
>  #include <asm/tlbflush.h>
> @@ -28,6 +31,9 @@ EXPORT_SYMBOL(empty_zero_page);
>  extern char _start[];
>  void *dtb_early_va;
>
> +unsigned long kernel_load_addr = _AC(CONFIG_PAGE_OFFSET, UL);
> +EXPORT_SYMBOL(kernel_load_addr);
> +
>  static void __init zone_sizes_init(void)
>  {
>         unsigned long max_zone_pfns[MAX_NR_ZONES] = { 0, };
> @@ -132,7 +138,8 @@ void __init setup_bootmem(void)
>                 phys_addr_t end = reg->base + reg->size;
>
>                 if (reg->base <= vmlinux_end && vmlinux_end <= end) {
> -                       mem_size = min(reg->size, (phys_addr_t)-PAGE_OFFSET);
> +                       mem_size = min(reg->size,
> +                                      (phys_addr_t)-kernel_load_addr);
>
>                         /*
>                          * Remove memblock from the end of usable area to the
> @@ -269,7 +276,7 @@ static phys_addr_t __init alloc_pmd(uintptr_t va)
>         if (mmu_enabled)
>                 return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
>
> -       pmd_num = (va - PAGE_OFFSET) >> PGDIR_SHIFT;
> +       pmd_num = (va - kernel_load_addr) >> PGDIR_SHIFT;
>         BUG_ON(pmd_num >= NUM_EARLY_PMDS);
>         return (uintptr_t)&early_pmd[pmd_num * PTRS_PER_PMD];
>  }
> @@ -370,6 +377,54 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
>  #error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
>  #endif
>
> +#ifdef CONFIG_RELOCATABLE
> +extern unsigned long __rela_dyn_start, __rela_dyn_end;
> +
> +#ifdef CONFIG_64BIT
> +#define Elf_Rela Elf64_Rela
> +#define Elf_Addr Elf64_Addr
> +#else
> +#define Elf_Rela Elf32_Rela
> +#define Elf_Addr Elf32_Addr
> +#endif
> +
> +void __init relocate_kernel(uintptr_t load_pa)
> +{
> +       Elf_Rela *rela = (Elf_Rela *)&__rela_dyn_start;
> +       uintptr_t link_addr = _AC(CONFIG_PAGE_OFFSET, UL);
> +       /*
> +        * This holds the offset between the linked virtual address and the
> +        * relocated virtual address.
> +        */
> +       uintptr_t reloc_offset = kernel_load_addr - link_addr;
> +       /*
> +        * This holds the offset between linked virtual address and physical
> +        * address whereas va_pa_offset holds the offset between relocated
> +        * virtual address and physical address.
> +        */
> +       uintptr_t va_link_pa_offset = link_addr - load_pa;
> +
> +       for ( ; rela < (Elf_Rela *)&__rela_dyn_end; rela++) {
> +               Elf_Addr addr = (rela->r_offset - va_link_pa_offset);
> +               Elf_Addr relocated_addr = rela->r_addend;
> +
> +               if (rela->r_info != R_RISCV_RELATIVE)
> +                       continue;
> +
> +               /*
> +                * Make sure to not relocate vdso symbols like rt_sigreturn
> +                * which are linked from the address 0 in vmlinux since
> +                * vdso symbol addresses are actually used as an offset from
> +                * mm->context.vdso in VDSO_OFFSET macro.
> +                */
> +               if (relocated_addr >= link_addr)
> +                       relocated_addr += reloc_offset;
> +
> +               *(Elf_Addr *)addr = relocated_addr;
> +       }
> +}
> +#endif
> +
>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  {
>         uintptr_t va, end_va;
> @@ -377,9 +432,20 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>         uintptr_t load_sz = (uintptr_t)(&_end) - load_pa;
>         uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
>
> -       va_pa_offset = PAGE_OFFSET - load_pa;
> +       va_pa_offset = kernel_load_addr - load_pa;
>         pfn_base = PFN_DOWN(load_pa);
>
> +#ifdef CONFIG_RELOCATABLE
> +       /*
> +        * Early page table uses only one PGDIR, which makes it possible
> +        * to map 1GB aligned on 1GB: if the relocation offset makes the kernel
> +        * cross over a 1G boundary, raise a bug since a part of the kernel
> +        * would not get mapped.
> +        */
> +       BUG_ON(SZ_1G - (kernel_load_addr & (SZ_1G - 1)) < load_sz);
> +       relocate_kernel(load_pa);
> +#endif
> +
>         /*
>          * Enforce boot alignment requirements of RV32 and
>          * RV64 by only allowing PMD or PGD mappings.
> @@ -387,7 +453,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>         BUG_ON(map_size == PAGE_SIZE);
>
>         /* Sanity check alignment and size */
> -       BUG_ON((PAGE_OFFSET % PGDIR_SIZE) != 0);
> +       BUILD_BUG_ON((_AC(CONFIG_PAGE_OFFSET, UL) % PGDIR_SIZE) != 0);
>         BUG_ON((load_pa % map_size) != 0);
>         BUG_ON(load_sz > MAX_EARLY_MAPPING_SIZE);
>
> @@ -400,13 +466,13 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>         create_pmd_mapping(fixmap_pmd, FIXADDR_START,
>                            (uintptr_t)fixmap_pte, PMD_SIZE, PAGE_TABLE);
>         /* Setup trampoline PGD and PMD */
> -       create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
> +       create_pgd_mapping(trampoline_pg_dir, kernel_load_addr,
>                            (uintptr_t)trampoline_pmd, PGDIR_SIZE, PAGE_TABLE);
> -       create_pmd_mapping(trampoline_pmd, PAGE_OFFSET,
> +       create_pmd_mapping(trampoline_pmd, kernel_load_addr,
>                            load_pa, PMD_SIZE, PAGE_KERNEL_EXEC);
>  #else
>         /* Setup trampoline PGD */
> -       create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
> +       create_pgd_mapping(trampoline_pg_dir, kernel_load_addr,
>                            load_pa, PGDIR_SIZE, PAGE_KERNEL_EXEC);
>  #endif
>
> @@ -415,10 +481,10 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>          * us to reach paging_init(). We map all memory banks later
>          * in setup_vm_final() below.
>          */
> -       end_va = PAGE_OFFSET + load_sz;
> -       for (va = PAGE_OFFSET; va < end_va; va += map_size)
> +       end_va = kernel_load_addr + load_sz;
> +       for (va = kernel_load_addr; va < end_va; va += map_size)
>                 create_pgd_mapping(early_pg_dir, va,
> -                                  load_pa + (va - PAGE_OFFSET),
> +                                  load_pa + (va - kernel_load_addr),
>                                    map_size, PAGE_KERNEL_EXEC);
>
>         /* Create fixed mapping for early FDT parsing */
> @@ -457,9 +523,9 @@ static void __init setup_vm_final(void)
>                         break;
>                 if (memblock_is_nomap(reg))
>                         continue;
> -               if (start <= __pa(PAGE_OFFSET) &&
> -                   __pa(PAGE_OFFSET) < end)
> -                       start = __pa(PAGE_OFFSET);
> +               if (start <= __pa(kernel_load_addr) &&
> +                   __pa(kernel_load_addr) < end)
> +                       start = __pa(kernel_load_addr);
>
>                 map_size = best_map_size(start, end - start);
>                 for (pa = start; pa < end; pa += map_size) {
> --
> 2.20.1
>

Apart from minor comments above, I will certainly try this patch
my end.

Regards,
Anup

