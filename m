Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5938C9DA6F
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 02:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DN+LMHA0tRcEj9I6LgbI4PoqKDdsJXM1XxQLVfQyn50=; b=SkTBv1Ns8Y6ibE
	teD2KJIpWfEcOiq/EKr4KVNFb2vrRne8td/NP9WSmWaRqzLEpzbpuMfIE4xjcawMjgPiDKrAKSBB4
	BHaxTj1ayCwxzaRlsWjjzF0ghlMnn6/UnNGQRdsCZk0dQXZ4P2iP50s0tDeJx85a6R5P6h3r0LZ7Y
	WiQDTOUfs6JJ3qswSth7WNOQFFUloJEetx7of2Qcf+U8PjiqkmHvARn/4w47MivuFhrIIfQEY4/3E
	fGYjLBmZ2vgzuE/09owgpGw7WvXh33De+jKpUUmgP1tNvop0HMgu8QyYXOLDUtPkPNsbqhbUuxcs3
	ouTaYJ0m9P/tOzVK18Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2P73-0000W6-3y; Tue, 27 Aug 2019 00:13:29 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2P6z-0000Vf-T7
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 00:13:27 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so11567730pgm.3
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 17:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Iw6JNWRP3igEjjbsY2DrjeSufzb3AiZwDl6GtE2wNmQ=;
 b=H9Kk7EsSWtOGwDBBXZTaiLDAh5a1CmQ5esXABzmC/dKl4QkDAHnLeMUeqiCnWxa1gP
 6B3Etsb8xeqdUYbeTB7DjXOuVflwu03YeST4etZacSsHDo0XzcX5F5cZ8v4LMjVAsMyh
 yWsZ1SqONunlv2fYuisr0dDHh2luMguN3vfvwun6XlvEWS6XKjzAR8YIY/eqdbEdKAzX
 o8bBrWJbnScDvU/btyFAiwrxjQZs91OpmUD4fP5cKTGM1SPVth8BuZUhCrAHQKcZOnSC
 Cm/TTNqRq1j9Iyk0UY+5dl2/QIG4arHrAKczc5/DteCLRIeccmm+6pywJNCEYYZOoSfT
 zwJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Iw6JNWRP3igEjjbsY2DrjeSufzb3AiZwDl6GtE2wNmQ=;
 b=T+6hrgXTyoTog6/pkPj16+r6ui2NNNuFqWiUqUFVDAB/HWRJHiJlsf+MnUco8Bs6nK
 jc+0rOpLSOYleDNNpfy22pstblcDf3oFrgt8/2vY2P6f6VyvNAJKae84uY85jIvnk2dE
 O8+UxyC4X+FO4C7l2PpWVAOrv7m3B8rCW6djElxpyqZwHBvjeSm1vOc1ItWJt0mrZK/T
 u/E1/FUigY0VAwUEKed0ajnZIIVBmpTBLEMxDcX8YWlaTqMvXCnsrOf/ZF1RaFrQXIgY
 No267YGpZmjXkFg4z9/BBPyEEq/ezxsn1mygWc01wrkSH5Q9ehvnA/SzcLnDURizDXYJ
 08vA==
X-Gm-Message-State: APjAAAUes3dPP2vsRRtLqyjDJ1Sdaj5AjKqtcJXjM9Mcf7judKFl7Wbq
 yJ8GOxVKild1ausMZfHHGkUPLw==
X-Google-Smtp-Source: APXvYqx6u1wwF4tgUg81853PTvaK/j5q0KHWzOBzXOEEHdr0Jg/DZ7R06Oea/jeHX1iyLYWkTf4fMw==
X-Received: by 2002:a65:5a8c:: with SMTP id c12mr18420410pgt.73.1566864804459; 
 Mon, 26 Aug 2019 17:13:24 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id j11sm566443pjb.11.2019.08.26.17.13.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 17:13:23 -0700 (PDT)
Date: Mon, 26 Aug 2019 17:13:23 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v2] RISC-V: Fix FIXMAP area corruption on RV32 systems
In-Reply-To: <20190819051345.81097-1-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908261704500.10109@viisi.sifive.com>
References: <20190819051345.81097-1-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_171325_971432_7C1E34E3 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Anup,

On Mon, 19 Aug 2019, Anup Patel wrote:

> Currently, various virtual memory areas of Linux RISC-V are organized
> in increasing order of their virtual addresses is as follows:
> 1. User space area (This is lowest area and starts at 0x0)
> 2. FIXMAP area
> 3. VMALLOC area
> 4. Kernel area (This is highest area and starts at PAGE_OFFSET)
> 
> The maximum size of user space aread is represented by TASK_SIZE.
> 
> On RV32 systems, TASK_SIZE is defined as VMALLOC_START which causes the
> user space area to overlap the FIXMAP area. This allows user space apps
> to potentially corrupt the FIXMAP area and kernel OF APIs will crash
> whenever they access corrupted FDT in the FIXMAP area.
> 
> On RV64 systems, TASK_SIZE is set to fixed 256GB and no other areas
> happen to overlap so we don't see any FIXMAP area corruptions.
> 
> This patch fixes FIXMAP area corruption on RV32 systems by setting
> TASK_SIZE to FIXADDR_START. 

This part -- the TASK_SIZE change -- makes sense to me.  

However, the patch also changes FIXADDR_SIZE to be defined in terms of 
page table-related constants.  Previously, FIXADDR_SIZE was based on 
__end_of_fixed_addresses, as it is for most other architectures. The part 
of the patch that changes FIXADDR_SIZE seems unrelated to the actual fix.

If that's indeed the case -- that the change to FIXADDR_SIZE is unrelated 
from the fix -- could you please split that into a separate patch, with a 
description of the rationale?  I think I understand why you're proposing 
it, but it seems odd to explicitly connect it to page table-related 
constants, rather than the contents of "enum fixed_addresses", and I'm 
reluctant to merge that part of this patch without a bit more discussion.


> We also move FIXADDR_TOP, FIXADDR_SIZE, and FIXADDR_START defines to 
> asm/pgtable.h so that we can avoid cyclic header includes.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Tested-by: Alistair Francis <alistair.francis@wdc.com>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> ---
> Changes since v1:
> - Drop braces from "#define FIXADDR_TOP"
> ---
>  arch/riscv/include/asm/fixmap.h  |  4 ----
>  arch/riscv/include/asm/pgtable.h | 12 ++++++++++--
>  2 files changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
> index 9c66033c3a54..161f28d04a07 100644
> --- a/arch/riscv/include/asm/fixmap.h
> +++ b/arch/riscv/include/asm/fixmap.h
> @@ -30,10 +30,6 @@ enum fixed_addresses {
>  	__end_of_fixed_addresses
>  };
> 
> -#define FIXADDR_SIZE		(__end_of_fixed_addresses * PAGE_SIZE)
> -#define FIXADDR_TOP		(VMALLOC_START)
> -#define FIXADDR_START		(FIXADDR_TOP - FIXADDR_SIZE)
> -
>  #define FIXMAP_PAGE_IO		PAGE_KERNEL
> 
>  #define __early_set_fixmap	__set_fixmap
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> index a364aba23d55..c24a083b3e12 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -420,14 +420,22 @@ static inline void pgtable_cache_init(void)
>  #define VMALLOC_END      (PAGE_OFFSET - 1)
>  #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> 
> +#define FIXADDR_TOP      VMALLOC_START
> +#ifdef CONFIG_64BIT
> +#define FIXADDR_SIZE     PMD_SIZE
> +#else
> +#define FIXADDR_SIZE     PGDIR_SIZE
> +#endif
> +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> +
>  /*
> - * Task size is 0x4000000000 for RV64 or 0xb800000 for RV32.
> + * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
>   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
>   */
>  #ifdef CONFIG_64BIT
>  #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)
>  #else
> -#define TASK_SIZE VMALLOC_START
> +#define TASK_SIZE FIXADDR_START
>  #endif
> 
>  #include <asm-generic/pgtable.h>
> --
> 2.17.1
> 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
