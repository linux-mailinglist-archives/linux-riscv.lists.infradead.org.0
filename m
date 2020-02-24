Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F71A16B057
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Feb 2020 20:34:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kWiUMZeXkq5NgI1y+x1X7le7vdgokWuwiw5qUHD2zw8=; b=Uo+v0oE+I5Y/JK
	9lNnwm80u3m1duw++DDV2nQvHX8uDU+mpp1gIkvWCiFxoM9mIb+Y37j34h5wkvcCRWzOK+N5QZRxc
	Ygytp/CSMgoprmzaLydNuXq9DvUEyXN6Dx/VilUE03CFUHQkGKzEFuqxY4UaYEA8qFrIriyc6pUqw
	QHBAj4tDbIhtOzAVFLw7oY4RTNjOiU4joRFd1pnDSLgxI5SDis0XeqffuJ69AIMpeOQQzLIh6egFX
	tenXMbZZJxLZP2bw+sVVnX+0mGNP5jaVVIWFpG+CzXwdD4BPNlmIBJq9WCFV1+06Ploqu2iXVknZS
	E9fxn5KhdZcpQFdqw9NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JVA-0003RY-In; Mon, 24 Feb 2020 19:34:48 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JV7-0003Qs-HY
 for linux-riscv@lists.infradead.org; Mon, 24 Feb 2020 19:34:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582572885; x=1614108885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TaX3Wv7PyIziT4d1G8a+2bb+qyLwg4X9NtQlx1p7X3Q=;
 b=DwAJmcuTuJJUN4rEtL3ckXidlD5e1ZnVgGKxRsHxtqqhBy3VGpGqprQ4
 7fV0f6ONV3ejcoI83vVXyuFxAMnfc6V/WSi02mcGYOL23oXE+y2WZebn3
 EdyLq2FSO7qKfHn9YjAYkC9Z1MzLRCQezEMs57ZmZdey2HTZRUkWTNJuA
 ANycB4CLksAP6tVqgVacxObEgSOmVguksgklt0ILcSNA5X/C3ew+V+fZ+
 waKR1osihCzrcom3GFzuf5vYts6Fat2t/H0lx+TUC+5afnfRE8usZ6Dq7
 qZCfGbFM/U4Q6rTROYKwSDHFz6hww/Vq4hSdy78LJAWysFBoy6DNcJCzu w==;
IronPort-SDR: bEw+3QKdDDlHsmDmYdmTCaEs8iRkdJA72NbPFQUR8E9ghjOE6Z6P0W0mhtR6TF3RaAE6KqBBWx
 xK9mT6I5sbgaJ2W5DTlbTjHC2Bwa4wHgo9fjUgjU4BfNNgOW7x0ECeTo8C7rvlVj3d7FUbQLP0
 /P0Vx5w2SYRf33Rnc97AXEkA+HvhmBmvJ+u+dbSgLax14OWo6Wj0O5I/h4IyCV8Ck+VA8n5g7D
 KT4EFAQ6EkHVb488skhKUSO/DeWvmSsZllGVhILzoPQm0x7Nc/oZMVBIpwYJjbYx80xnZ2ROoE
 zwg=
X-IronPort-AV: E=Sophos;i="5.70,481,1574092800"; d="scan'208";a="130606599"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 25 Feb 2020 03:34:38 +0800
IronPort-SDR: TIwyB1dDrnqDuxgw1p/PXJrjH6SxnMJqAIZWsJksKuSEfJGwo5uf3hq9ov1cCmeIIoVC7FrooP
 qPDSZVkPuBglTv9iC45hWTuXZ8j7DGM1mKMjMVwH+UeSf4U4qXdQZxj6Kcx4Ac/t29kQ+IuN9o
 HF9+CWOqAYopV2tKIYd8u7O6t4zSRkHmyPKDfW3FYq5/X3UuIHWd583+BI36P0HzXYgNilR09+
 H/g1AfCHBXtuBfpI36Avex+hQYQE8GHA2JCuONKHcoJ3gOcXO9WZMbukAz8xb9chhsf9cG7/XX
 yPZKYJWivyDCZccFc5iFx6Dv
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 11:27:06 -0800
IronPort-SDR: LshLh2Ryp4MLHSTzrZvRnNagIEJVqT3vitq311Cg7HS3btSIzWem6KWLj2Y9gw6moLXBQD7fod
 jcDC6jdh97rNR4tF3uTDPierzwc9cnleC3BOAWeMZMjfvd9hoWCUqel08HYj3PvqoQQ0/j721I
 IfuZjo7wUx74Y1P2TBU09zonoUrf5FZ25qCiA4ecgvYJoG4c0oflw3guWuZsiAbYcKH2Zcp3Rw
 8Dqy89EHkMLPBGLKg4KkD6Kn5R5DqpW0Epb6tsw1zBCssis/eYU7PYuLHHPF0QPklXHpmNVslL
 cic=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 24 Feb 2020 11:34:37 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] RISC-V: Move all address space definition macros to one place
Date: Mon, 24 Feb 2020 11:34:36 -0800
Message-Id: <20200224193436.26860-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_113445_627269_4AFD31B6 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Nick Hu <nickhu@andestech.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>, stable@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

If both CONFIG_KASAN and CONFIG_SPARSEMEM_VMEMMAP are set, we get the
following compilation error.

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
---
 arch/riscv/include/asm/pgtable.h | 78 +++++++++++++++++---------------
 1 file changed, 41 insertions(+), 37 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 453afb0a570a..4f6ee48a42e8 100644
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
@@ -452,18 +468,6 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
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
2.25.0


