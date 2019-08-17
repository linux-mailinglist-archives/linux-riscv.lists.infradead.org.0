Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEB990E19
	for <lists+linux-riscv@lfdr.de>; Sat, 17 Aug 2019 09:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Dj0homeTdjpYReIzVZgSafV5pFwpCj713ZR1itmrc0=; b=VkijbLkYiSHkbE
	rkNFlLQgwk7F7JbhkULrhN5IsSYVr3EFTZf15LcsZkslEYmRZSt1tFNTkiN/bTIjSAjups9zOM8L0
	B74cb4S5lGVE9divue+jXbbmUsZFsWgJWSitiYGhBFmuZM/sZYOsGdTFr3QDKsS34jkWhCeDn8QKf
	PvHWvp5aTuUhP+9OZd7DjExKcdUyyhpoZuxGr2faxxVPUhmoqSoNgTKAKeB08Bc5i763Tm192XTcH
	HJNThyrE4ObYCKdzMVDtsi3yurXVOnvOnWWmblhJnGId8oah8FmLXj+HyN7HHSm+T+w1ljwlF0LZU
	65lvt0Vop2eo0Q29t+Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytPz-0003pj-H5; Sat, 17 Aug 2019 07:46:31 +0000
Received: from 089144199030.atnat0008.highway.a1.net ([89.144.199.30]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytPg-0003dW-GT; Sat, 17 Aug 2019 07:46:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 05/26] openrisc: map as uncached in ioremap
Date: Sat, 17 Aug 2019 09:32:32 +0200
Message-Id: <20190817073253.27819-6-hch@lst.de>
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

Openrisc is the only architecture not mapping ioremap as uncached,
which has been the default since the Linux 2.6.x days.  Switch it
over to implement uncached semantics by default.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/openrisc/include/asm/io.h      | 20 +++-----------------
 arch/openrisc/include/asm/pgtable.h |  2 +-
 arch/openrisc/mm/ioremap.c          |  8 ++++----
 3 files changed, 8 insertions(+), 22 deletions(-)

diff --git a/arch/openrisc/include/asm/io.h b/arch/openrisc/include/asm/io.h
index 06a710757789..5b81a96ab85e 100644
--- a/arch/openrisc/include/asm/io.h
+++ b/arch/openrisc/include/asm/io.h
@@ -25,25 +25,11 @@
 #define PIO_OFFSET		0
 #define PIO_MASK		0
 
-#define ioremap_nocache ioremap_nocache
+#define ioremap_nocache ioremap
 #include <asm-generic/io.h>
 #include <asm/pgtable.h>
 
-extern void __iomem *__ioremap(phys_addr_t offset, unsigned long size,
-				pgprot_t prot);
-
-static inline void __iomem *ioremap(phys_addr_t offset, size_t size)
-{
-	return __ioremap(offset, size, PAGE_KERNEL);
-}
-
-/* #define _PAGE_CI       0x002 */
-static inline void __iomem *ioremap_nocache(phys_addr_t offset,
-					     unsigned long size)
-{
-	return __ioremap(offset, size,
-			 __pgprot(pgprot_val(PAGE_KERNEL) | _PAGE_CI));
-}
-
+void __iomem *ioremap(phys_addr_t offset, unsigned long size);
 extern void iounmap(void *addr);
+
 #endif
diff --git a/arch/openrisc/include/asm/pgtable.h b/arch/openrisc/include/asm/pgtable.h
index 497fd908a4c4..2fe9ff5b5d6f 100644
--- a/arch/openrisc/include/asm/pgtable.h
+++ b/arch/openrisc/include/asm/pgtable.h
@@ -97,7 +97,7 @@ extern void paging_init(void);
 /* Define some higher level generic page attributes.
  *
  * If you change _PAGE_CI definition be sure to change it in
- * io.h for ioremap_nocache() too.
+ * io.h for ioremap() too.
  */
 
 /*
diff --git a/arch/openrisc/mm/ioremap.c b/arch/openrisc/mm/ioremap.c
index e0c551ca0891..8f8e97f7eac9 100644
--- a/arch/openrisc/mm/ioremap.c
+++ b/arch/openrisc/mm/ioremap.c
@@ -34,8 +34,7 @@ static unsigned int fixmaps_used __initdata;
  * have to convert them into an offset in a page-aligned mapping, but the
  * caller shouldn't need to know that small detail.
  */
-void __iomem *__ref
-__ioremap(phys_addr_t addr, unsigned long size, pgprot_t prot)
+void __iomem *__ref ioremap(phys_addr_t addr, unsigned long size)
 {
 	phys_addr_t p;
 	unsigned long v;
@@ -66,7 +65,8 @@ __ioremap(phys_addr_t addr, unsigned long size, pgprot_t prot)
 		fixmaps_used += (size >> PAGE_SHIFT);
 	}
 
-	if (ioremap_page_range(v, v + size, p, prot)) {
+	if (ioremap_page_range(v, v + size, p,
+			__pgprot(pgprot_val(PAGE_KERNEL) | _PAGE_CI))) {
 		if (likely(mem_init_done))
 			vfree(area->addr);
 		else
@@ -76,7 +76,7 @@ __ioremap(phys_addr_t addr, unsigned long size, pgprot_t prot)
 
 	return (void __iomem *)(offset + (char *)v);
 }
-EXPORT_SYMBOL(__ioremap);
+EXPORT_SYMBOL(ioremap);
 
 void iounmap(void *addr)
 {
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
