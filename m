Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC40B0819
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Sep 2019 06:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r2sswrJAIrf4W4+liXBUHkOAvcqPr7JxvM4Y3j9uNQU=; b=EanJg1X3p0Wtv2
	5cTySWyXH2wegKVAPErXRrlDna2BEwHkYeV4Z5/xEKt0iDsriR3/Z4uudwdj79lJAIRJMKRU9eOL1
	KegzcYE/xOPg2I6AFzNClw/0fvGg1qDqTj2BFasP9fQUL/9+VTNN6eGU41ezhNWKXmDLIYG+YnG8c
	1QmpleZrfBNe3g3vnhVqjhj/nL8VuRSiGhkriAKEtEolvqTF/A0R7+BrnoTxTwSvRw7kWTm5uKvr1
	q0Gqzx7eQK0SbNfEkaLHugD+m4hbmtLAij1oUfw33bWLfkQ53ntzj7vYRgYvB236YsfBSn/t6Z/1b
	vhfOTOQGJ98QnJqoDWew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8GvM-0004aE-OG; Thu, 12 Sep 2019 04:41:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8GvH-0004Zi-P3
 for linux-riscv@lists.infradead.org; Thu, 12 Sep 2019 04:41:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id n4so12750059pgv.2
 for <linux-riscv@lists.infradead.org>; Wed, 11 Sep 2019 21:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :cc:to; bh=MDkUDgbz+SfEhyT5RETKylHGRS26Qrh0+1t+2QNZmuE=;
 b=j7FDDxuf2ywbQ2AjC/7N7YmlIo4UmgqnzlWkcH2e6fQcgkkJ2HncOM6PINk/oY4VNz
 30S8ZQaV7YL57sKivXMPcgH5UwclWk09RXChpxbEm0LUjFHYRo10ZqgktwjrStEpNQ4U
 TRXWERM01S3kqwtI9ztjhdiWJS6WRS8qRynTkL+E/S2aZfFWFC6CRQibK2ZKzU10UUgG
 bIcClZ2KlnPnrSK42ayzLRY0RLPO9pGLe/Ks9SDLMPmoUDb8ibSwLmkDT+ntRgEGZtjl
 nYkB3nRyMdMrjm9RlaF1Rr8B9qZNstHhSfT6L6kCIu9iq6ag5RtEFieKrYtgGFHoAURR
 ZnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:cc:to;
 bh=MDkUDgbz+SfEhyT5RETKylHGRS26Qrh0+1t+2QNZmuE=;
 b=i4I65FBvc0fi99w46AWfSzGg6Mz5kXX1UDKyQx1Wu6z/iBfxtqpdBYyU27zvXjFk5x
 qsJU6CIYcaks+BBYde2lOKFYRJrt0yficxadndPrzWgXy3yWi5GdamgyuGwb0/FWNrF0
 V3eWBj/TE1vY0FtlW13jR2JpEs/xts5ewV7TlVMyXGT3+cypIXDlBhiwpIFNoD+ViiIL
 sA7NacFb4Ai6Jf0o0Q8kEQfVVYAZQOrYg9TVOkKbV2fTjiSh3xEYZgpZdO9PZPfbntgW
 dTJ5r8l9gSJBjWAREI7O0HJHSREv3Hbz/PhRhMRPuRxQI4W+BcZ9iFxIuTp4GnUURJlz
 PxrQ==
X-Gm-Message-State: APjAAAXkyvbkigIzD84KpR2KMx3/KfQuyzweJq3x1Dxc1gIZGrVccsKt
 qcUUaAA0JHCWYMkw6TmO/fjHexwZ/lk=
X-Google-Smtp-Source: APXvYqwJBpprWL3l3Jy2IbSlhN0Tz+vfWzlMYsnm/mU3AzSrzuLNo3N+iJnMY4H7hhyCzhDzfUsYeg==
X-Received: by 2002:aa7:8436:: with SMTP id q22mr47176915pfn.74.1568263292976; 
 Wed, 11 Sep 2019 21:41:32 -0700 (PDT)
Received: from [127.0.0.1] (hope.twd2.net. [2001:19f0:7000:b181::1])
 by smtp.gmail.com with ESMTPSA id h4sm25804848pfg.159.2019.09.11.21.41.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 21:41:32 -0700 (PDT)
From: Wende Tan <twd2.me@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: [PATCH] riscv: mm: Fix ASLR on RISC-V
Message-Id: <3883C7B2-4CA1-4E13-9A02-F3DA4F5DA585@gmail.com>
Date: Thu, 12 Sep 2019 12:39:25 +0800
To: linux-riscv@lists.infradead.org
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_214135_842693_81A55729 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (twd2.me[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: twd2@163.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The ASLR on RISC-V does not work well (only randomize stack addresses)
because RISC-V arch is lacking of `arch_mmap_rnd()`,
`arch_pick_mmap_layout()` and `arch_randomize_brk()`. Add them.

Signed-off-by: Wende Tan <twd2.me@gmail.com>
---
 arch/riscv/Kconfig                 |  9 ++++
 arch/riscv/include/asm/processor.h |  5 +++
 arch/riscv/mm/Makefile             |  1 +
 arch/riscv/mm/mmap.c               | 86 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 101 insertions(+)
 create mode 100644 arch/riscv/mm/mmap.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 59a4727..0f3b8ba 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -18,6 +18,7 @@ config RISCV
 	select OF_EARLY_FLATTREE
 	select OF_IRQ
 	select ARCH_HAS_BINFMT_FLAT
+	select ARCH_HAS_ELF_RANDOMIZE
 	select ARCH_WANT_FRAME_POINTERS
 	select CLONE_BACKWARDS
 	select COMMON_CLK
@@ -31,6 +32,7 @@ config RISCV
 	select GENERIC_SMP_IDLE_THREAD
 	select GENERIC_ATOMIC64 if !64BIT
 	select HAVE_ARCH_AUDITSYSCALL
+	select HAVE_ARCH_MMAP_RND_BITS if MMU
 	select HAVE_MEMBLOCK_NODE_MAP
 	select HAVE_DMA_CONTIGUOUS
 	select HAVE_FUTEX_CMPXCHG if FUTEX
@@ -58,6 +60,13 @@ config RISCV
 config MMU
 	def_bool y
 
+config ARCH_MMAP_RND_BITS_MIN
+	default 12
+
+config ARCH_MMAP_RND_BITS_MAX
+	default 24 if 64BIT
+	default 12
+
 config ZONE_DMA32
 	bool
 	default y if 64BIT
diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index f539149..2638748 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -20,6 +20,11 @@
 #define STACK_TOP_MAX		STACK_TOP
 #define STACK_ALIGN		16
 
+/*
+ * RISC-V has an arch_pick_mmap_layout()
+ */
+#define HAVE_ARCH_PICK_MMAP_LAYOUT 1
+
 #ifndef __ASSEMBLY__
 
 struct task_struct;
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 74055e1..742e6f3 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -11,6 +11,7 @@ obj-y += extable.o
 obj-y += ioremap.o
 obj-y += cacheflush.o
 obj-y += context.o
+obj-y += mmap.o
 obj-y += sifive_l2_cache.o
 
 obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
diff --git a/arch/riscv/mm/mmap.c b/arch/riscv/mm/mmap.c
new file mode 100644
index 00000000..07c7933
--- /dev/null
+++ b/arch/riscv/mm/mmap.c
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Based on arch/mips/mm/mmap.c
+ *
+ * Copyright (C) 2011 Wind River Systems,
+ *   written by Ralf Baechle <ralf@linux-mips.org>
+ * Copyright (C) 2019 Wende Tan <twd2.me@gmail.com>
+ */
+#include <linux/compiler.h>
+#include <linux/elf-randomize.h>
+#include <linux/errno.h>
+#include <linux/mm.h>
+#include <linux/mman.h>
+#include <linux/personality.h>
+#include <linux/random.h>
+#include <linux/sched/mm.h>
+
+/* gap between mmap and stack */
+#define RISCV_MIN_GAP (128 * 1024 * 1024UL)
+#define RISCV_MAX_GAP ((TASK_SIZE) / 6 * 5)
+
+unsigned long arch_mmap_rnd(void)
+{
+	unsigned long rnd = get_random_long() & ((1UL << mmap_rnd_bits) - 1);
+
+	return rnd << PAGE_SHIFT;
+}
+
+static int mmap_is_legacy(struct rlimit *rlim_stack)
+{
+	if (current->personality & ADDR_COMPAT_LAYOUT)
+		return 1;
+
+	if (rlim_stack->rlim_cur == RLIM_INFINITY)
+		return 1;
+
+	return sysctl_legacy_va_layout;
+}
+
+static unsigned long mmap_base(unsigned long rnd, struct rlimit *rlim_stack)
+{
+	unsigned long gap = rlim_stack->rlim_cur;
+
+	if (gap < RISCV_MIN_GAP)
+		gap = RISCV_MIN_GAP;
+	else if (gap > RISCV_MAX_GAP)
+		gap = RISCV_MAX_GAP;
+
+	return PAGE_ALIGN(TASK_SIZE - gap - rnd);
+}
+
+void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
+{
+	unsigned long random_factor = 0UL;
+
+	if (current->flags & PF_RANDOMIZE)
+		random_factor = arch_mmap_rnd();
+
+	if (mmap_is_legacy(rlim_stack)) {
+		mm->mmap_base = TASK_UNMAPPED_BASE + random_factor;
+		mm->get_unmapped_area = arch_get_unmapped_area;
+	} else {
+		mm->mmap_base = mmap_base(random_factor, rlim_stack);
+		mm->get_unmapped_area = arch_get_unmapped_area_topdown;
+	}
+}
+
+static inline unsigned long brk_rnd(void)
+{
+	unsigned long rnd = get_random_long() & ((1UL << mmap_rnd_bits) - 1);
+
+	return rnd << PAGE_SHIFT;
+}
+
+unsigned long arch_randomize_brk(struct mm_struct *mm)
+{
+	unsigned long base = mm->brk;
+	unsigned long ret;
+
+	ret = PAGE_ALIGN(base + brk_rnd());
+
+	if (ret < mm->brk)
+		return mm->brk;
+
+	return ret;
+}
-- 
2.1.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
