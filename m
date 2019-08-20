Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BB496399
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 17:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsK2wmFWGXQVrFJglYJKFR1aOm26YjYLEAV8fZORgXw=; b=k3qF6H7MWWGESO
	h3grgsHgVYuNFzzR0xRzihbtY/xIK8wHLLTSeLpF298Qlz4XFfb8LYL6w8H/K7I6PeZUAXbRj4r3B
	B1qpHLoTsUJiOqvjUrvHkmKxazGtNYp6+pEBpAwvf1vTrVFu6x2kV4oZB77VWluVvk6jZXRSHdYHu
	n4IP+ndILEQrF38jFIzbqPpXVidh69IqBNZWT/SH6FLrltW3b8Z71GHmAqlku4yEhACjM5PRenDBW
	yZ2JmrEtH0o3RgY8B2WHGW9G8bokOxmyTQszGWu2dWy/Uw3CmckWx2jkcW9t4ReKuESfK0agfu8UH
	xRXk8mxoPEfZIn7mIKIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05dw-0000mv-W3; Tue, 20 Aug 2019 15:01:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05at-00058R-FI; Tue, 20 Aug 2019 14:58:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F00BBAE42;
 Tue, 20 Aug 2019 14:58:41 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH v2 09/11] dma-direct: turn ARCH_ZONE_DMA_BITS into a variable
Date: Tue, 20 Aug 2019 16:58:17 +0200
Message-Id: <20190820145821.27214-10-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820145821.27214-1-nsaenzjulienne@suse.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075843_820314_7EDC00BC 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: phill@raspberryi.org, linux-s390@vger.kernel.org, f.fainelli@gmail.com,
 Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, frowand.list@gmail.com,
 linuxppc-dev@lists.ozlabs.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org, eric@anholt.net, mbrugger@suse.com,
 Paul Mackerras <paulus@samba.org>, linux-rpi-kernel@lists.infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, akpm@linux-foundation.org,
 will@kernel.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Some architectures, notably arm64, are interested in tweaking this
depending on their runtime dma addressing limitations.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes in v2:
- Rename new variable to zone_dma_bits
- Update comment with Christoph's suggestion
- Remove old powerpc comment

 arch/powerpc/include/asm/page.h |  9 ---------
 arch/powerpc/mm/mem.c           | 16 +++++++++++-----
 arch/s390/include/asm/page.h    |  2 --
 arch/s390/mm/init.c             |  1 +
 include/linux/dma-direct.h      |  2 ++
 kernel/dma/direct.c             | 13 ++++++-------
 6 files changed, 20 insertions(+), 23 deletions(-)

diff --git a/arch/powerpc/include/asm/page.h b/arch/powerpc/include/asm/page.h
index 0d52f57fca04..73668a21ae78 100644
--- a/arch/powerpc/include/asm/page.h
+++ b/arch/powerpc/include/asm/page.h
@@ -319,13 +319,4 @@ struct vm_area_struct;
 #endif /* __ASSEMBLY__ */
 #include <asm/slice.h>
 
-/*
- * Allow 30-bit DMA for very limited Broadcom wifi chips on many powerbooks.
- */
-#ifdef CONFIG_PPC32
-#define ARCH_ZONE_DMA_BITS 30
-#else
-#define ARCH_ZONE_DMA_BITS 31
-#endif
-
 #endif /* _ASM_POWERPC_PAGE_H */
diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index 9191a66b3bc5..2a69f87585df 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -31,6 +31,7 @@
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
 #include <linux/memremap.h>
+#include <linux/dma-direct.h>
 
 #include <asm/pgalloc.h>
 #include <asm/prom.h>
@@ -201,10 +202,10 @@ static int __init mark_nonram_nosave(void)
  * everything else. GFP_DMA32 page allocations automatically fall back to
  * ZONE_DMA.
  *
- * By using 31-bit unconditionally, we can exploit ARCH_ZONE_DMA_BITS to
- * inform the generic DMA mapping code.  32-bit only devices (if not handled
- * by an IOMMU anyway) will take a first dip into ZONE_NORMAL and get
- * otherwise served by ZONE_DMA.
+ * By using 31-bit unconditionally, we can exploit zone_dma_bits to inform the
+ * generic DMA mapping code.  32-bit only devices (if not handled by an IOMMU
+ * anyway) will take a first dip into ZONE_NORMAL and get otherwise served by
+ * ZONE_DMA.
  */
 static unsigned long max_zone_pfns[MAX_NR_ZONES];
 
@@ -237,9 +238,14 @@ void __init paging_init(void)
 	printk(KERN_DEBUG "Memory hole size: %ldMB\n",
 	       (long int)((top_of_ram - total_ram) >> 20));
 
+	if (IS_ENABLED(CONFIG_PPC32))
+		zone_dma_bits = 30;
+	else
+		zone_dma_bits = 31;
+
 #ifdef CONFIG_ZONE_DMA
 	max_zone_pfns[ZONE_DMA]	= min(max_low_pfn,
-				      1UL << (ARCH_ZONE_DMA_BITS - PAGE_SHIFT));
+				      1UL << (zone_dma_bits - PAGE_SHIFT));
 #endif
 	max_zone_pfns[ZONE_NORMAL] = max_low_pfn;
 #ifdef CONFIG_HIGHMEM
diff --git a/arch/s390/include/asm/page.h b/arch/s390/include/asm/page.h
index 823578c6b9e2..a4d38092530a 100644
--- a/arch/s390/include/asm/page.h
+++ b/arch/s390/include/asm/page.h
@@ -177,8 +177,6 @@ static inline int devmem_is_allowed(unsigned long pfn)
 #define VM_DATA_DEFAULT_FLAGS	(VM_READ | VM_WRITE | \
 				 VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC)
 
-#define ARCH_ZONE_DMA_BITS	31
-
 #include <asm-generic/memory_model.h>
 #include <asm-generic/getorder.h>
 
diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
index 20340a03ad90..bd98465b8b9f 100644
--- a/arch/s390/mm/init.c
+++ b/arch/s390/mm/init.c
@@ -118,6 +118,7 @@ void __init paging_init(void)
 
 	sparse_memory_present_with_active_regions(MAX_NUMNODES);
 	sparse_init();
+	zone_dma_bits = 31;
 	memset(max_zone_pfns, 0, sizeof(max_zone_pfns));
 	max_zone_pfns[ZONE_DMA] = PFN_DOWN(MAX_DMA_ADDRESS);
 	max_zone_pfns[ZONE_NORMAL] = max_low_pfn;
diff --git a/include/linux/dma-direct.h b/include/linux/dma-direct.h
index adf993a3bd58..d03af3605460 100644
--- a/include/linux/dma-direct.h
+++ b/include/linux/dma-direct.h
@@ -5,6 +5,8 @@
 #include <linux/dma-mapping.h>
 #include <linux/mem_encrypt.h>
 
+extern unsigned int zone_dma_bits;
+
 #ifdef CONFIG_ARCH_HAS_PHYS_TO_DMA
 #include <asm/dma-direct.h>
 #else
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 795c9b095d75..b23cd65f26e0 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -16,12 +16,11 @@
 #include <linux/swiotlb.h>
 
 /*
- * Most architectures use ZONE_DMA for the first 16 Megabytes, but
- * some use it for entirely different regions:
+ * Most architectures use ZONE_DMA for the first 16 Megabytes, but some use it
+ * it for entirely different regions. In that case the arch code needs to
+ * override the variable below for dma-direct to work properly.
  */
-#ifndef ARCH_ZONE_DMA_BITS
-#define ARCH_ZONE_DMA_BITS 24
-#endif
+unsigned int zone_dma_bits __ro_after_init = 24;
 
 static void report_addr(struct device *dev, dma_addr_t dma_addr, size_t size)
 {
@@ -69,7 +68,7 @@ static gfp_t __dma_direct_optimal_gfp_mask(struct device *dev, u64 dma_mask,
 	 * Note that GFP_DMA32 and GFP_DMA are no ops without the corresponding
 	 * zones.
 	 */
-	if (*phys_mask <= DMA_BIT_MASK(ARCH_ZONE_DMA_BITS))
+	if (*phys_mask <= DMA_BIT_MASK(zone_dma_bits))
 		return GFP_DMA;
 	if (*phys_mask <= DMA_BIT_MASK(32))
 		return GFP_DMA32;
@@ -387,7 +386,7 @@ int dma_direct_supported(struct device *dev, u64 mask)
 	u64 min_mask;
 
 	if (IS_ENABLED(CONFIG_ZONE_DMA))
-		min_mask = DMA_BIT_MASK(ARCH_ZONE_DMA_BITS);
+		min_mask = DMA_BIT_MASK(zone_dma_bits);
 	else
 		min_mask = DMA_BIT_MASK(32);
 
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
