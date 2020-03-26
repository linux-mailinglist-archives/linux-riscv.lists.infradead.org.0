Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5940C19385E
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 07:12:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6iVJEBE2l6FzbfPyR2ep6scPrGoajxaZ4h+lpNzkdaU=; b=aRZ4i3stbTMF4XayqdznUws1k
	l2ml943KdLx6zq2NNRF8iszWrwdb957NKuOeouCYErrxVVZWy09FqSktkoNbLwNgRWx8bRsrZabi2
	PRSu+nasLwYT0BRNEGzxEENgeNlEMfpL/lNSF6/KxypxbNOctfvLt6ipxv16Wwf7Dp7W+Ed5J6gCe
	dMdu7oWCH8OJftFrl3Iy6ub7QJAQxATRvSQqXvx7ZNDOZs4iRaOJvyqYW4pWDQ/51SxDjAkxmDKsS
	+fiyJLDr64Md6GRFfMn9dRPVH09Ck4Fj9eL6fe13qzrdJq4YJooLnp0MtTY7pyT1KQulkWYPhxRn+
	pR+EajUPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHLkj-0003Fy-Q8; Thu, 26 Mar 2020 06:12:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHLkh-0003FB-5q
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 06:12:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id j17so6208433wru.13
 for <linux-riscv@lists.infradead.org>; Wed, 25 Mar 2020 23:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6iVJEBE2l6FzbfPyR2ep6scPrGoajxaZ4h+lpNzkdaU=;
 b=QtYjUzf2P1l3aZ5ViM0AXCBNEOmeCg7YkcK9AKPKQkAxtoYvAEzhuiIGxUC93SLGJB
 SWZqn9Ip8CnObGCYhZoyKQ6goFeZwS7ZgT7qoZOiKXCWz+KNIXTIvJ8f3OcziFoDm/lU
 vJGeYXQgq/Ps18Q/m+RuVGx5YNIfnC/f4RM7oC878jRwQB1vsHXtwP9leiPXy0rLwpff
 15FG4NQCoU9Ro8TgJW5sDX099+gN/CyeFtLaDZgFUQ8309kCFYwo2zptEO5qkEB85zP8
 X37hqA59dosccmGC/Hr+EXMwCl1Y0dgSPT5K4y8vQbZyxjhxyU+draLsHUjksR7BRXnW
 7V3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6iVJEBE2l6FzbfPyR2ep6scPrGoajxaZ4h+lpNzkdaU=;
 b=fMmezOWfcIbkZ/QxjymU4DrUFhm1EAYq30AsU7FEDfo1R2AMktol1p4cjk/EJslLKP
 lfoxJW4+FRrGNRPmBROIYeR+zhEqwfU0LCoFbRoUmdd1EMd7uEgu5Z1blJsWV/cFCS/8
 8E8gegLS1cicmyf/jBfCwm2Um6no9qXaAc2NVydG0JcncR5K24Rjdv2HIKMCkgx/tTHZ
 0msV9dLYNlGKjF7r/ia+Eo4qXZ0xhAMYH0qRBtvs0j4wifw+FCYwVnNBZesCCAqQfBVB
 PLZiDVtI4pLxw2BKwnODnxjaD1O7ecuzL1hm//FQzHi32b3bmKH8BuKWUVy/pSOOxAgi
 Tmhw==
X-Gm-Message-State: ANhLgQ2PK9iXxcrLKvHeqfbLb4bpxLRiK4JEvGCd/ZG0iLbfkPsPNyER
 nrFGzeTAExMS9XyKy47QaKooalJzh5Q1+2oV2kUiGw==
X-Google-Smtp-Source: ADFU+vsGBcgrtymYA34TGX39gbGyDbIzJbSU5IUH9Cuy+Iq3wu9SECnH/1EMq8qEeGQG6GaxjYtwW03efdZ5dyifAf8=
X-Received: by 2002:adf:f309:: with SMTP id i9mr7987326wro.0.1585203140990;
 Wed, 25 Mar 2020 23:12:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200322110028.18279-1-alex@ghiti.fr>
 <20200322110028.18279-3-alex@ghiti.fr>
In-Reply-To: <20200322110028.18279-3-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 26 Mar 2020 11:42:07 +0530
Message-ID: <CAAhSdy2er5y4xTBFFsR3Sx2Jffn=5Pn3KHXopwdOTCC5UJRmDA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/7] riscv: Allow to dynamically define VA_BITS
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_231227_221176_F354E140 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 4:32 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> With 4-level page table folding at runtime, we don't know at compile time
> the size of the virtual address space so we must set VA_BITS dynamically
> so that sparsemem reserves the right amount of memory for struct pages.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/Kconfig                 | 10 ----------
>  arch/riscv/include/asm/pgtable.h   | 10 +++++++++-
>  arch/riscv/include/asm/sparsemem.h |  2 +-
>  3 files changed, 10 insertions(+), 12 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index f5f3d474504d..8e4b1cbcf2c2 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -99,16 +99,6 @@ config ZONE_DMA32
>         bool
>         default y if 64BIT
>
> -config VA_BITS
> -       int
> -       default 32 if 32BIT
> -       default 39 if 64BIT
> -
> -config PA_BITS
> -       int
> -       default 34 if 32BIT
> -       default 56 if 64BIT
> -
>  config PAGE_OFFSET
>         hex
>         default 0xC0000000 if 32BIT && MAXPHYSMEM_2GB
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> index 185ffe3723ec..dce401eed1d3 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -26,6 +26,14 @@
>  #endif /* CONFIG_64BIT */
>
>  #ifdef CONFIG_MMU
> +#ifdef CONFIG_64BIT
> +#define VA_BITS                39
> +#define PA_BITS                56
> +#else
> +#define VA_BITS                32
> +#define PA_BITS                34
> +#endif
> +
>  /* Number of entries in the page global directory */
>  #define PTRS_PER_PGD    (PAGE_SIZE / sizeof(pgd_t))
>  /* Number of entries in the page table */
> @@ -108,7 +116,7 @@ extern pgd_t swapper_pg_dir[];
>   * position vmemmap directly below the VMALLOC region.
>   */
>  #define VMEMMAP_SHIFT \
> -       (CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> +       (VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
>  #define VMEMMAP_SIZE   BIT(VMEMMAP_SHIFT)
>  #define VMEMMAP_END    (VMALLOC_START - 1)
>  #define VMEMMAP_START  (VMALLOC_START - VMEMMAP_SIZE)
> diff --git a/arch/riscv/include/asm/sparsemem.h b/arch/riscv/include/asm/sparsemem.h
> index 45a7018a8118..f08d72155bc8 100644
> --- a/arch/riscv/include/asm/sparsemem.h
> +++ b/arch/riscv/include/asm/sparsemem.h
> @@ -4,7 +4,7 @@
>  #define _ASM_RISCV_SPARSEMEM_H
>
>  #ifdef CONFIG_SPARSEMEM
> -#define MAX_PHYSMEM_BITS       CONFIG_PA_BITS
> +#define MAX_PHYSMEM_BITS       PA_BITS
>  #define SECTION_SIZE_BITS      27
>  #endif /* CONFIG_SPARSEMEM */
>
> --
> 2.20.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

