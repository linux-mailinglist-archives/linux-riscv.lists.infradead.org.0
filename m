Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680CF17DA9F
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 09:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jk+6Ai0zQ5+yGQN7AMCqCE/JDR6IbzEcXQt+dOJB8WI=; b=e8qADS7mXx7RFy
	9vlIcE6G1YI1KJuyxlQX2SAJiF+HrOED0PKdGa110q3vWp6JyiGuebSoJi1hLe+N9nUYaKxZTQnsx
	ympBcCMtYJsz//Fng0YdsjL+31CT745tKps4MwwlGveLFsWHN2lZNckgaveUQBmC58fk8lhBEXljs
	mYjd3ymptxIEczz1nVRuXjY54b6Jv/XAf1Bw83c4QYrnKe/0ltBw2pv//+fdFqGqlW9ELrD5JIYvu
	eeDdL/aWJ2VRv8P1hZcLc0ME22pzKPuKJr2UNa/hbtRdtrclByYXqPfvxRzCPXy+84BMfyZYqq1gA
	QkMG/nQg+CmykKQ3326g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDgh-0006C1-Pi; Mon, 09 Mar 2020 08:22:59 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDgY-00060X-Aj
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 08:22:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id gv19so4105677pjb.5
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 01:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Jk+6Ai0zQ5+yGQN7AMCqCE/JDR6IbzEcXQt+dOJB8WI=;
 b=fVAQJLcBuAarKhkTLGiY/MTte975yy67x3a7nUDmF4mkzDjt6o3dy8EIh77gfD4hzG
 sE/62YaH+XwsdN+emghA8rxvQZRehXhZnBgIleErSQO3B34aw4F/KpqeYw0y6042HvYT
 FxykW2M/abiQ3pX3bS61STAoJIMsB81Ip0sSmUkVDArjAnYXVSQqGQP73Xi8xss0g8jD
 pVl4O8zzupKD/ra3KWi9vJcQhDg3xAIeLq2mrdxCJo1Mvobz4LjTV94STWCOU/QYvTJh
 SMDGJHinzP6+ES8n9FLQerccPRtfVQnj73kEWfCS+NjpIiepMMUKkvXcy97ImZJ7Uscc
 b84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Jk+6Ai0zQ5+yGQN7AMCqCE/JDR6IbzEcXQt+dOJB8WI=;
 b=bMlslTiY9y79+5nKs3nB4G6AOPtC58nFU21gcIyW6bnW2SMG4Vzs0sV6R0gT1kAXCf
 55Doxztifor/DYMGD6oiwdU3QmP8co3/bxtIno24W7BN3m2ZDGv5b8rPIn7W/OnuA+0d
 g8FoiktJdxljf4sgey6dapnNTh/5TCnUIOiWV60rxr65N+z196Nxf6+lkQvVWzEjri9O
 On9O/f9Tte9tq4bk9ObQhQpeILDv8awwC18ocH7/vopQZXmIgVPgkeu4tPodDwd7axha
 obnsCNlBTceSThZup2MUMnJhm8wXt1AnaP1fJaKW6KH6cwE0fej/MPjOdLwHg4bok0ng
 xxVQ==
X-Gm-Message-State: ANhLgQ3KrO/TrHzzSrxjcdh0u2g/uJhms2QOJp26A1RD64K3G44/r/Xi
 HLfe6D1i753GI9eaD4zoI+rO1A==
X-Google-Smtp-Source: ADFU+vt6F7pkM+4CukvLWmmOP8to9w+YuXtKiUC27V7+wmaGlx7D6vRPfpvoFC7SBW0sVRPY7ZOyZg==
X-Received: by 2002:a17:902:c214:: with SMTP id
 20mr15571049pll.0.1583742169463; 
 Mon, 09 Mar 2020 01:22:49 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id v5sm18364779pfn.64.2020.03.09.01.22.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 01:22:48 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/9] riscv: add STRICT_KERNEL_RWX support
Date: Mon,  9 Mar 2020 16:22:26 +0800
Message-Id: <074b7da48f0b651f218346ef59cfdc89ac098503.1583741997.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583741997.git.zong.li@sifive.com>
References: <cover.1583741997.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_012250_396251_39C74B43 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
index 965a8cf4829c..0d489cb51d5a 100644
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
+	unsigned long data_start = (unsigned long)_data;
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
2.25.1


