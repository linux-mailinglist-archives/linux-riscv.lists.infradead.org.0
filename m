Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F4385A91
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 08:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4j6aoKNQY/XInl6xkL2yPtOWIzcuGOgatGikqH1D5eA=; b=QQ93g03vn5kgOw
	h9YuX45etbtS7320ZAwZY70Xx6vMAigrWFMCCoZ6YKARG5sgbE/62KB0aoJfxZ6STe8XicMzGZAEN
	GKKu55mlojaqTi/w90D+3H5402rQ0zIZ3kZXE6vW1Pem8oHsRaz8UDcac0dAU7fAmkuqblTbyOdFa
	1EDdQycZh1imKGwmIXTeeVabnjGp18AO4JbhXMg3qy8U3lsNca1t6/FWCIXRd5ZzFqeQJl85f798m
	ARBMfuJ0rsz2PdcZLLSfth1z7ZD7Vs3eakMomXrOyy3ZuLzba82bRqgHb7EUsHsD/Colxx++Gs7im
	gthQsZXHzU6OjwJjXVHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvbpD-0006hO-Un; Thu, 08 Aug 2019 06:23:00 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbor-0006R6-Se; Thu, 08 Aug 2019 06:22:40 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 96B1260002;
 Thu,  8 Aug 2019 06:22:25 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v6 04/14] arm64, mm: Move generic mmap layout functions to mm
Date: Thu,  8 Aug 2019 02:17:46 -0400
Message-Id: <20190808061756.19712-5-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808061756.19712-1-alex@ghiti.fr>
References: <20190808061756.19712-1-alex@ghiti.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_232238_418989_440DD523 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Alexandre Ghiti <alex@ghiti.fr>, linux-mm@kvack.org,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Paul Burton <paul.burton@mips.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, James Hogan <jhogan@kernel.org>,
 linux-riscv@lists.infradead.org, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

arm64 handles top-down mmap layout in a way that can be easily reused
by other architectures, so make it available in mm.

It then introduces a new config ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
that can be set by other architectures to benefit from those functions.
Note that this new config depends on MMU being enabled, if selected
without MMU support, a warning will be thrown.

Suggested-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Acked-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
---
 arch/Kconfig                       | 10 ++++
 arch/arm64/Kconfig                 |  1 +
 arch/arm64/include/asm/processor.h |  2 -
 arch/arm64/mm/mmap.c               | 76 -----------------------------
 kernel/sysctl.c                    |  6 ++-
 mm/util.c                          | 78 +++++++++++++++++++++++++++++-
 6 files changed, 92 insertions(+), 81 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index a7b57dd42c26..a0bb6fa4d381 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -696,6 +696,16 @@ config HAVE_ARCH_COMPAT_MMAP_BASES
 	  and vice-versa 32-bit applications to call 64-bit mmap().
 	  Required for applications doing different bitness syscalls.
 
+# This allows to use a set of generic functions to determine mmap base
+# address by giving priority to top-down scheme only if the process
+# is not in legacy mode (compat task, unlimited stack size or
+# sysctl_legacy_va_layout).
+# Architecture that selects this option can provide its own version of:
+# - STACK_RND_MASK
+config ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
+	bool
+	depends on MMU
+
 config HAVE_COPY_THREAD_TLS
 	bool
 	help
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..14a194e63458 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -72,6 +72,7 @@ config ARM64
 	select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000 || CC_IS_CLANG
 	select ARCH_SUPPORTS_NUMA_BALANCING
 	select ARCH_WANT_COMPAT_IPC_PARSE_VERSION if COMPAT
+	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
 	select ARCH_WANT_FRAME_POINTERS
 	select ARCH_WANT_HUGE_PMD_SHARE if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 844e2964b0f5..65e2de00913f 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -281,8 +281,6 @@ static inline void spin_lock_prefetch(const void *ptr)
 		     "nop") : : "p" (ptr));
 }
 
-#define HAVE_ARCH_PICK_MMAP_LAYOUT
-
 #endif
 
 extern unsigned long __ro_after_init signal_minsigstksz; /* sigframe size */
diff --git a/arch/arm64/mm/mmap.c b/arch/arm64/mm/mmap.c
index e4acaead67de..3028bacbc4e9 100644
--- a/arch/arm64/mm/mmap.c
+++ b/arch/arm64/mm/mmap.c
@@ -20,82 +20,6 @@
 
 #include <asm/cputype.h>
 
-/*
- * Leave enough space between the mmap area and the stack to honour ulimit in
- * the face of randomisation.
- */
-#define MIN_GAP (SZ_128M)
-#define MAX_GAP	(STACK_TOP/6*5)
-
-static int mmap_is_legacy(struct rlimit *rlim_stack)
-{
-	if (current->personality & ADDR_COMPAT_LAYOUT)
-		return 1;
-
-	if (rlim_stack->rlim_cur == RLIM_INFINITY)
-		return 1;
-
-	return sysctl_legacy_va_layout;
-}
-
-unsigned long arch_mmap_rnd(void)
-{
-	unsigned long rnd;
-
-#ifdef CONFIG_COMPAT
-	if (is_compat_task())
-		rnd = get_random_long() & ((1UL << mmap_rnd_compat_bits) - 1);
-	else
-#endif
-		rnd = get_random_long() & ((1UL << mmap_rnd_bits) - 1);
-	return rnd << PAGE_SHIFT;
-}
-
-static unsigned long mmap_base(unsigned long rnd, struct rlimit *rlim_stack)
-{
-	unsigned long gap = rlim_stack->rlim_cur;
-	unsigned long pad = stack_guard_gap;
-
-	/* Account for stack randomization if necessary */
-	if (current->flags & PF_RANDOMIZE)
-		pad += (STACK_RND_MASK << PAGE_SHIFT);
-
-	/* Values close to RLIM_INFINITY can overflow. */
-	if (gap + pad > gap)
-		gap += pad;
-
-	if (gap < MIN_GAP)
-		gap = MIN_GAP;
-	else if (gap > MAX_GAP)
-		gap = MAX_GAP;
-
-	return PAGE_ALIGN(STACK_TOP - gap - rnd);
-}
-
-/*
- * This function, called very early during the creation of a new process VM
- * image, sets up which VM layout function to use:
- */
-void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
-{
-	unsigned long random_factor = 0UL;
-
-	if (current->flags & PF_RANDOMIZE)
-		random_factor = arch_mmap_rnd();
-
-	/*
-	 * Fall back to the standard layout if the personality bit is set, or
-	 * if the expected stack growth is unlimited:
-	 */
-	if (mmap_is_legacy(rlim_stack)) {
-		mm->mmap_base = TASK_UNMAPPED_BASE + random_factor;
-		mm->get_unmapped_area = arch_get_unmapped_area;
-	} else {
-		mm->mmap_base = mmap_base(random_factor, rlim_stack);
-		mm->get_unmapped_area = arch_get_unmapped_area_topdown;
-	}
-}
-
 /*
  * You really shouldn't be using read() or write() on /dev/mem.  This might go
  * away in the future.
diff --git a/kernel/sysctl.c b/kernel/sysctl.c
index 078950d9605b..00fcea236eba 100644
--- a/kernel/sysctl.c
+++ b/kernel/sysctl.c
@@ -264,7 +264,8 @@ extern struct ctl_table epoll_table[];
 extern struct ctl_table firmware_config_table[];
 #endif
 
-#ifdef HAVE_ARCH_PICK_MMAP_LAYOUT
+#if defined(HAVE_ARCH_PICK_MMAP_LAYOUT) || \
+    defined(CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT)
 int sysctl_legacy_va_layout;
 #endif
 
@@ -1573,7 +1574,8 @@ static struct ctl_table vm_table[] = {
 		.proc_handler	= proc_dointvec,
 		.extra1		= SYSCTL_ZERO,
 	},
-#ifdef HAVE_ARCH_PICK_MMAP_LAYOUT
+#if defined(HAVE_ARCH_PICK_MMAP_LAYOUT) || \
+    defined(CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT)
 	{
 		.procname	= "legacy_va_layout",
 		.data		= &sysctl_legacy_va_layout,
diff --git a/mm/util.c b/mm/util.c
index 15a4fb0f5473..0781e5575cb3 100644
--- a/mm/util.c
+++ b/mm/util.c
@@ -17,7 +17,12 @@
 #include <linux/vmalloc.h>
 #include <linux/userfaultfd_k.h>
 #include <linux/elf.h>
+#include <linux/elf-randomize.h>
+#include <linux/personality.h>
 #include <linux/random.h>
+#include <linux/processor.h>
+#include <linux/sizes.h>
+#include <linux/compat.h>
 
 #include <linux/uaccess.h>
 
@@ -315,7 +320,78 @@ unsigned long randomize_stack_top(unsigned long stack_top)
 #endif
 }
 
-#if defined(CONFIG_MMU) && !defined(HAVE_ARCH_PICK_MMAP_LAYOUT)
+#ifdef CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
+#ifdef CONFIG_ARCH_HAS_ELF_RANDOMIZE
+unsigned long arch_mmap_rnd(void)
+{
+	unsigned long rnd;
+
+#ifdef CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS
+	if (is_compat_task())
+		rnd = get_random_long() & ((1UL << mmap_rnd_compat_bits) - 1);
+	else
+#endif /* CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS */
+		rnd = get_random_long() & ((1UL << mmap_rnd_bits) - 1);
+
+	return rnd << PAGE_SHIFT;
+}
+#endif /* CONFIG_ARCH_HAS_ELF_RANDOMIZE */
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
+/*
+ * Leave enough space between the mmap area and the stack to honour ulimit in
+ * the face of randomisation.
+ */
+#define MIN_GAP		(SZ_128M)
+#define MAX_GAP		(STACK_TOP / 6 * 5)
+
+static unsigned long mmap_base(unsigned long rnd, struct rlimit *rlim_stack)
+{
+	unsigned long gap = rlim_stack->rlim_cur;
+	unsigned long pad = stack_guard_gap;
+
+	/* Account for stack randomization if necessary */
+	if (current->flags & PF_RANDOMIZE)
+		pad += (STACK_RND_MASK << PAGE_SHIFT);
+
+	/* Values close to RLIM_INFINITY can overflow. */
+	if (gap + pad > gap)
+		gap += pad;
+
+	if (gap < MIN_GAP)
+		gap = MIN_GAP;
+	else if (gap > MAX_GAP)
+		gap = MAX_GAP;
+
+	return PAGE_ALIGN(STACK_TOP - gap - rnd);
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
+#elif defined(CONFIG_MMU) && !defined(HAVE_ARCH_PICK_MMAP_LAYOUT)
 void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
 {
 	mm->mmap_base = TASK_UNMAPPED_BASE;
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
