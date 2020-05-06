Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C311C6834
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 08:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiLp6FWg/KVERx446Kass890a7xHonQMk7GgO2lb3zY=; b=YCC+5qhbH9qeYV
	60ix8JNVCqMQURwRVSEXrZvXi7SQ1olqo0AYaqj8HkvP1DJTCAi3FJUYhLp0rAkUJEO7eYiNU1dE7
	C6hWuKiPtWzhtaun4IsPE8KfW402VT0ENKTq2rphXnWDDXhs0UeNMgNR3gq0qUFWOKeGJ0qnmz+d8
	fHTCzweZTghJuRZmmCz5oEPS/CoZahTE2jq5uh2YyZqtQcJiIQxfyMWbyh5f7etHoPoDN0/mw2j48
	3zOmBZtlRe6DKihde1KH7MMvqwzjtX68vJxmWZ7D+9sajN3Segk4zyzT+nLmI5HdIA7krNWJGTENj
	562AMl9HHUIeE5i9piKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDJz-00062U-IY; Wed, 06 May 2020 06:14:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDJ0-0005Be-Oc; Wed, 06 May 2020 06:13:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CA4E30E;
 Tue,  5 May 2020 23:13:18 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.71.196])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C80D43F68F;
 Tue,  5 May 2020 23:13:07 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	akpm@linux-foundation.org
Subject: [PATCH V2 2/3] mm/hugetlb: Define a generic fallback for
 is_hugepage_only_range()
Date: Wed,  6 May 2020 11:42:13 +0530
Message-Id: <1588745534-24418-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588745534-24418-1-git-send-email-anshuman.khandual@arm.com>
References: <1588745534-24418-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_231318_914179_5C5B6E46 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There are multiple similar definitions for is_hugepage_only_range() on
various platforms. Lets just add it's generic fallback definition for
platforms that do not override. This help reduce code duplication.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Tony Luck <tony.luck@intel.com>
Cc: Fenghua Yu <fenghua.yu@intel.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
Cc: Helge Deller <deller@gmx.de>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: Rich Felker <dalias@libc.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Mike Kravetz <mike.kravetz@oracle.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: x86@kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-ia64@vger.kernel.org
Cc: linux-mips@vger.kernel.org
Cc: linux-parisc@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-riscv@lists.infradead.org
Cc: linux-s390@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: linux-mm@kvack.org
Cc: linux-arch@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm/include/asm/hugetlb.h     | 6 ------
 arch/arm64/include/asm/hugetlb.h   | 6 ------
 arch/ia64/include/asm/hugetlb.h    | 1 +
 arch/mips/include/asm/hugetlb.h    | 7 -------
 arch/parisc/include/asm/hugetlb.h  | 6 ------
 arch/powerpc/include/asm/hugetlb.h | 1 +
 arch/riscv/include/asm/hugetlb.h   | 6 ------
 arch/s390/include/asm/hugetlb.h    | 7 -------
 arch/sh/include/asm/hugetlb.h      | 6 ------
 arch/sparc/include/asm/hugetlb.h   | 6 ------
 arch/x86/include/asm/hugetlb.h     | 6 ------
 include/linux/hugetlb.h            | 9 +++++++++
 12 files changed, 11 insertions(+), 56 deletions(-)

diff --git a/arch/arm/include/asm/hugetlb.h b/arch/arm/include/asm/hugetlb.h
index 318dcf5921ab..9ecd516d1ff7 100644
--- a/arch/arm/include/asm/hugetlb.h
+++ b/arch/arm/include/asm/hugetlb.h
@@ -14,12 +14,6 @@
 #include <asm/hugetlb-3level.h>
 #include <asm-generic/hugetlb.h>
 
-static inline int is_hugepage_only_range(struct mm_struct *mm,
-					 unsigned long addr, unsigned long len)
-{
-	return 0;
-}
-
 static inline void arch_clear_hugepage_flags(struct page *page)
 {
 	clear_bit(PG_dcache_clean, &page->flags);
diff --git a/arch/arm64/include/asm/hugetlb.h b/arch/arm64/include/asm/hugetlb.h
index b88878ddc88b..8f58e052697a 100644
--- a/arch/arm64/include/asm/hugetlb.h
+++ b/arch/arm64/include/asm/hugetlb.h
@@ -17,12 +17,6 @@
 extern bool arch_hugetlb_migration_supported(struct hstate *h);
 #endif
 
-static inline int is_hugepage_only_range(struct mm_struct *mm,
-					 unsigned long addr, unsigned long len)
-{
-	return 0;
-}
-
 static inline void arch_clear_hugepage_flags(struct page *page)
 {
 	clear_bit(PG_dcache_clean, &page->flags);
diff --git a/arch/ia64/include/asm/hugetlb.h b/arch/ia64/include/asm/hugetlb.h
index 36cc0396b214..6ef50b9a4bdf 100644
--- a/arch/ia64/include/asm/hugetlb.h
+++ b/arch/ia64/include/asm/hugetlb.h
@@ -20,6 +20,7 @@ static inline int is_hugepage_only_range(struct mm_struct *mm,
 	return (REGION_NUMBER(addr) == RGN_HPAGE ||
 		REGION_NUMBER((addr)+(len)-1) == RGN_HPAGE);
 }
+#define is_hugepage_only_range is_hugepage_only_range
 
 #define __HAVE_ARCH_HUGE_PTEP_CLEAR_FLUSH
 static inline void huge_ptep_clear_flush(struct vm_area_struct *vma,
diff --git a/arch/mips/include/asm/hugetlb.h b/arch/mips/include/asm/hugetlb.h
index 425bb6fc3bda..8b201e281f67 100644
--- a/arch/mips/include/asm/hugetlb.h
+++ b/arch/mips/include/asm/hugetlb.h
@@ -11,13 +11,6 @@
 
 #include <asm/page.h>
 
-static inline int is_hugepage_only_range(struct mm_struct *mm,
-					 unsigned long addr,
-					 unsigned long len)
-{
-	return 0;
-}
-
 #define __HAVE_ARCH_PREPARE_HUGEPAGE_RANGE
 static inline int prepare_hugepage_range(struct file *file,
 					 unsigned long addr,
diff --git a/arch/parisc/include/asm/hugetlb.h b/arch/parisc/include/asm/hugetlb.h
index 7cb595dcb7d7..411d9d867baa 100644
--- a/arch/parisc/include/asm/hugetlb.h
+++ b/arch/parisc/include/asm/hugetlb.h
@@ -12,12 +12,6 @@ void set_huge_pte_at(struct mm_struct *mm, unsigned long addr,
 pte_t huge_ptep_get_and_clear(struct mm_struct *mm, unsigned long addr,
 			      pte_t *ptep);
 
-static inline int is_hugepage_only_range(struct mm_struct *mm,
-					 unsigned long addr,
-					 unsigned long len) {
-	return 0;
-}
-
 /*
  * If the arch doesn't supply something else, assume that hugepage
  * size aligned regions are ok without further preparation.
diff --git a/arch/powerpc/include/asm/hugetlb.h b/arch/powerpc/include/asm/hugetlb.h
index bd6504c28c2f..b167c869d72d 100644
--- a/arch/powerpc/include/asm/hugetlb.h
+++ b/arch/powerpc/include/asm/hugetlb.h
@@ -30,6 +30,7 @@ static inline int is_hugepage_only_range(struct mm_struct *mm,
 		return slice_is_hugepage_only_range(mm, addr, len);
 	return 0;
 }
+#define is_hugepage_only_range is_hugepage_only_range
 
 #define __HAVE_ARCH_HUGETLB_FREE_PGD_RANGE
 void hugetlb_free_pgd_range(struct mmu_gather *tlb, unsigned long addr,
diff --git a/arch/riscv/include/asm/hugetlb.h b/arch/riscv/include/asm/hugetlb.h
index 728a5db66597..866f6ae6467c 100644
--- a/arch/riscv/include/asm/hugetlb.h
+++ b/arch/riscv/include/asm/hugetlb.h
@@ -5,12 +5,6 @@
 #include <asm-generic/hugetlb.h>
 #include <asm/page.h>
 
-static inline int is_hugepage_only_range(struct mm_struct *mm,
-					 unsigned long addr,
-					 unsigned long len) {
-	return 0;
-}
-
 static inline void arch_clear_hugepage_flags(struct page *page)
 {
 }
diff --git a/arch/s390/include/asm/hugetlb.h b/arch/s390/include/asm/hugetlb.h
index de8f0bf5f238..7d27ea96ec2f 100644
--- a/arch/s390/include/asm/hugetlb.h
+++ b/arch/s390/include/asm/hugetlb.h
@@ -21,13 +21,6 @@ pte_t huge_ptep_get(pte_t *ptep);
 pte_t huge_ptep_get_and_clear(struct mm_struct *mm,
 			      unsigned long addr, pte_t *ptep);
 
-static inline bool is_hugepage_only_range(struct mm_struct *mm,
-					  unsigned long addr,
-					  unsigned long len)
-{
-	return false;
-}
-
 /*
  * If the arch doesn't supply something else, assume that hugepage
  * size aligned regions are ok without further preparation.
diff --git a/arch/sh/include/asm/hugetlb.h b/arch/sh/include/asm/hugetlb.h
index 6f025fe18146..536ad2cb8aa4 100644
--- a/arch/sh/include/asm/hugetlb.h
+++ b/arch/sh/include/asm/hugetlb.h
@@ -5,12 +5,6 @@
 #include <asm/cacheflush.h>
 #include <asm/page.h>
 
-static inline int is_hugepage_only_range(struct mm_struct *mm,
-					 unsigned long addr,
-					 unsigned long len) {
-	return 0;
-}
-
 /*
  * If the arch doesn't supply something else, assume that hugepage
  * size aligned regions are ok without further preparation.
diff --git a/arch/sparc/include/asm/hugetlb.h b/arch/sparc/include/asm/hugetlb.h
index 3963f80d1cb3..a056fe1119f5 100644
--- a/arch/sparc/include/asm/hugetlb.h
+++ b/arch/sparc/include/asm/hugetlb.h
@@ -20,12 +20,6 @@ void set_huge_pte_at(struct mm_struct *mm, unsigned long addr,
 pte_t huge_ptep_get_and_clear(struct mm_struct *mm, unsigned long addr,
 			      pte_t *ptep);
 
-static inline int is_hugepage_only_range(struct mm_struct *mm,
-					 unsigned long addr,
-					 unsigned long len) {
-	return 0;
-}
-
 #define __HAVE_ARCH_HUGE_PTEP_CLEAR_FLUSH
 static inline void huge_ptep_clear_flush(struct vm_area_struct *vma,
 					 unsigned long addr, pte_t *ptep)
diff --git a/arch/x86/include/asm/hugetlb.h b/arch/x86/include/asm/hugetlb.h
index f65cfb48cfdd..cc98f79074d0 100644
--- a/arch/x86/include/asm/hugetlb.h
+++ b/arch/x86/include/asm/hugetlb.h
@@ -7,12 +7,6 @@
 
 #define hugepages_supported() boot_cpu_has(X86_FEATURE_PSE)
 
-static inline int is_hugepage_only_range(struct mm_struct *mm,
-					 unsigned long addr,
-					 unsigned long len) {
-	return 0;
-}
-
 static inline void arch_clear_hugepage_flags(struct page *page)
 {
 }
diff --git a/include/linux/hugetlb.h b/include/linux/hugetlb.h
index 43a1cef8f0f1..c01c0c6f7fd4 100644
--- a/include/linux/hugetlb.h
+++ b/include/linux/hugetlb.h
@@ -591,6 +591,15 @@ static inline unsigned int blocks_per_huge_page(struct hstate *h)
 
 #include <asm/hugetlb.h>
 
+#ifndef is_hugepage_only_range
+static inline int is_hugepage_only_range(struct mm_struct *mm,
+					unsigned long addr, unsigned long len)
+{
+	return 0;
+}
+#define is_hugepage_only_range is_hugepage_only_range
+#endif
+
 #ifndef arch_make_huge_pte
 static inline pte_t arch_make_huge_pte(pte_t entry, struct vm_area_struct *vma,
 				       struct page *page, int writable)
-- 
2.20.1


