Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410D12A9D0
	for <lists+linux-riscv@lfdr.de>; Sun, 26 May 2019 14:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDKyttMybXKFbMOeH89Q31P996ZmRJCNHgB80V5x5+s=; b=qn1h0bl2obymyp
	h5padqHzus+24R19/UTtraXQHXzgUmyvi9euXGdZa1sR+lX/eYS+uOIgBQH3o2O5dOOUH8Uwl0MpX
	WDU9WNkqshj4VzpN0pa1BuaKHpD9Chk0lKbwpiQZQ1bS00ix59RH9Yc8U1Cg5OOlZVcPtZtW23PQ7
	qXFq8n+a3SgLSVPhEvIyLX7DUYvYgHnWz9IvLyHxTi81X0Ep115XPI8w6zUXbNVyQbI/v/jh497om
	+WOUwg9T1u1nDSmdTee1JndtvyhYSxVUXxe7rF84MctjwtD2wK+FpIY67TuY3nCbW3YM7g5RAdwyj
	X2gbrk6K2rfVhycPnl/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUseT-0003vc-MN; Sun, 26 May 2019 12:53:25 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUseJ-0003oD-BI; Sun, 26 May 2019 12:53:17 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 16740240006;
 Sun, 26 May 2019 12:53:09 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Christoph Hellwig <hch@infradead.org>,
 Mike Kravetz <mike.kravetz@oracle.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH REBASE v2 2/2] riscv: Introduce huge page support for 32/64bit
 kernel
Date: Sun, 26 May 2019 08:50:38 -0400
Message-Id: <20190526125038.8419-3-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526125038.8419-1-alex@ghiti.fr>
References: <20190526125038.8419-1-alex@ghiti.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_055315_684426_070C0832 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch implements both 4MB huge page support for 32bit kernel
and 2MB/1GB huge pages support for 64bit kernel.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
---
 arch/riscv/Kconfig               |  8 ++++++
 arch/riscv/include/asm/hugetlb.h | 18 +++++++++++++
 arch/riscv/include/asm/page.h    | 10 ++++++++
 arch/riscv/include/asm/pgtable.h |  8 ++++--
 arch/riscv/mm/Makefile           |  2 ++
 arch/riscv/mm/hugetlbpage.c      | 44 ++++++++++++++++++++++++++++++++
 6 files changed, 88 insertions(+), 2 deletions(-)
 create mode 100644 arch/riscv/include/asm/hugetlb.h
 create mode 100644 arch/riscv/mm/hugetlbpage.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index ee32c66e1af3..2818ebc717b7 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -49,6 +49,8 @@ config RISCV
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_MMIOWB
 	select HAVE_EBPF_JIT if 64BIT
+	select ARCH_HAS_GIGANTIC_PAGE
+	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 
 config MMU
 	def_bool y
@@ -63,6 +65,12 @@ config PAGE_OFFSET
 	default 0xffffffff80000000 if 64BIT && MAXPHYSMEM_2GB
 	default 0xffffffe000000000 if 64BIT && MAXPHYSMEM_128GB
 
+config ARCH_WANT_GENERAL_HUGETLB
+	def_bool y
+
+config SYS_SUPPORTS_HUGETLBFS
+	def_bool y
+
 config STACKTRACE_SUPPORT
 	def_bool y
 
diff --git a/arch/riscv/include/asm/hugetlb.h b/arch/riscv/include/asm/hugetlb.h
new file mode 100644
index 000000000000..728a5db66597
--- /dev/null
+++ b/arch/riscv/include/asm/hugetlb.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_RISCV_HUGETLB_H
+#define _ASM_RISCV_HUGETLB_H
+
+#include <asm-generic/hugetlb.h>
+#include <asm/page.h>
+
+static inline int is_hugepage_only_range(struct mm_struct *mm,
+					 unsigned long addr,
+					 unsigned long len) {
+	return 0;
+}
+
+static inline void arch_clear_hugepage_flags(struct page *page)
+{
+}
+
+#endif /* _ASM_RISCV_HUGETLB_H */
diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index 2a546a52f02a..4ef2936295aa 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -24,6 +24,16 @@
 #define PAGE_SIZE	(_AC(1, UL) << PAGE_SHIFT)
 #define PAGE_MASK	(~(PAGE_SIZE - 1))
 
+#ifdef CONFIG_64BIT
+#define HUGE_MAX_HSTATE		2
+#else
+#define HUGE_MAX_HSTATE		1
+#endif
+#define HPAGE_SHIFT		PMD_SHIFT
+#define HPAGE_SIZE		(_AC(1, UL) << HPAGE_SHIFT)
+#define HPAGE_MASK              (~(HPAGE_SIZE - 1))
+#define HUGETLB_PAGE_ORDER      (HPAGE_SHIFT - PAGE_SHIFT)
+
 /*
  * PAGE_OFFSET -- the first address of the first page of memory.
  * When not using MMU this corresponds to the first free page in
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 1141364d990e..f3456fcdff92 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -121,7 +121,6 @@ static inline void pmd_clear(pmd_t *pmdp)
 	set_pmd(pmdp, __pmd(0));
 }
 
-
 static inline pgd_t pfn_pgd(unsigned long pfn, pgprot_t prot)
 {
 	return __pgd((pfn << _PAGE_PFN_SHIFT) | pgprot_val(prot));
@@ -258,6 +257,11 @@ static inline pte_t pte_mkspecial(pte_t pte)
 	return __pte(pte_val(pte) | _PAGE_SPECIAL);
 }
 
+static inline pte_t pte_mkhuge(pte_t pte)
+{
+	return pte;
+}
+
 /* Modify page protection bits */
 static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 {
@@ -417,7 +421,7 @@ static inline void pgtable_cache_init(void)
 #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
 
 /*
- * Task size is 0x40000000000 for RV64 or 0xb800000 for RV32.
+ * Task size is 0x4000000000 for RV64 or 0xb800000 for RV32.
  * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
  */
 #ifdef CONFIG_64BIT
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 8db569141485..4ea2fe50ec63 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -11,3 +11,5 @@ obj-y += ioremap.o
 obj-y += cacheflush.o
 obj-y += context.o
 obj-y += sifive_l2_cache.o
+
+obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
diff --git a/arch/riscv/mm/hugetlbpage.c b/arch/riscv/mm/hugetlbpage.c
new file mode 100644
index 000000000000..0d4747e9d5b5
--- /dev/null
+++ b/arch/riscv/mm/hugetlbpage.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/hugetlb.h>
+#include <linux/err.h>
+
+int pud_huge(pud_t pud)
+{
+	return pud_present(pud) &&
+		(pud_val(pud) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
+}
+
+int pmd_huge(pmd_t pmd)
+{
+	return pmd_present(pmd) &&
+		(pmd_val(pmd) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
+}
+
+static __init int setup_hugepagesz(char *opt)
+{
+	unsigned long ps = memparse(opt, &opt);
+
+	if (ps == HPAGE_SIZE) {
+		hugetlb_add_hstate(HPAGE_SHIFT - PAGE_SHIFT);
+	} else if (IS_ENABLED(CONFIG_64BIT) && ps == PUD_SIZE) {
+		hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
+	} else {
+		hugetlb_bad_size();
+		pr_err("hugepagesz: Unsupported page size %lu M\n", ps >> 20);
+		return 0;
+	}
+
+	return 1;
+}
+__setup("hugepagesz=", setup_hugepagesz);
+
+#ifdef CONFIG_CONTIG_ALLOC
+static __init int gigantic_pages_init(void)
+{
+	/* With CONTIG_ALLOC, we can allocate gigantic pages at runtime */
+	if (IS_ENABLED(CONFIG_64BIT) && !size_to_hstate(1UL << PUD_SHIFT))
+		hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
+	return 0;
+}
+arch_initcall(gigantic_pages_init);
+#endif
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
