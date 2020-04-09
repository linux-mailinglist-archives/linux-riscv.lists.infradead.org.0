Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E717F1A32EC
	for <lists+linux-riscv@lfdr.de>; Thu,  9 Apr 2020 13:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlQnVWcaj998qpe88seNO9Wy3RQcfG+/Atb2YGMFJp4=; b=pElWxIQPzzz+yu
	4dg43keUyNjGSWGF7H1FLNzrdjykF0HfymUGIr5xVjfxp7NbkQU3p0j5jwiOtRLIp7IfODUYwDwE+
	L2tSmRgYzG9beDlk2UAP6RwPnfMNm7WIbAAAE+WNEI0As1Hv1Z7DdHszMLo0IDS3DnVZmfKo2bSlI
	Y7Y46RK+/3Q7pXsgVCU9e6gah0UsR4zHenmJl/1W7gDxTETUg+RSS0gio5nNsU3PVcvjIJNTjYuqF
	tni/Q5gJH4mNpA5+5Jg88CRJilnwi0a4xfaDxMDQMIn4Qy8tUcEH5GJkLgBlSzmMGwc+stXBZb54t
	c2AG2bNBPVyZwyyHZtaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMV2l-0004cj-Kl; Thu, 09 Apr 2020 11:08:23 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMV2h-0004b6-9g
 for linux-riscv@lists.infradead.org; Thu, 09 Apr 2020 11:08:22 +0000
Received: by mail-ot1-x341.google.com with SMTP id a49so10019352otc.11
 for <linux-riscv@lists.infradead.org>; Thu, 09 Apr 2020 04:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OlQnVWcaj998qpe88seNO9Wy3RQcfG+/Atb2YGMFJp4=;
 b=fOb0Wu7exUv7r5OlopRULCHLdnR0Vwvit7JsTY4TgdHDvM/IeMbUR4dFUrWUTIpuZ7
 Jra3lyqjvForAfc4oRfMmhN60R8B9yJVKfFrk9cdaSb5DWOsysUpNhMcSDwHBw1XScoc
 FDgvb0g+wDYBugVtjKK7obhljDrOXJ6ZOKsuejmRHBT3yv/aXuN15/TFWLhp4oQhtj23
 EH06HvLz79NJdGCTDEwR3NY7feva41WAfathgq2WgUlHta9+04rpZNcqiYexEPi5MgEr
 HaKRqKfCdVE+CwD3uQCujFpHzqqzj+f45Isp2IM593RApG2pqlDLI2MWEkf/Rr2lPntZ
 a5MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OlQnVWcaj998qpe88seNO9Wy3RQcfG+/Atb2YGMFJp4=;
 b=o6F9iNcE4hLZBhIjPmqXvGxtpr1quNH4ckI7EKKPR/n1ReHoKn1zTafU4TsL7WVP6P
 vRvPncZZ1qvsiAsPynXG3Pc8YHJ71sOHIw0wCZ6cGe3JgX9dvLTjBwMjH3IiZXzD5tnD
 +4AawWFV7oYNiVOVTNprBiPsawoiz4I0Mut8z21D/mAh0VPgb0Z/dYNYXnL9rH4hya9Y
 mCrWiDA3Z1dFgS4/svfCGWxDkl/N8Pegy/j4Ved3wIK9D4/o+QceZAYd/F12KLfLrHla
 EoJgNuq2jfWUbzqNvRHday9WOuW3McNQbEhTUFINNDXNeaUnp6PrhCWYp5XP2O5W6Tsc
 lFLQ==
X-Gm-Message-State: AGi0PuYiXGDFmJTpKtnMTiU4/83Ea1TabdSPr9ZuDY7tfWesfecwCGPO
 fV3noXAdDwBsKexURrEWSLaFoD5Fs+f29JsIWmPJnJc/6TA=
X-Google-Smtp-Source: APiQypLpiGD1hP/FA+1Qfs8FKHNfy/40G6OI6L4/cHyGa1XIO50DsVQyYWIIfwfFoUuPVaXI4e0XO1RkFeELN3MSEK8=
X-Received: by 2002:a9d:7f19:: with SMTP id j25mr3287086otq.129.1586430498077; 
 Thu, 09 Apr 2020 04:08:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584352425.git.zong.li@sifive.com>
 <fe97f88c69a9f752a96623afa398c4125aab930f.1584352425.git.zong.li@sifive.com>
 <7e490410-9f2c-62dc-e3ab-8018cc3ee534@ghiti.fr>
 <CANXhq0pDA6ndahKwLMvpGHmwxrQZwnDdL5iGCacyXX7DbqpV7g@mail.gmail.com>
 <e0079c17-1039-27b9-72d7-d5009b6d1a4b@ghiti.fr>
In-Reply-To: <e0079c17-1039-27b9-72d7-d5009b6d1a4b@ghiti.fr>
From: Zong Li <zong.li@sifive.com>
Date: Thu, 9 Apr 2020 19:08:06 +0800
Message-ID: <CANXhq0rPAwGzgP1DEwRXe3ZACgMstk1Rnn=3pPNdr+WNcqMZnA@mail.gmail.com>
Subject: Re: [PATCH RFC 3/8] riscv/kaslr: support KASLR infrastructure
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_040819_501587_012A4F0F 
X-CRM114-Status: GOOD (  41.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Apr 9, 2020 at 1:53 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
> Hi Zong,
>
> On 4/7/20 6:34 AM, Zong Li wrote:
> > On Tue, Apr 7, 2020 at 1:10 PM Alex Ghiti <alex@ghiti.fr> wrote:
> >>
> >>
> >>
> >> On 3/24/20 3:30 AM, Zong Li wrote:
> >>> This patch support KASLR implementation. It copies kernel image to a
> >>> proper and random place, and make all harts go to the new destination=
.
> >>>
> >>> After KASLR initialization, secondary harts go to the new destination
> >>> to wait their stack pointer to be setup by main hart, main hart goes =
to
> >>> re-create the early page table and doing relocation by going back to
> >>> setup_vm again.
> >>>
> >>> We separate the randomization process from this patch, so the kernel
> >>> offset was not randomized yet, it just hardcode a meanless number her=
e.
> >>>
> >>> Signed-off-by: Zong Li <zong.li@sifive.com>
> >>> ---
> >>>    arch/riscv/Kconfig         | 15 +++++++++++
> >>>    arch/riscv/kernel/Makefile |  2 ++
> >>>    arch/riscv/kernel/head.S   | 39 +++++++++++++++++++++++++++
> >>>    arch/riscv/kernel/kaslr.c  | 55 ++++++++++++++++++++++++++++++++++=
++++
> >>>    arch/riscv/mm/init.c       | 53 ++++++++++++++++++++++++++++++++++=
+-
> >>>    5 files changed, 163 insertions(+), 1 deletion(-)
> >>>    create mode 100644 arch/riscv/kernel/kaslr.c
> >>>
> >>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> >>> index aea03ac470c8..8f566b40ea1e 100644
> >>> --- a/arch/riscv/Kconfig
> >>> +++ b/arch/riscv/Kconfig
> >>> @@ -183,6 +183,21 @@ config RELOCATABLE
> >>>              relocation pass at runtime even if the kernel is loaded =
at the
> >>>              same address it was linked at.
> >>>
> >>> +config RANDOMIZE_BASE
> >>> +     bool "Randomize the address of the kernel image"
> >>> +     depends on MMU
> >>> +     select MODULE_SECTIONS if MODULES
> >>> +     select RELOCATABLE
> >>> +     help
> >>> +       Randomizes the virtual address at which the kernel image is
> >>> +       loaded, as a security feature that deters exploit attempts
> >>> +       relying on knowledge of the location of kernel internals.
> >>> +
> >>> +       It is the job of previous stage to provide entropy, by passin=
g a
> >>> +       random u64 value in /chosen/kaslr-seed at kernel entry.
> >>> +
> >>> +       If unsure, say N.
> >>> +
> >>>    source "arch/riscv/Kconfig.socs"
> >>>
> >>>    menu "Platform type"
> >>> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> >>> index d189bd3d8501..8f62732b1135 100644
> >>> --- a/arch/riscv/kernel/Makefile
> >>> +++ b/arch/riscv/kernel/Makefile
> >>> @@ -45,4 +45,6 @@ obj-$(CONFIG_PERF_EVENTS)   +=3D perf_callchain.o
> >>>    obj-$(CONFIG_HAVE_PERF_REGS)        +=3D perf_regs.o
> >>>    obj-$(CONFIG_RISCV_SBI)             +=3D sbi.o
> >>>
> >>> +obj-$(CONFIG_RANDOMIZE_BASE) +=3D kaslr.o
> >>> +
> >>>    clean:
> >>> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> >>> index cb4a6e2d3793..5191e528d813 100644
> >>> --- a/arch/riscv/kernel/head.S
> >>> +++ b/arch/riscv/kernel/head.S
> >>> @@ -113,9 +113,12 @@ clear_bss_done:
> >>>        la a2, boot_cpu_hartid
> >>>        REG_S a0, (a2)
> >>>
> >>> +.align 2
> >>
> >> Why do you need this new alignment constraint ?
> >
> > We need to ensure the target of the trap vector is 4-byte alignment.
>
> Ok thanks.
>
> >
> >>
> >>> +early_page_table:
> >>>        /* Initialize page tables and relocate to virtual addresses */
> >>>        la sp, init_thread_union + THREAD_SIZE
> >>>        mv a0, s1
> >>> +
> >>
> >> Newline ?
> >
> > Remove it in the next version. Thanks.
> >
> >>
> >>>        call setup_vm
> >>>    #ifdef CONFIG_MMU
> >>>        la a0, early_pg_dir
> >>> @@ -127,6 +130,29 @@ clear_bss_done:
> >>>        sw zero, TASK_TI_CPU(tp)
> >>>        la sp, init_thread_union + THREAD_SIZE
> >>>
> >>> +#ifdef CONFIG_RANDOMIZE_BASE
> >>> +     /* KASRL initialization. Try to get a random kernel offset. */
> >>> +     call kaslr_early_init
> >>> +
> >>> +     /* If return value equals to zero, we don't need to randomize k=
ernel */
> >>> +     beqz a0, 1f
> >>> +
> >>> +     la a1, early_page_table
> >>> +     add a1, a1, a0
> >>> +     la a0, va_pa_offset
> >>> +     REG_L a0, 0(a0)
> >>> +     sub a1, a1, a0
> >>> +     mv a0, s1
> >>> +
> >>> +     /*
> >>> +      * Go to new kernel image destination, and disable MMU to re-cr=
eate
> >>> +      * early page table and do relocation.
> >>> +      */
> >>> +     csrw CSR_TVEC, a1
> >>> +     csrw CSR_SATP, x0
> >>> +1:
> >>> +#endif
> >>> +
> >>>    #ifdef CONFIG_KASAN
> >>>        call kasan_early_init
> >>>    #endif
> >>> @@ -194,6 +220,19 @@ relocate:
> >>>        la a3, .Lsecondary_park
> >>>        csrw CSR_TVEC, a3
> >>>
> >>> +#ifdef CONFIG_RANDOMIZE_BASE
> >>> +     /*
> >>> +      * Wait winning hart to tell secondary harts where is the new
> >>> +      * destination to go.
> >>> +      */
> >>> +.Lwait_for_next_target:
> >>> +     la a3, secondary_next_target
> >>> +     REG_L a3, 0(a3)
> >>> +     beqz a3, .Lwait_for_next_target
> >>> +     jr a3
> >>> +.global secondary_random_target
> >>> +secondary_random_target:
> >>> +#endif
> >>>        slli a3, a0, LGREG
> >>>        la a1, __cpu_up_stack_pointer
> >>>        la a2, __cpu_up_task_pointer
> >>> diff --git a/arch/riscv/kernel/kaslr.c b/arch/riscv/kernel/kaslr.c
> >>> new file mode 100644
> >>> index 000000000000..281b5fcca5c8
> >>> --- /dev/null
> >>> +++ b/arch/riscv/kernel/kaslr.c
> >>> @@ -0,0 +1,55 @@
> >>> +// SPDX-License-Identifier: GPL-2.0-only
> >>> +/*
> >>> + * Copyright (C) 2020 SiFive
> >>> + * Copyright (C) 2020 Zong Li <zong.li@sifive.com>
> >>> + */
> >>> +
> >>> +#include <linux/libfdt.h>
> >>> +#include <linux/timex.h>
> >>> +#include <linux/random.h>
> >>> +#include <linux/set_memory.h>
> >>> +#include <asm/cacheflush.h>
> >>> +
> >>> +extern char _start[], _end[];
> >>> +extern void secondary_random_target(void);
> >>> +extern void kaslr_create_page_table(uintptr_t start, uintptr_t end);
> >>> +
> >>> +uintptr_t secondary_next_target __initdata;
> >>> +static uintptr_t kaslr_offset __initdata;
> >>> +
> >>> +uintptr_t __init kaslr_early_init(void)
> >>> +{
> >>> +     uintptr_t dest_start, dest_end;
> >>> +     uintptr_t kernel_size =3D (uintptr_t) _end - (uintptr_t) _start=
;
> >>> +
> >>> +     /* Get zero value at second time to avoid doing randomization a=
gain. */
> >>> +     if (kaslr_offset)
> >>> +             return 0;
> >>> +
> >>> +     /* Get the random number for kaslr offset. */
> >>> +     kaslr_offset =3D 0x10000000;
> >>
> >> For clarity, you could use a macro or something like that for this con=
stant.
> >
> > This is a temporary assignment for this patch. The kaslr_offset is not
> > randomized yet, so it is just a hardcode meaningless number here.
> > Eventually, kalser_offset should be assigned a random number, that is
> > what the next patch does ('riscv/kaslr: randomize the kernel image
> > offset').
>
> Yes, I just don't like random constants, even temporary. I was just
> thinking of something like that:
>
> #define KASLR_RANDOM_OFFSET 0x10000000
>
> But it's up to you of course.

It is OK to me to change it. Or maybe I add some comments here, does
it sound good to you?


>
> >
> >>
> >>> +
> >>> +     /* Update kernel_virt_addr for get_kaslr_offset. */
> >>> +     kernel_virt_addr +=3D kaslr_offset;
> >>
> >> This could be done after you test if kaslr_offset is null below.
> >
> > Yes, make sense, change it in the next version patch. Thanks.
> >
> >>
> >>> +
> >>> +     if (kaslr_offset) {
> >>> +             dest_start =3D (uintptr_t) (PAGE_OFFSET + kaslr_offset)=
;
> >>> +             dest_end =3D dest_start + kernel_size;
> >>
> >> dest_end =3D dest_start + kernel_size - 1;
> >
> > OK, Thanks.
> >
> >>
> >>> +
> >>> +             /* Create the new destination mapping for kernel image.=
 */
> >>> +             kaslr_create_page_table(dest_start, dest_end);
> >>> +
> >>> +             /* Copy kernel image from orignial location. */
> >>> +             memcpy((void *)dest_start, (void *)_start, kernel_size)=
;
> >>> +             flush_icache_range(dest_start, dest_end); > +
> >>> +             /* Make secondary harts jump to new kernel image destin=
ation. */
> >>> +             WRITE_ONCE(secondary_next_target,
> >>> +                        __pa_symbol(secondary_random_target) + kaslr=
_offset);
> >>
> >> Don't you need to sync secondary harts icache with main hart dcache he=
re ?
> >
> > It seems to me that secondary harts could see secondary_next_target
> > immediately through cache coherence, just like __cpu_up_stack_pointer
> > and __cpu_up_task_pointer. Could you give more detail here or why we
> > need to write secondary_next_target back to memory? Thanks.
>
> I may be mistaken here, but flush_icache_range uses sfence.i instruction
> that guarantees that following instruction fetches will see previously
> written data. But this works for the local hart: what if other harts
> already have a match in their instruction cache ? The ISA spec states:
>
> "FENCE.I does not ensure that other RISC-V harts=E2=80=99 instruction fet=
ches
> will observe the local hart=E2=80=99s stores in a multiprocessor system. =
To make
> a store to instruction memory visible to all RISC-V harts, the writing
> hart has to execute a data FENCE before requesting that all remote
> RISC-V harts execute a FENCE.I"
>
> >
> >>
> >>> +     } else {
> >>> +             WRITE_ONCE(secondary_next_target,
> >>> +                        __pa_symbol(secondary_random_target));
> >>> +     }
> >>> +
> >>> +     return kaslr_offset;
> >>> +}
> >>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> >>> index 51e263c04fa2..2f5b25f02b6c 100644
> >>> --- a/arch/riscv/mm/init.c
> >>> +++ b/arch/riscv/mm/init.c
> >>> @@ -413,6 +413,41 @@ static void __init clear_pgd(pgd_t *pgdp)
> >>>                        }
> >>>                }
> >>>    }
> >>> +
> >>> +static void __init clear_page_tables(void)
> >>> +{
> >>> +     clear_pgd(early_pg_dir);
> >>> +     clear_pgd(trampoline_pg_dir);
> >>> +}
> >>
> >> early page table and trampoline page table consist in one page per
> >> level, I confirm that a memset to 0 is easier here.
> >
> > yes, I'll change it. Thanks.
> >
> >>
> >>> +
> >>> +void __init kaslr_create_page_table(uintptr_t start, uintptr_t end)
> >>> +{
> >>> +     pgd_next_t *nextp;
> >>> +     phys_addr_t next_phys;
> >>> +     uintptr_t pgd_index, va;
> >>> +     phys_addr_t pa =3D __pa(PAGE_OFFSET) + get_kaslr_offset();
> >>> +     uintptr_t map_size =3D
> >>> +             best_map_size(__pa(PAGE_OFFSET), MAX_EARLY_MAPPING_SIZE=
);
> >>> +
> >>> +     /* Expolit early_pg_dir and early_pmd during using early page t=
able. */
> >>> +     for (va =3D start; va < end; va +=3D map_size, pa +=3D map_size=
) {
> >>> +             pgd_index =3D pgd_index(va);
> >>> +
> >>> +             if (pgd_val(early_pg_dir[pgd_index]) =3D=3D 0) {
> >>> +                     next_phys =3D alloc_pgd_next(va);
> >>> +                     early_pg_dir[pgd_index] =3D
> >>> +                             pfn_pgd(PFN_DOWN(next_phys), PAGE_TABLE=
);
> >>> +                     nextp =3D (pgd_next_t *)(__va(next_phys));
> >>> +                     memset(nextp, 0, PAGE_SIZE);
> >>> +             } else {
> >>> +                     next_phys =3D PFN_PHYS(_pgd_pfn(early_pg_dir[pg=
d_index]));
> >>> +                     nextp =3D (pgd_next_t *)(__va(next_phys));
> >>> +             }
> >>> +
> >>> +             create_pgd_next_mapping(nextp, va, pa, map_size,
> >>> +                                     PAGE_KERNEL_EXEC);
> >>> +     }
> >>> +}
> >>>    #endif
> >>
> >> I may be missing something here: I don't see where the mappings for th=
e
> >> new kernel you create here are used between here and setup_vm ?
> >
> > Early page tables only create the mappings for original kernel image
> > (i.e., from vmlinux_start to vmlinux_end), so the mapping of the
> > destination of the new kernel image isn't be created, it would cause
> > error when copying kernel image.
>
> Oh right, setup_vm creates a mapping that only covers the kernel and not
> a zone that spans an entire PGD: then you have to create mapping for the
> destination.
>
> Thanks,
>
> >
> >>
> >> If I read correctly, if kaslr_early_init returns a random offset, you
> >> disable mmu and then call setup_vm which will recreate early page tabl=
es
> >> anyway.
> >
> > Yes, we can exploit the setup_vm implementation to create the page
> > table for the destination of the new kernel image.
> >
> >>
> >>>
> >>>    /*
> >>> @@ -489,7 +524,13 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa=
)
> >>>        uintptr_t map_size =3D best_map_size(load_pa, MAX_EARLY_MAPPIN=
G_SIZE);
> >>>
> >>>        va_pa_offset =3D kernel_virt_addr - load_pa;
> >>> -     pfn_base =3D PFN_DOWN(load_pa);
> >>> +
> >>> +     /*
> >>> +      * Update pfn_base only if pfn_base is empty. It's avoid to mes=
s up it
> >>> +      * when re-enter this function by KASLR.
> >>> +      */
> >>> +     if (!pfn_base)
> >>> +             pfn_base =3D PFN_DOWN(load_pa);
> >>>
> >>>    #ifdef CONFIG_RELOCATABLE
> >>>        /*
> >>> @@ -513,6 +554,16 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa=
)
> >>>        BUG_ON((load_pa % map_size) !=3D 0);
> >>>        BUG_ON(load_sz > MAX_EARLY_MAPPING_SIZE);
> >>>
> >>> +#ifdef CONFIG_RANDOMIZE_BASE
> >>> +     /*
> >>> +      * Enter setup_vm twice if there is a legal random destination =
in KASLR,
> >>> +      * Reach here at second time, Clear page table because PTE entr=
is allow
> >>> +      * writing when it's empty.
> >>> +      */
> >>> +     if (get_kaslr_offset())
> >>> +             clear_page_tables();
> >>> +#endif
> >>> +
> >>>        /* Setup early PGD for fixmap */
> >>>        create_pgd_mapping(early_pg_dir, FIXADDR_START,
> >>>                           (uintptr_t)fixmap_pgd_next, PGDIR_SIZE, PAG=
E_TABLE);
> >>>
> >>
> >> Just an idea, maybe worthless, but couldn't we benefit from kexec here=
 ?
> >> That's quite the same: copy a new kernel from the current kernel in so=
me
> >> new memory locations and then jump to it. We could pass the computed
> >> random offset as a very early kernel parameter so that setup_vm would
> >> only be called once (per kernel).
> >
> > Actually, I had tried something like you said, if that, we would
> > encounter some difficulties. We need to limit kaslr implementation to
> > use local symbols only, including all the functions which were used in
> > other files, because the kernel is built as pie, so the global symbols
> > need to be accessed by got table. If we want to access global symbols,
> > we need to do relocation first, but even if we did relocation first,
> > the content of each got table entry would be virtual address not
> > physical address, it would cause error during MMU disabled.
>
> The first time we enter setup_vm, relocations are done based on current
> kernel_virt_addr so the GOT is already filled with virtual addresses
> when MMU is disabled and it works since init.c is compiled with -fno-pie
> option. So I'm not sure it would work differently from what you already d=
o.
>

Yes, we need to apply -fno-pie to kaslr.c, but it might not be enough,
because we leveraged other code in linux source as well, such as
libfdt to parse dtb, so we also need to apply the -fno-pie to all
these files. Moreover, the relocation function needs to be extracted
from setup_vm, because we have to finish relocation and calculation of
random offset before setup_vm. So finally, it would be easier to me on
MMU enabled.

> Alex
>
> > Maybe we
> > could overcome these problems, but it seems to me that it would be
> > more difficult.
> >
> >>
> >> Alex

