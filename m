Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CA91FFF6A
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jun 2020 02:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hSUmoRRwgG54n+dXHVLG7g+3QD6ietfWE7Sc1nJWilA=; b=JgiwzEhoRrYPJL2OeuNhcW9LO
	8SGMZiRa9K/VwTmQeH7aSpHfcHmyZd2Poy6eLiJ2pQ0IoHUlzb/ivAwtFQXlfmTeHMc4a1JUBhx2+
	bDmtA+QySl6dyyxznWTrgKDZJHCFZ23fzPlkHNgxp3THZOkeg44tfvi3kgqQEtSs1qe3z65Tr2DkG
	Rz3mHznMG6+V9Twm/EtVfzhyrvmUOeq10QxPTFCBlTyC0Kgx1sWPifwNwkMPCc3wNzq0wwVzEHOWX
	SZ9A96gmAFVZSZGkw9KdYvKoJDJ9OiLNrS36CGoUIk3+GvSqmtqAQf+XPlAydYhgxnn45YUyegK1K
	hpWvXdysA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm5C7-00044t-CP; Fri, 19 Jun 2020 00:47:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm5C4-000442-2z
 for linux-riscv@lists.infradead.org; Fri, 19 Jun 2020 00:47:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id u26so7721895wmn.1
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jun 2020 17:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hSUmoRRwgG54n+dXHVLG7g+3QD6ietfWE7Sc1nJWilA=;
 b=VF36gC7rzlmmpFllwB7XmfOD3rj0Qjlb+6Xqyr5EC9avDZVM6t/m01GDWsT8he5R64
 xFbfR7DIW3ZUy0oClJNFpyePtaFDzMgvExc7mI8KuuOZye7wYH+3sPiYR1KGDagpuGR4
 99fm8PVCja6oeGgtKfTD5MFQwx5qKklJ3CJw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hSUmoRRwgG54n+dXHVLG7g+3QD6ietfWE7Sc1nJWilA=;
 b=Q1ULhX55sqbD4a/qQllTlZutZ4OsQO4TbFDUHCOfR98mqkt0Lf6IdapRPN7qgKDbjM
 8pteVAEhCQsRh6C93Z8VPkoHE74ZitJYQorqTVdgV9HVq+12ldJtRgQEn7/RKPXbrDmo
 BD1zfHhj+bJFrCxgp1Kr7Xul+BdH3NzqjzqD5aLTEVK7p7ZAYiZXg32sdYIeQFJ2Kr9i
 oMeU547Z1s50StrCE8ZxDsIG1N92MvEnfCoPoGks2dhaK8to286CBZRwu7VY0SLmkEsx
 b3BtSzO+xGy727EalPkptyQuhe+LWkGTtUolk6+a3qOk4FfpacewyqxLgVgnTkC7SyJ4
 j68Q==
X-Gm-Message-State: AOAM530kE+iNBEn2Ygux9wn2Xlq+7DY8ad3+SW79SoGyojMF7hN5CjkZ
 YB7N2l6N5HCCEOZBG5yQ9AY/WJJ8lSaZ0052bp4X
X-Google-Smtp-Source: ABdhPJz9zYdaqyLnH397zu71ZXl/G09ckac2ECxf7ZqVDMAeEIzdHpFygif1q2ViADdhDdE3MQLvGR9Vjf1rUA++Wx4=
X-Received: by 2002:a1c:2e0e:: with SMTP id u14mr925037wmu.55.1592527661718;
 Thu, 18 Jun 2020 17:47:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200603153608.30056-1-alex@ghiti.fr>
 <20200603153608.30056-3-alex@ghiti.fr>
In-Reply-To: <20200603153608.30056-3-alex@ghiti.fr>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 18 Jun 2020 17:47:30 -0700
Message-ID: <CAOnJCU+JSuOGbOmZW-vqb-A_qR7CJc=qG16FbgOLWSm1vhJH1A@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Use PUD/PGDIR entries for linear mapping when
 possible
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_174744_155619_BE3C725C 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 3, 2020 at 8:38 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> Improve best_map_size so that PUD or PGDIR entries are used for linear
> mapping when possible as it allows better TLB utilization.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/mm/init.c | 45 +++++++++++++++++++++++++++++++++-----------
>  1 file changed, 34 insertions(+), 11 deletions(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 9a5c97e091c1..d275f9f834cf 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -424,13 +424,29 @@ static void __init create_pgd_mapping(pgd_t *pgdp,
>         create_pgd_next_mapping(nextp, va, pa, sz, prot);
>  }
>
> -static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
> +static bool is_map_size_ok(uintptr_t map_size, phys_addr_t base,
> +                          uintptr_t base_virt, phys_addr_t size)
>  {
> -       /* Upgrade to PMD_SIZE mappings whenever possible */
> -       if ((base & (PMD_SIZE - 1)) || (size & (PMD_SIZE - 1)))
> -               return PAGE_SIZE;
> +       return !((base & (map_size - 1)) || (base_virt & (map_size - 1)) ||
> +                       (size < map_size));
> +}
> +
> +static uintptr_t __init best_map_size(phys_addr_t base, uintptr_t base_virt,
> +                                     phys_addr_t size)
> +{
> +#ifndef __PAGETABLE_PMD_FOLDED
> +       if (is_map_size_ok(PGDIR_SIZE, base, base_virt, size))
> +               return PGDIR_SIZE;
> +
> +       if (pgtable_l4_enabled)
> +               if (is_map_size_ok(PUD_SIZE, base, base_virt, size))
> +                       return PUD_SIZE;
> +#endif
> +
> +       if (is_map_size_ok(PMD_SIZE, base, base_virt, size))
> +               return PMD_SIZE;
>
> -       return PMD_SIZE;
> +       return PAGE_SIZE;
>  }
>
>  /*
> @@ -576,7 +592,7 @@ void create_kernel_page_table(pgd_t *pgdir, uintptr_t map_size)
>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  {
>         uintptr_t va, end_va;
> -       uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
> +       uintptr_t map_size;
>
>         load_pa = (uintptr_t)(&_start);
>         load_sz = (uintptr_t)(&_end) - load_pa;
> @@ -587,6 +603,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>
>         kernel_virt_addr = KERNEL_VIRT_ADDR;
>
> +       map_size = best_map_size(load_pa, PAGE_OFFSET, MAX_EARLY_MAPPING_SIZE);
>         va_pa_offset = PAGE_OFFSET - load_pa;
>         va_kernel_pa_offset = kernel_virt_addr - load_pa;
>         pfn_base = PFN_DOWN(load_pa);
> @@ -700,6 +717,8 @@ static void __init setup_vm_final(void)
>
>         /* Map all memory banks */
>         for_each_memblock(memory, reg) {
> +               uintptr_t remaining_size;
> +
>                 start = reg->base;
>                 end = start + reg->size;
>
> @@ -707,15 +726,19 @@ static void __init setup_vm_final(void)
>                         break;
>                 if (memblock_is_nomap(reg))
>                         continue;
> -               if (start <= __pa(PAGE_OFFSET) &&
> -                   __pa(PAGE_OFFSET) < end)
> -                       start = __pa(PAGE_OFFSET);
>
> -               map_size = best_map_size(start, end - start);
> -               for (pa = start; pa < end; pa += map_size) {
> +               pa = start;
> +               remaining_size = reg->size;
> +
> +               while (remaining_size) {
>                         va = (uintptr_t)__va(pa);
> +                       map_size = best_map_size(pa, va, remaining_size);
> +
>                         create_pgd_mapping(swapper_pg_dir, va, pa,
>                                            map_size, PAGE_KERNEL);
> +
> +                       pa += map_size;
> +                       remaining_size -= map_size;
>                 }
>         }
>

This may not work in the RV32 with 2G memory  and if the map_size is
determined to be a page size
for the last memblock. Both pa & remaining_size will overflow and the
loop will try to map memory from zero again.

> --
> 2.20.1
>
>


-- 
Regards,
Atish

