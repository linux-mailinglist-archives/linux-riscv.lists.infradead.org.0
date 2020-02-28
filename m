Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F522172FA9
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Feb 2020 05:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6J9poe7L3fgO6iROGjXXzLpbZbZiJ8HzNPUuKbvpBQ=; b=n07uaxv4nlC05h
	hTiNsL0dUGmrlopga+3Umo7Z22sbHc8Z5i9+PLZ4D4ias93K84mt8ZE/MyzVsGLAb3W8InMG1HFTZ
	n3tNJmMLai+xSxHPen00CXmY4gIUJA2Ks09XXwgZkh1BHbFM24JnXq/78upkKgK+tGrJRYqwbzVCM
	TqbkwjcR6S5CNSxBZtEU72kmnrXnWRbea0ZNSrFOJGMSGv1nZIJHzgouf+o8XEP2S49Ov9jtSWn6S
	rfpZaRWokgGGIH+lgswAj3VdQdxpaSvLsz6vvGTUPhxfppCTQc18l/MvQFJcrflpGm93KGpQpHf98
	LF6ZXHClldOS2ArOa+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Wx6-0005cr-9W; Fri, 28 Feb 2020 04:08:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Wx3-0005cY-Fe
 for linux-riscv@lists.infradead.org; Fri, 28 Feb 2020 04:08:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id c13so1353836wrq.10
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 20:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=E6J9poe7L3fgO6iROGjXXzLpbZbZiJ8HzNPUuKbvpBQ=;
 b=hQDPlPu8i3UJQcAlFtZ1KPi0aDhVdJkeXxLsguGG1Tc7naaWqI5ah5b3ihvxIkto2b
 v6ZDujFuWr7KLdEUBiPLR5GDTrZe7oaUjM1RagyK1zH8LOZr1GU6/dvq9T+uSzwHdN1Z
 Ue0SfVA36T0pT+6Xz6egXnsKigQzLufF7186+OZW6SCax5kzWrCGeasoLAgnTWc0sxVa
 bI/ObTs5zwg1QTdM2cBtvTT35DvEURwJtsCq/amrCqwqKttX2fvrOrPOTj9i0qHsbUBN
 zCSAewl8rQbz27h73V2kSzxvnQ2pteIdNNAmxk4u9r1TvbC3ExHRbz+DO/BOWTPY8yYB
 GdwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=E6J9poe7L3fgO6iROGjXXzLpbZbZiJ8HzNPUuKbvpBQ=;
 b=pFbcu4P2R9Gm05WdKeXcOUWD1b8qkbv+QvceD0NAtJK/LstVujMSnoz0zrwYebM5ew
 6fckSVUzAXdUQjCoO6v79Tt0Q+J43CoO0Ov/LW9XFkWHCXMG527LkgL9Drt+nqqfCdIU
 eWiabnwotc6IdDeZU1X2p4xmXL49YuJOQF5ZgBgfvu04V/6CMA8XRlTkbKnGJsBgXNj3
 W1kv3OzaBkt6iqTjE/lXJKcHzfT6uUoZm7PAqMDQs90JoHrq2doXCvbZgsL47mNMUrv1
 wyKoJix4tCQivN59zxv/x6zOH4UImGYwob2iDr6waPQR5qrxtc8/IrOdfssR1ct4uB/F
 pWuw==
X-Gm-Message-State: APjAAAV+7QfZXoRJXTbLgMVRTkkH/i7bCK0EQSfzc4wAqrAAW/of2G2S
 pay2sH12wcyWcckMYdbPTTBDyk/qowh1w87wbdHuyQ==
X-Google-Smtp-Source: APXvYqzGY7zbGE/wiCP2QlLt8CfEyzYl9aJdIcOxadwj5rJwYC+4s4ClgXEgopjqCgej2/koq6sQoObqltMWBHF9Tr8=
X-Received: by 2002:adf:ec84:: with SMTP id z4mr2481605wrn.61.1582862915813;
 Thu, 27 Feb 2020 20:08:35 -0800 (PST)
MIME-Version: 1.0
References: <20200224193436.26860-1-atish.patra@wdc.com>
In-Reply-To: <20200224193436.26860-1-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 28 Feb 2020 09:38:23 +0530
Message-ID: <CAAhSdy0FH_89dQhWbLJmLsMQV6Lyd8+WE=Ks13Nx88j_dy_b7g@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Move all address space definition macros to one
 place
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_200837_526247_C96A8059 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Nick Hu <nickhu@andestech.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 1:04 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> If both CONFIG_KASAN and CONFIG_SPARSEMEM_VMEMMAP are set, we get the
> following compilation error.
>
> ---------------------------------------------------------------
> ./arch/riscv/include/asm/pgtable-64.h: In function =E2=80=98pud_page=E2=
=80=99:
> ./include/asm-generic/memory_model.h:54:29: error: =E2=80=98vmemmap=E2=80=
=99 undeclared
> (first use in this function); did you mean =E2=80=98mem_map=E2=80=99?
>  #define __pfn_to_page(pfn) (vmemmap + (pfn))
>                              ^~~~~~~
> ./include/asm-generic/memory_model.h:82:21: note: in expansion of
> macro =E2=80=98__pfn_to_page=E2=80=99
>
>  #define pfn_to_page __pfn_to_page
>                      ^~~~~~~~~~~~~
> ./arch/riscv/include/asm/pgtable-64.h:70:9: note: in expansion of macro
> =E2=80=98pfn_to_page=E2=80=99
>   return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
> ---------------------------------------------------------------
>
> Fix the compliation errors by moving all the address space definition
> macros before including pgtable-64.h.
>
> Cc: stable@vger.kernel.org
> Fixes: 8ad8b72721d0 (riscv: Add KASAN support)
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/pgtable.h | 78 +++++++++++++++++---------------
>  1 file changed, 41 insertions(+), 37 deletions(-)
>
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pg=
table.h
> index 453afb0a570a..4f6ee48a42e8 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -19,6 +19,47 @@
>  #include <asm/tlbflush.h>
>  #include <linux/mm_types.h>
>
> +#ifdef CONFIG_MMU
> +
> +#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
> +#define VMALLOC_END      (PAGE_OFFSET - 1)
> +#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> +
> +#define BPF_JIT_REGION_SIZE    (SZ_128M)
> +#define BPF_JIT_REGION_START   (PAGE_OFFSET - BPF_JIT_REGION_SIZE)
> +#define BPF_JIT_REGION_END     (VMALLOC_END)
> +
> +/*
> + * Roughly size the vmemmap space to be large enough to fit enough
> + * struct pages to map half the virtual address space. Then
> + * position vmemmap directly below the VMALLOC region.
> + */
> +#define VMEMMAP_SHIFT \
> +       (CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> +#define VMEMMAP_SIZE   BIT(VMEMMAP_SHIFT)
> +#define VMEMMAP_END    (VMALLOC_START - 1)
> +#define VMEMMAP_START  (VMALLOC_START - VMEMMAP_SIZE)
> +
> +/*
> + * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if kernel
> + * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
> + */
> +#define vmemmap                ((struct page *)VMEMMAP_START)
> +
> +#define PCI_IO_SIZE      SZ_16M
> +#define PCI_IO_END       VMEMMAP_START
> +#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
> +
> +#define FIXADDR_TOP      PCI_IO_START
> +#ifdef CONFIG_64BIT
> +#define FIXADDR_SIZE     PMD_SIZE
> +#else
> +#define FIXADDR_SIZE     PGDIR_SIZE
> +#endif
> +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> +
> +#endif
> +
>  #ifdef CONFIG_64BIT
>  #include <asm/pgtable-64.h>
>  #else
> @@ -90,31 +131,6 @@ extern pgd_t swapper_pg_dir[];
>  #define __S110 PAGE_SHARED_EXEC
>  #define __S111 PAGE_SHARED_EXEC
>
> -#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
> -#define VMALLOC_END      (PAGE_OFFSET - 1)
> -#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> -
> -#define BPF_JIT_REGION_SIZE    (SZ_128M)
> -#define BPF_JIT_REGION_START   (PAGE_OFFSET - BPF_JIT_REGION_SIZE)
> -#define BPF_JIT_REGION_END     (VMALLOC_END)
> -
> -/*
> - * Roughly size the vmemmap space to be large enough to fit enough
> - * struct pages to map half the virtual address space. Then
> - * position vmemmap directly below the VMALLOC region.
> - */
> -#define VMEMMAP_SHIFT \
> -       (CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> -#define VMEMMAP_SIZE   BIT(VMEMMAP_SHIFT)
> -#define VMEMMAP_END    (VMALLOC_START - 1)
> -#define VMEMMAP_START  (VMALLOC_START - VMEMMAP_SIZE)
> -
> -/*
> - * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if kernel
> - * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
> - */
> -#define vmemmap                ((struct page *)VMEMMAP_START)
> -
>  static inline int pmd_present(pmd_t pmd)
>  {
>         return (pmd_val(pmd) & (_PAGE_PRESENT | _PAGE_PROT_NONE));
> @@ -452,18 +468,6 @@ static inline int ptep_clear_flush_young(struct vm_a=
rea_struct *vma,
>  #define __pte_to_swp_entry(pte)        ((swp_entry_t) { pte_val(pte) })
>  #define __swp_entry_to_pte(x)  ((pte_t) { (x).val })
>
> -#define PCI_IO_SIZE      SZ_16M
> -#define PCI_IO_END       VMEMMAP_START
> -#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
> -
> -#define FIXADDR_TOP      PCI_IO_START
> -#ifdef CONFIG_64BIT
> -#define FIXADDR_SIZE     PMD_SIZE
> -#else
> -#define FIXADDR_SIZE     PGDIR_SIZE
> -#endif
> -#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> -
>  /*
>   * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
>   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> --
> 2.25.0
>

Looks good to me. At least now all virtual memory layout related
defines are in one place.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

