Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5816FA58E3
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Sep 2019 16:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAn+iDmzSkit6ffUu1bqTJARWn2B1x7sRWTfA8iHeGo=; b=jS/lGAR3er1Pqd
	HAaxZPDOheY0Vkyl1NaZggreSCoZLzpsI5pfHT6K+NDwTB25veA141uTjD++zrKQwVyGqe724c4dI
	BHU7PyYqzakEz1RSDmWBnlF6RNGLTdHy+LZnIjYsjlx5LHDRdn0MBD+OH4iCgvLu5+NowctmJ8SH3
	nFnLoZV6r1GH0npZotCqErbNH9dpowl2Snmi+pyUg8Tkgf9r+FvVes4DS0fcOeWh8EMmrh4LwEUW+
	fL3y1N2VsFCGXNJcqiFVYeyvuUjQxMj05kRvc6oh3nGHOQZXBqbpAQ2PRQTBHZPax3pwnjx50Qtt2
	rBToNQvMokxmsXt0HAGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4n42-0002Gx-Kj; Mon, 02 Sep 2019 14:12:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4n2o-0000xu-41; Mon, 02 Sep 2019 14:11:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 75BC9AD78;
 Mon,  2 Sep 2019 14:10:55 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>
Subject: [PATCH v3 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
Date: Mon,  2 Sep 2019 16:10:41 +0200
Message-Id: <20190902141043.27210-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902141043.27210-1-nsaenzjulienne@suse.de>
References: <20190902141043.27210-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_071058_446779_A695BD8C 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, linux-kernel@vger.kernel.org, mbrugger@suse.com,
 linux-rpi-kernel@lists.infradead.org, phill@raspberrypi.org,
 robin.murphy@arm.com, nsaenzjulienne@suse.de, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

So far all arm64 devices have supported 32 bit DMA masks for their
peripherals. This is not true anymore for the Raspberry Pi 4 as most of
it's peripherals can only address the first GB of memory on a total of
up to 4 GB.

This goes against ZONE_DMA32's intent, as it's expected for ZONE_DMA32
to be addressable with a 32 bit mask. So it was decided to re-introduce
ZONE_DMA in arm64.

ZONE_DMA will contain the lower 1G of memory, which is currently the
memory area addressable by any peripheral on an arm64 device.
ZONE_DMA32 will contain the rest of the 32 bit addressable memory.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes in v3:
- Used fixed size ZONE_DMA
- Fix check befor swiotlb_init()

Changes in v2:
- Update comment to reflect new zones split
- ZONE_DMA will never be left empty

 arch/arm64/Kconfig            |  4 +++
 arch/arm64/include/asm/page.h |  2 ++
 arch/arm64/mm/init.c          | 51 ++++++++++++++++++++++++++++-------
 3 files changed, 47 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..a9fd71d3bc8e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -266,6 +266,10 @@ config GENERIC_CSUM
 config GENERIC_CALIBRATE_DELAY
 	def_bool y
 
+config ZONE_DMA
+	bool "Support DMA zone" if EXPERT
+	default y
+
 config ZONE_DMA32
 	bool "Support DMA32 zone" if EXPERT
 	default y
diff --git a/arch/arm64/include/asm/page.h b/arch/arm64/include/asm/page.h
index d39ddb258a04..7b8c98830101 100644
--- a/arch/arm64/include/asm/page.h
+++ b/arch/arm64/include/asm/page.h
@@ -38,4 +38,6 @@ extern int pfn_valid(unsigned long);
 
 #include <asm-generic/getorder.h>
 
+#define ARCH_ZONE_DMA_BITS 30
+
 #endif
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 8956c22634dd..f02a4945aeac 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -50,6 +50,13 @@
 s64 memstart_addr __ro_after_init = -1;
 EXPORT_SYMBOL(memstart_addr);
 
+/*
+ * We create both ZONE_DMA and ZONE_DMA32. ZONE_DMA covers the first 1G of
+ * memory as some devices, namely the Raspberry Pi 4, have peripherals with
+ * this limited view of the memory. ZONE_DMA32 will cover the rest of the 32
+ * bit addressable memory area.
+ */
+phys_addr_t arm64_dma_phys_limit __ro_after_init;
 phys_addr_t arm64_dma32_phys_limit __ro_after_init;
 
 #ifdef CONFIG_KEXEC_CORE
@@ -164,9 +171,9 @@ static void __init reserve_elfcorehdr(void)
 }
 #endif /* CONFIG_CRASH_DUMP */
 /*
- * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(32)). It
- * currently assumes that for memory starting above 4G, 32-bit devices will
- * use a DMA offset.
+ * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(32)) and
+ * ZONE_DMA (DMA_BIT_MASK(30)) respectively. It currently assumes that for
+ * memory starting above 4G, 32-bit devices will use a DMA offset.
  */
 static phys_addr_t __init max_zone_dma32_phys(void)
 {
@@ -174,12 +181,23 @@ static phys_addr_t __init max_zone_dma32_phys(void)
 	return min(offset + (1ULL << 32), memblock_end_of_DRAM());
 }
 
+static phys_addr_t __init max_zone_dma_phys(void)
+{
+	phys_addr_t offset = memblock_start_of_DRAM() & GENMASK_ULL(63, 32);
+
+	return min(offset + (1ULL << ARCH_ZONE_DMA_BITS),
+		   memblock_end_of_DRAM());
+}
+
 #ifdef CONFIG_NUMA
 
 static void __init zone_sizes_init(unsigned long min, unsigned long max)
 {
 	unsigned long max_zone_pfns[MAX_NR_ZONES]  = {0};
 
+#ifdef CONFIG_ZONE_DMA
+	max_zone_pfns[ZONE_DMA] = PFN_DOWN(arm64_dma_phys_limit);
+#endif
 #ifdef CONFIG_ZONE_DMA32
 	max_zone_pfns[ZONE_DMA32] = PFN_DOWN(arm64_dma32_phys_limit);
 #endif
@@ -195,13 +213,17 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 	struct memblock_region *reg;
 	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
 	unsigned long max_dma32 = min;
+	unsigned long max_dma = min;
 
 	memset(zone_size, 0, sizeof(zone_size));
 
-	/* 4GB maximum for 32-bit only capable devices */
+#ifdef CONFIG_ZONE_DMA
+	max_dma = PFN_DOWN(arm64_dma_phys_limit);
+	zone_size[ZONE_DMA] = max_dma - min;
+#endif
 #ifdef CONFIG_ZONE_DMA32
 	max_dma32 = PFN_DOWN(arm64_dma32_phys_limit);
-	zone_size[ZONE_DMA32] = max_dma32 - min;
+	zone_size[ZONE_DMA32] = max_dma32 - max_dma;
 #endif
 	zone_size[ZONE_NORMAL] = max - max_dma32;
 
@@ -213,11 +235,17 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 
 		if (start >= max)
 			continue;
-
+#ifdef CONFIG_ZONE_DMA
+		if (start < max_dma) {
+			unsigned long dma_end = min_not_zero(end, max_dma);
+			zhole_size[ZONE_DMA] -= dma_end - start;
+		}
+#endif
 #ifdef CONFIG_ZONE_DMA32
 		if (start < max_dma32) {
-			unsigned long dma_end = min(end, max_dma32);
-			zhole_size[ZONE_DMA32] -= dma_end - start;
+			unsigned long dma32_end = min(end, max_dma32);
+			unsigned long dma32_start = max(start, max_dma);
+			zhole_size[ZONE_DMA32] -= dma32_end - dma32_start;
 		}
 #endif
 		if (end > max_dma32) {
@@ -405,7 +433,9 @@ void __init arm64_memblock_init(void)
 
 	early_init_fdt_scan_reserved_mem();
 
-	/* 4GB maximum for 32-bit only capable devices */
+	if (IS_ENABLED(CONFIG_ZONE_DMA))
+		arm64_dma_phys_limit = max_zone_dma_phys();
+
 	if (IS_ENABLED(CONFIG_ZONE_DMA32))
 		arm64_dma32_phys_limit = max_zone_dma32_phys();
 	else
@@ -417,7 +447,7 @@ void __init arm64_memblock_init(void)
 
 	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
 
-	dma_contiguous_reserve(arm64_dma32_phys_limit);
+	dma_contiguous_reserve(arm64_dma_phys_limit ? : arm64_dma32_phys_limit);
 }
 
 void __init bootmem_init(void)
@@ -521,6 +551,7 @@ static void __init free_unused_memmap(void)
 void __init mem_init(void)
 {
 	if (swiotlb_force == SWIOTLB_FORCE ||
+	    max_pfn > (arm64_dma_phys_limit >> PAGE_SHIFT) ||
 	    max_pfn > (arm64_dma32_phys_limit >> PAGE_SHIFT))
 		swiotlb_init(1);
 	else
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
