Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD0818F5B5
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Mar 2020 14:27:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFzoL+7cgYVCnmEx1we1+8G++yUuQcHDhPmuFS12v5I=; b=uvNCVAev3sEsd3
	KWUJyG5LbSiMKfiqnHKVM8Y7kxL63ArGW8HkF11oUEHG/uK40r9cam3jGS3WiBuHrzjuVpuWH8aoA
	wlBVCtChGgPAVoHC0EpdCV47nhubCY2kJJT+akcyK9I8NQqY2cwhyiNCvN5O9QfyXY3rDQNBu5xgQ
	QImJxOgTcixBCJhSdpURtALC1c210mMrf4EF1kibSXOfI804595u/HYbmxRiOnYSiQF7A5b29WrR+
	SM0a/r2hTNYI/2yhlInTYKKRRvP2/cuz7Hr8nLBL58MVLcM9ieAPyvurGtT+xwH/k2mLcee6zXTl1
	5CSHbLL0/3znW28r4bHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGN6q-0007nh-R1; Mon, 23 Mar 2020 13:27:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGN6d-0007au-Gb; Mon, 23 Mar 2020 13:27:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0F071FB;
 Mon, 23 Mar 2020 06:27:00 -0700 (PDT)
Received: from [10.163.1.71] (unknown [10.163.1.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 725DB3F52E;
 Mon, 23 Mar 2020 06:26:51 -0700 (PDT)
Subject: Re: [PATCH] mm/debug: Add tests validating arch page table helpers
 for core features
To: Christophe Leroy <christophe.leroy@c-s.fr>
References: <1582799637-11786-1-git-send-email-anshuman.khandual@arm.com>
 <2be41c29-500c-50af-f915-1493846ae9e5@c-s.fr>
 <4343eda9-7df2-a13c-0125-cf784c81ce14@arm.com>
 <20200302222443.Horde.3Vn7_PzcWbAADKFWloR-kw8@messagerie.si.c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <cd80e950-1185-bc12-f844-295b854d429a@arm.com>
Date: Mon, 23 Mar 2020 18:56:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200302222443.Horde.3Vn7_PzcWbAADKFWloR-kw8@messagerie.si.c-s.fr>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_062703_640453_12926B64 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 03/03/2020 02:54 AM, Christophe Leroy wrote:
> Anshuman Khandual <anshuman.khandual@arm.com> a écrit :
> 
>> On 02/27/2020 04:59 PM, Christophe Leroy wrote:
>>>
>>>
>>> Le 27/02/2020 à 11:33, Anshuman Khandual a écrit :
>>>> This adds new tests validating arch page table helpers for these following
>>>> core memory features. These tests create and test specific mapping types at
>>>> various page table levels.
>>>>
>>>> * SPECIAL mapping
>>>> * PROTNONE mapping
>>>> * DEVMAP mapping
>>>> * SOFTDIRTY mapping
>>>> * SWAP mapping
>>>> * MIGRATION mapping
>>>> * HUGETLB mapping
>>>> * THP mapping
>>>>
>>>> Cc: Andrew Morton <akpm@linux-foundation.org>
>>>> Cc: Mike Rapoport <rppt@linux.ibm.com>
>>>> Cc: Vineet Gupta <vgupta@synopsys.com>
>>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>>>> Cc: Will Deacon <will@kernel.org>
>>>> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
>>>> Cc: Paul Mackerras <paulus@samba.org>
>>>> Cc: Michael Ellerman <mpe@ellerman.id.au>
>>>> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
>>>> Cc: Vasily Gorbik <gor@linux.ibm.com>
>>>> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
>>>> Cc: Thomas Gleixner <tglx@linutronix.de>
>>>> Cc: Ingo Molnar <mingo@redhat.com>
>>>> Cc: Borislav Petkov <bp@alien8.de>
>>>> Cc: "H. Peter Anvin" <hpa@zytor.com>
>>>> Cc: Kirill A. Shutemov <kirill@shutemov.name>
>>>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>>>> Cc: Palmer Dabbelt <palmer@dabbelt.com>
>>>> Cc: linux-snps-arc@lists.infradead.org
>>>> Cc: linux-arm-kernel@lists.infradead.org
>>>> Cc: linuxppc-dev@lists.ozlabs.org
>>>> Cc: linux-s390@vger.kernel.org
>>>> Cc: linux-riscv@lists.infradead.org
>>>> Cc: x86@kernel.org
>>>> Cc: linux-arch@vger.kernel.org
>>>> Cc: linux-kernel@vger.kernel.org
>>>> Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
>>>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>>>> ---
>>>> Tested on arm64 and x86 platforms without any test failures. But this has
>>>> only been built tested on several other platforms. Individual tests need
>>>> to be verified on all current enabling platforms for the test i.e s390,
>>>> ppc32, arc etc.
>>>>
>>>> This patch must be applied on v5.6-rc3 after these patches
>>>>
>>>> 1. https://patchwork.kernel.org/patch/11385057/
>>>> 2. https://patchwork.kernel.org/patch/11407715/
>>>>
>>>> OR
>>>>
>>>> This patch must be applied on linux-next (next-20200227) after this patch
>>>>
>>>> 2. https://patchwork.kernel.org/patch/11407715/
>>>>
>>>>   mm/debug_vm_pgtable.c | 310 +++++++++++++++++++++++++++++++++++++++++-
>>>>   1 file changed, 309 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
>>>> index 96dd7d574cef..3fb90d5b604e 100644
>>>> --- a/mm/debug_vm_pgtable.c
>>>> +++ b/mm/debug_vm_pgtable.c
>>>> @@ -41,6 +41,44 @@
>>>>    * wrprotect(entry)        = A write protected and not a write entry
>>>>    * pxx_bad(entry)        = A mapped and non-table entry
>>>>    * pxx_same(entry1, entry2)    = Both entries hold the exact same value
>>>> + *
>>>> + * Specific feature operations
>>>> + *
>>>> + * pte_mkspecial(entry)        = Creates a special entry at PTE level
>>>> + * pte_special(entry)        = Tests a special entry at PTE level
>>>> + *
>>>> + * pte_protnone(entry)        = Tests a no access entry at PTE level
>>>> + * pmd_protnone(entry)        = Tests a no access entry at PMD level
>>>> + *
>>>> + * pte_mkdevmap(entry)        = Creates a device entry at PTE level
>>>> + * pmd_mkdevmap(entry)        = Creates a device entry at PMD level
>>>> + * pud_mkdevmap(entry)        = Creates a device entry at PUD level
>>>> + * pte_devmap(entry)        = Tests a device entry at PTE level
>>>> + * pmd_devmap(entry)        = Tests a device entry at PMD level
>>>> + * pud_devmap(entry)        = Tests a device entry at PUD level
>>>> + *
>>>> + * pte_mksoft_dirty(entry)    = Creates a soft dirty entry at PTE level
>>>> + * pmd_mksoft_dirty(entry)    = Creates a soft dirty entry at PMD level
>>>> + * pte_swp_mksoft_dirty(entry)    = Creates a soft dirty swap entry at PTE level
>>>> + * pmd_swp_mksoft_dirty(entry)    = Creates a soft dirty swap entry at PMD level
>>>> + * pte_soft_dirty(entry)    = Tests a soft dirty entry at PTE level
>>>> + * pmd_soft_dirty(entry)    = Tests a soft dirty entry at PMD level
>>>> + * pte_swp_soft_dirty(entry)    = Tests a soft dirty swap entry at PTE level
>>>> + * pmd_swp_soft_dirty(entry)    = Tests a soft dirty swap entry at PMD level
>>>> + * pte_clear_soft_dirty(entry)       = Clears a soft dirty entry at PTE level
>>>> + * pmd_clear_soft_dirty(entry)       = Clears a soft dirty entry at PMD level
>>>> + * pte_swp_clear_soft_dirty(entry) = Clears a soft dirty swap entry at PTE level
>>>> + * pmd_swp_clear_soft_dirty(entry) = Clears a soft dirty swap entry at PMD level
>>>> + *
>>>> + * pte_mkhuge(entry)        = Creates a HugeTLB entry at given level
>>>> + * pte_huge(entry)        = Tests a HugeTLB entry at given level
>>>> + *
>>>> + * pmd_trans_huge(entry)    = Tests a trans huge page at PMD level
>>>> + * pud_trans_huge(entry)    = Tests a trans huge page at PUD level
>>>> + * pmd_present(entry)        = Tests an entry points to memory at PMD level
>>>> + * pud_present(entry)        = Tests an entry points to memory at PUD level
>>>> + * pmd_mknotpresent(entry)    = Invalidates an PMD entry for MMU
>>>> + * pud_mknotpresent(entry)    = Invalidates an PUD entry for MMU
>>>>    */
>>>>   #define VMFLAGS    (VM_READ|VM_WRITE|VM_EXEC)
>>>>   @@ -287,6 +325,233 @@ static void __init pmd_populate_tests(struct mm_struct *mm, pmd_t *pmdp,
>>>>       WARN_ON(pmd_bad(pmd));
>>>>   }
>>>>   +#ifdef CONFIG_ARCH_HAS_PTE_SPECIAL
>>>
>>> Can we avoid ifdefs unless necessary ?
>>>
>>> In mm/memory.c I see things like the following, it means pte_special() always exist and a #ifdef is not necessary.
>>
>> True, #ifdef here can be dropped here, done.
>>
>>>
>>>     if (IS_ENABLED(CONFIG_ARCH_HAS_PTE_SPECIAL)) {
>>>         if (likely(!pte_special(pte)))
>>>             goto check_pfn;
>>>         if (vma->vm_ops && vma->vm_ops->find_special_page)
>>>             return vma->vm_ops->find_special_page(vma, addr);
>>>         if (vma->vm_flags & (VM_PFNMAP | VM_MIXEDMAP))
>>>             return NULL;
>>>         if (is_zero_pfn(pfn))
>>>             return NULL;
>>>         if (pte_devmap(pte))
>>>             return NULL;
>>>
>>>         print_bad_pte(vma, addr, pte, NULL);
>>>         return NULL;
>>>     }
>>>
>>>> +static void __init pte_special_tests(unsigned long pfn, pgprot_t prot)
>>>> +{
>>>> +    pte_t pte = pfn_pte(pfn, prot);
>>>> +
>>>> +    WARN_ON(!pte_special(pte_mkspecial(pte)));
>>>> +}
>>>> +#else
>>>> +static void __init pte_special_tests(unsigned long pfn, pgprot_t prot) { }
>>>> +#endif
>>>> +
>>>> +#ifdef CONFIG_NUMA_BALANCING
>>>
>>> Same here, this ifdef shouldn't be necessary because in /include/asm-generic/pgtable.h we have the following, so a if (IS_ENABLED()) should be enough.
>>>
>>> #ifndef CONFIG_NUMA_BALANCING
>>> /*
>>>  * Technically a PTE can be PROTNONE even when not doing NUMA balancing but
>>>  * the only case the kernel cares is for NUMA balancing and is only ever set
>>>  * when the VMA is accessible. For PROT_NONE VMAs, the PTEs are not marked
>>>  * _PAGE_PROTNONE so by by default, implement the helper as "always no". It
>>>  * is the responsibility of the caller to distinguish between PROT_NONE
>>>  * protections and NUMA hinting fault protections.
>>>  */
>>> static inline int pte_protnone(pte_t pte)
>>> {
>>>     return 0;
>>> }
>>>
>>> static inline int pmd_protnone(pmd_t pmd)
>>> {
>>>     return 0;
>>> }
>>> #endif /* CONFIG_NUMA_BALANCING */
>>
>> True,  #ifdef here can be dropped, done. There is something I had missed
>> before, pfn_pmd() requires #ifdef CONFIG_TRANSPARENT_HUGEPAGE instead. We
>> need a pmd_t here with given prot. We cannot go via pfn_pte() followed by
>> pte_pmd(), as the later is platform specific and not available in general.
> 
> As many things require CONFIG_TRANSPARENT_HUGEPAGE,  maybe it would be worth creating an additional C file with the related functions and build it conditionnaly to CONFIG_TRANSPARENT_HUGEPAGE
> 

Apologies for the delayed response here. Any split in the test will break it's
monolithic structure which is not desirable. Also lack of an explicit dependency
between HAVE_ARCH_TRANSPARENT_HUGEPAGE and HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
makes it difficult to group together fallback dummy stubs from various THP
related test functions here. I am planning to re-spin this patch sooner with
some more tests while also accommodating other previous comments. Hence, will
probably note down this aspect which can then be discussed further if required.

> Christophe

