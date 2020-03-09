Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A4E17DA96
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 09:22:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9JWCYyM6e/yrlSY6Kqbp3PYw6HxEa4SPxOUoFQCyjA=; b=oTiQoTDSvwbfnu
	pKyZ0eIiUULmsyMyGjvbJTsFUV+Hdxm6YIbX8f0IGxbf1VcPybpPAZI+QqanG6mOKnxufyfOqOjdW
	yARxbD29+ZN4BN5Qs4WHGmDPhhy3jOaDVrTCTzQzO/ChxuOEwH5W6Kns/Z0mbGLI0Q/yaloe5Ml5P
	QTru/sMLZx0t7Wz55fbC5oxl2odNRlgqdxS7i3SQ4SAf2DWtXFLTA4SIPFxUe+cX+VwczcWOvu0VV
	urY734zKbh77r4pOcFLy7iF4xy3hvEky2e/1XLWaiShmPyIgE9hCkwYLYy2Yi9vnWGR4XVgbCyuKL
	hs6opYR1ceuHDY5Wm0bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDgS-0005rA-Hm; Mon, 09 Mar 2020 08:22:44 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDgO-0005oy-Ns
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 08:22:42 +0000
Received: by mail-pf1-x442.google.com with SMTP id 2so4473239pfg.12
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 01:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M9JWCYyM6e/yrlSY6Kqbp3PYw6HxEa4SPxOUoFQCyjA=;
 b=blx9MR5KFVCUxLjT9llTQCauTb6eUfWvGxqJ0UeCKDbGCa/udE9KMHfYSpdnfLVagE
 Jg7HyNT6N6pkit4ryUrhBupCYRU+qvsC8wRx1UFkD86bO8OdCFYapACvYJbfXjxDYW/j
 HgK6vUDwdEjeTldm8r0hzdHnsRWZKM4i2yf+UOpkXTZKTHWX0PjEb84pKdUHlz7cO0HV
 1CaXZrZq5WRjb2jgD8Qk3h4AoDKmHwEpLxim8pcAbp0o9A8P2hoB5NgfXLa5SGRZOvYx
 nRT7AKxKxF20EdBqy9rN+9LoNRXTkbUH5BVG2arkIokQWsrPJpNEpepxbOeZ6Vq6BugA
 Cf/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M9JWCYyM6e/yrlSY6Kqbp3PYw6HxEa4SPxOUoFQCyjA=;
 b=NO+cDrQc76v07+CJ5djqbZiLuA0s+GUbtGGXaZqJxb2OfJa0Hdv9d7TVn5iaWcz/+h
 e1eWgG43e+rZi6pFEp3n+Zd17magGpF1Z4+P5lskE//YRTaexc3h4Nkba4ZdovPVk7kT
 vl38x5K2emOU72A2ONhykWvDSQK2+2JA70u/nf0YFCEguXFZFuqcVdg792dzTD7Z+87X
 xt3lBZ0QblTsnAz6fYPPT/3YMeaWlhHALiokze2PIg0DKLwy7CArggueTtSM/5Ffuq5u
 3l8CCk942JDkfJqbILsGlOiIEevtNMELxONkYtKNW26Qv1lJoquB/Au/Wnz/rF29vpbi
 Nx8Q==
X-Gm-Message-State: ANhLgQ3VoVT7Jpx7I6ypx7TKmYzOpZduYGfA0ZaqjQhyVR1eRI6qO/Vj
 eKjLQAEIhowcOAmsasI36tr4cg==
X-Google-Smtp-Source: ADFU+vsCoXlTCaF92iKCJOfltkfeyHYnjYGSbyBTH6opGmST+o6xlWtRIKlyuRO66gcPgflyy2YtBg==
X-Received: by 2002:a62:8144:: with SMTP id t65mr7656857pfd.188.1583742160050; 
 Mon, 09 Mar 2020 01:22:40 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id v5sm18364779pfn.64.2020.03.09.01.22.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 01:22:39 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/9] riscv: add ARCH_HAS_SET_MEMORY support
Date: Mon,  9 Mar 2020 16:22:21 +0800
Message-Id: <b050081f7d30130cad20216b1e65380851915b95.1583741997.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583741997.git.zong.li@sifive.com>
References: <cover.1583741997.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_012240_778754_A01AE28F 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
2.25.1


