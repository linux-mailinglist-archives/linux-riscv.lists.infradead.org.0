Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBCB98BCD
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 08:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTAMTNOInG+C6N3ADkc/eP6DzTtK8uUhZtnLWpvtIQo=; b=SUYQTSwD+c6LzP
	vRFx1npW/ugG4GMnT2LPkY+qyuFmR2mEWygYEIq3hU+H0w1X77S/N8BIR17mY7JEtk7S4qo4U99Qy
	DXs34IpwkAPb94rFeQ0PUpGw2Gu78uazFH+EH6oxb6EsrNMfgaFBXjKxg/Drh2OSlMrOfFUdLhidl
	3pWVhwhpoPv7oXS6uhBR/cuMHe3ZXkVB6lBpObNnDVvUAsYEcwo6gvwTVzocthHmaJnughm1gh5e6
	WjqZVcwFmv+vs+l/XlI3rL6TvY3owX6OhgMpkkcX+BfrNM6jII5ldzIIW1fOAieLxLA07zG77dbV+
	8GzJsWwgAjNw/V/KZ0VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h1K-0008OM-5x; Thu, 22 Aug 2019 06:56:30 +0000
Received: from rap-us.hgst.com ([199.255.44.250] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h1C-0008Iw-M8; Thu, 22 Aug 2019 06:56:22 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 3/8] riscv: move sys_riscv_flush_icache to cacheflush.c
Date: Thu, 22 Aug 2019 15:56:07 +0900
Message-Id: <20190822065612.28634-4-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190822065612.28634-1-hch@lst.de>
References: <20190822065612.28634-1-hch@lst.de>
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

No real need to split this over to files.  This allows marking
flush_icache_mm static and dropping a superflous argument to it, as
well as consolidating the documentation.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/include/asm/cacheflush.h |  2 --
 arch/riscv/kernel/sys_riscv.c       | 27 ---------------
 arch/riscv/mm/cacheflush.c          | 53 +++++++++++++++++++++--------
 3 files changed, 38 insertions(+), 44 deletions(-)

diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
index c8f159740c38..b86ac3a4653a 100644
--- a/arch/riscv/include/asm/cacheflush.h
+++ b/arch/riscv/include/asm/cacheflush.h
@@ -90,12 +90,10 @@ static inline void flush_dcache_page(struct page *page)
 #ifndef CONFIG_SMP
 
 #define flush_icache_all() local_flush_icache_all()
-#define flush_icache_mm(mm, local) flush_icache_all()
 
 #else /* CONFIG_SMP */
 
 void flush_icache_all(void);
-void flush_icache_mm(struct mm_struct *mm, bool local);
 
 #endif /* CONFIG_SMP */
 
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index 5bad71078b61..d13e03de3e1a 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -7,7 +7,6 @@
 
 #include <linux/syscalls.h>
 #include <asm/unistd.h>
-#include <asm/cacheflush.h>
 
 static long riscv_sys_mmap(unsigned long addr, unsigned long len,
 			   unsigned long prot, unsigned long flags,
@@ -39,29 +38,3 @@ SYSCALL_DEFINE6(mmap2, unsigned long, addr, unsigned long, len,
 	return riscv_sys_mmap(addr, len, prot, flags, fd, offset, 12);
 }
 #endif /* !CONFIG_64BIT */
-
-/*
- * Allows the instruction cache to be flushed from userspace.  Despite RISC-V
- * having a direct 'fence.i' instruction available to userspace (which we
- * can't trap!), that's not actually viable when running on Linux because the
- * kernel might schedule a process on another hart.  There is no way for
- * userspace to handle this without invoking the kernel (as it doesn't know the
- * thread->hart mappings), so we've defined a RISC-V specific system call to
- * flush the instruction cache.
- *
- * sys_riscv_flush_icache() is defined to flush the instruction cache over an
- * address range, with the flush applying to either all threads or just the
- * caller.  We don't currently do anything with the address range, that's just
- * in there for forwards compatibility.
- */
-SYSCALL_DEFINE3(riscv_flush_icache, uintptr_t, start, uintptr_t, end,
-		unsigned long, flags)
-{
-	/* Check the reserved flags. */
-	if (unlikely(flags & ~SYS_RISCV_FLUSH_ICACHE_LOCAL))
-		return -EINVAL;
-
-	flush_icache_mm(current->mm, flags & SYS_RISCV_FLUSH_ICACHE_LOCAL);
-
-	return 0;
-}
diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index 3f15938dec89..4f78d6552476 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -3,8 +3,10 @@
  * Copyright (C) 2017 SiFive
  */
 
+#include <linux/syscalls.h>
 #include <asm/pgtable.h>
 #include <asm/cacheflush.h>
+#include <asm/unistd.h>
 
 #ifdef CONFIG_SMP
 
@@ -15,17 +17,7 @@ void flush_icache_all(void)
 	sbi_remote_fence_i(NULL);
 }
 
-/*
- * Performs an icache flush for the given MM context.  RISC-V has no direct
- * mechanism for instruction cache shoot downs, so instead we send an IPI that
- * informs the remote harts they need to flush their local instruction caches.
- * To avoid pathologically slow behavior in a common case (a bunch of
- * single-hart processes on a many-hart machine, ie 'make -j') we avoid the
- * IPIs for harts that are not currently executing a MM context and instead
- * schedule a deferred local instruction cache flush to be performed before
- * execution resumes on each hart.
- */
-void flush_icache_mm(struct mm_struct *mm, bool local)
+static void flush_icache_mm(bool local)
 {
 	unsigned int cpu;
 	cpumask_t others, hmask, *mask;
@@ -33,7 +25,7 @@ void flush_icache_mm(struct mm_struct *mm, bool local)
 	preempt_disable();
 
 	/* Mark every hart's icache as needing a flush for this MM. */
-	mask = &mm->context.icache_stale_mask;
+	mask = &current->mm->context.icache_stale_mask;
 	cpumask_setall(mask);
 	/* Flush this hart's I$ now, and mark it as flushed. */
 	cpu = smp_processor_id();
@@ -44,9 +36,9 @@ void flush_icache_mm(struct mm_struct *mm, bool local)
 	 * Flush the I$ of other harts concurrently executing, and mark them as
 	 * flushed.
 	 */
-	cpumask_andnot(&others, mm_cpumask(mm), cpumask_of(cpu));
+	cpumask_andnot(&others, mm_cpumask(current->mm), cpumask_of(cpu));
 	local |= cpumask_empty(&others);
-	if (mm != current->active_mm || !local) {
+	if (current->mm != current->active_mm || !local) {
 		riscv_cpuid_to_hartid_mask(&others, &hmask);
 		sbi_remote_fence_i(hmask.bits);
 	} else {
@@ -63,9 +55,40 @@ void flush_icache_mm(struct mm_struct *mm, bool local)
 
 	preempt_enable();
 }
-
+#else
+#define flush_icache_mm(local)	flush_icache_all()
 #endif /* CONFIG_SMP */
 
+/*
+ * Allows the instruction cache to be flushed from userspace.  Despite RISC-V
+ * having a direct 'fence.i' instruction available to userspace (which we
+ * can't trap!), that's not actually viable when running on Linux because the
+ * kernel might schedule a process on another hart.  There is no way for
+ * userspace to handle this without invoking the kernel (as it doesn't know the
+ * thread->hart mappings), so we've defined a RISC-V specific system call to
+ * flush the instruction cache.
+ *
+ * sys_riscv_flush_icache() is defined to flush the instruction cache over an
+ * address range, with the flush applying to either all threads or just the
+ * caller.  We don't currently do anything with the address range, that's just
+ * in there for forwards compatibility.
+ *
+ * To avoid pathologically slow behavior in a common case (a bunch of
+ * single-hart processes on a many-hart machine, ie 'make -j') we avoid the
+ * remove flush for harts that are not currently executing a MM context and
+ * instead schedule a deferred local instruction cache flush to be performed
+ * before execution resumes on each hart.
+ */
+SYSCALL_DEFINE3(riscv_flush_icache, uintptr_t, start, uintptr_t, end,
+		unsigned long, flags)
+{
+	/* Check the reserved flags. */
+	if (unlikely(flags & ~SYS_RISCV_FLUSH_ICACHE_LOCAL))
+		return -EINVAL;
+	flush_icache_mm(flags & SYS_RISCV_FLUSH_ICACHE_LOCAL);
+	return 0;
+}
+
 void flush_icache_pte(pte_t pte)
 {
 	struct page *page = pte_page(pte);
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
