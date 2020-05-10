Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4651CC91C
	for <lists+linux-riscv@lfdr.de>; Sun, 10 May 2020 10:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvHE8T+77q41/s5pbmeeFx20Yc/7Q0qwMuv6xWW3l6I=; b=ZaMjbtM2ui+djB
	GCl9L2KcfKwIxhZ/evDxpUZM4uXmrS6DsVTCIBa5FMDQUAOYrGnPzt61KwhXU0iXUZuNfKTBJrV1/
	azZw3TsRoAD4rO2KTpra6TdXzvSt0MgAn56xdDLdN3mgSuuZPJlD4m/6tV+slzorA5AZIZexFVfcR
	pjMDSgQaZn8VD/8s6+/32uzsHLPQ+6ap05HCFs78gvEZDpA4iXKMzpliLlKskHVgxm0oiIbkci33V
	l7dByee5SAPx0dzNNER8MyhEXSBJ7QRXVcDnCP5MSb90QSORVVFOCsdRr+TUnVYcs5VvKMCIJCY/C
	ifkZ/7/H8zJJSVNcD1Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXguZ-0001Mz-Vs; Sun, 10 May 2020 08:02:12 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgon-0000fq-HE; Sun, 10 May 2020 07:56:13 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 19/31] riscv: use asm-generic/cacheflush.h
Date: Sun, 10 May 2020 09:54:58 +0200
Message-Id: <20200510075510.987823-20-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200510075510.987823-1-hch@lst.de>
References: <20200510075510.987823-1-hch@lst.de>
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

RISC-V needs almost no cache flushing routines of its own.  Rely on
asm-generic/cacheflush.h for the defaults.

Also remove the pointless __KERNEL__ ifdef while we're at it.
---
 arch/riscv/include/asm/cacheflush.h | 62 ++---------------------------
 1 file changed, 3 insertions(+), 59 deletions(-)

diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
index c8677c75f82cb..a167b4fbdf007 100644
--- a/arch/riscv/include/asm/cacheflush.h
+++ b/arch/riscv/include/asm/cacheflush.h
@@ -8,65 +8,6 @@
 
 #include <linux/mm.h>
 
-#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 0
-
-/*
- * The cache doesn't need to be flushed when TLB entries change when
- * the cache is mapped to physical memory, not virtual memory
- */
-static inline void flush_cache_all(void)
-{
-}
-
-static inline void flush_cache_mm(struct mm_struct *mm)
-{
-}
-
-static inline void flush_cache_dup_mm(struct mm_struct *mm)
-{
-}
-
-static inline void flush_cache_range(struct vm_area_struct *vma,
-				     unsigned long start,
-				     unsigned long end)
-{
-}
-
-static inline void flush_cache_page(struct vm_area_struct *vma,
-				    unsigned long vmaddr,
-				    unsigned long pfn)
-{
-}
-
-static inline void flush_dcache_mmap_lock(struct address_space *mapping)
-{
-}
-
-static inline void flush_dcache_mmap_unlock(struct address_space *mapping)
-{
-}
-
-static inline void flush_icache_page(struct vm_area_struct *vma,
-				     struct page *page)
-{
-}
-
-static inline void flush_cache_vmap(unsigned long start, unsigned long end)
-{
-}
-
-static inline void flush_cache_vunmap(unsigned long start, unsigned long end)
-{
-}
-
-#define copy_to_user_page(vma, page, vaddr, dst, src, len) \
-	do { \
-		memcpy(dst, src, len); \
-		flush_icache_user_range(vma, page, vaddr, len); \
-	} while (0)
-#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
-	memcpy(dst, src, len)
-
 static inline void local_flush_icache_all(void)
 {
 	asm volatile ("fence.i" ::: "memory");
@@ -79,6 +20,7 @@ static inline void flush_dcache_page(struct page *page)
 	if (test_bit(PG_dcache_clean, &page->flags))
 		clear_bit(PG_dcache_clean, &page->flags);
 }
+#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 1
 
 /*
  * RISC-V doesn't have an instruction to flush parts of the instruction cache,
@@ -105,4 +47,6 @@ void flush_icache_mm(struct mm_struct *mm, bool local);
 #define SYS_RISCV_FLUSH_ICACHE_LOCAL 1UL
 #define SYS_RISCV_FLUSH_ICACHE_ALL   (SYS_RISCV_FLUSH_ICACHE_LOCAL)
 
+#include <asm-generic/cacheflush.h>
+
 #endif /* _ASM_RISCV_CACHEFLUSH_H */
-- 
2.26.2


