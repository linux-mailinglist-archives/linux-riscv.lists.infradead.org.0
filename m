Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E130A6541
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 11:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0yRuP46rvaEiPjrmWlpTxLNwKKx68h5l4hv+AQblxI=; b=SAeFu5fwmlLon5
	xuijmMipcEMmX5htBlGAW1QQpqWQHypn2YZ68zvT3WnWAKN6FnYTvb+D6iKG1/TbDfv6lcq0pw54b
	3e3WCsCSVbKn1kCsThJmZQi37+ATll/bv2X5rckfD4Ch4sccYD4rGMvM1+UzeDRN5ozaQ/YaTl9uk
	AY2JuW0Z92Y8Vuh4IXZIOPsX0roIW+LwFaOZg0DXPI3xnwkdFv4GXpw4aKhFItyE+rBryCAPMs2pR
	8sCqiuj27E6SwVUToQDLmOSmamnZ15jdmT0fAe3vvX5yFsKkoUFQcbDcSVOWKpNVt4jgmNq9rtXuB
	prNUF4Q5PsLFMljJyCnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55BO-0004XQ-2Z; Tue, 03 Sep 2019 09:33:02 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i55BE-0004P4-OW; Tue, 03 Sep 2019 09:32:53 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 05/20] riscv: cleanup riscv_cpuid_to_hartid_mask
Date: Tue,  3 Sep 2019 11:32:24 +0200
Message-Id: <20190903093239.21278-6-hch@lst.de>
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
Cc: Atish Patra <atish.patra@wdc.com>, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Move the initial clearing of the mask from the callers to
riscv_cpuid_to_hartid_mask, and remove the unused !CONFIG_SMP stub.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/smp.h      | 6 ------
 arch/riscv/include/asm/tlbflush.h | 1 -
 arch/riscv/kernel/smp.c           | 1 +
 arch/riscv/mm/cacheflush.c        | 1 -
 4 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
index c6ed4d691def..a83451d73a4e 100644
--- a/arch/riscv/include/asm/smp.h
+++ b/arch/riscv/include/asm/smp.h
@@ -61,11 +61,5 @@ static inline unsigned long cpuid_to_hartid_map(int cpu)
 	return boot_cpu_hartid;
 }
 
-static inline void riscv_cpuid_to_hartid_mask(const struct cpumask *in,
-					      struct cpumask *out)
-{
-	cpumask_set_cpu(cpuid_to_hartid_map(0), out);
-}
-
 #endif /* CONFIG_SMP */
 #endif /* _ASM_RISCV_SMP_H */
diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index 4d9bbe8438bf..df31fe2ed09c 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -47,7 +47,6 @@ static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
 {
 	struct cpumask hmask;
 
-	cpumask_clear(&hmask);
 	riscv_cpuid_to_hartid_mask(cmask, &hmask);
 	sbi_remote_sfence_vma(hmask.bits, start, size);
 }
diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index a3715d621f60..3836760d7aaf 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -56,6 +56,7 @@ void riscv_cpuid_to_hartid_mask(const struct cpumask *in, struct cpumask *out)
 {
 	int cpu;
 
+	cpumask_clear(out);
 	for_each_cpu(cpu, in)
 		cpumask_set_cpu(cpuid_to_hartid_map(cpu), out);
 }
diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index 9ebcff8ba263..3f15938dec89 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -47,7 +47,6 @@ void flush_icache_mm(struct mm_struct *mm, bool local)
 	cpumask_andnot(&others, mm_cpumask(mm), cpumask_of(cpu));
 	local |= cpumask_empty(&others);
 	if (mm != current->active_mm || !local) {
-		cpumask_clear(&hmask);
 		riscv_cpuid_to_hartid_mask(&others, &hmask);
 		sbi_remote_fence_i(hmask.bits);
 	} else {
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
