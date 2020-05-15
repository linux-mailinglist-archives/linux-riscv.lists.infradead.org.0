Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE321D51F0
	for <lists+linux-riscv@lfdr.de>; Fri, 15 May 2020 16:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMznyGWmUnH+800kT8BMkDZAQHI6XtvfS5jJWouEfDQ=; b=sgYQhEeIL9jDke
	oC/EPCexF3ZANuSkzvSKiagm+3jpcfE/ArjDdao3fLtNFvr6ZFt68pWkyxw+SVcBHfbicVYJQGQhS
	P6ud6Q1cf5AUxE81dvJCLKO0500+HD8L8pe9uH0u244j7Y56z2BCHR4I/pn4tPGT7MTsPKTgX1FPY
	2xUXwsSttrdGt3zVAZCASEGtVJoVacemqxNb9xlpXtxPRf3Rg6a3/u5YPzTntfzReyL6GdC0ublPQ
	y71n7Ej61qW2SjoctBRsxlEmnCCYCbdPchfTE5huPJEK85JZ62N7Ig9Lwj0ZOp3N9gcZvwXfAzdLg
	cxNKE30O9quZ5gjerMcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbWo-0002uy-Pa; Fri, 15 May 2020 14:41:34 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbSZ-000457-1G; Fri, 15 May 2020 14:37:11 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 08/29] alpha: use asm-generic/cacheflush.h
Date: Fri, 15 May 2020 16:36:25 +0200
Message-Id: <20200515143646.3857579-9-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515143646.3857579-1-hch@lst.de>
References: <20200515143646.3857579-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: linux-arch@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, Jessica Yu <jeyu@kernel.org>,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Alpha needs almost no cache flushing routines of its own.  Rely on
asm-generic/cacheflush.h for the defaults.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/alpha/include/asm/cacheflush.h | 28 ++++++----------------------
 1 file changed, 6 insertions(+), 22 deletions(-)

diff --git a/arch/alpha/include/asm/cacheflush.h b/arch/alpha/include/asm/cacheflush.h
index 89128489cb598..636d7ca0d05f6 100644
--- a/arch/alpha/include/asm/cacheflush.h
+++ b/arch/alpha/include/asm/cacheflush.h
@@ -4,19 +4,6 @@
 
 #include <linux/mm.h>
 
-/* Caches aren't brain-dead on the Alpha. */
-#define flush_cache_all()			do { } while (0)
-#define flush_cache_mm(mm)			do { } while (0)
-#define flush_cache_dup_mm(mm)			do { } while (0)
-#define flush_cache_range(vma, start, end)	do { } while (0)
-#define flush_cache_page(vma, vmaddr, pfn)	do { } while (0)
-#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 0
-#define flush_dcache_page(page)			do { } while (0)
-#define flush_dcache_mmap_lock(mapping)		do { } while (0)
-#define flush_dcache_mmap_unlock(mapping)	do { } while (0)
-#define flush_cache_vmap(start, end)		do { } while (0)
-#define flush_cache_vunmap(start, end)		do { } while (0)
-
 /* Note that the following two definitions are _highly_ dependent
    on the contexts in which they are used in the kernel.  I personally
    think it is criminal how loosely defined these macros are.  */
@@ -59,20 +46,17 @@ flush_icache_user_range(struct vm_area_struct *vma, struct page *page,
 			mm->context[smp_processor_id()] = 0;
 	}
 }
-#else
+#define flush_icache_user_range flush_icache_user_range
+#else /* CONFIG_SMP */
 extern void flush_icache_user_range(struct vm_area_struct *vma,
 		struct page *page, unsigned long addr, int len);
-#endif
+#define flush_icache_user_range flush_icache_user_range
+#endif /* CONFIG_SMP */
 
 /* This is used only in __do_fault and do_swap_page.  */
 #define flush_icache_page(vma, page) \
-  flush_icache_user_range((vma), (page), 0, 0)
+	flush_icache_user_range((vma), (page), 0, 0)
 
-#define copy_to_user_page(vma, page, vaddr, dst, src, len) \
-do { memcpy(dst, src, len); \
-     flush_icache_user_range(vma, page, vaddr, len); \
-} while (0)
-#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
-	memcpy(dst, src, len)
+#include <asm-generic/cacheflush.h>
 
 #endif /* _ALPHA_CACHEFLUSH_H */
-- 
2.26.2


