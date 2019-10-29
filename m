Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFC2E81B9
	for <lists+linux-riscv@lfdr.de>; Tue, 29 Oct 2019 08:01:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRGOmvZecSuaTknN8ur6aS2qtyzz/DK8sdOBZlKjap8=; b=IeVp2njN0TRaMB
	ViSWDBe2qTf636G3/yXRJr4rku0TkfVmeuIt8Nk0MW9H6Oo3S31b2Wmqab2Q2cKcmBTdNJIK1sq7+
	vM1CVqwNQ1dXgwCVC2a7fsqnMOVERTvL3UrcRBS0/tpvvBEK6Yp4OsM4Mcp2NBKp4fHz7GMJGmGc4
	o1qI3khmlj9vOWSTKfzDgzsUhJDVmRh+SARRDRvZFMLDkI/QDusjPZ8593qM3NegJos1R7/QGVjR3
	fPu5MZWUWit6x7lm+H8NjIllHE4Desi12PQ33dZ0PxOZk2YruWzKJoYrqf4UnsiT6bWUqkHCc9uax
	jPKX0K6V6MqHb7QCqy/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLVC-0001ii-OE; Tue, 29 Oct 2019 07:01:14 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLJw-0004D0-K2; Tue, 29 Oct 2019 06:49:37 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 19/21] nds32: use generic ioremap
Date: Tue, 29 Oct 2019 07:48:32 +0100
Message-Id: <20191029064834.23438-20-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029064834.23438-1-hch@lst.de>
References: <20191029064834.23438-1-hch@lst.de>
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

Use the generic ioremap_prot and iounmap helpers.

Note that the io.h include in pgtable.h had to be removed to not create
an include loop.  As far as I can tell there was no need for it to
start with.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/nds32/Kconfig               |  1 +
 arch/nds32/include/asm/io.h      |  3 +-
 arch/nds32/include/asm/pgtable.h |  4 ++-
 arch/nds32/mm/Makefile           |  3 +-
 arch/nds32/mm/ioremap.c          | 62 --------------------------------
 5 files changed, 6 insertions(+), 67 deletions(-)
 delete mode 100644 arch/nds32/mm/ioremap.c

diff --git a/arch/nds32/Kconfig b/arch/nds32/Kconfig
index fbd68329737f..12c06a833b7c 100644
--- a/arch/nds32/Kconfig
+++ b/arch/nds32/Kconfig
@@ -20,6 +20,7 @@ config NDS32
 	select GENERIC_CLOCKEVENTS
 	select GENERIC_IRQ_CHIP
 	select GENERIC_IRQ_SHOW
+	select GENERIC_IOREMAP
 	select GENERIC_LIB_ASHLDI3
 	select GENERIC_LIB_ASHRDI3
 	select GENERIC_LIB_CMPDI2
diff --git a/arch/nds32/include/asm/io.h b/arch/nds32/include/asm/io.h
index fb0e8a24c7af..e57378d04006 100644
--- a/arch/nds32/include/asm/io.h
+++ b/arch/nds32/include/asm/io.h
@@ -6,8 +6,6 @@
 
 #include <linux/types.h>
 
-void __iomem *ioremap(phys_addr_t phys_addr, size_t size);
-extern void iounmap(volatile void __iomem *addr);
 #define __raw_writeb __raw_writeb
 static inline void __raw_writeb(u8 val, volatile void __iomem *addr)
 {
@@ -80,6 +78,7 @@ static inline u32 __raw_readl(const volatile void __iomem *addr)
 #define writeb(v,c)	({ __iowmb(); writeb_relaxed((v),(c)); })
 #define writew(v,c)	({ __iowmb(); writew_relaxed((v),(c)); })
 #define writel(v,c)	({ __iowmb(); writel_relaxed((v),(c)); })
+
 #include <asm-generic/io.h>
 
 #endif /* __ASM_NDS32_IO_H */
diff --git a/arch/nds32/include/asm/pgtable.h b/arch/nds32/include/asm/pgtable.h
index 0588ec99725c..6fbf251cfc26 100644
--- a/arch/nds32/include/asm/pgtable.h
+++ b/arch/nds32/include/asm/pgtable.h
@@ -12,7 +12,6 @@
 #include <asm/nds32.h>
 #ifndef __ASSEMBLY__
 #include <asm/fixmap.h>
-#include <asm/io.h>
 #include <nds32_intrinsic.h>
 #endif
 
@@ -130,6 +129,9 @@ extern void __pgd_error(const char *file, int line, unsigned long val);
 #define _PAGE_CACHE		_PAGE_C_MEM_WB
 #endif
 
+#define _PAGE_IOREMAP \
+	(_PAGE_V | _PAGE_M_KRW | _PAGE_D | _PAGE_G | _PAGE_C_DEV)
+
 /*
  * + Level 1 descriptor (PMD)
  */
diff --git a/arch/nds32/mm/Makefile b/arch/nds32/mm/Makefile
index bd360e4583b5..897ecaf5cf54 100644
--- a/arch/nds32/mm/Makefile
+++ b/arch/nds32/mm/Makefile
@@ -1,6 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-y				:= extable.o tlb.o \
-				   fault.o init.o ioremap.o mmap.o \
+obj-y				:= extable.o tlb.o fault.o init.o mmap.o \
                                    mm-nds32.o cacheflush.o proc.o
 
 obj-$(CONFIG_ALIGNMENT_TRAP)	+= alignment.o
diff --git a/arch/nds32/mm/ioremap.c b/arch/nds32/mm/ioremap.c
deleted file mode 100644
index 690140bb23a2..000000000000
--- a/arch/nds32/mm/ioremap.c
+++ /dev/null
@@ -1,62 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-// Copyright (C) 2005-2017 Andes Technology Corporation
-
-#include <linux/vmalloc.h>
-#include <linux/io.h>
-#include <linux/mm.h>
-#include <asm/pgtable.h>
-
-void __iomem *ioremap(phys_addr_t phys_addr, size_t size);
-
-static void __iomem *__ioremap_caller(phys_addr_t phys_addr, size_t size,
-				      void *caller)
-{
-	struct vm_struct *area;
-	unsigned long addr, offset, last_addr;
-	pgprot_t prot;
-
-	/* Don't allow wraparound or zero size */
-	last_addr = phys_addr + size - 1;
-	if (!size || last_addr < phys_addr)
-		return NULL;
-
-	/*
-	 * Mappings have to be page-aligned
-	 */
-	offset = phys_addr & ~PAGE_MASK;
-	phys_addr &= PAGE_MASK;
-	size = PAGE_ALIGN(last_addr + 1) - phys_addr;
-
-	/*
-	 * Ok, go for it..
-	 */
-	area = get_vm_area_caller(size, VM_IOREMAP, caller);
-	if (!area)
-		return NULL;
-
-	area->phys_addr = phys_addr;
-	addr = (unsigned long)area->addr;
-	prot = __pgprot(_PAGE_V | _PAGE_M_KRW | _PAGE_D |
-			_PAGE_G | _PAGE_C_DEV);
-	if (ioremap_page_range(addr, addr + size, phys_addr, prot)) {
-		vunmap((void *)addr);
-		return NULL;
-	}
-	return (__force void __iomem *)(offset + (char *)addr);
-
-}
-
-void __iomem *ioremap(phys_addr_t phys_addr, size_t size)
-{
-	return __ioremap_caller(phys_addr, size,
-				__builtin_return_address(0));
-}
-
-EXPORT_SYMBOL(ioremap);
-
-void iounmap(volatile void __iomem * addr)
-{
-	vunmap((void *)(PAGE_MASK & (unsigned long)addr));
-}
-
-EXPORT_SYMBOL(iounmap);
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
