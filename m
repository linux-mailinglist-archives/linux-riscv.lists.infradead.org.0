Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A101ECAEB
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jun 2020 10:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnlEjCymVECv4dad6JjvIIhG4TtZ85V4mUclr67m+tg=; b=rczD6kJj29dSyi
	yONczX2z5wTVm4vvG2ZeKn7GV+yB+bt547m1DPpRv1xq/yKfbtVoNEaTs8dv5dX97Pf/3Bu4b0CRb
	0kcb0E5+3blGRk+AFTlxgPc31QwrkQRpxdb+K9ajZXK4JT4wP8UnduJeH5q4ePRNbKqfwwY/IHBxw
	FQM+old+pvtlcAAh1+jWHA4z3ZouQPIpd1IPUuN3whX59NrOUZ1szGTs/JnDkahE2ycvbnQqndUdk
	dsFsVB4MJuQRXepcg0cJRq29KuDPauOI2DLwzrftthxjEmJO7xxLLM4xsn2d6b99MGq59ldh0BR5m
	0bRac6ECpefgCUdi7YiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgOLA-0008Jp-Ll; Wed, 03 Jun 2020 08:01:36 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgOL5-0008IW-PC
 for linux-riscv@lists.infradead.org; Wed, 03 Jun 2020 08:01:34 +0000
X-Originating-IP: 90.112.45.105
Received: from debian.home (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 387A5240004;
 Wed,  3 Jun 2020 08:01:19 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Zong Li <zong.li@sifive.com>, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org
Subject: [PATCH v4 1/4] riscv: Move kernel mapping to vmalloc zone
Date: Wed,  3 Jun 2020 04:00:07 -0400
Message-Id: <20200603080010.13366-2-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603080010.13366-1-alex@ghiti.fr>
References: <20200603080010.13366-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_010132_096532_FB00006A 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

This is a preparatory patch for relocatable kernel.

The kernel used to be linked at PAGE_OFFSET address and used to be loaded
physically at the beginning of the main memory. Therefore, we could use
the linear mapping for the kernel mapping.

But the relocated kernel base address will be different from PAGE_OFFSET
and since in the linear mapping, two different virtual addresses cannot
point to the same physical address, the kernel mapping needs to lie outside
the linear mapping.

In addition, because modules and BPF must be close to the kernel (inside
+-2GB window), the kernel is placed at the end of the vmalloc zone minus
2GB, which leaves room for modules and BPF. The kernel could not be
placed at the beginning of the vmalloc zone since other vmalloc
allocations from the kernel could get all the +-2GB window around the
kernel which would prevent new modules and BPF programs to be loaded.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
---
 arch/riscv/boot/loader.lds.S     |  3 +-
 arch/riscv/include/asm/page.h    | 10 +++++-
 arch/riscv/include/asm/pgtable.h | 38 ++++++++++++++-------
 arch/riscv/kernel/head.S         |  3 +-
 arch/riscv/kernel/module.c       |  4 +--
 arch/riscv/kernel/vmlinux.lds.S  |  3 +-
 arch/riscv/mm/init.c             | 58 +++++++++++++++++++++++++-------
 arch/riscv/mm/physaddr.c         |  2 +-
 8 files changed, 88 insertions(+), 33 deletions(-)

diff --git a/arch/riscv/boot/loader.lds.S b/arch/riscv/boot/loader.lds.S
index 47a5003c2e28..62d94696a19c 100644
--- a/arch/riscv/boot/loader.lds.S
+++ b/arch/riscv/boot/loader.lds.S
@@ -1,13 +1,14 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 
 #include <asm/page.h>
+#include <asm/pgtable.h>
 
 OUTPUT_ARCH(riscv)
 ENTRY(_start)
 
 SECTIONS
 {
-	. = PAGE_OFFSET;
+	. = KERNEL_LINK_ADDR;
 
 	.payload : {
 		*(.payload)
diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index 2d50f76efe48..48bb09b6a9b7 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -90,18 +90,26 @@ typedef struct page *pgtable_t;
 
 #ifdef CONFIG_MMU
 extern unsigned long va_pa_offset;
+extern unsigned long va_kernel_pa_offset;
 extern unsigned long pfn_base;
 #define ARCH_PFN_OFFSET		(pfn_base)
 #else
 #define va_pa_offset		0
+#define va_kernel_pa_offset	0
 #define ARCH_PFN_OFFSET		(PAGE_OFFSET >> PAGE_SHIFT)
 #endif /* CONFIG_MMU */
 
 extern unsigned long max_low_pfn;
 extern unsigned long min_low_pfn;
+extern unsigned long kernel_virt_addr;
 
 #define __pa_to_va_nodebug(x)	((void *)((unsigned long) (x) + va_pa_offset))
-#define __va_to_pa_nodebug(x)	((unsigned long)(x) - va_pa_offset)
+#define linear_mapping_va_to_pa(x)	((unsigned long)(x) - va_pa_offset)
+#define kernel_mapping_va_to_pa(x)	\
+	((unsigned long)(x) - va_kernel_pa_offset)
+#define __va_to_pa_nodebug(x)		\
+	(((x) >= PAGE_OFFSET) ?		\
+		linear_mapping_va_to_pa(x) : kernel_mapping_va_to_pa(x))
 
 #ifdef CONFIG_DEBUG_VIRTUAL
 extern phys_addr_t __virt_to_phys(unsigned long x);
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 35b60035b6b0..94ef3b49dfb6 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -11,23 +11,29 @@
 
 #include <asm/pgtable-bits.h>
 
-#ifndef __ASSEMBLY__
-
-/* Page Upper Directory not used in RISC-V */
-#include <asm-generic/pgtable-nopud.h>
-#include <asm/page.h>
-#include <asm/tlbflush.h>
-#include <linux/mm_types.h>
-
-#ifdef CONFIG_MMU
+#ifndef CONFIG_MMU
+#define KERNEL_VIRT_ADDR	PAGE_OFFSET
+#define KERNEL_LINK_ADDR	PAGE_OFFSET
+#else
+/*
+ * Leave 2GB for modules and BPF that must lie within a 2GB range around
+ * the kernel.
+ */
+#define KERNEL_VIRT_ADDR	(VMALLOC_END - SZ_2G + 1)
+#define KERNEL_LINK_ADDR	KERNEL_VIRT_ADDR
 
 #define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
 #define VMALLOC_END      (PAGE_OFFSET - 1)
 #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
 
 #define BPF_JIT_REGION_SIZE	(SZ_128M)
-#define BPF_JIT_REGION_START	(PAGE_OFFSET - BPF_JIT_REGION_SIZE)
-#define BPF_JIT_REGION_END	(VMALLOC_END)
+#define BPF_JIT_REGION_START	PFN_ALIGN((unsigned long)&_end)
+#define BPF_JIT_REGION_END	(BPF_JIT_REGION_START + BPF_JIT_REGION_SIZE)
+
+#ifdef CONFIG_64BIT
+#define VMALLOC_MODULE_START	BPF_JIT_REGION_END
+#define VMALLOC_MODULE_END	(((unsigned long)&_start & PAGE_MASK) + SZ_2G)
+#endif
 
 /*
  * Roughly size the vmemmap space to be large enough to fit enough
@@ -57,9 +63,16 @@
 #define FIXADDR_SIZE     PGDIR_SIZE
 #endif
 #define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
-
 #endif
 
+#ifndef __ASSEMBLY__
+
+/* Page Upper Directory not used in RISC-V */
+#include <asm-generic/pgtable-nopud.h>
+#include <asm/page.h>
+#include <asm/tlbflush.h>
+#include <linux/mm_types.h>
+
 #ifdef CONFIG_64BIT
 #include <asm/pgtable-64.h>
 #else
@@ -483,6 +496,7 @@ static inline void __kernel_map_pages(struct page *page, int numpages, int enabl
 
 #define kern_addr_valid(addr)   (1) /* FIXME */
 
+extern char _start[];
 extern void *dtb_early_va;
 void setup_bootmem(void);
 void paging_init(void);
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 98a406474e7d..8f5bb7731327 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -49,7 +49,8 @@ ENTRY(_start)
 #ifdef CONFIG_MMU
 relocate:
 	/* Relocate return address */
-	li a1, PAGE_OFFSET
+	la a1, kernel_virt_addr
+	REG_L a1, 0(a1)
 	la a2, _start
 	sub a1, a1, a2
 	add ra, ra, a1
diff --git a/arch/riscv/kernel/module.c b/arch/riscv/kernel/module.c
index 8bbe5dbe1341..1a8fbe05accf 100644
--- a/arch/riscv/kernel/module.c
+++ b/arch/riscv/kernel/module.c
@@ -392,12 +392,10 @@ int apply_relocate_add(Elf_Shdr *sechdrs, const char *strtab,
 }
 
 #if defined(CONFIG_MMU) && defined(CONFIG_64BIT)
-#define VMALLOC_MODULE_START \
-	 max(PFN_ALIGN((unsigned long)&_end - SZ_2G), VMALLOC_START)
 void *module_alloc(unsigned long size)
 {
 	return __vmalloc_node_range(size, 1, VMALLOC_MODULE_START,
-				    VMALLOC_END, GFP_KERNEL,
+				    VMALLOC_MODULE_END, GFP_KERNEL,
 				    PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
 				    __builtin_return_address(0));
 }
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 0339b6bbe11a..a9abde62909f 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -4,7 +4,8 @@
  * Copyright (C) 2017 SiFive
  */
 
-#define LOAD_OFFSET PAGE_OFFSET
+#include <asm/pgtable.h>
+#define LOAD_OFFSET KERNEL_LINK_ADDR
 #include <asm/vmlinux.lds.h>
 #include <asm/page.h>
 #include <asm/cache.h>
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 736de6c8739f..37be2eb45e58 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -22,6 +22,9 @@
 
 #include "../kernel/head.h"
 
+unsigned long kernel_virt_addr = KERNEL_VIRT_ADDR;
+EXPORT_SYMBOL(kernel_virt_addr);
+
 unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)]
 							__page_aligned_bss;
 EXPORT_SYMBOL(empty_zero_page);
@@ -178,8 +181,12 @@ void __init setup_bootmem(void)
 }
 
 #ifdef CONFIG_MMU
+/* Offset between linear mapping virtual address and kernel load address */
 unsigned long va_pa_offset;
 EXPORT_SYMBOL(va_pa_offset);
+/* Offset between kernel mapping virtual address and kernel load address */
+unsigned long va_kernel_pa_offset;
+EXPORT_SYMBOL(va_kernel_pa_offset);
 unsigned long pfn_base;
 EXPORT_SYMBOL(pfn_base);
 
@@ -271,7 +278,7 @@ static phys_addr_t __init alloc_pmd(uintptr_t va)
 	if (mmu_enabled)
 		return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
 
-	pmd_num = (va - PAGE_OFFSET) >> PGDIR_SHIFT;
+	pmd_num = (va - kernel_virt_addr) >> PGDIR_SHIFT;
 	BUG_ON(pmd_num >= NUM_EARLY_PMDS);
 	return (uintptr_t)&early_pmd[pmd_num * PTRS_PER_PMD];
 }
@@ -372,14 +379,30 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
 #error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
 #endif
 
+static uintptr_t load_pa, load_sz;
+
+void create_kernel_page_table(pgd_t *pgdir, uintptr_t map_size)
+{
+	uintptr_t va, end_va;
+
+	end_va = kernel_virt_addr + load_sz;
+	for (va = kernel_virt_addr; va < end_va; va += map_size)
+		create_pgd_mapping(pgdir, va,
+				   load_pa + (va - kernel_virt_addr),
+				   map_size, PAGE_KERNEL_EXEC);
+}
+
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 {
 	uintptr_t va, end_va;
-	uintptr_t load_pa = (uintptr_t)(&_start);
-	uintptr_t load_sz = (uintptr_t)(&_end) - load_pa;
 	uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
 
+	load_pa = (uintptr_t)(&_start);
+	load_sz = (uintptr_t)(&_end) - load_pa;
+
 	va_pa_offset = PAGE_OFFSET - load_pa;
+	va_kernel_pa_offset = kernel_virt_addr - load_pa;
+
 	pfn_base = PFN_DOWN(load_pa);
 
 	/*
@@ -402,26 +425,22 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 	create_pmd_mapping(fixmap_pmd, FIXADDR_START,
 			   (uintptr_t)fixmap_pte, PMD_SIZE, PAGE_TABLE);
 	/* Setup trampoline PGD and PMD */
-	create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
+	create_pgd_mapping(trampoline_pg_dir, kernel_virt_addr,
 			   (uintptr_t)trampoline_pmd, PGDIR_SIZE, PAGE_TABLE);
-	create_pmd_mapping(trampoline_pmd, PAGE_OFFSET,
+	create_pmd_mapping(trampoline_pmd, kernel_virt_addr,
 			   load_pa, PMD_SIZE, PAGE_KERNEL_EXEC);
 #else
 	/* Setup trampoline PGD */
-	create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
+	create_pgd_mapping(trampoline_pg_dir, kernel_virt_addr,
 			   load_pa, PGDIR_SIZE, PAGE_KERNEL_EXEC);
 #endif
 
 	/*
-	 * Setup early PGD covering entire kernel which will allows
+	 * Setup early PGD covering entire kernel which will allow
 	 * us to reach paging_init(). We map all memory banks later
 	 * in setup_vm_final() below.
 	 */
-	end_va = PAGE_OFFSET + load_sz;
-	for (va = PAGE_OFFSET; va < end_va; va += map_size)
-		create_pgd_mapping(early_pg_dir, va,
-				   load_pa + (va - PAGE_OFFSET),
-				   map_size, PAGE_KERNEL_EXEC);
+	create_kernel_page_table(early_pg_dir, map_size);
 
 	/* Create fixed mapping for early FDT parsing */
 	end_va = __fix_to_virt(FIX_FDT) + FIX_FDT_SIZE;
@@ -441,6 +460,7 @@ static void __init setup_vm_final(void)
 	uintptr_t va, map_size;
 	phys_addr_t pa, start, end;
 	struct memblock_region *reg;
+	static struct vm_struct vm_kernel = { 0 };
 
 	/* Set mmu_enabled flag */
 	mmu_enabled = true;
@@ -467,10 +487,22 @@ static void __init setup_vm_final(void)
 		for (pa = start; pa < end; pa += map_size) {
 			va = (uintptr_t)__va(pa);
 			create_pgd_mapping(swapper_pg_dir, va, pa,
-					   map_size, PAGE_KERNEL_EXEC);
+					   map_size, PAGE_KERNEL);
 		}
 	}
 
+	/* Map the kernel */
+	create_kernel_page_table(swapper_pg_dir, PMD_SIZE);
+
+	/* Reserve the vmalloc area occupied by the kernel */
+	vm_kernel.addr = (void *)kernel_virt_addr;
+	vm_kernel.phys_addr = load_pa;
+	vm_kernel.size = (load_sz + PMD_SIZE - 1) & ~(PMD_SIZE - 1);
+	vm_kernel.flags = VM_MAP | VM_NO_GUARD;
+	vm_kernel.caller = __builtin_return_address(0);
+
+	vm_area_add_early(&vm_kernel);
+
 	/* Clear fixmap PTE and PMD mappings */
 	clear_fixmap(FIX_PTE);
 	clear_fixmap(FIX_PMD);
diff --git a/arch/riscv/mm/physaddr.c b/arch/riscv/mm/physaddr.c
index e8e4dcd39fed..35703d5ef5fd 100644
--- a/arch/riscv/mm/physaddr.c
+++ b/arch/riscv/mm/physaddr.c
@@ -23,7 +23,7 @@ EXPORT_SYMBOL(__virt_to_phys);
 
 phys_addr_t __phys_addr_symbol(unsigned long x)
 {
-	unsigned long kernel_start = (unsigned long)PAGE_OFFSET;
+	unsigned long kernel_start = (unsigned long)kernel_virt_addr;
 	unsigned long kernel_end = (unsigned long)_end;
 
 	/*
-- 
2.20.1


