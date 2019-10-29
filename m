Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD6EE8171
	for <lists+linux-riscv@lfdr.de>; Tue, 29 Oct 2019 07:52:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQZsavWlNLO9P5d0KHvTXtSRlP0HiipxppFJ+OYUbSI=; b=eVjubNv6qqoblL
	6wmALqx3KvcCuo023vCP/sF0HeatNIFocGw/Y/W5PDkV55lHDzUM1nFkFh1D94ebCvUkemUDCWDgk
	qJr871idU0LAcFrdR5QKvriyBe4DiLHJ1KW35foVik2fHQMR+mJGu4eeXidc1TeArLp7WvclBb2+R
	5uIWWPmACLZ6FRQs7+i+aRocZ2mJUGy+W6CD9k+A2BM8MuH+mDZCSoCvFgTCwi17jwzRJUdeWQJJf
	Wv8Q0fPuhMMFHSNRv5kPuuoZ+Jxan08IJQRVbwZ6+H/qsg0ELCGn9CflYcQ51bj6kjdM6Nq0TfTYY
	IrVK/Ponq/ZYnzaaxVAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLMQ-0007XN-Du; Tue, 29 Oct 2019 06:52:10 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLJA-0003MW-T4; Tue, 29 Oct 2019 06:48:49 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 04/21] hexagon: clean up ioremap
Date: Tue, 29 Oct 2019 07:48:17 +0100
Message-Id: <20191029064834.23438-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029064834.23438-1-hch@lst.de>
References: <20191029064834.23438-1-hch@lst.de>
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

Use ioremap as the main implemented function, and defined
ioremap_nocache to it as a deprecated alias.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/hexagon/include/asm/io.h       | 11 ++---------
 arch/hexagon/kernel/hexagon_ksyms.c |  2 +-
 arch/hexagon/mm/ioremap.c           |  2 +-
 3 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/arch/hexagon/include/asm/io.h b/arch/hexagon/include/asm/io.h
index ba1a444d55b3..89537dc1cf97 100644
--- a/arch/hexagon/include/asm/io.h
+++ b/arch/hexagon/include/asm/io.h
@@ -171,16 +171,9 @@ static inline void writel(u32 data, volatile void __iomem *addr)
 #define writew_relaxed __raw_writew
 #define writel_relaxed __raw_writel
 
-/*
- * Need an mtype somewhere in here, for cache type deals?
- * This is probably too long for an inline.
- */
-void __iomem *ioremap_nocache(unsigned long phys_addr, unsigned long size);
+void __iomem *ioremap(unsigned long phys_addr, unsigned long size);
+#define ioremap_nocache ioremap
 
-static inline void __iomem *ioremap(unsigned long phys_addr, unsigned long size)
-{
-	return ioremap_nocache(phys_addr, size);
-}
 
 static inline void iounmap(volatile void __iomem *addr)
 {
diff --git a/arch/hexagon/kernel/hexagon_ksyms.c b/arch/hexagon/kernel/hexagon_ksyms.c
index cf8974beb500..b3dbb472572e 100644
--- a/arch/hexagon/kernel/hexagon_ksyms.c
+++ b/arch/hexagon/kernel/hexagon_ksyms.c
@@ -20,7 +20,7 @@ EXPORT_SYMBOL(__vmgetie);
 EXPORT_SYMBOL(__vmsetie);
 EXPORT_SYMBOL(__vmyield);
 EXPORT_SYMBOL(empty_zero_page);
-EXPORT_SYMBOL(ioremap_nocache);
+EXPORT_SYMBOL(ioremap);
 EXPORT_SYMBOL(memcpy);
 EXPORT_SYMBOL(memset);
 
diff --git a/arch/hexagon/mm/ioremap.c b/arch/hexagon/mm/ioremap.c
index 77d8e1e69e9b..b103d83b5fbb 100644
--- a/arch/hexagon/mm/ioremap.c
+++ b/arch/hexagon/mm/ioremap.c
@@ -9,7 +9,7 @@
 #include <linux/vmalloc.h>
 #include <linux/mm.h>
 
-void __iomem *ioremap_nocache(unsigned long phys_addr, unsigned long size)
+void __iomem *ioremap(unsigned long phys_addr, unsigned long size)
 {
 	unsigned long last_addr, addr;
 	unsigned long offset = phys_addr & ~PAGE_MASK;
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
