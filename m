Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C0A123EB5
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Dec 2019 06:09:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DMFLnH21NJeulxobc8jd+JOZHWZhD/TqTEQSCvvfO5g=; b=b+D8Ei6LPVxNYKw3nsUgjyvIU
	bNTow3JXqWSM2fghkSKTdbYG9b5b4R3rvhLzVzob/NTtUsiAlEdXnPql26YvOZ44imF4KH1QPZ00E
	W3Hy+rpoJqJv214RCJA4VeKBPiXHtkANgbIJUwkJjX53cP2VZppzxpax7cqOu0VkEAsrm6bGDNak4
	LDqaKnPASAi9KaCw5nv2z7piaYLSz72YCZutzK/Sf4Wb+sy6w32+eVgHjYoDUsdC+ZM5ZthCfKflu
	h5t3WiNw8rOW7o8eZHil5dtPgwItXncvYRozh5NlYxf6MrleQUdomjONi3uyMn6TRZFzhssw8Q0zB
	wDuhTsY6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihRaW-00004r-2C; Wed, 18 Dec 2019 05:09:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihRaS-0008VB-Io
 for linux-riscv@lists.infradead.org; Wed, 18 Dec 2019 05:09:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so828807wrr.1
 for <linux-riscv@lists.infradead.org>; Tue, 17 Dec 2019 21:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DMFLnH21NJeulxobc8jd+JOZHWZhD/TqTEQSCvvfO5g=;
 b=pOJCEraLG6sj/m+Q+Cg1f/ZNeRPDCD9xsVbILF16rOjhjZtRMD/NLReS1hljov2VBn
 QDuy6ImonyoJVqkDUSkvlZkd6HzzSu5aAKAhBEfTpkKqdTaBgGwubR695w8qHW4BA4OQ
 htIk7KvDBfgJEd8c6Mj5M4bZ/zOjuHYAIJX9vpOCHrtpvQCwRE+s/5bdlDx6SJCNh/MK
 3nSXWVjnC4fusP8UGiwgDvZjrBcfCxXL3w3Pf8htbgz0mI+IlhQ5eyE0zTOijPT5p+ld
 UvsSE4uWeOzq4NEMF5sZv6QNE0A4DbfF9HIYVTJJ9NJGDUrEb2nAwJb3vJBS1I4weZMs
 HAsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DMFLnH21NJeulxobc8jd+JOZHWZhD/TqTEQSCvvfO5g=;
 b=BzrdFEiyyBAGVMMysy49Naz2ScE2cOfZr9kJMzxOkMBRJzmNadHYT81TiM8+gkrsb/
 t0HqMGOUAtps9W3TcnNuWH5zj4hd/emtZ5sUIFucg98QNKP12z7FbniaQZJqCZ6DvYHf
 qX1ITpugJMsNerHnpMTqdjujjw6riTOQEcO6+t8P6xZEX4/J0GNv5SaCphsaqzWwLqMW
 4ZsKCruOvsL2qaVL4fLJj37FBypoKKZur0TKXA0aF0iMGaGyXyc5LNzHJfwVgK2iHiX3
 X46ErWpbgaE1YZXWdjW1L27XPPyolH4wcR+xRJY7jTD5B/JZpTuyMsz4REVtxPrfXCw+
 Bngw==
X-Gm-Message-State: APjAAAUprppMVDAuNIsxEfib6KIrkclL+vf4SP6fxPt/5ra/t8qUW4Iy
 fapzMnFJ5NWWhhlufKmfuL66VKxmWa4PpqeAfnE=
X-Google-Smtp-Source: APXvYqymmBZJ8ipE4muhBx7w/9ro17xjwTEBDtEd8pQpMmt0+M/PkTNH1ms/vTESSvgKX1xaz5BZOBdef15tASHOn9o=
X-Received: by 2002:adf:e74a:: with SMTP id c10mr301019wrn.386.1576645763875; 
 Tue, 17 Dec 2019 21:09:23 -0800 (PST)
MIME-Version: 1.0
References: <20191217131530.513096-1-david.abdurachmanov@sifive.com>
 <CAAhSdy1pz5Zmrdm6hBxugjbBiw3d25XZJ47rpKgVk7fHaoEr6Q@mail.gmail.com>
In-Reply-To: <CAAhSdy1pz5Zmrdm6hBxugjbBiw3d25XZJ47rpKgVk7fHaoEr6Q@mail.gmail.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Wed, 18 Dec 2019 07:08:47 +0200
Message-ID: <CAEn-LTpvd3=qR8X91JpE6Or3aEH9=F3jz7_N4Y3fA+CgMu+wJg@mail.gmail.com>
Subject: Re: [PATCH] define vmemmap before pfn_to_page calls
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_210928_646455_E3CB6498 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Yash Shah <yash.shah@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Logan Gunthorpe <logang@deltatee.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 5:46 AM Anup Patel <anup@brainfault.org> wrote:
>
> On Tue, Dec 17, 2019 at 6:45 PM David Abdurachmanov
> <david.abdurachmanov@gmail.com> wrote:
> >
> > pfn_to_page call depends on `vmemmap` being available before the call.
> > This caused compilation errors in Fedora/RISCV with 5.5-rc2 and was caused
> > by NOMMU changes which moved declarations after functions definitions.
> >
> > Signed-off-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
> > Fixes: 6bd33e1ece52 ("riscv: add nommu support")
> > ---
> >  arch/riscv/include/asm/pgtable.h | 34 ++++++++++++++++----------------
> >  1 file changed, 17 insertions(+), 17 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> > index 7ff0ed4f292e..d8c89e6e6b3d 100644
> > --- a/arch/riscv/include/asm/pgtable.h
> > +++ b/arch/riscv/include/asm/pgtable.h
> > @@ -90,6 +90,23 @@ extern pgd_t swapper_pg_dir[];
> >  #define __S110 PAGE_SHARED_EXEC
> >  #define __S111 PAGE_SHARED_EXEC
> >
> > +#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
> > +#define VMALLOC_END      (PAGE_OFFSET - 1)
> > +#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> > +
> > +/*
> > + * Roughly size the vmemmap space to be large enough to fit enough
> > + * struct pages to map half the virtual address space. Then
> > + * position vmemmap directly below the VMALLOC region.
> > + */
> > +#define VMEMMAP_SHIFT \
> > +       (CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> > +#define VMEMMAP_SIZE   BIT(VMEMMAP_SHIFT)
> > +#define VMEMMAP_END    (VMALLOC_START - 1)
> > +#define VMEMMAP_START  (VMALLOC_START - VMEMMAP_SIZE)
> > +
> > +#define vmemmap                ((struct page *)VMEMMAP_START)
> > +
> >  static inline int pmd_present(pmd_t pmd)
> >  {
> >         return (pmd_val(pmd) & (_PAGE_PRESENT | _PAGE_PROT_NONE));
> > @@ -400,23 +417,6 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
> >  #define __pte_to_swp_entry(pte)        ((swp_entry_t) { pte_val(pte) })
> >  #define __swp_entry_to_pte(x)  ((pte_t) { (x).val })
> >
> > -#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
> > -#define VMALLOC_END      (PAGE_OFFSET - 1)
> > -#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> > -
> > -/*
> > - * Roughly size the vmemmap space to be large enough to fit enough
> > - * struct pages to map half the virtual address space. Then
> > - * position vmemmap directly below the VMALLOC region.
> > - */
> > -#define VMEMMAP_SHIFT \
> > -       (CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> > -#define VMEMMAP_SIZE   BIT(VMEMMAP_SHIFT)
> > -#define VMEMMAP_END    (VMALLOC_START - 1)
> > -#define VMEMMAP_START  (VMALLOC_START - VMEMMAP_SIZE)
> > -
> > -#define vmemmap                ((struct page *)VMEMMAP_START)
> > -
> >  #define PCI_IO_SIZE      SZ_16M
> >  #define PCI_IO_END       VMEMMAP_START
> >  #define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
> > --
> > 2.23.0
> >
>
> Can you add a comment for "#define vmemmap" about your findings ?

I send v2 in a few hours with extra comment. I will mention that this
is needed if CONFIG_SPARSEMEM_VMEMMAP=y
See https://github.com/torvalds/linux/blob/master/include/asm-generic/memory_model.h

>
> Otherwise looks good to me.
>
> Reviewed-by: Anup Patel <anup@brainfault.org>
>
> Regards,
> Anup

