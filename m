Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C6D18D55D
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Mar 2020 18:09:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sI0azXhwfggUs4vo8eCMPAIBYg5uqmWJu89VQwh1sGE=; b=g177Y/gqQM3T2J
	JGqnktZwqqHEtisXtX4m5i83oIx7Pxyt/W8VuKaPyOwUKHKOBBK9ZSibWWWSEVU78/EhrBLeygDLQ
	u1hF6UjXxHGVXD/T5lu0TtMrvoiQUXWWHbJDum5JWt47eemuiNXvzdJzpW02KJQisENUbrX5Pzdvy
	p7nJMuBVDK//87Ou07yk9hsFqkDtqHHDl50jF2F1Mcgh16CSe+O7FoncA+GjrCHXalq6MtK55mQRp
	puIlqUBcET3fxHA4VBQex4bhLvxN1/HlV9AKd2Z7Ny4yJ8l9eFe1j6Dy+UK9Zq9bL8GVFzQMarYAr
	Q5YRgn3L1tNWcKmTWyuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFL8y-00034m-N4; Fri, 20 Mar 2020 17:09:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFL8h-0002wq-0Y; Fri, 20 Mar 2020 17:08:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C3041FB;
 Fri, 20 Mar 2020 10:08:51 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E69003F305;
 Fri, 20 Mar 2020 10:08:46 -0700 (PDT)
Subject: Re: [PATCH V2 1/2] mm/sparsemem: Enable vmem_altmap support in
 vmemmap_populate_basepages()
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1583331030-7335-1-git-send-email-anshuman.khandual@arm.com>
 <1583331030-7335-2-git-send-email-anshuman.khandual@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5e1bad9b-11d7-344c-766f-162f7a779941@arm.com>
Date: Fri, 20 Mar 2020 17:08:31 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1583331030-7335-2-git-send-email-anshuman.khandual@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_100855_148928_316E465A 
X-CRM114-Status: GOOD (  35.86  )
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

On 2020-03-04 2:10 pm, Anshuman Khandual wrote:
> vmemmap_populate_basepages() is used across platforms to allocate backing
> memory for vmemmap mapping. This is used as a standard default choice or
> as a fallback when intended huge pages allocation fails. This just creates
> entire vmemmap mapping with base pages (PAGE_SIZE).
> 
> On arm64 platforms, vmemmap_populate_basepages() is called instead of the
> platform specific vmemmap_populate() when ARM64_SWAPPER_USES_SECTION_MAPS
> is not enabled as in case for ARM64_16K_PAGES and ARM64_64K_PAGES configs.
> 
> At present vmemmap_populate_basepages() does not support allocating from
> driver defined struct vmem_altmap while trying to create vmemmap mapping
> for a device memory range. It prevents ARM64_16K_PAGES and ARM64_64K_PAGES
> configs on arm64 from supporting device memory with vmemap_altmap request.
> 
> This enables vmem_altmap support in vmemmap_populate_basepages() unlocking
> device memory allocation for vmemap mapping on arm64 platforms with 16K or
> 64K base page configs.
> 
> Each architecture should evaluate and decide on subscribing device memory
> based base page allocation through vmemmap_populate_basepages(). Hence lets
> keep it disabled on all archs in order to preserve the existing semantics.
> A subsequent patch enables it on arm64.

I guess buy-in for this change largely depends on whether any other 
architectures are likely to want to share it. The existing altmap users 
don't look like they would, so that's probably more a question for the 
likes of S390 and RISC-V.

Failing that, simply decoupling arm64 from vmemmap_populate_basepages() 
seems viable - I tried hacking up a quick proof-of-concept (attached at 
the end) and it doesn't come out looking *too* disgusting.

> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Tony Luck <tony.luck@intel.com>
> Cc: Fenghua Yu <fenghua.yu@intel.com>
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Mike Rapoport <rppt@linux.ibm.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> Cc: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-ia64@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: x86@kernel.org
> Cc: linux-kernel@vger.kernel.org
> 
> Acked-by: Will Deacon <will@kernel.org>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>   arch/arm64/mm/mmu.c      |  2 +-
>   arch/ia64/mm/discontig.c |  2 +-
>   arch/riscv/mm/init.c     |  2 +-
>   arch/x86/mm/init_64.c    |  6 +++---
>   include/linux/mm.h       |  5 +++--
>   mm/sparse-vmemmap.c      | 16 +++++++++++-----
>   6 files changed, 20 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 9b08f7c7e6f0..27cb95c471eb 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -1036,7 +1036,7 @@ static void free_empty_tables(unsigned long addr, unsigned long end,
>   int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>   		struct vmem_altmap *altmap)
>   {
> -	return vmemmap_populate_basepages(start, end, node);
> +	return vmemmap_populate_basepages(start, end, node, NULL);
>   }
>   #else	/* !ARM64_SWAPPER_USES_SECTION_MAPS */
>   int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
> diff --git a/arch/ia64/mm/discontig.c b/arch/ia64/mm/discontig.c
> index 4f33f6e7e206..20409f3afea8 100644
> --- a/arch/ia64/mm/discontig.c
> +++ b/arch/ia64/mm/discontig.c
> @@ -656,7 +656,7 @@ void arch_refresh_nodedata(int update_node, pg_data_t *update_pgdat)
>   int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>   		struct vmem_altmap *altmap)
>   {
> -	return vmemmap_populate_basepages(start, end, node);
> +	return vmemmap_populate_basepages(start, end, node, NULL);
>   }
>   
>   void vmemmap_free(unsigned long start, unsigned long end,
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 965a8cf4829c..1d7451c91982 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -501,6 +501,6 @@ void __init paging_init(void)
>   int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>   			       struct vmem_altmap *altmap)
>   {
> -	return vmemmap_populate_basepages(start, end, node);
> +	return vmemmap_populate_basepages(start, end, node, NULL);
>   }
>   #endif
> diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
> index abbdecb75fad..3272fe0d844a 100644
> --- a/arch/x86/mm/init_64.c
> +++ b/arch/x86/mm/init_64.c
> @@ -1471,7 +1471,7 @@ static int __meminit vmemmap_populate_hugepages(unsigned long start,
>   			vmemmap_verify((pte_t *)pmd, node, addr, next);
>   			continue;
>   		}
> -		if (vmemmap_populate_basepages(addr, next, node))
> +		if (vmemmap_populate_basepages(addr, next, node, NULL))
>   			return -ENOMEM;
>   	}
>   	return 0;
> @@ -1483,7 +1483,7 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>   	int err;
>   
>   	if (end - start < PAGES_PER_SECTION * sizeof(struct page))
> -		err = vmemmap_populate_basepages(start, end, node);
> +		err = vmemmap_populate_basepages(start, end, node, NULL);
>   	else if (boot_cpu_has(X86_FEATURE_PSE))
>   		err = vmemmap_populate_hugepages(start, end, node, altmap);
>   	else if (altmap) {
> @@ -1491,7 +1491,7 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>   				__func__);
>   		err = -ENOMEM;
>   	} else
> -		err = vmemmap_populate_basepages(start, end, node);
> +		err = vmemmap_populate_basepages(start, end, node, NULL);
>   	if (!err)
>   		sync_global_pgds(start, end - 1);
>   	return err;
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 52269e56c514..42f99c8d63c0 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -2780,14 +2780,15 @@ pgd_t *vmemmap_pgd_populate(unsigned long addr, int node);
>   p4d_t *vmemmap_p4d_populate(pgd_t *pgd, unsigned long addr, int node);
>   pud_t *vmemmap_pud_populate(p4d_t *p4d, unsigned long addr, int node);
>   pmd_t *vmemmap_pmd_populate(pud_t *pud, unsigned long addr, int node);
> -pte_t *vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node);
> +pte_t *vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node,
> +			    struct vmem_altmap *altmap);
>   void *vmemmap_alloc_block(unsigned long size, int node);
>   struct vmem_altmap;
>   void *vmemmap_alloc_block_buf(unsigned long size, int node);
>   void *altmap_alloc_block_buf(unsigned long size, struct vmem_altmap *altmap);
>   void vmemmap_verify(pte_t *, int, unsigned long, unsigned long);
>   int vmemmap_populate_basepages(unsigned long start, unsigned long end,
> -			       int node);
> +			       int node, struct vmem_altmap *altmap);
>   int vmemmap_populate(unsigned long start, unsigned long end, int node,
>   		struct vmem_altmap *altmap);
>   void vmemmap_populate_print_last(void);
> diff --git a/mm/sparse-vmemmap.c b/mm/sparse-vmemmap.c
> index 200aef686722..a407abc9b46c 100644
> --- a/mm/sparse-vmemmap.c
> +++ b/mm/sparse-vmemmap.c
> @@ -140,12 +140,18 @@ void __meminit vmemmap_verify(pte_t *pte, int node,
>   			start, end - 1);
>   }
>   
> -pte_t * __meminit vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node)
> +pte_t * __meminit vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node,
> +				       struct vmem_altmap *altmap)
>   {
>   	pte_t *pte = pte_offset_kernel(pmd, addr);
>   	if (pte_none(*pte)) {
>   		pte_t entry;
> -		void *p = vmemmap_alloc_block_buf(PAGE_SIZE, node);
> +		void *p;
> +
> +		if (altmap)
> +			p = altmap_alloc_block_buf(PAGE_SIZE, altmap);
> +		else
> +			p = vmemmap_alloc_block_buf(PAGE_SIZE, node);

This pattern ends up appearing a number of times by the end - if we do 
go down the generic code route, might it be worth pushing it down into 
vmmemmap_alloc_block_buf() itself to make it automatic? (possibly even 
including the powerpc fallback behaviour too?)

Robin.

>   		if (!p)
>   			return NULL;
>   		entry = pfn_pte(__pa(p) >> PAGE_SHIFT, PAGE_KERNEL);
> @@ -213,8 +219,8 @@ pgd_t * __meminit vmemmap_pgd_populate(unsigned long addr, int node)
>   	return pgd;
>   }
>   
> -int __meminit vmemmap_populate_basepages(unsigned long start,
> -					 unsigned long end, int node)
> +int __meminit vmemmap_populate_basepages(unsigned long start, unsigned long end,
> +					 int node, struct vmem_altmap *altmap)
>   {
>   	unsigned long addr = start;
>   	pgd_t *pgd;
> @@ -236,7 +242,7 @@ int __meminit vmemmap_populate_basepages(unsigned long start,
>   		pmd = vmemmap_pmd_populate(pud, addr, node);
>   		if (!pmd)
>   			return -ENOMEM;
> -		pte = vmemmap_pte_populate(pmd, addr, node);
> +		pte = vmemmap_pte_populate(pmd, addr, node, altmap);
>   		if (!pte)
>   			return -ENOMEM;
>   		vmemmap_verify(pte, node, addr, addr + PAGE_SIZE);
> 

----->8-----
From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64/mm: Consolidate vmemmap_populate()

Since we already have a custom vmemmap_populate() implementation, fold
the non-section-map case into that as well, so that we can easily add
altmap support for both cases without having to mess with core code.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
  arch/arm64/mm/mmu.c | 34 +++++++++++++++++++++-------------
  1 file changed, 21 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 128f70852bf3..e250fd414b2b 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -725,13 +725,6 @@ int kern_addr_valid(unsigned long addr)
  	return pfn_valid(pte_pfn(pte));
  }
  #ifdef CONFIG_SPARSEMEM_VMEMMAP
-#if !ARM64_SWAPPER_USES_SECTION_MAPS
-int __meminit vmemmap_populate(unsigned long start, unsigned long end, 
int node,
-		struct vmem_altmap *altmap)
-{
-	return vmemmap_populate_basepages(start, end, node);
-}
-#else	/* !ARM64_SWAPPER_USES_SECTION_MAPS */
  int __meminit vmemmap_populate(unsigned long start, unsigned long end, 
int node,
  		struct vmem_altmap *altmap)
  {
@@ -740,6 +733,7 @@ int __meminit vmemmap_populate(unsigned long start, 
unsigned long end, int node,
  	pgd_t *pgdp;
  	pud_t *pudp;
  	pmd_t *pmdp;
+	pte_t *ptep;

  	do {
  		next = pmd_addr_end(addr, end);
@@ -752,22 +746,36 @@ int __meminit vmemmap_populate(unsigned long 
start, unsigned long end, int node,
  		if (!pudp)
  			return -ENOMEM;

+#if ARM64_SWAPPER_USES_SECTION_MAPS
  		pmdp = pmd_offset(pudp, addr);
  		if (pmd_none(READ_ONCE(*pmdp))) {
-			void *p = NULL;
-
-			p = vmemmap_alloc_block_buf(PMD_SIZE, node);
+			void *p = vmemmap_alloc_block_buf(PMD_SIZE, node);
  			if (!p)
  				return -ENOMEM;

  			pmd_set_huge(pmdp, __pa(p), __pgprot(PROT_SECT_NORMAL));
-		} else
-			vmemmap_verify((pte_t *)pmdp, node, addr, next);
+			continue;
+		}
+#else
+		pmdp = vmemmap_pmd_populate(pmdp, addr, node);
+		if (!pmdp)
+			return -ENOMEM;
+
+		ptep = pte_offset_kernel(pmdp, addr);
+		if (pte_none(READ_ONCE(*ptep))) {
+			void *p = vmemmap_alloc_block_buf(PAGE_SIZE, node);
+			if (!p)
+				return -ENOMEM;
+
+			set_pte(ptep, pfn_pte(__pa(p) >> PAGE_SHIFT, PAGE_KERNEL));
+		}
+#endif
+		vmemmap_verify((pte_t *)pmdp, node, addr, next);
  	} while (addr = next, addr != end);

  	return 0;
  }
-#endif	/* !ARM64_SWAPPER_USES_SECTION_MAPS */
+
  void vmemmap_free(unsigned long start, unsigned long end,
  		struct vmem_altmap *altmap)
  {

