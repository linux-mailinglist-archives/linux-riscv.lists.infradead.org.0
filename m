Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3321D5171
	for <lists+linux-riscv@lfdr.de>; Fri, 15 May 2020 16:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0UMmbAtyFU8Mgmehd8BwFzZHE+DazTplWu/8/CZIxQ=; b=eTomn6gR/n8MkG
	Krv/Lxn0FTwmE0NNHzvSedJduXWM+wvWHvpUgMmIitf2kT2Y+KsRgNuvYeLD9KNLTCDcJLG48RNlX
	ihfRGo9yshFBfGh/2JTs/ntfQ2tYg7SFUTg9c/xh/KCUQqEoaUDQHWIAB0kW1X4hYNT9Y2nrseWfW
	jHyFULzwnAhTMYbLNgjmKKbDcK+cn9415jVUVqm+qJk0AsKO0DSPAVO1zeV0Xz9JkNJarCYJ1LYgJ
	zOA+OhVF+/7NdUezb6EROx45MfLZL9jM24SES/0I2l41uP58rZGMQIMZc5Dh1+KOMGBRZKqXQGxw3
	RNfGD2jP0ai8LZtVW2VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbW0-0001qi-78; Fri, 15 May 2020 14:40:44 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbSS-0003yz-QR; Fri, 15 May 2020 14:37:05 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Roman Zippel <zippel@linux-m68k.org>
Subject: [PATCH 06/29] asm-generic: don't include <linux/mm.h> in cacheflush.h
Date: Fri, 15 May 2020 16:36:23 +0200
Message-Id: <20200515143646.3857579-7-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515143646.3857579-1-hch@lst.de>
References: <20200515143646.3857579-1-hch@lst.de>
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

This seems to lead to some crazy include loops when using
asm-generic/cacheflush.h on more architectures, so leave it
to the arch header for now.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/um/include/asm/tlb.h         | 2 ++
 arch/x86/include/asm/cacheflush.h | 2 ++
 drivers/nvdimm/pmem.c             | 3 ++-
 include/asm-generic/cacheflush.h  | 3 ---
 4 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/um/include/asm/tlb.h b/arch/um/include/asm/tlb.h
index 70ee603839006..ff9c62828962c 100644
--- a/arch/um/include/asm/tlb.h
+++ b/arch/um/include/asm/tlb.h
@@ -2,6 +2,8 @@
 #ifndef __UM_TLB_H
 #define __UM_TLB_H
 
+#include <linux/mm.h>
+
 #include <asm/tlbflush.h>
 #include <asm-generic/cacheflush.h>
 #include <asm-generic/tlb.h>
diff --git a/arch/x86/include/asm/cacheflush.h b/arch/x86/include/asm/cacheflush.h
index 63feaf2a5f93d..b192d917a6d0b 100644
--- a/arch/x86/include/asm/cacheflush.h
+++ b/arch/x86/include/asm/cacheflush.h
@@ -2,6 +2,8 @@
 #ifndef _ASM_X86_CACHEFLUSH_H
 #define _ASM_X86_CACHEFLUSH_H
 
+#include <linux/mm.h>
+
 /* Caches aren't brain-dead on the intel. */
 #include <asm-generic/cacheflush.h>
 #include <asm/special_insns.h>
diff --git a/drivers/nvdimm/pmem.c b/drivers/nvdimm/pmem.c
index 2df6994acf836..55282a6217407 100644
--- a/drivers/nvdimm/pmem.c
+++ b/drivers/nvdimm/pmem.c
@@ -7,7 +7,6 @@
  * Copyright (c) 2015, Boaz Harrosh <boaz@plexistor.com>.
  */
 
-#include <asm/cacheflush.h>
 #include <linux/blkdev.h>
 #include <linux/hdreg.h>
 #include <linux/init.h>
@@ -25,6 +24,8 @@
 #include <linux/dax.h>
 #include <linux/nd.h>
 #include <linux/backing-dev.h>
+#include <linux/mm.h>
+#include <asm/cacheflush.h>
 #include "pmem.h"
 #include "pfn.h"
 #include "nd.h"
diff --git a/include/asm-generic/cacheflush.h b/include/asm-generic/cacheflush.h
index 906277492ec59..bf9bb83e9fc8d 100644
--- a/include/asm-generic/cacheflush.h
+++ b/include/asm-generic/cacheflush.h
@@ -2,9 +2,6 @@
 #ifndef _ASM_GENERIC_CACHEFLUSH_H
 #define _ASM_GENERIC_CACHEFLUSH_H
 
-/* Keep includes the same across arches.  */
-#include <linux/mm.h>
-
 #define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 0
 
 /*
-- 
2.26.2


