Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05C3194BDA
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 23:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tUndswaCyVTfTo7pIRj4A9899g84EzlHFywXv7wf6Gw=; b=TwUl0zBAe1bd3i
	vyFgPyUCvOJ2ICSEjRIxyyZPrL/doWRyfTh5zAXuws9g1o4Nia0fKw9L7Hl8dJG6cFu6Y7hzhNYJg
	v+Gy7d2q8UCgztMcXqWnvAfIx2YFbnq4JD22HHtiZVwfu9lfDlkrqLVcCgNcFN03CEgzmn7YBdVOG
	D8oKUR2Yvp2RRrL8NNkjQMdP633KsCvY+/W/sHUf/3B7xbrO6O0jpMTS31m/m5ENqm3ig8G7gmTjM
	MmEkllFWsVXS8uex6DpXN3FeHlLkdmxxovqyzM2WCMQfFyoqLISPB0EOrKsVssftsKlrhRbW7P/v5
	jzySnP1kHskoIswRgBtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbPl-00082I-BN; Thu, 26 Mar 2020 22:55:53 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbPi-00081r-ES
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 22:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1585263351; x=1616799351;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mjWweq6vKQe1KU4jUKpwBak5e4w+99oGd+5jnkC15WI=;
 b=BcUNQdd/c+g92Fj7/og9p/fXtDSh58X5ZGaXuzzGHJXxAz7qTL61BcqN
 k+mKaJLwrFx61PK+OMZk2AVEutTvmuz1ih4tk7s9rIG4oGnRg7h651r94
 7nJVcxIhpHrSPYHk6BXmRhvmbt3gAquTA60i3dAyeIaQbJOIKRhiF0W0F
 3XnxAE90INFqvMEU3SKkPPdNVRZaVQ0WsgspmbkTHG+4HXs6RoYSWrSrV
 VacYlnT5Q7JwPUW4MpeIioqw1iCK/7vxTmQug6h/QEv+4GSzpC42QdAf+
 Y8KNln415wwebqDiRVpI47x9T5V2pER7xy9Yl33NGUElEWFyLWL31Rj2v w==;
IronPort-SDR: OQSZ+IObL6Dz1ka2n8LexpSQBEUdUcIUkTTEEDg4tOxtk246TcPBJLE8vmltg2xOefRXEVT4p6
 VMqMfWXteFry+eWsCiP4TPCI9d/Oi2jLv07JyUq4cnw9xldzFYALqgJjccgiGFJG4Ai3qx6cdZ
 RgAr2HPfmJi6jZWINvo5ddvBYCT3P5YVB/VpXAF5/G4BCY7ejtq3RjKvGYCZSr6ltv+LGITUxB
 h+ty7UzA2UViPnTktORZT00MVuLt1GiyPuv5zlpzXDInvfqlDIidlAfg8c8/D0bSrELkdwpQJW
 UMY=
X-IronPort-AV: E=Sophos;i="5.72,310,1580745600"; d="scan'208";a="137998494"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Mar 2020 06:55:49 +0800
IronPort-SDR: 1tVUROhILVX12buA8TFK9TBq5Fw2v1Uvf7OY4oRofAqtSZ5CebDhHCblQlv0cCF7NWR2pkP4DB
 FmvsFKCepeGQDwegrimgcljCI47secMg0njvm34pdHT9A7mpBF0bqg7Q1wIcqAoiRl4z4plIou
 ScgtV/SAInDqIV0AJUVmOa568w+kTpjoZyYiWZXdfhzF3IlJ0oWbpmr9T3bldxL0Qsr+TxnWqu
 Cc5Ac7NpIKnfQjR3X/aJg1Aupp3lmLocJpJ2DOYemW9jqU0cJCmbsRDjt7canltzc4MMMK0nlw
 N/QvYUWKX1lxKuheXtKR9x5Z
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 15:46:50 -0700
IronPort-SDR: 4+eWXov323OMMXGWI5WnHrjL0z96tBhZxdEnOt+ic195WuK5Bv7pDhJGayUUV/ZljmpbR7M7SH
 u/k7jH1ItiL3HrU1jMtxN65CQAV3VyWLfPKdOkkFCaQ61yv5iui1cvVnGOS79l3a8YiLU01nue
 ADzzJ7L4QPHq8BCEk8yjkXGyAlo0RSb0qksCfegmkGGas0vnEXy1wb8cJLU+2cwgTsY7mARiAS
 kYybxKPO17BeuzZn0IpJWDudQOh43o9YpvhgzOecTb+HYGtRrV3Omne0bweFfcnAvfuBsGEXtQ
 MyA=
WDCIronportException: Internal
Received: from 6hj08h2.ad.shared (HELO yoda.hgst.com) ([10.86.54.191])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Mar 2020 15:55:48 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] RISC-V: Move all address space definition macros to one
 place
Date: Thu, 26 Mar 2020 15:55:46 -0700
Message-Id: <20200326225546.499343-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_155550_498784_E10E954B 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Thomas Gleixner <tglx@linutronix.de>, Nick Hu <nickhu@andestech.com>,
 Alexandre Ghiti <alex@ghiti.fr>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 stable@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We get the following compilation error if CONFIG_SPARSEMEM_VMEMMAP is set.

---------------------------------------------------------------
./arch/riscv/include/asm/pgtable-64.h: In function ‘pud_page’:
./include/asm-generic/memory_model.h:54:29: error: ‘vmemmap’ undeclared
(first use in this function); did you mean ‘mem_map’?
 #define __pfn_to_page(pfn) (vmemmap + (pfn))
                             ^~~~~~~
./include/asm-generic/memory_model.h:82:21: note: in expansion of
macro ‘__pfn_to_page’

 #define pfn_to_page __pfn_to_page
                     ^~~~~~~~~~~~~
./arch/riscv/include/asm/pgtable-64.h:70:9: note: in expansion of macro
‘pfn_to_page’
  return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
---------------------------------------------------------------

Fix the compliation errors by moving all the address space definition
macros before including pgtable-64.h.

Cc: stable@vger.kernel.org
Fixes: 8ad8b72721d0 (riscv: Add KASAN support)

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/pgtable.h | 78 +++++++++++++++++---------------
 1 file changed, 41 insertions(+), 37 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index e43041519edd..393f2014dfee 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -19,6 +19,47 @@
 #include <asm/tlbflush.h>
 #include <linux/mm_types.h>
 
+#ifdef CONFIG_MMU
+
+#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
+#define VMALLOC_END      (PAGE_OFFSET - 1)
+#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
+
+#define BPF_JIT_REGION_SIZE	(SZ_128M)
+#define BPF_JIT_REGION_START	(PAGE_OFFSET - BPF_JIT_REGION_SIZE)
+#define BPF_JIT_REGION_END	(VMALLOC_END)
+
+/*
+ * Roughly size the vmemmap space to be large enough to fit enough
+ * struct pages to map half the virtual address space. Then
+ * position vmemmap directly below the VMALLOC region.
+ */
+#define VMEMMAP_SHIFT \
+	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
+#define VMEMMAP_SIZE	BIT(VMEMMAP_SHIFT)
+#define VMEMMAP_END	(VMALLOC_START - 1)
+#define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
+
+/*
+ * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if kernel
+ * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
+ */
+#define vmemmap		((struct page *)VMEMMAP_START)
+
+#define PCI_IO_SIZE      SZ_16M
+#define PCI_IO_END       VMEMMAP_START
+#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
+
+#define FIXADDR_TOP      PCI_IO_START
+#ifdef CONFIG_64BIT
+#define FIXADDR_SIZE     PMD_SIZE
+#else
+#define FIXADDR_SIZE     PGDIR_SIZE
+#endif
+#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
+
+#endif
+
 #ifdef CONFIG_64BIT
 #include <asm/pgtable-64.h>
 #else
@@ -90,31 +131,6 @@ extern pgd_t swapper_pg_dir[];
 #define __S110	PAGE_SHARED_EXEC
 #define __S111	PAGE_SHARED_EXEC
 
-#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
-#define VMALLOC_END      (PAGE_OFFSET - 1)
-#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
-
-#define BPF_JIT_REGION_SIZE	(SZ_128M)
-#define BPF_JIT_REGION_START	(PAGE_OFFSET - BPF_JIT_REGION_SIZE)
-#define BPF_JIT_REGION_END	(VMALLOC_END)
-
-/*
- * Roughly size the vmemmap space to be large enough to fit enough
- * struct pages to map half the virtual address space. Then
- * position vmemmap directly below the VMALLOC region.
- */
-#define VMEMMAP_SHIFT \
-	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
-#define VMEMMAP_SIZE	BIT(VMEMMAP_SHIFT)
-#define VMEMMAP_END	(VMALLOC_START - 1)
-#define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
-
-/*
- * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if kernel
- * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
- */
-#define vmemmap		((struct page *)VMEMMAP_START)
-
 static inline int pmd_present(pmd_t pmd)
 {
 	return (pmd_val(pmd) & (_PAGE_PRESENT | _PAGE_PROT_NONE));
@@ -432,18 +448,6 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 #define __pte_to_swp_entry(pte)	((swp_entry_t) { pte_val(pte) })
 #define __swp_entry_to_pte(x)	((pte_t) { (x).val })
 
-#define PCI_IO_SIZE      SZ_16M
-#define PCI_IO_END       VMEMMAP_START
-#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
-
-#define FIXADDR_TOP      PCI_IO_START
-#ifdef CONFIG_64BIT
-#define FIXADDR_SIZE     PMD_SIZE
-#else
-#define FIXADDR_SIZE     PGDIR_SIZE
-#endif
-#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
-
 /*
  * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
  * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
-- 
2.25.1


