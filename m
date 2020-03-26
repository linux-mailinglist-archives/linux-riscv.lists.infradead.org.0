Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5612194AD1
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 22:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1NDn439r2NKX2oz5ZXFZ71Km/k0SiSxc8ZOwV4UNkM=; b=ixpFh7T2HPLHbg
	v6hAn668TsiEl5TWKe3fdkU+aboVKPDAakNhv8Cttx2b5h02cTufDFV+WmV+meM9LxS2g78a6E5Hj
	5B0R2jfhzmPU/5JsPCINQDnXzdq/Z+dQjcb78dpxS5t7ZgvNJxG6XfuNnckFGZrwUbJWCvIJ4xbjC
	4oUVSVaUfMrroODAWzZUJNSaX6gy1+fLhPrV/AqViwMvOHsBAVBFQFBFkEdp0NxFG8k6+dEI4ppDe
	vNWEBoyaqyaBghJKHOeDtA91AQcN0EiPpXVkNnIHcSfphRl3XSt+9LeqKQ+bXbunIho8nNngDyfnz
	I84u3F+1JN690rzPvOgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHaHo-0004e8-II; Thu, 26 Mar 2020 21:43:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaHl-0004dn-0n
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 21:43:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id z18so8927174wmk.2
 for <linux-riscv@lists.infradead.org>; Thu, 26 Mar 2020 14:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=f1NDn439r2NKX2oz5ZXFZ71Km/k0SiSxc8ZOwV4UNkM=;
 b=OjCourkV/MTqGFeOswaVFQKQOplgKPa1zgys4mGBsxi9hAycFeq4i7NQjVeYvQYYIl
 Z5C2H5mjphkQ+Nzq2zlU7T2vv8LZ/NSe84Rr6iRA3IieJSPTBIV+JoDOcG6K4wpyQoRZ
 J/de/gJN5I9LMtrwEK6Or+ioTpGm8lNkGQ4HCR0llDNYMPMqWxVKs6jmh/+jHxnwzP7L
 cw0COxWs9e/U1bP2id4ENhz6rqKaqFx/0xAWfHGEsXqI5cEg9y5EHkmEHrW3QMCSlPzM
 2ssLLxfTvxst3538bmc6yz2LSgwjSFKx6gc+tyKcSTosPXYfo5Ni3KfomzX3a+kPJ9d1
 9MEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=f1NDn439r2NKX2oz5ZXFZ71Km/k0SiSxc8ZOwV4UNkM=;
 b=GNS2TIfgishLI+hcA3EyUYOBTO7VAZIAqCZ+zBpphH+eLgrlMsc8cHSchcl07fvFY1
 4t9Nww3pPf1zwDzEpmmFj5eq/suntiC8l11kx5R8Ug/8bm50+aTgX4UFTwdcAI0w7D89
 mblZUG2cP2QqZUpTTjUXpDD+jYyrPmjklebcBPOguW40qSc4VbTbuDAFa+zFt1AsGUyp
 Q7LJ9lrG2npzZL+7BwOzRd36+/W2hFUSCGQT3blcwjUAXw65TDozZH+2y8KjoQMNnD3i
 tduQhCxMdoRw7mxz0iu4B+TSOZH/EqPnIUWtXZcWa3/x1lpqfwEUXPaWu15JL7TI3+sf
 k1JQ==
X-Gm-Message-State: ANhLgQ3eYYd0dZY8Tq5u6VfLTSsqHMQuNEuVKo/pm3W8GVUzYYr1wPLj
 P+G7aU4IiokLkpUxfJHtF/dVP+Wj9C0vIOpWaTE0
X-Google-Smtp-Source: ADFU+vtd+d+BeyjdXRco3BnmIUGbwN18p+gYCa+hvrOkYjQFzeB/QMBSlWf+/g2wWZKCyOEOqWoJhGQRRup/idE8gng=
X-Received: by 2002:adf:e807:: with SMTP id o7mr12050229wrm.77.1585259011235; 
 Thu, 26 Mar 2020 14:43:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200224193436.26860-1-atish.patra@wdc.com>
 <mhng-a36eb560-2fbf-4fba-8416-8181a2c8ad5b@palmerdabbelt-glaptop1>
 <CAEn-LTo=GP5OMZiaBi8BL1etLcGrCyofQrtQ4-JOo5zcpCLu8A@mail.gmail.com>
 <CAEn-LTokKZXgoNgDi2e5XW2WgL5O+e5UVs7wX2ndqecCdPnN4g@mail.gmail.com>
In-Reply-To: <CAEn-LTokKZXgoNgDi2e5XW2WgL5O+e5UVs7wX2ndqecCdPnN4g@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 26 Mar 2020 14:43:20 -0700
Message-ID: <CAOnJCUL4BcAFXd6HyOW_eq6mm7PWFNW6yP1srkvTO+=W67AJ-A@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Move all address space definition macros to one
 place
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_144333_480320_7F382D2C 
X-CRM114-Status: GOOD (  26.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, akpm@linux-foundation.org,
 Nick Hu <nickhu@andestech.com>, Bjorn Topel <bjorn.topel@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <Atish.Patra@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 3:32 AM David Abdurachmanov
<david.abdurachmanov@gmail.com> wrote:
>
> On Sat, Mar 21, 2020 at 10:29 PM David Abdurachmanov
> <david.abdurachmanov@gmail.com> wrote:
> >
> > On Fri, Mar 6, 2020 at 2:20 AM Palmer Dabbelt <palmerdabbelt@google.com=
> wrote:
> > >
> > > On Mon, 24 Feb 2020 11:34:36 PST (-0800), Atish Patra wrote:
> > > > If both CONFIG_KASAN and CONFIG_SPARSEMEM_VMEMMAP are set, we get t=
he
> > > > following compilation error.
> > > >
> > > > ---------------------------------------------------------------
> > > > ./arch/riscv/include/asm/pgtable-64.h: In function =E2=80=98pud_pag=
e=E2=80=99:
> > > > ./include/asm-generic/memory_model.h:54:29: error: =E2=80=98vmemmap=
=E2=80=99 undeclared
> > > > (first use in this function); did you mean =E2=80=98mem_map=E2=80=
=99?
> > > >  #define __pfn_to_page(pfn) (vmemmap + (pfn))
> > > >                              ^~~~~~~
> > > > ./include/asm-generic/memory_model.h:82:21: note: in expansion of
> > > > macro =E2=80=98__pfn_to_page=E2=80=99
> > > >
> > > >  #define pfn_to_page __pfn_to_page
> > > >                      ^~~~~~~~~~~~~
> > > > ./arch/riscv/include/asm/pgtable-64.h:70:9: note: in expansion of m=
acro
> > > > =E2=80=98pfn_to_page=E2=80=99
> > > >   return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
> > > > ---------------------------------------------------------------
> > > >
> > > > Fix the compliation errors by moving all the address space definiti=
on
> > > > macros before including pgtable-64.h.
> > > >
> > > > Cc: stable@vger.kernel.org
> > > > Fixes: 8ad8b72721d0 (riscv: Add KASAN support)
> > > >
> > > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > > ---
> > > >  arch/riscv/include/asm/pgtable.h | 78 +++++++++++++++++-----------=
----
> > > >  1 file changed, 41 insertions(+), 37 deletions(-)
> > > >
> > > > diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/=
asm/pgtable.h
> > > > index 453afb0a570a..4f6ee48a42e8 100644
> > > > --- a/arch/riscv/include/asm/pgtable.h
> > > > +++ b/arch/riscv/include/asm/pgtable.h
> > > > @@ -19,6 +19,47 @@
> > > >  #include <asm/tlbflush.h>
> > > >  #include <linux/mm_types.h>
> > > >
> > > > +#ifdef CONFIG_MMU
> > > > +
> > > > +#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
> > > > +#define VMALLOC_END      (PAGE_OFFSET - 1)
> > > > +#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> > > > +
> > > > +#define BPF_JIT_REGION_SIZE  (SZ_128M)
> > > > +#define BPF_JIT_REGION_START (PAGE_OFFSET - BPF_JIT_REGION_SIZE)
> > > > +#define BPF_JIT_REGION_END   (VMALLOC_END)
> > > > +
> > > > +/*
> > > > + * Roughly size the vmemmap space to be large enough to fit enough
> > > > + * struct pages to map half the virtual address space. Then
> > > > + * position vmemmap directly below the VMALLOC region.
> > > > + */
> > > > +#define VMEMMAP_SHIFT \
> > > > +     (CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> > > > +#define VMEMMAP_SIZE BIT(VMEMMAP_SHIFT)
> > > > +#define VMEMMAP_END  (VMALLOC_START - 1)
> > > > +#define VMEMMAP_START        (VMALLOC_START - VMEMMAP_SIZE)
> > > > +
> > > > +/*
> > > > + * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if k=
ernel
> > > > + * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
> > > > + */
> > > > +#define vmemmap              ((struct page *)VMEMMAP_START)
> > > > +
> > > > +#define PCI_IO_SIZE      SZ_16M
> > > > +#define PCI_IO_END       VMEMMAP_START
> > > > +#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
> > > > +
> > > > +#define FIXADDR_TOP      PCI_IO_START
> > > > +#ifdef CONFIG_64BIT
> > > > +#define FIXADDR_SIZE     PMD_SIZE
> > > > +#else
> > > > +#define FIXADDR_SIZE     PGDIR_SIZE
> > > > +#endif
> > > > +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> > > > +
> > > > +#endif
> > > > +
> > > >  #ifdef CONFIG_64BIT
> > > >  #include <asm/pgtable-64.h>
> > > >  #else
> > > > @@ -90,31 +131,6 @@ extern pgd_t swapper_pg_dir[];
> > > >  #define __S110       PAGE_SHARED_EXEC
> > > >  #define __S111       PAGE_SHARED_EXEC
> > > >
> > > > -#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
> > > > -#define VMALLOC_END      (PAGE_OFFSET - 1)
> > > > -#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> > > > -
> > > > -#define BPF_JIT_REGION_SIZE  (SZ_128M)
> > > > -#define BPF_JIT_REGION_START (PAGE_OFFSET - BPF_JIT_REGION_SIZE)
> > > > -#define BPF_JIT_REGION_END   (VMALLOC_END)
> > > > -
> > > > -/*
> > > > - * Roughly size the vmemmap space to be large enough to fit enough
> > > > - * struct pages to map half the virtual address space. Then
> > > > - * position vmemmap directly below the VMALLOC region.
> > > > - */
> > > > -#define VMEMMAP_SHIFT \
> > > > -     (CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> > > > -#define VMEMMAP_SIZE BIT(VMEMMAP_SHIFT)
> > > > -#define VMEMMAP_END  (VMALLOC_START - 1)
> > > > -#define VMEMMAP_START        (VMALLOC_START - VMEMMAP_SIZE)
> > > > -
> > > > -/*
> > > > - * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if k=
ernel
> > > > - * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
> > > > - */
> > > > -#define vmemmap              ((struct page *)VMEMMAP_START)
> > > > -
> > > >  static inline int pmd_present(pmd_t pmd)
> > > >  {
> > > >       return (pmd_val(pmd) & (_PAGE_PRESENT | _PAGE_PROT_NONE));
> > > > @@ -452,18 +468,6 @@ static inline int ptep_clear_flush_young(struc=
t vm_area_struct *vma,
> > > >  #define __pte_to_swp_entry(pte)      ((swp_entry_t) { pte_val(pte)=
 })
> > > >  #define __swp_entry_to_pte(x)        ((pte_t) { (x).val })
> > > >
> > > > -#define PCI_IO_SIZE      SZ_16M
> > > > -#define PCI_IO_END       VMEMMAP_START
> > > > -#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
> > > > -
> > > > -#define FIXADDR_TOP      PCI_IO_START
> > > > -#ifdef CONFIG_64BIT
> > > > -#define FIXADDR_SIZE     PMD_SIZE
> > > > -#else
> > > > -#define FIXADDR_SIZE     PGDIR_SIZE
> > > > -#endif
> > > > -#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> > > > -
> > > >  /*
> > > >   * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
> > > >   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> > >
> > > While this isn't technically a fix, I'm inclined to target it for the=
 RCs just
> > > to avoid conflicts.  I've put it on for-next now so the builders have=
 some time
> > > to chew on things, as I don't want to put in a non-fix too quickly.
> >
> > I hit the same issue in Fedora/RISCV while building kernel-5.6.0-0.rc6,=
 and
> > we don't have KASAN selected. We do have CONFIG_SPARSEMEM_VMEMMAP
> > selected.
> >

Yes. I just verified that. CONFIG_SPARSEMEM_VMEMMAP is enough to
trigger the build error.
The code that raises the compilation error is added by kasan patchset,
but it is not dependent upon kasan.

--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -58,6 +58,11 @@ static inline unsigned long pud_page_vaddr(pud_t pud)
        return (unsigned long)pfn_to_virt(pud_val(pud) >> _PAGE_PFN_SHIFT);
 }

+static inline struct page *pud_page(pud_t pud)
+{
+       return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
+}
+

@palmer: I am not sure if it is too late for an RC-fix. If not, can
you send it as an RC-fix ?

Let me know if you want me to respin the patch editing the commit text.

> > I will try this patch tomorrow.
> >
> Confirmed to solve my build errors with kernel in Fedora/RISCV.
>
> david
>


--=20
Regards,
Atish

