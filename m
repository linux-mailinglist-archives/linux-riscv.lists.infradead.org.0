Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A446E81A0
	for <lists+linux-riscv@lfdr.de>; Tue, 29 Oct 2019 07:57:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nz1I+cFvAOV5CKdZkDW094xwBfrFeruicamGdTLrNnY=; b=vAEGVp4gCOh7uC
	thXsmiFo+uO15tze+79YT/usniMErppiCQlRmrGJRXFkWc8oic1ZAOMpMjFQiOv8IvHTxp7mDys0Z
	2xASYEnXYHDNd5uMHUPUbnw4CIk9x6oxk6IqIIH39dMC0cG5GCcunIRUVOhZQ1ffYmT1z3Uh2l61y
	sGbKMkC4KAPnfw5nnHFbs0sM0zFTYcpk2zhIR7CBDL19X3i0S042BRWE0HIUVdDlZUEgm752Nuc9J
	6YHVE7kmZjl0U8j3zp8u5ua59L81uWmSzy+Uysrzrj8em1tQrRimL2eGfYK2ElXE3Xys0oUsP1KAM
	Kt61qH+AbISqcIro4vTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLRr-0005lJ-Vp; Tue, 29 Oct 2019 06:57:47 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLJd-0003v8-1x; Tue, 29 Oct 2019 06:49:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 13/21] m68k: rename __iounmap and mark it static
Date: Tue, 29 Oct 2019 07:48:26 +0100
Message-Id: <20191029064834.23438-14-hch@lst.de>
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

m68k uses __iounmap as the name for an internal helper that is only
used for some CPU types.  Mark it static, give it a better name
and move it around a bit to avoid a forward declaration.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/m68k/include/asm/kmap.h |   1 -
 arch/m68k/mm/kmap.c          | 100 +++++++++++++++++------------------
 2 files changed, 50 insertions(+), 51 deletions(-)

diff --git a/arch/m68k/include/asm/kmap.h b/arch/m68k/include/asm/kmap.h
index 421b6c9c769d..559cb91bede1 100644
--- a/arch/m68k/include/asm/kmap.h
+++ b/arch/m68k/include/asm/kmap.h
@@ -20,7 +20,6 @@ extern void __iomem *__ioremap(unsigned long physaddr, unsigned long size,
 			       int cacheflag);
 #define iounmap iounmap
 extern void iounmap(void __iomem *addr);
-extern void __iounmap(void *addr, unsigned long size);
 
 #define ioremap ioremap
 static inline void __iomem *ioremap(unsigned long physaddr, unsigned long size)
diff --git a/arch/m68k/mm/kmap.c b/arch/m68k/mm/kmap.c
index 40a3b327da07..23f9466aabb5 100644
--- a/arch/m68k/mm/kmap.c
+++ b/arch/m68k/mm/kmap.c
@@ -54,6 +54,55 @@ static inline void free_io_area(void *addr)
 
 static struct vm_struct *iolist;
 
+/*
+ * __free_io_area unmaps nearly everything, so be careful
+ * Currently it doesn't free pointer/page tables anymore but this
+ * wasn't used anyway and might be added later.
+ */
+static void __free_io_area(void *addr, unsigned long size)
+{
+	unsigned long virtaddr = (unsigned long)addr;
+	pgd_t *pgd_dir;
+	pmd_t *pmd_dir;
+	pte_t *pte_dir;
+
+	while ((long)size > 0) {
+		pgd_dir = pgd_offset_k(virtaddr);
+		if (pgd_bad(*pgd_dir)) {
+			printk("iounmap: bad pgd(%08lx)\n", pgd_val(*pgd_dir));
+			pgd_clear(pgd_dir);
+			return;
+		}
+		pmd_dir = pmd_offset(pgd_dir, virtaddr);
+
+		if (CPU_IS_020_OR_030) {
+			int pmd_off = (virtaddr/PTRTREESIZE) & 15;
+			int pmd_type = pmd_dir->pmd[pmd_off] & _DESCTYPE_MASK;
+
+			if (pmd_type == _PAGE_PRESENT) {
+				pmd_dir->pmd[pmd_off] = 0;
+				virtaddr += PTRTREESIZE;
+				size -= PTRTREESIZE;
+				continue;
+			} else if (pmd_type == 0)
+				continue;
+		}
+
+		if (pmd_bad(*pmd_dir)) {
+			printk("iounmap: bad pmd (%08lx)\n", pmd_val(*pmd_dir));
+			pmd_clear(pmd_dir);
+			return;
+		}
+		pte_dir = pte_offset_kernel(pmd_dir, virtaddr);
+
+		pte_val(*pte_dir) = 0;
+		virtaddr += PAGE_SIZE;
+		size -= PAGE_SIZE;
+	}
+
+	flush_tlb_all();
+}
+
 static struct vm_struct *get_io_area(unsigned long size)
 {
 	unsigned long addr;
@@ -90,7 +139,7 @@ static inline void free_io_area(void *addr)
 		if (tmp->addr == addr) {
 			*p = tmp->next;
 			/* remove gap added in get_io_area() */
-			__iounmap(tmp->addr, tmp->size - IO_SIZE);
+			__free_io_area(tmp->addr, tmp->size - IO_SIZE);
 			kfree(tmp);
 			return;
 		}
@@ -249,55 +298,6 @@ void iounmap(void __iomem *addr)
 }
 EXPORT_SYMBOL(iounmap);
 
-/*
- * __iounmap unmaps nearly everything, so be careful
- * Currently it doesn't free pointer/page tables anymore but this
- * wasn't used anyway and might be added later.
- */
-void __iounmap(void *addr, unsigned long size)
-{
-	unsigned long virtaddr = (unsigned long)addr;
-	pgd_t *pgd_dir;
-	pmd_t *pmd_dir;
-	pte_t *pte_dir;
-
-	while ((long)size > 0) {
-		pgd_dir = pgd_offset_k(virtaddr);
-		if (pgd_bad(*pgd_dir)) {
-			printk("iounmap: bad pgd(%08lx)\n", pgd_val(*pgd_dir));
-			pgd_clear(pgd_dir);
-			return;
-		}
-		pmd_dir = pmd_offset(pgd_dir, virtaddr);
-
-		if (CPU_IS_020_OR_030) {
-			int pmd_off = (virtaddr/PTRTREESIZE) & 15;
-			int pmd_type = pmd_dir->pmd[pmd_off] & _DESCTYPE_MASK;
-
-			if (pmd_type == _PAGE_PRESENT) {
-				pmd_dir->pmd[pmd_off] = 0;
-				virtaddr += PTRTREESIZE;
-				size -= PTRTREESIZE;
-				continue;
-			} else if (pmd_type == 0)
-				continue;
-		}
-
-		if (pmd_bad(*pmd_dir)) {
-			printk("iounmap: bad pmd (%08lx)\n", pmd_val(*pmd_dir));
-			pmd_clear(pmd_dir);
-			return;
-		}
-		pte_dir = pte_offset_kernel(pmd_dir, virtaddr);
-
-		pte_val(*pte_dir) = 0;
-		virtaddr += PAGE_SIZE;
-		size -= PAGE_SIZE;
-	}
-
-	flush_tlb_all();
-}
-
 /*
  * Set new cache mode for some kernel address space.
  * The caller must push data for that range itself, if such data may already
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
