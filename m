Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C068696381
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 16:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dsCxmwjvt1Kw1CBW56YKsqkNIHwRI2XCru/WLUijFM=; b=sLZCz8XdRnk7LL
	FwNAc9eVVeYMD4fYbhsE0L0shyG2+plua79/PeEbhvKi89qS6TrYrlGqLZ9OkEb/LHIL7QUDpIhCM
	6LHfUNbq+oUWna+cDXrp4WalsnApkzOm1dEhm8BFISXzIC6EUW30aUMNFoOL24qZjOHvwqSzczR87
	l1pE7tsxTAbAywQ1LDcH7TgUIc1G/iKdc2dWDViqj+pLFXxTwWJ/p1pf2rWDvN3JV6nA9Yss957/i
	yxx4Onml6QwG/K4rDbCE6PsmgUS+OsZAtAgdtJdojST8Nlo4W+A+tY8zAFyng3Nn7zUcYb1yE7+oa
	+KTpup4KNImhjTDAWj8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05bl-0005xP-81; Tue, 20 Aug 2019 14:59:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05ai-0004yQ-Sg; Tue, 20 Aug 2019 14:58:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8A0C7AE6D;
 Tue, 20 Aug 2019 14:58:31 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/11] arm: use generic dma_zone_size
Date: Tue, 20 Aug 2019 16:58:10 +0200
Message-Id: <20190820145821.27214-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820145821.27214-1-nsaenzjulienne@suse.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075833_072711_E04938F9 
X-CRM114-Status: GOOD (  10.68  )
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
Cc: phill@raspberryi.org, f.fainelli@gmail.com, frowand.list@gmail.com,
 Russell King <linux@armlinux.org.uk>, eric@anholt.net, mbrugger@suse.com,
 linux-rpi-kernel@lists.infradead.org, akpm@linux-foundation.org,
 will@kernel.org, nsaenzjulienne@suse.de, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

'dma_zone_size' was created as a generic replacement to
'arm_dma_zone_size'. Use it accordingly.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes in v2: None

 arch/arm/include/asm/dma.h |  8 +++++---
 arch/arm/mm/init.c         | 12 ++++--------
 2 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index a81dda65c576..52d19ffd92b4 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -2,16 +2,18 @@
 #ifndef __ASM_ARM_DMA_H
 #define __ASM_ARM_DMA_H
 
+#include <asm-generic/dma.h>
+
 /*
  * This is the maximum virtual address which can be DMA'd from.
  */
+#undef MAX_DMA_ADDRESS
 #ifndef CONFIG_ZONE_DMA
 #define MAX_DMA_ADDRESS	0xffffffffUL
 #else
 #define MAX_DMA_ADDRESS	({ \
-	extern phys_addr_t arm_dma_zone_size; \
-	arm_dma_zone_size && arm_dma_zone_size < (0x10000000 - PAGE_OFFSET) ? \
-		(PAGE_OFFSET + arm_dma_zone_size) : 0xffffffffUL; })
+	dma_zone_size && dma_zone_size < (0x10000000 - PAGE_OFFSET) ? \
+		(PAGE_OFFSET + dma_zone_size) : 0xffffffffUL; })
 #endif
 
 #ifdef CONFIG_ISA_DMA_API
diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 16d373d587c4..95680bad245a 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -79,10 +79,6 @@ static void __init find_limits(unsigned long *min, unsigned long *max_low,
 }
 
 #ifdef CONFIG_ZONE_DMA
-
-phys_addr_t arm_dma_zone_size __read_mostly;
-EXPORT_SYMBOL(arm_dma_zone_size);
-
 /*
  * The DMA mask corresponding to the maximum bus address allocatable
  * using GFP_DMA.  The default here places no restriction on DMA
@@ -109,8 +105,8 @@ void __init setup_dma_zone(const struct machine_desc *mdesc)
 {
 #ifdef CONFIG_ZONE_DMA
 	if (mdesc->dma_zone_size) {
-		arm_dma_zone_size = mdesc->dma_zone_size;
-		arm_dma_limit = PHYS_OFFSET + arm_dma_zone_size - 1;
+		dma_zone_size = mdesc->dma_zone_size;
+		arm_dma_limit = PHYS_OFFSET + dma_zone_size - 1;
 	} else
 		arm_dma_limit = 0xffffffff;
 	arm_dma_pfn_limit = arm_dma_limit >> PAGE_SHIFT;
@@ -164,9 +160,9 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max_low,
 	 * Adjust the sizes according to any special requirements for
 	 * this machine type.
 	 */
-	if (arm_dma_zone_size)
+	if (dma_zone_size)
 		arm_adjust_dma_zone(zone_size, zhole_size,
-			arm_dma_zone_size >> PAGE_SHIFT);
+			dma_zone_size >> PAGE_SHIFT);
 #endif
 
 	free_area_init_node(0, zone_size, min, zhole_size);
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
