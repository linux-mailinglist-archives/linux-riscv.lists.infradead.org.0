Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F0590E00
	for <lists+linux-riscv@lfdr.de>; Sat, 17 Aug 2019 09:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzZGnqnaj0xq3kZ2M6cXYXgMZC6K+TW7LUi389QzomQ=; b=SbZr1ed+nAOSFC
	pbTa9sIyCg7DV7f5yQHI/NJ9a4IDlQ/j+4ZeE8yy2txHWFZO2XmcJXJoSezyK6oz90llWkax+HOrS
	vNcOmni8Zq0l7rn/R813iS7cz2EmFBgEvRHF7vaWY5JpM+f7Mal3CeOg4eI3xmziby5vbNsPuw8/n
	cNKx7XKx3tiED7Z7tpenILrB0bxPmKPRWefY6YuX+gE4L/LB37o46h8ful2TKDP0NGFwn/YlJPo2k
	jocmPZoKNY0fdy72uWKB2niYszX+Zw1qr3s9Dqu0Rlvt+/ZumW/jKdp/TkGeFd3TPNdD6IARnwyK0
	uCNg7LBNw+rl/ghkNPWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytLh-0001JM-Gy; Sat, 17 Aug 2019 07:42:05 +0000
Received: from 089144199030.atnat0008.highway.a1.net ([89.144.199.30]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytLO-000175-Cc; Sat, 17 Aug 2019 07:41:46 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 03/26] m68k, microblaze: remove ioremap_fullcache
Date: Sat, 17 Aug 2019 09:32:30 +0200
Message-Id: <20190817073253.27819-4-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190817073253.27819-1-hch@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
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

No callers of this function.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/m68k/include/asm/kmap.h     | 7 -------
 arch/microblaze/include/asm/io.h | 1 -
 2 files changed, 8 deletions(-)

diff --git a/arch/m68k/include/asm/kmap.h b/arch/m68k/include/asm/kmap.h
index aac7f045f7f0..03d904fe6087 100644
--- a/arch/m68k/include/asm/kmap.h
+++ b/arch/m68k/include/asm/kmap.h
@@ -43,13 +43,6 @@ static inline void __iomem *ioremap_wt(unsigned long physaddr,
 	return __ioremap(physaddr, size, IOMAP_WRITETHROUGH);
 }
 
-#define ioremap_fullcache ioremap_fullcache
-static inline void __iomem *ioremap_fullcache(unsigned long physaddr,
-					      unsigned long size)
-{
-	return __ioremap(physaddr, size, IOMAP_FULL_CACHING);
-}
-
 #define memset_io memset_io
 static inline void memset_io(volatile void __iomem *addr, unsigned char val,
 			     int count)
diff --git a/arch/microblaze/include/asm/io.h b/arch/microblaze/include/asm/io.h
index c7968139486f..86c95b2a1ce1 100644
--- a/arch/microblaze/include/asm/io.h
+++ b/arch/microblaze/include/asm/io.h
@@ -40,7 +40,6 @@ extern void iounmap(volatile void __iomem *addr);
 
 extern void __iomem *ioremap(phys_addr_t address, unsigned long size);
 #define ioremap_nocache(addr, size)		ioremap((addr), (size))
-#define ioremap_fullcache(addr, size)		ioremap((addr), (size))
 #define ioremap_wc(addr, size)			ioremap((addr), (size))
 #define ioremap_wt(addr, size)			ioremap((addr), (size))
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
