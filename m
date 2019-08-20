Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF7F9638F
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 17:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LK9JlRz7gYA294pHfrBKHEAm/WbdzKIXzV373sNQIZA=; b=gfmuowTtiJjz/a
	8y+fLg5jVA6eb9Ej6eO6Y78hkjTiAYdDxSeeNMHEOu2HBm2kjCf+Bz8i4F5rGSEdc9F3g2jhhU75n
	7BWohAIn3RpG16YPSFjBSmMr7W/jI6fP29PDeOOElMFAHXAQhKnZ6vzwfYHHmcoUXxHKhTdX9sFlx
	G47ZPxCyFFUQczEyTnb1Gm6VYjhELodLTdYUyKUsmQMZdmAo+aHl25GEv8DL9Pw92b2uY/ymI7NTJ
	maF+HZOgJFZ2RNOdMWBgZY6yqBtLu7ioZi/8mh69IClKJYhtLjZb4yGqFyTDGtpsdHjvJJWdGl/mo
	y4pr8Km9/hZSC+jDGSEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05cZ-0007py-Go; Tue, 20 Aug 2019 15:00:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05al-0004zR-Fe; Tue, 20 Aug 2019 14:58:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 292BEAFCB;
 Tue, 20 Aug 2019 14:58:34 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2 04/11] of/fdt: add early_init_dt_get_dma_zone_size()
Date: Tue, 20 Aug 2019 16:58:12 +0200
Message-Id: <20190820145821.27214-5-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820145821.27214-1-nsaenzjulienne@suse.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075835_663684_1719E8FE 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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
Cc: phill@raspberryi.org, f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 eric@anholt.net, mbrugger@suse.com, linux-rpi-kernel@lists.infradead.org,
 akpm@linux-foundation.org, will@kernel.org, nsaenzjulienne@suse.de,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Some devices might have weird DMA addressing limitations that only apply
to a subset of the available peripherals. For example the Raspberry Pi 4
has two interconnects, one able to address the whole lower 4G memory
area and another one limited to the lower 1G.

Being an uncommon situation we simply hardcode the device wide DMA
addressable memory size conditionally to the machine compatible name and
set 'dma_zone_size' accordingly.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes in v2:
- New approach to getting dma_zone_size, instead of parsing the dts we
  hardcode it conditionally to the machine compatible name.

 drivers/of/fdt.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 06ffbd39d9af..f756e8c05a77 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -27,6 +27,7 @@
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
+#include <asm/dma.h>	/* for dma_zone_size */
 
 #include "of_private.h"
 
@@ -1195,6 +1196,12 @@ void __init early_init_dt_scan_nodes(void)
 	of_scan_flat_dt(early_init_dt_scan_memory, NULL);
 }
 
+void __init early_init_dt_get_dma_zone_size(void)
+{
+	if (of_fdt_machine_is_compatible("brcm,bcm2711"))
+		dma_zone_size = 0x3c000000;
+}
+
 bool __init early_init_dt_scan(void *params)
 {
 	bool status;
@@ -1204,6 +1211,7 @@ bool __init early_init_dt_scan(void *params)
 		return false;
 
 	early_init_dt_scan_nodes();
+	early_init_dt_get_dma_zone_size();
 	return true;
 }
 
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
