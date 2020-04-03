Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932EC19DABE
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Apr 2020 18:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=DTKHsm8Q5bJhu3UTT4PCRZaQwVAbDrF/ulx8WyttahM=; b=XdnL/2jPUK8KIS
	stx8O8BrRZxt6Zsp3WTbmu/cez9ZdbhdFZ+3EruAyx5rKfLtwVNrcKiIPqQiZOrs7akNo1GAp7LY5
	hjrP9ivYO1OZDQaps8UVojhC1ygLC98Wub3CRgxXebg5SSLNWr/2+c5yFaE5uu/LHvsT/NKv/WWi1
	ff2K4hVIJwrjPBeXVrFvPRS5hmjoS5vwN2dYWyApcwOaxZkJlQYZQ8478qO58veJWeW/8Ya6Pe8OA
	fR6Hb0mXgJUFvtT55lPjaZ9u3kNYdPdtxyoahXkvfFDVTQHHq5buKCu+hO6hmJqkNLmIJ8j8xh/zx
	jIS+jELUwucldQVdbHjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOnA-0004Wc-LF; Fri, 03 Apr 2020 16:03:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOn7-0004WE-Ep
 for linux-riscv@lists.infradead.org; Fri, 03 Apr 2020 16:03:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id a13so3685726pfa.2
 for <linux-riscv@lists.infradead.org>; Fri, 03 Apr 2020 09:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=DTKHsm8Q5bJhu3UTT4PCRZaQwVAbDrF/ulx8WyttahM=;
 b=madpdA2IZsdgOJo7MhH9aIn36WnyTvf608VJNjKU4iQQnucZhT80EAfp8b5iaHLY33
 LSYMLiu30MGYQ2eY6huT6/vbDK2QXwsRGx2IDE0vfuf628W+WPHsUFyRcOyxzWNEkEb/
 cKNLyPO2tHnPFQ0gvQ+EAz+FeGw8lYU4LyeH9kS2XjJgi6fCfhK4gNYNoniPuc2Z9o61
 UmT0irwwMz67xe5HPJeTVth2tZl5jbMI/1MSsKLPl+NPmIckAnS1WRuMKKI333Y2bOMM
 sLiczLpvNYRE+J+kFgg7/AnUK+ylht12j4YFpVxc/15pFgZll6Mpx1TnmpQYNwhU2puc
 Tf1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=DTKHsm8Q5bJhu3UTT4PCRZaQwVAbDrF/ulx8WyttahM=;
 b=WL/eUehrJl1OQDmNsw0gss78K2BkDjkCyNDWZlbppF43qnNVX/dtjqN706psPuYXA6
 GvM2ZjhiCvGacRn3/MWAzZfAW/9AMW5dybhKwavmTrvLxSJkkhV/Gm+yJMffN1H+Fxu5
 7jl29C/pZRY2jnBAVtMdo37+/jaRTmvJTTAm9gPHAybWMFCauy/7TAdqPDDPZ3XMH0zO
 LbuV1mx5oIY7QdZDzORJY6eBXhmYw41/o7tU5CoRCBYJoGM/Rd/CmMgG9piEyVo6YQlJ
 rm7vYMej2EWE4tH2e6YXmeUqATaGXPEpupzV7a8NWPOhj9+4X3PXryMwd4B8qQUV7KPG
 2+JA==
X-Gm-Message-State: AGi0PubHQZ7wY0Tnlbf38ZVyIUYkG5bahlFpEbl7QDT8ndg0pKJCMkKA
 jJDYLL5MV9MTYCqSs/NFyIqiVQ==
X-Google-Smtp-Source: APiQypLwNtCv00HA9e0S6QvIOb3nB6LJV0niSjYaoe896vIwkyMM8yAXAWSWnXGBB9z28MtkIAFODQ==
X-Received: by 2002:a65:5a87:: with SMTP id c7mr8682833pgt.237.1585929812310; 
 Fri, 03 Apr 2020 09:03:32 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id l9sm4212358pff.16.2020.04.03.09.03.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 09:03:31 -0700 (PDT)
Date: Fri, 03 Apr 2020 09:03:31 -0700 (PDT)
X-Google-Original-Date: Fri, 03 Apr 2020 09:03:23 PDT (-0700)
Subject: Re: [PATCH] riscv: mm: synchronize MMU after page table update
In-Reply-To: <20200324054945.26733-1-nickhu@andestech.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: nickhu@andestech.com
Message-ID: <mhng-3d02c4a1-effd-4074-a3e0-de38c04ec8d7@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_090333_497353_76D25495 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, alankao@andestech.com,
 nickhu@andestech.com, anup@brainfault.org, linux-kernel@vger.kernel.org,
 npiggin@gmail.com, rppt@linux.ibm.com, alexios.zavras@intel.com,
 linux-riscv@lists.infradead.org, guoren@kernel.org, zong.li@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, akpm@linux-foundation.org,
 nylon7@andestech.com, tglx@linutronix.de
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Mar 2020 22:49:45 PDT (-0700), nickhu@andestech.com wrote:
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
>  		memcpy(pgd + USER_PTRS_PER_PGD,
>  			init_mm.pgd + USER_PTRS_PER_PGD,
>  			(PTRS_PER_PGD - USER_PTRS_PER_PGD) * sizeof(pgd_t));
> +		flush_tlb_all();
>  	}
>  	return pgd;
>  }
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index fab855963c73..a7f329503ed0 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -203,8 +203,8 @@ void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
>  		set_pte(ptep, pfn_pte(phys >> PAGE_SHIFT, prot));
>  	} else {
>  		pte_clear(&init_mm, addr, ptep);
> -		local_flush_tlb_page(addr);
>  	}
> +	local_flush_tlb_page(addr);
>  }
>
>  static pte_t *__init get_pte_virt(phys_addr_t pa)

As a general rule, any fences are supposed to have a comment describing why
they're there.  The generic fences will be caught by checkpatch, but I don't
remember if these are.

