Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893E9DB553
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7o7H9hXR9ZcPMPFxYGdws7JfjkJyG0e54DDq/sKb/Y=; b=jyIiG6r+2fBTRa
	tTZX7eg3L9cNn6ZNdUP9rahLKM919ySsnTcC5Z/119U9OYlVRGADuKEu7ZvT/kHg8qvJXvpmqhWWc
	AqbkhbsJpgnEe8LkKiTWV2U6chW8iDdmA4XVMyLrz/3yBdlMupWqzq2CCf67svZ3bGcJYZlnu1k3J
	6otqJC1ogxvFjyup1irPauNBzTQQW6+0uK52MH69Qfc8VFsztVj+sTbGDnExgkRl0q+aRpZuCi/3Q
	lF/IOCVJPO4hdo/eAfILcRnltNViKlLQ5GMlN7sqBDjFxoIL2zX2fVS7TV0dVG32N0tGTPON9zIUL
	aTsBxIPeJS2KbPyvzqBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLA3z-0003wr-Ii; Thu, 17 Oct 2019 17:59:51 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9rR-0006Oi-4E; Thu, 17 Oct 2019 17:46:53 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 20/21] csky: remove ioremap_cache
Date: Thu, 17 Oct 2019 19:45:53 +0200
Message-Id: <20191017174554.29840-21-hch@lst.de>
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

No driver that can be used on csky uses ioremap_cache, and this
interface has been deprecated in favor of memremap.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/csky/include/asm/io.h | 2 --
 arch/csky/mm/ioremap.c     | 7 -------
 2 files changed, 9 deletions(-)

diff --git a/arch/csky/include/asm/io.h b/arch/csky/include/asm/io.h
index a4b9fb616faa..f572605d5ad5 100644
--- a/arch/csky/include/asm/io.h
+++ b/arch/csky/include/asm/io.h
@@ -36,13 +36,11 @@
 /*
  * I/O memory mapping functions.
  */
-extern void __iomem *ioremap_cache(phys_addr_t addr, size_t size);
 extern void __iomem *__ioremap(phys_addr_t addr, size_t size, pgprot_t prot);
 extern void iounmap(void *addr);
 
 #define ioremap(addr, size)		__ioremap((addr), (size), pgprot_noncached(PAGE_KERNEL))
 #define ioremap_wc(addr, size)		__ioremap((addr), (size), pgprot_writecombine(PAGE_KERNEL))
-#define ioremap_cache			ioremap_cache
 
 #include <asm-generic/io.h>
 
diff --git a/arch/csky/mm/ioremap.c b/arch/csky/mm/ioremap.c
index e13cd3497628..ae78256a56fd 100644
--- a/arch/csky/mm/ioremap.c
+++ b/arch/csky/mm/ioremap.c
@@ -44,13 +44,6 @@ void __iomem *__ioremap(phys_addr_t phys_addr, size_t size, pgprot_t prot)
 }
 EXPORT_SYMBOL(__ioremap);
 
-void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size)
-{
-	return __ioremap_caller(phys_addr, size, PAGE_KERNEL,
-				__builtin_return_address(0));
-}
-EXPORT_SYMBOL(ioremap_cache);
-
 void iounmap(void __iomem *addr)
 {
 	vunmap((void *)((unsigned long)addr & PAGE_MASK));
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
