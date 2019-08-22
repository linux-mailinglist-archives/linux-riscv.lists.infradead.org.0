Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05334998B7
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 18:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e4stD8Or3Fsb3rgT5Gp0/Fag3mRlWUi2LlGsQyM8xaI=; b=qJmUDheRuanl+4
	h6yHBWxpSGYoidv9lavhdfVUbI9Gh/Olk+bMqqFV0oYB0zFNfd8fjwjJcgzfzutfyacAzIF3MLQC0
	c0AwWe4HRjUKX4Xe1ZjLdNfPWYmZVqcgQitGv3iShKoqBb5SlooBPJKF856/CmWv598ivZEiBljHE
	MR0KODvU17RU6xhvo9AzVxuK8BFUEdsMYv4LokoG82FC1VG2IliP31vS5tbNBGihz7NKKPi+UWgGo
	NJvdCMTEeX6aRUpH6L2olGl4xbgha2Fe0KKpDGCfg4yP+f9xzxmYSMIv90g2yPfws0BSU7zgyX1J2
	5AlK/jAUHf21L1LITfIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0pa1-0008Ja-6U; Thu, 22 Aug 2019 16:04:53 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0pZx-0008IB-0T
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 16:04:50 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1i0pZq-000720-27; Thu, 22 Aug 2019 10:04:44 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1i0pZo-0001Ct-AT; Thu, 22 Aug 2019 10:04:40 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>
Date: Thu, 22 Aug 2019 10:04:39 -0600
Message-Id: <20190822160439.4598-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, sbates@raithlin.com, hch@lst.de,
 logang@deltatee.com, aou@eecs.berkeley.edu, palmer@sifive.com,
 greentime.hu@sifive.com, andrew@sifive.com, olof@lixom.net,
 michaeljclark@mac.com, robh@kernel.org, zong@andestech.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH v5] RISC-V: Implement sparsemem
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_090449_102210_0999D29D 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Stephen Bates <sbates@raithlin.com>,
 Zong Li <zong@andestech.com>, Olof Johansson <olof@lixom.net>,
 Greentime Hu <greentime.hu@sifive.com>, Michael Clark <michaeljclark@mac.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch implements sparsemem support for risc-v which helps pave the
way for memory hotplug and eventually P2P support.

We introduce Kconfig options for virtual and physical address bits which
are used to calculate the size of the vmemmap and set the
MAX_PHYSMEM_BITS.

The vmemmap is located directly before the VMALLOC region and sized
such that we can allocate enough pages to populate all the virtual
address space in the system (similar to the way it's done in arm64).

During initialization, call memblocks_present() and sparse_init(),
and provide a stub for vmemmap_populate() (all of which is similar to
arm64).

[greentime.hu@sifive.com:
  fixed pfn_valid, FIXADDR_TOP and fixed a bug rebasing onto v5.3]
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Andrew Waterman <andrew@sifive.com>
Cc: Olof Johansson <olof@lixom.net>
Cc: Michael Clark <michaeljclark@mac.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Zong Li <zong@andestech.com>
---

Changes in v5:
 * Rebased onto v5.3-rc5 (required moving the initialization to
   after setup_vm_final() in paging_init())
 * Fixed FIXADDR_TOP value (per Greentime)
 * Use generic pfn_valid() function for sparsemem to fix a bug
   with having holes in memory (also Greentime)

Changes in v4:
 * Rebased onto v5.0-rc1
 * Changed the SECTION_SIZE_BITS to 27, per Nick Kossifidis

Changes in v3 (only sent the common patches):
 * Rebased on v4.20-rc1
 * Minor fixups
 * Collected Ack from Will Deacon

Changes in v2:
 * Rebase on v4.19-rc8
 * Move the STRUCT_PAGE_MAX_SHIFT define into a common header (near
   the definition of struct page). As suggested by Christoph.
 * Clean up the unnecessary nid variable in the memblocks_present()
   function, per Christoph.
 * Collected tags from Palmer and Catalin.

 arch/riscv/Kconfig                 | 20 ++++++++++++++++++++
 arch/riscv/include/asm/fixmap.h    |  2 +-
 arch/riscv/include/asm/page.h      |  2 ++
 arch/riscv/include/asm/pgtable.h   | 21 +++++++++++++++++----
 arch/riscv/include/asm/sparsemem.h | 11 +++++++++++
 arch/riscv/mm/init.c               | 10 ++++++++++
 6 files changed, 61 insertions(+), 5 deletions(-)
 create mode 100644 arch/riscv/include/asm/sparsemem.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 59a4727ecd6c..83faa929853c 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -62,12 +62,32 @@ config ZONE_DMA32
 	bool
 	default y if 64BIT

+config VA_BITS
+	int
+	default 32 if 32BIT
+	default 39 if 64BIT
+
+config PA_BITS
+	int
+	default 34 if 32BIT
+	default 56 if 64BIT
+
 config PAGE_OFFSET
 	hex
 	default 0xC0000000 if 32BIT && MAXPHYSMEM_2GB
 	default 0xffffffff80000000 if 64BIT && MAXPHYSMEM_2GB
 	default 0xffffffe000000000 if 64BIT && MAXPHYSMEM_128GB

+config ARCH_FLATMEM_ENABLE
+	def_bool y
+
+config ARCH_SPARSEMEM_ENABLE
+	def_bool y
+	select SPARSEMEM_VMEMMAP_ENABLE
+
+config ARCH_SELECT_MEMORY_MODEL
+	def_bool ARCH_SPARSEMEM_ENABLE
+
 config ARCH_WANT_GENERAL_HUGETLB
 	def_bool y

diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
index 9c66033c3a54..7b0259c044c9 100644
--- a/arch/riscv/include/asm/fixmap.h
+++ b/arch/riscv/include/asm/fixmap.h
@@ -31,7 +31,7 @@ enum fixed_addresses {
 };

 #define FIXADDR_SIZE		(__end_of_fixed_addresses * PAGE_SIZE)
-#define FIXADDR_TOP		(VMALLOC_START)
+#define FIXADDR_TOP		(VMEMMAP_START)
 #define FIXADDR_START		(FIXADDR_TOP - FIXADDR_SIZE)

 #define FIXMAP_PAGE_IO		PAGE_KERNEL
diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index 707e00a8430b..3db261c4810f 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -110,8 +110,10 @@ extern unsigned long min_low_pfn;
 #define page_to_bus(page)	(page_to_phys(page))
 #define phys_to_page(paddr)	(pfn_to_page(phys_to_pfn(paddr)))

+#ifdef CONFIG_FLATMEM
 #define pfn_valid(pfn) \
 	(((pfn) >= pfn_base) && (((pfn)-pfn_base) < max_mapnr))
+#endif

 #define ARCH_PFN_OFFSET		(pfn_base)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index a364aba23d55..dbc19e61ee66 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -83,6 +83,23 @@ extern pgd_t swapper_pg_dir[];
 #define __S110	PAGE_SHARED_EXEC
 #define __S111	PAGE_SHARED_EXEC

+#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
+#define VMALLOC_END      (PAGE_OFFSET - 1)
+#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
+
+/*
+ * Roughly size the vmemmap space to be large enough to fit enough
+ * struct pages to map half the virtual address space. Then
+ * position vmemmap directly below the VMALLOC region.
+ */
+#define VMEMMAP_SHIFT \
+	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
+#define VMEMMAP_SIZE	(1UL << VMEMMAP_SHIFT)
+#define VMEMMAP_END	(VMALLOC_START - 1)
+#define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
+
+#define vmemmap		((struct page *)VMEMMAP_START)
+
 /*
  * ZERO_PAGE is a global shared page that is always zero,
  * used for zero-mapped memory areas, etc.
@@ -416,10 +433,6 @@ static inline void pgtable_cache_init(void)
 	/* No page table caches to initialize */
 }

-#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
-#define VMALLOC_END      (PAGE_OFFSET - 1)
-#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
-
 /*
  * Task size is 0x4000000000 for RV64 or 0xb800000 for RV32.
  * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
diff --git a/arch/riscv/include/asm/sparsemem.h b/arch/riscv/include/asm/sparsemem.h
new file mode 100644
index 000000000000..b58ba2d9ed6e
--- /dev/null
+++ b/arch/riscv/include/asm/sparsemem.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_SPARSEMEM_H
+#define __ASM_SPARSEMEM_H
+
+#ifdef CONFIG_SPARSEMEM
+#define MAX_PHYSMEM_BITS	CONFIG_PA_BITS
+#define SECTION_SIZE_BITS	27
+#endif /* CONFIG_SPARSEMEM */
+
+#endif /* __ASM_SPARSEMEM_H */
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 42bf939693d3..73f40c9d3dee 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -442,6 +442,16 @@ static void __init setup_vm_final(void)
 void __init paging_init(void)
 {
 	setup_vm_final();
+	memblocks_present();
+	sparse_init();
 	setup_zero_page();
 	zone_sizes_init();
 }
+
+#ifdef CONFIG_SPARSEMEM
+int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
+			       struct vmem_altmap *altmap)
+{
+	return vmemmap_populate_basepages(start, end, node);
+}
+#endif
--
2.20.1

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
