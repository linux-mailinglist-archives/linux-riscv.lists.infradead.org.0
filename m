Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 698F9160D59
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Feb 2020 09:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEjz/RcQS+U/YywRSqm0sa6mFOHzzBZkMLYn0qcUgSA=; b=EoXQ3SusiWbi3E
	N/G2fhgDVxS6YOmXUx3BbFq9bDBwmBJa+igPVGL8sW8q545cM2KHFDlnJgkoGgS1eL4kPomiG1p+o
	OjcCWkJQFuWuIVitMccSAoqAWZRAM5XSay9i3GZMpRJCsY7Sx1XHz6tRuSRVPnee2SqCkpF/JPGEQ
	zzsV2A8u8VIkp+y/OAzMMIaCeiQDNojdR6pci+J9YSiofPWOL0QxMzBb9y6OhS3xFauSiPhrwGkbZ
	dq3bPOCbcXDs1hUxLs5OvNBAj3I0GXGNwrl0k3a50GCIR2GoPIR5qmnyHxmvXl0MHL8Clo233v1Su
	Qd+o5nAKWlg+I3xSY0vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bpT-0005bY-Aw; Mon, 17 Feb 2020 08:32:35 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bpP-0005a1-Pm
 for linux-riscv@lists.infradead.org; Mon, 17 Feb 2020 08:32:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so8447626pfn.4
 for <linux-riscv@lists.infradead.org>; Mon, 17 Feb 2020 00:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PEjz/RcQS+U/YywRSqm0sa6mFOHzzBZkMLYn0qcUgSA=;
 b=VJuw6P+7+i90JIaL0Udtqg6ehfR8sKg7rXYXaRE6x8BGSosYjV8zjme9062MmtGWW0
 zUM3xjCDwZG4OvoTOnsX/Cmu5oDcd69h7VMSLr5QhL5+DYTHgDSYaK4h+27T8JbD3ScN
 dFQl6QJgkbl99r14MdaiQlxpYAznhGA9ctWUi6rKuC0T/1s7SZ2I19AmmDcjpn4szt1D
 R7rzbQh3rbYsNOkOd/0R6/sdj0fEiEQuOnCZmWQIT9EnG5EFC5Tlc0zM0KpQJcmFgmqQ
 uAT4OgjzlB3fFJRgdxX1oIH2cT/kOpz8XNOSiCWW/gzFSYrS3gXUm/70UlFp2O9WRIcO
 TxfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PEjz/RcQS+U/YywRSqm0sa6mFOHzzBZkMLYn0qcUgSA=;
 b=A0zKwg1sdon2EjmYayQUAq51IAbTEw1p9f1nI3pBWMG4Z719ZgeBCh1Ua6l2ZcsNDU
 SL6lhgG/GCwcicEqJ71w6roEINIqfkU8e/k2a0ZT79ivP5pLzcJbBVIIzPtwPYN7U+8a
 sW6UqxkoJxgNTlPQFjSTGRgiO2dHDQOhGjluhJP3OuGdWgAvn/VJmE/RafU1BqeEFU+M
 1Xwo9HVBEfG0b2PL7kkM/vDUT7d7jD9l8ThXtUaYEHpfUkmSF4W4LBegkTFwXbQpZUSf
 18jjfTDZbaFPMj7FHrQztAVaqnRX6y7MBv5bU9CHBBim/d/fDRZPMumtHveY4VFi9aqk
 k4yw==
X-Gm-Message-State: APjAAAVpMowFORTuuNretRgv0O5AmzKMqRlE1xhyZQpe514o1bubzKXO
 8EAH8M8dBu7OTGZJKB9q/wRprg==
X-Google-Smtp-Source: APXvYqxYmnaM1gp5pUEdAQHgfU9DzdvPX4pAff7S8MyIOb0LNOrBHGVhStkLitt+87HFa2x5OcY0VA==
X-Received: by 2002:a63:5848:: with SMTP id i8mr16271948pgm.438.1581928350891; 
 Mon, 17 Feb 2020 00:32:30 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id z10sm16989319pgz.88.2020.02.17.00.32.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 00:32:30 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/8] riscv: add ARCH_HAS_SET_MEMORY support
Date: Mon, 17 Feb 2020 16:32:16 +0800
Message-Id: <20200217083223.2011-2-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200217083223.2011-1-zong.li@sifive.com>
References: <20200217083223.2011-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_003231_841322_5FCE4E87 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add set_memory_ro/rw/x/nx architecture hooks to change the page
attribution.

Use own set_memory.h rather than generic set_memory.h
(i.e. include/asm-generic/set_memory.h), because we want to add other
function prototypes here.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig                  |   1 +
 arch/riscv/include/asm/set_memory.h |  17 ++++
 arch/riscv/mm/Makefile              |   1 +
 arch/riscv/mm/pageattr.c            | 150 ++++++++++++++++++++++++++++
 4 files changed, 169 insertions(+)
 create mode 100644 arch/riscv/include/asm/set_memory.h
 create mode 100644 arch/riscv/mm/pageattr.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 6e81da55b5e4..76ed36543b3a 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -60,6 +60,7 @@ config RISCV
 	select HAVE_EBPF_JIT if 64BIT
 	select EDAC_SUPPORT
 	select ARCH_HAS_GIGANTIC_PAGE
+	select ARCH_HAS_SET_MEMORY
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
new file mode 100644
index 000000000000..936f08063566
--- /dev/null
+++ b/arch/riscv/include/asm/set_memory.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 SiFive
+ */
+
+#ifndef _ASM_RISCV_SET_MEMORY_H
+#define _ASM_RISCV_SET_MEMORY_H
+
+/*
+ * Functions to change memory attributes.
+ */
+int set_memory_ro(unsigned long addr, int numpages);
+int set_memory_rw(unsigned long addr, int numpages);
+int set_memory_x(unsigned long addr, int numpages);
+int set_memory_nx(unsigned long addr, int numpages);
+
+#endif /* _ASM_RISCV_SET_MEMORY_H */
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 814e16a8d68a..b94643aee84c 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -10,6 +10,7 @@ obj-y += extable.o
 obj-$(CONFIG_MMU) += fault.o
 obj-y += cacheflush.o
 obj-y += context.o
+obj-y += pageattr.o
 
 ifeq ($(CONFIG_MMU),y)
 obj-$(CONFIG_SMP) += tlbflush.o
diff --git a/arch/riscv/mm/pageattr.c b/arch/riscv/mm/pageattr.c
new file mode 100644
index 000000000000..fcd59ef2835b
--- /dev/null
+++ b/arch/riscv/mm/pageattr.c
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 SiFive
+ */
+
+#include <linux/pagewalk.h>
+#include <asm/pgtable.h>
+#include <asm/tlbflush.h>
+#include <asm/bitops.h>
+
+struct pageattr_masks {
+	pgprot_t set_mask;
+	pgprot_t clear_mask;
+};
+
+static unsigned long set_pageattr_masks(unsigned long val, struct mm_walk *walk)
+{
+	struct pageattr_masks *masks = walk->private;
+	unsigned long new_val = val;
+
+	new_val &= ~(pgprot_val(masks->clear_mask));
+	new_val |= (pgprot_val(masks->set_mask));
+
+	return new_val;
+}
+
+static int pageattr_pgd_entry(pgd_t *pgd, unsigned long addr,
+			      unsigned long next, struct mm_walk *walk)
+{
+	pgd_t val = READ_ONCE(*pgd);
+
+	if (pgd_leaf(val)) {
+		val = __pgd(set_pageattr_masks(pgd_val(val), walk));
+		set_pgd(pgd, val);
+	}
+
+	return 0;
+}
+
+static int pageattr_p4d_entry(p4d_t *p4d, unsigned long addr,
+			      unsigned long next, struct mm_walk *walk)
+{
+	p4d_t val = READ_ONCE(*p4d);
+
+	if (p4d_leaf(val)) {
+		val = __p4d(set_pageattr_masks(p4d_val(val), walk));
+		set_p4d(p4d, val);
+	}
+
+	return 0;
+}
+
+static int pageattr_pud_entry(pud_t *pud, unsigned long addr,
+			      unsigned long next, struct mm_walk *walk)
+{
+	pud_t val = READ_ONCE(*pud);
+
+	if (pud_leaf(val)) {
+		val = __pud(set_pageattr_masks(pud_val(val), walk));
+		set_pud(pud, val);
+	}
+
+	return 0;
+}
+
+static int pageattr_pmd_entry(pmd_t *pmd, unsigned long addr,
+			      unsigned long next, struct mm_walk *walk)
+{
+	pmd_t val = READ_ONCE(*pmd);
+
+	if (pmd_leaf(val)) {
+		val = __pmd(set_pageattr_masks(pmd_val(val), walk));
+		set_pmd(pmd, val);
+	}
+
+	return 0;
+}
+
+static int pageattr_pte_entry(pte_t *pte, unsigned long addr,
+			      unsigned long next, struct mm_walk *walk)
+{
+	pte_t val = READ_ONCE(*pte);
+
+	val = __pte(set_pageattr_masks(pte_val(val), walk));
+	set_pte(pte, val);
+
+	return 0;
+}
+
+static int pageattr_pte_hole(unsigned long addr, unsigned long next,
+			     int depth, struct mm_walk *walk)
+{
+	/* Nothing to do here */
+	return 0;
+}
+
+const static struct mm_walk_ops pageattr_ops = {
+	.pgd_entry = pageattr_pgd_entry,
+	.p4d_entry = pageattr_p4d_entry,
+	.pud_entry = pageattr_pud_entry,
+	.pmd_entry = pageattr_pmd_entry,
+	.pte_entry = pageattr_pte_entry,
+	.pte_hole = pageattr_pte_hole,
+};
+
+static int __set_memory(unsigned long addr, int numpages, pgprot_t set_mask,
+			pgprot_t clear_mask)
+{
+	int ret;
+	unsigned long start = addr;
+	unsigned long end = start + PAGE_SIZE * numpages;
+	struct pageattr_masks masks = {
+		.set_mask = set_mask,
+		.clear_mask = clear_mask
+	};
+
+	if (!numpages)
+		return 0;
+
+	down_read(&init_mm.mmap_sem);
+	ret =  walk_page_range_novma(&init_mm, start, end, &pageattr_ops, NULL,
+				     &masks);
+	up_read(&init_mm.mmap_sem);
+
+	flush_tlb_kernel_range(start, end);
+
+	return ret;
+}
+
+int set_memory_ro(unsigned long addr, int numpages)
+{
+	return __set_memory(addr, numpages, __pgprot(_PAGE_READ),
+			    __pgprot(_PAGE_WRITE));
+}
+
+int set_memory_rw(unsigned long addr, int numpages)
+{
+	return __set_memory(addr, numpages, __pgprot(_PAGE_READ | _PAGE_WRITE),
+			    __pgprot(0));
+}
+
+int set_memory_x(unsigned long addr, int numpages)
+{
+	return __set_memory(addr, numpages, __pgprot(_PAGE_EXEC), __pgprot(0));
+}
+
+int set_memory_nx(unsigned long addr, int numpages)
+{
+	return __set_memory(addr, numpages, __pgprot(0), __pgprot(_PAGE_EXEC));
+}
-- 
2.25.0


