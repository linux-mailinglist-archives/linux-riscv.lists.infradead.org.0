Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5CE1D5213
	for <lists+linux-riscv@lfdr.de>; Fri, 15 May 2020 16:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQS44H8EzM8k3vQYjLlTfkfNkLQiGixe7Bw6b6gouAo=; b=Sfn34Qqwxg/j1D
	ekATMOhQYUWRMTxCkMfvnr8eX5fWZBPHm4eAsZKmkhkA4i4xeFanNmKl5W6mGs1+63oU8aKONj3ju
	aJQ1+n8TmprSpAxtm34CaSVl1KLn9SRf4dKN9j/Tw9BAtQDadUrwTFU1m1TKdYEj70MTTjfclFLo2
	gXo5S1YISbpObG96cf39hE57tNJVZag2TRc9PwzRh+hA7kgOwhvke7VTr/EtkZXvNI7nHqLuEqtsS
	H3YPaGCU4IjJA+4Iy7DPA539zCXcB3DBDO7u8gEvNV2O0/LIrtMadQQG+23mHFQRf5EpWE+plmhqe
	bJMpl7whcLJbA90+YPTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbYR-00052Q-Fw; Fri, 15 May 2020 14:43:15 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbSu-0004ga-GD; Fri, 15 May 2020 14:37:33 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 15/29] openrisc: use asm-generic/cacheflush.h
Date: Fri, 15 May 2020 16:36:32 +0200
Message-Id: <20200515143646.3857579-16-hch@lst.de>
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

OpenRISC needs almost no cache flushing routines of its own.  Rely on
asm-generic/cacheflush.h for the defaults.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/openrisc/include/asm/cacheflush.h | 31 +++++---------------------
 1 file changed, 6 insertions(+), 25 deletions(-)

diff --git a/arch/openrisc/include/asm/cacheflush.h b/arch/openrisc/include/asm/cacheflush.h
index 79d5d7753fe4b..74d1fce4e8839 100644
--- a/arch/openrisc/include/asm/cacheflush.h
+++ b/arch/openrisc/include/asm/cacheflush.h
@@ -62,31 +62,12 @@ static inline void flush_dcache_page(struct page *page)
 	clear_bit(PG_dc_clean, &page->flags);
 }
 
-/*
- * Other interfaces are not required since we do not have virtually
- * indexed or tagged caches. So we can use the default here.
- */
-#define flush_cache_all()				do { } while (0)
-#define flush_cache_mm(mm)				do { } while (0)
-#define flush_cache_dup_mm(mm)				do { } while (0)
-#define flush_cache_range(vma, start, end)		do { } while (0)
-#define flush_cache_page(vma, vmaddr, pfn)		do { } while (0)
-#define flush_dcache_mmap_lock(mapping)			do { } while (0)
-#define flush_dcache_mmap_unlock(mapping)		do { } while (0)
-#define flush_icache_range(start, end)			do { } while (0)
-#define flush_icache_page(vma, pg)			do { } while (0)
-#define flush_icache_user_range(vma, pg, adr, len)	do { } while (0)
-#define flush_cache_vmap(start, end)			do { } while (0)
-#define flush_cache_vunmap(start, end)			do { } while (0)
-
-#define copy_to_user_page(vma, page, vaddr, dst, src, len)           \
-	do {                                                         \
-		memcpy(dst, src, len);                               \
-		if (vma->vm_flags & VM_EXEC)                         \
-			sync_icache_dcache(page);                    \
-	} while (0)
+#define flush_icache_user_range(vma, page, addr, len)	\
+do {							\
+	if (vma->vm_flags & VM_EXEC)			\
+		sync_icache_dcache(page);		\
+} while (0)
 
-#define copy_from_user_page(vma, page, vaddr, dst, src, len)         \
-	memcpy(dst, src, len)
+#include <asm-generic/cacheflush.h>
 
 #endif /* __ASM_CACHEFLUSH_H */
-- 
2.26.2


