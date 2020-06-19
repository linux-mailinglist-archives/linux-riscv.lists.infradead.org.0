Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7911FFFEB
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jun 2020 03:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ZPjvsjb4L/XUk4DOVwf5+goE/PhKwDE2Q9XXqApM3gE=; b=DEglKuayOrM5M2
	1uSLJ82YyItJ+oAqbnlLnCGTjQ/Xxi8ZVqC2KZ1vM+jwxdrpYWkhhQQkETc/0yc/WHTEOVeyCD9TX
	skIFa90151bLJDNlOd8G7YSclrslb4VWH3Cp5Ca2lSfpQWKMs8rIM7y4obQmzfDWR8tgAyjUnflDs
	Ja1LpL0FRmAml0NEPPtpaaNatB034UJLJeuMOw/aANLXV4ZXFdC1swjtGMqEe92D8T8nBRC3t8fkz
	c+rXPGvdXpR0j+bF8e4IVFm6KiobI4/Ov5ebrn41vqei+OptCTrVoRPSiYF35owoKDLdOBg0c+yuP
	wvF1MliH4mAJslaZQXaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm6Di-0004Pt-65; Fri, 19 Jun 2020 01:53:30 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm6Dd-0004PP-Aa
 for linux-riscv@lists.infradead.org; Fri, 19 Jun 2020 01:53:27 +0000
Received: by mail-pf1-x442.google.com with SMTP id a127so3684825pfa.12
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jun 2020 18:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ZPjvsjb4L/XUk4DOVwf5+goE/PhKwDE2Q9XXqApM3gE=;
 b=kl2ZlXn3hm/jWCOkK+/c4/yU6rt1osi6hbdBD9PsIY0TCyc82pVsciWwLVu4W/b2fc
 SUea1ro4dFO3uW6VBz0McApVjegphmH2ffajl3ouM8Ft/1qoIa539aszdLZyXWk6Obx0
 95/gOm5q4I6Cf6rRbTyPiHkBWH+aEhFID0TLzBDl0aa6VGLWqc5FV19NKz1BzVg1j29A
 Mipk8fdjeej3Z+EKYGiqGNfQwA99JLdogQ9RoqHLICmS++v5lzTavQL4IoEFbjh8jTPn
 eVttfK+MldKECVUfMANymYs/ssjgAAnDsEOI3mEbPD7elZiMiyVWJsqlS63UKm5DGdY2
 2FrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ZPjvsjb4L/XUk4DOVwf5+goE/PhKwDE2Q9XXqApM3gE=;
 b=Vma/kSyn7rtf3mB05wJQpGsd3uQUsNaiuwFj72RIcIXS+vV5Tkr5FN4ohCp9Z8c6hE
 ZG96erk8UeWfE1s6GKKtYqCcg7ZJJRICB4gdoZhhajaCwFELHQrVgfdLxHYYgqlYroja
 UYL1oEuLS5E4peOpfe5cUJiFEr4BQO4vKAY31RewG247Ees9awPG1P0waqNHG5VWFoH2
 FXsZqy0pdPZ5z2XJTuepIxUVMRiqFODjs1xDvoX+nAFWNx4aPOuOJ6f0ULbyl/cCrV5Y
 n9CUOHnU+O7duxKbXxnwtEmmsHx8Andl5E1CnT5qXjIluYqUPjPoqADsvnO6vkuriqL4
 qgpA==
X-Gm-Message-State: AOAM533GMQIP7DZ09p32ryl/ZkhS4W4O3O9NwE3t9vtGza/mAwvkcmX0
 MC307Bv0KQc433iNdfnZN+yy9Q==
X-Google-Smtp-Source: ABdhPJxKJB5coooxn+ajBp9fp4eq1fOEfzkiahliTn7K1WAiK9Pf+Md0brBXhSbRl/WQAYcYd/UE7g==
X-Received: by 2002:a62:76c5:: with SMTP id r188mr6197043pfc.60.1592531603969; 
 Thu, 18 Jun 2020 18:53:23 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id p8sm3571243pgs.29.2020.06.18.18.53.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 18:53:23 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:53:23 -0700 (PDT)
X-Google-Original-Date: Thu, 18 Jun 2020 18:53:21 PDT (-0700)
Subject: Re: [PATCH] RISC-V: Acquire mmap lock before invoking walk_page_range
In-Reply-To: <20200617203732.2076611-1-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>, Will Deacon <willdeacon@google.com>
Message-ID: <mhng-c8581870-6152-43a6-9d9f-28a9cc5ce39e@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_185325_418352_4F76FC50 
X-CRM114-Status: GOOD (  17.48  )
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
Cc: aou@eecs.berkeley.edu, rppt@linux.ibm.com, linux-kernel@vger.kernel.org,
 daniel.m.jordan@oracle.com, Atish Patra <Atish.Patra@wdc.com>,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 akpm@linux-foundation.org, walken@google.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 17 Jun 2020 13:37:32 PDT (-0700), Atish Patra wrote:
> As per walk_page_range documentation, mmap lock should be acquired by the
> caller before invoking walk_page_range. mmap_assert_locked gets triggered
> without that. The details can be found here.
>
> http://lists.infradead.org/pipermail/linux-riscv/2020-June/010335.html
>
> Fixes: 395a21ff859c(riscv: add ARCH_HAS_SET_DIRECT_MAP support)
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/mm/pageattr.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/mm/pageattr.c b/arch/riscv/mm/pageattr.c
> index ec2c70f84994..289a9a5ea5b5 100644
> --- a/arch/riscv/mm/pageattr.c
> +++ b/arch/riscv/mm/pageattr.c
> @@ -151,6 +151,7 @@ int set_memory_nx(unsigned long addr, int numpages)
>
>  int set_direct_map_invalid_noflush(struct page *page)
>  {
> +	int ret;
>  	unsigned long start = (unsigned long)page_address(page);
>  	unsigned long end = start + PAGE_SIZE;
>  	struct pageattr_masks masks = {
> @@ -158,11 +159,16 @@ int set_direct_map_invalid_noflush(struct page *page)
>  		.clear_mask = __pgprot(_PAGE_PRESENT)
>  	};
>
> -	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
> +	mmap_read_lock(&init_mm);
> +	ret = walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
> +	mmap_read_unlock(&init_mm);
> +
> +	return ret;
>  }
>
>  int set_direct_map_default_noflush(struct page *page)
>  {
> +	int ret;
>  	unsigned long start = (unsigned long)page_address(page);
>  	unsigned long end = start + PAGE_SIZE;
>  	struct pageattr_masks masks = {
> @@ -170,7 +176,11 @@ int set_direct_map_default_noflush(struct page *page)
>  		.clear_mask = __pgprot(0)
>  	};
>
> -	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
> +	mmap_read_lock(&init_mm);
> +	ret = walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
> +	mmap_read_unlock(&init_mm);
> +
> +	return ret;
>  }
>
>  void __kernel_map_pages(struct page *page, int numpages, int enable)

+Will, who pointed out that we could avoid the lock by using apply_page_range.

Given that the bug doesn't reproduce for me, we don't otherwise use
apply_page_range, and the commit is somewhat suspect (I screwed up that PR, and
the original patch mentions avoiding caching invalid states) I'm going to just
take this as is and add it to the list of things to look at.

I've put this on fixes: walk_page_range() directly says you must take the lock
and I don't want to wait for pedantic reasons on a boot issue, even if it's one
that doesn't show up for me.

Thanks!

