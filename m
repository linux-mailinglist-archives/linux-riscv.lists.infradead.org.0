Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FFF11273
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 07:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5o/FyBx8Gm6ss0gw1Kso+7Glt688gvpAu/kob7FI9A=; b=JiRunVl7fHZ05o
	9GR2niHT1VhdJjd7PnRuWDMBQm93GFA+/7P5Xv0LC8ivYeQKg+QngCELw3GXNBaJITnI7hdfXVvE/
	gMUDlcaQB2SRpfpU11D9xuOLYnJc1kQeJlMgmtduQNL+djsZowWx62KWhGf94bYrj04VMDBOl84AI
	04vPOkEgQyS1CUR2/QgIiH/bDN8/fYT4EEIvkvHJXy0voboR0etNmOQ2L3lToijE3XcdiHvybLqoE
	BzQnH9JPCnKsX3Hr/WJjhY5VZ8z0pRLoWOjPuPhHo1cCpdYuFfAZXzxNdll9wfbzw5mke66MDJvHG
	6sc/nGvnA+dmo23TX1Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM3rp-0000Ji-NF; Thu, 02 May 2019 05:02:45 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM3rl-0000FO-TF
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 05:02:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556773362; x=1588309362;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R2kn8Hnf+2huJg5eK64kcJ1VLqW+CKWjBk7vutYyrAM=;
 b=UGMfjE4IBAM539GHlFQJe8PNh+AzO7ZT9XKI+8VO+gQ7fypwyFo9CAtI
 DbSpETwWgYr4ZRfc1YytE0Z7fMao3D4GDxD3Yuw9nLBliM/bepIlgsNrl
 fyn/BHk5elhpXlo8x5RcnLoGzfsYFnYvZkIin80qFGOOKWDbLHvmP2atI
 lyiOseRMoM1cD6VhRaOa7MisrVReVAkErc6QRdNzt9gq7rBK0efu6Bf1L
 7eGsD6lS5DSAImF58nrEYURrqVfGRni4i21VH2uYdHF8eZzLaRh19sqmH
 WdvLEOA41Dq+DRMtbweqVBbrZGyzut32kN2z1I9oAn1nQiK7OBLL4LAWq g==;
X-IronPort-AV: E=Sophos;i="5.60,420,1549900800"; d="scan'208";a="107321542"
Received: from mail-bn3nam04lp2053.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.53])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2019 13:02:41 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R2kn8Hnf+2huJg5eK64kcJ1VLqW+CKWjBk7vutYyrAM=;
 b=Dtrp7XP5jlYPP4hw2sNbP5cV2VSDUt635njmDKxejKAXXOf3MmRu1t1iMMTKp2WEGwK4dsF0QJZVDdK0f1wb8hfrAN8WtwWAD7vUnp1ENmBjWqeHXOSXtBRCyHrNJjLg9Vj9vxknTEQv34EO8qu5LdLZgr53/memzUdKp5cXsJ4=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5582.namprd04.prod.outlook.com (20.178.248.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 2 May 2019 05:02:39 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::c500:5fd2:9194:e38]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::c500:5fd2:9194:e38%3]) with mapi id 15.20.1835.015; Thu, 2 May 2019
 05:02:39 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v4 2/2] RISC-V: Setup initial page tables in two stages
Thread-Topic: [PATCH v4 2/2] RISC-V: Setup initial page tables in two stages
Thread-Index: AQHVAKRDJGtbwJU08UqZEJU5BFR/cQ==
Date: Thu, 2 May 2019 05:02:38 +0000
Message-ID: <20190502050206.23373-3-anup.patel@wdc.com>
References: <20190502050206.23373-1-anup.patel@wdc.com>
In-Reply-To: <20190502050206.23373-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0049.namprd07.prod.outlook.com
 (2603:10b6:a03:60::26) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3e497745-df5c-4622-fb8b-08d6cebb65da
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5582; 
x-ms-traffictypediagnostic: MN2PR04MB5582:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB5582F74F7CF561C44922BC5F8D340@MN2PR04MB5582.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(376002)(39860400002)(396003)(346002)(189003)(199004)(5660300002)(1076003)(6436002)(486006)(305945005)(66066001)(476003)(71200400001)(71190400001)(26005)(44832011)(81156014)(86362001)(81166006)(8676002)(11346002)(102836004)(54906003)(446003)(30864003)(2171002)(25786009)(186003)(110136005)(316002)(6486002)(386003)(14444005)(50226002)(72206003)(6506007)(8936002)(53936002)(256004)(73956011)(36756003)(53946003)(76176011)(3846002)(6116002)(2906002)(4326008)(68736007)(2616005)(66946007)(99286004)(7736002)(14454004)(6512007)(478600001)(66446008)(64756008)(66556008)(66476007)(52116002)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5582;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lgO/GKn8Sr+DJMNMf3tR7j9AyD9CgtchYrR5/bL3t7uyhDKo+cijz//vbtn9UUycBRi06HVTgm4do4F4AHFZAC65BAt2gwO0ABJVVfe9UySNs4aesjmInuN/PHo8TDxNwgvVJbx1II4HOnqU5fZ4ZTuoyOjVb6Pe1nIJuxJEkSjZ5itCoHvHT2dUsgz3f4NasF02XC0Yk7WBqkVeYSWnG4hkxXTg45/fBBQIPllWnxTENnL3bp7eBWmMDHP4SqcqEy+PRyrm6Mu0Qhsh37qezDE4h79JZ0lhzSxXtajTyjHrIPi30GaAA+aF/+G8dbmVa4tigcwRKnkrX4+D/mplBsC7ACKLq2xSvXU9CRrlC6y3pRTSswVCLkS5XmrVyDXclnuESy0TqzmiTB/EbSSg94VX/RpwmffzFtscpfFKYCc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e497745-df5c-4622-fb8b-08d6cebb65da
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 05:02:38.8774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5582
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_220242_041309_51A5C6F7 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, the setup_vm() does initial page table setup in one-shot
very early before enabling MMU. Due to this, the setup_vm() has to map
all possible kernel virtual addresses since it does not know size and
location of RAM. This means we have kernel mappings for non-existent
RAM and any buggy driver (or kernel) code doing out-of-bound access
to RAM will not fault and cause underterministic behaviour.

Further, the setup_vm() creates PMD mappings (i.e. 2M mappings) for
RV64 systems. This means for PAGE_OFFSET=0xffffffe000000000 (i.e.
MAXPHYSMEM_128GB=y), the setup_vm() will require 129 pages (i.e.
516 KB) of memory for initial page tables which is never freed. The
memory required for initial page tables will further increase if
we chose a lower value of PAGE_OFFSET (e.g. 0xffffff0000000000)

This patch implements two-staged initial page table setup, as follows:
1. Early (i.e. setup_vm()): This stage maps kernel image and DTB in
a early page table (i.e. early_pg_dir). The early_pg_dir will be used
only by boot HART so it can be freed as-part of init memory free-up.
2. Final (i.e. setup_vm_final()): This stage maps all possible RAM
banks in the final page table (i.e. swapper_pg_dir). The boot HART
will start using swapper_pg_dir at the end of setup_vm_final(). All
non-boot HARTs directly use the swapper_pg_dir created by boot HART.

We have following advantages with this new approach:
1. Kernel mappings for non-existent RAM don't exists anymore.
2. Memory consumed by initial page tables is now indpendent of the
chosen PAGE_OFFSET.
3. Memory consumed by initial page tables on RV64 system is 2 pages
(i.e. 8 KB) which has significantly reduced and these pages will be
freed as-part of the init memory free-up.

The patch also provides a foundation for implementing strict kernel
mappings where we protect kernel text and rodata using PTE permissions.

Suggested-by: Mike Rapoport <rppt@linux.ibm.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/fixmap.h     |   5 +
 arch/riscv/include/asm/pgtable-64.h |   5 +
 arch/riscv/include/asm/pgtable.h    |   7 +
 arch/riscv/kernel/head.S            |  17 +-
 arch/riscv/kernel/setup.c           |   4 +-
 arch/riscv/mm/init.c                | 313 ++++++++++++++++++++++------
 6 files changed, 282 insertions(+), 69 deletions(-)

diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
index c207f6634b91..9c66033c3a54 100644
--- a/arch/riscv/include/asm/fixmap.h
+++ b/arch/riscv/include/asm/fixmap.h
@@ -21,6 +21,11 @@
  */
 enum fixed_addresses {
 	FIX_HOLE,
+#define FIX_FDT_SIZE	SZ_1M
+	FIX_FDT_END,
+	FIX_FDT = FIX_FDT_END + FIX_FDT_SIZE / PAGE_SIZE - 1,
+	FIX_PTE,
+	FIX_PMD,
 	FIX_EARLYCON_MEM_BASE,
 	__end_of_fixed_addresses
 };
diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 7aa0ea9bd8bb..56ecc3dc939d 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -78,6 +78,11 @@ static inline pmd_t pfn_pmd(unsigned long pfn, pgprot_t prot)
 	return __pmd((pfn << _PAGE_PFN_SHIFT) | pgprot_val(prot));
 }
 
+static inline unsigned long _pmd_pfn(pmd_t pmd)
+{
+	return pmd_val(pmd) >> _PAGE_PFN_SHIFT;
+}
+
 #define pmd_ERROR(e) \
 	pr_err("%s:%d: bad pmd %016lx.\n", __FILE__, __LINE__, pmd_val(e))
 
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 1141364d990e..3dfe7ba95acb 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -67,6 +67,8 @@
 #define PAGE_KERNEL		__pgprot(_PAGE_KERNEL)
 #define PAGE_KERNEL_EXEC	__pgprot(_PAGE_KERNEL | _PAGE_EXEC)
 
+#define PAGE_TABLE		__pgprot(_PAGE_TABLE)
+
 extern pgd_t swapper_pg_dir[];
 
 /* MAP_PRIVATE permissions: xwr (copy-on-write) */
@@ -127,6 +129,11 @@ static inline pgd_t pfn_pgd(unsigned long pfn, pgprot_t prot)
 	return __pgd((pfn << _PAGE_PFN_SHIFT) | pgprot_val(prot));
 }
 
+static inline unsigned long _pgd_pfn(pgd_t pgd)
+{
+	return pgd_val(pgd) >> _PAGE_PFN_SHIFT;
+}
+
 #define pgd_index(addr) (((addr) >> PGDIR_SHIFT) & (PTRS_PER_PGD - 1))
 
 /* Locate an entry in the page global directory */
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index fe884cd69abd..f94f89bc321f 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -62,7 +62,9 @@ clear_bss_done:
 
 	/* Initialize page tables and relocate to virtual addresses */
 	la sp, init_thread_union + THREAD_SIZE
+	mv a0, s1
 	call setup_vm
+	la a0, early_pg_dir
 	call relocate
 
 	/* Restore C environment */
@@ -82,18 +84,17 @@ clear_bss_done:
 relocate:
 	/* Relocate return address */
 	li a1, PAGE_OFFSET
-	la a0, _start
-	sub a1, a1, a0
+	la a2, _start
+	sub a1, a1, a2
 	add ra, ra, a1
 
 	/* Point stvec to virtual address of intruction after satp write */
-	la a0, 1f
-	add a0, a0, a1
-	csrw stvec, a0
+	la a2, 1f
+	add a2, a2, a1
+	csrw stvec, a2
 
 	/* Compute satp for kernel page tables, but don't load it yet */
-	la a2, swapper_pg_dir
-	srl a2, a2, PAGE_SHIFT
+	srl a2, a0, PAGE_SHIFT
 	li a1, SATP_MODE
 	or a2, a2, a1
 
@@ -120,6 +121,7 @@ relocate:
 
 	/* Switch to kernel page tables */
 	csrw sptbr, a2
+	sfence.vma
 
 	ret
 
@@ -151,6 +153,7 @@ relocate:
 	fence
 
 	/* Enable virtual memory and relocate to virtual address */
+	la a0, swapper_pg_dir
 	call relocate
 
 	tail smp_callin
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 540a331d1376..79670458527d 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -30,6 +30,7 @@
 #include <linux/sched/task.h>
 #include <linux/swiotlb.h>
 
+#include <asm/fixmap.h>
 #include <asm/setup.h>
 #include <asm/sections.h>
 #include <asm/pgtable.h>
@@ -54,7 +55,8 @@ unsigned long boot_cpu_hartid;
 
 void __init parse_dtb(unsigned int hartid, void *dtb)
 {
-	if (early_init_dt_scan(__va(dtb)))
+	dtb = (void *)fix_to_virt(FIX_FDT) + ((uintptr_t)dtb & ~PAGE_MASK);
+	if (early_init_dt_scan(dtb))
 		return;
 
 	pr_err("No DTB passed to the kernel\n");
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index ab175b655933..4220743c49c5 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -1,14 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Regents of the University of California
- *
- *   This program is free software; you can redistribute it and/or
- *   modify it under the terms of the GNU General Public License
- *   as published by the Free Software Foundation, version 2.
- *
- *   This program is distributed in the hope that it will be useful,
- *   but WITHOUT ANY WARRANTY; without even the implied warranty of
- *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *   GNU General Public License for more details.
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
  */
 
 #include <linux/init.h>
@@ -49,13 +42,6 @@ void setup_zero_page(void)
 	memset((void *)empty_zero_page, 0, PAGE_SIZE);
 }
 
-void __init paging_init(void)
-{
-	setup_zero_page();
-	local_flush_tlb_all();
-	zone_sizes_init();
-}
-
 void __init mem_init(void)
 {
 #ifdef CONFIG_FLATMEM
@@ -162,16 +148,13 @@ unsigned long pfn_base;
 EXPORT_SYMBOL(pfn_base);
 
 pgd_t swapper_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
-pgd_t trampoline_pg_dir[PTRS_PER_PGD] __initdata __aligned(PAGE_SIZE);
+pgd_t trampoline_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
+pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
+static bool mmu_enabled;
 
-#ifndef __PAGETABLE_PMD_FOLDED
-#define NUM_SWAPPER_PMDS ((uintptr_t)-PAGE_OFFSET >> PGDIR_SHIFT)
-pmd_t swapper_pmd[PTRS_PER_PMD*((-PAGE_OFFSET)/PGDIR_SIZE)] __page_aligned_bss;
-pmd_t trampoline_pmd[PTRS_PER_PGD] __initdata __aligned(PAGE_SIZE);
-pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
-#endif
+#define MAX_EARLY_MAPPING_SIZE	SZ_128M
 
-pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
+pgd_t early_pg_dir[PTRS_PER_PGD] __initdata __aligned(PAGE_SIZE);
 
 void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
 {
@@ -190,6 +173,156 @@ void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
 	}
 }
 
+static pte_t *__init get_pte_virt(phys_addr_t pa)
+{
+	if (mmu_enabled) {
+		clear_fixmap(FIX_PTE);
+		return (pte_t *)set_fixmap_offset(FIX_PTE, pa);
+	} else {
+		return (pte_t *)((uintptr_t)pa);
+	}
+}
+
+static phys_addr_t __init alloc_pte(uintptr_t va)
+{
+	/*
+	 * We only create PMD or PGD early mappings so we
+	 * should never reach here with MMU disabled.
+	 */
+	BUG_ON(!mmu_enabled);
+
+	return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
+}
+
+static void __init create_pte_mapping(pte_t *ptep,
+				      uintptr_t va, phys_addr_t pa,
+				      phys_addr_t sz, pgprot_t prot)
+{
+	uintptr_t pte_index = pte_index(va);
+
+	BUG_ON(sz != PAGE_SIZE);
+
+	if (pte_none(ptep[pte_index]))
+		ptep[pte_index] = pfn_pte(PFN_DOWN(pa), prot);
+}
+
+#ifndef __PAGETABLE_PMD_FOLDED
+
+pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
+pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
+
+#if MAX_EARLY_MAPPING_SIZE < PGDIR_SIZE
+#define NUM_EARLY_PMDS		1UL
+#else
+#define NUM_EARLY_PMDS		(1UL + MAX_EARLY_MAPPING_SIZE / PGDIR_SIZE)
+#endif
+pmd_t early_pmd[PTRS_PER_PMD*NUM_EARLY_PMDS] __initdata __aligned(PAGE_SIZE);
+
+static pmd_t *__init get_pmd_virt(phys_addr_t pa)
+{
+	if (mmu_enabled) {
+		clear_fixmap(FIX_PMD);
+		return (pmd_t *)set_fixmap_offset(FIX_PMD, pa);
+	} else {
+		return (pmd_t *)((uintptr_t)pa);
+	}
+}
+
+static phys_addr_t __init alloc_pmd(uintptr_t va)
+{
+	uintptr_t pmd_num;
+
+	if (mmu_enabled)
+		return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
+
+	pmd_num = (va - PAGE_OFFSET) >> PGDIR_SHIFT;
+	BUG_ON(pmd_num >= NUM_EARLY_PMDS);
+	return (uintptr_t)&early_pmd[pmd_num * PTRS_PER_PMD];
+}
+
+static void __init create_pmd_mapping(pmd_t *pmdp,
+				      uintptr_t va, phys_addr_t pa,
+				      phys_addr_t sz, pgprot_t prot)
+{
+	pte_t *ptep;
+	phys_addr_t pte_phys;
+	uintptr_t pmd_index = pmd_index(va);
+
+	if (sz == PMD_SIZE) {
+		if (pmd_none(pmdp[pmd_index]))
+			pmdp[pmd_index] = pfn_pmd(PFN_DOWN(pa), prot);
+		return;
+	}
+
+	if (pmd_none(pmdp[pmd_index])) {
+		pte_phys = alloc_pte(va);
+		pmdp[pmd_index] = pfn_pmd(PFN_DOWN(pte_phys), PAGE_TABLE);
+		ptep = get_pte_virt(pte_phys);
+		memset(ptep, 0, PAGE_SIZE);
+	} else {
+		pte_phys = PFN_PHYS(_pmd_pfn(pmdp[pmd_index]));
+		ptep = get_pte_virt(pte_phys);
+	}
+
+	create_pte_mapping(ptep, va, pa, sz, prot);
+}
+
+#define pgd_next_t		pmd_t
+#define alloc_pgd_next(__va)	alloc_pmd(__va)
+#define get_pgd_next_virt(__pa)	get_pmd_virt(__pa)
+#define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)	\
+	create_pmd_mapping(__nextp, __va, __pa, __sz, __prot)
+#define PTE_PARENT_SIZE		PMD_SIZE
+#define fixmap_pgd_next		fixmap_pmd
+#else
+#define pgd_next_t		pte_t
+#define alloc_pgd_next(__va)	alloc_pte(__va)
+#define get_pgd_next_virt(__pa)	get_pte_virt(__pa)
+#define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)	\
+	create_pte_mapping(__nextp, __va, __pa, __sz, __prot)
+#define PTE_PARENT_SIZE		PGDIR_SIZE
+#define fixmap_pgd_next		fixmap_pte
+#endif
+
+static void __init create_pgd_mapping(pgd_t *pgdp,
+				      uintptr_t va, phys_addr_t pa,
+				      phys_addr_t sz, pgprot_t prot)
+{
+	pgd_next_t *nextp;
+	phys_addr_t next_phys;
+	uintptr_t pgd_index = pgd_index(va);
+
+	if (sz == PGDIR_SIZE) {
+		if (pgd_val(pgdp[pgd_index]) == 0)
+			pgdp[pgd_index] = pfn_pgd(PFN_DOWN(pa), prot);
+		return;
+	}
+
+	if (pgd_val(pgdp[pgd_index]) == 0) {
+		next_phys = alloc_pgd_next(va);
+		pgdp[pgd_index] = pfn_pgd(PFN_DOWN(next_phys), PAGE_TABLE);
+		nextp = get_pgd_next_virt(next_phys);
+		memset(nextp, 0, PAGE_SIZE);
+	} else {
+		next_phys = PFN_PHYS(_pgd_pfn(pgdp[pgd_index]));
+		nextp = get_pgd_next_virt(next_phys);
+	}
+
+	create_pgd_next_mapping(nextp, va, pa, sz, prot);
+}
+
+static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
+{
+	uintptr_t map_size = PAGE_SIZE;
+
+	/* Upgrade to PMD/PGDIR mappings whenever possible */
+	if (!(base & (PTE_PARENT_SIZE - 1)) &&
+	    !(size & (PTE_PARENT_SIZE - 1)))
+		map_size = PTE_PARENT_SIZE;
+
+	return map_size;
+}
+
 /*
  * setup_vm() is called from head.S with MMU-off.
  *
@@ -209,54 +342,112 @@ void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
 	"not use absolute addressing."
 #endif
 
-asmlinkage void __init setup_vm(void)
+asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 {
-	uintptr_t i;
-	uintptr_t pa = (uintptr_t) &_start;
-	pgprot_t prot = __pgprot(pgprot_val(PAGE_KERNEL) | _PAGE_EXEC);
+	uintptr_t va, end_va;
+	uintptr_t load_pa = (uintptr_t)(&_start);
+	uintptr_t load_sz = (uintptr_t)(&_end) - load_pa;
+	uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
+
+	va_pa_offset = PAGE_OFFSET - load_pa;
+	pfn_base = PFN_DOWN(load_pa);
 
-	va_pa_offset = PAGE_OFFSET - pa;
-	pfn_base = PFN_DOWN(pa);
+	/*
+	 * Enforce boot alignment requirements of RV32 and
+	 * RV64 by only allowing PMD or PGD mappings.
+	 */
+	BUG_ON(map_size == PAGE_SIZE);
 
 	/* Sanity check alignment and size */
 	BUG_ON((PAGE_OFFSET % PGDIR_SIZE) != 0);
-	BUG_ON((pa % (PAGE_SIZE * PTRS_PER_PTE)) != 0);
+	BUG_ON((load_pa % map_size) != 0);
+	BUG_ON(load_sz > MAX_EARLY_MAPPING_SIZE);
+
+	/* Setup early PGD for fixmap */
+	create_pgd_mapping(early_pg_dir, FIXADDR_START,
+			   (uintptr_t)fixmap_pgd_next, PGDIR_SIZE, PAGE_TABLE);
 
 #ifndef __PAGETABLE_PMD_FOLDED
-	trampoline_pg_dir[(PAGE_OFFSET >> PGDIR_SHIFT) % PTRS_PER_PGD] =
-		pfn_pgd(PFN_DOWN((uintptr_t)trampoline_pmd),
-			__pgprot(_PAGE_TABLE));
-	trampoline_pmd[0] = pfn_pmd(PFN_DOWN(pa), prot);
+	/* Setup fixmap PMD */
+	create_pmd_mapping(fixmap_pmd, FIXADDR_START,
+			   (uintptr_t)fixmap_pte, PMD_SIZE, PAGE_TABLE);
+	/* Setup trampoline PGD and PMD */
+	create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
+			   (uintptr_t)trampoline_pmd, PGDIR_SIZE, PAGE_TABLE);
+	create_pmd_mapping(trampoline_pmd, PAGE_OFFSET,
+			   load_pa, PMD_SIZE, PAGE_KERNEL_EXEC);
+#else
+	/* Setup trampoline PGD */
+	create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
+			   load_pa, PGDIR_SIZE, PAGE_KERNEL_EXEC);
+#endif
 
-	for (i = 0; i < (-PAGE_OFFSET)/PGDIR_SIZE; ++i) {
-		size_t o = (PAGE_OFFSET >> PGDIR_SHIFT) % PTRS_PER_PGD + i;
+	/*
+	 * Setup early PGD covering entire kernel which will allows
+	 * us to reach paging_init(). We map all memory banks later
+	 * in setup_vm_final() below.
+	 */
+	end_va = PAGE_OFFSET + load_sz;
+	for (va = PAGE_OFFSET; va < end_va; va += map_size)
+		create_pgd_mapping(early_pg_dir, va,
+				   load_pa + (va - PAGE_OFFSET),
+				   map_size, PAGE_KERNEL_EXEC);
+
+	/* Create fixed mapping for early FDT parsing */
+	end_va = __fix_to_virt(FIX_FDT) + FIX_FDT_SIZE;
+	for (va = __fix_to_virt(FIX_FDT); va < end_va; va += PAGE_SIZE)
+		create_pte_mapping(fixmap_pte, va,
+				   dtb_pa + (va - __fix_to_virt(FIX_FDT)),
+				   PAGE_SIZE, PAGE_KERNEL);
+}
 
-		swapper_pg_dir[o] =
-			pfn_pgd(PFN_DOWN((uintptr_t)swapper_pmd) + i,
-				__pgprot(_PAGE_TABLE));
-	}
-	for (i = 0; i < ARRAY_SIZE(swapper_pmd); i++)
-		swapper_pmd[i] = pfn_pmd(PFN_DOWN(pa + i * PMD_SIZE), prot);
-
-	swapper_pg_dir[(FIXADDR_START >> PGDIR_SHIFT) % PTRS_PER_PGD] =
-		pfn_pgd(PFN_DOWN((uintptr_t)fixmap_pmd),
-				__pgprot(_PAGE_TABLE));
-	fixmap_pmd[(FIXADDR_START >> PMD_SHIFT) % PTRS_PER_PMD] =
-		pfn_pmd(PFN_DOWN((uintptr_t)fixmap_pte),
-				__pgprot(_PAGE_TABLE));
-#else
-	trampoline_pg_dir[(PAGE_OFFSET >> PGDIR_SHIFT) % PTRS_PER_PGD] =
-		pfn_pgd(PFN_DOWN(pa), prot);
+static void __init setup_vm_final(void)
+{
+	uintptr_t va, map_size;
+	phys_addr_t pa, start, end;
+	struct memblock_region *reg;
+
+	/* Set mmu_enabled flag */
+	mmu_enabled = true;
 
-	for (i = 0; i < (-PAGE_OFFSET)/PGDIR_SIZE; ++i) {
-		size_t o = (PAGE_OFFSET >> PGDIR_SHIFT) % PTRS_PER_PGD + i;
+	/* Setup swapper PGD for fixmap */
+	create_pgd_mapping(swapper_pg_dir, FIXADDR_START,
+			   __pa(fixmap_pgd_next),
+			   PGDIR_SIZE, PAGE_TABLE);
 
-		swapper_pg_dir[o] =
-			pfn_pgd(PFN_DOWN(pa + i * PGDIR_SIZE), prot);
+	/* Map all memory banks */
+	for_each_memblock(memory, reg) {
+		start = reg->base;
+		end = start + reg->size;
+
+		if (start >= end)
+			break;
+		if (memblock_is_nomap(reg))
+			continue;
+		if (start <= __pa(PAGE_OFFSET) &&
+		    __pa(PAGE_OFFSET) < end)
+			start = __pa(PAGE_OFFSET);
+
+		map_size = best_map_size(start, end - start);
+		for (pa = start; pa < end; pa += map_size) {
+			va = (uintptr_t)__va(pa);
+			create_pgd_mapping(swapper_pg_dir, va, pa,
+					   map_size, PAGE_KERNEL_EXEC);
+		}
 	}
 
-	swapper_pg_dir[(FIXADDR_START >> PGDIR_SHIFT) % PTRS_PER_PGD] =
-		pfn_pgd(PFN_DOWN((uintptr_t)fixmap_pte),
-				__pgprot(_PAGE_TABLE));
-#endif
+	/* Clear fixmap PTE and PMD mappings */
+	clear_fixmap(FIX_PTE);
+	clear_fixmap(FIX_PMD);
+
+	/* Move to swapper page table */
+	csr_write(sptbr, PFN_DOWN(__pa(swapper_pg_dir)) | SATP_MODE);
+	local_flush_tlb_all();
+}
+
+void __init paging_init(void)
+{
+	setup_vm_final();
+	setup_zero_page();
+	zone_sizes_init();
 }
-- 
2.17.1

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
