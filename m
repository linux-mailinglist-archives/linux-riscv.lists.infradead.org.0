Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DC4160D60
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Feb 2020 09:32:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTMbWbDe6JanNw6u4MeuGT5ws10dOAmOeRDr+Sp99wY=; b=SiVZMo1WG0sx/N
	frqCrLhSMvlOzR9bs4Z+aZk2KDeRrHEE4Uupd/pWwkC0U7cC9zw03mTOo8uQ/RPMuSKZ+HSZF79fO
	Xwk6zYFdKCpje4scqSM+FJ+WLscNnxpnG05hNYhBEgIIgDTyvsvAoQDP/9u8SFgcEB4xqLbyCHyWP
	J5gOhx+5JDG6NYhpTSHrUQGNJXUclckTSzBrtfIvZggDopvz4VPXeAVy1wKBFKqyQciLoM1pbz+8q
	L0679nNIXtZxwqxbnWkn3D60SBb/7fYBDVKD4HlBlBUBa3DZ9wA7eCujN3D1HFU+jYmS/yW4aNy6n
	imo/xUyMAyjZQnuyEJWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bpi-0005zd-0n; Mon, 17 Feb 2020 08:32:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bpX-0005ml-M0
 for linux-riscv@lists.infradead.org; Mon, 17 Feb 2020 08:32:41 +0000
Received: by mail-pg1-x544.google.com with SMTP id b35so8520764pgm.13
 for <linux-riscv@lists.infradead.org>; Mon, 17 Feb 2020 00:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QTMbWbDe6JanNw6u4MeuGT5ws10dOAmOeRDr+Sp99wY=;
 b=eQQeKcdMqubXH5C7G7os3FSraqPPJ10JrzYI9+flCRSLyytHFSVXYxzijDY19pTj5H
 1L1Q0IEJsKliwl3DumyPauUq4BjxxOzKgoqaH2mv8FgIUboZZ6h4rF4lpcJAm0HXyN3F
 LFP5Mk1B89rkT0Fj6znGrUwA+q7ulC87QPS5zpAwrddum3cqjEUZlHvG3faZvElwiNpw
 FeXa2/dxwVYuHCggoDQ4avz/+x8RgCPRzpARtEv2Wg8ETFs5708/I+gKsJ21ZnA5qa5o
 Wrpo8rYWvQGWcW9e4jE6C1wW8SgK92RpLMk75nFdUKISuRyZmCsiNulyoFE9SMIY+Nwp
 wwJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QTMbWbDe6JanNw6u4MeuGT5ws10dOAmOeRDr+Sp99wY=;
 b=j+rZSQYdN22s4EJt4gtN+JF26i3A9Y+5pFmfRa8QrnOauvKhxnDWPrM9SslWrH1fFc
 sdrTqIaqKVA2R4k/LVqN9wf/Te/7uetLN330ZO2g/d2QSLeKSZxbJ6DayBO6uz3i7ano
 B93dpEFvQdh5vydSCx2tks/rSbrWVU3Y1UgS1ANi43NAHzC2L30Jp7gBLetm8XgZXkIi
 a1nvhDQsiLTHw6shaODxEXv3HHyYeO4ZUf4Pt8IC770xzM+dFDlFTsxMuw6xGndRQF3R
 oyjD3yq0nrNj8BCTVEbFIeMvgl7NJn73s3rIX/Z0cl9OLFm/989fSHO5erFtU/r6Vufl
 RJ+w==
X-Gm-Message-State: APjAAAVeKBVN+c+Qx+9t5VIYT9DwhpOCl2oGC961Iu0mXatal2dzWgdf
 IcD4MxgG/ChDMWy6l/4hkp8zFg==
X-Google-Smtp-Source: APXvYqwEo9hQppMoVvCzBwoZ7FwJSMTjAKclQg2rNt8CO271V0G0hmme0StOIdWiQD9cwM2p1VKfYg==
X-Received: by 2002:a63:3449:: with SMTP id b70mr16648042pga.242.1581928359090; 
 Mon, 17 Feb 2020 00:32:39 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id z10sm16989319pgz.88.2020.02.17.00.32.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 00:32:38 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 6/8] riscv: add STRICT_KERNEL_RWX support
Date: Mon, 17 Feb 2020 16:32:21 +0800
Message-Id: <20200217083223.2011-7-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200217083223.2011-1-zong.li@sifive.com>
References: <20200217083223.2011-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_003239_770464_DF1D515F 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

The commit contains that make text section as non-writable, rodata
section as read-only, and data section as non-executable.

The init section should be changed to non-executable.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig                  |  1 +
 arch/riscv/include/asm/set_memory.h |  8 +++++
 arch/riscv/mm/init.c                | 45 +++++++++++++++++++++++++++++
 3 files changed, 54 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index f524d7e60648..308a4dbc0b39 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -62,6 +62,7 @@ config RISCV
 	select ARCH_HAS_GIGANTIC_PAGE
 	select ARCH_HAS_SET_DIRECT_MAP
 	select ARCH_HAS_SET_MEMORY
+	select ARCH_HAS_STRICT_KERNEL_RWX
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
index a91f192063c2..d3076087cb34 100644
--- a/arch/riscv/include/asm/set_memory.h
+++ b/arch/riscv/include/asm/set_memory.h
@@ -15,6 +15,14 @@ int set_memory_rw(unsigned long addr, int numpages);
 int set_memory_x(unsigned long addr, int numpages);
 int set_memory_nx(unsigned long addr, int numpages);
 
+#ifdef CONFIG_STRICT_KERNEL_RWX
+void set_kernel_text_ro(void);
+void set_kernel_text_rw(void);
+#else
+static inline void set_kernel_text_ro(void) { }
+static inline void set_kernel_text_rw(void) { }
+#endif
+
 int set_direct_map_invalid_noflush(struct page *page);
 int set_direct_map_default_noflush(struct page *page);
 
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 965a8cf4829c..09fa643e079c 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -12,11 +12,13 @@
 #include <linux/sizes.h>
 #include <linux/of_fdt.h>
 #include <linux/libfdt.h>
+#include <linux/set_memory.h>
 
 #include <asm/fixmap.h>
 #include <asm/tlbflush.h>
 #include <asm/sections.h>
 #include <asm/pgtable.h>
+#include <asm/ptdump.h>
 #include <asm/io.h>
 
 #include "../kernel/head.h"
@@ -477,6 +479,49 @@ static void __init setup_vm_final(void)
 	csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
 	local_flush_tlb_all();
 }
+
+#ifdef CONFIG_STRICT_KERNEL_RWX
+void set_kernel_text_rw(void)
+{
+	unsigned long text_start = (unsigned long)_text;
+	unsigned long text_end = (unsigned long)_etext;
+
+	set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
+}
+
+void set_kernel_text_ro(void)
+{
+	unsigned long text_start = (unsigned long)_text;
+	unsigned long text_end = (unsigned long)_etext;
+
+	set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
+}
+
+void mark_rodata_ro(void)
+{
+	unsigned long text_start = (unsigned long)_text;
+	unsigned long text_end = (unsigned long)_etext;
+	unsigned long rodata_start = (unsigned long)__start_rodata;
+	unsigned long data_start = (unsigned long)_sdata;
+	unsigned long max_low = (unsigned long)(__va(PFN_PHYS(max_low_pfn)));
+
+	set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
+	set_memory_ro(rodata_start, (data_start - rodata_start) >> PAGE_SHIFT);
+	set_memory_nx(rodata_start, (data_start - rodata_start) >> PAGE_SHIFT);
+	set_memory_nx(data_start, (max_low - data_start) >> PAGE_SHIFT);
+}
+#endif
+
+void free_initmem(void)
+{
+	unsigned long init_begin = (unsigned long)__init_begin;
+	unsigned long init_end = (unsigned long)__init_end;
+
+	/* Make the region as non-execuatble. */
+	set_memory_nx(init_begin, (init_end - init_begin) >> PAGE_SHIFT);
+	free_initmem_default(POISON_FREE_INITMEM);
+}
+
 #else
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 {
-- 
2.25.0


