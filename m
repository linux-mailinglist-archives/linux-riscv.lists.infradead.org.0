Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917B3190CF7
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 13:02:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSgzygHq9Ji7J4FaGtB/pLaT0vL2xWtGtECO8uRh1UI=; b=rlEusbml2B18Gs
	XfaKhUsxLUmLXHzW27/fkB3FW4YlIeeNZ32F7qmaCJOVshExeftHPnfdnyo5QvUXEojHhnJKm8WXj
	4L0GKySMWdOnldLTSGmfZZspGKPUsximkIpRM3H0T0rHu9i4y/UwF1QyfFQotUQ+Ilc96k38SKEyK
	s7BNbRmqBwhmtrulaYEswXUvNIVGarWHjPq0LQc2Nbbe4jjU8yBb+lZLN6IfyFl21FUTWJCHOESjm
	VZtq4Ehyn05RBzmVFyUj6UlfZ1XT1HFJ3pbCROJDQMPfqRExs+wN4wGm8p2S5Qxxww3JR8zkMORnq
	7a3WS4G/aqh4+Kyz6whg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiFy-0000tA-Ej; Tue, 24 Mar 2020 12:02:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiFY-0000kE-Tn; Tue, 24 Mar 2020 12:01:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4F171FB;
 Tue, 24 Mar 2020 05:01:35 -0700 (PDT)
Received: from [10.163.1.71] (unknown [10.163.1.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD49C3F792;
 Tue, 24 Mar 2020 05:01:26 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 1/2] mm/sparsemem: Enable vmem_altmap support in
 vmemmap_populate_basepages()
To: Robin Murphy <robin.murphy@arm.com>, linux-mm@kvack.org
References: <1583331030-7335-1-git-send-email-anshuman.khandual@arm.com>
 <1583331030-7335-2-git-send-email-anshuman.khandual@arm.com>
 <5e1bad9b-11d7-344c-766f-162f7a779941@arm.com>
Message-ID: <dd9cae33-e106-1e85-28e4-ce3b89d41f44@arm.com>
Date: Tue, 24 Mar 2020 17:31:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <5e1bad9b-11d7-344c-766f-162f7a779941@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_050141_060123_A3403632 
X-CRM114-Status: GOOD (  32.93  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 x86@kernel.org, "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
 Andy Lutomirski <luto@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 03/20/2020 10:38 PM, Robin Murphy wrote:
> On 2020-03-04 2:10 pm, Anshuman Khandual wrote:
>> vmemmap_populate_basepages() is used across platforms to allocate backing
>> memory for vmemmap mapping. This is used as a standard default choice or
>> as a fallback when intended huge pages allocation fails. This just creates
>> entire vmemmap mapping with base pages (PAGE_SIZE).
>>
>> On arm64 platforms, vmemmap_populate_basepages() is called instead of the
>> platform specific vmemmap_populate() when ARM64_SWAPPER_USES_SECTION_MAPS
>> is not enabled as in case for ARM64_16K_PAGES and ARM64_64K_PAGES configs.
>>
>> At present vmemmap_populate_basepages() does not support allocating from
>> driver defined struct vmem_altmap while trying to create vmemmap mapping
>> for a device memory range. It prevents ARM64_16K_PAGES and ARM64_64K_PAGES
>> configs on arm64 from supporting device memory with vmemap_altmap request.
>>
>> This enables vmem_altmap support in vmemmap_populate_basepages() unlocking
>> device memory allocation for vmemap mapping on arm64 platforms with 16K or
>> 64K base page configs.
>>
>> Each architecture should evaluate and decide on subscribing device memory
>> based base page allocation through vmemmap_populate_basepages(). Hence lets
>> keep it disabled on all archs in order to preserve the existing semantics.
>> A subsequent patch enables it on arm64.
> 
> I guess buy-in for this change largely depends on whether any other architectures are likely to want to share it. The existing altmap users don't look like they would, so that's probably more a question for the likes of S390 and RISC-V.

If vmemmap_populate_basepages() exists to be shared across platforms for
creating vmemmap mapping with base pages, then there does not seem to be
any good reason for it not to support altmap requests as well.

> 
> Failing that, simply decoupling arm64 from vmemmap_populate_basepages() seems viable - I tried hacking up a quick proof-of-concept (attached at the end) and it doesn't come out looking *too* disgusting.

Even though this option seemed viable to me at the beginning, there was
no particular pressing reasons for vmemmap_populate_basepages() to exist
as a generic function and not support atlamp. If each architecture just
create their own policies regarding which level to support altmap or not
while also using a generic function, then why even have a minimum shared
function like vmemmap_populate_basepages() in the first place.

> 
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>> Cc: Palmer Dabbelt <palmer@dabbelt.com>
>> Cc: Tony Luck <tony.luck@intel.com>
>> Cc: Fenghua Yu <fenghua.yu@intel.com>
>> Cc: Dave Hansen <dave.hansen@linux.intel.com>
>> Cc: Andy Lutomirski <luto@kernel.org>
>> Cc: Peter Zijlstra <peterz@infradead.org>
>> Cc: Thomas Gleixner <tglx@linutronix.de>
>> Cc: Ingo Molnar <mingo@redhat.com>
>> Cc: David Hildenbrand <david@redhat.com>
>> Cc: Mike Rapoport <rppt@linux.ibm.com>
>> Cc: Michal Hocko <mhocko@suse.com>
>> Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
>> Cc: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: Dan Williams <dan.j.williams@intel.com>
>> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-ia64@vger.kernel.org
>> Cc: linux-riscv@lists.infradead.org
>> Cc: x86@kernel.org
>> Cc: linux-kernel@vger.kernel.org
>>
>> Acked-by: Will Deacon <will@kernel.org>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>   arch/arm64/mm/mmu.c      |  2 +-
>>   arch/ia64/mm/discontig.c |  2 +-
>>   arch/riscv/mm/init.c     |  2 +-
>>   arch/x86/mm/init_64.c    |  6 +++---
>>   include/linux/mm.h       |  5 +++--
>>   mm/sparse-vmemmap.c      | 16 +++++++++++-----
>>   6 files changed, 20 insertions(+), 13 deletions(-)
>>
>> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
>> index 9b08f7c7e6f0..27cb95c471eb 100644
>> --- a/arch/arm64/mm/mmu.c
>> +++ b/arch/arm64/mm/mmu.c
>> @@ -1036,7 +1036,7 @@ static void free_empty_tables(unsigned long addr, unsigned long end,
>>   int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>>           struct vmem_altmap *altmap)
>>   {
>> -    return vmemmap_populate_basepages(start, end, node);
>> +    return vmemmap_populate_basepages(start, end, node, NULL);
>>   }
>>   #else    /* !ARM64_SWAPPER_USES_SECTION_MAPS */
>>   int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>> diff --git a/arch/ia64/mm/discontig.c b/arch/ia64/mm/discontig.c
>> index 4f33f6e7e206..20409f3afea8 100644
>> --- a/arch/ia64/mm/discontig.c
>> +++ b/arch/ia64/mm/discontig.c
>> @@ -656,7 +656,7 @@ void arch_refresh_nodedata(int update_node, pg_data_t *update_pgdat)
>>   int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>>           struct vmem_altmap *altmap)
>>   {
>> -    return vmemmap_populate_basepages(start, end, node);
>> +    return vmemmap_populate_basepages(start, end, node, NULL);
>>   }
>>     void vmemmap_free(unsigned long start, unsigned long end,
>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
>> index 965a8cf4829c..1d7451c91982 100644
>> --- a/arch/riscv/mm/init.c
>> +++ b/arch/riscv/mm/init.c
>> @@ -501,6 +501,6 @@ void __init paging_init(void)
>>   int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>>                      struct vmem_altmap *altmap)
>>   {
>> -    return vmemmap_populate_basepages(start, end, node);
>> +    return vmemmap_populate_basepages(start, end, node, NULL);
>>   }
>>   #endif
>> diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
>> index abbdecb75fad..3272fe0d844a 100644
>> --- a/arch/x86/mm/init_64.c
>> +++ b/arch/x86/mm/init_64.c
>> @@ -1471,7 +1471,7 @@ static int __meminit vmemmap_populate_hugepages(unsigned long start,
>>               vmemmap_verify((pte_t *)pmd, node, addr, next);
>>               continue;
>>           }
>> -        if (vmemmap_populate_basepages(addr, next, node))
>> +        if (vmemmap_populate_basepages(addr, next, node, NULL))
>>               return -ENOMEM;
>>       }
>>       return 0;
>> @@ -1483,7 +1483,7 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>>       int err;
>>         if (end - start < PAGES_PER_SECTION * sizeof(struct page))
>> -        err = vmemmap_populate_basepages(start, end, node);
>> +        err = vmemmap_populate_basepages(start, end, node, NULL);
>>       else if (boot_cpu_has(X86_FEATURE_PSE))
>>           err = vmemmap_populate_hugepages(start, end, node, altmap);
>>       else if (altmap) {
>> @@ -1491,7 +1491,7 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>>                   __func__);
>>           err = -ENOMEM;
>>       } else
>> -        err = vmemmap_populate_basepages(start, end, node);
>> +        err = vmemmap_populate_basepages(start, end, node, NULL);
>>       if (!err)
>>           sync_global_pgds(start, end - 1);
>>       return err;
>> diff --git a/include/linux/mm.h b/include/linux/mm.h
>> index 52269e56c514..42f99c8d63c0 100644
>> --- a/include/linux/mm.h
>> +++ b/include/linux/mm.h
>> @@ -2780,14 +2780,15 @@ pgd_t *vmemmap_pgd_populate(unsigned long addr, int node);
>>   p4d_t *vmemmap_p4d_populate(pgd_t *pgd, unsigned long addr, int node);
>>   pud_t *vmemmap_pud_populate(p4d_t *p4d, unsigned long addr, int node);
>>   pmd_t *vmemmap_pmd_populate(pud_t *pud, unsigned long addr, int node);
>> -pte_t *vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node);
>> +pte_t *vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node,
>> +                struct vmem_altmap *altmap);
>>   void *vmemmap_alloc_block(unsigned long size, int node);
>>   struct vmem_altmap;
>>   void *vmemmap_alloc_block_buf(unsigned long size, int node);
>>   void *altmap_alloc_block_buf(unsigned long size, struct vmem_altmap *altmap);
>>   void vmemmap_verify(pte_t *, int, unsigned long, unsigned long);
>>   int vmemmap_populate_basepages(unsigned long start, unsigned long end,
>> -                   int node);
>> +                   int node, struct vmem_altmap *altmap);
>>   int vmemmap_populate(unsigned long start, unsigned long end, int node,
>>           struct vmem_altmap *altmap);
>>   void vmemmap_populate_print_last(void);
>> diff --git a/mm/sparse-vmemmap.c b/mm/sparse-vmemmap.c
>> index 200aef686722..a407abc9b46c 100644
>> --- a/mm/sparse-vmemmap.c
>> +++ b/mm/sparse-vmemmap.c
>> @@ -140,12 +140,18 @@ void __meminit vmemmap_verify(pte_t *pte, int node,
>>               start, end - 1);
>>   }
>>   -pte_t * __meminit vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node)
>> +pte_t * __meminit vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node,
>> +                       struct vmem_altmap *altmap)
>>   {
>>       pte_t *pte = pte_offset_kernel(pmd, addr);
>>       if (pte_none(*pte)) {
>>           pte_t entry;
>> -        void *p = vmemmap_alloc_block_buf(PAGE_SIZE, node);
>> +        void *p;
>> +
>> +        if (altmap)
>> +            p = altmap_alloc_block_buf(PAGE_SIZE, altmap);
>> +        else
>> +            p = vmemmap_alloc_block_buf(PAGE_SIZE, node);
> 
> This pattern ends up appearing a number of times by the end - if we do go down the generic code route, might it be worth pushing it down into vmmemmap_alloc_block_buf() itself to make it automatic? (possibly even including the powerpc fallback behaviour too?)

Yes, this pattern is now there in couple of more places. Sure, will change
vmemmap_alloc_block_buf() to handle altmap with a fallback request.

Something like this (not tested properly)

--------------------------------------------------- 
From: Anshuman Khandual <anshuman.khandual@arm.com>
Date: Tue, 24 Mar 2020 07:35:47 +0000
Subject: [PATCH] mm/sparse: Enable vmemmap_alloc_block_buf() for altmap
 allocations

There are many instances where vmemap allocation is often switched between
device memory and regular memory based on whether altmap is available or
not. vmemmap_alloc_block_buf() is used in various platforms to allocate
vmemmap. Hence enable it to handle altmap based device memory allocation as
well. While here implement a regular memory allocation fallback mechanism
that is used in powerpc.

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/mm/mmu.c       |  6 ++----
 arch/powerpc/mm/init_64.c | 12 ++++++------
 arch/x86/mm/init_64.c     |  6 ++----
 include/linux/mm.h        |  3 ++-
 mm/sparse-vmemmap.c       | 27 +++++++++++++++++++++------
 5 files changed, 33 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 88c5b357013b..45f09935c160 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -1080,10 +1080,8 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 		if (pmd_none(READ_ONCE(*pmdp))) {
 			void *p = NULL;
 
-			if (altmap)
-				p = altmap_alloc_block_buf(PMD_SIZE, altmap);
-			else
-				p = vmemmap_alloc_block_buf(PMD_SIZE, node);
+			p = vmemmap_alloc_block_buf(PMD_SIZE, node,
+						    altmap, false);
 			if (!p)
 				return -ENOMEM;
 
diff --git a/arch/powerpc/mm/init_64.c b/arch/powerpc/mm/init_64.c
index 4002ced3596f..31995eb4b62a 100644
--- a/arch/powerpc/mm/init_64.c
+++ b/arch/powerpc/mm/init_64.c
@@ -150,7 +150,7 @@ static __meminit struct vmemmap_backing * vmemmap_list_alloc(int node)
 
 	/* allocate a page when required and hand out chunks */
 	if (!num_left) {
-		next = vmemmap_alloc_block(PAGE_SIZE, node);
+		next = vmemmap_alloc_block(PAGE_SIZE, node, NULL, false);
 		if (unlikely(!next)) {
 			WARN_ON(1);
 			return NULL;
@@ -226,12 +226,12 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 		 * fall back to system memory if the altmap allocation fail.
 		 */
 		if (altmap && !altmap_cross_boundary(altmap, start, page_size)) {
-			p = altmap_alloc_block_buf(page_size, altmap);
-			if (!p)
-				pr_debug("altmap block allocation failed, falling back to system memory");
+			p = vmemmap_alloc_block_buf(page_size, node,
+						    altmap, true);
+		} else {
+			p = vmemmap_alloc_block_buf(page_size, node,
+						    NULL, false);
 		}
-		if (!p)
-			p = vmemmap_alloc_block_buf(page_size, node);
 		if (!p)
 			return -ENOMEM;
 
diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
index c22677571619..35cc0c9d9578 100644
--- a/arch/x86/mm/init_64.c
+++ b/arch/x86/mm/init_64.c
@@ -1444,10 +1444,8 @@ static int __meminit vmemmap_populate_hugepages(unsigned long start,
 		if (pmd_none(*pmd)) {
 			void *p;
 
-			if (altmap)
-				p = altmap_alloc_block_buf(PMD_SIZE, altmap);
-			else
-				p = vmemmap_alloc_block_buf(PMD_SIZE, node);
+			p = vmemmap_alloc_block_buf(PMD_SIZE, node,
+						    altmap, false);
 			if (p) {
 				pte_t entry;
 
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 4a987d173488..a2cb9c669800 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2994,7 +2994,8 @@ pte_t *vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node,
 			    struct vmem_altmap *altmap);
 void *vmemmap_alloc_block(unsigned long size, int node);
 struct vmem_altmap;
-void *vmemmap_alloc_block_buf(unsigned long size, int node);
+void *vmemmap_alloc_block_buf(unsigned long size, int node,
+			      struct vmem_altmap *altmap, bool fallback);
 void *altmap_alloc_block_buf(unsigned long size, struct vmem_altmap *altmap);
 void vmemmap_verify(pte_t *, int, unsigned long, unsigned long);
 int vmemmap_populate_basepages(unsigned long start, unsigned long end,
diff --git a/mm/sparse-vmemmap.c b/mm/sparse-vmemmap.c
index a407abc9b46c..f502fcdf539f 100644
--- a/mm/sparse-vmemmap.c
+++ b/mm/sparse-vmemmap.c
@@ -71,10 +71,28 @@ void * __meminit vmemmap_alloc_block(unsigned long size, int node)
 }
 
 /* need to make sure size is all the same during early stage */
-void * __meminit vmemmap_alloc_block_buf(unsigned long size, int node)
+void * __meminit vmemmap_alloc_block_buf(unsigned long size, int node,
+					 struct vmem_altmap *altmap,
+					 bool fallback)
 {
-	void *ptr = sparse_buffer_alloc(size);
+	void *ptr;
 
+	/*
+	 * There is no point in asking for fallback without
+	 * an altmap request to begin with. Just warn here
+	 * to catch potential call sites violating this.
+	 */
+	WARN_ON(!altmap && fallback);
+
+	if (altmap) {
+		ptr = altmap_alloc_block_buf(size, altmap);
+		if (!ptr && !fallback)
+			return NULL;
+		pr_debug("altmap block allocation failed,\
+				falling back to system memory");
+	}
+
+	ptr = sparse_buffer_alloc(size);
 	if (!ptr)
 		ptr = vmemmap_alloc_block(size, node);
 	return ptr;
@@ -148,10 +166,7 @@ pte_t * __meminit vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node,
 		pte_t entry;
 		void *p;
 
-		if (altmap)
-			p = altmap_alloc_block_buf(PAGE_SIZE, altmap);
-		else
-			p = vmemmap_alloc_block_buf(PAGE_SIZE, node);
+		p = vmemmap_alloc_block_buf(PAGE_SIZE, node, altmap, false);
 		if (!p)
 			return NULL;
 		entry = pfn_pte(__pa(p) >> PAGE_SHIFT, PAGE_KERNEL);
-- 
2.20.1



> 
> Robin.
> 
>>           if (!p)
>>               return NULL;
>>           entry = pfn_pte(__pa(p) >> PAGE_SHIFT, PAGE_KERNEL);
>> @@ -213,8 +219,8 @@ pgd_t * __meminit vmemmap_pgd_populate(unsigned long addr, int node)
>>       return pgd;
>>   }
>>   -int __meminit vmemmap_populate_basepages(unsigned long start,
>> -                     unsigned long end, int node)
>> +int __meminit vmemmap_populate_basepages(unsigned long start, unsigned long end,
>> +                     int node, struct vmem_altmap *altmap)
>>   {
>>       unsigned long addr = start;
>>       pgd_t *pgd;
>> @@ -236,7 +242,7 @@ int __meminit vmemmap_populate_basepages(unsigned long start,
>>           pmd = vmemmap_pmd_populate(pud, addr, node);
>>           if (!pmd)
>>               return -ENOMEM;
>> -        pte = vmemmap_pte_populate(pmd, addr, node);
>> +        pte = vmemmap_pte_populate(pmd, addr, node, altmap);
>>           if (!pte)
>>               return -ENOMEM;
>>           vmemmap_verify(pte, node, addr, addr + PAGE_SIZE);
>>
> 
> ----->8-----
> From: Robin Murphy <robin.murphy@arm.com>
> Subject: [PATCH] arm64/mm: Consolidate vmemmap_populate()
> 
> Since we already have a custom vmemmap_populate() implementation, fold
> the non-section-map case into that as well, so that we can easily add
> altmap support for both cases without having to mess with core code.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/arm64/mm/mmu.c | 34 +++++++++++++++++++++-------------
>  1 file changed, 21 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 128f70852bf3..e250fd414b2b 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -725,13 +725,6 @@ int kern_addr_valid(unsigned long addr)
>      return pfn_valid(pte_pfn(pte));
>  }
>  #ifdef CONFIG_SPARSEMEM_VMEMMAP
> -#if !ARM64_SWAPPER_USES_SECTION_MAPS
> -int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
> -        struct vmem_altmap *altmap)
> -{
> -    return vmemmap_populate_basepages(start, end, node);
> -}
> -#else    /* !ARM64_SWAPPER_USES_SECTION_MAPS */
>  int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>          struct vmem_altmap *altmap)
>  {
> @@ -740,6 +733,7 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>      pgd_t *pgdp;
>      pud_t *pudp;
>      pmd_t *pmdp;
> +    pte_t *ptep;
> 
>      do {
>          next = pmd_addr_end(addr, end);
> @@ -752,22 +746,36 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>          if (!pudp)
>              return -ENOMEM;
> 
> +#if ARM64_SWAPPER_USES_SECTION_MAPS
>          pmdp = pmd_offset(pudp, addr);
>          if (pmd_none(READ_ONCE(*pmdp))) {
> -            void *p = NULL;
> -
> -            p = vmemmap_alloc_block_buf(PMD_SIZE, node);
> +            void *p = vmemmap_alloc_block_buf(PMD_SIZE, node);
>              if (!p)
>                  return -ENOMEM;
> 
>              pmd_set_huge(pmdp, __pa(p), __pgprot(PROT_SECT_NORMAL));
> -        } else
> -            vmemmap_verify((pte_t *)pmdp, node, addr, next);
> +            continue;
> +        }
> +#else
> +        pmdp = vmemmap_pmd_populate(pmdp, addr, node);
> +        if (!pmdp)
> +            return -ENOMEM;
> +
> +        ptep = pte_offset_kernel(pmdp, addr);
> +        if (pte_none(READ_ONCE(*ptep))) {
> +            void *p = vmemmap_alloc_block_buf(PAGE_SIZE, node);
> +            if (!p)
> +                return -ENOMEM;
> +
> +            set_pte(ptep, pfn_pte(__pa(p) >> PAGE_SHIFT, PAGE_KERNEL));
> +        }
> +#endif
> +        vmemmap_verify((pte_t *)pmdp, node, addr, next);
>      } while (addr = next, addr != end);
> 
>      return 0;
>  }
> -#endif    /* !ARM64_SWAPPER_USES_SECTION_MAPS */
> +
>  void vmemmap_free(unsigned long start, unsigned long end,
>          struct vmem_altmap *altmap)
>  {
> 
> 

