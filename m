Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 922DD90F4F
	for <lists+linux-riscv@lfdr.de>; Sat, 17 Aug 2019 09:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xL1zS0LjC9ifMvKVMncCGX8VmzJg3wYoz4ZCZtscmlM=; b=YPohC2YPGWLMS/
	UH+KwmYrWhaAnep+lGmEAqjqYPuSJQuoCATB0ruA9aWgcmLzAMXKrYxwBnr9UBSi/WNqjvIDdH3H9
	p9TB0oszNVf8WAAD469Nz/vtO/mmpnfDDujCUb7iPHVyZH+q+eTFULQFSFvQp+A7KybqJaA8Cx6cQ
	JrEJ0MPWsCukcYHAlcybTC0i52lmfkxnssZy6ZgMGl4Q3KVHRD++XCgCmDeL1a4n18TMxTafoyB1F
	B8vnQYzmgZzxp/syQcW1XePbDI2tyaxnjF91Yg7g9D+bDP00YOsRBWRAPGlE75TJbHvf2fpGAu8aX
	EZ0CExcF0nI/reepTWcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytcH-0000zb-CM; Sat, 17 Aug 2019 07:59:13 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytSo-0005fN-8M; Sat, 17 Aug 2019 07:49:26 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 24/26] riscv: use the generic ioremap code
Date: Sat, 17 Aug 2019 09:32:51 +0200
Message-Id: <20190817073253.27819-25-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190817073253.27819-1-hch@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, linux-mtd@lists.infradead.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, linux-riscv@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Use the generic ioremap code instead of providing a local version.
Note that this relies on the asm-generic no-op definition of
pgprot_noncached.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/Kconfig               |  1 +
 arch/riscv/include/asm/io.h      |  3 --
 arch/riscv/include/asm/pgtable.h |  6 +++
 arch/riscv/mm/Makefile           |  1 -
 arch/riscv/mm/ioremap.c          | 84 --------------------------------
 5 files changed, 7 insertions(+), 88 deletions(-)
 delete mode 100644 arch/riscv/mm/ioremap.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 59a4727ecd6c..468e7eba8916 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -30,6 +30,7 @@ config RISCV
 	select GENERIC_STRNLEN_USER
 	select GENERIC_SMP_IDLE_THREAD
 	select GENERIC_ATOMIC64 if !64BIT
+	select GENERIC_IOREMAP
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_MEMBLOCK_NODE_MAP
 	select HAVE_DMA_CONTIGUOUS
diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index c1de6875cc77..df4c8812ff64 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -14,9 +14,6 @@
 #include <linux/types.h>
 #include <asm/mmiowb.h>
 
-extern void __iomem *ioremap(phys_addr_t offset, unsigned long size);
-extern void iounmap(volatile void __iomem *addr);
-
 /* Generic IO read/write.  These perform native-endian accesses. */
 #define __raw_writeb __raw_writeb
 static inline void __raw_writeb(u8 val, volatile void __iomem *addr)
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index a364aba23d55..57be4723626c 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -61,6 +61,12 @@
 
 #define PAGE_TABLE		__pgprot(_PAGE_TABLE)
 
+/*
+ * The RISC-V ISA doesn't yet specify how to query or modify PMAs, so we can't
+ * change the properties of memory regions.
+ */
+#define _PAGE_IOREMAP _PAGE_KERNEL
+
 extern pgd_t swapper_pg_dir[];
 
 /* MAP_PRIVATE permissions: xwr (copy-on-write) */
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 74055e1d6f21..3b3a161feaa0 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -8,7 +8,6 @@ endif
 obj-y += init.o
 obj-y += fault.o
 obj-y += extable.o
-obj-y += ioremap.o
 obj-y += cacheflush.o
 obj-y += context.o
 obj-y += sifive_l2_cache.o
diff --git a/arch/riscv/mm/ioremap.c b/arch/riscv/mm/ioremap.c
deleted file mode 100644
index ac621ddb45c0..000000000000
--- a/arch/riscv/mm/ioremap.c
+++ /dev/null
@@ -1,84 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * (C) Copyright 1995 1996 Linus Torvalds
- * (C) Copyright 2012 Regents of the University of California
- */
-
-#include <linux/export.h>
-#include <linux/mm.h>
-#include <linux/vmalloc.h>
-#include <linux/io.h>
-
-#include <asm/pgtable.h>
-
-/*
- * Remap an arbitrary physical address space into the kernel virtual
- * address space. Needed when the kernel wants to access high addresses
- * directly.
- *
- * NOTE! We need to allow non-page-aligned mappings too: we will obviously
- * have to convert them into an offset in a page-aligned mapping, but the
- * caller shouldn't need to know that small detail.
- */
-static void __iomem *__ioremap_caller(phys_addr_t addr, size_t size,
-	pgprot_t prot, void *caller)
-{
-	phys_addr_t last_addr;
-	unsigned long offset, vaddr;
-	struct vm_struct *area;
-
-	/* Disallow wrap-around or zero size */
-	last_addr = addr + size - 1;
-	if (!size || last_addr < addr)
-		return NULL;
-
-	/* Page-align mappings */
-	offset = addr & (~PAGE_MASK);
-	addr -= offset;
-	size = PAGE_ALIGN(size + offset);
-
-	area = get_vm_area_caller(size, VM_IOREMAP, caller);
-	if (!area)
-		return NULL;
-	vaddr = (unsigned long)area->addr;
-
-	if (ioremap_page_range(vaddr, vaddr + size, addr, prot)) {
-		free_vm_area(area);
-		return NULL;
-	}
-
-	return (void __iomem *)(vaddr + offset);
-}
-
-/*
- * ioremap     -   map bus memory into CPU space
- * @offset:    bus address of the memory
- * @size:      size of the resource to map
- *
- * ioremap performs a platform specific sequence of operations to
- * make bus memory CPU accessible via the readb/readw/readl/writeb/
- * writew/writel functions and the other mmio helpers. The returned
- * address is not guaranteed to be usable directly as a virtual
- * address.
- *
- * Must be freed with iounmap.
- */
-void __iomem *ioremap(phys_addr_t offset, unsigned long size)
-{
-	return __ioremap_caller(offset, size, PAGE_KERNEL,
-		__builtin_return_address(0));
-}
-EXPORT_SYMBOL(ioremap);
-
-
-/**
- * iounmap - Free a IO remapping
- * @addr: virtual address from ioremap_*
- *
- * Caller must ensure there is only one unmapping for the same pointer.
- */
-void iounmap(volatile void __iomem *addr)
-{
-	vunmap((void *)((unsigned long)addr & PAGE_MASK));
-}
-EXPORT_SYMBOL(iounmap);
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
