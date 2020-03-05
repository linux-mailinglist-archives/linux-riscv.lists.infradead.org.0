Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F81179D16
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 01:57:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=OiUuzvxK5Q7mHlyfvBqVa9jhnO0Phg0lZf/21N6Saw8=; b=oI7mm8YpwdI4+F
	wAgkwEdwiXYSgc2ONMfqnwlbZVTRgVoV5oHnGygi/uy89Wfzg3/5/xWKn0b6/1ve6myLqyjtCW7CC
	0Y/r4lz6AL7aOd4/fWU+oTb34bD1ctopnndzai9Vcpcwh5hL33bF+YHxAe7ZopLbnSaB79mN5TB1W
	chJHh6F8O1QSz5M9Sw/c0p0nB+fFhsFSdc167LH2O/VSEK4flSquHVbUa6DpdMOAp7hnTj31bSMSX
	cR6wgaaQXOdt2kxVYXn1x8gCUzdbykfw6zcIzI86qnYzHWNEhBYxCAr+F4AhmQKn19vfjhwmRT8U1
	eQcz5gsvbArP4Xa9pv1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9epk-0006ay-W0; Thu, 05 Mar 2020 00:57:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9epd-0006Xk-PX
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 00:57:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id c144so1884977pfb.10
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 16:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=OiUuzvxK5Q7mHlyfvBqVa9jhnO0Phg0lZf/21N6Saw8=;
 b=OjAl2rXVakx7NgVrpUgJBjQT/9S0X99wn2XiR68XiTA7G1Wxu2BPNx7D34uppO8INK
 M45xO/LgXs4nyI1PjzcDd9i2UwsK+ylrd0Mg11Sps3TqeZaqe7zwshiVqa733M6M4qAY
 ZA7YBTLKX4597zTYlg/M5vJ9iHrYgpLtRMGHKvLPMcpG0xNzl5cZoVGp7SYWp33r/dlg
 jng0BcCzrZftLdzj/+4s8nihXUq6x8JFUnd7U33f4PWNqLtqvUWtfkCdvD6xBvPHDrK1
 6nqxVOq38GXMmBQHX7ang+6gurU1EzhT4P7kjJ/eYnq4mPYTuK1wH1UwQ8iMznFCCE9u
 BnlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=OiUuzvxK5Q7mHlyfvBqVa9jhnO0Phg0lZf/21N6Saw8=;
 b=GuX+xp0mvaQ/FjpMXbYOLX4wSBUDv49GW5zAW4ANdpY7rvPpy9oSSePeJuM7VIcLKG
 uzqlEwBIgbaWZ0+WiHkbh2M3SQjjVtZEolPnGcwGABP11miQzeZm0iVOza2CsZMx8CJJ
 s8FDWApe6n4zdU5Bh5E5aWHBTtwBhVrtbfZ5brw/aLNwojpa6xLIkIE7tlfnig+6khx3
 7LXPgilI5/WXGYuHMeO6f5mm5q67Gl98DNovswNEAijS1aJlP2LyO5JH0mDcDg3KhGMj
 l4s0Uyqj8b41uGJc4QpQQrFb0P7cNBq9I1YDROr1koaWKchqdUcH/ILnbIQSHDbTBojw
 KO4A==
X-Gm-Message-State: ANhLgQ2yb2KtU9sQi0leUYoNhhdpsEXfL4/iRbEEkwavt0RhxBpUwXZm
 qvWQuqR4KRqp889zAJ7XJMKo/w==
X-Google-Smtp-Source: ADFU+vsy/xn1SOslmWdL/8m6B0y854DKmshEJYcg4LmvwVJkeHKboyiu2oviing2FqUnCvjiXMinrw==
X-Received: by 2002:a63:6cc6:: with SMTP id h189mr4912134pgc.201.1583369863204; 
 Wed, 04 Mar 2020 16:57:43 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id jx10sm3879391pjb.33.2020.03.04.16.57.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 16:57:42 -0800 (PST)
Date: Wed, 04 Mar 2020 16:57:42 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 16:20:36 PST (-0800)
Subject: Re: [PATCH 1/8] riscv: add ARCH_HAS_SET_MEMORY support
In-Reply-To: <20200217083223.2011-2-zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-8d7dc998-025e-41ed-b869-6a439c6eda5f@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_165745_855331_F4A5C138 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, zong.li@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 00:32:16 PST (-0800), zong.li@sifive.com wrote:
> Add set_memory_ro/rw/x/nx architecture hooks to change the page
> attribution.
>
> Use own set_memory.h rather than generic set_memory.h
> (i.e. include/asm-generic/set_memory.h), because we want to add other
> function prototypes here.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/Kconfig                  |   1 +
>  arch/riscv/include/asm/set_memory.h |  17 ++++
>  arch/riscv/mm/Makefile              |   1 +
>  arch/riscv/mm/pageattr.c            | 150 ++++++++++++++++++++++++++++
>  4 files changed, 169 insertions(+)
>  create mode 100644 arch/riscv/include/asm/set_memory.h
>  create mode 100644 arch/riscv/mm/pageattr.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 6e81da55b5e4..76ed36543b3a 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -60,6 +60,7 @@ config RISCV
>  	select HAVE_EBPF_JIT if 64BIT
>  	select EDAC_SUPPORT
>  	select ARCH_HAS_GIGANTIC_PAGE
> +	select ARCH_HAS_SET_MEMORY
>  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>  	select SPARSEMEM_STATIC if 32BIT
>  	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
> new file mode 100644
> index 000000000000..936f08063566
> --- /dev/null
> +++ b/arch/riscv/include/asm/set_memory.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2019 SiFive
> + */
> +
> +#ifndef _ASM_RISCV_SET_MEMORY_H
> +#define _ASM_RISCV_SET_MEMORY_H
> +
> +/*
> + * Functions to change memory attributes.
> + */
> +int set_memory_ro(unsigned long addr, int numpages);
> +int set_memory_rw(unsigned long addr, int numpages);
> +int set_memory_x(unsigned long addr, int numpages);
> +int set_memory_nx(unsigned long addr, int numpages);
> +
> +#endif /* _ASM_RISCV_SET_MEMORY_H */
> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> index 814e16a8d68a..b94643aee84c 100644
> --- a/arch/riscv/mm/Makefile
> +++ b/arch/riscv/mm/Makefile
> @@ -10,6 +10,7 @@ obj-y += extable.o
>  obj-$(CONFIG_MMU) += fault.o
>  obj-y += cacheflush.o
>  obj-y += context.o
> +obj-y += pageattr.o
>
>  ifeq ($(CONFIG_MMU),y)
>  obj-$(CONFIG_SMP) += tlbflush.o
> diff --git a/arch/riscv/mm/pageattr.c b/arch/riscv/mm/pageattr.c
> new file mode 100644
> index 000000000000..fcd59ef2835b
> --- /dev/null
> +++ b/arch/riscv/mm/pageattr.c
> @@ -0,0 +1,150 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2019 SiFive
> + */
> +
> +#include <linux/pagewalk.h>
> +#include <asm/pgtable.h>
> +#include <asm/tlbflush.h>
> +#include <asm/bitops.h>
> +
> +struct pageattr_masks {
> +	pgprot_t set_mask;
> +	pgprot_t clear_mask;
> +};
> +
> +static unsigned long set_pageattr_masks(unsigned long val, struct mm_walk *walk)
> +{
> +	struct pageattr_masks *masks = walk->private;
> +	unsigned long new_val = val;
> +
> +	new_val &= ~(pgprot_val(masks->clear_mask));
> +	new_val |= (pgprot_val(masks->set_mask));
> +
> +	return new_val;
> +}
> +
> +static int pageattr_pgd_entry(pgd_t *pgd, unsigned long addr,
> +			      unsigned long next, struct mm_walk *walk)
> +{
> +	pgd_t val = READ_ONCE(*pgd);
> +
> +	if (pgd_leaf(val)) {
> +		val = __pgd(set_pageattr_masks(pgd_val(val), walk));
> +		set_pgd(pgd, val);
> +	}
> +
> +	return 0;
> +}
> +
> +static int pageattr_p4d_entry(p4d_t *p4d, unsigned long addr,
> +			      unsigned long next, struct mm_walk *walk)
> +{
> +	p4d_t val = READ_ONCE(*p4d);
> +
> +	if (p4d_leaf(val)) {
> +		val = __p4d(set_pageattr_masks(p4d_val(val), walk));
> +		set_p4d(p4d, val);
> +	}
> +
> +	return 0;
> +}
> +
> +static int pageattr_pud_entry(pud_t *pud, unsigned long addr,
> +			      unsigned long next, struct mm_walk *walk)
> +{
> +	pud_t val = READ_ONCE(*pud);
> +
> +	if (pud_leaf(val)) {
> +		val = __pud(set_pageattr_masks(pud_val(val), walk));
> +		set_pud(pud, val);
> +	}
> +
> +	return 0;
> +}
> +
> +static int pageattr_pmd_entry(pmd_t *pmd, unsigned long addr,
> +			      unsigned long next, struct mm_walk *walk)
> +{
> +	pmd_t val = READ_ONCE(*pmd);
> +
> +	if (pmd_leaf(val)) {
> +		val = __pmd(set_pageattr_masks(pmd_val(val), walk));
> +		set_pmd(pmd, val);
> +	}
> +
> +	return 0;
> +}
> +
> +static int pageattr_pte_entry(pte_t *pte, unsigned long addr,
> +			      unsigned long next, struct mm_walk *walk)
> +{
> +	pte_t val = READ_ONCE(*pte);
> +
> +	val = __pte(set_pageattr_masks(pte_val(val), walk));
> +	set_pte(pte, val);
> +
> +	return 0;
> +}
> +
> +static int pageattr_pte_hole(unsigned long addr, unsigned long next,
> +			     int depth, struct mm_walk *walk)
> +{
> +	/* Nothing to do here */
> +	return 0;
> +}
> +
> +const static struct mm_walk_ops pageattr_ops = {
> +	.pgd_entry = pageattr_pgd_entry,
> +	.p4d_entry = pageattr_p4d_entry,
> +	.pud_entry = pageattr_pud_entry,
> +	.pmd_entry = pageattr_pmd_entry,
> +	.pte_entry = pageattr_pte_entry,
> +	.pte_hole = pageattr_pte_hole,
> +};
> +
> +static int __set_memory(unsigned long addr, int numpages, pgprot_t set_mask,
> +			pgprot_t clear_mask)
> +{
> +	int ret;
> +	unsigned long start = addr;
> +	unsigned long end = start + PAGE_SIZE * numpages;
> +	struct pageattr_masks masks = {
> +		.set_mask = set_mask,
> +		.clear_mask = clear_mask
> +	};
> +
> +	if (!numpages)
> +		return 0;
> +
> +	down_read(&init_mm.mmap_sem);
> +	ret =  walk_page_range_novma(&init_mm, start, end, &pageattr_ops, NULL,
> +				     &masks);
> +	up_read(&init_mm.mmap_sem);

There are very few users of _novma, but I think it's correct here.

> +
> +	flush_tlb_kernel_range(start, end);
> +
> +	return ret;
> +}
> +
> +int set_memory_ro(unsigned long addr, int numpages)
> +{
> +	return __set_memory(addr, numpages, __pgprot(_PAGE_READ),
> +			    __pgprot(_PAGE_WRITE));
> +}
> +
> +int set_memory_rw(unsigned long addr, int numpages)
> +{
> +	return __set_memory(addr, numpages, __pgprot(_PAGE_READ | _PAGE_WRITE),
> +			    __pgprot(0));
> +}
> +
> +int set_memory_x(unsigned long addr, int numpages)
> +{
> +	return __set_memory(addr, numpages, __pgprot(_PAGE_EXEC), __pgprot(0));
> +}
> +
> +int set_memory_nx(unsigned long addr, int numpages)
> +{
> +	return __set_memory(addr, numpages, __pgprot(0), __pgprot(_PAGE_EXEC));
> +}

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks!

