Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1692C6D0EC
	for <lists+linux-riscv@lfdr.de>; Thu, 18 Jul 2019 17:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OzSruZj80yl3/oAnzibkcdopWnJg42b/jz013vNh3Hs=; b=gLfMOGCUNwCWZV
	irneVp9QsKkuLWF262yufvg+Mr82yBeDDzFPFwfbv7pBXfwrZ5pIK1n0k5DvuLT5yWVifrT1ZRORH
	lMbYr+uvNadCp9Spk3hv25IVLO2SyIXvzG6DkGVnuR80qKRWl3uVI+nRrS5871d9q9PboQ8qYkVSF
	gdNvo0B5qUbqj1+6bWpt+oH5Edbi3tmmHr3LPAr42Xi5U0yHXgY+eMq2u8KesV1hQEmmCMEx0qtAb
	ph9KDxdJrU9GN3eaF8iIqZp62U6gBZqJuvumcnQSk+zhG+18NQh1SJBv9xgAtbabQ5cvrrwmelyjf
	jaGgT3+4vrhlyY+vDF7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho8Bs-0006ts-1w; Thu, 18 Jul 2019 15:19:28 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho8Bm-0006tB-DT
 for linux-riscv@lists.infradead.org; Thu, 18 Jul 2019 15:19:23 +0000
Received: by mail-io1-xd43.google.com with SMTP id z3so52083670iog.0
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jul 2019 08:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=Tbdphi8CrHqxWHaUURv6oHYNP9deEDGvOFqbwoY/Y0A=;
 b=Whrg4ctJ0WfkjGBYTaCrG+D6OUBE6Tnw2Q7NONAXv+ZDC7WaJk7O/zUK8LXgq2k3Ug
 +qTt5c8636LeXcgwlJEcjTHzHptqGk1UqFvxsyI6zIN+THsqZBsdSVj8LzsXyKyCIHRL
 0USaC0X5nlwytiSP2kYkwdGcBwd73zv3lfOCjv12guAZ3v/OBTP3oDgvutNdUS5L4K6J
 0qkHT1cN+JskUi2h+eLROZtGK4Cr4BxwokYvj2FD2q1566I6cyMJmiPLHO6BgLyvxFox
 IJkRT/G6wFPPC7XKT9TUQzPO6gRdtKQSeOVhIRwjy+FLmyG5B0MzDr31eEE9A+s15B+r
 v5fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=Tbdphi8CrHqxWHaUURv6oHYNP9deEDGvOFqbwoY/Y0A=;
 b=cYg2lwH4cSKDpD3fkw26fbm+S3L6ZGJy29zMP7M6AMl2Kanlc8oC9WzwZ1OSVYyCrA
 sk3Cl/ncEP/RvgQnXSuM04Rvi7Y2go8GY9FlLlgVq7gL3XI+j3wjb5C9QI4UtB94FfZZ
 8+QcCO6mL2/9A8VLZP8NOR/jOBxE2SdWkozjM+I4nXRrBWgoyLwZl6goragKBzxeQsIR
 j05oKIA1+dB1HfY4Qukqq8IbBbaWjqFwmlREMYzTe/bVPiC8qIkZtJV1pV12x8AQWvu3
 CgR2FeElh1afAL2snVxdSQCVVQM2MJO+2CWzjFGrlxJ9wX6un+lDv9OVNavzRBlOagLO
 W70w==
X-Gm-Message-State: APjAAAViY+7en08o0RBYrNNczBH83eS0Lw1eL+mQFYHBZTtmQcPny89X
 niAKZl/fbqG//2VWKlJx/XHNIQ==
X-Google-Smtp-Source: APXvYqzvbLr4vBoZPuts04IwgqzTfGI1ll4gN2+jq8yvFshv6/nee/WwlsDHKhSf/3Vy1rhbpwZ+ug==
X-Received: by 2002:a5d:8e08:: with SMTP id e8mr46043389iod.139.1563463161307; 
 Thu, 18 Jul 2019 08:19:21 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id n7sm20848114ioo.79.2019.07.18.08.19.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 08:19:20 -0700 (PDT)
Date: Thu, 18 Jul 2019 08:19:19 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: cai@lca.pw, arnd@arndb.de, akpm@linux-foundation.org, 
 torvalds@linux-foundation.org
Subject: [PATCH] riscv: fix build break after macro-to-function conversion
 in generic cacheflush.h
Message-ID: <alpine.DEB.2.21.9999.1907180800440.18568@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_081922_465852_0CB1167C 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Commit c296d4dc13ae ("asm-generic: fix a compilation warning")
converted the various flush_*cache_* macros in
asm-generic/cacheflush.h to static inline functions.  This breaks
RISC-V builds, since RISC-V's cacheflush.h includes the generic
cacheflush.h and then undefines the macros to be overridden.

Fix by copying the subset of the no-op functions that are reused from
the generic cacheflush.h into the RISC-V cacheflush.h, and dropping
the include of the generic cacheflush.h.

Fixes: c296d4dc13ae ("asm-generic: fix a compilation warning")
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Qian Cai <cai@lca.pw>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
---
Queued with the other arch/riscv patches for the 5.3 merge window.

 arch/riscv/include/asm/cacheflush.h | 63 +++++++++++++++++++++++++++--
 1 file changed, 59 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
index ad8678f1b54a..555b20b11dc3 100644
--- a/arch/riscv/include/asm/cacheflush.h
+++ b/arch/riscv/include/asm/cacheflush.h
@@ -6,11 +6,66 @@
 #ifndef _ASM_RISCV_CACHEFLUSH_H
 #define _ASM_RISCV_CACHEFLUSH_H
 
-#include <asm-generic/cacheflush.h>
+#include <linux/mm.h>
 
-#undef flush_icache_range
-#undef flush_icache_user_range
-#undef flush_dcache_page
+#define ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE 0
+
+/*
+ * The cache doesn't need to be flushed when TLB entries change when
+ * the cache is mapped to physical memory, not virtual memory
+ */
+static inline void flush_cache_all(void)
+{
+}
+
+static inline void flush_cache_mm(struct mm_struct *mm)
+{
+}
+
+static inline void flush_cache_dup_mm(struct mm_struct *mm)
+{
+}
+
+static inline void flush_cache_range(struct vm_area_struct *vma,
+				     unsigned long start,
+				     unsigned long end)
+{
+}
+
+static inline void flush_cache_page(struct vm_area_struct *vma,
+				    unsigned long vmaddr,
+				    unsigned long pfn)
+{
+}
+
+static inline void flush_dcache_mmap_lock(struct address_space *mapping)
+{
+}
+
+static inline void flush_dcache_mmap_unlock(struct address_space *mapping)
+{
+}
+
+static inline void flush_icache_page(struct vm_area_struct *vma,
+				     struct page *page)
+{
+}
+
+static inline void flush_cache_vmap(unsigned long start, unsigned long end)
+{
+}
+
+static inline void flush_cache_vunmap(unsigned long start, unsigned long end)
+{
+}
+
+#define copy_to_user_page(vma, page, vaddr, dst, src, len) \
+	do { \
+		memcpy(dst, src, len); \
+		flush_icache_user_range(vma, page, vaddr, len); \
+	} while (0)
+#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
+	memcpy(dst, src, len)
 
 static inline void local_flush_icache_all(void)
 {
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
