Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8E218F2DC
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Mar 2020 11:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59Ut9IY4o/q5MZFN98JGtJfE2YyEe3hnu26+XZPTOIo=; b=FcAoJYAJEtlVm0
	u0TVlLF0qYNyPGeynUtYDGjBFOkl3+CGs9Fyn5dRYE2PU/ipGReIFgevTRlQjMzuYgy7AZhdSU00L
	E4jhBgNiee0ONQrKRdTzmCKReck0109qgNJi8EukItPb6nQlp+GTiZqmEks6W8BX/tgXHUysu6vMI
	w43z90zKlFbbN/lQuyLGCkv9s+Bh0+XcnK7whonraVzhY2x9oM1+G17zOSy0Z4z41K1ASi6bwfNKR
	bRqe9L3t4rzsrR6Bd5ki2U0OsesycbDVDAoD5KJuNnBy0scKb74eP2ja52JwHkYU2ZJajdRIoyhmH
	2YvciWJeRRyLz1QKH3Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKNx-0000mh-0L; Mon, 23 Mar 2020 10:32:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKNo-0000le-S8
 for linux-riscv@lists.infradead.org; Mon, 23 Mar 2020 10:32:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id l20so14143570wmi.3
 for <linux-riscv@lists.infradead.org>; Mon, 23 Mar 2020 03:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=59Ut9IY4o/q5MZFN98JGtJfE2YyEe3hnu26+XZPTOIo=;
 b=lQzO1/oMkjJlrnRwkhpmsHy8gUzTzpBjViiDOt1dlcveGJijRmQZy0ei+PbS1diI1L
 OucC4Hl8fpR+/xIAcYduI8ZL0RsFPGN4Ucf9PepZYb1VtlU1iEPAzp5KMHa1+kwLdTvA
 7fQAts/DtpCIgIf9kKffMYLxAVmUI+sG9NR3JAnTBLedGl7PiKaOA9IP506C55ioOEVf
 +fZ2N5c9AFJb8O7fy5M1p41MheEf2MaGSnV5hl73wfpd71PS4TwdmQjDjaqXaPXFR2cl
 L6HebqUBoBZc/KL2E/y9fDjrY9FSzaVyXeLsvgpBHd7JEAGyXjsUtSGudWa4uvzNywDs
 JqLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=59Ut9IY4o/q5MZFN98JGtJfE2YyEe3hnu26+XZPTOIo=;
 b=BfneZfgzq/ZNhB37eejkhNxTaFuURkC8qvmZx/q+LbXApGnvXcGJVue4qecnb60onS
 FFrbvatjporppg5oy0wceYkmDislsEeGg3qUu3OOYplg7kpfp0rLzE9nxXL9TjCmSCSu
 Hcro+/WEbtEYP4RhfyKpaXHj7sn7z0zVAb6NUSSztjqDUaKHEruiU23GBkwTi/md/HRl
 edOgGWHytDO+89p58nH/3igTCQVx7c8o/63wxpAD8Ef5aPJ9Kgu3y5aHWcjevyxE+W6Z
 rm1Zs/XElFIgArNODuOYHBq5pUOjTLZssCyuRj7R5OKK/3+8ToLl3kTl0GY59ImruYVL
 v+iQ==
X-Gm-Message-State: ANhLgQ3l3FgfQWtZ5NYRbNx9o1eOwRLXPkhpbubqso9H3wtQmMz9UL31
 b8p4T16RnLYWrLA0H0uj85yMTmkZTz4nRWT9HeVNyQ==
X-Google-Smtp-Source: ADFU+vt/QLigcG486ru4fwyg+nnx96T1p/Nq94xgY8sKoWbbeCXaO1ssyA8TBN4/K2CEP5dtp/CYchu1wgRVhBoCN3A=
X-Received: by 2002:a05:600c:228f:: with SMTP id
 15mr7693466wmf.140.1584959554995; 
 Mon, 23 Mar 2020 03:32:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200224193436.26860-1-atish.patra@wdc.com>
 <mhng-a36eb560-2fbf-4fba-8416-8181a2c8ad5b@palmerdabbelt-glaptop1>
 <CAEn-LTo=GP5OMZiaBi8BL1etLcGrCyofQrtQ4-JOo5zcpCLu8A@mail.gmail.com>
In-Reply-To: <CAEn-LTo=GP5OMZiaBi8BL1etLcGrCyofQrtQ4-JOo5zcpCLu8A@mail.gmail.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Mon, 23 Mar 2020 12:31:58 +0200
Message-ID: <CAEn-LTokKZXgoNgDi2e5XW2WgL5O+e5UVs7wX2ndqecCdPnN4g@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Move all address space definition macros to one
 place
To: Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_033236_939702_2198C17C 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [david.abdurachmanov[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, nickhu@andestech.com,
 Bjorn Topel <bjorn.topel@gmail.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <Atish.Patra@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 akpm@linux-foundation.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Mar 21, 2020 at 10:29 PM David Abdurachmanov
<david.abdurachmanov@gmail.com> wrote:
>
> On Fri, Mar 6, 2020 at 2:20 AM Palmer Dabbelt <palmerdabbelt@google.com> =
wrote:
> >
> > On Mon, 24 Feb 2020 11:34:36 PST (-0800), Atish Patra wrote:
> > > If both CONFIG_KASAN and CONFIG_SPARSEMEM_VMEMMAP are set, we get the
> > > following compilation error.
> > >
> > > ---------------------------------------------------------------
> > > ./arch/riscv/include/asm/pgtable-64.h: In function =E2=80=98pud_page=
=E2=80=99:
> > > ./include/asm-generic/memory_model.h:54:29: error: =E2=80=98vmemmap=
=E2=80=99 undeclared
> > > (first use in this function); did you mean =E2=80=98mem_map=E2=80=99?
> > >  #define __pfn_to_page(pfn) (vmemmap + (pfn))
> > >                              ^~~~~~~
> > > ./include/asm-generic/memory_model.h:82:21: note: in expansion of
> > > macro =E2=80=98__pfn_to_page=E2=80=99
> > >
> > >  #define pfn_to_page __pfn_to_page
> > >                      ^~~~~~~~~~~~~
> > > ./arch/riscv/include/asm/pgtable-64.h:70:9: note: in expansion of mac=
ro
> > > =E2=80=98pfn_to_page=E2=80=99
> > >   return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
> > > ---------------------------------------------------------------
> > >
> > > Fix the compliation errors by moving all the address space definition
> > > macros before including pgtable-64.h.
> > >
> > > Cc: stable@vger.kernel.org
> > > Fixes: 8ad8b72721d0 (riscv: Add KASAN support)
> > >
> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > ---
> > >  arch/riscv/include/asm/pgtable.h | 78 +++++++++++++++++-------------=
--
> > >  1 file changed, 41 insertions(+), 37 deletions(-)
> > >
> > > diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/as=
m/pgtable.h
> > > index 453afb0a570a..4f6ee48a42e8 100644
> > > --- a/arch/riscv/include/asm/pgtable.h
> > > +++ b/arch/riscv/include/asm/pgtable.h
> > > @@ -19,6 +19,47 @@
> > >  #include <asm/tlbflush.h>
> > >  #include <linux/mm_types.h>
> > >
> > > +#ifdef CONFIG_MMU
> > > +
> > > +#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
> > > +#define VMALLOC_END      (PAGE_OFFSET - 1)
> > > +#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> > > +
> > > +#define BPF_JIT_REGION_SIZE  (SZ_128M)
> > > +#define BPF_JIT_REGION_START (PAGE_OFFSET - BPF_JIT_REGION_SIZE)
> > > +#define BPF_JIT_REGION_END   (VMALLOC_END)
> > > +
> > > +/*
> > > + * Roughly size the vmemmap space to be large enough to fit enough
> > > + * struct pages to map half the virtual address space. Then
> > > + * position vmemmap directly below the VMALLOC region.
> > > + */
> > > +#define VMEMMAP_SHIFT \
> > > +     (CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> > > +#define VMEMMAP_SIZE BIT(VMEMMAP_SHIFT)
> > > +#define VMEMMAP_END  (VMALLOC_START - 1)
> > > +#define VMEMMAP_START        (VMALLOC_START - VMEMMAP_SIZE)
> > > +
> > > +/*
> > > + * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if ker=
nel
> > > + * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
> > > + */
> > > +#define vmemmap              ((struct page *)VMEMMAP_START)
> > > +
> > > +#define PCI_IO_SIZE      SZ_16M
> > > +#define PCI_IO_END       VMEMMAP_START
> > > +#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
> > > +
> > > +#define FIXADDR_TOP      PCI_IO_START
> > > +#ifdef CONFIG_64BIT
> > > +#define FIXADDR_SIZE     PMD_SIZE
> > > +#else
> > > +#define FIXADDR_SIZE     PGDIR_SIZE
> > > +#endif
> > > +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> > > +
> > > +#endif
> > > +
> > >  #ifdef CONFIG_64BIT
> > >  #include <asm/pgtable-64.h>
> > >  #else
> > > @@ -90,31 +131,6 @@ extern pgd_t swapper_pg_dir[];
> > >  #define __S110       PAGE_SHARED_EXEC
> > >  #define __S111       PAGE_SHARED_EXEC
> > >
> > > -#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
> > > -#define VMALLOC_END      (PAGE_OFFSET - 1)
> > > -#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> > > -
> > > -#define BPF_JIT_REGION_SIZE  (SZ_128M)
> > > -#define BPF_JIT_REGION_START (PAGE_OFFSET - BPF_JIT_REGION_SIZE)
> > > -#define BPF_JIT_REGION_END   (VMALLOC_END)
> > > -
> > > -/*
> > > - * Roughly size the vmemmap space to be large enough to fit enough
> > > - * struct pages to map half the virtual address space. Then
> > > - * position vmemmap directly below the VMALLOC region.
> > > - */
> > > -#define VMEMMAP_SHIFT \
> > > -     (CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> > > -#define VMEMMAP_SIZE BIT(VMEMMAP_SHIFT)
> > > -#define VMEMMAP_END  (VMALLOC_START - 1)
> > > -#define VMEMMAP_START        (VMALLOC_START - VMEMMAP_SIZE)
> > > -
> > > -/*
> > > - * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if ker=
nel
> > > - * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
> > > - */
> > > -#define vmemmap              ((struct page *)VMEMMAP_START)
> > > -
> > >  static inline int pmd_present(pmd_t pmd)
> > >  {
> > >       return (pmd_val(pmd) & (_PAGE_PRESENT | _PAGE_PROT_NONE));
> > > @@ -452,18 +468,6 @@ static inline int ptep_clear_flush_young(struct =
vm_area_struct *vma,
> > >  #define __pte_to_swp_entry(pte)      ((swp_entry_t) { pte_val(pte) }=
)
> > >  #define __swp_entry_to_pte(x)        ((pte_t) { (x).val })
> > >
> > > -#define PCI_IO_SIZE      SZ_16M
> > > -#define PCI_IO_END       VMEMMAP_START
> > > -#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
> > > -
> > > -#define FIXADDR_TOP      PCI_IO_START
> > > -#ifdef CONFIG_64BIT
> > > -#define FIXADDR_SIZE     PMD_SIZE
> > > -#else
> > > -#define FIXADDR_SIZE     PGDIR_SIZE
> > > -#endif
> > > -#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> > > -
> > >  /*
> > >   * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
> > >   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> >
> > While this isn't technically a fix, I'm inclined to target it for the R=
Cs just
> > to avoid conflicts.  I've put it on for-next now so the builders have s=
ome time
> > to chew on things, as I don't want to put in a non-fix too quickly.
>
> I hit the same issue in Fedora/RISCV while building kernel-5.6.0-0.rc6, a=
nd
> we don't have KASAN selected. We do have CONFIG_SPARSEMEM_VMEMMAP
> selected.
>
> I will try this patch tomorrow.
>
Confirmed to solve my build errors with kernel in Fedora/RISCV.

david

