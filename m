Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F9FE4170
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 04:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiAxvuXr6wwnfp+MsmKVY6tbx6sANIRJSQiR6ngNga0=; b=S03AozmXJ2eEJ6
	OjvqwiqI3+Heg7Z7/FGn+E+dzF3MbimKXasKNKcq+MkfMBwnFXd7+bIignSejHtRUSGL20EH2VCgY
	Mp1hZgT5xRJcJwuxpDeYTLR/awBYYGwPKbxwK/NmrCO3tMwV7K74LmhHCEdTs5R+JkCa2tktYJiHl
	grwf4S9kSdBlxUQ4jMVdrAIKyRzljF3fKXhqt38oCG4yQo4J89lYdTSM6zpJXgOu6xN7lEK98Ou/C
	2MvWiATVjpdv0ZRqAdFFQqy7W/sR2KsAS0dKDCeUg7IcoDHC7iMDxcbZec3e8ri21OmtnEAIOIl7r
	W3i3kxJqjbWNM/TOAb4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNpFT-0006yH-PX; Fri, 25 Oct 2019 02:22:43 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNpFP-0006xq-Ee
 for linux-riscv@lists.infradead.org; Fri, 25 Oct 2019 02:22:42 +0000
Received: by mail-oi1-x244.google.com with SMTP id o205so394629oib.12
 for <linux-riscv@lists.infradead.org>; Thu, 24 Oct 2019 19:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vBPCx1rT1LxO633REDxk1oSrRFlVvchaEm4t1SEq15U=;
 b=RXBqVyzf9yRxJ4CBKxRhh3lMfxhKhpvU+kVLB1oYRm/je5Afny8Iiuxpvp/4Q9gvX9
 VJggSIKo8ic7Ho/NFKh/LiKJtgA4Ahywdyy8yy8ozJZtvlCNtL8lBaAcl40+qOuftN52
 FrVsjNVhtbYWGW/m/wMMk1gThw06BzczfVDPCt3Hn5+b/MEAWZinN2UIU/5SA+pEd3rf
 enPDUsHuoY9kB37EaX0DZpjvvw6BpDznOXQrH8UVpTjr3fxn5KqQq0rK3vfqmog4Cqyn
 AfkcHk/iI4+S1p5IdQ8X7pHXvnPu1GvqchL4IGhcctEPcioTqdsAUbHd6nCbKL2+ipYn
 7VzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vBPCx1rT1LxO633REDxk1oSrRFlVvchaEm4t1SEq15U=;
 b=CgIaidjGhKLLUu2aqrVuuJGf8r5/eOuyFBx7yWLk5/+jVr2iP1Y2BYQudzNL/70Qgf
 ohz2mzIwMc4i0hJGMgpQ0NYggb1txu5O09Rq1HmrsF5CrzG+ONlJ4MoLKZVPqJvp5R2T
 TAyCe5HEweX4MUqprDmeeVRBJIgFXo+Oa/RW9n0+H/N3QiMVXfaSeuKAN9QstEEH16l2
 nThugUhSchuK6pa8wDxthOnEp7IxTm0dJtb80INcyCnOX0YrOMHJU1ULzUCZL0ZmUoJv
 CCYo1KOcPOoMJD8093yI5uFpQVLH0WmElLWjcxiBg1+1pmOlRViz6rgmD182b+eFhAoQ
 JfSw==
X-Gm-Message-State: APjAAAU9sbMdwnCYnQV6zlpaWmImW/X68MGCsNt0sZZIwsUYEotPzYIQ
 sFAZZMnXBh75d6HGyi0jhT/qcbb5eENnQTSGHu5JOg==
X-Google-Smtp-Source: APXvYqyCuh02uoekFWDRCkKhZoh5Ed7kj97sv54pKFa9I77LQQ4BVzRInxS7R3IpBKW6XpZeBqwQtBIAI+GHJAfF6kk=
X-Received: by 2002:aca:df84:: with SMTP id w126mr964084oig.79.1571970158170; 
 Thu, 24 Oct 2019 19:22:38 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571920862.git.zong.li@sifive.com>
 <87a7b40428c94b57b9037108715bca60d72c1b94.1571920862.git.zong.li@sifive.com>
 <d3d89aa1-4ffd-c8a2-2794-cce251013eaa@arm.com>
In-Reply-To: <d3d89aa1-4ffd-c8a2-2794-cce251013eaa@arm.com>
From: Zong Li <zong.li@sifive.com>
Date: Fri, 25 Oct 2019 10:22:26 +0800
Message-ID: <CANXhq0qMMia4Y_hkrOnPJLDXu0ODi+uv7QkZxRexyRyFgqRkQA@mail.gmail.com>
Subject: Re: [PATCH 1/1] riscv: Add support to dump the kernel page tables
To: Steven Price <steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_192239_527121_F1915873 
X-CRM114-Status: GOOD (  31.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 10:34 PM Steven Price <steven.price@arm.com> wrote:
>
> On 24/10/2019 14:02, Zong Li wrote:
> > In a similar manner to arm64, x86, powerpc, etc., it can traverse all
> > page tables, and dump the page table layout with the memory types and
> > permissions.
> >
> > Add a debugfs file at /sys/kernel/debug/kernel_page_tables to export
> > the page table layout to userspace.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
>
> Great to see someone pick this up for another architecture. I'm not very
> familiar with riscv, so I can't review the arch aspects, but one minor
> comment below.
>
> > ---
> >  arch/riscv/Kconfig               |   1 +
> >  arch/riscv/include/asm/pgtable.h |  10 ++
> >  arch/riscv/include/asm/ptdump.h  |  19 +++
> >  arch/riscv/mm/Makefile           |   1 +
> >  arch/riscv/mm/ptdump.c           | 309 +++++++++++++++++++++++++++++++++++++++
> >  5 files changed, 340 insertions(+)
> >  create mode 100644 arch/riscv/include/asm/ptdump.h
> >  create mode 100644 arch/riscv/mm/ptdump.c
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index bc7598f..053cb7a 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -25,6 +25,7 @@ config RISCV
> >       select GENERIC_CPU_DEVICES
> >       select GENERIC_IRQ_SHOW
> >       select GENERIC_PCI_IOMAP
> > +     select GENERIC_PTDUMP
> >       select GENERIC_SCHED_CLOCK
> >       select GENERIC_STRNCPY_FROM_USER
> >       select GENERIC_STRNLEN_USER
> > diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> > index df6522d..be93e59 100644
> > --- a/arch/riscv/include/asm/pgtable.h
> > +++ b/arch/riscv/include/asm/pgtable.h
> > @@ -444,6 +444,16 @@ extern void setup_bootmem(void);
> >  extern void paging_init(void);
> >
> >  /*
> > + * In the RV64 Linux scheme, we give the user half of the virtual-address space
> > + * and give the kernel the other (upper) half.
> > + */
> > +#ifdef CONFIG_64BIT
> > +#define KERN_VIRT_START      (-(BIT(CONFIG_VA_BITS)) + TASK_SIZE)
> > +#else
> > +#define KERN_VIRT_START      FIXADDR_START
> > +#endif
> > +
> > +/*
> >   * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
> >   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> >   */
> > diff --git a/arch/riscv/include/asm/ptdump.h b/arch/riscv/include/asm/ptdump.h
> > new file mode 100644
> > index 0000000..26d9221
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/ptdump.h
> > @@ -0,0 +1,19 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (C) 2019 SiFive
> > + */
> > +
> > +#ifndef _ASM_RISCV_PTDUMP_H
> > +#define _ASM_RISCV_PTDUMP_H
> > +
> > +#ifdef CONFIG_PTDUMP_CORE
> > +void ptdump_check_wx(void);
> > +#endif /* CONFIG_PTDUMP_CORE */
>
> I believe this file is only included from ptdump.c which is only build
> when CONFIG_PTDUMP_CORE is set. So the #ifdeffery isn't necessary.

Yes, make sense, I will remove the condition there. Actually, I'm
working on STRICT_KERNEL_RWX too, it will include the ptdump.h in
another file for using debug_checkwx, but the condition is still
unnecessary, because ptdump_check_wx() is only used when
CONFIG_DEBUG_WX is enabled, and CONFIG_DEBUG_WX  always selects the
CONFIG_PTDUMP_CORE.

Thanks to you for the suggestion.

> Thanks,
>
> Steve
>
> > +
> > +#ifdef CONFIG_DEBUG_WX
> > +#define debug_checkwx() ptdump_check_wx()
> > +#else
> > +#define debug_checkwx() do { } while (0)
> > +#endif
> > +
> > +#endif /* _ASM_RISCV_PTDUMP_H */
> > diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> > index 9d9a173..d6132f8 100644
> > --- a/arch/riscv/mm/Makefile
> > +++ b/arch/riscv/mm/Makefile
> > @@ -17,3 +17,4 @@ ifeq ($(CONFIG_MMU),y)
> >  obj-$(CONFIG_SMP) += tlbflush.o
> >  endif
> >  obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
> > +obj-$(CONFIG_PTDUMP_CORE) += ptdump.o
> > diff --git a/arch/riscv/mm/ptdump.c b/arch/riscv/mm/ptdump.c
> > new file mode 100644
> > index 0000000..60c8af1
> > --- /dev/null
> > +++ b/arch/riscv/mm/ptdump.c
> > @@ -0,0 +1,309 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (C) 2019 SiFive
> > + */
> > +
> > +#include <linux/init.h>
> > +#include <linux/debugfs.h>
> > +#include <linux/seq_file.h>
> > +#include <linux/ptdump.h>
> > +
> > +#include <asm/ptdump.h>
> > +#include <asm/pgtable.h>
> > +
> > +#define pt_dump_seq_printf(m, fmt, args...)  \
> > +({                                           \
> > +     if (m)                                  \
> > +             seq_printf(m, fmt, ##args);     \
> > +})
> > +
> > +#define pt_dump_seq_puts(m, fmt)     \
> > +({                                   \
> > +     if (m)                          \
> > +             seq_printf(m, fmt);     \
> > +})
> > +
> > +/*
> > + * The page dumper groups page table entries of the same type into a single
> > + * description. It uses pg_state to track the range information while
> > + * iterating over the pte entries. When the continuity is broken it then
> > + * dumps out a description of the range.
> > + */
> > +struct pg_state {
> > +     struct ptdump_state ptdump;
> > +     struct seq_file *seq;
> > +     const struct addr_marker *marker;
> > +     unsigned long start_address;
> > +     unsigned long start_pa;
> > +     unsigned long last_pa;
> > +     int level;
> > +     u64 current_prot;
> > +     bool check_wx;
> > +     unsigned long wx_pages;
> > +};
> > +
> > +/* Address marker */
> > +struct addr_marker {
> > +     unsigned long start_address;
> > +     const char *name;
> > +};
> > +
> > +static struct addr_marker address_markers[] = {
> > +     {FIXADDR_START,         "Fixmap start"},
> > +     {FIXADDR_TOP,           "Fixmap end"},
> > +#ifdef CONFIG_SPARSEMEM_VMEMMAP
> > +     {VMEMMAP_START,         "vmemmap start"},
> > +     {VMEMMAP_END,           "vmemmap end"},
> > +#endif
> > +     {VMALLOC_START,         "vmalloc() area"},
> > +     {VMALLOC_END,           "vmalloc() end"},
> > +     {PAGE_OFFSET,           "Linear mapping"},
> > +     {-1, NULL},
> > +};
> > +
> > +/* Page Table Entry */
> > +struct prot_bits {
> > +     u64 mask;
> > +     u64 val;
> > +     const char *set;
> > +     const char *clear;
> > +};
> > +
> > +static const struct prot_bits pte_bits[] = {
> > +     {
> > +             .mask = _PAGE_SOFT,
> > +             .val = _PAGE_SOFT,
> > +             .set = "RSW",
> > +             .clear = "   ",
> > +      }, {
> > +             .mask = _PAGE_DIRTY,
> > +             .val = _PAGE_DIRTY,
> > +             .set = "D",
> > +             .clear = ".",
> > +     }, {
> > +             .mask = _PAGE_ACCESSED,
> > +             .val = _PAGE_ACCESSED,
> > +             .set = "A",
> > +             .clear = ".",
> > +     }, {
> > +             .mask = _PAGE_GLOBAL,
> > +             .val = _PAGE_GLOBAL,
> > +             .set = "G",
> > +             .clear = ".",
> > +     }, {
> > +             .mask = _PAGE_USER,
> > +             .val = _PAGE_USER,
> > +             .set = "U",
> > +             .clear = ".",
> > +     }, {
> > +             .mask = _PAGE_EXEC,
> > +             .val = _PAGE_EXEC,
> > +             .set = "X",
> > +             .clear = ".",
> > +     }, {
> > +             .mask = _PAGE_WRITE,
> > +             .val = _PAGE_WRITE,
> > +             .set = "W",
> > +             .clear = ".",
> > +     }, {
> > +             .mask = _PAGE_READ,
> > +             .val = _PAGE_READ,
> > +             .set = "R",
> > +             .clear = ".",
> > +     }, {
> > +             .mask = _PAGE_PRESENT,
> > +             .val = _PAGE_PRESENT,
> > +             .set = "V",
> > +             .clear = ".",
> > +     }
> > +};
> > +
> > +/* Page Level */
> > +struct pg_level {
> > +     const char *name;
> > +     u64 mask;
> > +};
> > +
> > +static struct pg_level pg_level[] = {
> > +     {
> > +     }, { /* pgd */
> > +             .name = "PGD",
> > +     }, { /* p4d */
> > +             .name = (CONFIG_PGTABLE_LEVELS > 4) ? "P4D" : "PGD",
> > +     }, { /* pud */
> > +             .name = (CONFIG_PGTABLE_LEVELS > 3) ? "PUD" : "PGD",
> > +     }, { /* pmd */
> > +             .name = (CONFIG_PGTABLE_LEVELS > 2) ? "PMD" : "PGD",
> > +     }, { /* pte */
> > +             .name = "PTE",
> > +     },
> > +};
> > +
> > +static void dump_prot(struct pg_state *st)
> > +{
> > +     unsigned int i;
> > +
> > +     for (i = 0; i < ARRAY_SIZE(pte_bits); i++) {
> > +             const char *s;
> > +
> > +             if ((st->current_prot & pte_bits[i].mask) == pte_bits[i].val)
> > +                     s = pte_bits[i].set;
> > +             else
> > +                     s = pte_bits[i].clear;
> > +
> > +             if (s)
> > +                     pt_dump_seq_printf(st->seq, " %s", s);
> > +     }
> > +}
> > +
> > +#ifdef CONFIG_64BIT
> > +#define ADDR_FORMAT  "0x%016lx"
> > +#else
> > +#define ADDR_FORMAT  "0x%08lx"
> > +#endif
> > +static void dump_addr(struct pg_state *st, unsigned long addr)
> > +{
> > +     static const char units[] = "KMGTPE";
> > +     const char *unit = units;
> > +     unsigned long delta;
> > +
> > +     pt_dump_seq_printf(st->seq, ADDR_FORMAT "-" ADDR_FORMAT "   ",
> > +                        st->start_address, addr);
> > +
> > +     pt_dump_seq_printf(st->seq, " " ADDR_FORMAT " ", st->start_pa);
> > +     delta = (addr - st->start_address) >> 10;
> > +
> > +     while (!(delta & 1023) && unit[1]) {
> > +             delta >>= 10;
> > +             unit++;
> > +     }
> > +
> > +     pt_dump_seq_printf(st->seq, "%9lu%c %s", delta, *unit,
> > +                        pg_level[st->level].name);
> > +}
> > +
> > +static void note_prot_wx(struct pg_state *st, unsigned long addr)
> > +{
> > +     if (!st->check_wx)
> > +             return;
> > +
> > +     if ((st->current_prot & (_PAGE_WRITE | _PAGE_EXEC)) !=
> > +         (_PAGE_WRITE | _PAGE_EXEC))
> > +             return;
> > +
> > +     WARN_ONCE(1, "riscv/mm: Found insecure W+X mapping at address %p/%pS\n",
> > +               (void *)st->start_address, (void *)st->start_address);
> > +
> > +     st->wx_pages += (addr - st->start_address) / PAGE_SIZE;
> > +}
> > +
> > +static void note_page(struct ptdump_state *pt_st, unsigned long addr,
> > +                   int level, unsigned long val)
> > +{
> > +     struct pg_state *st = container_of(pt_st, struct pg_state, ptdump);
> > +     u64 pa = PFN_PHYS(pte_pfn(__pte(val)));
> > +     u64 prot = 0;
> > +
> > +     if (level >= 0)
> > +             prot = val & pg_level[level].mask;
> > +
> > +     if (!st->level) {
> > +             st->level = level;
> > +             st->current_prot = prot;
> > +             st->start_address = addr;
> > +             st->start_pa = pa;
> > +             st->last_pa = pa;
> > +             pt_dump_seq_printf(st->seq, "---[ %s ]---\n", st->marker->name);
> > +     } else if (prot != st->current_prot ||
> > +                level != st->level || addr >= st->marker[1].start_address) {
> > +             if (st->current_prot) {
> > +                     note_prot_wx(st, addr);
> > +                     dump_addr(st, addr);
> > +                     dump_prot(st);
> > +                     pt_dump_seq_puts(st->seq, "\n");
> > +             }
> > +
> > +             while (addr >= st->marker[1].start_address) {
> > +                     st->marker++;
> > +                     pt_dump_seq_printf(st->seq, "---[ %s ]---\n",
> > +                                        st->marker->name);
> > +             }
> > +
> > +             st->start_address = addr;
> > +             st->start_pa = pa;
> > +             st->last_pa = pa;
> > +             st->current_prot = prot;
> > +             st->level = level;
> > +     } else {
> > +             st->last_pa = pa;
> > +     }
> > +}
> > +
> > +static void ptdump_walk(struct seq_file *s)
> > +{
> > +     struct pg_state st = {
> > +             .seq = s,
> > +             .marker = address_markers,
> > +             .ptdump = {
> > +                     .note_page = note_page,
> > +                     .range = (struct ptdump_range[]) {
> > +                             {KERN_VIRT_START, ULONG_MAX},
> > +                             {0, 0}
> > +                     }
> > +             }
> > +     };
> > +
> > +     ptdump_walk_pgd(&st.ptdump, &init_mm);
> > +}
> > +
> > +void ptdump_check_wx(void)
> > +{
> > +     struct pg_state st = {
> > +             .seq = NULL,
> > +             .marker = (struct addr_marker[]) {
> > +                     {0, NULL},
> > +                     {-1, NULL},
> > +             },
> > +             .check_wx = true,
> > +             .ptdump = {
> > +                     .note_page = note_page,
> > +                     .range = (struct ptdump_range[]) {
> > +                             {KERN_VIRT_START, ULONG_MAX},
> > +                             {0, 0}
> > +                     }
> > +             }
> > +     };
> > +
> > +     ptdump_walk_pgd(&st.ptdump, &init_mm);
> > +
> > +     if (st.wx_pages)
> > +             pr_warn("Checked W+X mappings: FAILED, %lu W+X pages found\n",
> > +                     st.wx_pages);
> > +     else
> > +             pr_info("Checked W+X mappings: passed, no W+X pages found\n");
> > +}
> > +
> > +static int ptdump_show(struct seq_file *m, void *v)
> > +{
> > +     ptdump_walk(m);
> > +
> > +     return 0;
> > +}
> > +
> > +DEFINE_SHOW_ATTRIBUTE(ptdump);
> > +
> > +static int ptdump_init(void)
> > +{
> > +     unsigned int i, j;
> > +
> > +     for (i = 0; i < ARRAY_SIZE(pg_level); i++)
> > +             for (j = 0; j < ARRAY_SIZE(pte_bits); j++)
> > +                     pg_level[i].mask |= pte_bits[j].mask;
> > +
> > +     debugfs_create_file("kernel_page_tables", 0400, NULL, NULL,
> > +                         &ptdump_fops);
> > +
> > +     return 0;
> > +}
> > +
> > +device_initcall(ptdump_init);
> >
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
