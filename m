Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEC3199251
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 11:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6g8aVaqZy8RdawfBeu+tA34BgP6BBGNpftyLcJuB4V4=; b=LKWDBEoPRFJULR/rElFECLFdo
	62z9kW0smWs6uNKozh8hjGIglIUp5RifMh53mbLdhdEpGh55gbjiYQ8A6XhTI4VgkhDRZxjJ4NcAq
	Sro3kESpgvDO9Cpu68bV4vbfDS1BNFcKz3kqoOMQTf7TUvTzQiWzVz5GZR3Q1e801SoarvVUW6jEc
	VOzsdtnIIqzFRhM3GRCB0Yugzmxm3eIJtRnSN8f8L6MMBYp/EL6xBCUapyJrsXVIZruQQdroI/+20
	OYvXZW3kttJsomj13Y0ayCJg4GbD0cfxHqSm8xM+pu0wg/tc8yUd0KJb8A15r+PFj3zGOXeUYqLSj
	7Qa4wrnRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDHa-0003oJ-Td; Tue, 31 Mar 2020 09:34:06 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDHV-0003mL-BB
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 09:34:03 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id 02V9WBo8065467;
 Tue, 31 Mar 2020 17:32:11 +0800 (GMT-8)
 (envelope-from tesheng@andestech.com)
Received: from atcsqa06.andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Tue, 31 Mar 2020
 17:33:05 +0800
From: Eric Lin <tesheng@andestech.com>
To: <linux-riscv@lists.infradead.org>
Subject: [PATCH 1/3] riscv/mm: Add pkmap region and CONFIG_HIGHMEM
Date: Tue, 31 Mar 2020 17:32:39 +0800
Message-ID: <20200331093241.3728-2-tesheng@andestech.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20200331093241.3728-1-tesheng@andestech.com>
References: <20200331093241.3728-1-tesheng@andestech.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com 02V9WBo8065467
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_023401_644450_5B9B9329 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: aou@eecs.berkeley.edu, gary@garyguo.net, alex@ghiti.fr,
 david.abdurachmanov@gmail.com, steven.price@arm.com,
 Alan Kao <alankao@andestech.com>, Anup.Patel@wdc.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, atish.patra@wdc.com,
 yash.shah@sifive.com, Eric Lin <tesheng@andestech.com>, palmer@dabbelt.com,
 green.hu@gmail.com, zong.li@sifive.com, paul.walmsley@sifive.com,
 akpm@linux-foundation.org, bp@suse.de, logang@deltatee.com, tglx@linutronix.de
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

To support kmap(), we add pkmap region and move origin memory
layout which including fixmap, pci_io, vmemmap and vmalloc region
after PAGE_OFFSET to leave user more space. And we reserve 4MB
from TOP of RAM to make sure each region before it can align with
PGDIR_SIZE.

max_low_pfn is the end of lowmem and the start of highmem.
In setup_vm_final() we just setup page table to the end of lowmem,
and after lowmem, each memory region will maintain its page table.

We must set memblock_set_current_limit() to max_low_pfn, because in
memblock_phys_alloc(), it will allocate memory default from top of
physical RAM which will use highmem zone pages that doesn't create
page table mappings.

Signed-off-by: Eric Lin <tesheng@andestech.com>
Cc: Alan Kao <alankao@andestech.com>
---
 arch/riscv/Kconfig               | 18 +++++++
 arch/riscv/include/asm/highmem.h | 19 ++++++++
 arch/riscv/include/asm/pgtable.h | 22 +++++++++
 arch/riscv/mm/init.c             | 84 ++++++++++++++++++++++++++++++--
 4 files changed, 140 insertions(+), 3 deletions(-)
 create mode 100644 arch/riscv/include/asm/highmem.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index cd5db57bfd41..079443cbe382 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -288,6 +288,24 @@ config FPU
 
 	  If you don't know what to do here, say Y.
 
+config HIGHMEM
+    bool "High Memory Support"
+    depends on 32BIT && MMU
+    default n
+    help
+      The address space of RV32 processors is only 4 Gigabytes large
+      and it has to accommodate user address space, kernel address
+      space as well as some memory mapped IO. That means that, if you
+      have a large amount of physical memory and/or IO, not all of the
+      memory can be "permanently mapped" by the kernel. The physical
+      memory that is not permanently mapped is called "high memory".
+
+      Depending on the selected kernel/user memory split, minimum
+      vmalloc space and actual amount of RAM, you may not need this
+      option which should result in a slightly faster kernel.
+
+      If unsure, say n.
+
 endmenu
 
 menu "Kernel features"
diff --git a/arch/riscv/include/asm/highmem.h b/arch/riscv/include/asm/highmem.h
new file mode 100644
index 000000000000..7fc79e58f607
--- /dev/null
+++ b/arch/riscv/include/asm/highmem.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 Andes Technology Corporation
+ */
+
+#ifndef _ASM_HIGHMEM_H
+#define _ASM_HIGHMEM_H
+
+#include <asm/kmap_types.h>
+#include <asm/cacheflush.h>
+#include <asm/pgtable.h>
+#include <asm/fixmap.h>
+
+#define PKMAP_BASE		(FIXADDR_START - SZ_2M)
+#define LAST_PKMAP		(SZ_2M >> PAGE_SHIFT)
+#define LAST_PKMAP_MASK	(LAST_PKMAP - 1)
+#define PKMAP_NR(virt)	(((virt) - (PKMAP_BASE)) >> PAGE_SHIFT)
+#define PKMAP_ADDR(nr)	(PKMAP_BASE + ((nr) << PAGE_SHIFT))
+#define kmap_prot		PAGE_KERNEL
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 393f2014dfee..d9a3769f1f4e 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -21,6 +21,16 @@
 
 #ifdef CONFIG_MMU
 
+#ifdef CONFIG_HIGHMEM
+#define VMALLOC_SIZE     (SZ_128M)
+/* Reserve 4MB from top of RAM to align with PGDIR_SIZE */
+#define VMALLOC_END      (0xffc00000UL)
+#define VMALLOC_START    (VMALLOC_END - VMALLOC_SIZE)
+
+#define BPF_JIT_REGION_SIZE    (VMALLOC_SIZE >> 2)
+#define BPF_JIT_REGION_START   (VMALLOC_END - BPF_JIT_REGION_SIZE)
+#define BPF_JIT_REGION_END (VMALLOC_END)
+#else
 #define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
 #define VMALLOC_END      (PAGE_OFFSET - 1)
 #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
@@ -28,6 +38,7 @@
 #define BPF_JIT_REGION_SIZE	(SZ_128M)
 #define BPF_JIT_REGION_START	(PAGE_OFFSET - BPF_JIT_REGION_SIZE)
 #define BPF_JIT_REGION_END	(VMALLOC_END)
+#endif /* CONFIG_HIGHMEM */
 
 /*
  * Roughly size the vmemmap space to be large enough to fit enough
@@ -60,6 +71,12 @@
 
 #endif
 
+#ifdef CONFIG_HIGHMEM
+/* Set LOWMEM_END alignment with PGDIR_SIZE */
+#define LOWMEM_END		(ALIGN_DOWN(PKMAP_BASE, SZ_4M))
+#define LOWMEM_SIZE		(LOWMEM_END - PAGE_OFFSET)
+#endif /* CONFIG_HIGHMEM */
+
 #ifdef CONFIG_64BIT
 #include <asm/pgtable-64.h>
 #else
@@ -455,8 +472,13 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 #ifdef CONFIG_64BIT
 #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)
 #else
+#ifdef CONFIG_HIGHMEM
+#define TASK_SIZE PAGE_OFFSET
+#else
+#include<asm/fixmap.h>
 #define TASK_SIZE FIXADDR_START
 #endif
+#endif
 
 #else /* CONFIG_MMU */
 
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index fab855963c73..59afb479176a 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -37,7 +37,9 @@ static void __init zone_sizes_init(void)
 			(unsigned long) PFN_PHYS(max_low_pfn)));
 #endif
 	max_zone_pfns[ZONE_NORMAL] = max_low_pfn;
-
+#ifdef CONFIG_HIGHMEM
+	max_zone_pfns[ZONE_HIGHMEM] = max_pfn;
+#endif
 	free_area_init_nodes(max_zone_pfns);
 }
 
@@ -46,6 +48,22 @@ static void setup_zero_page(void)
 	memset((void *)empty_zero_page, 0, PAGE_SIZE);
 }
 
+#ifdef CONFIG_HIGHMEM
+static inline void __init free_highmem(void)
+{
+	unsigned long pfn;
+
+	for (pfn = PFN_UP(__pa(high_memory)); pfn < max_pfn; pfn++) {
+		phys_addr_t paddr = (phys_addr_t)pfn << PAGE_SHIFT;
+
+		if (!memblock_is_reserved(paddr))
+			free_highmem_page(pfn_to_page(pfn));
+	}
+}
+#else
+static inline void __init free_highmem(void) { }
+#endif
+
 #ifdef CONFIG_DEBUG_VM
 static inline void print_mlk(char *name, unsigned long b, unsigned long t)
 {
@@ -85,6 +103,7 @@ void __init mem_init(void)
 
 	high_memory = (void *)(__va(PFN_PHYS(max_low_pfn)));
 	memblock_free_all();
+	free_highmem();
 
 	mem_init_print_info(NULL);
 	print_vm_layout();
@@ -132,7 +151,16 @@ void __init setup_bootmem(void)
 		phys_addr_t end = reg->base + reg->size;
 
 		if (reg->base <= vmlinux_start && vmlinux_end <= end) {
+#ifdef CONFIG_HIGHMEM
+			/*
+			 * In RV32, physical RAM might be large than 1GB,
+			 * so we just set reg->size as mem_size.
+			 */
+			mem_size = reg->size;
+#else
 			mem_size = min(reg->size, (phys_addr_t)-PAGE_OFFSET);
+#endif
+
 
 			/*
 			 * Remove memblock from the end of usable area to the
@@ -149,8 +177,13 @@ void __init setup_bootmem(void)
 	memblock_reserve(vmlinux_start, vmlinux_end - vmlinux_start);
 
 	set_max_mapnr(PFN_DOWN(mem_size));
+#ifdef CONFIG_HIGHMEM
+	max_low_pfn = (PFN_DOWN(__pa(LOWMEM_END)));
+	max_pfn = PFN_DOWN(memblock_end_of_DRAM());
+	memblock_set_current_limit(__pa(LOWMEM_END));
+#else
 	max_low_pfn = PFN_DOWN(memblock_end_of_DRAM());
-
+#endif
 #ifdef CONFIG_BLK_DEV_INITRD
 	setup_initrd();
 #endif /* CONFIG_BLK_DEV_INITRD */
@@ -451,8 +484,16 @@ static void __init setup_vm_final(void)
 	/* Map all memory banks */
 	for_each_memblock(memory, reg) {
 		start = reg->base;
+#ifdef CONFIG_HIGHMEM
+		/*
+		 * If enable HIGHMEM, we only setup page table
+		 * to the end of lowmem.
+		 */
+		BUG_ON((LOWMEM_SIZE % PGDIR_SIZE) != 0);
+		end = start + LOWMEM_SIZE;
+#else
 		end = start + reg->size;
-
+#endif
 		if (start >= end)
 			break;
 		if (memblock_is_nomap(reg))
@@ -488,6 +529,42 @@ static inline void setup_vm_final(void)
 }
 #endif /* CONFIG_MMU */
 
+#ifdef CONFIG_HIGHMEM
+static void __init pkmap_init(void)
+{
+	unsigned long vaddr;
+	unsigned long pfn;
+	pgd_t *pgd;
+	p4d_t *p4d;
+	pud_t *pud;
+	pmd_t *pmd;
+	pte_t *pkmap_p;
+
+    /*
+     * Permanent kmaps:
+     */
+	vaddr = PKMAP_BASE;
+
+	pgd = swapper_pg_dir + pgd_index(vaddr);
+	p4d = p4d_offset(pgd, vaddr);
+	pud = pud_offset(p4d, vaddr);
+	pmd = pmd_offset(pud, vaddr);
+	pkmap_p = (pte_t *)__va(memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE));
+	if (!pkmap_p)
+		panic("%s: Failed to allocate %lu bytes align=0x%lx\n",
+		      __func__, PAGE_SIZE, PAGE_SIZE);
+	memset(pkmap_p, 0, PAGE_SIZE);
+	pfn = PFN_DOWN(__pa(pkmap_p));
+	set_pmd(pmd, __pmd((pfn  << _PAGE_PFN_SHIFT) |
+			pgprot_val(__pgprot(_PAGE_TABLE))));
+
+	/* Adjust pkmap page table base */
+	pkmap_page_table = pkmap_p + pte_index(vaddr);
+}
+#else
+static void __init pkmap_init(void){ }
+#endif
+
 void __init paging_init(void)
 {
 	setup_vm_final();
@@ -495,6 +572,7 @@ void __init paging_init(void)
 	sparse_init();
 	setup_zero_page();
 	zone_sizes_init();
+	pkmap_init();
 }
 
 #ifdef CONFIG_SPARSEMEM_VMEMMAP
-- 
2.17.0


