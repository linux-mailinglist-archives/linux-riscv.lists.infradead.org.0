Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4158F1DFDCD
	for <lists+linux-riscv@lfdr.de>; Sun, 24 May 2020 11:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MY/h7IoSeIQPmJq5uULsDFnQ1w82OoVuCQPVexGGPSE=; b=L55PITb2vjV3g4
	6oH6iwk3GAp1+OdBM7CcLVPotkh36as+b/DhcR2AfJsd9R0qWidn0iWYEXmzo16F+fR+lkbB1DVG8
	RcBgQhcfSy0J/uwEuPpO4o3iggFQ2LA7dEFGwNPv66crxACCHFMozA6VzdNRYs8sgc/vQFr8IpdKB
	ALB4TUBlTWEv5yGzB4WSYPjudhCCAgrT1p82e4dnoAtXIw1w5419AAK8IbaPk0yz11WD3PqTjCElY
	lozj+ojksjwBtY6C49dH0CPQ1zklbkOFY7rius9K1FxmlkNgViY9dQnhk2NKeDQjYxQHGfsHariaV
	dqD8MlrOYoG6aH9lcuGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcmg8-0001la-6B; Sun, 24 May 2020 09:12:20 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcmg5-0001lG-1T
 for linux-riscv@lists.infradead.org; Sun, 24 May 2020 09:12:18 +0000
X-Originating-IP: 90.112.45.105
Received: from localhost.localdomain
 (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr [90.112.45.105])
 (Authenticated sender: alex@ghiti.fr)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0F5F320002;
 Sun, 24 May 2020 09:12:13 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/8] riscv: Allow to dynamically define VA_BITS
Date: Sun, 24 May 2020 05:10:02 -0400
Message-Id: <20200524091008.25587-3-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200524091008.25587-1-alex@ghiti.fr>
References: <20200524091008.25587-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_021217_218939_2143DF59 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

With 4-level page table folding at runtime, we don't know at compile time
the size of the virtual address space so we must set VA_BITS dynamically
so that sparsemem reserves the right amount of memory for struct pages.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig                 | 10 ----------
 arch/riscv/include/asm/pgtable.h   | 12 ++++++++++--
 arch/riscv/include/asm/sparsemem.h |  2 +-
 3 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 93127d5913fe..64b25a90d60f 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -101,16 +101,6 @@ config ZONE_DMA32
 	bool
 	default y if 64BIT
 
-config VA_BITS
-	int
-	default 32 if 32BIT
-	default 39 if 64BIT
-
-config PA_BITS
-	int
-	default 34 if 32BIT
-	default 56 if 64BIT
-
 config PAGE_OFFSET
 	hex
 	default 0xC0000000 if 32BIT && MAXPHYSMEM_2GB
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 25213cfaf680..8e96315b3366 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -41,7 +41,7 @@
  * position vmemmap directly below the VMALLOC region.
  */
 #define VMEMMAP_SHIFT \
-	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
+	(VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
 #define VMEMMAP_SIZE	BIT(VMEMMAP_SHIFT)
 #define VMEMMAP_END	(VMALLOC_START - 1)
 #define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
@@ -80,6 +80,14 @@
 #endif /* CONFIG_64BIT */
 
 #ifdef CONFIG_MMU
+#ifdef CONFIG_64BIT
+#define VA_BITS		39
+#define PA_BITS		56
+#else
+#define VA_BITS		32
+#define PA_BITS		34
+#endif
+
 /* Number of entries in the page global directory */
 #define PTRS_PER_PGD    (PAGE_SIZE / sizeof(pgd_t))
 /* Number of entries in the page table */
@@ -466,7 +474,7 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
  * and give the kernel the other (upper) half.
  */
 #ifdef CONFIG_64BIT
-#define KERN_VIRT_START	(-(BIT(CONFIG_VA_BITS)) + TASK_SIZE)
+#define KERN_VIRT_START	(-(BIT(VA_BITS)) + TASK_SIZE)
 #else
 #define KERN_VIRT_START	FIXADDR_START
 #endif
diff --git a/arch/riscv/include/asm/sparsemem.h b/arch/riscv/include/asm/sparsemem.h
index 45a7018a8118..f08d72155bc8 100644
--- a/arch/riscv/include/asm/sparsemem.h
+++ b/arch/riscv/include/asm/sparsemem.h
@@ -4,7 +4,7 @@
 #define _ASM_RISCV_SPARSEMEM_H
 
 #ifdef CONFIG_SPARSEMEM
-#define MAX_PHYSMEM_BITS	CONFIG_PA_BITS
+#define MAX_PHYSMEM_BITS	PA_BITS
 #define SECTION_SIZE_BITS	27
 #endif /* CONFIG_SPARSEMEM */
 
-- 
2.20.1


