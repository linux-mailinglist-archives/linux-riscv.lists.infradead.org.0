Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66885DB4DB
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilxoNo1wRhqRtGv6+drOSv9+NxnCr+zyCImip2m7AB8=; b=mPpVrGL2557Rla
	XXg8u40sIHVzt63lo/icUYBpiGrQpMvMHet7e/tTl+71KuP2tRuqslfegeEb1xhyyNuHQ5hjGavQv
	ImIwMIoIg1cbe/5rFT1vIE1KG2i3sojwY+lNCjhJBS0lyXZAyGdn10WYNc9jvarvzLaXKbzsSOIIa
	kSw9oft4wxkfs/igyrLnNc9rc4YshGlQY4VtXSrvcQ1FyP7KUTiRo4rwgLFsh4Jr7gJbvZxyxqr1G
	HwoPiZuhPhWsHbSfKfEGmv/UfmaHTdYYJUj7Lzy7c0GoMfPEy/y9TS1vTV2G+LGmMSMlPJ6nHpHBw
	M+spsnTApiqfFnuq4ybQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9x4-0004aG-DX; Thu, 17 Oct 2019 17:52:42 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9qv-0005nd-VI; Thu, 17 Oct 2019 17:46:22 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 09/21] xtensa: clean up ioremap
Date: Thu, 17 Oct 2019 19:45:42 +0200
Message-Id: <20191017174554.29840-10-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017174554.29840-1-hch@lst.de>
References: <20191017174554.29840-1-hch@lst.de>
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
 arch/xtensa/include/asm/io.h | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/arch/xtensa/include/asm/io.h b/arch/xtensa/include/asm/io.h
index 988e08530a5c..441fb56926a7 100644
--- a/arch/xtensa/include/asm/io.h
+++ b/arch/xtensa/include/asm/io.h
@@ -32,8 +32,7 @@ void xtensa_iounmap(volatile void __iomem *addr);
 /*
  * Return the virtual address for the specified bus memory.
  */
-static inline void __iomem *ioremap_nocache(unsigned long offset,
-		unsigned long size)
+static inline void __iomem *ioremap(unsigned long offset, unsigned long size)
 {
 	if (offset >= XCHAL_KIO_PADDR
 	    && offset - XCHAL_KIO_PADDR < XCHAL_KIO_SIZE)
@@ -52,15 +51,10 @@ static inline void __iomem *ioremap_cache(unsigned long offset,
 		return xtensa_ioremap_cache(offset, size);
 }
 #define ioremap_cache ioremap_cache
-#define ioremap_nocache ioremap_nocache
-
-#define ioremap_wc ioremap_nocache
-#define ioremap_wt ioremap_nocache
 
-static inline void __iomem *ioremap(unsigned long offset, unsigned long size)
-{
-	return ioremap_nocache(offset, size);
-}
+#define ioremap_nocache ioremap
+#define ioremap_wc ioremap
+#define ioremap_wt ioremap
 
 static inline void iounmap(volatile void __iomem *addr)
 {
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
