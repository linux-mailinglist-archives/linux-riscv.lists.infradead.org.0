Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED8BDB54D
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bsLgsXzer8pnqRy+q6v49iw0QwOZFPbw7ODYK2E5EY=; b=pBcvCofkPhgOb6
	zGGdgOYU/qoY8pRil6H3dPDx0DqwUDKCO1/KZsz+o1jTW/RaS561gRayjNwdKoLhI3WBUdmoPOAIT
	P0OUNc8w+ZdsK/RbijBXePhjxAA3NieHU4WyO0DDVJ4CpX13vK9Le+I2Ep+lzbVlFrm/rCQzEAJ5B
	+NMgCKfCNSpMJPzBZw0OJTVT3Stt2Z4JY+rilklzkYfohp6yPdw4D5TXBoNeEkYwddryYQdB0x5RU
	V/A8aOCo8A0Et6rLe87jtjLC/YB2fvExd3823zAOR8yrggsr/mpYFu9/RK1p3CVDXUmnq/BGf4ZPy
	r8BGYnvx4iBAJv5qlG6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLA3O-0003Hl-Mq; Thu, 17 Oct 2019 17:59:14 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9rL-0006JB-7Z; Thu, 17 Oct 2019 17:46:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 18/21] riscv: use the generic ioremap code
Date: Thu, 17 Oct 2019 19:45:51 +0200
Message-Id: <20191017174554.29840-19-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017174554.29840-1-hch@lst.de>
References: <20191017174554.29840-1-hch@lst.de>
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
index 8eebbc8860bb..a02e91ed747a 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -30,6 +30,7 @@ config RISCV
 	select GENERIC_STRNLEN_USER
 	select GENERIC_SMP_IDLE_THREAD
 	select GENERIC_ATOMIC64 if !64BIT
+	select GENERIC_IOREMAP
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_ASM_MODVERSIONS
 	select HAVE_MEMBLOCK_NODE_MAP
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
index 7255f2d8395b..65a216e91df2 100644
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
index 9d9a17335686..b3a356c80c1f 100644
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
