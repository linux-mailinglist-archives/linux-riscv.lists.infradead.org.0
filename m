Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0660AA654C
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 11:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=el/TvExX0VuQN2wWbCJ6df7PuH7N/FiUIZI1nqmMLIU=; b=dBn+8rIlhHvKRK
	BMURmM62jwt5GKYKeGbKFBMgGW3HVcJygeDYVJSTEp4jMHGJ/14gs43L+wBLKXsXDP5vX23O4wsdB
	c4VziU8GnPW6zop+NFe+biRWQJuc78pEpqdFKDFUORl5fY+8rnajeOiGoUixnyF2HtqfbEdKIJL1g
	auNU6/AC3UZzBuIbzV4l0S1Pjtksh1lgLl/3FGuZFkW6EORiuoOdf8+FdBw2MyHXZzpSIj3j+SHgP
	lGCL0r6W1zmkFRlcORNF6SqFlIGIL0HT87ofSZqOW3HrsmOP0qCtFtNouhakup1sXWaOBR1kGYf8i
	HFpTyaqtl78vW4iGJ0vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55Bu-0004wI-0j; Tue, 03 Sep 2019 09:33:34 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i55BJ-0004UW-Fe; Tue, 03 Sep 2019 09:32:58 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 07/20] riscv: move the TLB flush logic out of line
Date: Tue,  3 Sep 2019 11:32:26 +0200
Message-Id: <20190903093239.21278-8-hch@lst.de>
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

The TLB flush logic is going to become more complex.  Start moving
it out of line.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/tlbflush.h | 37 ++++++-------------------------
 arch/riscv/mm/Makefile            |  3 +++
 arch/riscv/mm/tlbflush.c          | 35 +++++++++++++++++++++++++++++
 3 files changed, 45 insertions(+), 30 deletions(-)
 create mode 100644 arch/riscv/mm/tlbflush.c

diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index df31fe2ed09c..075a784c66c5 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -25,8 +25,13 @@ static inline void local_flush_tlb_page(unsigned long addr)
 	__asm__ __volatile__ ("sfence.vma %0" : : "r" (addr) : "memory");
 }
 
-#ifndef CONFIG_SMP
-
+#ifdef CONFIG_SMP
+void flush_tlb_all(void);
+void flush_tlb_mm(struct mm_struct *mm);
+void flush_tlb_page(struct vm_area_struct *vma, unsigned long addr);
+void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
+		unsigned long end);
+#else /* CONFIG_SMP */
 #define flush_tlb_all() local_flush_tlb_all()
 #define flush_tlb_page(vma, addr) local_flush_tlb_page(addr)
 
@@ -37,34 +42,6 @@ static inline void flush_tlb_range(struct vm_area_struct *vma,
 }
 
 #define flush_tlb_mm(mm) flush_tlb_all()
-
-#else /* CONFIG_SMP */
-
-#include <asm/sbi.h>
-
-static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
-				     unsigned long size)
-{
-	struct cpumask hmask;
-
-	riscv_cpuid_to_hartid_mask(cmask, &hmask);
-	sbi_remote_sfence_vma(hmask.bits, start, size);
-}
-
-#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
-
-#define flush_tlb_range(vma, start, end) \
-	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
-
-static inline void flush_tlb_page(struct vm_area_struct *vma,
-				  unsigned long addr)
-{
-	flush_tlb_range(vma, addr, addr + PAGE_SIZE);
-}
-
-#define flush_tlb_mm(mm)				\
-	remote_sfence_vma(mm_cpumask(mm), 0, -1)
-
 #endif /* CONFIG_SMP */
 
 /* Flush a range of kernel pages */
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 74055e1d6f21..9d9a17335686 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -13,4 +13,7 @@ obj-y += cacheflush.o
 obj-y += context.o
 obj-y += sifive_l2_cache.o
 
+ifeq ($(CONFIG_MMU),y)
+obj-$(CONFIG_SMP) += tlbflush.o
+endif
 obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
new file mode 100644
index 000000000000..df93b26f1b9d
--- /dev/null
+++ b/arch/riscv/mm/tlbflush.c
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/mm.h>
+#include <linux/smp.h>
+#include <asm/sbi.h>
+
+void flush_tlb_all(void)
+{
+	sbi_remote_sfence_vma(NULL, 0, -1);
+}
+
+static void __sbi_tlb_flush_range(struct cpumask *cmask, unsigned long start,
+		unsigned long size)
+{
+	struct cpumask hmask;
+
+	riscv_cpuid_to_hartid_mask(cmask, &hmask);
+	sbi_remote_sfence_vma(hmask.bits, start, size);
+}
+
+void flush_tlb_mm(struct mm_struct *mm)
+{
+	__sbi_tlb_flush_range(mm_cpumask(mm), 0, -1);
+}
+
+void flush_tlb_page(struct vm_area_struct *vma, unsigned long addr)
+{
+	__sbi_tlb_flush_range(mm_cpumask(vma->vm_mm), addr, PAGE_SIZE);
+}
+
+void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
+		unsigned long end)
+{
+	__sbi_tlb_flush_range(mm_cpumask(vma->vm_mm), start, end - start);
+}
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
