Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D78038409
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 08:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HM1FsQ386NViE5Ia7gI+rGG38l1dNb3nR0BKnUb9lkk=; b=LGbyYGEor+rJUK
	179ORFssYMmoLltuBwesTAqDPmIt/oNb856riv6Py5qz5AXumk5Pqydg+0ITj6mjYY/jdWtDrNFBK
	d54IXZbDQpUKbTsFyhQSB7Yyx1TEolOEf9s117lFse74t7WQU+/KnRiA1572jIEgH2rXrQNPKf5y+
	xZfgC14e53SdIi/YEV23d1SWnahdd+g5+5XLF91zOMVRi6+TMIBBiRRXv0j0RI6gM9eDvpI7+VaH5
	YiFE0mYhxWLsTjLvS7e1ayaKUHpU2iCO+jnGHCJimN20l4GZs0m/GmBzsyd/4FYMwhgRCvJNNyZkr
	1sFppYR7fPsRWMf45i+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ7wc-0001Vs-P1; Fri, 07 Jun 2019 06:01:42 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ7wX-0001Sg-Hc
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 06:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559887297; x=1591423297;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hkfooRm+YqDFOX2UeODT1sUKAjQGpjOctDza3yvn9/Q=;
 b=CvvnQno6PrnuYuPYKIkyn3EyHvKoAWc1JKKphh5Bg1hr9ASg7Uhp+12h
 AEOZAKyAkIJw9gimsYddPWR7cqeQZmqNDeSgNeV6oi0+vNGhGWvRWRk0u
 zT5eKhC6Vi9cT1qKu51XG/RcD8H7ILCPQzJGRYRn5zzc6PSPcftjxd2B6
 ATqOZfzpMME+FJKwhycRBp6N+ZmD8wQp2nlHxcXq9XSw9zTWUUfZFW7tU
 Q0KAmpTvHt1nl+9+N5ftwA2JrgvYRN6HyIlccAcHgRSH1CO8W0HopqOia
 o84vFMA2SV58QN7O1pgS0IfjHs1QZUdDjx09eHkZgQ1ECHBs0Sf91psUm Q==;
X-IronPort-AV: E=Sophos;i="5.63,562,1557158400"; d="scan'208";a="216314737"
Received: from mail-sn1nam01lp2055.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.55])
 by ob1.hgst.iphmx.com with ESMTP; 07 Jun 2019 14:01:36 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hkfooRm+YqDFOX2UeODT1sUKAjQGpjOctDza3yvn9/Q=;
 b=U3OXmTLTLUvaOtDIY99OTwN2mQHH+23krn04ikXDXmuAmhUCibqmE8aiNiB/AS/F9W19jDJfKNz8GlGomI+CuYL6KRGVD5mia5+5dyhiYBnor3jnRgwk0kgNN5eyjk6jlmU4FeobVAq+t58vOfK9JutG/Kqo4jzxIJvmPpko4BQ=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5920.namprd04.prod.outlook.com (20.179.21.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Fri, 7 Jun 2019 06:01:34 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e%7]) with mapi id 15.20.1943.026; Fri, 7 Jun 2019
 06:01:34 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v5 2/2] RISC-V: Setup initial page tables in two stages
Thread-Topic: [PATCH v5 2/2] RISC-V: Setup initial page tables in two stages
Thread-Index: AQHVHPZ1MEIeiSWDykO5didT7ZnaQw==
Date: Fri, 7 Jun 2019 06:01:34 +0000
Message-ID: <20190607060049.29257-3-anup.patel@wdc.com>
References: <20190607060049.29257-1-anup.patel@wdc.com>
In-Reply-To: <20190607060049.29257-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0099.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::40) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90e999e8-8f88-4416-d816-08d6eb0d97fe
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5920; 
x-ms-traffictypediagnostic: MN2PR04MB5920:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB5920C355AA4CA9C39D5C59BC8D100@MN2PR04MB5920.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(376002)(39860400002)(396003)(136003)(189003)(199004)(68736007)(256004)(6512007)(54906003)(14444005)(2906002)(386003)(81156014)(71200400001)(52116002)(81166006)(76176011)(110136005)(72206003)(53946003)(476003)(26005)(2616005)(53936002)(8936002)(8676002)(99286004)(7736002)(4326008)(30864003)(2171002)(305945005)(6506007)(102836004)(50226002)(71190400001)(14454004)(186003)(25786009)(478600001)(486006)(6436002)(86362001)(6116002)(3846002)(6486002)(66476007)(64756008)(66446008)(66556008)(66946007)(73956011)(1076003)(446003)(316002)(66066001)(11346002)(44832011)(5660300002)(36756003)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5920;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xWBjjJAXFUO4rG1GFnYmBBAthvFuN05nkvt6H+4gzUJdfSmSmYtFY/igoqdOXzo/DHXYpVKXgHDD3YcmUA8SgcnYekDzecXoLzpzBU0Z7i0QhxGsETcEHHGP3sTpvmTXv2oa+ZEog8TIDuAuYIHDz+fX0hXlB0oXUKI6d1aYXjNDXznzfZiA5ekNBz+7H58w4Z84BCRWw9J5p63LnfMtjd25iq5DxwMImq/FQSvHsKGbWp0hNPMGkVm+Pj5ND79cVp4jpsfFkRS03HPGk61vy+6vtoNBIFNDfVPtqkcs5Y4S5Um5XqsIHucnh+7fbaJgdc/Rwo/kQdrQ6YW3clO2gdC95V+GtMrkZ9kZquNq7wcZPapQGtVtAa9XyneZI9pdSProiDPC2FPzB0bYNDbBMrl7lF8jt+1DzHE/YtBBrEk=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90e999e8-8f88-4416-d816-08d6eb0d97fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 06:01:34.0814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_230137_868154_D48AE438 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arch/riscv/include/asm/pgtable.h    |   8 +
 arch/riscv/kernel/head.S            |  17 +-
 arch/riscv/kernel/setup.c           |   6 +-
 arch/riscv/mm/init.c                | 317 ++++++++++++++++++++++------
 6 files changed, 285 insertions(+), 73 deletions(-)

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
index 1141364d990e..367554dfa4db 100644
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
@@ -404,6 +411,7 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 #define kern_addr_valid(addr)   (1) /* FIXME */
 #endif
 
+extern void *dtb_early_va;
 extern void setup_bootmem(void);
 extern void paging_init(void);
 
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 370c66ce187a..d3d10d3d25a3 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -63,7 +63,9 @@ clear_bss_done:
 
 	/* Initialize page tables and relocate to virtual addresses */
 	la sp, init_thread_union + THREAD_SIZE
+	mv a0, s1
 	call setup_vm
+	la a0, early_pg_dir
 	call relocate
 
 	/* Restore C environment */
@@ -72,25 +74,23 @@ clear_bss_done:
 	la sp, init_thread_union + THREAD_SIZE
 
 	/* Start the kernel */
-	mv a0, s1
 	call parse_dtb
 	tail start_kernel
 
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
-	csrw CSR_STVEC, a0
+	la a2, 1f
+	add a2, a2, a1
+	csrw CSR_STVEC, a2
 
 	/* Compute satp for kernel page tables, but don't load it yet */
-	la a2, swapper_pg_dir
-	srl a2, a2, PAGE_SHIFT
+	srl a2, a0, PAGE_SHIFT
 	li a1, SATP_MODE
 	or a2, a2, a1
 
@@ -156,6 +156,7 @@ relocate:
 	fence
 
 	/* Enable virtual memory and relocate to virtual address */
+	la a0, swapper_pg_dir
 	call relocate
 
 	tail smp_callin
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index b92e6831d1ec..a990a6cb184f 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -39,11 +39,9 @@ struct screen_info screen_info = {
 atomic_t hart_lottery;
 unsigned long boot_cpu_hartid;
 
-void __init parse_dtb(phys_addr_t dtb_phys)
+void __init parse_dtb(void)
 {
-	void *dtb = __va(dtb_phys);
-
-	if (early_init_dt_scan(dtb))
+	if (early_init_dt_scan(dtb_early_va))
 		return;
 
 	pr_err("No DTB passed to the kernel\n");
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 1879501bd156..22d55e289d8f 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -1,14 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
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
@@ -156,17 +142,15 @@ EXPORT_SYMBOL(va_pa_offset);
 unsigned long pfn_base;
 EXPORT_SYMBOL(pfn_base);
 
+void *dtb_early_va;
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
@@ -185,6 +169,156 @@ void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
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
@@ -204,54 +338,115 @@ void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
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
+
+	/* Save pointer to DTB for early FDT parsing */
+	dtb_early_va = (void *)fix_to_virt(FIX_FDT) + (dtb_pa & ~PAGE_MASK);
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
