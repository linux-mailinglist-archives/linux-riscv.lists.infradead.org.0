Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9929B98BD5
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 08:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZ8Pv2rfPTWx8jPLsecOiwNFq9+eAWLY2bJcu/gDFGw=; b=Jr+W3ZgOhC4gBW
	0DUzT/5snFc/MNbDCk2dAx79fYgDEpEkm64jo0BrtnflMBkaqaAdzu/YE43wtGPo6AtdNvsYyWLmX
	OEsW+rp7fJrsln9pRuut3zY43oOWsWD6IWNdmLM3CmF2OgSMp3q+ArEYhNw3CmeIxKLHl2wZh/wYi
	6fFr/2caFUKiBZRILZErY9BweBMIDQSoF9WdTxtt49WInCu8sHqvBJ+Wb2BcvyY2bSPWha/1LlazN
	LCz1yHOVMW3Z9x915ka2zFkKT+OC50yD25bzCTtUb6NXq7nxcJmPDqGDdAYKBR+Zdzz8YDz1Z+P9A
	Ta8s9JotC0TjATUWVQBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h1Z-0000DA-Jq; Thu, 22 Aug 2019 06:56:45 +0000
Received: from rap-us.hgst.com ([199.255.44.250] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h1L-0008SA-Lq; Thu, 22 Aug 2019 06:56:31 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 8/8] riscv: ignore the SYS_RISCV_FLUSH_ICACHE_LOCAL flag
Date: Thu, 22 Aug 2019 15:56:12 +0900
Message-Id: <20190822065612.28634-9-hch@lst.de>
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

The SYS_RISCV_FLUSH_ICACHE_LOCAL is built on the flawed assumption that
there is such a thing as a local cpu outside of in-kernel preemption
disabled sections.  Just ignore the flag as it can't be used in a safe
way.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/include/asm/cacheflush.h |  2 +-
 arch/riscv/mm/cacheflush.c          | 13 ++++++++-----
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
index b86ac3a4653a..3c18d956c970 100644
--- a/arch/riscv/include/asm/cacheflush.h
+++ b/arch/riscv/include/asm/cacheflush.h
@@ -100,6 +100,6 @@ void flush_icache_all(void);
 /*
  * Bits in sys_riscv_flush_icache()'s flags argument.
  */
-#define SYS_RISCV_FLUSH_ICACHE_LOCAL 1UL
+#define SYS_RISCV_FLUSH_ICACHE_LOCAL 1UL /* ignored */
 
 #endif /* _ASM_RISCV_CACHEFLUSH_H */
diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index 8f1134715fec..4b6ecc3431e2 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -17,7 +17,7 @@ void flush_icache_all(void)
 	sbi_remote_fence_i(NULL);
 }
 
-static void flush_icache_mm(bool local)
+static void flush_icache_mm(void)
 {
 	unsigned int cpu = get_cpu();
 
@@ -36,8 +36,7 @@ static void flush_icache_mm(bool local)
 	 * still need to order this hart's writes with flush_icache_deferred().
 	 */
 	cpu = get_cpu();
-	if (local ||
-	    cpumask_any_but(mm_cpumask(current->mm), cpu) >= nr_cpu_ids) {
+	if (cpumask_any_but(mm_cpumask(current->mm), cpu) >= nr_cpu_ids) {
 		local_flush_icache_all();
 		smp_mb();
 	} else {
@@ -50,7 +49,7 @@ static void flush_icache_mm(bool local)
 	put_cpu();
 }
 #else
-#define flush_icache_mm(local)	flush_icache_all()
+#define flush_icache_mm()	flush_icache_all()
 #endif /* CONFIG_SMP */
 
 /*
@@ -72,6 +71,10 @@ static void flush_icache_mm(bool local)
  * remove flush for harts that are not currently executing a MM context and
  * instead schedule a deferred local instruction cache flush to be performed
  * before execution resumes on each hart.
+ *
+ * Note that we ignore the SYS_RISCV_FLUSH_ICACHE_LOCAL flag, as there is
+ * absolutely not way to ensure the local CPU is still the same by the time we
+ * return from the syscall.
  */
 SYSCALL_DEFINE3(riscv_flush_icache, uintptr_t, start, uintptr_t, end,
 		unsigned long, flags)
@@ -79,7 +82,7 @@ SYSCALL_DEFINE3(riscv_flush_icache, uintptr_t, start, uintptr_t, end,
 	/* Check the reserved flags. */
 	if (unlikely(flags & ~SYS_RISCV_FLUSH_ICACHE_LOCAL))
 		return -EINVAL;
-	flush_icache_mm(flags & SYS_RISCV_FLUSH_ICACHE_LOCAL);
+	flush_icache_mm();
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
