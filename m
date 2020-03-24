Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18FE1905CF
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 07:38:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1dN24D76Gk0W1yNvjYGZBLw0xDWrmJ8iigdYGbYenM4=; b=H6aqgWozTBF611tT7l9YTq/BD
	sAUWKxd7m+IKtLm7EYIZCCelJLs57hfr6bT3jY7dajVOOdj5KYNc5oBHtO0Jw7+/um0zhmdMXYdSY
	NoRcyXK2kzbDax1pA7zpSvQj0z5xxxPjKXApiIZr9Hr5p/7q0+bM+PwyR4WmdtO0hRDHbB529lxiu
	gpcaAq2cqdM3535pGoNFjPh2ZuLeox1uyN6LsW4BzF/Nwy+SlfIvjtALdnBqR4WcIm83Jvnb92rMN
	PPu0IvsDvYMRR+Ak7+Xtz1Mc5eCSPcJb1CLhb8GukJ2HyFORJvwFmmtIreLTeh1iI1xxY0lNepUpJ
	DUAWLTiog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGdCp-0000wV-Lg; Tue, 24 Mar 2020 06:38:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGdCl-0000w1-IT
 for linux-riscv@lists.infradead.org; Tue, 24 Mar 2020 06:38:29 +0000
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C78852078E
 for <linux-riscv@lists.infradead.org>; Tue, 24 Mar 2020 06:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585031907;
 bh=YHmxPLk7xsrCqMibnpPOp4+KlNmcqIXEP+uJ6dA0dQA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sKWJNytmD0Hbm46pl2mSUPX5IUNmLW/zyfsiSGwnxI8QKfoKFCzDg4OpgDwriJvYZ
 gf7fMQub3wDLINiKEal0YRbbqXNCdqyVNn7pkoT5qGqArunLmyLxaNVWdMO5tAZIQz
 ZHS4iXk6t1GGMGXZJQr1NYLpG6P6ljFvv8pmPfqc=
Received: by mail-lf1-f44.google.com with SMTP id v4so8556702lfo.12
 for <linux-riscv@lists.infradead.org>; Mon, 23 Mar 2020 23:38:26 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1vnlQj4+tihEYGTQjgXUDQiyV1gxPZrdnYDRS1WPeOdNfU1pvw
 8jBVwewZwa9FBJV3ilWtB8vrJpO6XHDLDjOKh+s=
X-Google-Smtp-Source: ADFU+vuVBnqtUtC8s4liLpWIYdpYefGqMsDSqXF43YebtyO81P2fmLftfJ85/O71bF8FyG2Y4poDJ9zX2AnRJaLWnNc=
X-Received: by 2002:a19:41c5:: with SMTP id o188mr4668305lfa.52.1585031904839; 
 Mon, 23 Mar 2020 23:38:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200324054945.26733-1-nickhu@andestech.com>
In-Reply-To: <20200324054945.26733-1-nickhu@andestech.com>
From: Guo Ren <guoren@kernel.org>
Date: Tue, 24 Mar 2020 14:38:13 +0800
X-Gmail-Original-Message-ID: <CAJF2gTS-SokSES0fUQxEXJpX3Puk8r-Dyoowhv422T4r-PVO0w@mail.gmail.com>
Message-ID: <CAJF2gTS-SokSES0fUQxEXJpX3Puk8r-Dyoowhv422T4r-PVO0w@mail.gmail.com>
Subject: Re: [PATCH] riscv: mm: synchronize MMU after page table update
To: Nick Hu <nickhu@andestech.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_233827_653127_EA147170 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alan Kao <alankao@andestech.com>, Anup Patel <anup@brainfault.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, npiggin@gmail.com,
 Mike Rapoport <rppt@linux.ibm.com>, alexios.zavras@intel.com,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>, nylon7@andestech.com,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 1:50 PM Nick Hu <nickhu@andestech.com> wrote:
>
> Similar to commit bf587caae305 ("riscv: mm: synchronize MMU after pte change")
>
> For those riscv implementations whose TLB cannot synchronize with dcache,
> an SFENCE.VMA is necessary after page table update.
> This patch fixed two functions:
>
> 1. pgd_alloc
> During fork, a parent process prepares pgd for its child and updates satp
> later, but they may not run on the same core. Adding a remote SFENCE.VMA to
> invalidate TLB in other cores is needed. Thus use flush_tlb_all() instead
> of local_flush_tlb_all() here.
> Similar approaches can be found in arm and csky.
>
> 2. __set_fixmap
> Add a SFENCE.VMA after fixmap pte update.
> Similar approaches can be found in arm and sh.
>
> Signed-off-by: Nick Hu <nickhu@andestech.com>
> Signed-off-by: Nylon Chen <nylon7@andestech.com>
> Cc: Alan Kao <alankao@andestech.com>
> ---
>  arch/riscv/include/asm/pgalloc.h | 1 +
>  arch/riscv/mm/init.c             | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/asm/pgalloc.h b/arch/riscv/include/asm/pgalloc.h
> index 3f601ee8233f..071468fa14b7 100644
> --- a/arch/riscv/include/asm/pgalloc.h
> +++ b/arch/riscv/include/asm/pgalloc.h
> @@ -51,6 +51,7 @@ static inline pgd_t *pgd_alloc(struct mm_struct *mm)
>                 memcpy(pgd + USER_PTRS_PER_PGD,
>                         init_mm.pgd + USER_PTRS_PER_PGD,
>                         (PTRS_PER_PGD - USER_PTRS_PER_PGD) * sizeof(pgd_t));
> +               flush_tlb_all();
Are you sure to put a tlb flush operation here ? I think it should be
a dcache flush ops (but there is no solution for riscv ISA :P)

Ref to csky's implementation, just some old cores need sync dcache
with tlb by a simple dcache flush range ops and tlb ops should be put
in another place due to Linux infrastructure.

static inline pgd_t *pgd_alloc(struct mm_struct *mm)
{
        pgd_t *ret;
        pgd_t *init;

        ret = (pgd_t *) __get_free_pages(GFP_KERNEL, PGD_ORDER);
        if (ret) {
                init = pgd_offset(&init_mm, 0UL);
                pgd_init((unsigned long *)ret);
                memcpy(ret + USER_PTRS_PER_PGD, init + USER_PTRS_PER_PGD,
                        (PTRS_PER_PGD - USER_PTRS_PER_PGD) * sizeof(pgd_t));
                /* prevent out of order excute */
                smp_mb();
#ifdef CONFIG_CPU_NEED_TLBSYNC
                dcache_wb_range((unsigned int)ret,
                                (unsigned int)(ret + PTRS_PER_PGD));
#endif
        }

        return ret;
}


>         }
>         return pgd;
>  }
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index fab855963c73..a7f329503ed0 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -203,8 +203,8 @@ void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
>                 set_pte(ptep, pfn_pte(phys >> PAGE_SHIFT, prot));
>         } else {
>                 pte_clear(&init_mm, addr, ptep);
> -               local_flush_tlb_page(addr);
>         }
> +       local_flush_tlb_page(addr);
>  }
>
>  static pte_t *__init get_pte_virt(phys_addr_t pa)
> --
> 2.17.0
>
>


-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

