Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 997621B8B68
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 04:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERygmT9YQWCQAa6GxHaRh7TyOEto2HA2IO6ODT3qR1w=; b=fy6gnjKEwN976n
	7LAY6gwPsxMZz8ohTUl9MkY6UNpAuMAcAYC9zrfbGN/O0wU0FU4c8Nd1rog34pRHjr8rDUZb34dUQ
	JhwcrEmGHBrwyzh+W21l0HWZMGxtnc8P9XcPxoF33oW2g7ClRkkl+2eRoZZZ8KAG2cxgSMTxa1X8g
	k4+wIWKEKFPyOcyLd5vbYkduHh/00LZQwpwlvlLiBmSHRNVbKYTasNDAoh0zqXyNV3BX3KpaMFjqT
	EXccLV+HcG1kWyBs/qL9e/RrY6Efn7JfgaEcAdXlP+NjtoB+B/MoWwev5xFPlfh/aSZU624alIiOy
	3CsnJZc24YR5BdTMs4CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSXGr-0008W3-Tn; Sun, 26 Apr 2020 02:43:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSXGg-0008Ma-N7; Sun, 26 Apr 2020 02:43:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88A7A31B;
 Sat, 25 Apr 2020 19:43:39 -0700 (PDT)
Received: from [10.163.1.45] (unknown [10.163.1.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 61C1D3F73D;
 Sat, 25 Apr 2020 19:43:29 -0700 (PDT)
Subject: Re: [PATCH 3/3] mm/hugetlb: Introduce HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS
To: Andrew Morton <akpm@linux-foundation.org>
References: <1586864670-21799-1-git-send-email-anshuman.khandual@arm.com>
 <1586864670-21799-4-git-send-email-anshuman.khandual@arm.com>
 <20200425175511.7a68efb5e2f4436fe0328c1d@linux-foundation.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <87d37591-caa2-b82b-392a-3a29b2c7e9a6@arm.com>
Date: Sun, 26 Apr 2020 08:13:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200425175511.7a68efb5e2f4436fe0328c1d@linux-foundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_194342_841679_08CF58BF 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 04/26/2020 06:25 AM, Andrew Morton wrote:
> On Tue, 14 Apr 2020 17:14:30 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>> There are multiple similar definitions for arch_clear_hugepage_flags() on
>> various platforms. This introduces HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS for those
>> platforms that need to define their own arch_clear_hugepage_flags() while
>> also providing a generic fallback definition for others to use. This help
>> reduce code duplication.
>>
>> ...
>>
>> --- a/include/linux/hugetlb.h
>> +++ b/include/linux/hugetlb.h
>> @@ -544,6 +544,10 @@ static inline int is_hugepage_only_range(struct mm_struct *mm,
>>  }
>>  #endif
>>  
>> +#ifndef HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS
>> +static inline void arch_clear_hugepage_flags(struct page *page) { }
>> +#endif
>> +
>>  #ifndef arch_make_huge_pte
>>  static inline pte_t arch_make_huge_pte(pte_t entry, struct vm_area_struct *vma,
>>  				       struct page *page, int writable)
> 
> This is the rather old-school way of doing it.  The Linus-suggested way is
> 
> #ifndef arch_clear_hugepage_flags
> static inline void arch_clear_hugepage_flags(struct page *page)
> {
> }
> #define arch_clear_hugepage_flags arch_clear_hugepage_flags

Do we need that above line here ? Is not that implicit.

> #endif
> 
> And the various arch headers do
> 
> static inline void arch_clear_hugepage_flags(struct page *page)
> {
> 	<some implementation>
> }
> #define arch_clear_hugepage_flags arch_clear_hugepage_flags
> 
> It's a small difference - mainly to avoid adding two variables to the
> overall namespace where one would do.

Understood, will change and resend.

> 
> 

