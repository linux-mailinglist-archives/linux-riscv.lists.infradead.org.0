Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAD684594
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 09:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AsNYWTyftsEzzPEQ3KldOcByjwhOqUfRmObbiDtx+8=; b=BJHj5QgQ9rJqDJ
	SG5av7hLEZpqrXErYeQFU0B2QKDXBzdkbzbazNzkkV17tFgam7AQl41nBlTRFx0sXGhwy2Rg4fc2Z
	eKH/MCmP39C+UO7jwnlzVWxsmSxQPTuUs3q1WV5sRASdKq3cted9IW12rjZuE3SbnqyNRANAy4ON+
	D1RJUIfJur6wt0ZOUzCvHULGcZzC0RHeY2bSsTR24wla6vRdkmj929+7Xnyj0FKxspGScbojzjfZx
	pEj8G84gcpqJ8hH1TVLatYFq/dKPoZ+nPatqcc10brr2p1Thyo9nbGGa4R/VnO1S98TLpWYDS6tGA
	L1BYpUkO5O7nYX/8fRPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGFL-0004ck-W7; Wed, 07 Aug 2019 07:20:32 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGFH-0004bM-5J
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 07:20:29 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x7778r0S027078;
 Wed, 7 Aug 2019 15:08:53 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from atcsqa06.andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 7 Aug 2019
 15:19:50 +0800
From: Nick Hu <nickhu@andestech.com>
To: <alankao@andestech.com>, <paul.walmsley@sifive.com>, <palmer@sifive.com>, 
 <aou@eecs.berkeley.edu>, <green.hu@gmail.com>, <deanbo422@gmail.com>,
 <tglx@linutronix.de>, <linux-riscv@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <aryabinin@virtuozzo.com>,
 <glider@google.com>, <dvyukov@google.com>, <Anup.Patel@wdc.com>,
 <gregkh@linuxfoundation.org>, <alexios.zavras@intel.com>,
 <atish.patra@wdc.com>, <zong@andestech.com>, <kasan-dev@googlegroups.com>
Subject: [PATCH 2/2] riscv: Add KASAN support
Date: Wed, 7 Aug 2019 15:19:15 +0800
Message-ID: <88358ef8f7cfcb7fd01b6b989eccaddbe00a1e57.1565161957.git.nickhu@andestech.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565161957.git.nickhu@andestech.com>
References: <cover.1565161957.git.nickhu@andestech.com>
MIME-Version: 1.0
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x7778r0S027078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_002027_482544_E6A0C395 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: Nick Hu <nickhu@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch ports the feature Kernel Address SANitizer (KASAN).

Note: The start address of shadow memory is at the beginning of kernel
space, which is 2^64 - (2^39 / 2) in SV39. The size of the kernel space
is 2^38 bytes so the size of shadow memory should be 2^38 / 8. Thus, the
shadow memory would not overlap with the fixmap area.

There are currently two limitations in this port,

1. RV64 only: KASAN need large address space for extra shadow memory
region.

2. KASAN can't debug the modules since the modules are allocated in VMALLOC
area. We mapped the shadow memory, which corresponding to VMALLOC area,
to the kasan_early_shadow_page because we don't have enough physical space
for all the shadow memory corresponding to VMALLOC area.

Signed-off-by: Nick Hu <nickhu@andestech.com>
---
 arch/riscv/Kconfig                  |    2 +
 arch/riscv/include/asm/kasan.h      |   26 +++++++++
 arch/riscv/include/asm/pgtable-64.h |    5 ++
 arch/riscv/include/asm/string.h     |    7 +++
 arch/riscv/kernel/head.S            |    3 +
 arch/riscv/kernel/riscv_ksyms.c     |    3 +
 arch/riscv/kernel/setup.c           |    9 +++
 arch/riscv/kernel/vmlinux.lds.S     |    1 +
 arch/riscv/lib/memcpy.S             |    5 +-
 arch/riscv/lib/memmove.S            |    5 +-
 arch/riscv/lib/memset.S             |    5 +-
 arch/riscv/mm/Makefile              |    6 ++
 arch/riscv/mm/kasan_init.c          |  102 +++++++++++++++++++++++++++++++++++
 13 files changed, 173 insertions(+), 6 deletions(-)
 create mode 100644 arch/riscv/include/asm/kasan.h
 create mode 100644 arch/riscv/mm/kasan_init.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 59a4727..4878b7a 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -54,6 +54,8 @@ config RISCV
 	select EDAC_SUPPORT
 	select ARCH_HAS_GIGANTIC_PAGE
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
+	select GENERIC_STRNCPY_FROM_USER if KASAN
+	select HAVE_ARCH_KASAN if MMU
 
 config MMU
 	def_bool y
diff --git a/arch/riscv/include/asm/kasan.h b/arch/riscv/include/asm/kasan.h
new file mode 100644
index 0000000..e0c1f27
--- /dev/null
+++ b/arch/riscv/include/asm/kasan.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_KASAN_H
+#define __ASM_KASAN_H
+
+#ifndef __ASSEMBLY__
+
+#ifdef CONFIG_KASAN
+
+#include <asm/pgtable.h>
+
+#define KASAN_SHADOW_SCALE_SHIFT	3
+
+#define KASAN_SHADOW_SIZE	(UL(1) << (38 - KASAN_SHADOW_SCALE_SHIFT))
+#define KASAN_SHADOW_START	0xffffffc000000000 // 2^64 - 2^38
+#define KASAN_SHADOW_END	(KASAN_SHADOW_START + KASAN_SHADOW_SIZE)
+
+#define KASAN_SHADOW_OFFSET	(KASAN_SHADOW_END - (1ULL << \
+					(64 - KASAN_SHADOW_SCALE_SHIFT)))
+
+void kasan_init(void);
+asmlinkage void kasan_early_init(void);
+
+#endif
+#endif
+#endif
diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 7df8daa..777a1dd 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -59,6 +59,11 @@ static inline unsigned long pud_page_vaddr(pud_t pud)
 	return (unsigned long)pfn_to_virt(pud_val(pud) >> _PAGE_PFN_SHIFT);
 }
 
+static inline struct page *pud_page(pud_t pud)
+{
+	return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
+}
+
 #define pmd_index(addr) (((addr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1))
 
 static inline pmd_t *pmd_offset(pud_t *pud, unsigned long addr)
diff --git a/arch/riscv/include/asm/string.h b/arch/riscv/include/asm/string.h
index 11210f1..ab90f44 100644
--- a/arch/riscv/include/asm/string.h
+++ b/arch/riscv/include/asm/string.h
@@ -11,11 +11,18 @@
 
 #define __HAVE_ARCH_MEMSET
 extern asmlinkage void *memset(void *, int, size_t);
+extern asmlinkage void *__memset(void *, int, size_t);
 
 #define __HAVE_ARCH_MEMCPY
 extern asmlinkage void *memcpy(void *, const void *, size_t);
+extern asmlinkage void *__memcpy(void *, const void *, size_t);
 
 #define __HAVE_ARCH_MEMMOVE
 extern asmlinkage void *memmove(void *, const void *, size_t);
+extern asmlinkage void *__memmove(void *, const void *, size_t);
+
+#define memcpy(dst, src, len) __memcpy(dst, src, len)
+#define memmove(dst, src, len) __memmove(dst, src, len)
+#define memset(s, c, n) __memset(s, c, n)
 
 #endif /* _ASM_RISCV_STRING_H */
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 0f1ba17..2f7bc8b 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -97,6 +97,9 @@ clear_bss_done:
 	sw zero, TASK_TI_CPU(tp)
 	la sp, init_thread_union + THREAD_SIZE
 
+#ifdef CONFIG_KASAN
+	call kasan_early_init
+#endif
 	/* Start the kernel */
 	call parse_dtb
 	tail start_kernel
diff --git a/arch/riscv/kernel/riscv_ksyms.c b/arch/riscv/kernel/riscv_ksyms.c
index ffabaf1..ad9f007 100644
--- a/arch/riscv/kernel/riscv_ksyms.c
+++ b/arch/riscv/kernel/riscv_ksyms.c
@@ -15,3 +15,6 @@
 EXPORT_SYMBOL(memset);
 EXPORT_SYMBOL(memcpy);
 EXPORT_SYMBOL(memmove);
+EXPORT_SYMBOL(__memset);
+EXPORT_SYMBOL(__memcpy);
+EXPORT_SYMBOL(__memmove);
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index a990a6c..9954c0b 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -24,6 +24,10 @@
 #include <asm/tlbflush.h>
 #include <asm/thread_info.h>
 
+#ifdef CONFIG_KASAN
+#include <asm/kasan.h>
+#endif
+
 #ifdef CONFIG_DUMMY_CONSOLE
 struct screen_info screen_info = {
 	.orig_video_lines	= 30,
@@ -64,12 +68,17 @@ void __init setup_arch(char **cmdline_p)
 
 	setup_bootmem();
 	paging_init();
+
 	unflatten_device_tree();
 
 #ifdef CONFIG_SWIOTLB
 	swiotlb_init(1);
 #endif
 
+#ifdef CONFIG_KASAN
+	kasan_init();
+#endif
+
 #ifdef CONFIG_SMP
 	setup_smp();
 #endif
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 23cd1a9..9700980 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -46,6 +46,7 @@ SECTIONS
 		KPROBES_TEXT
 		ENTRY_TEXT
 		IRQENTRY_TEXT
+		SOFTIRQENTRY_TEXT
 		*(.fixup)
 		_etext = .;
 	}
diff --git a/arch/riscv/lib/memcpy.S b/arch/riscv/lib/memcpy.S
index b4c4778..51ab716 100644
--- a/arch/riscv/lib/memcpy.S
+++ b/arch/riscv/lib/memcpy.S
@@ -7,7 +7,8 @@
 #include <asm/asm.h>
 
 /* void *memcpy(void *, const void *, size_t) */
-ENTRY(memcpy)
+ENTRY(__memcpy)
+WEAK(memcpy)
 	move t6, a0  /* Preserve return value */
 
 	/* Defer to byte-oriented copy for small sizes */
@@ -104,4 +105,4 @@ ENTRY(memcpy)
 	bltu a1, a3, 5b
 6:
 	ret
-END(memcpy)
+END(__memcpy)
diff --git a/arch/riscv/lib/memmove.S b/arch/riscv/lib/memmove.S
index 3657a06..ef8ba3c 100644
--- a/arch/riscv/lib/memmove.S
+++ b/arch/riscv/lib/memmove.S
@@ -3,7 +3,8 @@
 #include <linux/linkage.h>
 #include <asm/asm.h>
 
-ENTRY(memmove)
+ENTRY(__memmove)
+WEAK(memmove)
 	move	t0, a0
 	move	t1, a1
 
@@ -60,4 +61,4 @@ exit_memcpy:
 	move a1, t1
 	ret
 
-END(memmove)
+END(__memmove)
diff --git a/arch/riscv/lib/memset.S b/arch/riscv/lib/memset.S
index 5a7386b..34c5360 100644
--- a/arch/riscv/lib/memset.S
+++ b/arch/riscv/lib/memset.S
@@ -8,7 +8,8 @@
 #include <asm/asm.h>
 
 /* void *memset(void *, int, size_t) */
-ENTRY(memset)
+ENTRY(__memset)
+WEAK(memset)
 	move t0, a0  /* Preserve return value */
 
 	/* Defer to byte-oriented fill for small sizes */
@@ -109,4 +110,4 @@ ENTRY(memset)
 	bltu t0, a3, 5b
 6:
 	ret
-END(memset)
+END(__memset)
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 74055e1..cabe179 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -14,3 +14,9 @@ obj-y += context.o
 obj-y += sifive_l2_cache.o
 
 obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
+obj-$(CONFIG_KASAN)   += kasan_init.o
+
+ifdef CONFIG_KASAN
+KASAN_SANITIZE_kasan_init.o := n
+KASAN_SANITIZE_init.o := n
+endif
diff --git a/arch/riscv/mm/kasan_init.c b/arch/riscv/mm/kasan_init.c
new file mode 100644
index 0000000..4b7830e
--- /dev/null
+++ b/arch/riscv/mm/kasan_init.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/pfn.h>
+#include <linux/init_task.h>
+#include <linux/kasan.h>
+#include <linux/kernel.h>
+#include <linux/memblock.h>
+#include <asm/tlbflush.h>
+#include <asm/pgtable.h>
+#include <asm/fixmap.h>
+
+extern pgd_t early_pg_dir[PTRS_PER_PGD];
+asmlinkage void __init kasan_early_init(void)
+{
+	uintptr_t i;
+	pgd_t *pgd = early_pg_dir + pgd_index(KASAN_SHADOW_START);
+
+	for (i = 0; i < PTRS_PER_PTE; ++i)
+		set_pte(kasan_early_shadow_pte + i,
+			mk_pte(virt_to_page(kasan_early_shadow_page),
+			PAGE_KERNEL));
+
+	for (i = 0; i < PTRS_PER_PMD; ++i)
+		set_pmd(kasan_early_shadow_pmd + i,
+		 pfn_pmd(PFN_DOWN(__pa((uintptr_t)kasan_early_shadow_pte)),
+			__pgprot(_PAGE_TABLE)));
+
+	for (i = KASAN_SHADOW_START; i < KASAN_SHADOW_END;
+	     i += PGDIR_SIZE, ++pgd)
+		set_pgd(pgd,
+		 pfn_pgd(PFN_DOWN(__pa(((uintptr_t)kasan_early_shadow_pmd))),
+			__pgprot(_PAGE_TABLE)));
+
+	// init for swapper_pg_dir
+	pgd = pgd_offset_k(KASAN_SHADOW_START);
+
+	for (i = KASAN_SHADOW_START; i < KASAN_SHADOW_END;
+	     i += PGDIR_SIZE, ++pgd)
+		set_pgd(pgd,
+		 pfn_pgd(PFN_DOWN(__pa(((uintptr_t)kasan_early_shadow_pmd))),
+			__pgprot(_PAGE_TABLE)));
+}
+
+static void __init populate(void *start, void *end)
+{
+	unsigned long i;
+	unsigned long vaddr = (unsigned long)start & PAGE_MASK;
+	unsigned long vend = PAGE_ALIGN((unsigned long)end);
+	unsigned long n_pages = (vend - vaddr) / PAGE_SIZE;
+	unsigned long n_pmds =
+		(n_pages % PTRS_PER_PTE) ? n_pages / PTRS_PER_PTE + 1 :
+						n_pages / PTRS_PER_PTE;
+	pgd_t *pgd = pgd_offset_k(vaddr);
+	pmd_t *pmd = memblock_alloc(n_pmds * sizeof(pmd_t), PAGE_SIZE);
+	pte_t *pte = memblock_alloc(n_pages * sizeof(pte_t), PAGE_SIZE);
+
+	for (i = 0; i < n_pages; i++) {
+		phys_addr_t phys = memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
+
+		set_pte(pte + i, pfn_pte(PHYS_PFN(phys), PAGE_KERNEL));
+	}
+
+	for (i = 0; i < n_pages; ++pmd, i += PTRS_PER_PTE)
+		set_pmd(pmd, pfn_pmd(PFN_DOWN(__pa((uintptr_t)(pte + i))),
+				__pgprot(_PAGE_TABLE)));
+
+	for (i = vaddr; i < vend; i += PGDIR_SIZE, ++pgd)
+		set_pgd(pgd, pfn_pgd(PFN_DOWN(__pa(((uintptr_t)pmd))),
+				__pgprot(_PAGE_TABLE)));
+
+	flush_tlb_all();
+	memset(start, 0, end - start);
+}
+
+void __init kasan_init(void)
+{
+	struct memblock_region *reg;
+	unsigned long i;
+
+	kasan_populate_early_shadow((void *)KASAN_SHADOW_START,
+			(void *)kasan_mem_to_shadow((void *)VMALLOC_END));
+
+	for_each_memblock(memory, reg) {
+		void *start = (void *)__va(reg->base);
+		void *end = (void *)__va(reg->base + reg->size);
+
+		if (start >= end)
+			break;
+
+		populate(kasan_mem_to_shadow(start),
+			 kasan_mem_to_shadow(end));
+	};
+
+	for (i = 0; i < PTRS_PER_PTE; i++)
+		set_pte(&kasan_early_shadow_pte[i],
+			mk_pte(virt_to_page(kasan_early_shadow_page),
+			__pgprot(_PAGE_PRESENT | _PAGE_READ | _PAGE_ACCESSED)));
+
+	memset(kasan_early_shadow_page, 0, PAGE_SIZE);
+
+	init_task.kasan_depth = 0;
+}
-- 
1.7.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
