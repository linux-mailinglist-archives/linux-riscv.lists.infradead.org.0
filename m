Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C89803BE6C
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Jun 2019 23:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a64GySm/b/4m+CPWEkDvRb1efYw9bUE+p4I4JJnEl3c=; b=S9R0n55XYMb65q
	up1iPu0JhK//Kbn0QNJ/FUysf6Zsm9+Z/WJu1LOh2xwNtWFnNTsrwmZ3kB0SkoG03NNgRHbVddhFM
	Rsjq1OnmtzDFdWKyZ+qDat9jY40AgjiJKVJGaXRn+GtMVpK9xmmwQGq7vfvfzpVrNbYqyqw9T9MBY
	5VVl8vfEOfSCGO26CIAPB+S7Bi8KQpL3myW+V7FijDaNww/q5Z7utNhm7vCw+ZhbIrpqPASxKng9R
	kUZmeRK8y5HGlmP3E+xRte2LI7YYwxYL/tWbfKHzKRdYRC8CKjuwKxy3p2xns8ELExi7aRrNWCE5Y
	IozgS3W0lS8kWZ/7bRwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRjj-0001fV-Fu; Mon, 10 Jun 2019 21:21:51 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haRiL-0000Me-FJ; Mon, 10 Jun 2019 21:20:25 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 03/15] binfmt_flat: provide a default version of
 flat_get_relocate_addr
Date: Mon, 10 Jun 2019 23:20:03 +0200
Message-Id: <20190610212015.9157-4-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610212015.9157-1-hch@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This way only the two architectures that do masking need to provide
the helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/include/asm/flat.h    | 2 --
 arch/c6x/include/asm/flat.h    | 1 -
 arch/m68k/include/asm/flat.h   | 1 -
 arch/sh/include/asm/flat.h     | 1 -
 arch/xtensa/include/asm/flat.h | 1 -
 fs/binfmt_flat.c               | 4 ++++
 6 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/flat.h b/arch/arm/include/asm/flat.h
index 576241d74704..a185fe023b60 100644
--- a/arch/arm/include/asm/flat.h
+++ b/arch/arm/include/asm/flat.h
@@ -30,6 +30,4 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 #endif
 }
 
-#define	flat_get_relocate_addr(rel)		(rel)
-
 #endif /* __ARM_FLAT_H__ */
diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
index ac87368efad1..c4d703b454c6 100644
--- a/arch/c6x/include/asm/flat.h
+++ b/arch/c6x/include/asm/flat.h
@@ -17,6 +17,5 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 	put_unaligned(addr, (__force u32 *)rp);
 	return 0;
 }
-#define flat_get_relocate_addr(rel)			(rel)
 
 #endif /* __ASM_C6X_FLAT_H */
diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
index 955617bb937b..217fa89c8e34 100644
--- a/arch/m68k/include/asm/flat.h
+++ b/arch/m68k/include/asm/flat.h
@@ -28,7 +28,6 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 	return put_user(addr, rp);
 #endif
 }
-#define	flat_get_relocate_addr(rel)		(rel)
 
 #define FLAT_PLAT_INIT(regs) \
 	do { \
diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
index 6f3b18679a98..0d520b4cc5ea 100644
--- a/arch/sh/include/asm/flat.h
+++ b/arch/sh/include/asm/flat.h
@@ -24,7 +24,6 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 	put_unaligned(addr, (__force u32 *)rp);
 	return 0;
 }
-#define	flat_get_relocate_addr(rel)		(rel)
 
 #define FLAT_PLAT_INIT(_r) \
   do { _r->regs[0]=0; _r->regs[1]=0; _r->regs[2]=0; _r->regs[3]=0; \
diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
index b1bc0d9a8d4e..a1d88aa3ef8a 100644
--- a/arch/xtensa/include/asm/flat.h
+++ b/arch/xtensa/include/asm/flat.h
@@ -17,6 +17,5 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 	put_unaligned(addr, (__force u32 *)rp);
 	return 0;
 }
-#define flat_get_relocate_addr(rel)			(rel)
 
 #endif /* __ASM_XTENSA_FLAT_H */
diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index a4c0b245ab1f..c0e4535dc1ec 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -43,6 +43,10 @@
 #include <asm/cacheflush.h>
 #include <asm/page.h>
 
+#ifndef flat_get_relocate_addr
+#define flat_get_relocate_addr(rel)	(rel)
+#endif
+
 /****************************************************************************/
 
 /*
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
