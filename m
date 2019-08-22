Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3938A98BD0
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 08:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6s6yhIeKowiMIbF7h62ESFq0r+ccvHlU5CfKXkE2ZIk=; b=fGXQ+B3c9fIBWA
	apdifkGCsH1Najn1mxq3Lt2QvpWGZsn2MhlKcda9ByyDqfBmZzKmkLywAXsISvs0vCLohH98weid9
	sk9hUo5MN9lcLLm6W7HOGJ/k2BPvGOYGmD1H3uoudCFFV9Dmo+p3UMGCyGTiGkFnKgOvBE7yK7zqh
	TmcAQDHVdpQBL9V3sKybkT+fbtAyNp4iI8AeqhyjszWW2jB+zC038/s4Ek7i9QqCxU+/b81UuKqb2
	c9P10XviiV9BuPeocuzogb6+q9I70Uh1pgNvrvdWzJMf14WcF/XGO4cmFQ1hIDy/uM49InUMNzA3s
	TdEjDX5A3lVjDDjlLC8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h1Q-0008VC-MO; Thu, 22 Aug 2019 06:56:36 +0000
Received: from rap-us.hgst.com ([199.255.44.250] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h1G-0008Mp-F2; Thu, 22 Aug 2019 06:56:26 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 5/8] riscv: actually clear icache_stale_mask for all harts in
 mm_cpumask
Date: Thu, 22 Aug 2019 15:56:09 +0900
Message-Id: <20190822065612.28634-6-hch@lst.de>
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

The comment in flush_icache_mm claim that we mark all harts that we
are sending the remote sfence.i to are marked as flushed, but we only
actually do this for the current one.  Fix the code to actually mark
all.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/mm/cacheflush.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index eed715de4795..dacf72f94d12 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -20,21 +20,23 @@ void flush_icache_all(void)
 static void flush_icache_mm(bool local)
 {
 	unsigned int cpu;
-	cpumask_t others, hmask, *mask;
+	cpumask_t others, hmask;
 
 	preempt_disable();
 
-	/* Mark every hart's icache as needing a flush for this MM. */
-	mask = &current->mm->context.icache_stale_mask;
-	cpumask_setall(mask);
+	/*
+	 * Mark the I$ for all harts not concurrently executing as needing a
+	 * flush for this MM.
+	 */
+	cpumask_andnot(&current->mm->context.icache_stale_mask,
+		       cpu_possible_mask, mm_cpumask(current->mm));
+
 	/* Flush this hart's I$ now, and mark it as flushed. */
 	cpu = smp_processor_id();
-	cpumask_clear_cpu(cpu, mask);
 	local_flush_icache_all();
 
 	/*
-	 * Flush the I$ of other harts concurrently executing, and mark them as
-	 * flushed.
+	 * Flush the I$ of other harts concurrently executing.
 	 */
 	cpumask_andnot(&others, mm_cpumask(current->mm), cpumask_of(cpu));
 	local |= cpumask_empty(&others);
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
