Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718B61A0618
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 07:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
	Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rbwpXl2+iw4GI1j7f6y1ehUU5+UgujEzmcWuoB7nPGU=; b=m8Hf+ssVM5UPhI5E9VoyPaZb6c
	Wh+bxSqJdh+gRyx1avbPh8tqYdSFnyVEtRZWXmzNRLAytgdmUXR0BjXX5cclE0vrwpIrJYjzkOAiq
	e7k55bjDv0ZxDhDJkEMmaFe8lnE+Va4JCqMTPDLg+oAzOeRGqzTZ4F7OdtDSkJ3a0WPa/MqqKk0ic
	l/E09F9TuPn2cBSOgtXB8wU6JURYn0xdss7x03TA2wAVLMTu1e99+KwRR2x22XTZHtEagfDLqIjnb
	4mC8TqcY6Jqx0fQDsf9vZEpn3COkbIJG7j9+7RzfhoTM/EIGSML7f9SGcU30XqsOHTs1dS24jonDF
	94d3O82w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgVU-0000Ib-Oq; Tue, 07 Apr 2020 05:10:40 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgVR-0000Gx-68
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 05:10:39 +0000
X-Originating-IP: 2.7.45.25
Received: from [192.168.1.101] (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id D131C20002;
 Tue,  7 Apr 2020 05:10:31 +0000 (UTC)
Subject: Re: [PATCH RFC 3/8] riscv/kaslr: support KASLR infrastructure
To: Zong Li <zong.li@sifive.com>, palmer@dabbelt.com,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1584352425.git.zong.li@sifive.com>
 <fe97f88c69a9f752a96623afa398c4125aab930f.1584352425.git.zong.li@sifive.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <7e490410-9f2c-62dc-e3ab-8018cc3ee534@ghiti.fr>
Date: Tue, 7 Apr 2020 01:10:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <fe97f88c69a9f752a96623afa398c4125aab930f.1584352425.git.zong.li@sifive.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_221037_496520_71AE85B4 
X-CRM114-Status: GOOD (  33.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 3/24/20 3:30 AM, Zong Li wrote:
> This patch support KASLR implementation. It copies kernel image to a
> proper and random place, and make all harts go to the new destination.
> 
> After KASLR initialization, secondary harts go to the new destination
> to wait their stack pointer to be setup by main hart, main hart goes to
> re-create the early page table and doing relocation by going back to
> setup_vm again.
> 
> We separate the randomization process from this patch, so the kernel
> offset was not randomized yet, it just hardcode a meanless number here.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>   arch/riscv/Kconfig         | 15 +++++++++++
>   arch/riscv/kernel/Makefile |  2 ++
>   arch/riscv/kernel/head.S   | 39 +++++++++++++++++++++++++++
>   arch/riscv/kernel/kaslr.c  | 55 ++++++++++++++++++++++++++++++++++++++
>   arch/riscv/mm/init.c       | 53 +++++++++++++++++++++++++++++++++++-
>   5 files changed, 163 insertions(+), 1 deletion(-)
>   create mode 100644 arch/riscv/kernel/kaslr.c
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index aea03ac470c8..8f566b40ea1e 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -183,6 +183,21 @@ config RELOCATABLE
>             relocation pass at runtime even if the kernel is loaded at the
>             same address it was linked at.
>   
> +config RANDOMIZE_BASE
> +	bool "Randomize the address of the kernel image"
> +	depends on MMU
> +	select MODULE_SECTIONS if MODULES
> +	select RELOCATABLE
> +	help
> +	  Randomizes the virtual address at which the kernel image is
> +	  loaded, as a security feature that deters exploit attempts
> +	  relying on knowledge of the location of kernel internals.
> +
> +	  It is the job of previous stage to provide entropy, by passing a
> +	  random u64 value in /chosen/kaslr-seed at kernel entry.
> +
> +	  If unsure, say N.
> +
>   source "arch/riscv/Kconfig.socs"
>   
>   menu "Platform type"
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index d189bd3d8501..8f62732b1135 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -45,4 +45,6 @@ obj-$(CONFIG_PERF_EVENTS)	+= perf_callchain.o
>   obj-$(CONFIG_HAVE_PERF_REGS)	+= perf_regs.o
>   obj-$(CONFIG_RISCV_SBI)		+= sbi.o
>   
> +obj-$(CONFIG_RANDOMIZE_BASE)	+= kaslr.o
> +
>   clean:
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index cb4a6e2d3793..5191e528d813 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -113,9 +113,12 @@ clear_bss_done:
>   	la a2, boot_cpu_hartid
>   	REG_S a0, (a2)
>   
> +.align 2

Why do you need this new alignment constraint ?

> +early_page_table:
>   	/* Initialize page tables and relocate to virtual addresses */
>   	la sp, init_thread_union + THREAD_SIZE
>   	mv a0, s1
> +

Newline ?

>   	call setup_vm
>   #ifdef CONFIG_MMU
>   	la a0, early_pg_dir
> @@ -127,6 +130,29 @@ clear_bss_done:
>   	sw zero, TASK_TI_CPU(tp)
>   	la sp, init_thread_union + THREAD_SIZE
>   
> +#ifdef CONFIG_RANDOMIZE_BASE
> +	/* KASRL initialization. Try to get a random kernel offset. */
> +	call kaslr_early_init
> +
> +	/* If return value equals to zero, we don't need to randomize kernel */
> +	beqz a0, 1f
> +
> +	la a1, early_page_table
> +	add a1, a1, a0
> +	la a0, va_pa_offset
> +	REG_L a0, 0(a0)
> +	sub a1, a1, a0
> +	mv a0, s1
> +
> +	/*
> +	 * Go to new kernel image destination, and disable MMU to re-create
> +	 * early page table and do relocation.
> +	 */
> +	csrw CSR_TVEC, a1
> +	csrw CSR_SATP, x0
> +1:
> +#endif
> +
>   #ifdef CONFIG_KASAN
>   	call kasan_early_init
>   #endif
> @@ -194,6 +220,19 @@ relocate:
>   	la a3, .Lsecondary_park
>   	csrw CSR_TVEC, a3
>   
> +#ifdef CONFIG_RANDOMIZE_BASE
> +	/*
> +	 * Wait winning hart to tell secondary harts where is the new
> +	 * destination to go.
> +	 */
> +.Lwait_for_next_target:
> +	la a3, secondary_next_target
> +	REG_L a3, 0(a3)
> +	beqz a3, .Lwait_for_next_target
> +	jr a3
> +.global secondary_random_target
> +secondary_random_target:
> +#endif
>   	slli a3, a0, LGREG
>   	la a1, __cpu_up_stack_pointer
>   	la a2, __cpu_up_task_pointer
> diff --git a/arch/riscv/kernel/kaslr.c b/arch/riscv/kernel/kaslr.c
> new file mode 100644
> index 000000000000..281b5fcca5c8
> --- /dev/null
> +++ b/arch/riscv/kernel/kaslr.c
> @@ -0,0 +1,55 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2020 SiFive
> + * Copyright (C) 2020 Zong Li <zong.li@sifive.com>
> + */
> +
> +#include <linux/libfdt.h>
> +#include <linux/timex.h>
> +#include <linux/random.h>
> +#include <linux/set_memory.h>
> +#include <asm/cacheflush.h>
> +
> +extern char _start[], _end[];
> +extern void secondary_random_target(void);
> +extern void kaslr_create_page_table(uintptr_t start, uintptr_t end);
> +
> +uintptr_t secondary_next_target __initdata;
> +static uintptr_t kaslr_offset __initdata;
> +
> +uintptr_t __init kaslr_early_init(void)
> +{
> +	uintptr_t dest_start, dest_end;
> +	uintptr_t kernel_size = (uintptr_t) _end - (uintptr_t) _start;
> +
> +	/* Get zero value at second time to avoid doing randomization again. */
> +	if (kaslr_offset)
> +		return 0;
> +
> +	/* Get the random number for kaslr offset. */
> +	kaslr_offset = 0x10000000;

For clarity, you could use a macro or something like that for this constant.

> +
> +	/* Update kernel_virt_addr for get_kaslr_offset. */
> +	kernel_virt_addr += kaslr_offset;

This could be done after you test if kaslr_offset is null below.

> +
> +	if (kaslr_offset) {
> +		dest_start = (uintptr_t) (PAGE_OFFSET + kaslr_offset);
> +		dest_end = dest_start + kernel_size;

dest_end = dest_start + kernel_size - 1;

> +
> +		/* Create the new destination mapping for kernel image. */
> +		kaslr_create_page_table(dest_start, dest_end);
> +
> +		/* Copy kernel image from orignial location. */
> +		memcpy((void *)dest_start, (void *)_start, kernel_size);
> +		flush_icache_range(dest_start, dest_end); > +
> +		/* Make secondary harts jump to new kernel image destination. */
> +		WRITE_ONCE(secondary_next_target,
> +			   __pa_symbol(secondary_random_target) + kaslr_offset);

Don't you need to sync secondary harts icache with main hart dcache here ?

> +	} else {
> +		WRITE_ONCE(secondary_next_target,
> +			   __pa_symbol(secondary_random_target));
> +	}
> +
> +	return kaslr_offset;
> +}
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 51e263c04fa2..2f5b25f02b6c 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -413,6 +413,41 @@ static void __init clear_pgd(pgd_t *pgdp)
>   			}
>   		}
>   }
> +
> +static void __init clear_page_tables(void)
> +{
> +	clear_pgd(early_pg_dir);
> +	clear_pgd(trampoline_pg_dir);
> +}

early page table and trampoline page table consist in one page per 
level, I confirm that a memset to 0 is easier here.

> +
> +void __init kaslr_create_page_table(uintptr_t start, uintptr_t end)
> +{
> +	pgd_next_t *nextp;
> +	phys_addr_t next_phys;
> +	uintptr_t pgd_index, va;
> +	phys_addr_t pa = __pa(PAGE_OFFSET) + get_kaslr_offset();
> +	uintptr_t map_size =
> +		best_map_size(__pa(PAGE_OFFSET), MAX_EARLY_MAPPING_SIZE);
> +
> +	/* Expolit early_pg_dir and early_pmd during using early page table. */
> +	for (va = start; va < end; va += map_size, pa += map_size) {
> +		pgd_index = pgd_index(va);
> +
> +		if (pgd_val(early_pg_dir[pgd_index]) == 0) {
> +			next_phys = alloc_pgd_next(va);
> +			early_pg_dir[pgd_index] =
> +				pfn_pgd(PFN_DOWN(next_phys), PAGE_TABLE);
> +			nextp = (pgd_next_t *)(__va(next_phys));
> +			memset(nextp, 0, PAGE_SIZE);
> +		} else {
> +			next_phys = PFN_PHYS(_pgd_pfn(early_pg_dir[pgd_index]));
> +			nextp = (pgd_next_t *)(__va(next_phys));
> +		}
> +
> +		create_pgd_next_mapping(nextp, va, pa, map_size,
> +					PAGE_KERNEL_EXEC);
> +	}
> +}
>   #endif

I may be missing something here: I don't see where the mappings for the 
new kernel you create here are used between here and setup_vm ?

If I read correctly, if kaslr_early_init returns a random offset, you 
disable mmu and then call setup_vm which will recreate early page tables 
anyway.

>   
>   /*
> @@ -489,7 +524,13 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>   	uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
>   
>   	va_pa_offset = kernel_virt_addr - load_pa;
> -	pfn_base = PFN_DOWN(load_pa);
> +
> +	/*
> +	 * Update pfn_base only if pfn_base is empty. It's avoid to mess up it
> +	 * when re-enter this function by KASLR.
> +	 */
> +	if (!pfn_base)
> +		pfn_base = PFN_DOWN(load_pa);
>   
>   #ifdef CONFIG_RELOCATABLE
>   	/*
> @@ -513,6 +554,16 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>   	BUG_ON((load_pa % map_size) != 0);
>   	BUG_ON(load_sz > MAX_EARLY_MAPPING_SIZE);
>   
> +#ifdef CONFIG_RANDOMIZE_BASE
> +	/*
> +	 * Enter setup_vm twice if there is a legal random destination in KASLR,
> +	 * Reach here at second time, Clear page table because PTE entris allow
> +	 * writing when it's empty.
> +	 */
> +	if (get_kaslr_offset())
> +		clear_page_tables();
> +#endif
> +
>   	/* Setup early PGD for fixmap */
>   	create_pgd_mapping(early_pg_dir, FIXADDR_START,
>   			   (uintptr_t)fixmap_pgd_next, PGDIR_SIZE, PAGE_TABLE);
>

Just an idea, maybe worthless, but couldn't we benefit from kexec here ? 
That's quite the same: copy a new kernel from the current kernel in some 
new memory locations and then jump to it. We could pass the computed 
random offset as a very early kernel parameter so that setup_vm would 
only be called once (per kernel).

Alex

