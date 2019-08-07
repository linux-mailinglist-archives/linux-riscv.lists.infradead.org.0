Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517EC84F80
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 17:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o2C8OjZ4lCUOIlwklKMlSDZiOSJP+wl4jjM0ILC7LOQ=; b=k3tbAxWZCrgY/S
	H3z+5zXt9dkwW/gCqm+rs9FsigAawBMzU2gXG0bwR+bxEYuvr4or4Vfv1zrWXXkI5hhB7D8XtNvX7
	n59/LBgjIxVwppllP28amKDwdsmVYkPrh6R7xjatmGVPSBYS9AoWxkMItXjHG9VmzN1nTplj5MaBY
	xSCdrsNvD6CMf50f1XlYEGLhQwR2Vxo37RpBpkHivLTOZhCvMdyeyZYAz5Xhr/T3yUj5Rvt07e+Co
	lHQH0kaG2UsSTt92HzU5PxiWLTdDpK/m80lqhU0fsHyIsJ0O0yvvDludUM5JmpdzuOxLYXGVcn5pi
	nx2y1EZh3L6CqOa59cDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNZv-0004EK-HS; Wed, 07 Aug 2019 15:10:15 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNZr-0004E4-IF; Wed, 07 Aug 2019 15:10:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: palmer@sifive.com,
	arnd@arndb.de,
	gregkh@linuxfoundation.org
Subject: [PATCH] riscv: move sifive_l2_cache.c to drivers/misc
Date: Wed,  7 Aug 2019 18:10:09 +0300
Message-Id: <20190807151009.31971-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The sifive_l2_cache.c is in no way related to RISC-V architecture
memory management.  It is a little stub driver working around the fact
that the EDAC maintainers prefer their drivers to be structured in a
certain way that doesn't fit the SiFive SOCs.

Move the file to drivers/misc and only build it when the EDAC_SIFIVE
config option is selected.

Fixes: a967a289f169 ("RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/mm/Makefile                            | 1 -
 drivers/misc/Makefile                             | 1 +
 {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c | 0
 3 files changed, 1 insertion(+), 1 deletion(-)
 rename {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c (100%)

diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 74055e1d6f21..d2101d0741d4 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -11,6 +11,5 @@ obj-y += extable.o
 obj-y += ioremap.o
 obj-y += cacheflush.o
 obj-y += context.o
-obj-y += sifive_l2_cache.o
 
 obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index abd8ae249746..886d48301e8e 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -59,3 +59,4 @@ obj-y				+= cardreader/
 obj-$(CONFIG_PVPANIC)   	+= pvpanic.o
 obj-$(CONFIG_HABANA_AI)		+= habanalabs/
 obj-$(CONFIG_XILINX_SDFEC)	+= xilinx_sdfec.o
+obj-$(CONFIG_EDAC_SIFIVE)	+= sifive_l2_cache.o
diff --git a/arch/riscv/mm/sifive_l2_cache.c b/drivers/misc/sifive_l2_cache.c
similarity index 100%
rename from arch/riscv/mm/sifive_l2_cache.c
rename to drivers/misc/sifive_l2_cache.c
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
