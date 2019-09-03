Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A69A6552
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 11:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bhyj2AKA3xwXAemUQiqPpXRDLgXC8gBY6L71cuht2sY=; b=Wwsnxj8noy2brW
	34WMJ3+8UxNWxm5pMIw/bk84lJR5m3zkQNoSpNJl6SwIeAuhe6N/v52WIG7n/z4JKFaX/ITPTmtxW
	doh2w6KvniYYY46xb5sKJWrcV1PeHoTYmZI0o9bqJPFBVvLZKvLFc+1LVJLfNWfFx7fIy3Z9rTnQD
	5A18Q9VcfbDDS+mh/3vs2gDYtC/yuFk5gb6viOU8W71nfogpJhKLE+OGjxlYRCPrA12y9NFgVu352
	Q14fcdyebmfOhTtbflxS8NEnlMsO1XhAxV6djka98QqhYeeneST8jA6SGh9GWwjMuw38T1Pgx8oav
	7oHzHl6nav480OHoXpmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55CD-0005Gn-MF; Tue, 03 Sep 2019 09:33:53 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i55BW-0004hd-PI; Tue, 03 Sep 2019 09:33:11 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 12/20] riscv: implement remote sfence.i using IPIs
Date: Tue,  3 Sep 2019 11:32:31 +0200
Message-Id: <20190903093239.21278-13-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903093239.21278-1-hch@lst.de>
References: <20190903093239.21278-1-hch@lst.de>
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The RISC-V ISA only supports flushing the instruction cache for the
local CPU core.  Currently we always offload the remote TLB flushing to
the SBI, which then issues an IPI under the hoods.  But with M-mode
we do not have an SBI so we have to do it ourselves.   IPI to the
other nodes using the existing kernel helpers instead if we have
native clint support and thus can IPI directly from the kernel.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/include/asm/sbi.h |  3 +++
 arch/riscv/mm/cacheflush.c   | 24 ++++++++++++++++++------
 2 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index b167af3e7470..0cb74eccc73f 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -94,5 +94,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 {
 	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
 }
+#else /* CONFIG_RISCV_SBI */
+/* stub to for code is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
+void sbi_remote_fence_i(const unsigned long *hart_mask);
 #endif /* CONFIG_RISCV_SBI */
 #endif /* _ASM_RISCV_SBI_H */
diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index 3f15938dec89..794c9ab256eb 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -10,9 +10,17 @@
 
 #include <asm/sbi.h>
 
+static void ipi_remote_fence_i(void *info)
+{
+	return local_flush_icache_all();
+}
+
 void flush_icache_all(void)
 {
-	sbi_remote_fence_i(NULL);
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		sbi_remote_fence_i(NULL);
+	else
+		on_each_cpu(ipi_remote_fence_i, NULL, 1);
 }
 
 /*
@@ -28,7 +36,7 @@ void flush_icache_all(void)
 void flush_icache_mm(struct mm_struct *mm, bool local)
 {
 	unsigned int cpu;
-	cpumask_t others, hmask, *mask;
+	cpumask_t others, *mask;
 
 	preempt_disable();
 
@@ -46,10 +54,7 @@ void flush_icache_mm(struct mm_struct *mm, bool local)
 	 */
 	cpumask_andnot(&others, mm_cpumask(mm), cpumask_of(cpu));
 	local |= cpumask_empty(&others);
-	if (mm != current->active_mm || !local) {
-		riscv_cpuid_to_hartid_mask(&others, &hmask);
-		sbi_remote_fence_i(hmask.bits);
-	} else {
+	if (mm == current->active_mm && local) {
 		/*
 		 * It's assumed that at least one strongly ordered operation is
 		 * performed on this hart between setting a hart's cpumask bit
@@ -59,6 +64,13 @@ void flush_icache_mm(struct mm_struct *mm, bool local)
 		 * with flush_icache_deferred().
 		 */
 		smp_mb();
+	} else if (IS_ENABLED(CONFIG_RISCV_SBI)) {
+		cpumask_t hartid_mask;
+
+		riscv_cpuid_to_hartid_mask(&others, &hartid_mask);
+		sbi_remote_fence_i(cpumask_bits(&hartid_mask));
+	} else {
+		on_each_cpu_mask(&others, ipi_remote_fence_i, NULL, 1);
 	}
 
 	preempt_enable();
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
