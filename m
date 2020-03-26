Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC3019385C
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 07:11:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wVoY4lXNG7Gme6In75qZRg7QM7A7s34V74dfLUTDGcs=; b=P56sh5d7jLqPmpqx3NjUKQjVt
	aqmDZxeCdQ8UkqXe7m8nzCvusoP7+DR/uxMfhPJi/9o2PDUXQqU8gxDizncNP6fuJ2bGhX7garrYb
	II3ZY8P11IREIFE/6SbzDF6vOuHH6NS4uQY0xpXpXq+CQ3BCki1JbfP9Dj4m95CK2qbo1jUNH4Pe9
	MGmRb1ZiAfno2yTNNz700PAQdaZCucVxGiXKc0WQcAuiywnboOj3LLy3kY5Y3ZptFSY6+H3/YaYjk
	SUKiTXMR2TDcDO/alvR+cGy+l1RzuZc5tOi6XW6QSHlk2cwaAth6B0c1NstTnlsCn0i4VIfiVbqC2
	G9CZ9f13Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHLjW-00037q-Ok; Thu, 26 Mar 2020 06:11:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHLjT-00037R-GS
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 06:11:12 +0000
Received: by mail-wm1-x344.google.com with SMTP id g62so5704297wme.1
 for <linux-riscv@lists.infradead.org>; Wed, 25 Mar 2020 23:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wVoY4lXNG7Gme6In75qZRg7QM7A7s34V74dfLUTDGcs=;
 b=GtxD/Ymy4a3u/qavJ6N3vSmF7WFooVCXwwer/gGsgIPEbvwmYrmqd0jJOeFyK52yIp
 RYQQ9dWaTIwuPTjfLV5Aa576UprjHLL0LCIF11YkWNScM9z+iMHBYJkKJqBM1xWVoaka
 Z/t8ltbj3yaMwq6HuMCBhzhpEMcccMnSneBQe0EnsRUPOW556BNfnl0HKyU/I8RP/kwr
 +/1ONxRdmVeD9Kq8veipry4nQ7tVTGcZdndYVOmXtprTTjQnruexgiFBFI3KSOJ4laCa
 TTD0ceety+MZBlbTIRbyFEQ/+RkliIqQyGJ2h+LrK03xlt55jWZySMS9CbQevndt12w0
 PiPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wVoY4lXNG7Gme6In75qZRg7QM7A7s34V74dfLUTDGcs=;
 b=be/BPO0qvN5bQaGCy2Hgn0cDaEfdnWMQDCb/IEM8O4vk+Vn5uXy588AbFiE6c7xx5S
 PHRBKr5xj62RQjXU2K7F9plc8WK0gWE/JlQukB7WoIVVuQlA1oCx9YEe27ebKW2h/oUF
 dhZwKBhVR1tkUhtEV2mGUjl//7w8QVDmfjCbFG4m7OKJ3WORV4PmW53yzHConMy2goj+
 lX5XUwUxsip/AdE8dtMcspZCuIC8HIEq8xxmOr5kLrzIJlbaaJcc3j8+QzQcE59vv84F
 Jcuf1+ssYYOzMdpyPj1yTk5m2jWTcCu2ArIoKXDLdRaBw+bRY4lDD6RaolHDfvkt5K1N
 OLng==
X-Gm-Message-State: ANhLgQ3PJbwrc9l+WEfTRTzfjOB6j0qSMY1s54oS+vTFwKHxCxyfkK7t
 wiR88Ju5bS+8P8IZT/q1EM3H6ma3Qdtv4FWcNRRZ+g==
X-Google-Smtp-Source: ADFU+vsqhAlYdX+RsBSOloOfGm9U+XspxBQnGbxpbbZtXLQIswfFSd9oqt4deDJoTKHdqXuonoUnouk920iaT6bCSFA=
X-Received: by 2002:a1c:6385:: with SMTP id x127mr1306256wmb.141.1585203069267; 
 Wed, 25 Mar 2020 23:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200322110028.18279-1-alex@ghiti.fr>
 <20200322110028.18279-2-alex@ghiti.fr>
In-Reply-To: <20200322110028.18279-2-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 26 Mar 2020 11:40:56 +0530
Message-ID: <CAAhSdy2OJp244wpgjxiY1ViYCnsMBmT3XA79X+D21fVTWZRhPA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/7] riscv: Get rid of compile time logic with
 MAX_EARLY_MAPPING_SIZE
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_231111_573317_9F0547A3 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

On Sun, Mar 22, 2020 at 4:31 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> There is no need to compare at compile time MAX_EARLY_MAPPING_SIZE value
> with PGDIR_SIZE since MAX_EARLY_MAPPING_SIZE is set to 128MB which is less
> than PGDIR_SIZE that is equal to 1GB: that allows to simplify early_pmd
> definition.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/mm/init.c | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 238bd0033c3f..18bbb426848e 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -247,13 +247,7 @@ static void __init create_pte_mapping(pte_t *ptep,
>
>  pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
>  pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
> -
> -#if MAX_EARLY_MAPPING_SIZE < PGDIR_SIZE
> -#define NUM_EARLY_PMDS         1UL
> -#else
> -#define NUM_EARLY_PMDS         (1UL + MAX_EARLY_MAPPING_SIZE / PGDIR_SIZE)
> -#endif
> -pmd_t early_pmd[PTRS_PER_PMD * NUM_EARLY_PMDS] __initdata __aligned(PAGE_SIZE);
> +pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
>
>  static pmd_t *__init get_pmd_virt(phys_addr_t pa)
>  {
> @@ -267,14 +261,12 @@ static pmd_t *__init get_pmd_virt(phys_addr_t pa)
>
>  static phys_addr_t __init alloc_pmd(uintptr_t va)
>  {
> -       uintptr_t pmd_num;
> -
>         if (mmu_enabled)
>                 return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
>
> -       pmd_num = (va - PAGE_OFFSET) >> PGDIR_SHIFT;
> -       BUG_ON(pmd_num >= NUM_EARLY_PMDS);
> -       return (uintptr_t)&early_pmd[pmd_num * PTRS_PER_PMD];
> +       BUG_ON((va - PAGE_OFFSET) >> PGDIR_SHIFT);
> +
> +       return (uintptr_t)early_pmd;
>  }
>
>  static void __init create_pmd_mapping(pmd_t *pmdp,
> --
> 2.20.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

