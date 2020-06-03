Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C46C1ECB3D
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jun 2020 10:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sddo8GJqCsfqLdXGc5SE58bVQkEhGZGFSTfbLqcM/BU=; b=bTVpaWKXrwMAcb
	FSyVQUKQLOEyt7LjQZAZIXo3diOUPVkRJr47dPlqF94Vo/+QeE+V4IAhLwIrOZcOQaNaPWPwx/hbz
	bspqVMUBpBeC8lXFqP19Ey4dUciTQex1BeZwswdDHX+r9N5ZXJQHE0GhV/ksw9pm+ygXOtsVv4Inr
	lmuvrYLLUqPZI9uMgslmIUg6AaJQCMx0hXi84zWw1DYY+pM5o9s90ZcGXL4lMjT9kgsBWJs5mQ2D3
	sjky2ACL1yWHrwoSb/DndKJyoDvCrqaNydcVALvvridWa6W2diO6sC+9WCkohW9h011tUXm36/1SR
	hGII31BJfByXsO6qjjHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgOZY-0001Sz-0h; Wed, 03 Jun 2020 08:16:28 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgOZT-0001SP-C4
 for linux-riscv@lists.infradead.org; Wed, 03 Jun 2020 08:16:25 +0000
Received: from debian.home (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 4F1E220000C;
 Wed,  3 Jun 2020 08:16:18 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/8] riscv: Implement sv48 support
Date: Wed,  3 Jun 2020 04:11:01 -0400
Message-Id: <20200603081104.14004-6-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603081104.14004-1-alex@ghiti.fr>
References: <20200603081104.14004-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_011623_693326_3D27DBF1 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
Cc: Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

By adding a new 4th level of page table, give the possibility to 64bit
kernel to address 2^48 bytes of virtual address: in practice, that roughly
offers ~160TB of virtual address space to userspace and allows up to 64TB
of physical memory.

If the underlying hardware does not support sv48, we will automatically
fallback to a standard 3-level page table by folding the new PUD level into
PGDIR level. In order to detect HW capabilities at runtime, we
use SATP feature that ignores writes with an unsupported mode.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/Kconfig                  |   6 +-
 arch/riscv/include/asm/csr.h        |   3 +-
 arch/riscv/include/asm/fixmap.h     |   1 +
 arch/riscv/include/asm/page.h       |  15 +++
 arch/riscv/include/asm/pgalloc.h    |  36 +++++++
 arch/riscv/include/asm/pgtable-64.h |  97 ++++++++++++++++-
 arch/riscv/include/asm/pgtable.h    |  10 +-
 arch/riscv/kernel/head.S            |   3 +-
 arch/riscv/mm/context.c             |   2 +-
 arch/riscv/mm/init.c                | 158 +++++++++++++++++++++++++---
 10 files changed, 307 insertions(+), 24 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index e167f16131f4..3f73f60e9732 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -68,6 +68,7 @@ config RISCV
 	select ARCH_HAS_GCOV_PROFILE_ALL
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_ARCH_KASAN if MMU && 64BIT
+	select RELOCATABLE if 64BIT
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
@@ -106,7 +107,7 @@ config PAGE_OFFSET
 	default 0xC0000000 if 32BIT && MAXPHYSMEM_2GB
 	default 0x80000000 if 64BIT && !MMU
 	default 0xffffffff80000000 if 64BIT && MAXPHYSMEM_2GB
-	default 0xffffffe000000000 if 64BIT && !MAXPHYSMEM_2GB
+	default 0xffffc00000000000 if 64BIT && !MAXPHYSMEM_2GB
 
 config ARCH_FLATMEM_ENABLE
 	def_bool y
@@ -155,8 +156,11 @@ config GENERIC_HWEIGHT
 config FIX_EARLYCON_MEM
 	def_bool MMU
 
+# On a 64BIT relocatable kernel, the 4-level page table is at runtime folded
+# on a 3-level page table when sv48 is not supported.
 config PGTABLE_LEVELS
 	int
+	default 4 if 64BIT && RELOCATABLE
 	default 3 if 64BIT
 	default 2
 
diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index cec462e198ce..d41536c3f8d4 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -40,11 +40,10 @@
 #ifndef CONFIG_64BIT
 #define SATP_PPN	_AC(0x003FFFFF, UL)
 #define SATP_MODE_32	_AC(0x80000000, UL)
-#define SATP_MODE	SATP_MODE_32
 #else
 #define SATP_PPN	_AC(0x00000FFFFFFFFFFF, UL)
 #define SATP_MODE_39	_AC(0x8000000000000000, UL)
-#define SATP_MODE	SATP_MODE_39
+#define SATP_MODE_48	_AC(0x9000000000000000, UL)
 #endif
 
 /* Exception cause high bit - is an interrupt if set */
diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
index 2368d49eb4ef..d891cf9c73c5 100644
--- a/arch/riscv/include/asm/fixmap.h
+++ b/arch/riscv/include/asm/fixmap.h
@@ -27,6 +27,7 @@ enum fixed_addresses {
 	FIX_FDT = FIX_FDT_END + FIX_FDT_SIZE / PAGE_SIZE - 1,
 	FIX_PTE,
 	FIX_PMD,
+	FIX_PUD,
 	FIX_TEXT_POKE1,
 	FIX_TEXT_POKE0,
 	FIX_EARLYCON_MEM_BASE,
diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index 48bb09b6a9b7..5e77fe7f0d6d 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -31,7 +31,19 @@
  * When not using MMU this corresponds to the first free page in
  * physical memory (aligned on a page boundary).
  */
+#ifdef CONFIG_RELOCATABLE
+#define PAGE_OFFSET		__page_offset
+
+#ifdef CONFIG_64BIT
+/*
+ * By default, CONFIG_PAGE_OFFSET value corresponds to SV48 address space so
+ * define the PAGE_OFFSET value for SV39.
+ */
+#define PAGE_OFFSET_L3		0xffffffe000000000
+#endif /* CONFIG_64BIT */
+#else
 #define PAGE_OFFSET		_AC(CONFIG_PAGE_OFFSET, UL)
+#endif /* CONFIG_RELOCATABLE */
 
 #define KERN_VIRT_SIZE (-PAGE_OFFSET)
 
@@ -102,6 +114,9 @@ extern unsigned long pfn_base;
 extern unsigned long max_low_pfn;
 extern unsigned long min_low_pfn;
 extern unsigned long kernel_virt_addr;
+#ifdef CONFIG_RELOCATABLE
+extern unsigned long __page_offset;
+#endif
 
 #define __pa_to_va_nodebug(x)	((void *)((unsigned long) (x) + va_pa_offset))
 #define linear_mapping_va_to_pa(x)	((unsigned long)(x) - va_pa_offset)
diff --git a/arch/riscv/include/asm/pgalloc.h b/arch/riscv/include/asm/pgalloc.h
index 3f601ee8233f..540eaa5a8658 100644
--- a/arch/riscv/include/asm/pgalloc.h
+++ b/arch/riscv/include/asm/pgalloc.h
@@ -36,6 +36,42 @@ static inline void pud_populate(struct mm_struct *mm, pud_t *pud, pmd_t *pmd)
 
 	set_pud(pud, __pud((pfn << _PAGE_PFN_SHIFT) | _PAGE_TABLE));
 }
+
+static inline void p4d_populate(struct mm_struct *mm, p4d_t *p4d, pud_t *pud)
+{
+	if (pgtable_l4_enabled) {
+		unsigned long pfn = virt_to_pfn(pud);
+
+		set_p4d(p4d, __p4d((pfn << _PAGE_PFN_SHIFT) | _PAGE_TABLE));
+	}
+}
+
+static inline void p4d_populate_safe(struct mm_struct *mm, p4d_t *p4d,
+				     pud_t *pud)
+{
+	if (pgtable_l4_enabled) {
+		unsigned long pfn = virt_to_pfn(pud);
+
+		set_p4d_safe(p4d,
+			     __p4d((pfn << _PAGE_PFN_SHIFT) | _PAGE_TABLE));
+	}
+}
+
+static inline pud_t *pud_alloc_one(struct mm_struct *mm, unsigned long addr)
+{
+	if (pgtable_l4_enabled)
+		return (pud_t *)__get_free_page(
+				GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_ZERO);
+	return NULL;
+}
+
+static inline void pud_free(struct mm_struct *mm, pud_t *pud)
+{
+	if (pgtable_l4_enabled)
+		free_page((unsigned long)pud);
+}
+
+#define __pud_free_tlb(tlb, pud, addr)  pud_free((tlb)->mm, pud)
 #endif /* __PAGETABLE_PMD_FOLDED */
 
 #define pmd_pgtable(pmd)	pmd_page(pmd)
diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index b15f70a1fdfa..c84c31fbf8da 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -8,16 +8,32 @@
 
 #include <linux/const.h>
 
-#define PGDIR_SHIFT     30
+extern bool pgtable_l4_enabled;
+
+#define PGDIR_SHIFT     (pgtable_l4_enabled ? 39 : 30)
 /* Size of region mapped by a page global directory */
 #define PGDIR_SIZE      (_AC(1, UL) << PGDIR_SHIFT)
 #define PGDIR_MASK      (~(PGDIR_SIZE - 1))
 
+/* pud is folded into pgd in case of 3-level page table */
+#define PUD_SHIFT	30
+#define PUD_SIZE	(_AC(1, UL) << PUD_SHIFT)
+#define PUD_MASK	(~(PUD_SIZE - 1))
+
 #define PMD_SHIFT       21
 /* Size of region mapped by a page middle directory */
 #define PMD_SIZE        (_AC(1, UL) << PMD_SHIFT)
 #define PMD_MASK        (~(PMD_SIZE - 1))
 
+/* Page Upper Directory entry */
+typedef struct {
+	unsigned long pud;
+} pud_t;
+
+#define pud_val(x)      ((x).pud)
+#define __pud(x)        ((pud_t) { (x) })
+#define PTRS_PER_PUD    (PAGE_SIZE / sizeof(pud_t))
+
 /* Page Middle Directory entry */
 typedef struct {
 	unsigned long pmd;
@@ -60,6 +76,16 @@ static inline void pud_clear(pud_t *pudp)
 	set_pud(pudp, __pud(0));
 }
 
+static inline pud_t pfn_pud(unsigned long pfn, pgprot_t prot)
+{
+	return __pud((pfn << _PAGE_PFN_SHIFT) | pgprot_val(prot));
+}
+
+static inline unsigned long _pud_pfn(pud_t pud)
+{
+	return pud_val(pud) >> _PAGE_PFN_SHIFT;
+}
+
 static inline unsigned long pud_page_vaddr(pud_t pud)
 {
 	return (unsigned long)pfn_to_virt(pud_val(pud) >> _PAGE_PFN_SHIFT);
@@ -70,6 +96,15 @@ static inline struct page *pud_page(pud_t pud)
 	return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
 }
 
+#define mm_pud_folded	mm_pud_folded
+static inline bool mm_pud_folded(struct mm_struct *mm)
+{
+	if (pgtable_l4_enabled)
+		return false;
+
+	return true;
+}
+
 #define pmd_index(addr) (((addr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1))
 
 static inline pmd_t *pmd_offset(pud_t *pud, unsigned long addr)
@@ -90,4 +125,64 @@ static inline unsigned long _pmd_pfn(pmd_t pmd)
 #define pmd_ERROR(e) \
 	pr_err("%s:%d: bad pmd %016lx.\n", __FILE__, __LINE__, pmd_val(e))
 
+#define pud_ERROR(e)	\
+	pr_err("%s:%d: bad pud %016lx.\n", __FILE__, __LINE__, pud_val(e))
+
+static inline void set_p4d(p4d_t *p4dp, p4d_t p4d)
+{
+	if (pgtable_l4_enabled)
+		*p4dp = p4d;
+	else
+		set_pud((pud_t *)p4dp, (pud_t){ p4d_val(p4d) });
+}
+
+static inline int p4d_none(p4d_t p4d)
+{
+	if (pgtable_l4_enabled)
+		return (p4d_val(p4d) == 0);
+
+	return 0;
+}
+
+static inline int p4d_present(p4d_t p4d)
+{
+	if (pgtable_l4_enabled)
+		return (p4d_val(p4d) & _PAGE_PRESENT);
+
+	return 1;
+}
+
+static inline int p4d_bad(p4d_t p4d)
+{
+	if (pgtable_l4_enabled)
+		return !p4d_present(p4d);
+
+	return 0;
+}
+
+static inline void p4d_clear(p4d_t *p4d)
+{
+	if (pgtable_l4_enabled)
+		set_p4d(p4d, __p4d(0));
+}
+
+static inline unsigned long p4d_page_vaddr(p4d_t p4d)
+{
+	if (pgtable_l4_enabled)
+		return (unsigned long)pfn_to_virt(
+				p4d_val(p4d) >> _PAGE_PFN_SHIFT);
+
+	return pud_page_vaddr((pud_t) { p4d_val(p4d) });
+}
+
+#define pud_index(addr) (((addr) >> PUD_SHIFT) & (PTRS_PER_PUD - 1))
+
+static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
+{
+	if (pgtable_l4_enabled)
+		return (pud_t *)p4d_page_vaddr(*p4d) + pud_index(address);
+
+	return (pud_t *)p4d;
+}
+
 #endif /* _ASM_RISCV_PGTABLE_64_H */
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index ec9694624f3c..b4b532525fee 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -20,12 +20,14 @@
  * the kernel.
  */
 #define KERNEL_VIRT_ADDR	(VMALLOC_END - SZ_2G + 1)
-#define KERNEL_LINK_ADDR	KERNEL_VIRT_ADDR
+#define KERNEL_LINK_ADDR	(VMALLOC_LINK_END - SZ_2G + 1)
 
 #define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
 #define VMALLOC_END      (PAGE_OFFSET - 1)
 #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
 
+#define VMALLOC_LINK_END	(_AC(CONFIG_PAGE_OFFSET, UL) - 1)
+
 #define BPF_JIT_REGION_SIZE	(SZ_128M)
 #define BPF_JIT_REGION_START	PFN_ALIGN((unsigned long)&_end)
 #define BPF_JIT_REGION_END	(BPF_JIT_REGION_START + BPF_JIT_REGION_SIZE)
@@ -41,7 +43,7 @@
  * position vmemmap directly below the VMALLOC region.
  */
 #ifdef CONFIG_64BIT
-#define VA_BITS		39
+#define VA_BITS		(pgtable_l4_enabled ? 48 : 39)
 #else
 #define VA_BITS		32
 #endif
@@ -73,8 +75,7 @@
 
 #ifndef __ASSEMBLY__
 
-/* Page Upper Directory not used in RISC-V */
-#include <asm-generic/pgtable-nopud.h>
+#include <asm-generic/pgtable-nop4d.h>
 #include <asm/page.h>
 #include <asm/tlbflush.h>
 #include <linux/mm_types.h>
@@ -505,6 +506,7 @@ static inline void __kernel_map_pages(struct page *page, int numpages, int enabl
 
 extern char _start[];
 extern void *dtb_early_va;
+extern u64 satp_mode;
 void setup_bootmem(void);
 void paging_init(void);
 
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 8f5bb7731327..0632c4834c68 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -62,7 +62,8 @@ relocate:
 
 	/* Compute satp for kernel page tables, but don't load it yet */
 	srl a2, a0, PAGE_SHIFT
-	li a1, SATP_MODE
+	la a1, satp_mode
+	REG_L a1, 0(a1)
 	or a2, a2, a1
 
 	/*
diff --git a/arch/riscv/mm/context.c b/arch/riscv/mm/context.c
index 613ec81a8979..0393ca1b4416 100644
--- a/arch/riscv/mm/context.c
+++ b/arch/riscv/mm/context.c
@@ -59,7 +59,7 @@ void switch_mm(struct mm_struct *prev, struct mm_struct *next,
 	cpumask_set_cpu(cpu, mm_cpumask(next));
 
 #ifdef CONFIG_MMU
-	csr_write(CSR_SATP, virt_to_pfn(next->pgd) | SATP_MODE);
+	csr_write(CSR_SATP, virt_to_pfn(next->pgd) | satp_mode);
 	local_flush_tlb_all();
 #endif
 
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 80fd692b72d5..a937173af13d 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -25,8 +25,23 @@
 
 #include "../kernel/head.h"
 
-unsigned long kernel_virt_addr = KERNEL_VIRT_ADDR;
+#ifdef CONFIG_64BIT
+u64 satp_mode = IS_ENABLED(CONFIG_MAXPHYSMEM_2GB) ?
+				SATP_MODE_39 : SATP_MODE_48;
+bool pgtable_l4_enabled = IS_ENABLED(CONFIG_MAXPHYSMEM_2GB) ? false : true;
+#else
+u64 satp_mode = SATP_MODE_32;
+bool pgtable_l4_enabled;
+#endif
+EXPORT_SYMBOL(pgtable_l4_enabled);
+EXPORT_SYMBOL(satp_mode);
+
+unsigned long kernel_virt_addr;
 EXPORT_SYMBOL(kernel_virt_addr);
+#ifdef CONFIG_RELOCATABLE
+unsigned long __page_offset = _AC(CONFIG_PAGE_OFFSET, UL);
+EXPORT_SYMBOL(__page_offset);
+#endif
 
 unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)]
 							__page_aligned_bss;
@@ -254,9 +269,12 @@ static void __init create_pte_mapping(pte_t *ptep,
 
 #ifndef __PAGETABLE_PMD_FOLDED
 
+pud_t trampoline_pud[PTRS_PER_PUD] __page_aligned_bss;
 pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
+pud_t fixmap_pud[PTRS_PER_PUD] __page_aligned_bss;
 pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
 pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
+pud_t early_pud[PTRS_PER_PUD] __initdata __aligned(PAGE_SIZE);
 
 static pmd_t *__init get_pmd_virt(phys_addr_t pa)
 {
@@ -273,7 +291,8 @@ static phys_addr_t __init alloc_pmd(uintptr_t va)
 	if (mmu_enabled)
 		return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
 
-	BUG_ON((va - kernel_virt_addr) >> PGDIR_SHIFT);
+	/* Only one PMD is available for early mapping */
+	BUG_ON((va - kernel_virt_addr) >> PUD_SHIFT);
 
 	return (uintptr_t)early_pmd;
 }
@@ -305,19 +324,70 @@ static void __init create_pmd_mapping(pmd_t *pmdp,
 	create_pte_mapping(ptep, va, pa, sz, prot);
 }
 
-#define pgd_next_t		pmd_t
-#define alloc_pgd_next(__va)	alloc_pmd(__va)
-#define get_pgd_next_virt(__pa)	get_pmd_virt(__pa)
+static pud_t *__init get_pud_virt(phys_addr_t pa)
+{
+	if (mmu_enabled) {
+		clear_fixmap(FIX_PUD);
+		return (pud_t *)set_fixmap_offset(FIX_PUD, pa);
+	} else {
+		return (pud_t *)((uintptr_t)pa);
+	}
+}
+
+static phys_addr_t __init alloc_pud(uintptr_t va)
+{
+	if (mmu_enabled)
+		return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
+
+	/* Only one PUD is available for early mapping */
+	BUG_ON((va - kernel_virt_addr) >> PGDIR_SHIFT);
+
+	return (uintptr_t)early_pud;
+}
+
+static void __init create_pud_mapping(pud_t *pudp,
+				      uintptr_t va, phys_addr_t pa,
+				      phys_addr_t sz, pgprot_t prot)
+{
+	pmd_t *nextp;
+	phys_addr_t next_phys;
+	uintptr_t pud_index = pud_index(va);
+
+	if (sz == PUD_SIZE) {
+		if (pud_val(pudp[pud_index]) == 0)
+			pudp[pud_index] = pfn_pud(PFN_DOWN(pa), prot);
+		return;
+	}
+
+	if (pud_val(pudp[pud_index]) == 0) {
+		next_phys = alloc_pmd(va);
+		pudp[pud_index] = pfn_pud(PFN_DOWN(next_phys), PAGE_TABLE);
+		nextp = get_pmd_virt(next_phys);
+		memset(nextp, 0, PAGE_SIZE);
+	} else {
+		next_phys = PFN_PHYS(_pud_pfn(pudp[pud_index]));
+		nextp = get_pmd_virt(next_phys);
+	}
+
+	create_pmd_mapping(nextp, va, pa, sz, prot);
+}
+
+#define pgd_next_t		pud_t
+#define alloc_pgd_next(__va)	alloc_pud(__va)
+#define get_pgd_next_virt(__pa)	get_pud_virt(__pa)
 #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)	\
-	create_pmd_mapping(__nextp, __va, __pa, __sz, __prot)
-#define fixmap_pgd_next		fixmap_pmd
+	create_pud_mapping(__nextp, __va, __pa, __sz, __prot)
+#define fixmap_pgd_next		(pgtable_l4_enabled ?			\
+			(uintptr_t)fixmap_pud : (uintptr_t)fixmap_pmd)
+#define trampoline_pgd_next	(pgtable_l4_enabled ?			\
+			(uintptr_t)trampoline_pud : (uintptr_t)trampoline_pmd)
 #else
 #define pgd_next_t		pte_t
 #define alloc_pgd_next(__va)	alloc_pte(__va)
 #define get_pgd_next_virt(__pa)	get_pte_virt(__pa)
 #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)	\
 	create_pte_mapping(__nextp, __va, __pa, __sz, __prot)
-#define fixmap_pgd_next		fixmap_pte
+#define fixmap_pgd_next		((uintptr_t)fixmap_pte)
 #endif
 
 static void __init create_pgd_mapping(pgd_t *pgdp,
@@ -328,6 +398,13 @@ static void __init create_pgd_mapping(pgd_t *pgdp,
 	phys_addr_t next_phys;
 	uintptr_t pgd_index = pgd_index(va);
 
+#ifndef __PAGETABLE_PMD_FOLDED
+	if (!pgtable_l4_enabled) {
+		create_pud_mapping((pud_t *)pgdp, va, pa, sz, prot);
+		return;
+	}
+#endif
+
 	if (sz == PGDIR_SIZE) {
 		if (pgd_val(pgdp[pgd_index]) == 0)
 			pgdp[pgd_index] = pfn_pgd(PFN_DOWN(pa), prot);
@@ -419,6 +496,46 @@ void __init relocate_kernel(uintptr_t load_pa)
 	}
 }
 
+#if defined(CONFIG_64BIT) && !defined(CONFIG_MAXPHYSMEM_2GB)
+void disable_pgtable_l4(void)
+{
+	pgtable_l4_enabled = false;
+	__page_offset = PAGE_OFFSET_L3;
+	satp_mode = SATP_MODE_39;
+}
+
+/* There is a simple way to determine if 4-level is supported by the
+ * underlying hardware: establish 1:1 mapping in 4-level page table mode
+ * then read SATP to see if the configuration was taken into account
+ * meaning sv48 is supported.
+ */
+asmlinkage __init void set_satp_mode(uintptr_t load_pa)
+{
+	u64 identity_satp, hw_satp;
+
+	create_pgd_mapping(early_pg_dir, load_pa, (uintptr_t)early_pud,
+			   PGDIR_SIZE, PAGE_TABLE);
+	create_pud_mapping(early_pud, load_pa, (uintptr_t)early_pmd,
+			   PUD_SIZE, PAGE_TABLE);
+	create_pmd_mapping(early_pmd, load_pa, load_pa,
+			   PMD_SIZE, PAGE_KERNEL_EXEC);
+
+	identity_satp = PFN_DOWN((uintptr_t)&early_pg_dir) | satp_mode;
+	local_flush_tlb_all();
+	csr_write(CSR_SATP, identity_satp);
+
+	hw_satp = csr_read(CSR_SATP);
+	csr_write(CSR_SATP, 0ULL);
+	local_flush_tlb_all();
+
+	if (hw_satp != identity_satp)
+		disable_pgtable_l4();
+
+	memset(early_pg_dir, 0, PAGE_SIZE);
+	memset(early_pud, 0, PAGE_SIZE);
+	memset(early_pmd, 0, PAGE_SIZE);
+}
+#endif
 #endif
 
 static uintptr_t load_pa, load_sz;
@@ -442,9 +559,14 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 	load_pa = (uintptr_t)(&_start);
 	load_sz = (uintptr_t)(&_end) - load_pa;
 
+#if defined(CONFIG_64BIT) && !defined(CONFIG_MAXPHYSMEM_2GB)
+	set_satp_mode(load_pa);
+#endif
+
+	kernel_virt_addr = KERNEL_VIRT_ADDR;
+
 	va_pa_offset = PAGE_OFFSET - load_pa;
 	va_kernel_pa_offset = kernel_virt_addr - load_pa;
-
 	pfn_base = PFN_DOWN(load_pa);
 
 #ifdef CONFIG_RELOCATABLE
@@ -473,15 +595,22 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 
 	/* Setup early PGD for fixmap */
 	create_pgd_mapping(early_pg_dir, FIXADDR_START,
-			   (uintptr_t)fixmap_pgd_next, PGDIR_SIZE, PAGE_TABLE);
+			   fixmap_pgd_next, PGDIR_SIZE, PAGE_TABLE);
 
 #ifndef __PAGETABLE_PMD_FOLDED
-	/* Setup fixmap PMD */
+	/* Setup fixmap PUD and PMD */
+	if (pgtable_l4_enabled)
+		create_pud_mapping(fixmap_pud, FIXADDR_START,
+			   (uintptr_t)fixmap_pmd, PUD_SIZE, PAGE_TABLE);
 	create_pmd_mapping(fixmap_pmd, FIXADDR_START,
 			   (uintptr_t)fixmap_pte, PMD_SIZE, PAGE_TABLE);
+
 	/* Setup trampoline PGD and PMD */
 	create_pgd_mapping(trampoline_pg_dir, kernel_virt_addr,
-			   (uintptr_t)trampoline_pmd, PGDIR_SIZE, PAGE_TABLE);
+			   trampoline_pgd_next, PGDIR_SIZE, PAGE_TABLE);
+	if (pgtable_l4_enabled)
+		create_pud_mapping(trampoline_pud, kernel_virt_addr,
+			   (uintptr_t)trampoline_pmd, PUD_SIZE, PAGE_TABLE);
 	create_pmd_mapping(trampoline_pmd, kernel_virt_addr,
 			   load_pa, PMD_SIZE, PAGE_KERNEL_EXEC);
 #else
@@ -558,12 +687,13 @@ static void __init setup_vm_final(void)
 
 	vm_area_add_early(&vm_kernel);
 
-	/* Clear fixmap PTE and PMD mappings */
+	/* Clear fixmap page table mappings */
 	clear_fixmap(FIX_PTE);
 	clear_fixmap(FIX_PMD);
+	clear_fixmap(FIX_PUD);
 
 	/* Move to swapper page table */
-	csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
+	csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | satp_mode);
 	local_flush_tlb_all();
 }
 
-- 
2.20.1


