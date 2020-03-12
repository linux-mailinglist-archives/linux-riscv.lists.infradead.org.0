Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145991828A0
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 06:58:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bn1hg/+PtzTsKNpb+Ce5m6JSgVn+95BJXkA8A4DMiPc=; b=CvYper5AEDhEYCG8ZXg3XgsO+
	a+BYdYYfPucMrv6s8iu2lKyaLggtrQ0yiEeW2H31j/RVA1buTS8EMPhU+s5h/zQ6TxjCJt0ae/zdm
	KSPjHOm9VqcKES9RuG1weY3p4WQJEwbmUPcVbYRb5EnakzvFUaGg6g/1eRLflzrdQZJw5USTDWTP2
	LI2dG/c9Qsbr5KqlleDzZ1n7gMBvTjInCH3BYiLXDtg/MT20AzQmbKbTJ1R/J0f2w6Y196lE7jVXK
	nx0G5XRE+LUXj4VX/qn/dFNSaKEQcme5ZhAR14LVGSYPLQgjITzarxPZ75wFAvD0D7P9+2FoFvqQh
	t+EvVmokg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCGrB-0000gl-D6; Thu, 12 Mar 2020 05:58:09 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCGr7-0000gE-Fu
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 05:58:07 +0000
Received: by mail-oi1-x244.google.com with SMTP id g6so4374663oiy.1
 for <linux-riscv@lists.infradead.org>; Wed, 11 Mar 2020 22:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bn1hg/+PtzTsKNpb+Ce5m6JSgVn+95BJXkA8A4DMiPc=;
 b=CIc/RH60Iz3c1UBDBhEfsp4G27ouwBp+0Cl2CZ6BOGGts7w71kjT3VN6Z3TrI6+nAs
 sS211Q6PMK+X2V6hTiWFSxHxCUbIs9+W/Wz24mbDm+lHzxwDB09LzBzMeGVnT83OLr1U
 aoCavsEXtMLKRL/LcM1XZ4rkpPCtB5Szuejz08zeY/QRRc8bcxn2SbdWZqJUJZEhcnq7
 3St2nNDnEqBTs8+01QfsxmSEFd8Vgmb49D+p8pROKCy3xAA7z8tKEQEuQ6g9tB3tU0Z0
 lLaMqNMIbJM3bsbBbcy+13iWkq7BQH7sd34wkbtXAuX/0ONvOBGKKz64hpnuPnO3O+uw
 RgQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bn1hg/+PtzTsKNpb+Ce5m6JSgVn+95BJXkA8A4DMiPc=;
 b=ereu3Adu1z2XN6lygNcHMdrY0g7r+B3QLJJPtDmXGcyLjHdtgncmowphQU2lJchlpK
 CVZpF/V7KjBpxs3gWI0pmnZlfXCTCcsIr3cwGkx9G8ULd+7eP8PhSIznClNJoABAIwAA
 FSeJQVKm9bguXvMN2uSLh46lg0P2z8m5Z959KZ3y6sS9HjUdTzzTRP+1DOVPdgc26OV7
 Dge0nCtUKcKk3Rh/2Z0Fui/pclU0cdAl9uci13NPwgW889r+ahOxpf75QZ47a73k+FRT
 yuYyt7YWn7kvLLlpoam5dyPzf6jXVk4r5t5g6VEPykIiBTMwNlVizpgOHnzg5CeIvVMr
 3/aQ==
X-Gm-Message-State: ANhLgQ0mzyznFBcPG78zV2yjE1zj0aae8aiOkNp26zMUM8bkqVXiZive
 StJR9e+73SJGWTNhtD+nkQV8xsqGWihKT50O6MOrvg==
X-Google-Smtp-Source: ADFU+vsMvyofqBnJoHR6vy8xgHA39d+khqv33FK27ksvDLfAygtUQztZFg7E6bYyG+UOaF0XTGt8780bAIQyv4vwvIc=
X-Received: by 2002:a05:6808:56:: with SMTP id
 v22mr1415109oic.116.1583992683910; 
 Wed, 11 Mar 2020 22:58:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200303054437.650-1-alex@ghiti.fr>
 <mhng-346cdebc-e24d-49db-bb2e-0d4fa8d57030@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-346cdebc-e24d-49db-bb2e-0d4fa8d57030@palmerdabbelt-glaptop1>
From: Zong Li <zong.li@sifive.com>
Date: Thu, 12 Mar 2020 13:57:53 +0800
Message-ID: <CANXhq0rvnuzgSxF9b8emkYKLnTwuK90XG3=5-pPFW9a9_5BS3w@mail.gmail.com>
Subject: Re: [PATCH RESEND v2] riscv: Introduce CONFIG_RELOCATABLE
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_225805_598854_24E10558 
X-CRM114-Status: GOOD (  39.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <anup@brainfault.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Alexandre Ghiti <alex@ghiti.fr>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Mar 7, 2020 at 1:58 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Mon, 02 Mar 2020 21:44:37 PST (-0800), alex@ghiti.fr wrote:
> > This config allows to compile the kernel as PIE and to relocate it at any
> > virtual address at runtime: this paves the way to KASLR and to 4-level
> > page table folding at runtime. Runtime relocation is possible since
> > relocation metadata are embedded into the kernel.
> >
> > Note that relocating at runtime introduces an overhead even if the kernel
> > is loaded at the same address it was linked at and that the compiler
> > options are those used in arm64 which uses the same RELA relocation format.
> >
> > Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> > Reviewed-by: Zong Li <zong.li@sifive.com>
> > Reviewed-by: Anup Patel <anup@brainfault.org>
> > Tested-by: Zong Li <zong.li@sifive.com>
> > ---
> > Changes in v2:
> > - Make RELOCATABLE depend on MMU as suggested by Anup
> > - Rename kernel_load_addr into kernel_virt_addr as suggested by Anup
> > - Use __pa_symbol instead of __pa, as suggested by Zong
> > - Rebased on top of v5.6-rc3
> > - Tested with sv48 patchset
> > - Add Reviewed/Tested-by from Zong and Anup
> >
> >  arch/riscv/Kconfig              | 12 +++++
> >  arch/riscv/Makefile             |  5 +-
> >  arch/riscv/boot/loader.lds.S    |  2 +-
> >  arch/riscv/include/asm/page.h   |  5 +-
> >  arch/riscv/kernel/head.S        |  3 +-
> >  arch/riscv/kernel/vmlinux.lds.S | 10 ++--
> >  arch/riscv/mm/Makefile          |  4 ++
> >  arch/riscv/mm/init.c            | 92 ++++++++++++++++++++++++++++-----
> >  8 files changed, 111 insertions(+), 22 deletions(-)
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index 73f029eae0cc..f5f3d474504d 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -163,6 +163,18 @@ config PGTABLE_LEVELS
> >       default 3 if 64BIT
> >       default 2
> >
> > +config RELOCATABLE
> > +     bool
> > +     depends on MMU
> > +     help
> > +          This builds a kernel as a Position Independent Executable (PIE),
> > +          which retains all relocation metadata required to relocate the
> > +          kernel binary at runtime to a different virtual address than the
> > +          address it was linked at.
> > +          Since RISCV uses the RELA relocation format, this requires a
> > +          relocation pass at runtime even if the kernel is loaded at the
> > +          same address it was linked at.
> > +
> >  source "arch/riscv/Kconfig.socs"
> >
> >  menu "Platform type"
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index b9009a2fbaf5..5a115cf6a9c1 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -9,7 +9,10 @@
> >  #
> >
> >  OBJCOPYFLAGS    := -O binary
> > -LDFLAGS_vmlinux :=
> > +ifeq ($(CONFIG_RELOCATABLE),y)
> > +LDFLAGS_vmlinux := -shared -Bsymbolic -z notext -z norelro
> > +KBUILD_CFLAGS += -fPIE
> > +endif
> >  ifeq ($(CONFIG_DYNAMIC_FTRACE),y)
> >       LDFLAGS_vmlinux := --no-relax
> >  endif
> > diff --git a/arch/riscv/boot/loader.lds.S b/arch/riscv/boot/loader.lds.S
> > index 47a5003c2e28..a9ed218171aa 100644
> > --- a/arch/riscv/boot/loader.lds.S
> > +++ b/arch/riscv/boot/loader.lds.S
> > @@ -7,7 +7,7 @@ ENTRY(_start)
> >
> >  SECTIONS
> >  {
> > -     . = PAGE_OFFSET;
> > +     . = CONFIG_PAGE_OFFSET;
> >
> >       .payload : {
> >               *(.payload)
> > diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
> > index 8ca1930caa44..af5810f9aebd 100644
> > --- a/arch/riscv/include/asm/page.h
> > +++ b/arch/riscv/include/asm/page.h
> > @@ -31,9 +31,9 @@
> >   * When not using MMU this corresponds to the first free page in
> >   * physical memory (aligned on a page boundary).
> >   */
> > -#define PAGE_OFFSET          _AC(CONFIG_PAGE_OFFSET, UL)
> > +#define PAGE_OFFSET          kernel_virt_addr
>
> I assume we want to keep PAGE_OFFSET a constant for the non-relocatable
> systems.  As it currently stands this is imposing a performance hit even when
>

I had almost done the KASLR implementation on top of this patch.
Actually, PAGE_OFFSET change is unnecessary in KASLR , because we
would move kernel image to a random physical address as well, so the
$pc will go to the relevant random virtual address. We need
kernel_virt_addr to record the new destination, but keep PAGE_OFFSET
to be CONFIG_PAGE_OFFSET is enough.

> > -#define KERN_VIRT_SIZE (-PAGE_OFFSET)
> > +#define KERN_VIRT_SIZE               (-_AC(CONFIG_PAGE_OFFSET, UL))
>
> This seems like it would cause issues if the kernel is relocated to high enough
> addresses that "kernel_virt_addr+KERN_VIRT_SIZE" overflows.
>

Based on the same reason, keep KERN_VIRT_SIZE to be -PAGE_OFFSET is good.

> >  #ifndef __ASSEMBLY__
> >
> > @@ -97,6 +97,7 @@ extern unsigned long pfn_base;
> >  #define ARCH_PFN_OFFSET              (PAGE_OFFSET >> PAGE_SHIFT)
> >  #endif /* CONFIG_MMU */
> >
> > +extern unsigned long kernel_virt_addr;
> >  extern unsigned long max_low_pfn;
> >  extern unsigned long min_low_pfn;
> >
> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > index 271860fc2c3f..d792912c2da3 100644
> > --- a/arch/riscv/kernel/head.S
> > +++ b/arch/riscv/kernel/head.S
> > @@ -131,7 +131,8 @@ clear_bss_done:
> >  #ifdef CONFIG_MMU
> >  relocate:
> >       /* Relocate return address */
> > -     li a1, PAGE_OFFSET
> > +     la a1, kernel_virt_addr
> > +     REG_L a1, 0(a1)
> >       la a2, _start
> >       sub a1, a1, a2
> >       add ra, ra, a1
> > diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> > index 1e0193ded420..5bf69e9b91e6 100644
> > --- a/arch/riscv/kernel/vmlinux.lds.S
> > +++ b/arch/riscv/kernel/vmlinux.lds.S
> > @@ -4,7 +4,7 @@
> >   * Copyright (C) 2017 SiFive
> >   */
> >
> > -#define LOAD_OFFSET PAGE_OFFSET
> > +#define LOAD_OFFSET CONFIG_PAGE_OFFSET
> >  #include <asm/vmlinux.lds.h>
> >  #include <asm/page.h>
> >  #include <asm/cache.h>
> > @@ -71,9 +71,11 @@ SECTIONS
> >
> >       EXCEPTION_TABLE(0x10)
> >
> > -     .rel.dyn : {
> > -             *(.rel.dyn*)
> > -     }
> > +        .rela.dyn : ALIGN(8) {
> > +             __rela_dyn_start = .;
> > +                *(.rela .rela*)
> > +             __rela_dyn_end = .;
> > +        }
>
> It looks like the indentation is screwed up here: I see a mix of tabs/spaces
> that doesn't match the rest of the file.
>
> >
> >       _end = .;
> >
> > diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> > index 50b7af58c566..27593d362248 100644
> > --- a/arch/riscv/mm/Makefile
> > +++ b/arch/riscv/mm/Makefile
> > @@ -1,6 +1,10 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >
> >  CFLAGS_init.o := -mcmodel=medany
> > +ifdef CONFIG_RELOCATABLE
> > +CFLAGS_init.o += -fno-pie
> > +endif
> > +
> >  ifdef CONFIG_FTRACE
> >  CFLAGS_REMOVE_init.o = -pg
> >  endif
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index 965a8cf4829c..428aee2669aa 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -12,6 +12,9 @@
> >  #include <linux/sizes.h>
> >  #include <linux/of_fdt.h>
> >  #include <linux/libfdt.h>
> > +#ifdef CONFIG_RELOCATABLE
> > +#include <linux/elf.h>
> > +#endif
> >
> >  #include <asm/fixmap.h>
> >  #include <asm/tlbflush.h>
> > @@ -28,6 +31,9 @@ EXPORT_SYMBOL(empty_zero_page);
> >  extern char _start[];
> >  void *dtb_early_va;
> >
> > +unsigned long kernel_virt_addr = _AC(CONFIG_PAGE_OFFSET, UL);
> > +EXPORT_SYMBOL(kernel_virt_addr);
> > +
> >  static void __init zone_sizes_init(void)
> >  {
> >       unsigned long max_zone_pfns[MAX_NR_ZONES] = { 0, };
> > @@ -132,7 +138,8 @@ void __init setup_bootmem(void)
> >               phys_addr_t end = reg->base + reg->size;
> >
> >               if (reg->base <= vmlinux_end && vmlinux_end <= end) {
> > -                     mem_size = min(reg->size, (phys_addr_t)-PAGE_OFFSET);
> > +                     mem_size = min(reg->size,
> > +                                    (phys_addr_t)-kernel_virt_addr);
>
> PAGE_OFFSET is kernel_virt_addr, so I don't see any reason to change these --
> they account for a significant fraction of the diff.
>

kernel_virt_addr would be assigned to a random destination by KASLR,
but here still should be PAGE_OFFSET rather than kernel_virt_addr as
mentioned above.

> >                       /*
> >                        * Remove memblock from the end of usable area to the
> > @@ -269,7 +276,7 @@ static phys_addr_t __init alloc_pmd(uintptr_t va)
> >       if (mmu_enabled)
> >               return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
> >
> > -     pmd_num = (va - PAGE_OFFSET) >> PGDIR_SHIFT;
> > +     pmd_num = (va - kernel_virt_addr) >> PGDIR_SHIFT;

Here is the same, please use PAGE_OFFSET instead of kernel_virt_addr.

> >       BUG_ON(pmd_num >= NUM_EARLY_PMDS);
> >       return (uintptr_t)&early_pmd[pmd_num * PTRS_PER_PMD];
> >  }
> > @@ -370,6 +377,54 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
> >  #error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
> >  #endif
> >
> > +#ifdef CONFIG_RELOCATABLE
> > +extern unsigned long __rela_dyn_start, __rela_dyn_end;
> > +
> > +#ifdef CONFIG_64BIT
> > +#define Elf_Rela Elf64_Rela
> > +#define Elf_Addr Elf64_Addr
> > +#else
> > +#define Elf_Rela Elf32_Rela
> > +#define Elf_Addr Elf32_Addr
> > +#endif
> > +
> > +void __init relocate_kernel(uintptr_t load_pa)
> > +{
> > +     Elf_Rela *rela = (Elf_Rela *)&__rela_dyn_start;
> > +     uintptr_t link_addr = _AC(CONFIG_PAGE_OFFSET, UL);
> > +     /*
> > +      * This holds the offset between the linked virtual address and the
> > +      * relocated virtual address.
> > +      */
> > +     uintptr_t reloc_offset = kernel_virt_addr - link_addr;
> > +     /*
> > +      * This holds the offset between linked virtual address and physical
> > +      * address whereas va_pa_offset holds the offset between relocated
> > +      * virtual address and physical address.
> > +      */
> > +     uintptr_t va_link_pa_offset = link_addr - load_pa;
> > +
> > +     for ( ; rela < (Elf_Rela *)&__rela_dyn_end; rela++) {
> > +             Elf_Addr addr = (rela->r_offset - va_link_pa_offset);
> > +             Elf_Addr relocated_addr = rela->r_addend;
> > +
> > +             if (rela->r_info != R_RISCV_RELATIVE)
> > +                     continue;
>
> This should at least provide a warning when it encounters an unresolvable
> relocation.  Is it currently stands this just ignores all other runtime
> relocations, and while I can buy the argument there shouldn't be any (though
> I'd expect R_RISCV_{32,64} to show up?) we certainly shouldn't just silently
> skip them.
>
> > +
> > +             /*
> > +              * Make sure to not relocate vdso symbols like rt_sigreturn
> > +              * which are linked from the address 0 in vmlinux since
> > +              * vdso symbol addresses are actually used as an offset from
> > +              * mm->context.vdso in VDSO_OFFSET macro.
> > +              */
> > +             if (relocated_addr >= link_addr)
> > +                     relocated_addr += reloc_offset;
> > +
> > +             *(Elf_Addr *)addr = relocated_addr;
> > +     }
> > +}
> > +#endif
> > +
> >  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >  {
> >       uintptr_t va, end_va;
> > @@ -377,9 +432,20 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >       uintptr_t load_sz = (uintptr_t)(&_end) - load_pa;
> >       uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
> >
> > -     va_pa_offset = PAGE_OFFSET - load_pa;
> > +     va_pa_offset = kernel_virt_addr - load_pa;
> >       pfn_base = PFN_DOWN(load_pa);
> >
> > +#ifdef CONFIG_RELOCATABLE
> > +     /*
> > +      * Early page table uses only one PGDIR, which makes it possible
> > +      * to map 1GB aligned on 1GB: if the relocation offset makes the kernel
> > +      * cross over a 1G boundary, raise a bug since a part of the kernel
> > +      * would not get mapped.
> > +      */
> > +     BUG_ON(SZ_1G - (kernel_virt_addr & (SZ_1G - 1)) < load_sz);
> > +     relocate_kernel(load_pa);
> > +#endif
> > +
> >       /*
> >        * Enforce boot alignment requirements of RV32 and
> >        * RV64 by only allowing PMD or PGD mappings.
> > @@ -387,7 +453,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >       BUG_ON(map_size == PAGE_SIZE);
> >
> >       /* Sanity check alignment and size */
> > -     BUG_ON((PAGE_OFFSET % PGDIR_SIZE) != 0);
> > +     BUILD_BUG_ON((_AC(CONFIG_PAGE_OFFSET, UL) % PGDIR_SIZE) != 0);
> >       BUG_ON((load_pa % map_size) != 0);
> >       BUG_ON(load_sz > MAX_EARLY_MAPPING_SIZE);
> >
> > @@ -400,13 +466,13 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >       create_pmd_mapping(fixmap_pmd, FIXADDR_START,
> >                          (uintptr_t)fixmap_pte, PMD_SIZE, PAGE_TABLE);
> >       /* Setup trampoline PGD and PMD */
> > -     create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
> > +     create_pgd_mapping(trampoline_pg_dir, kernel_virt_addr,
> >                          (uintptr_t)trampoline_pmd, PGDIR_SIZE, PAGE_TABLE);
> > -     create_pmd_mapping(trampoline_pmd, PAGE_OFFSET,
> > +     create_pmd_mapping(trampoline_pmd, kernel_virt_addr,
> >                          load_pa, PMD_SIZE, PAGE_KERNEL_EXEC);
> >  #else
> >       /* Setup trampoline PGD */
> > -     create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
> > +     create_pgd_mapping(trampoline_pg_dir, kernel_virt_addr,
> >                          load_pa, PGDIR_SIZE, PAGE_KERNEL_EXEC);
> >  #endif
> >
> > @@ -415,10 +481,10 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >        * us to reach paging_init(). We map all memory banks later
> >        * in setup_vm_final() below.
> >        */
> > -     end_va = PAGE_OFFSET + load_sz;
> > -     for (va = PAGE_OFFSET; va < end_va; va += map_size)
> > +     end_va = kernel_virt_addr + load_sz;
> > +     for (va = kernel_virt_addr; va < end_va; va += map_size)
> >               create_pgd_mapping(early_pg_dir, va,
> > -                                load_pa + (va - PAGE_OFFSET),
> > +                                load_pa + (va - kernel_virt_addr),
> >                                  map_size, PAGE_KERNEL_EXEC);
> >
> >       /* Create fixed mapping for early FDT parsing */
> > @@ -457,9 +523,9 @@ static void __init setup_vm_final(void)
> >                       break;
> >               if (memblock_is_nomap(reg))
> >                       continue;
> > -             if (start <= __pa(PAGE_OFFSET) &&
> > -                 __pa(PAGE_OFFSET) < end)
> > -                     start = __pa(PAGE_OFFSET);
> > +             if (start <= __pa_symbol(kernel_virt_addr) &&
> > +                 __pa(kernel_virt_addr) < end)
> > +                     start = __pa_symbol(kernel_virt_addr);

Here is the same, please use PAGE_OFFSET instead of kernel_virt_addr.

> >
> >               map_size = best_map_size(start, end - start);
> >               for (pa = start; pa < end; pa += map_size) {

