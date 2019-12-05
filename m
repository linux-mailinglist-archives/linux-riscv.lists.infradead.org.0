Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9915511499F
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 00:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:In-Reply-To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=UOJ001wa/UW9w1GQpT88wpgLl/T0JxXuiU5JdorvLhk=; b=uEjBEo3cqrHWCr
	NNTtQnl4PX7BUV7jOessu3I8efHIdc3MkWZNHO0+8ag7Gnng+Oe7A2zDPGVXCjM3mXc8gyrWGvJWL
	O3jJ0Ptnmq1ArQeDkLzO9BOChfABxRU/fkt1T4Xgl7t41+pFFin7yVGks6EbrsNH4tfLNMacVfdI7
	KYn8smdcqr2VSnY+rc8hfL2R6xLmnKRjZ+03s8518tD84aOk4dc8A7J3y+mJNRImU1fCn6Sw47J2A
	xsI1Xrv5PeVzEQj0AGl+SZRcUdxOXUC/z+a4RH9RSvwCpmUTxwHvXwzJGBk1fCKhCTKnZhPmqVK1w
	AOVV6mEUBXUTGSxppL8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id09X-0000r4-5S; Thu, 05 Dec 2019 23:03:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id09T-0000pO-8Q
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 23:03:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id s18so2300715pfd.8
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 15:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=UOJ001wa/UW9w1GQpT88wpgLl/T0JxXuiU5JdorvLhk=;
 b=Jfyvj+AQCemRuF1btl6GmtD4oDpxUcRFqZVCcoablyXjxD0syOAs627jm75g8Ag70i
 TZqhdjAxlT0aK0HPbdeuwfZ5gJRYUDcTHT/3ELIeuT5r4R1gL4YKzIe43OK7rR8n758F
 6IuNNx8iafy4SzwiiNBvMRp3myTLM0nS4zVQ052lrZcM7lc3ZA0wvEVlfg2UiYd7mJW2
 4ny1DkFv4DP2QKl/GcZNzmIFWjZcEZLKcqE0BaPlirmZ+YRy00FXxHWo9fNT5xghunws
 bgjEMMW683GCVX6BdK/dFzlnWct1b3WYJeHAHA6uEBYqeWNdFXO29jBX1PabWBK9nAk8
 2LDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=UOJ001wa/UW9w1GQpT88wpgLl/T0JxXuiU5JdorvLhk=;
 b=gvS8/+2SnnF+gTd/K4WgLHmFCiCwnU/4V9JVM6ft0Ko3fi3jv2GVG0sJxuXa3dhytt
 THi/xqO5p8v3BtrFQvHDyCnpb0Ua72m/epNrzuuqB+VAcek29j//BxEVDsMZ3owOIoK4
 T0AI65w0QYBMu8eYv1KYa/uOpHa4n/g+pGK9yO6cpf28Szqj+Sg8k6EsTCOuJGnQSoft
 WSEPICtD3cnzFrpRjfyogCFN7rscs5SsjOFBy2NiFrK+kaAUMiNWF5/UFpjiHCNDXX5H
 W5qRjWWyqnCCMTNO7aryA09Lcx3/6CMHRqPILAu/2887AoAMl9bJ3yRgiKawpmhC5pq4
 Vsrg==
X-Gm-Message-State: APjAAAVd6H3qin+LCgTsxyoM1sLOCs6LDcpq3w40vDj+bP6kmHC8w+vN
 u3vFYT1xGRj/jt01quXn6Yh8dAT2D60=
X-Google-Smtp-Source: APXvYqwmYFGDqL0JjOb++OxlAFVCYGNqFsmm/mA+TOoA2mu6iqjUSyf8KxcXKO72obdZOwtGfSaBoA==
X-Received: by 2002:aa7:80d2:: with SMTP id a18mr11578762pfn.29.1575586994109; 
 Thu, 05 Dec 2019 15:03:14 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id q11sm13051728pff.111.2019.12.05.15.03.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 15:03:12 -0800 (PST)
Date: Thu, 05 Dec 2019 15:03:12 -0800 (PST)
X-Google-Original-Date: Thu, 05 Dec 2019 14:22:14 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v2 1/2] riscv: Align shared mappings to SHMLBA
In-Reply-To: <20191126224446.15145-2-consult-mg@gstardust.com>
To: consult-mg@gstardust.com
Message-ID: <mhng-97bbfd0b-0d80-4e3a-8129-2e671b51157a@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_150315_314783_DB7C4820 
X-CRM114-Status: GOOD (  25.54  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-riscv@lists.infradead.org, consult-mg@gstardust.com,
 aou@eecs.berkeley.edu, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019 14:44:45 PST (-0800), consult-mg@gstardust.com wrote:
> Align shared mappings according to SHMLBA for VIPT cache performance.
>
> arch_get_unmapped_area() and arch_get_unmapped_area_topdown() are
> essentially copies of their default implementations in mm/mmap.c,
> modified to align the address to SHMLBA for shared mappings, i.e.
> where MAP_SHARED is specified or a file pointer is provided.
>
> Allow MAP_FIXED to request unaligned shared mappings.  Although this
> may potentially reduce performance, very little software does this, as
> it is not portable across architectures that enforce alignment.
>
> Signed-off-by: Marc Gauthier <consult-mg@gstardust.com>
> ---
>  arch/riscv/include/asm/pgtable.h |   4 ++
>  arch/riscv/kernel/sys_riscv.c    | 113 +++++++++++++++++++++++++++++++
>  2 files changed, 117 insertions(+)
>
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> index d3221017194d..7d1cc47ac5f9 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -436,6 +436,10 @@ extern void *dtb_early_va;
>  extern void setup_bootmem(void);
>  extern void paging_init(void);
>
> +/* We provide arch_get_unmapped_area to handle VIPT caches efficiently. */
> +#define HAVE_ARCH_UNMAPPED_AREA
> +#define HAVE_ARCH_UNMAPPED_AREA_TOPDOWN
> +
>  /*
>   * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
>   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
> index f3619f59d85c..3e739b30b1f7 100644
> --- a/arch/riscv/kernel/sys_riscv.c
> +++ b/arch/riscv/kernel/sys_riscv.c
> @@ -3,11 +3,15 @@
>   * Copyright (C) 2012 Regents of the University of California
>   * Copyright (C) 2014 Darius Rad <darius@bluespec.com>
>   * Copyright (C) 2017 SiFive
> + * Copyright (C) 2019 Aril Inc
>   */
>
>  #include <linux/syscalls.h>
>  #include <asm/unistd.h>
>  #include <asm/cacheflush.h>
> +#include <linux/shm.h>
> +#include <linux/mman.h>
> +#include <linux/security.h>
>
>  static long riscv_sys_mmap(unsigned long addr, unsigned long len,
>  			   unsigned long prot, unsigned long flags,
> @@ -65,3 +69,112 @@ SYSCALL_DEFINE3(riscv_flush_icache, uintptr_t, start, uintptr_t, end,
>
>  	return 0;
>  }
> +
> +/*
> + * RISC-V requires implementations to function correctly in the presence
> + * of cache aliasing, regardless of page alignment.  It says nothing about
> + * performance.  To ensure healthy performance with commonly implemented
> + * VIPT caches, the following code avoids most cases of cache aliasing by
> + * aligning shared mappings such that all mappings of a given physical
> + * page of an object are at a multiple of SHMLBA bytes from each other.
> + *
> + * It does not enforce alignment.  Using MAP_FIXED to request unaligned
> + * shared mappings is not common, and may perform poorly with VIPT caches.
> + */
> +unsigned long
> +arch_get_unmapped_area(struct file *filp, unsigned long addr,
> +			unsigned long len, unsigned long pgoff,
> +			unsigned long flags)
> +{
> +	struct mm_struct *mm = current->mm;
> +	struct vm_area_struct *vma, *prev;
> +	struct vm_unmapped_area_info info;
> +	const unsigned long pgoffset = pgoff << PAGE_SHIFT;
> +	int do_align = (filp || (flags & MAP_SHARED));
> +
> +	if (len > TASK_SIZE - mmap_min_addr)
> +		return -ENOMEM;
> +
> +	if (flags & MAP_FIXED)
> +		return addr;
> +
> +	if (addr) {
> +		if (do_align)
> +			addr = ALIGN(addr, SHMLBA) + (pgoffset & (SHMLBA - 1));
> +		else
> +			addr = PAGE_ALIGN(addr);
> +		vma = find_vma_prev(mm, addr, &prev);
> +		if (TASK_SIZE - len >= addr && addr >= mmap_min_addr &&
> +		    (!vma || addr + len <= vm_start_gap(vma)) &&
> +		    (!prev || addr >= vm_end_gap(prev)))
> +			return addr;
> +	}
> +
> +	info.flags = 0;
> +	info.length = len;
> +	info.low_limit = mm->mmap_base;
> +	info.high_limit = TASK_SIZE;
> +	info.align_mask = do_align ? SHMLBA - 1 : 0;
> +	info.align_offset = pgoffset;
> +	return vm_unmapped_area(&info);
> +}
> +
> +/*
> + * Similar to arch_get_unmapped_area(), but allocating top-down from below the
> + * stack's low limit (the base).
> + */
> +unsigned long
> +arch_get_unmapped_area_topdown(struct file *filp, unsigned long addr,
> +				unsigned long len, unsigned long pgoff,
> +				unsigned long flags)
> +{
> +	struct vm_area_struct *vma, *prev;
> +	struct mm_struct *mm = current->mm;
> +	struct vm_unmapped_area_info info;
> +	const unsigned long pgoffset = pgoff << PAGE_SHIFT;
> +	int do_align = (filp || (flags & MAP_SHARED));
> +
> +	/* requested length too big for entire address space */
> +	if (len > TASK_SIZE - mmap_min_addr)
> +		return -ENOMEM;
> +
> +	if (flags & MAP_FIXED)
> +		return addr;
> +
> +	/* requesting a specific address */
> +	if (addr) {
> +		if (do_align)
> +			addr = ALIGN(addr, SHMLBA) + (pgoffset & (SHMLBA - 1));
> +		else
> +			addr = PAGE_ALIGN(addr);
> +		vma = find_vma_prev(mm, addr, &prev);
> +		if (TASK_SIZE - len >= addr && addr >= mmap_min_addr &&
> +				(!vma || addr + len <= vm_start_gap(vma)) &&
> +				(!prev || addr >= vm_end_gap(prev)))
> +			return addr;
> +	}
> +
> +	info.flags = VM_UNMAPPED_AREA_TOPDOWN;
> +	info.length = len;
> +	info.low_limit = max(PAGE_SIZE, mmap_min_addr);
> +	info.high_limit = mm->mmap_base;
> +	info.align_mask = do_align ? SHMLBA - 1 : 0;
> +	info.align_offset = pgoffset;
> +	addr = vm_unmapped_area(&info);
> +
> +	/*
> +	 * A failed mmap() very likely causes application failure,
> +	 * so fall back to the bottom-up function here. This scenario
> +	 * can happen with large stack limits and large mmap()
> +	 * allocations.
> +	 */
> +	if (offset_in_page(addr)) {
> +		VM_BUG_ON(addr != -ENOMEM);
> +		info.flags = 0;
> +		info.low_limit = TASK_UNMAPPED_BASE;
> +		info.high_limit = TASK_SIZE;
> +		addr = vm_unmapped_area(&info);
> +	}
> +
> +	return addr;
> +}

It really feels like this should be generic code to me.  It looks like the only
major difference between this and the routines in arch/arm/mm/mmap.c is whether
or not MAP_FIXED alignment is enforced, so we could probably just make the
arch-specific code be arch_cache_is_vipt_aliasing() which on RISC-V would
always be false and on ARM would be the current cache_is_vipt_aliasing().

ARM is also using a different alignment expression, but I think they may be
equivilant.  They have

    #define COLOUR_ALIGN(addr,pgoff)                \
            ((((addr)+SHMLBA-1)&~(SHMLBA-1)) +      \
             (((pgoff)<<PAGE_SHIFT) & (SHMLBA-1)))

LMK if you're OK doing this, or if you want me to take over the patch set.

