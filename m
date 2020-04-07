Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30801A0BFA
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 12:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EpjAMDtdYXNURMBmcYGqMMMUgsDoHZMZ1/fWiOpJJW0=; b=lSCculdWX9HmbDnMOfNEgW1TQ
	bYpmW5P5BQquq4HJGp93Zqx8SOKj1Aa0A3s1jiZxKx0zkV2C6UYwxZHlomMaJfTpQi7zHUKAMJuo5
	YP4opZCgr1wiq5gFHMSgF2+UVOZvS/pyjOysJCkHaEPCav6seVXxl5wcjoPNQO6Wu8hiEH9sY49Tc
	VczyOHwwrpeEg1M7LXYYYgGUVZSFfnDNj8bP2DQK61VDlQTzYB3umhn68/EDfBbVqudYNNG52rvwA
	ZHwn8TKUZj+iSTcM6NsQbRfu5QvSQyOUbIAvFPhyJygm273aXoCL1dY78D5pJpcFEnFeU1TJmgPfG
	KTmjzPQDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlYq-0003ZX-Fv; Tue, 07 Apr 2020 10:34:28 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlYl-0003YL-L1
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 10:34:26 +0000
Received: by mail-oi1-x241.google.com with SMTP id w2so1039940oic.5
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 03:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EpjAMDtdYXNURMBmcYGqMMMUgsDoHZMZ1/fWiOpJJW0=;
 b=RGXIsCZhMVPAcH0uN/ZgX0pL8wvLbI0RLkYlY8olTJ0avuXOorMmHJgYd7fkfUpuQE
 XimDySXI7AMJ5F0U7wPMGS/XcmErCCr5J/qBqup1iA6b7iyfuyvotuMBwnnhGCkHuikW
 KHcd5ga3Jw+t9gwoFLi83/odL8Qz8MKBqmcdWmwJV0/xl/t276ctTBjFhpU/iS1mPaN2
 CVYjE62yKU6WLxZctjcfDvMxhGFAKLedpNgfB7+nrWvWgEPLMvutnAcELbVNCrcSDD6H
 O5iKdm4tw/MHqtr/H4TDxT0QgybzJaNEoNdEBSgyRUQfhBzJKod/Pa9jcRMT5Qgke6dN
 PhZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EpjAMDtdYXNURMBmcYGqMMMUgsDoHZMZ1/fWiOpJJW0=;
 b=UUiwnKdh+jT8ppNHIoryCIpxMwcycNHuIsjsqdtdNw2OBb7530fagMi/4M+DxhZO/7
 o3aXZG1bJhkuhVxe6m3v/sYgCghydJPLJPj6Sbe4yt2pasyi4M321Y3zC1z7jzdQdUTt
 9Ih34SkN/NCS17uk61VoAnbXdKx1o7PbSDxTbNbNCesBPo/mJJ4QY63Seyw18ooyzQN5
 6Ocn9xnlyKKulR5SQ8lK8mWMhRtf95EvHqnPzx256EQF5ceDnKWn6VKHAC75Kyaojt5i
 y+djIijOcdDPKMIUFjJzvEeB663dtfIG4Wssw6vGpKJfb06MP27rUbGNTJ3SyYWCZDpT
 Mbxw==
X-Gm-Message-State: AGi0PuZsxIit09iRDrzvUjcCQlw9JDCEcjzmckvoUNTkYrG2bNrGOvEX
 MdXc7b5E3nHPG/XpB+Pz/UJBnFihPBnKzomWl4euCw==
X-Google-Smtp-Source: APiQypLvtnbQETrFBqvfPfm8C6Dn1WXAakhDYLkMO+DeSZzuJ2DJO+zB56yrnsh6PfHpmHCw9CaS1Y/s7Zf+FzlxN4w=
X-Received: by 2002:a05:6808:a08:: with SMTP id
 n8mr1128643oij.91.1586255662149; 
 Tue, 07 Apr 2020 03:34:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584352425.git.zong.li@sifive.com>
 <fe97f88c69a9f752a96623afa398c4125aab930f.1584352425.git.zong.li@sifive.com>
 <7e490410-9f2c-62dc-e3ab-8018cc3ee534@ghiti.fr>
In-Reply-To: <7e490410-9f2c-62dc-e3ab-8018cc3ee534@ghiti.fr>
From: Zong Li <zong.li@sifive.com>
Date: Tue, 7 Apr 2020 18:34:11 +0800
Message-ID: <CANXhq0pDA6ndahKwLMvpGHmwxrQZwnDdL5iGCacyXX7DbqpV7g@mail.gmail.com>
Subject: Re: [PATCH RFC 3/8] riscv/kaslr: support KASLR infrastructure
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_033423_856195_92BAE3DA 
X-CRM114-Status: GOOD (  41.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 1:10 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
>
>
> On 3/24/20 3:30 AM, Zong Li wrote:
> > This patch support KASLR implementation. It copies kernel image to a
> > proper and random place, and make all harts go to the new destination.
> >
> > After KASLR initialization, secondary harts go to the new destination
> > to wait their stack pointer to be setup by main hart, main hart goes to
> > re-create the early page table and doing relocation by going back to
> > setup_vm again.
> >
> > We separate the randomization process from this patch, so the kernel
> > offset was not randomized yet, it just hardcode a meanless number here.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >   arch/riscv/Kconfig         | 15 +++++++++++
> >   arch/riscv/kernel/Makefile |  2 ++
> >   arch/riscv/kernel/head.S   | 39 +++++++++++++++++++++++++++
> >   arch/riscv/kernel/kaslr.c  | 55 ++++++++++++++++++++++++++++++++++++++
> >   arch/riscv/mm/init.c       | 53 +++++++++++++++++++++++++++++++++++-
> >   5 files changed, 163 insertions(+), 1 deletion(-)
> >   create mode 100644 arch/riscv/kernel/kaslr.c
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index aea03ac470c8..8f566b40ea1e 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -183,6 +183,21 @@ config RELOCATABLE
> >             relocation pass at runtime even if the kernel is loaded at the
> >             same address it was linked at.
> >
> > +config RANDOMIZE_BASE
> > +     bool "Randomize the address of the kernel image"
> > +     depends on MMU
> > +     select MODULE_SECTIONS if MODULES
> > +     select RELOCATABLE
> > +     help
> > +       Randomizes the virtual address at which the kernel image is
> > +       loaded, as a security feature that deters exploit attempts
> > +       relying on knowledge of the location of kernel internals.
> > +
> > +       It is the job of previous stage to provide entropy, by passing a
> > +       random u64 value in /chosen/kaslr-seed at kernel entry.
> > +
> > +       If unsure, say N.
> > +
> >   source "arch/riscv/Kconfig.socs"
> >
> >   menu "Platform type"
> > diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> > index d189bd3d8501..8f62732b1135 100644
> > --- a/arch/riscv/kernel/Makefile
> > +++ b/arch/riscv/kernel/Makefile
> > @@ -45,4 +45,6 @@ obj-$(CONFIG_PERF_EVENTS)   += perf_callchain.o
> >   obj-$(CONFIG_HAVE_PERF_REGS)        += perf_regs.o
> >   obj-$(CONFIG_RISCV_SBI)             += sbi.o
> >
> > +obj-$(CONFIG_RANDOMIZE_BASE) += kaslr.o
> > +
> >   clean:
> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > index cb4a6e2d3793..5191e528d813 100644
> > --- a/arch/riscv/kernel/head.S
> > +++ b/arch/riscv/kernel/head.S
> > @@ -113,9 +113,12 @@ clear_bss_done:
> >       la a2, boot_cpu_hartid
> >       REG_S a0, (a2)
> >
> > +.align 2
>
> Why do you need this new alignment constraint ?

We need to ensure the target of the trap vector is 4-byte alignment.

>
> > +early_page_table:
> >       /* Initialize page tables and relocate to virtual addresses */
> >       la sp, init_thread_union + THREAD_SIZE
> >       mv a0, s1
> > +
>
> Newline ?

Remove it in the next version. Thanks.

>
> >       call setup_vm
> >   #ifdef CONFIG_MMU
> >       la a0, early_pg_dir
> > @@ -127,6 +130,29 @@ clear_bss_done:
> >       sw zero, TASK_TI_CPU(tp)
> >       la sp, init_thread_union + THREAD_SIZE
> >
> > +#ifdef CONFIG_RANDOMIZE_BASE
> > +     /* KASRL initialization. Try to get a random kernel offset. */
> > +     call kaslr_early_init
> > +
> > +     /* If return value equals to zero, we don't need to randomize kernel */
> > +     beqz a0, 1f
> > +
> > +     la a1, early_page_table
> > +     add a1, a1, a0
> > +     la a0, va_pa_offset
> > +     REG_L a0, 0(a0)
> > +     sub a1, a1, a0
> > +     mv a0, s1
> > +
> > +     /*
> > +      * Go to new kernel image destination, and disable MMU to re-create
> > +      * early page table and do relocation.
> > +      */
> > +     csrw CSR_TVEC, a1
> > +     csrw CSR_SATP, x0
> > +1:
> > +#endif
> > +
> >   #ifdef CONFIG_KASAN
> >       call kasan_early_init
> >   #endif
> > @@ -194,6 +220,19 @@ relocate:
> >       la a3, .Lsecondary_park
> >       csrw CSR_TVEC, a3
> >
> > +#ifdef CONFIG_RANDOMIZE_BASE
> > +     /*
> > +      * Wait winning hart to tell secondary harts where is the new
> > +      * destination to go.
> > +      */
> > +.Lwait_for_next_target:
> > +     la a3, secondary_next_target
> > +     REG_L a3, 0(a3)
> > +     beqz a3, .Lwait_for_next_target
> > +     jr a3
> > +.global secondary_random_target
> > +secondary_random_target:
> > +#endif
> >       slli a3, a0, LGREG
> >       la a1, __cpu_up_stack_pointer
> >       la a2, __cpu_up_task_pointer
> > diff --git a/arch/riscv/kernel/kaslr.c b/arch/riscv/kernel/kaslr.c
> > new file mode 100644
> > index 000000000000..281b5fcca5c8
> > --- /dev/null
> > +++ b/arch/riscv/kernel/kaslr.c
> > @@ -0,0 +1,55 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (C) 2020 SiFive
> > + * Copyright (C) 2020 Zong Li <zong.li@sifive.com>
> > + */
> > +
> > +#include <linux/libfdt.h>
> > +#include <linux/timex.h>
> > +#include <linux/random.h>
> > +#include <linux/set_memory.h>
> > +#include <asm/cacheflush.h>
> > +
> > +extern char _start[], _end[];
> > +extern void secondary_random_target(void);
> > +extern void kaslr_create_page_table(uintptr_t start, uintptr_t end);
> > +
> > +uintptr_t secondary_next_target __initdata;
> > +static uintptr_t kaslr_offset __initdata;
> > +
> > +uintptr_t __init kaslr_early_init(void)
> > +{
> > +     uintptr_t dest_start, dest_end;
> > +     uintptr_t kernel_size = (uintptr_t) _end - (uintptr_t) _start;
> > +
> > +     /* Get zero value at second time to avoid doing randomization again. */
> > +     if (kaslr_offset)
> > +             return 0;
> > +
> > +     /* Get the random number for kaslr offset. */
> > +     kaslr_offset = 0x10000000;
>
> For clarity, you could use a macro or something like that for this constant.

This is a temporary assignment for this patch. The kaslr_offset is not
randomized yet, so it is just a hardcode meaningless number here.
Eventually, kalser_offset should be assigned a random number, that is
what the next patch does ('riscv/kaslr: randomize the kernel image
offset').

>
> > +
> > +     /* Update kernel_virt_addr for get_kaslr_offset. */
> > +     kernel_virt_addr += kaslr_offset;
>
> This could be done after you test if kaslr_offset is null below.

Yes, make sense, change it in the next version patch. Thanks.

>
> > +
> > +     if (kaslr_offset) {
> > +             dest_start = (uintptr_t) (PAGE_OFFSET + kaslr_offset);
> > +             dest_end = dest_start + kernel_size;
>
> dest_end = dest_start + kernel_size - 1;

OK, Thanks.

>
> > +
> > +             /* Create the new destination mapping for kernel image. */
> > +             kaslr_create_page_table(dest_start, dest_end);
> > +
> > +             /* Copy kernel image from orignial location. */
> > +             memcpy((void *)dest_start, (void *)_start, kernel_size);
> > +             flush_icache_range(dest_start, dest_end); > +
> > +             /* Make secondary harts jump to new kernel image destination. */
> > +             WRITE_ONCE(secondary_next_target,
> > +                        __pa_symbol(secondary_random_target) + kaslr_offset);
>
> Don't you need to sync secondary harts icache with main hart dcache here ?

It seems to me that secondary harts could see secondary_next_target
immediately through cache coherence, just like __cpu_up_stack_pointer
and __cpu_up_task_pointer. Could you give more detail here or why we
need to write secondary_next_target back to memory? Thanks.

>
> > +     } else {
> > +             WRITE_ONCE(secondary_next_target,
> > +                        __pa_symbol(secondary_random_target));
> > +     }
> > +
> > +     return kaslr_offset;
> > +}
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index 51e263c04fa2..2f5b25f02b6c 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -413,6 +413,41 @@ static void __init clear_pgd(pgd_t *pgdp)
> >                       }
> >               }
> >   }
> > +
> > +static void __init clear_page_tables(void)
> > +{
> > +     clear_pgd(early_pg_dir);
> > +     clear_pgd(trampoline_pg_dir);
> > +}
>
> early page table and trampoline page table consist in one page per
> level, I confirm that a memset to 0 is easier here.

yes, I'll change it. Thanks.

>
> > +
> > +void __init kaslr_create_page_table(uintptr_t start, uintptr_t end)
> > +{
> > +     pgd_next_t *nextp;
> > +     phys_addr_t next_phys;
> > +     uintptr_t pgd_index, va;
> > +     phys_addr_t pa = __pa(PAGE_OFFSET) + get_kaslr_offset();
> > +     uintptr_t map_size =
> > +             best_map_size(__pa(PAGE_OFFSET), MAX_EARLY_MAPPING_SIZE);
> > +
> > +     /* Expolit early_pg_dir and early_pmd during using early page table. */
> > +     for (va = start; va < end; va += map_size, pa += map_size) {
> > +             pgd_index = pgd_index(va);
> > +
> > +             if (pgd_val(early_pg_dir[pgd_index]) == 0) {
> > +                     next_phys = alloc_pgd_next(va);
> > +                     early_pg_dir[pgd_index] =
> > +                             pfn_pgd(PFN_DOWN(next_phys), PAGE_TABLE);
> > +                     nextp = (pgd_next_t *)(__va(next_phys));
> > +                     memset(nextp, 0, PAGE_SIZE);
> > +             } else {
> > +                     next_phys = PFN_PHYS(_pgd_pfn(early_pg_dir[pgd_index]));
> > +                     nextp = (pgd_next_t *)(__va(next_phys));
> > +             }
> > +
> > +             create_pgd_next_mapping(nextp, va, pa, map_size,
> > +                                     PAGE_KERNEL_EXEC);
> > +     }
> > +}
> >   #endif
>
> I may be missing something here: I don't see where the mappings for the
> new kernel you create here are used between here and setup_vm ?

Early page tables only create the mappings for original kernel image
(i.e., from vmlinux_start to vmlinux_end), so the mapping of the
destination of the new kernel image isn't be created, it would cause
error when copying kernel image.

>
> If I read correctly, if kaslr_early_init returns a random offset, you
> disable mmu and then call setup_vm which will recreate early page tables
> anyway.

Yes, we can exploit the setup_vm implementation to create the page
table for the destination of the new kernel image.

>
> >
> >   /*
> > @@ -489,7 +524,13 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >       uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
> >
> >       va_pa_offset = kernel_virt_addr - load_pa;
> > -     pfn_base = PFN_DOWN(load_pa);
> > +
> > +     /*
> > +      * Update pfn_base only if pfn_base is empty. It's avoid to mess up it
> > +      * when re-enter this function by KASLR.
> > +      */
> > +     if (!pfn_base)
> > +             pfn_base = PFN_DOWN(load_pa);
> >
> >   #ifdef CONFIG_RELOCATABLE
> >       /*
> > @@ -513,6 +554,16 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >       BUG_ON((load_pa % map_size) != 0);
> >       BUG_ON(load_sz > MAX_EARLY_MAPPING_SIZE);
> >
> > +#ifdef CONFIG_RANDOMIZE_BASE
> > +     /*
> > +      * Enter setup_vm twice if there is a legal random destination in KASLR,
> > +      * Reach here at second time, Clear page table because PTE entris allow
> > +      * writing when it's empty.
> > +      */
> > +     if (get_kaslr_offset())
> > +             clear_page_tables();
> > +#endif
> > +
> >       /* Setup early PGD for fixmap */
> >       create_pgd_mapping(early_pg_dir, FIXADDR_START,
> >                          (uintptr_t)fixmap_pgd_next, PGDIR_SIZE, PAGE_TABLE);
> >
>
> Just an idea, maybe worthless, but couldn't we benefit from kexec here ?
> That's quite the same: copy a new kernel from the current kernel in some
> new memory locations and then jump to it. We could pass the computed
> random offset as a very early kernel parameter so that setup_vm would
> only be called once (per kernel).

Actually, I had tried something like you said, if that, we would
encounter some difficulties. We need to limit kaslr implementation to
use local symbols only, including all the functions which were used in
other files, because the kernel is built as pie, so the global symbols
need to be accessed by got table. If we want to access global symbols,
we need to do relocation first, but even if we did relocation first,
the content of each got table entry would be virtual address not
physical address, it would cause error during MMU disabled. Maybe we
could overcome these problems, but it seems to me that it would be
more difficult.

>
> Alex

