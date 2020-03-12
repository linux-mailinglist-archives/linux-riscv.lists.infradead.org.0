Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECFA182730
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 03:58:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loXW6dDQcQp2dD0+EALagvTvb+TAuD3qW72/RGKC+YU=; b=OMCOYe8NOaYgWO
	LgNmSAqPv4XyAzcci+DkcIhnxxZdA6dVLKOoAd1k96rw9hXvpGwmPQwaOYEFS5G8n89pTRmeDLTA+
	hz7tu1p1zowM8h3WWqXKZmOpf7bjOnKOTtmJZW4Tg7YlGI3tpwbHlc4kP7bpPuA4EyLKoS3ih9Je2
	CfI9yhsHOcArpHy9l9fIJtgjs4eh8sWHE1ZfC8DeGcCBJ7DA37P5i94cw5zuToWF8vWqRb8MwLdKK
	8Sn6yyvxBqanj9cCBCIei1occTmu/y1dB1HCfKSZvB+tHI6o8FlNH1jiax2HSreiiR4TQInZiNIzd
	hKZ03mtujBrPPcLlhsjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCE3h-0004OF-L6; Thu, 12 Mar 2020 02:58:53 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCE3c-0004K0-7L
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 02:58:50 +0000
Received: by mail-pg1-x543.google.com with SMTP id m5so2298542pgg.0
 for <linux-riscv@lists.infradead.org>; Wed, 11 Mar 2020 19:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=loXW6dDQcQp2dD0+EALagvTvb+TAuD3qW72/RGKC+YU=;
 b=lr6ClW74ChDPLp/1S+FltEnCEbGZO35Z4DnXPimWFSvkvtcbM9ghmcIJ5JSD/F7aFa
 H1bHm79E9sacyEOx4q3J8tGIxhdODRbvHSHStci+8fWtPzj9yiq9IThTEQYMfw+qbVP8
 1aCTOEUk0fD79KKzciPKVP1cp5wUlm4X2Vs/dzoXveXpGZFe3TQHItLoBT3kPWdsjZOe
 8ijH4JEBMJHBNvfqMzhcb84C9yBxVG6fIU7ngayIeiz1SYZsd/o1L2TFOPuK4qPppkX8
 QNSDx1vAOB7aHOWsZPW0HoiYFoaG1dbqgizMl7HRa2cho+8sHqXg9pPs7qI3y1WPOviv
 SuVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=loXW6dDQcQp2dD0+EALagvTvb+TAuD3qW72/RGKC+YU=;
 b=criRJbEKLEmid3enT7v3H6Oz9HIx8e7iZ/7TN6CJfJlnvYRWtPta3+6/9YmFVNWj8P
 WmLTgDOSUxmiWnKaze0tkBVKd7nGcxA4wUYSJyg4XNgghXC9jRwwd3sM48SH2Bvvn1Bk
 M+s3/svjJpdxy53ctq6+UAyk77jZzjfntS6JhO+AMj/s9LXnD9t48dNYr0uJ4T4lcu7x
 4H3K1LeCUAr2RB0PiBCTuyOqKwfSk57JEsU1+4qMhrf6Fa7OdTvzXQntZAuKlFUQSHJ6
 OwE9w/dFAT2M1jHsjfsQwGpzQmQy5itCKZ6vHIrioKpLt/ZAUFFhAdeKDlgXXx3HTbLM
 bFyA==
X-Gm-Message-State: ANhLgQ3fB6ctamHTEW7L1y0YHTD2DvsuvxNLka5gXPhziMX2GYIZS6HB
 LMV41OVV9V7l4G8XTcfpqVTEzQ==
X-Google-Smtp-Source: ADFU+vsdF/UsuE70t7Pp2Zr7F69GZGP9AF11q7hGLi4jf5IyLUsCViSUbHhjsnqdYalWaH4HzFCe8Q==
X-Received: by 2002:a65:6147:: with SMTP id o7mr5815821pgv.442.1583981922983; 
 Wed, 11 Mar 2020 19:58:42 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i11sm1910322pfd.202.2020.03.11.19.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 19:58:42 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] riscv: Add support to dump the kernel page tables
Date: Thu, 12 Mar 2020 10:58:35 +0800
Message-Id: <20200312025836.68977-2-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312025836.68977-1-zong.li@sifive.com>
References: <20200312025836.68977-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_195848_261406_36DDA097 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Ghiti <alex@ghiti.fr>, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In a similar manner to arm64, x86, powerpc, etc., it can traverse all
page tables, and dump the page table layout with the memory types and
permissions.

Add a debugfs file at /sys/kernel/debug/kernel_page_tables to export
the page table layout to userspace.

Signed-off-by: Zong Li <zong.li@sifive.com>
Tested-by: Alexandre Ghiti <alex@ghiti.fr>
---
 arch/riscv/Kconfig               |   1 +
 arch/riscv/include/asm/pgtable.h |  10 +
 arch/riscv/include/asm/ptdump.h  |  11 ++
 arch/riscv/mm/Makefile           |   1 +
 arch/riscv/mm/ptdump.c           | 317 +++++++++++++++++++++++++++++++
 5 files changed, 340 insertions(+)
 create mode 100644 arch/riscv/include/asm/ptdump.h
 create mode 100644 arch/riscv/mm/ptdump.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 1a3b5a5276be..735b91014f79 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -29,6 +29,7 @@ config RISCV
 	select GENERIC_SMP_IDLE_THREAD
 	select GENERIC_ATOMIC64 if !64BIT
 	select GENERIC_IOREMAP
+	select GENERIC_PTDUMP if MMU
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_ARCH_SECCOMP_FILTER
 	select HAVE_ASM_MODVERSIONS
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index e43041519edd..ac353e44f80c 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -444,6 +444,16 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 #endif
 #define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
 
+/*
+ * In the RV64 Linux scheme, we give the user half of the virtual-address space
+ * and give the kernel the other (upper) half.
+ */
+#ifdef CONFIG_64BIT
+#define KERN_VIRT_START	(-(BIT(CONFIG_VA_BITS)) + TASK_SIZE)
+#else
+#define KERN_VIRT_START	FIXADDR_START
+#endif
+
 /*
  * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
  * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
diff --git a/arch/riscv/include/asm/ptdump.h b/arch/riscv/include/asm/ptdump.h
new file mode 100644
index 000000000000..e29af7191909
--- /dev/null
+++ b/arch/riscv/include/asm/ptdump.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 SiFive
+ */
+
+#ifndef _ASM_RISCV_PTDUMP_H
+#define _ASM_RISCV_PTDUMP_H
+
+void ptdump_check_wx(void);
+
+#endif /* _ASM_RISCV_PTDUMP_H */
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 50b7af58c566..814e16a8d68a 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -15,6 +15,7 @@ ifeq ($(CONFIG_MMU),y)
 obj-$(CONFIG_SMP) += tlbflush.o
 endif
 obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
+obj-$(CONFIG_PTDUMP_CORE) += ptdump.o
 obj-$(CONFIG_KASAN)   += kasan_init.o
 
 ifdef CONFIG_KASAN
diff --git a/arch/riscv/mm/ptdump.c b/arch/riscv/mm/ptdump.c
new file mode 100644
index 000000000000..7eab76a93106
--- /dev/null
+++ b/arch/riscv/mm/ptdump.c
@@ -0,0 +1,317 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 SiFive
+ */
+
+#include <linux/init.h>
+#include <linux/debugfs.h>
+#include <linux/seq_file.h>
+#include <linux/ptdump.h>
+
+#include <asm/ptdump.h>
+#include <asm/pgtable.h>
+#include <asm/kasan.h>
+
+#define pt_dump_seq_printf(m, fmt, args...)	\
+({						\
+	if (m)					\
+		seq_printf(m, fmt, ##args);	\
+})
+
+#define pt_dump_seq_puts(m, fmt)	\
+({					\
+	if (m)				\
+		seq_printf(m, fmt);	\
+})
+
+/*
+ * The page dumper groups page table entries of the same type into a single
+ * description. It uses pg_state to track the range information while
+ * iterating over the pte entries. When the continuity is broken it then
+ * dumps out a description of the range.
+ */
+struct pg_state {
+	struct ptdump_state ptdump;
+	struct seq_file *seq;
+	const struct addr_marker *marker;
+	unsigned long start_address;
+	unsigned long start_pa;
+	unsigned long last_pa;
+	int level;
+	u64 current_prot;
+	bool check_wx;
+	unsigned long wx_pages;
+};
+
+/* Address marker */
+struct addr_marker {
+	unsigned long start_address;
+	const char *name;
+};
+
+static struct addr_marker address_markers[] = {
+#ifdef CONFIG_KASAN
+	{KASAN_SHADOW_START,	"Kasan shadow start"},
+	{KASAN_SHADOW_END,	"Kasan shadow end"},
+#endif
+	{FIXADDR_START,		"Fixmap start"},
+	{FIXADDR_TOP,		"Fixmap end"},
+	{PCI_IO_START,		"PCI I/O start"},
+	{PCI_IO_END,		"PCI I/O end"},
+#ifdef CONFIG_SPARSEMEM_VMEMMAP
+	{VMEMMAP_START,		"vmemmap start"},
+	{VMEMMAP_END,		"vmemmap end"},
+#endif
+	{VMALLOC_START,		"vmalloc() area"},
+	{VMALLOC_END,		"vmalloc() end"},
+	{PAGE_OFFSET,		"Linear mapping"},
+	{-1, NULL},
+};
+
+/* Page Table Entry */
+struct prot_bits {
+	u64 mask;
+	u64 val;
+	const char *set;
+	const char *clear;
+};
+
+static const struct prot_bits pte_bits[] = {
+	{
+		.mask = _PAGE_SOFT,
+		.val = _PAGE_SOFT,
+		.set = "RSW",
+		.clear = "   ",
+	}, {
+		.mask = _PAGE_DIRTY,
+		.val = _PAGE_DIRTY,
+		.set = "D",
+		.clear = ".",
+	}, {
+		.mask = _PAGE_ACCESSED,
+		.val = _PAGE_ACCESSED,
+		.set = "A",
+		.clear = ".",
+	}, {
+		.mask = _PAGE_GLOBAL,
+		.val = _PAGE_GLOBAL,
+		.set = "G",
+		.clear = ".",
+	}, {
+		.mask = _PAGE_USER,
+		.val = _PAGE_USER,
+		.set = "U",
+		.clear = ".",
+	}, {
+		.mask = _PAGE_EXEC,
+		.val = _PAGE_EXEC,
+		.set = "X",
+		.clear = ".",
+	}, {
+		.mask = _PAGE_WRITE,
+		.val = _PAGE_WRITE,
+		.set = "W",
+		.clear = ".",
+	}, {
+		.mask = _PAGE_READ,
+		.val = _PAGE_READ,
+		.set = "R",
+		.clear = ".",
+	}, {
+		.mask = _PAGE_PRESENT,
+		.val = _PAGE_PRESENT,
+		.set = "V",
+		.clear = ".",
+	}
+};
+
+/* Page Level */
+struct pg_level {
+	const char *name;
+	u64 mask;
+};
+
+static struct pg_level pg_level[] = {
+	{ /* pgd */
+		.name = "PGD",
+	}, { /* p4d */
+		.name = (CONFIG_PGTABLE_LEVELS > 4) ? "P4D" : "PGD",
+	}, { /* pud */
+		.name = (CONFIG_PGTABLE_LEVELS > 3) ? "PUD" : "PGD",
+	}, { /* pmd */
+		.name = (CONFIG_PGTABLE_LEVELS > 2) ? "PMD" : "PGD",
+	}, { /* pte */
+		.name = "PTE",
+	},
+};
+
+static void dump_prot(struct pg_state *st)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(pte_bits); i++) {
+		const char *s;
+
+		if ((st->current_prot & pte_bits[i].mask) == pte_bits[i].val)
+			s = pte_bits[i].set;
+		else
+			s = pte_bits[i].clear;
+
+		if (s)
+			pt_dump_seq_printf(st->seq, " %s", s);
+	}
+}
+
+#ifdef CONFIG_64BIT
+#define ADDR_FORMAT	"0x%016lx"
+#else
+#define ADDR_FORMAT	"0x%08lx"
+#endif
+static void dump_addr(struct pg_state *st, unsigned long addr)
+{
+	static const char units[] = "KMGTPE";
+	const char *unit = units;
+	unsigned long delta;
+
+	pt_dump_seq_printf(st->seq, ADDR_FORMAT "-" ADDR_FORMAT "   ",
+			   st->start_address, addr);
+
+	pt_dump_seq_printf(st->seq, " " ADDR_FORMAT " ", st->start_pa);
+	delta = (addr - st->start_address) >> 10;
+
+	while (!(delta & 1023) && unit[1]) {
+		delta >>= 10;
+		unit++;
+	}
+
+	pt_dump_seq_printf(st->seq, "%9lu%c %s", delta, *unit,
+			   pg_level[st->level].name);
+}
+
+static void note_prot_wx(struct pg_state *st, unsigned long addr)
+{
+	if (!st->check_wx)
+		return;
+
+	if ((st->current_prot & (_PAGE_WRITE | _PAGE_EXEC)) !=
+	    (_PAGE_WRITE | _PAGE_EXEC))
+		return;
+
+	WARN_ONCE(1, "riscv/mm: Found insecure W+X mapping at address %p/%pS\n",
+		  (void *)st->start_address, (void *)st->start_address);
+
+	st->wx_pages += (addr - st->start_address) / PAGE_SIZE;
+}
+
+static void note_page(struct ptdump_state *pt_st, unsigned long addr,
+		      int level, unsigned long val)
+{
+	struct pg_state *st = container_of(pt_st, struct pg_state, ptdump);
+	u64 pa = PFN_PHYS(pte_pfn(__pte(val)));
+	u64 prot = 0;
+
+	if (level >= 0)
+		prot = val & pg_level[level].mask;
+
+	if (st->level == -1) {
+		st->level = level;
+		st->current_prot = prot;
+		st->start_address = addr;
+		st->start_pa = pa;
+		st->last_pa = pa;
+		pt_dump_seq_printf(st->seq, "---[ %s ]---\n", st->marker->name);
+	} else if (prot != st->current_prot ||
+		   level != st->level || addr >= st->marker[1].start_address) {
+		if (st->current_prot) {
+			note_prot_wx(st, addr);
+			dump_addr(st, addr);
+			dump_prot(st);
+			pt_dump_seq_puts(st->seq, "\n");
+		}
+
+		while (addr >= st->marker[1].start_address) {
+			st->marker++;
+			pt_dump_seq_printf(st->seq, "---[ %s ]---\n",
+					   st->marker->name);
+		}
+
+		st->start_address = addr;
+		st->start_pa = pa;
+		st->last_pa = pa;
+		st->current_prot = prot;
+		st->level = level;
+	} else {
+		st->last_pa = pa;
+	}
+}
+
+static void ptdump_walk(struct seq_file *s)
+{
+	struct pg_state st = {
+		.seq = s,
+		.marker = address_markers,
+		.level = -1,
+		.ptdump = {
+			.note_page = note_page,
+			.range = (struct ptdump_range[]) {
+				{KERN_VIRT_START, ULONG_MAX},
+				{0, 0}
+			}
+		}
+	};
+
+	ptdump_walk_pgd(&st.ptdump, &init_mm, NULL);
+}
+
+void ptdump_check_wx(void)
+{
+	struct pg_state st = {
+		.seq = NULL,
+		.marker = (struct addr_marker[]) {
+			{0, NULL},
+			{-1, NULL},
+		},
+		.level = -1,
+		.check_wx = true,
+		.ptdump = {
+			.note_page = note_page,
+			.range = (struct ptdump_range[]) {
+				{KERN_VIRT_START, ULONG_MAX},
+				{0, 0}
+			}
+		}
+	};
+
+	ptdump_walk_pgd(&st.ptdump, &init_mm, NULL);
+
+	if (st.wx_pages)
+		pr_warn("Checked W+X mappings: failed, %lu W+X pages found\n",
+			st.wx_pages);
+	else
+		pr_info("Checked W+X mappings: passed, no W+X pages found\n");
+}
+
+static int ptdump_show(struct seq_file *m, void *v)
+{
+	ptdump_walk(m);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(ptdump);
+
+static int ptdump_init(void)
+{
+	unsigned int i, j;
+
+	for (i = 0; i < ARRAY_SIZE(pg_level); i++)
+		for (j = 0; j < ARRAY_SIZE(pte_bits); j++)
+			pg_level[i].mask |= pte_bits[j].mask;
+
+	debugfs_create_file("kernel_page_tables", 0400, NULL, NULL,
+			    &ptdump_fops);
+
+	return 0;
+}
+
+device_initcall(ptdump_init);
-- 
2.25.1


