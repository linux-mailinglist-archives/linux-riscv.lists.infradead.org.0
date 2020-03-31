Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003A0199261
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 11:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OUlrZC/jATrdMXw10aZ5qI0/2xnwzogUsRtOAkexaQE=; b=btw06Uzx8ELhiLoVKeEAlfMRy
	jK9IDipb7A1pktbY1oOiazuE+lwsppYPenF2xFUFwnrme2xsYD9ou5MnhGBwJK8oZdjtmanIILV5e
	ih8+iKTGRXFYO1J9grVDxd6JyKvASxIo5fYektttIvwyj26hN7VchqCxHeJ37Hcry5i0a2eYaR/Pe
	QjUUlJHMxMnctsXyrZxaFfmMmqLDXRDoHOT30fCl+m1gCszNTkl9jm4DOgWOS0ccJ0InhsjYVTP69
	hN3kQI/G3Mqc9Ufpf1ey9ZVg1caO0kalwShg2CNP2a1HyDyTUkbsLbeWxlzsoD29849JJpv/qClwh
	6Ui8aGjdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDLN-00060Z-LA; Tue, 31 Mar 2020 09:38:01 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDLJ-0005ze-9C
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 09:37:58 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id 02V9WGga065487;
 Tue, 31 Mar 2020 17:32:16 +0800 (GMT-8)
 (envelope-from tesheng@andestech.com)
Received: from atcsqa06.andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Tue, 31 Mar 2020
 17:33:08 +0800
From: Eric Lin <tesheng@andestech.com>
To: <linux-riscv@lists.infradead.org>
Subject: [PATCH 2/3] riscv/mm: Implement kmap() and kmap_atomic()
Date: Tue, 31 Mar 2020 17:32:40 +0800
Message-ID: <20200331093241.3728-3-tesheng@andestech.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20200331093241.3728-1-tesheng@andestech.com>
References: <20200331093241.3728-1-tesheng@andestech.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com 02V9WGga065487
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_023757_582439_B951A3D3 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: aou@eecs.berkeley.edu, gary@garyguo.net, alex@ghiti.fr,
 david.abdurachmanov@gmail.com, steven.price@arm.com,
 Alan Kao <alankao@andestech.com>, Anup.Patel@wdc.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, atish.patra@wdc.com,
 yash.shah@sifive.com, Eric Lin <tesheng@andestech.com>, palmer@dabbelt.com,
 green.hu@gmail.com, zong.li@sifive.com, paul.walmsley@sifive.com,
 akpm@linux-foundation.org, bp@suse.de, logang@deltatee.com, tglx@linutronix.de
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Both kmap() and kmap_atomic() help kernel to create
temporary mappings from a highmem page.

Be aware that use kmap() might put calling function to sleep
and it cannot use in interrupt context. kmap_atomic() is an
atomic version of kmap() which can be used in interrupt context
and it is faster than kmap() because it doesn't hold a lock.

Here we preserve some memory slots from fixmap region for
kmap_atomic() and kmap() will use pkmap region.

Signed-off-by: Eric Lin <tesheng@andestech.com>
Cc: Alan Kao <alankao@andestech.com>
---
 arch/riscv/include/asm/fixmap.h  |  9 +++-
 arch/riscv/include/asm/highmem.h | 30 +++++++++++++
 arch/riscv/include/asm/pgtable.h |  5 +++
 arch/riscv/mm/Makefile           |  1 +
 arch/riscv/mm/highmem.c          | 74 ++++++++++++++++++++++++++++++++
 5 files changed, 118 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/mm/highmem.c

diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
index 42d2c42f3cc9..8dedc2bf2917 100644
--- a/arch/riscv/include/asm/fixmap.h
+++ b/arch/riscv/include/asm/fixmap.h
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ * Copyright (C) 2020 Andes Technology Corporation
  */
 
 #ifndef _ASM_RISCV_FIXMAP_H
@@ -10,6 +11,7 @@
 #include <linux/sizes.h>
 #include <asm/page.h>
 #include <asm/pgtable.h>
+#include <asm/kmap_types.h>
 
 #ifdef CONFIG_MMU
 /*
@@ -28,7 +30,12 @@ enum fixed_addresses {
 	FIX_PTE,
 	FIX_PMD,
 	FIX_EARLYCON_MEM_BASE,
-	__end_of_fixed_addresses
+#ifdef CONFIG_HIGHMEM
+	FIX_KMAP_RESERVED,
+	FIX_KMAP_BEGIN,
+	FIX_KMAP_END = FIX_KMAP_BEGIN + (KM_TYPE_NR * NR_CPUS),
+#endif
+	__end_of_fixed_addresses,
 };
 
 #define FIXMAP_PAGE_IO		PAGE_KERNEL
diff --git a/arch/riscv/include/asm/highmem.h b/arch/riscv/include/asm/highmem.h
index 7fc79e58f607..ec7c83d55830 100644
--- a/arch/riscv/include/asm/highmem.h
+++ b/arch/riscv/include/asm/highmem.h
@@ -17,3 +17,33 @@
 #define PKMAP_NR(virt)	(((virt) - (PKMAP_BASE)) >> PAGE_SHIFT)
 #define PKMAP_ADDR(nr)	(PKMAP_BASE + ((nr) << PAGE_SHIFT))
 #define kmap_prot		PAGE_KERNEL
+
+static inline void flush_cache_kmaps(void)
+{
+	flush_cache_all();
+}
+
+/* Declarations for highmem.c */
+extern unsigned long highstart_pfn, highend_pfn;
+
+extern pte_t *pkmap_page_table;
+
+extern void *kmap_high(struct page *page);
+extern void kunmap_high(struct page *page);
+
+extern void kmap_init(void);
+
+/*
+ * The following functions are already defined by <linux/highmem.h>
+ * when CONFIG_HIGHMEM is not set.
+ */
+#ifdef CONFIG_HIGHMEM
+extern void *kmap(struct page *page);
+extern void kunmap(struct page *page);
+extern void *kmap_atomic(struct page *page);
+extern void __kunmap_atomic(void *kvaddr);
+extern void *kmap_atomic_pfn(unsigned long pfn);
+extern struct page *kmap_atomic_to_page(void *ptr);
+#endif
+
+#endif
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index d9a3769f1f4e..1a774d5a8bbc 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -200,6 +200,11 @@ static inline pgd_t *pgd_offset(const struct mm_struct *mm, unsigned long addr)
 /* Locate an entry in the kernel page global directory */
 #define pgd_offset_k(addr)      pgd_offset(&init_mm, (addr))
 
+#ifdef CONFIG_HIGHMEM
+/* Locate an entry in the second-level page table */
+#define pmd_off_k(addr)  pmd_offset((pud_t *)pgd_offset_k(addr), addr)
+#endif
+
 static inline struct page *pmd_page(pmd_t pmd)
 {
 	return pfn_to_page(pmd_val(pmd) >> _PAGE_PFN_SHIFT);
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 50b7af58c566..6f9305afc632 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_SMP) += tlbflush.o
 endif
 obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
 obj-$(CONFIG_KASAN)   += kasan_init.o
+obj-$(CONFIG_HIGHMEM) += highmem.o
 
 ifdef CONFIG_KASAN
 KASAN_SANITIZE_kasan_init.o := n
diff --git a/arch/riscv/mm/highmem.c b/arch/riscv/mm/highmem.c
new file mode 100644
index 000000000000..b01ebe34619e
--- /dev/null
+++ b/arch/riscv/mm/highmem.c
@@ -0,0 +1,74 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2005-2020 Andes Technology Corporation
+ */
+
+#include <linux/export.h>
+#include <linux/highmem.h>
+#include <linux/sched.h>
+#include <linux/smp.h>
+#include <linux/interrupt.h>
+#include <asm/fixmap.h>
+#include <asm/pgtable.h>
+#include <asm/tlbflush.h>
+
+void *kmap(struct page *page)
+{
+	unsigned long vaddr;
+
+	might_sleep();
+	if (!PageHighMem(page))
+		return page_address(page);
+	vaddr = (unsigned long)kmap_high(page);
+	return (void *)vaddr;
+}
+EXPORT_SYMBOL(kmap);
+
+void kunmap(struct page *page)
+{
+	BUG_ON(in_interrupt());
+	if (!PageHighMem(page))
+		return;
+	kunmap_high(page);
+}
+EXPORT_SYMBOL(kunmap);
+
+void *kmap_atomic(struct page *page)
+{
+	unsigned int idx;
+	unsigned long vaddr;
+	int type;
+	pte_t *ptep;
+
+	preempt_disable();
+	pagefault_disable();
+
+	if (!PageHighMem(page))
+		return page_address(page);
+
+	type = kmap_atomic_idx_push();
+
+	idx = type + KM_TYPE_NR * smp_processor_id();
+	vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);
+
+	ptep = pte_offset_kernel(pmd_off_k(vaddr), vaddr);
+	set_pte(ptep, mk_pte(page, kmap_prot));
+
+	return (void *)vaddr;
+}
+EXPORT_SYMBOL(kmap_atomic);
+
+void __kunmap_atomic(void *kvaddr)
+{
+	if (kvaddr >= (void *)FIXADDR_START && kvaddr < (void *)FIXADDR_TOP) {
+		unsigned long vaddr = (unsigned long)kvaddr;
+		pte_t *ptep;
+
+		kmap_atomic_idx_pop();
+		ptep = pte_offset_kernel(pmd_off_k(vaddr), vaddr);
+		set_pte(ptep, __pte(0));
+	}
+	pagefault_enable();
+	preempt_enable();
+}
+EXPORT_SYMBOL(__kunmap_atomic);
-- 
2.17.0


