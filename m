Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A148618E83A
	for <lists+linux-riscv@lfdr.de>; Sun, 22 Mar 2020 12:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpUiJcARW2Io9xZpVdqwriEoIZHr45spqI4RYiBCM2Q=; b=ehKrbwK1tSw5zq
	x8HH+aphQRl1wy1komu/NQapWbDWAiSK1D/bN+n5W8AHwk5luPdnlC24MqEqTMvpC9WSloG/tgvyx
	RrXbQRnAfivijCJqraYruFet68Lo7VcRs+9AJpw9Cvwu+r9/3QSN+vEeKNWI3VyNnVAjvZXtzCjms
	ZEVDaj4TiakhhNbk4X9lyW8IA1zxH0Tj2I37d1XPRp/MpYU6qfhFUCOQvzOJZAE/evLMn0QvtSZY4
	Rl6z71PdV0MM9GFm/K6AEg+uwxiY+iSh7poR1OEgQwfy0D4ZJTIuM3peTJBUlRTwSp88tAJazQHDN
	jjLApM0DAotaoERoD1qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFyNT-0007RI-C6; Sun, 22 Mar 2020 11:02:47 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFyNQ-0007Qk-7L
 for linux-riscv@lists.infradead.org; Sun, 22 Mar 2020 11:02:45 +0000
X-Originating-IP: 2.7.45.25
Received: from localhost.localdomain (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 1BE05C0002;
 Sun, 22 Mar 2020 11:02:39 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/7] riscv: Allow to dynamically define VA_BITS
Date: Sun, 22 Mar 2020 07:00:23 -0400
Message-Id: <20200322110028.18279-3-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200322110028.18279-1-alex@ghiti.fr>
References: <20200322110028.18279-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_040244_401520_017C9452 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

With 4-level page table folding at runtime, we don't know at compile time
the size of the virtual address space so we must set VA_BITS dynamically
so that sparsemem reserves the right amount of memory for struct pages.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
---
 arch/riscv/Kconfig                 | 10 ----------
 arch/riscv/include/asm/pgtable.h   | 10 +++++++++-
 arch/riscv/include/asm/sparsemem.h |  2 +-
 3 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index f5f3d474504d..8e4b1cbcf2c2 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -99,16 +99,6 @@ config ZONE_DMA32
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
index 185ffe3723ec..dce401eed1d3 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -26,6 +26,14 @@
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
@@ -108,7 +116,7 @@ extern pgd_t swapper_pg_dir[];
  * position vmemmap directly below the VMALLOC region.
  */
 #define VMEMMAP_SHIFT \
-	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
+	(VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
 #define VMEMMAP_SIZE	BIT(VMEMMAP_SHIFT)
 #define VMEMMAP_END	(VMALLOC_START - 1)
 #define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
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


