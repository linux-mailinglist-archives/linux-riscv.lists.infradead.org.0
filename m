Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0409017C4F2
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Mar 2020 18:58:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=bjrWfFTMaU3nuugZFGYFVZN5s6n+RQe/N9uNLZTyjmc=; b=m8qOUKpC8XAPF5
	p1T1iNZ9FjKFIHLLHgLxIXSvYg9PNCZwrl+qKhxdks+kfGcf1AahZ/WHtad1O9MEr6xiVHM442Omc
	/twQqsBG8//Clu751Engv3hXuDLqbWLNnX/AhljEIIYl8U/dQFLo3h/fbBpuOBV7/WHTzVw2tBdWx
	VGWhHJGKclk0Zgt6ZIqsYgmIe4L8iAS/UhzJQaSxqbKKcsPnIyFnCdaLaikNLjEXtAcsqt/Xb27xG
	QaE1IBDDTT58jmtJhX4NBX3m4ZWLy/hoKb9BTFG0gRqacycDNQSLIJAKsrLaSO7hAy2J7lFr4JbaA
	ilIvUIDfxb2p1RKATxvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAHEz-0001Mm-UG; Fri, 06 Mar 2020 17:58:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAHEv-0001MH-7G
 for linux-riscv@lists.infradead.org; Fri, 06 Mar 2020 17:58:27 +0000
Received: by mail-pl1-x643.google.com with SMTP id j20so1164694pll.6
 for <linux-riscv@lists.infradead.org>; Fri, 06 Mar 2020 09:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=bjrWfFTMaU3nuugZFGYFVZN5s6n+RQe/N9uNLZTyjmc=;
 b=XV8MNbo5WhaFUwViZaLTJfnUOijAdjVLJcmy6AFV2sEUG5zoHhCr1CVKpF5NXWt2fM
 R43bQGJHcmC72CNe8/7QrAONuN685UyJK24y1rS/iJOs8KtnQ04VTQ3n5dk/UGVhLFZO
 0OhAHCWSAmY8qpny3iCYjtFdJ/iry4+5vnWqBTGeNygP6desTzRntHvLceAfq4cmjhSe
 I0kdsMBlFLphZapxvbtPwZDUonhXZMtlIMyMrxc/qo607wo5IjE9Vo30o/7tVa5q6VIP
 KyV1aIvfJJJ6vhuR9SxrzK06DRbajQyQf/vNdE009ov15rZQR5Fgqc+nRnJ5L+C1w+En
 k0vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=bjrWfFTMaU3nuugZFGYFVZN5s6n+RQe/N9uNLZTyjmc=;
 b=uG3kPPT0U//skOH2SZTtrOfJGsj0ygBhfExsRyj6+7jThGiLP+95Aj+ZsmnQHPLd3Y
 JWf3cGeh4PIgBqGMtVIacCi8aK5VdYuYKOpUgH22UcVUEz1njh6mlJjzAvEIE5vNhyUh
 EpOUZIoi8nfWs/H7VRefQHsspvdDNitlYVS4757bsDxeZc0r61qCUYnbnV9Mu5xMl/2b
 bPSbJS4peu9eTRW0/18khqQHvukqX8f73mwFHUHp/+GLnowpQBEAskrf+P1kq3TUXIP4
 Jya6xKx+OWJYH+9e/89UwePMYFxRhgZwlMFXZzJCjCArgwIUu9mojRhx6QGej3Ky1j2+
 Pe4g==
X-Gm-Message-State: ANhLgQ2DWv3fs7crVqRj5GBqnjpnl9OH5bewA0dFtvSs4hA8yGKGjuwa
 5SJsQc4vyHyuw780Gjtfy+mOxA==
X-Google-Smtp-Source: ADFU+vu9v0OM45P096q+sVIUXWP0Ij/ctwwKhhU2dyp8SwZzLnQWumE1qqXD8/lMrxUTRe3x9sxgCg==
X-Received: by 2002:a17:902:b210:: with SMTP id
 t16mr3971803plr.65.1583517503940; 
 Fri, 06 Mar 2020 09:58:23 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id 18sm37371951pfj.20.2020.03.06.09.58.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 09:58:22 -0800 (PST)
Date: Fri, 06 Mar 2020 09:58:22 -0800 (PST)
X-Google-Original-Date: Fri, 06 Mar 2020 09:58:16 PST (-0800)
Subject: Re: [PATCH RESEND v2] riscv: Introduce CONFIG_RELOCATABLE
In-Reply-To: <20200303054437.650-1-alex@ghiti.fr>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: alex@ghiti.fr
Message-ID: <mhng-346cdebc-e24d-49db-bb2e-0d4fa8d57030@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_095825_406641_8AF2A724 
X-CRM114-Status: GOOD (  37.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alex@ghiti.fr, anup@brainfault.org, linux-kernel@vger.kernel.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 02 Mar 2020 21:44:37 PST (-0800), alex@ghiti.fr wrote:
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
> Reviewed-by: Zong Li <zong.li@sifive.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Tested-by: Zong Li <zong.li@sifive.com>
> ---
> Changes in v2:
> - Make RELOCATABLE depend on MMU as suggested by Anup
> - Rename kernel_load_addr into kernel_virt_addr as suggested by Anup
> - Use __pa_symbol instead of __pa, as suggested by Zong
> - Rebased on top of v5.6-rc3
> - Tested with sv48 patchset
> - Add Reviewed/Tested-by from Zong and Anup
>
>  arch/riscv/Kconfig              | 12 +++++
>  arch/riscv/Makefile             |  5 +-
>  arch/riscv/boot/loader.lds.S    |  2 +-
>  arch/riscv/include/asm/page.h   |  5 +-
>  arch/riscv/kernel/head.S        |  3 +-
>  arch/riscv/kernel/vmlinux.lds.S | 10 ++--
>  arch/riscv/mm/Makefile          |  4 ++
>  arch/riscv/mm/init.c            | 92 ++++++++++++++++++++++++++++-----
>  8 files changed, 111 insertions(+), 22 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 73f029eae0cc..f5f3d474504d 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -163,6 +163,18 @@ config PGTABLE_LEVELS
>  	default 3 if 64BIT
>  	default 2
>
> +config RELOCATABLE
> +	bool
> +	depends on MMU
> +	help
> +          This builds a kernel as a Position Independent Executable (PIE),
> +          which retains all relocation metadata required to relocate the
> +          kernel binary at runtime to a different virtual address than the
> +          address it was linked at.
> +          Since RISCV uses the RELA relocation format, this requires a
> +          relocation pass at runtime even if the kernel is loaded at the
> +          same address it was linked at.
> +
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
>  	LDFLAGS_vmlinux := --no-relax
>  endif
> diff --git a/arch/riscv/boot/loader.lds.S b/arch/riscv/boot/loader.lds.S
> index 47a5003c2e28..a9ed218171aa 100644
> --- a/arch/riscv/boot/loader.lds.S
> +++ b/arch/riscv/boot/loader.lds.S
> @@ -7,7 +7,7 @@ ENTRY(_start)
>
>  SECTIONS
>  {
> -	. = PAGE_OFFSET;
> +	. = CONFIG_PAGE_OFFSET;
>
>  	.payload : {
>  		*(.payload)
> diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
> index 8ca1930caa44..af5810f9aebd 100644
> --- a/arch/riscv/include/asm/page.h
> +++ b/arch/riscv/include/asm/page.h
> @@ -31,9 +31,9 @@
>   * When not using MMU this corresponds to the first free page in
>   * physical memory (aligned on a page boundary).
>   */
> -#define PAGE_OFFSET		_AC(CONFIG_PAGE_OFFSET, UL)
> +#define PAGE_OFFSET		kernel_virt_addr

I assume we want to keep PAGE_OFFSET a constant for the non-relocatable
systems.  As it currently stands this is imposing a performance hit even when 

> -#define KERN_VIRT_SIZE (-PAGE_OFFSET)
> +#define KERN_VIRT_SIZE		(-_AC(CONFIG_PAGE_OFFSET, UL))

This seems like it would cause issues if the kernel is relocated to high enough
addresses that "kernel_virt_addr+KERN_VIRT_SIZE" overflows.

>  #ifndef __ASSEMBLY__
>
> @@ -97,6 +97,7 @@ extern unsigned long pfn_base;
>  #define ARCH_PFN_OFFSET		(PAGE_OFFSET >> PAGE_SHIFT)
>  #endif /* CONFIG_MMU */
>
> +extern unsigned long kernel_virt_addr;
>  extern unsigned long max_low_pfn;
>  extern unsigned long min_low_pfn;
>
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 271860fc2c3f..d792912c2da3 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -131,7 +131,8 @@ clear_bss_done:
>  #ifdef CONFIG_MMU
>  relocate:
>  	/* Relocate return address */
> -	li a1, PAGE_OFFSET
> +	la a1, kernel_virt_addr
> +	REG_L a1, 0(a1)
>  	la a2, _start
>  	sub a1, a1, a2
>  	add ra, ra, a1
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 1e0193ded420..5bf69e9b91e6 100644
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
> @@ -71,9 +71,11 @@ SECTIONS
>
>  	EXCEPTION_TABLE(0x10)
>
> -	.rel.dyn : {
> -		*(.rel.dyn*)
> -	}
> +        .rela.dyn : ALIGN(8) {
> +		__rela_dyn_start = .;
> +                *(.rela .rela*)
> +		__rela_dyn_end = .;
> +        }

It looks like the indentation is screwed up here: I see a mix of tabs/spaces
that doesn't match the rest of the file.

>
>  	_end = .;
>
> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> index 50b7af58c566..27593d362248 100644
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
> index 965a8cf4829c..428aee2669aa 100644
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
> +unsigned long kernel_virt_addr = _AC(CONFIG_PAGE_OFFSET, UL);
> +EXPORT_SYMBOL(kernel_virt_addr);
> +
>  static void __init zone_sizes_init(void)
>  {
>  	unsigned long max_zone_pfns[MAX_NR_ZONES] = { 0, };
> @@ -132,7 +138,8 @@ void __init setup_bootmem(void)
>  		phys_addr_t end = reg->base + reg->size;
>
>  		if (reg->base <= vmlinux_end && vmlinux_end <= end) {
> -			mem_size = min(reg->size, (phys_addr_t)-PAGE_OFFSET);
> +			mem_size = min(reg->size,
> +				       (phys_addr_t)-kernel_virt_addr);

PAGE_OFFSET is kernel_virt_addr, so I don't see any reason to change these --
they account for a significant fraction of the diff.

>  			/*
>  			 * Remove memblock from the end of usable area to the
> @@ -269,7 +276,7 @@ static phys_addr_t __init alloc_pmd(uintptr_t va)
>  	if (mmu_enabled)
>  		return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
>
> -	pmd_num = (va - PAGE_OFFSET) >> PGDIR_SHIFT;
> +	pmd_num = (va - kernel_virt_addr) >> PGDIR_SHIFT;
>  	BUG_ON(pmd_num >= NUM_EARLY_PMDS);
>  	return (uintptr_t)&early_pmd[pmd_num * PTRS_PER_PMD];
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
> +	Elf_Rela *rela = (Elf_Rela *)&__rela_dyn_start;
> +	uintptr_t link_addr = _AC(CONFIG_PAGE_OFFSET, UL);
> +	/*
> +	 * This holds the offset between the linked virtual address and the
> +	 * relocated virtual address.
> +	 */
> +	uintptr_t reloc_offset = kernel_virt_addr - link_addr;
> +	/*
> +	 * This holds the offset between linked virtual address and physical
> +	 * address whereas va_pa_offset holds the offset between relocated
> +	 * virtual address and physical address.
> +	 */
> +	uintptr_t va_link_pa_offset = link_addr - load_pa;
> +
> +	for ( ; rela < (Elf_Rela *)&__rela_dyn_end; rela++) {
> +		Elf_Addr addr = (rela->r_offset - va_link_pa_offset);
> +		Elf_Addr relocated_addr = rela->r_addend;
> +
> +		if (rela->r_info != R_RISCV_RELATIVE)
> +			continue;

This should at least provide a warning when it encounters an unresolvable
relocation.  Is it currently stands this just ignores all other runtime
relocations, and while I can buy the argument there shouldn't be any (though
I'd expect R_RISCV_{32,64} to show up?) we certainly shouldn't just silently
skip them.

> +
> +		/*
> +		 * Make sure to not relocate vdso symbols like rt_sigreturn
> +		 * which are linked from the address 0 in vmlinux since
> +		 * vdso symbol addresses are actually used as an offset from
> +		 * mm->context.vdso in VDSO_OFFSET macro.
> +		 */
> +		if (relocated_addr >= link_addr)
> +			relocated_addr += reloc_offset;
> +
> +		*(Elf_Addr *)addr = relocated_addr;
> +	}
> +}
> +#endif
> +
>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  {
>  	uintptr_t va, end_va;
> @@ -377,9 +432,20 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  	uintptr_t load_sz = (uintptr_t)(&_end) - load_pa;
>  	uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
>
> -	va_pa_offset = PAGE_OFFSET - load_pa;
> +	va_pa_offset = kernel_virt_addr - load_pa;
>  	pfn_base = PFN_DOWN(load_pa);
>
> +#ifdef CONFIG_RELOCATABLE
> +	/*
> +	 * Early page table uses only one PGDIR, which makes it possible
> +	 * to map 1GB aligned on 1GB: if the relocation offset makes the kernel
> +	 * cross over a 1G boundary, raise a bug since a part of the kernel
> +	 * would not get mapped.
> +	 */
> +	BUG_ON(SZ_1G - (kernel_virt_addr & (SZ_1G - 1)) < load_sz);
> +	relocate_kernel(load_pa);
> +#endif
> +
>  	/*
>  	 * Enforce boot alignment requirements of RV32 and
>  	 * RV64 by only allowing PMD or PGD mappings.
> @@ -387,7 +453,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  	BUG_ON(map_size == PAGE_SIZE);
>
>  	/* Sanity check alignment and size */
> -	BUG_ON((PAGE_OFFSET % PGDIR_SIZE) != 0);
> +	BUILD_BUG_ON((_AC(CONFIG_PAGE_OFFSET, UL) % PGDIR_SIZE) != 0);
>  	BUG_ON((load_pa % map_size) != 0);
>  	BUG_ON(load_sz > MAX_EARLY_MAPPING_SIZE);
>
> @@ -400,13 +466,13 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  	create_pmd_mapping(fixmap_pmd, FIXADDR_START,
>  			   (uintptr_t)fixmap_pte, PMD_SIZE, PAGE_TABLE);
>  	/* Setup trampoline PGD and PMD */
> -	create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
> +	create_pgd_mapping(trampoline_pg_dir, kernel_virt_addr,
>  			   (uintptr_t)trampoline_pmd, PGDIR_SIZE, PAGE_TABLE);
> -	create_pmd_mapping(trampoline_pmd, PAGE_OFFSET,
> +	create_pmd_mapping(trampoline_pmd, kernel_virt_addr,
>  			   load_pa, PMD_SIZE, PAGE_KERNEL_EXEC);
>  #else
>  	/* Setup trampoline PGD */
> -	create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
> +	create_pgd_mapping(trampoline_pg_dir, kernel_virt_addr,
>  			   load_pa, PGDIR_SIZE, PAGE_KERNEL_EXEC);
>  #endif
>
> @@ -415,10 +481,10 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  	 * us to reach paging_init(). We map all memory banks later
>  	 * in setup_vm_final() below.
>  	 */
> -	end_va = PAGE_OFFSET + load_sz;
> -	for (va = PAGE_OFFSET; va < end_va; va += map_size)
> +	end_va = kernel_virt_addr + load_sz;
> +	for (va = kernel_virt_addr; va < end_va; va += map_size)
>  		create_pgd_mapping(early_pg_dir, va,
> -				   load_pa + (va - PAGE_OFFSET),
> +				   load_pa + (va - kernel_virt_addr),
>  				   map_size, PAGE_KERNEL_EXEC);
>
>  	/* Create fixed mapping for early FDT parsing */
> @@ -457,9 +523,9 @@ static void __init setup_vm_final(void)
>  			break;
>  		if (memblock_is_nomap(reg))
>  			continue;
> -		if (start <= __pa(PAGE_OFFSET) &&
> -		    __pa(PAGE_OFFSET) < end)
> -			start = __pa(PAGE_OFFSET);
> +		if (start <= __pa_symbol(kernel_virt_addr) &&
> +		    __pa(kernel_virt_addr) < end)
> +			start = __pa_symbol(kernel_virt_addr);
>
>  		map_size = best_map_size(start, end - start);
>  		for (pa = start; pa < end; pa += map_size) {

