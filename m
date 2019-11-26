Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C01110A6C4
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 23:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d3gnRMbi9pyXR6T9OZ17YlVt1EpSgJXTYpN+W5a5GnM=; b=TatNifhrjv5FcAX03KTHfGo81G
	CUZH5maFsvD8KqBBb4DUOlouOQ9bE5xbfzH8jIe1L1XYOQw5rXM3YyBxXJ+46GssOxM5VsKgU/yHP
	6mcNR+4kZb8vPsYmOZk4osBIhxmAytOLvRzD3M6wIa50l2dHM2BuGmz5Ony3sjtO4dqlzBY4gytxu
	W9TbpsHmszpcQ6gWuuyd9VXDl6U1DdOgO6mWgNvNV5PjoJ2OuJGCpzuvALsNaIlbSZjGoirQX9f6Z
	AlY/Iv8ftvCFwy0LMzI/TuGMtyj5zIRlStFif5x5pyeiNLl7IJY5g/RT8f8LHbCfRW42cJav9Af5o
	ZQ/bGEOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZjaX-0005gb-T2; Tue, 26 Nov 2019 22:45:41 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZjaU-0005gB-4E
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 22:45:39 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 4E40185C;
 Tue, 26 Nov 2019 17:45:37 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Tue, 26 Nov 2019 17:45:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gstardust.com;
 h=from:to:cc:subject:date:message-id:in-reply-to:references; s=
 mesmtp; bh=/67MZLwHQD9tg2Lk/4ZkTp40ytZAb/Bq1guU4IDp2yo=; b=EJJI6
 /5IHEvfDKe+GbXBhYndpkMrGyma1nWP34Wjzqbe8HsjbJXBE2qrzTqsYXW3F+rRR
 wWZpTQdENHjjk7Ykd0H2odCu1gzkkV6L6BFEGhhj/E4TYnqM6mv6ilhAOBfj6Ub4
 ARBnWtri91Bhh0ukK7JBejbctu3we5uUuuYJbY=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:date:from:in-reply-to:message-id
 :references:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; bh=/67MZLwHQD9tg2Lk/4ZkTp40ytZAb
 /Bq1guU4IDp2yo=; b=Z8h069Gbc0Z7Ej7jm8QyJ5fhkdv5E5AXZb3eCLU9Shwny
 MRBPrRjyJZaNT1IeMLMnFr36ljWeEASph0U3NahVOMRvJhWIW/gtl57Uj7dYYL7j
 j+Gr/FlfQZml0d3xQkRQQlHlsEVea5SZvKhUAw4Tgj9dV2B2I6mLTKwCOxQyNFq3
 fuplH+zD1FGj+OPTsyEAMEj5DBsRHQkLcv0UQaVKgKPLk3x5yKk6TX0oROsy+ki7
 HIPG57UT4WzCseNB+Cb2UUrdLvOF4d3pItcWBxg94Wsj7Y2Qb/nOs5yvE9HEb4pP
 jM2r6ZVCL9It6MVbA0/vhknmFVAp6zXcz2qLFAYgA==
X-ME-Sender: <xms:EKvdXV7VZQP9G8nk1DUatq1VDEDQQsu0KkKsHVWf4wjEpO-qGCHMdw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeigedgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfsedttdertdertddtnecuhfhrohhmpeforghrtgcuifgr
 uhhthhhivghruceotghonhhsuhhlthdqmhhgsehgshhtrghrughushhtrdgtohhmqeenuc
 fkphepudegvddrheelrdehledrvdelnecurfgrrhgrmhepmhgrihhlfhhrohhmpegtohhn
 shhulhhtqdhmghesghhsthgrrhguuhhsthdrtghomhenucevlhhushhtvghrufhiiigvpe
 dt
X-ME-Proxy: <xmx:EKvdXQBjKzEt5Gc7cm1bKQzkVqlGzESFXkzYpX-TsYNJ20kZOKTNdg>
 <xmx:EKvdXc4O3MyPRNHDEVKVScH07ETJfwRB17m3lNgwhvJ0TD4nmhepig>
 <xmx:EKvdXfLiwNSa-C1fLu2bFhd3FAHQo5FPH28wc8fiO23RTKa98MYNzw>
 <xmx:EKvdXelUWJdfWhaFwx_hFkkkGxWpXcReXj-bLf3wxfp_cQNmGjeu-g>
Received: from SurfBoard.localdomain (unknown [142.59.59.29])
 by mail.messagingengine.com (Postfix) with ESMTPA id 769DF3060062;
 Tue, 26 Nov 2019 17:45:36 -0500 (EST)
From: Marc Gauthier <consult-mg@gstardust.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v2 1/2] riscv: Align shared mappings to SHMLBA
Date: Tue, 26 Nov 2019 17:44:45 -0500
Message-Id: <20191126224446.15145-2-consult-mg@gstardust.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191126224446.15145-1-consult-mg@gstardust.com>
References: <20191126224446.15145-1-consult-mg@gstardust.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_144538_210349_30416FCD 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Gauthier <consult-mg@gstardust.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Paul Walmsley <paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Align shared mappings according to SHMLBA for VIPT cache performance.

arch_get_unmapped_area() and arch_get_unmapped_area_topdown() are
essentially copies of their default implementations in mm/mmap.c,
modified to align the address to SHMLBA for shared mappings, i.e.
where MAP_SHARED is specified or a file pointer is provided.

Allow MAP_FIXED to request unaligned shared mappings.  Although this
may potentially reduce performance, very little software does this, as
it is not portable across architectures that enforce alignment.

Signed-off-by: Marc Gauthier <consult-mg@gstardust.com>
---
 arch/riscv/include/asm/pgtable.h |   4 ++
 arch/riscv/kernel/sys_riscv.c    | 113 +++++++++++++++++++++++++++++++
 2 files changed, 117 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index d3221017194d..7d1cc47ac5f9 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -436,6 +436,10 @@ extern void *dtb_early_va;
 extern void setup_bootmem(void);
 extern void paging_init(void);
 
+/* We provide arch_get_unmapped_area to handle VIPT caches efficiently. */
+#define HAVE_ARCH_UNMAPPED_AREA
+#define HAVE_ARCH_UNMAPPED_AREA_TOPDOWN
+
 /*
  * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
  * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index f3619f59d85c..3e739b30b1f7 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -3,11 +3,15 @@
  * Copyright (C) 2012 Regents of the University of California
  * Copyright (C) 2014 Darius Rad <darius@bluespec.com>
  * Copyright (C) 2017 SiFive
+ * Copyright (C) 2019 Aril Inc
  */
 
 #include <linux/syscalls.h>
 #include <asm/unistd.h>
 #include <asm/cacheflush.h>
+#include <linux/shm.h>
+#include <linux/mman.h>
+#include <linux/security.h>
 
 static long riscv_sys_mmap(unsigned long addr, unsigned long len,
 			   unsigned long prot, unsigned long flags,
@@ -65,3 +69,112 @@ SYSCALL_DEFINE3(riscv_flush_icache, uintptr_t, start, uintptr_t, end,
 
 	return 0;
 }
+
+/*
+ * RISC-V requires implementations to function correctly in the presence
+ * of cache aliasing, regardless of page alignment.  It says nothing about
+ * performance.  To ensure healthy performance with commonly implemented
+ * VIPT caches, the following code avoids most cases of cache aliasing by
+ * aligning shared mappings such that all mappings of a given physical
+ * page of an object are at a multiple of SHMLBA bytes from each other.
+ *
+ * It does not enforce alignment.  Using MAP_FIXED to request unaligned
+ * shared mappings is not common, and may perform poorly with VIPT caches.
+ */
+unsigned long
+arch_get_unmapped_area(struct file *filp, unsigned long addr,
+			unsigned long len, unsigned long pgoff,
+			unsigned long flags)
+{
+	struct mm_struct *mm = current->mm;
+	struct vm_area_struct *vma, *prev;
+	struct vm_unmapped_area_info info;
+	const unsigned long pgoffset = pgoff << PAGE_SHIFT;
+	int do_align = (filp || (flags & MAP_SHARED));
+
+	if (len > TASK_SIZE - mmap_min_addr)
+		return -ENOMEM;
+
+	if (flags & MAP_FIXED)
+		return addr;
+
+	if (addr) {
+		if (do_align)
+			addr = ALIGN(addr, SHMLBA) + (pgoffset & (SHMLBA - 1));
+		else
+			addr = PAGE_ALIGN(addr);
+		vma = find_vma_prev(mm, addr, &prev);
+		if (TASK_SIZE - len >= addr && addr >= mmap_min_addr &&
+		    (!vma || addr + len <= vm_start_gap(vma)) &&
+		    (!prev || addr >= vm_end_gap(prev)))
+			return addr;
+	}
+
+	info.flags = 0;
+	info.length = len;
+	info.low_limit = mm->mmap_base;
+	info.high_limit = TASK_SIZE;
+	info.align_mask = do_align ? SHMLBA - 1 : 0;
+	info.align_offset = pgoffset;
+	return vm_unmapped_area(&info);
+}
+
+/*
+ * Similar to arch_get_unmapped_area(), but allocating top-down from below the
+ * stack's low limit (the base).
+ */
+unsigned long
+arch_get_unmapped_area_topdown(struct file *filp, unsigned long addr,
+				unsigned long len, unsigned long pgoff,
+				unsigned long flags)
+{
+	struct vm_area_struct *vma, *prev;
+	struct mm_struct *mm = current->mm;
+	struct vm_unmapped_area_info info;
+	const unsigned long pgoffset = pgoff << PAGE_SHIFT;
+	int do_align = (filp || (flags & MAP_SHARED));
+
+	/* requested length too big for entire address space */
+	if (len > TASK_SIZE - mmap_min_addr)
+		return -ENOMEM;
+
+	if (flags & MAP_FIXED)
+		return addr;
+
+	/* requesting a specific address */
+	if (addr) {
+		if (do_align)
+			addr = ALIGN(addr, SHMLBA) + (pgoffset & (SHMLBA - 1));
+		else
+			addr = PAGE_ALIGN(addr);
+		vma = find_vma_prev(mm, addr, &prev);
+		if (TASK_SIZE - len >= addr && addr >= mmap_min_addr &&
+				(!vma || addr + len <= vm_start_gap(vma)) &&
+				(!prev || addr >= vm_end_gap(prev)))
+			return addr;
+	}
+
+	info.flags = VM_UNMAPPED_AREA_TOPDOWN;
+	info.length = len;
+	info.low_limit = max(PAGE_SIZE, mmap_min_addr);
+	info.high_limit = mm->mmap_base;
+	info.align_mask = do_align ? SHMLBA - 1 : 0;
+	info.align_offset = pgoffset;
+	addr = vm_unmapped_area(&info);
+
+	/*
+	 * A failed mmap() very likely causes application failure,
+	 * so fall back to the bottom-up function here. This scenario
+	 * can happen with large stack limits and large mmap()
+	 * allocations.
+	 */
+	if (offset_in_page(addr)) {
+		VM_BUG_ON(addr != -ENOMEM);
+		info.flags = 0;
+		info.low_limit = TASK_UNMAPPED_BASE;
+		info.high_limit = TASK_SIZE;
+		addr = vm_unmapped_area(&info);
+	}
+
+	return addr;
+}
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
