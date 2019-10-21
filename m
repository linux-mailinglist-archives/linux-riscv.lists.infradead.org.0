Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0652EDE386
	for <lists+linux-riscv@lfdr.de>; Mon, 21 Oct 2019 07:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Uf0l6s9Ib9oJHdVHk5ix2dhHfPbPHu3nGJcqBaNg3XI=; b=aDnMeZcpVBLmFzNq2yEbrLlmMP
	waCyhg0TLu4A5Xllu8OfZSZYmTAH1GYeiGMRKp2oiFoTLAvI0TfDl7vxIVQ3U62vOFHIegMqz4ZgI
	kV9kB97WW0gqks7sCz21Rwz0UFJD6coEllkJCeDhrfLyML16xBwiyS5jk2L7+i7rhJwi2T/HgENvB
	DJvdrB4BUCItodDHUIvltYHVj6IaNri82+CRlETAelUYmJxLC7OXlazCjAZzHT06YXGIACJRiDEEo
	XZN2HUfWtmCXn6wP/hqg4FOTTjzJgjNZ748Zn6xLAb28odfP5xgY+u2/bijaegn0caHsP7F26GlVI
	6EBXYL4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMPxq-0003lA-TE; Mon, 21 Oct 2019 05:10:42 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMPxL-0003JM-Uy; Mon, 21 Oct 2019 05:10:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 03C85495;
 Sun, 20 Oct 2019 22:10:10 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.2])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 084FA3F71F;
 Sun, 20 Oct 2019 22:12:47 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [RFC V2 1/2] mm/sparsemem: Enable vmem_altmap support in
 vmemmap_populate_basepages()
Date: Mon, 21 Oct 2019 10:40:15 +0530
Message-Id: <1571634616-28863-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571634616-28863-1-git-send-email-anshuman.khandual@arm.com>
References: <1571634616-28863-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_221012_086928_639713FA 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, x86@kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Dave Hansen <dave.hansen@linux.intel.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Andy Lutomirski <luto@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

vmemmap_populate_basepages() is used across platforms to allocate backing
memory for vmemmap mapping. This is used as a standard default choice or
as a fallback when intended huge pages allocation fails. This just creates
entire vmemmap mapping with base pages (PAGE_SIZE).

On arm64 platforms, vmemmap_populate_basepages() is called instead of the
platform specific vmemmap_populate() when ARM64_SWAPPER_USES_SECTION_MAPS
is not enabled as in case for ARM64_16K_PAGES and ARM64_64K_PAGES configs.

At present vmemmap_populate_basepages() does not support allocating from
driver defined struct vmem_altmap while trying to create vmemmap mapping
for a device memory range. It prevents ARM64_16K_PAGES and ARM64_64K_PAGES
configs on arm64 from supporting device memory with vmemap_altmap request.

This enables vmem_altmap support in vmemmap_populate_basepages() unlocking
device memory allocation for vmemap mapping on arm64 platforms with 16K or
64K base page configs.

Each architecture should evaluate and decide on subscribing device memory
based base page allocation through vmemmap_populate_basepages(). Hence lets
keep it disabled on all archs in order to preserve the existing semantics.
A subsequent patch enables it on arm64.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Tony Luck <tony.luck@intel.com>
Cc: Fenghua Yu <fenghua.yu@intel.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: David Hildenbrand <david@redhat.com>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-ia64@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: x86@kernel.org
Cc: linux-kernel@vger.kernel.org

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/mm/mmu.c      |  2 +-
 arch/ia64/mm/discontig.c |  2 +-
 arch/riscv/mm/init.c     |  2 +-
 arch/x86/mm/init_64.c    |  6 +++---
 include/linux/mm.h       |  5 +++--
 mm/sparse-vmemmap.c      | 16 +++++++++++-----
 6 files changed, 20 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 66ef63eeffa9..9e63828872cf 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -999,7 +999,7 @@ static void free_empty_tables(unsigned long addr, unsigned long end,
 int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 		struct vmem_altmap *altmap)
 {
-	return vmemmap_populate_basepages(start, end, node);
+	return vmemmap_populate_basepages(start, end, node, NULL);
 }
 #else	/* !ARM64_SWAPPER_USES_SECTION_MAPS */
 int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
diff --git a/arch/ia64/mm/discontig.c b/arch/ia64/mm/discontig.c
index 4f33f6e7e206..20409f3afea8 100644
--- a/arch/ia64/mm/discontig.c
+++ b/arch/ia64/mm/discontig.c
@@ -656,7 +656,7 @@ void arch_refresh_nodedata(int update_node, pg_data_t *update_pgdat)
 int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 		struct vmem_altmap *altmap)
 {
-	return vmemmap_populate_basepages(start, end, node);
+	return vmemmap_populate_basepages(start, end, node, NULL);
 }
 
 void vmemmap_free(unsigned long start, unsigned long end,
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 83f7d12042fb..ee78bf07da8e 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -462,6 +462,6 @@ void __init paging_init(void)
 int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 			       struct vmem_altmap *altmap)
 {
-	return vmemmap_populate_basepages(start, end, node);
+	return vmemmap_populate_basepages(start, end, node, NULL);
 }
 #endif
diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
index b8541d77452c..939fdee2eebc 100644
--- a/arch/x86/mm/init_64.c
+++ b/arch/x86/mm/init_64.c
@@ -1505,7 +1505,7 @@ static int __meminit vmemmap_populate_hugepages(unsigned long start,
 			vmemmap_verify((pte_t *)pmd, node, addr, next);
 			continue;
 		}
-		if (vmemmap_populate_basepages(addr, next, node))
+		if (vmemmap_populate_basepages(addr, next, node, NULL))
 			return -ENOMEM;
 	}
 	return 0;
@@ -1517,7 +1517,7 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 	int err;
 
 	if (end - start < PAGES_PER_SECTION * sizeof(struct page))
-		err = vmemmap_populate_basepages(start, end, node);
+		err = vmemmap_populate_basepages(start, end, node, NULL);
 	else if (boot_cpu_has(X86_FEATURE_PSE))
 		err = vmemmap_populate_hugepages(start, end, node, altmap);
 	else if (altmap) {
@@ -1525,7 +1525,7 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 				__func__);
 		err = -ENOMEM;
 	} else
-		err = vmemmap_populate_basepages(start, end, node);
+		err = vmemmap_populate_basepages(start, end, node, NULL);
 	if (!err)
 		sync_global_pgds(start, end - 1);
 	return err;
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 44d058723db9..503da358c500 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2761,14 +2761,15 @@ pgd_t *vmemmap_pgd_populate(unsigned long addr, int node);
 p4d_t *vmemmap_p4d_populate(pgd_t *pgd, unsigned long addr, int node);
 pud_t *vmemmap_pud_populate(p4d_t *p4d, unsigned long addr, int node);
 pmd_t *vmemmap_pmd_populate(pud_t *pud, unsigned long addr, int node);
-pte_t *vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node);
+pte_t *vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node,
+			    struct vmem_altmap *altmap);
 void *vmemmap_alloc_block(unsigned long size, int node);
 struct vmem_altmap;
 void *vmemmap_alloc_block_buf(unsigned long size, int node);
 void *altmap_alloc_block_buf(unsigned long size, struct vmem_altmap *altmap);
 void vmemmap_verify(pte_t *, int, unsigned long, unsigned long);
 int vmemmap_populate_basepages(unsigned long start, unsigned long end,
-			       int node);
+			       int node, struct vmem_altmap *altmap);
 int vmemmap_populate(unsigned long start, unsigned long end, int node,
 		struct vmem_altmap *altmap);
 void vmemmap_populate_print_last(void);
diff --git a/mm/sparse-vmemmap.c b/mm/sparse-vmemmap.c
index 200aef686722..a407abc9b46c 100644
--- a/mm/sparse-vmemmap.c
+++ b/mm/sparse-vmemmap.c
@@ -140,12 +140,18 @@ void __meminit vmemmap_verify(pte_t *pte, int node,
 			start, end - 1);
 }
 
-pte_t * __meminit vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node)
+pte_t * __meminit vmemmap_pte_populate(pmd_t *pmd, unsigned long addr, int node,
+				       struct vmem_altmap *altmap)
 {
 	pte_t *pte = pte_offset_kernel(pmd, addr);
 	if (pte_none(*pte)) {
 		pte_t entry;
-		void *p = vmemmap_alloc_block_buf(PAGE_SIZE, node);
+		void *p;
+
+		if (altmap)
+			p = altmap_alloc_block_buf(PAGE_SIZE, altmap);
+		else
+			p = vmemmap_alloc_block_buf(PAGE_SIZE, node);
 		if (!p)
 			return NULL;
 		entry = pfn_pte(__pa(p) >> PAGE_SHIFT, PAGE_KERNEL);
@@ -213,8 +219,8 @@ pgd_t * __meminit vmemmap_pgd_populate(unsigned long addr, int node)
 	return pgd;
 }
 
-int __meminit vmemmap_populate_basepages(unsigned long start,
-					 unsigned long end, int node)
+int __meminit vmemmap_populate_basepages(unsigned long start, unsigned long end,
+					 int node, struct vmem_altmap *altmap)
 {
 	unsigned long addr = start;
 	pgd_t *pgd;
@@ -236,7 +242,7 @@ int __meminit vmemmap_populate_basepages(unsigned long start,
 		pmd = vmemmap_pmd_populate(pud, addr, node);
 		if (!pmd)
 			return -ENOMEM;
-		pte = vmemmap_pte_populate(pmd, addr, node);
+		pte = vmemmap_pte_populate(pmd, addr, node, altmap);
 		if (!pte)
 			return -ENOMEM;
 		vmemmap_verify(pte, node, addr, addr + PAGE_SIZE);
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
