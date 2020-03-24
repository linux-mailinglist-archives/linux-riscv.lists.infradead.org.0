Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44F71904F2
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 06:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dneiEwK8pC6llvAvuSzWZunvbiLWsnKPK5w1ZdYjUSY=; b=cG2gbPPHsnexfO
	9Z6ILeoKoqd/15aAdrHMnsXCH7/ZIgZp+FefLfvoiveqEKNcWnXXvD0ml6L9WJ+owYsDkT5u2203Z
	B6IJ4R0yeVz1SYc4JvDI72eCPzFfAWrP2XP9uSjdkZv0cpUIXHM8+7ndsfiD18soIds5jnj275pqr
	Mi4GIaqe+lC4DrPINou7JtDL/xvov4whE6iykS9dnZ6CW0XVUIeLYgJenPCj85AcaCuynAiDT8qin
	XzrxPMHwgww98mqTao5TVyjMQ64ZRyH6WtnWCeRHjI7sxYO9bb+B+av8Cp0S9D86D1ZzaemL5uqZj
	B9vD3t5midQfW0u06rNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGc3D-00012t-T9; Tue, 24 Mar 2020 05:24:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGc2K-0000Kf-Rk; Tue, 24 Mar 2020 05:23:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D590F30E;
 Mon, 23 Mar 2020 22:23:35 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AA2443F7C3;
 Mon, 23 Mar 2020 22:27:32 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V2 2/3] mm/debug: Add tests validating arch advanced page
 table helpers
Date: Tue, 24 Mar 2020 10:52:54 +0530
Message-Id: <1585027375-9997-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585027375-9997-1-git-send-email-anshuman.khandual@arm.com>
References: <1585027375-9997-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_222337_024387_BCA72860 
X-CRM114-Status: GOOD (  12.80  )
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 christophe.leroy@c-s.fr, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This adds new tests validating for these following arch advanced page table
helpers. These tests create and test specific mapping types at various page
table levels.

1. pxxp_set_wrprotect()
2. pxxp_get_and_clear()
3. pxxp_set_access_flags()
4. pxxp_get_and_clear_full()
5. pxxp_test_and_clear_young()
6. pxx_leaf()
7. pxx_set_huge()
8. pxx_(clear|mk)_savedwrite()
9. huge_pxxp_xxx()

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Kirill A. Shutemov <kirill@shutemov.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: x86@kernel.org
Cc: linux-arch@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 mm/debug_vm_pgtable.c | 290 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 290 insertions(+)

diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
index 15055a8f6478..87b4b495333b 100644
--- a/mm/debug_vm_pgtable.c
+++ b/mm/debug_vm_pgtable.c
@@ -29,6 +29,7 @@
 #include <linux/sched/mm.h>
 #include <asm/pgalloc.h>
 #include <asm/pgtable.h>
+#include <asm/tlbflush.h>
 
 /*
  * Basic operations
@@ -68,6 +69,54 @@ static void __init pte_basic_tests(unsigned long pfn, pgprot_t prot)
 	WARN_ON(pte_write(pte_wrprotect(pte_mkwrite(pte))));
 }
 
+static void __init pte_advanced_tests(struct mm_struct *mm,
+			struct vm_area_struct *vma, pte_t *ptep,
+			unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	pte = pfn_pte(pfn, prot);
+	set_pte_at(mm, vaddr, ptep, pte);
+	ptep_set_wrprotect(mm, vaddr, ptep);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(pte_write(pte));
+
+	pte = pfn_pte(pfn, prot);
+	set_pte_at(mm, vaddr, ptep, pte);
+	ptep_get_and_clear(mm, vaddr, ptep);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(!pte_none(pte));
+
+	pte = pfn_pte(pfn, prot);
+	pte = pte_wrprotect(pte);
+	pte = pte_mkclean(pte);
+	set_pte_at(mm, vaddr, ptep, pte);
+	pte = pte_mkwrite(pte);
+	pte = pte_mkdirty(pte);
+	ptep_set_access_flags(vma, vaddr, ptep, pte, 1);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(!(pte_write(pte) && pte_dirty(pte)));
+
+	pte = pfn_pte(pfn, prot);
+	set_pte_at(mm, vaddr, ptep, pte);
+	ptep_get_and_clear_full(mm, vaddr, ptep, 1);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(!pte_none(pte));
+
+	pte = pte_mkyoung(pte);
+	set_pte_at(mm, vaddr, ptep, pte);
+	ptep_test_and_clear_young(vma, vaddr, ptep);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(pte_young(pte));
+}
+
+static void __init pte_savedwrite_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	WARN_ON(!pte_savedwrite(pte_mk_savedwrite(pte_clear_savedwrite(pte))));
+	WARN_ON(pte_savedwrite(pte_clear_savedwrite(pte_mk_savedwrite(pte))));
+}
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
 static void __init pmd_basic_tests(unsigned long pfn, pgprot_t prot)
 {
@@ -87,6 +136,83 @@ static void __init pmd_basic_tests(unsigned long pfn, pgprot_t prot)
 	WARN_ON(!pmd_bad(pmd_mkhuge(pmd)));
 }
 
+static void __init pmd_advanced_tests(struct mm_struct *mm,
+		struct vm_area_struct *vma, pmd_t *pmdp,
+		unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	/* Align the address wrt HPAGE_PMD_SIZE */
+	vaddr = (vaddr & HPAGE_PMD_MASK) + HPAGE_PMD_SIZE;
+
+	pmd = pfn_pmd(pfn, prot);
+	set_pmd_at(mm, vaddr, pmdp, pmd);
+	pmdp_set_wrprotect(mm, vaddr, pmdp);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(pmd_write(pmd));
+
+	pmd = pfn_pmd(pfn, prot);
+	set_pmd_at(mm, vaddr, pmdp, pmd);
+	pmdp_huge_get_and_clear(mm, vaddr, pmdp);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(!pmd_none(pmd));
+
+	pmd = pfn_pmd(pfn, prot);
+	pmd = pmd_wrprotect(pmd);
+	pmd = pmd_mkclean(pmd);
+	set_pmd_at(mm, vaddr, pmdp, pmd);
+	pmd = pmd_mkwrite(pmd);
+	pmd = pmd_mkdirty(pmd);
+	pmdp_set_access_flags(vma, vaddr, pmdp, pmd, 1);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(!(pmd_write(pmd) && pmd_dirty(pmd)));
+
+	pmd = pmd_mkhuge(pfn_pmd(pfn, prot));
+	set_pmd_at(mm, vaddr, pmdp, pmd);
+	pmdp_huge_get_and_clear_full(mm, vaddr, pmdp, 1);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(!pmd_none(pmd));
+
+	pmd = pmd_mkyoung(pmd);
+	set_pmd_at(mm, vaddr, pmdp, pmd);
+	pmdp_test_and_clear_young(vma, vaddr, pmdp);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(pmd_young(pmd));
+}
+
+static void __init pmd_leaf_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	/*
+	 * PMD based THP is a leaf entry.
+	 */
+	pmd = pmd_mkhuge(pmd);
+	WARN_ON(!pmd_leaf(pmd));
+}
+
+static void __init pmd_huge_tests(pmd_t *pmdp, unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd;
+
+	/*
+	 * X86 defined pmd_set_huge() verifies that the given
+	 * PMD is not a populated non-leaf entry.
+	 */
+	WRITE_ONCE(*pmdp, __pmd(0));
+	WARN_ON(!pmd_set_huge(pmdp, __pfn_to_phys(pfn), prot));
+	WARN_ON(!pmd_clear_huge(pmdp));
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(!pmd_none(pmd));
+}
+
+static void __init pmd_savedwrite_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	WARN_ON(!pmd_savedwrite(pmd_mk_savedwrite(pmd_clear_savedwrite(pmd))));
+	WARN_ON(pmd_savedwrite(pmd_clear_savedwrite(pmd_mk_savedwrite(pmd))));
+}
 #ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
 static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot)
 {
@@ -107,12 +233,110 @@ static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot)
 	 */
 	WARN_ON(!pud_bad(pud_mkhuge(pud)));
 }
+
+static void pud_advanced_tests(struct mm_struct *mm,
+		struct vm_area_struct *vma, pud_t *pudp,
+		unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+	pud_t pud = pfn_pud(pfn, prot);
+
+	/* Align the address wrt HPAGE_PUD_SIZE */
+	vaddr = (vaddr & HPAGE_PUD_MASK) + HPAGE_PUD_SIZE;
+
+	set_pud_at(mm, vaddr, pudp, pud);
+	pudp_set_wrprotect(mm, vaddr, pudp);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(pud_write(pud));
+
+#ifndef __PAGETABLE_PMD_FOLDED
+	pud = pfn_pud(pfn, prot);
+	set_pud_at(mm, vaddr, pudp, pud);
+	pudp_huge_get_and_clear(mm, vaddr, pudp);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(!pud_none(pud));
+
+	pud = pfn_pud(pfn, prot);
+	set_pud_at(mm, vaddr, pudp, pud);
+	pudp_huge_get_and_clear_full(mm, vaddr, pudp, 1);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(!pud_none(pud));
+#endif
+	pud = pfn_pud(pfn, prot);
+	pud = pud_wrprotect(pud);
+	pud = pud_mkclean(pud);
+	set_pud_at(mm, vaddr, pudp, pud);
+	pud = pud_mkwrite(pud);
+	pud = pud_mkdirty(pud);
+	pudp_set_access_flags(vma, vaddr, pudp, pud, 1);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(!(pud_write(pud) && pud_dirty(pud)));
+
+	pud = pud_mkyoung(pud);
+	set_pud_at(mm, vaddr, pudp, pud);
+	pudp_test_and_clear_young(vma, vaddr, pudp);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(pud_young(pud));
+}
+
+static void __init pud_leaf_tests(unsigned long pfn, pgprot_t prot)
+{
+	pud_t pud = pfn_pud(pfn, prot);
+
+	/*
+	 * PUD based THP is a leaf entry.
+	 */
+	pud = pud_mkhuge(pud);
+	WARN_ON(!pud_leaf(pud));
+}
+
+static void __init pud_huge_tests(pud_t *pudp, unsigned long pfn, pgprot_t prot)
+{
+	pud_t pud;
+
+	/*
+	 * X86 defined pud_set_huge() verifies that the given
+	 * PUD is not a populated non-leaf entry.
+	 */
+	WRITE_ONCE(*pudp, __pud(0));
+	WARN_ON(!pud_set_huge(pudp, __pfn_to_phys(pfn), prot));
+	WARN_ON(!pud_clear_huge(pudp));
+	pud = READ_ONCE(*pudp);
+	WARN_ON(!pud_none(pud));
+}
 #else
 static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot) { }
+static void pud_advanced_tests(struct mm_struct *mm,
+		struct vm_area_struct *vma, pud_t *pudp,
+		unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+}
+static void __init pud_leaf_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pud_huge_tests(pud_t *pudp, unsigned long pfn, pgprot_t prot)
+{
+}
 #endif
 #else
 static void __init pmd_basic_tests(unsigned long pfn, pgprot_t prot) { }
 static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pmd_advanced_tests(struct mm_struct *mm,
+		struct vm_area_struct *vma, pmd_t *pmdp,
+		unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+}
+static void __init pud_advanced_tests(struct mm_struct *mm,
+		struct vm_area_struct *vma, pud_t *pudp,
+		unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+}
+static void __init pmd_leaf_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pud_leaf_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pmd_huge_tests(pmd_t *pmdp, unsigned long pfn, pgprot_t prot)
+{
+}
+static void __init pud_huge_tests(pud_t *pudp, unsigned long pfn, pgprot_t prot)
+{
+}
+static void __init pmd_savedwrite_tests(unsigned long pfn, pgprot_t prot) { }
 #endif
 
 static void __init p4d_basic_tests(unsigned long pfn, pgprot_t prot)
@@ -500,8 +724,52 @@ static void __init hugetlb_basic_tests(unsigned long pfn, pgprot_t prot)
 	WARN_ON(!pte_huge(pte_mkhuge(pte)));
 #endif
 }
+
+static void __init hugetlb_advanced_tests(struct mm_struct *mm,
+					  struct vm_area_struct *vma,
+					  pte_t *ptep, unsigned long pfn,
+					  unsigned long vaddr, pgprot_t prot)
+{
+	struct page *page = pfn_to_page(pfn);
+	pte_t pte = READ_ONCE(*ptep);
+
+	pte = __pte(pte_val(pte) | RANDOM_ORVALUE);
+	set_huge_pte_at(mm, vaddr, ptep, pte);
+	barrier();
+	WARN_ON(!pte_same(pte, huge_ptep_get(ptep)));
+	huge_pte_clear(mm, vaddr, ptep, PMD_SIZE);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(!huge_pte_none(pte));
+
+	pte = mk_huge_pte(page, prot);
+	set_huge_pte_at(mm, vaddr, ptep, pte);
+	huge_ptep_set_wrprotect(mm, vaddr, ptep);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(huge_pte_write(pte));
+
+	pte = mk_huge_pte(page, prot);
+	set_huge_pte_at(mm, vaddr, ptep, pte);
+	huge_ptep_get_and_clear(mm, vaddr, ptep);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(!huge_pte_none(pte));
+
+	pte = mk_huge_pte(page, prot);
+	pte = huge_pte_wrprotect(pte);
+	set_huge_pte_at(mm, vaddr, ptep, pte);
+	pte = huge_pte_mkwrite(pte);
+	pte = huge_pte_mkdirty(pte);
+	huge_ptep_set_access_flags(vma, vaddr, ptep, pte, 1);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(!(huge_pte_write(pte) && huge_pte_dirty(pte)));
+}
 #else
 static void __init hugetlb_basic_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init hugetlb_advanced_tests(struct mm_struct *mm,
+					  struct vm_area_struct *vma,
+					  pte_t *ptep, unsigned long pfn,
+					  unsigned long vaddr, pgprot_t prot)
+{
+}
 #endif
 
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
@@ -564,6 +832,7 @@ static unsigned long __init get_random_vaddr(void)
 
 void __init debug_vm_pgtable(void)
 {
+	struct vm_area_struct *vma;
 	struct mm_struct *mm;
 	pgd_t *pgdp;
 	p4d_t *p4dp, *saved_p4dp;
@@ -592,6 +861,12 @@ void __init debug_vm_pgtable(void)
 	 */
 	protnone = __P000;
 
+	vma = vm_area_alloc(mm);
+	if (!vma) {
+		pr_err("vma allocation failed\n");
+		return;
+	}
+
 	/*
 	 * PFN for mapping at PTE level is determined from a standard kernel
 	 * text symbol. But pfns for higher page table levels are derived by
@@ -640,6 +915,20 @@ void __init debug_vm_pgtable(void)
 	p4d_clear_tests(mm, p4dp);
 	pgd_clear_tests(mm, pgdp);
 
+	pte_advanced_tests(mm, vma, ptep, pte_aligned, vaddr, prot);
+	pmd_advanced_tests(mm, vma, pmdp, pmd_aligned, vaddr, prot);
+	pud_advanced_tests(mm, vma, pudp, pud_aligned, vaddr, prot);
+	hugetlb_advanced_tests(mm, vma, ptep, pte_aligned, vaddr, prot);
+
+	pmd_leaf_tests(pmd_aligned, prot);
+	pud_leaf_tests(pud_aligned, prot);
+
+	pmd_huge_tests(pmdp, pmd_aligned, prot);
+	pud_huge_tests(pudp, pud_aligned, prot);
+
+	pte_savedwrite_tests(pte_aligned, prot);
+	pmd_savedwrite_tests(pmd_aligned, prot);
+
 	pte_unmap_unlock(ptep, ptl);
 
 	pmd_populate_tests(mm, pmdp, saved_ptep);
@@ -674,6 +963,7 @@ void __init debug_vm_pgtable(void)
 	pmd_free(mm, saved_pmdp);
 	pte_free(mm, saved_ptep);
 
+	vm_area_free(vma);
 	mm_dec_nr_puds(mm);
 	mm_dec_nr_pmds(mm);
 	mm_dec_nr_ptes(mm);
-- 
2.20.1


