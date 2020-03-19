Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980A818AD10
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 08:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1YwOhdxX26Y+wBuzZ6KcmY62u5y/+8Hvgm0wH6ueYs=; b=Mli1PGNbr5OkKB
	xE3uX2ydcuVwQm7eLLzwWnS8hPjaNkOnIk2ni70gvR1kBnyaA4X7nztGWJ9GgV1tyLVSJ9W8pNOch
	++2hcB1q/rOn6rvQBv2V+903HGGqKd/gxpCMbPOkVVjZF47mInU2+rMgPvHmc0RWXHezQbqoZB3Xm
	4AfpTsHEy6EJsMVuriwOx8hivVY8L58NNCN/9JZkBH/bkYhi19ddLa6CquD+A0COfyUuwfEhF/WyT
	Gv53jI++Mop283UHR+J8q3HMVNCEi/WQgpuH7O8YbQCElqBhWDSYysrv959krqQzDLq3SpCjBPiwP
	FaglFfGq8ayJZZ1Vo1xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEpBF-0006PB-0o; Thu, 19 Mar 2020 07:01:25 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEpB4-0006H6-TE; Thu, 19 Mar 2020 07:01:17 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48jd9D5Wspz9v1Md;
 Thu, 19 Mar 2020 08:01:04 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=kSCCxuWg; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id a91KdXxJSw9z; Thu, 19 Mar 2020 08:01:04 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48jd9D4MMFz9v1Mc;
 Thu, 19 Mar 2020 08:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1584601264; bh=f1YwOhdxX26Y+wBuzZ6KcmY62u5y/+8Hvgm0wH6ueYs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=kSCCxuWg89EGpfCGJFvQQEKaoHe/kCd5TGb/eJd9YNW4o9nMza+I2DetAh60y0OYl
 jNWoevB3fgK3oMJ2kFYnvfR61+Z0w2UWeOnoIyGuiPFaUDv3CG1pmdSv9t5BVLTXov
 N7ub0KXLdsT/u4I32YAoSgYf0fhvDN90dndC0kTk=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 784F58B769;
 Thu, 19 Mar 2020 08:01:05 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id MWrtuWx18n7g; Thu, 19 Mar 2020 08:01:05 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id DFB5B8B798;
 Thu, 19 Mar 2020 08:01:03 +0100 (CET)
Subject: Re: [PATCH 1/4] hugetlbfs: add arch_hugetlb_valid_size
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-2-mike.kravetz@oracle.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <c3071359-c5d3-4247-7f16-6f61b2fa0756@c-s.fr>
Date: Thu, 19 Mar 2020 08:00:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200318220634.32100-2-mike.kravetz@oracle.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: fr
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_000115_243536_9558B18C 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: openpower.xyz (xyz)]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "David S . Miller" <davem@davemloft.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Mackerras <paulus@samba.org>, Andrew Morton <akpm@linux-foundation.org>,
 Longpeng <longpeng2@huawei.com>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



Le 18/03/2020 à 23:06, Mike Kravetz a écrit :
> The architecture independent routine hugetlb_default_setup sets up
> the default huge pages size.  It has no way to verify if the passed
> value is valid, so it accepts it and attempts to validate at a later
> time.  This requires undocumented cooperation between the arch specific
> and arch independent code.
> 
> For architectures that support more than one huge page size, provide
> a routine arch_hugetlb_valid_size to validate a huge page size.
> hugetlb_default_setup can use this to validate passed values.
> 
> arch_hugetlb_valid_size will also be used in a subsequent patch to
> move processing of the "hugepagesz=" in arch specific code to a common
> routine in arch independent code.
> 
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> ---
>   arch/arm64/include/asm/hugetlb.h   |  2 ++
>   arch/arm64/mm/hugetlbpage.c        | 19 ++++++++++++++-----
>   arch/powerpc/include/asm/hugetlb.h |  3 +++
>   arch/powerpc/mm/hugetlbpage.c      | 20 +++++++++++++-------
>   arch/riscv/include/asm/hugetlb.h   |  3 +++
>   arch/riscv/mm/hugetlbpage.c        | 28 ++++++++++++++++++----------
>   arch/s390/include/asm/hugetlb.h    |  3 +++
>   arch/s390/mm/hugetlbpage.c         | 18 +++++++++++++-----
>   arch/sparc/include/asm/hugetlb.h   |  3 +++
>   arch/sparc/mm/init_64.c            | 23 ++++++++++++++++-------
>   arch/x86/include/asm/hugetlb.h     |  3 +++
>   arch/x86/mm/hugetlbpage.c          | 21 +++++++++++++++------
>   include/linux/hugetlb.h            |  7 +++++++
>   mm/hugetlb.c                       | 16 +++++++++++++---
>   14 files changed, 126 insertions(+), 43 deletions(-)
> 

[snip]

> diff --git a/arch/powerpc/include/asm/hugetlb.h b/arch/powerpc/include/asm/hugetlb.h
> index bd6504c28c2f..3b5939016955 100644
> --- a/arch/powerpc/include/asm/hugetlb.h
> +++ b/arch/powerpc/include/asm/hugetlb.h
> @@ -64,6 +64,9 @@ static inline void arch_clear_hugepage_flags(struct page *page)
>   {
>   }
>   
> +#define arch_hugetlb_valid_size arch_hugetlb_valid_size
> +extern bool __init arch_hugetlb_valid_size(unsigned long long size);

Don't add 'extern' keyword, it is irrelevant for a function declaration.

checkpatch --strict doesn't like it either 
(https://openpower.xyz/job/snowpatch/job/snowpatch-linux-checkpatch/12318//artifact/linux/checkpatch.log)

> +
>   #include <asm-generic/hugetlb.h>
>   
>   #else /* ! CONFIG_HUGETLB_PAGE */
> diff --git a/arch/powerpc/mm/hugetlbpage.c b/arch/powerpc/mm/hugetlbpage.c
> index 33b3461d91e8..b78f660252f3 100644
> --- a/arch/powerpc/mm/hugetlbpage.c
> +++ b/arch/powerpc/mm/hugetlbpage.c
> @@ -558,7 +558,7 @@ unsigned long vma_mmu_pagesize(struct vm_area_struct *vma)
>   	return vma_kernel_pagesize(vma);
>   }
>   
> -static int __init add_huge_page_size(unsigned long long size)
> +bool __init arch_hugetlb_valid_size(unsigned long long size)
>   {
>   	int shift = __ffs(size);
>   	int mmu_psize;
> @@ -566,20 +566,26 @@ static int __init add_huge_page_size(unsigned long long size)
>   	/* Check that it is a page size supported by the hardware and
>   	 * that it fits within pagetable and slice limits. */
>   	if (size <= PAGE_SIZE || !is_power_of_2(size))
> -		return -EINVAL;
> +		return false;
>   
>   	mmu_psize = check_and_get_huge_psize(shift);
>   	if (mmu_psize < 0)
> -		return -EINVAL;
> +		return false;
>   
>   	BUG_ON(mmu_psize_defs[mmu_psize].shift != shift);
>   
> -	/* Return if huge page size has already been setup */
> -	if (size_to_hstate(size))
> -		return 0;
> +	return true;
> +}
>   
> -	hugetlb_add_hstate(shift - PAGE_SHIFT);
> +static int __init add_huge_page_size(unsigned long long size)
> +{
> +	int shift = __ffs(size);
> +
> +	if (!arch_hugetlb_valid_size(size))
> +		return -EINVAL;
>   
> +	if (!size_to_hstate(size))
> +		hugetlb_add_hstate(shift - PAGE_SHIFT);
>   	return 0;
>   }
>   

[snip]

> diff --git a/arch/x86/mm/hugetlbpage.c b/arch/x86/mm/hugetlbpage.c
> index 5bfd5aef5378..51e6208fdeec 100644
> --- a/arch/x86/mm/hugetlbpage.c
> +++ b/arch/x86/mm/hugetlbpage.c
> @@ -181,16 +181,25 @@ hugetlb_get_unmapped_area(struct file *file, unsigned long addr,
>   #endif /* CONFIG_HUGETLB_PAGE */
>   
>   #ifdef CONFIG_X86_64
> +bool __init arch_hugetlb_valid_size(unsigned long long size)
> +{
> +	if (size == PMD_SIZE)
> +		return true;
> +	else if (size == PUD_SIZE && boot_cpu_has(X86_FEATURE_GBPAGES))
> +		return true;
> +	else
> +		return false;
> +}
> +
>   static __init int setup_hugepagesz(char *opt)
>   {
> -	unsigned long ps = memparse(opt, &opt);
> -	if (ps == PMD_SIZE) {
> -		hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
> -	} else if (ps == PUD_SIZE && boot_cpu_has(X86_FEATURE_GBPAGES)) {
> -		hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
> +	unsigned long long ps = memparse(opt, &opt);
> +
> +	if (arch_hugetlb_valid_size(ps)) {
> +		hugetlb_add_hstate(ilog2(ps) - PAGE_SHIFT);
>   	} else {
>   		hugetlb_bad_size();
> -		printk(KERN_ERR "hugepagesz: Unsupported page size %lu M\n",
> +		printk(KERN_ERR "hugepagesz: Unsupported page size %llu M\n",
>   			ps >> 20);

Nowadays we use pr_err() instead of printk.

It would also likely allow you to have everything fit on a single line.

>   		return 0;
>   	}
> diff --git a/include/linux/hugetlb.h b/include/linux/hugetlb.h
> index b831e9fa1a26..33343eb980d0 100644
> --- a/include/linux/hugetlb.h
> +++ b/include/linux/hugetlb.h
> @@ -678,6 +678,13 @@ static inline spinlock_t *huge_pte_lockptr(struct hstate *h,
>   	return &mm->page_table_lock;
>   }
>   
> +#ifndef arch_hugetlb_valid_size
> +static inline bool arch_hugetlb_valid_size(unsigned long long size)
> +{
> +	return (size == HPAGE_SIZE);

Not sure the ( ) are necessary.

> +}
> +#endif
> +
>   #ifndef hugepages_supported
>   /*
>    * Some platform decide whether they support huge pages at boot
> diff --git a/mm/hugetlb.c b/mm/hugetlb.c
> index d8ebd876871d..2f99359b93af 100644
> --- a/mm/hugetlb.c
> +++ b/mm/hugetlb.c
> @@ -3224,12 +3224,22 @@ static int __init hugetlb_nrpages_setup(char *s)
>   }
>   __setup("hugepages=", hugetlb_nrpages_setup);
>   
> -static int __init hugetlb_default_setup(char *s)
> +static int __init default_hugepagesz_setup(char *s)
>   {
> -	default_hstate_size = memparse(s, &s);
> +	unsigned long long size;

Why unsigned long long ?

default_hstate_size is long.

I can't imagine 32 bits platforms having a hugepage with a 64 bits size.

> +	char *saved_s = s;
> +
> +	size = memparse(s, &s);

The updated s is not reused after that so you can pass NULL instead of 
&s and then you don't need the saved_s.

> +
> +	if (!arch_hugetlb_valid_size(size)) {
> +		pr_err("HugeTLB: unsupported default_hugepagesz %s\n", saved_s);
> +		return 0;
> +	}
> +
> +	default_hstate_size = size;
>   	return 1;
>   }
> -__setup("default_hugepagesz=", hugetlb_default_setup);
> +__setup("default_hugepagesz=", default_hugepagesz_setup);
>   
>   static unsigned int cpuset_mems_nr(unsigned int *array)
>   {
> 


Christophe

