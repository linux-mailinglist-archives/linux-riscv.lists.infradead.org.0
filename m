Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EC51CC8F8
	for <lists+linux-riscv@lfdr.de>; Sun, 10 May 2020 09:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnbCkkwCrUJoVyKDF526uiErLGT3jwDipU5D/anO8xc=; b=k32WwS7j1x+LbZ
	5JN1QcENqK29OFT//yxcjHN2UCq1P5BVsO7WZpBKzpyBFwO1OJ2sHIHffXM7K4g/1uhzK4OyOlJci
	HosG8fgNMUWLJ6Lua4sZWEgqlqCwa5jVq0Uuh7GSbrVfv98Wf2adj/BiLfpwvGEvBh3GvyJzb+wTF
	cegTtvPPo7fjCdT2lQT47aHT9VcbbUI8BKYVJM1xc5IadNLRRQXhEwVPA2BvGEzLxfesx07nigz8d
	+AiiN3B2tdArKzLny9D6spJwUhSAj2aHqfcCWTgqViD2xa6rQuhU3Nbvq2DblydtoMAQOUU6xTC7b
	RgRru2lUzYJeW9hXna1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXgrJ-0003eB-79; Sun, 10 May 2020 07:58:49 +0000
Received: from [2001:4bb8:180:9d3f:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXgoA-00085z-3P; Sun, 10 May 2020 07:55:34 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 07/31] asm-generic: fix the inclusion guards for cacheflush.h
Date: Sun, 10 May 2020 09:54:46 +0200
Message-Id: <20200510075510.987823-8-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200510075510.987823-1-hch@lst.de>
References: <20200510075510.987823-1-hch@lst.de>
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

cacheflush.h uses a somewhat to generic include guard name that clashes
with various arch files.  Use a more specific one.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/asm-generic/cacheflush.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/cacheflush.h b/include/asm-generic/cacheflush.h
index cac7404b2bdd2..906277492ec59 100644
--- a/include/asm-generic/cacheflush.h
+++ b/include/asm-generic/cacheflush.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#ifndef __ASM_CACHEFLUSH_H
-#define __ASM_CACHEFLUSH_H
+#ifndef _ASM_GENERIC_CACHEFLUSH_H
+#define _ASM_GENERIC_CACHEFLUSH_H
 
 /* Keep includes the same across arches.  */
 #include <linux/mm.h>
@@ -109,4 +109,4 @@ static inline void flush_cache_vunmap(unsigned long start, unsigned long end)
 	memcpy(dst, src, len)
 #endif
 
-#endif /* __ASM_CACHEFLUSH_H */
+#endif /* _ASM_GENERIC_CACHEFLUSH_H */
-- 
2.26.2


