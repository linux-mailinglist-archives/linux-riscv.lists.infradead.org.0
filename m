Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B4319D9ED
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Apr 2020 17:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Fx4AohXcpCWWeloAMp1+tr3EHYpkAySrgcIIxr7kcOY=; b=hfzOVKxfscRg9O
	55hf0pWaI9lCLQtRQWWp3qalunGS+X14YYzzLEAv/zMHuKYTruUeG+i5Zvz/uNhr9reK3jkQ4zDoV
	5aaquOjkTXh2d+gUA8NsTHtlulf67AV0gw+UR7i9Zz6mMlcHnEvVChailWBBqLgu01ZhQbqkdFHu1
	tMzRBykMZYGFsyLkPBtd22OeJVEpm4F326Hwlw6yCDRQBYVBQPhJca/awCXJoYPaBA3E0CBpR7pSP
	TA6bgPlBz8oVbFkW0fGUhNQ3M5rXvlWmvrebzxEcMFxoR0FwbW4J8Ap1Y1BolKzEaCALR/MxE21iE
	UngrnyMP6EHWxcN+o1Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKO4D-0001cT-BV; Fri, 03 Apr 2020 15:17:09 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKO49-0001aW-Bk
 for linux-riscv@lists.infradead.org; Fri, 03 Apr 2020 15:17:06 +0000
Received: by mail-pj1-x1043.google.com with SMTP id w9so3116562pjh.1
 for <linux-riscv@lists.infradead.org>; Fri, 03 Apr 2020 08:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=Fx4AohXcpCWWeloAMp1+tr3EHYpkAySrgcIIxr7kcOY=;
 b=HfLgM9cilYyLla4cdYfW2AvcCIEbJysfo/iCt8RVApG6bgtOq43c2VYE04UoFPb2n6
 CXkOo7muD8btnl4gKcGYJBV9EIRwOyKcsDiYZy42T96eb+YaLVciY0c+nbPHAO9S/2Yy
 9EcbWGLe0PB7/LAPQg4AxqiAUjSOYAONdeOKggAy/hHrsZhAMC3bdD4IIzSYID+LmytA
 yCaC9GQZ8iawK2uO7YQQ1ufg7BLMI7jWkpxQS9RP66GM7jaZiMVqyCNZbwz2d+ruissJ
 gMgY01yJ1aPjzk0wfGs2RVyzGJOWx3rS0rJhEqG1EX2DXrfl14xHj2SKc3Kj75Q11TSr
 zrdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Fx4AohXcpCWWeloAMp1+tr3EHYpkAySrgcIIxr7kcOY=;
 b=pF1ktkTpcZrrVEdcrZyx2RtQTWESVxKPnTdJfN6BA8t5/dxJDwkmpXhZ5S8oHkz5jf
 +Sm14NJiY2eC7ErmwlBy8DBg7C8K/p7JS9/CBG2W804bQaH/5sLjToC2T1qUqFQm1dJA
 +7QFxQW4lI46NbF//6p5/mWLS5p6+8eRAo9GPaiasdFlJGvssuA8zBO2w7fLKa/T/Msl
 4/8RFKjvkSo7d5sNcI48Oi2L3Iavjd61PgqFoVX4JqlJ+pw7VJA09ij/+jSnx26KAGC+
 +9pYOoxqfGXpsyVr3sb02I93LdfZcwTq1pEXADR+g8YK6ab7RK1YW8lKyCNgFCh+Ez9p
 ATQA==
X-Gm-Message-State: AGi0Pub6mq78EfsjPXzgAgsybVgC3+CYT7pitWA7y707ZMK5ndWuPu6U
 FRj1e+yOYtE/r4CE6grh8esqkg==
X-Google-Smtp-Source: APiQypKmng9gZ+Pi+NIKxo4VVzepa02lDucm/bsTEinOB0lbG6J9uaAqmzf3pxPsEoJl7m2wAkEAew==
X-Received: by 2002:a17:902:b787:: with SMTP id
 e7mr8423259pls.128.1585927023636; 
 Fri, 03 Apr 2020 08:17:03 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id p70sm5969601pjp.47.2020.04.03.08.17.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 08:17:02 -0700 (PDT)
Date: Fri, 03 Apr 2020 08:17:02 -0700 (PDT)
X-Google-Original-Date: Fri, 03 Apr 2020 08:12:08 PDT (-0700)
Subject: Re: [RFC PATCH 1/7] riscv: Get rid of compile time logic with
 MAX_EARLY_MAPPING_SIZE
In-Reply-To: <20200322110028.18279-2-alex@ghiti.fr>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: alex@ghiti.fr
Message-ID: <mhng-ee39eb13-2567-479e-b0f4-5d23dff8496c@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_081705_425431_5047DEE3 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: alex@ghiti.fr, anup@brainfault.org, linux-kernel@vger.kernel.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 22 Mar 2020 04:00:22 PDT (-0700), alex@ghiti.fr wrote:
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
> -#define NUM_EARLY_PMDS		1UL
> -#else
> -#define NUM_EARLY_PMDS		(1UL + MAX_EARLY_MAPPING_SIZE / PGDIR_SIZE)
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
> -	uintptr_t pmd_num;
> -
>  	if (mmu_enabled)
>  		return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
>
> -	pmd_num = (va - PAGE_OFFSET) >> PGDIR_SHIFT;
> -	BUG_ON(pmd_num >= NUM_EARLY_PMDS);
> -	return (uintptr_t)&early_pmd[pmd_num * PTRS_PER_PMD];
> +	BUG_ON((va - PAGE_OFFSET) >> PGDIR_SHIFT);
> +
> +	return (uintptr_t)early_pmd;
>  }
>
>  static void __init create_pmd_mapping(pmd_t *pmdp,

My specific worry here was that allyesconfig kernels are quite large, and that
dropping the code to handle large kernels would make it even harder to boot
them.  That said, I can't actually get one to boot so I'm happy to just push
that off until later and drop the code we can't practically use.

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks!

