Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E6D1A1CF2
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 09:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4WIiXeGbKDxs9UbyyfZOjVgyCJTWA/AduHG+mw3Ozg=; b=IwGDa8hMbArYAv
	jElh/cwS297LhR0injtc9o/6yyLkFXJHbV7BfFbNuSrNRCeSWP4e9z0KZNXeY8MheVLZh0/mtCRqQ
	hBDkTBW1dNEztVkouruFNGqZMscMSZ/Md5GkKkvM2wEVj5HUWzhYhO1DjAaWZelrMXwzVDqhqAzhC
	uGjXdaqsEXY83k7hUd9KuiIfzVNfRwrbLYIgR6jZyrLxO7e3zHOEs4+ZK0lW2lThb4MxEUzsxUQoB
	vI7ezuh5Fk8lc3vzp+jVV5ocfqIWr6syILwQtnkhlZNUuISmmyfTzpGJo1/G0b/IIkndscVpqE1bW
	niQJ0ekrNCY5wQ8Hu5vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5ab-0007w6-RO; Wed, 08 Apr 2020 07:57:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5aR-0007iW-91
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 07:57:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id s23so2218089plq.13
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 00:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E4WIiXeGbKDxs9UbyyfZOjVgyCJTWA/AduHG+mw3Ozg=;
 b=TOZYTN0ZmTo7tkdrjh0d1AhqQRXNkDEiNfrJu4HSuIaIiOkXzgv343+X9uduChlxuH
 5GPD/mmxsXBoBB14GTJKfsYkmdbX+iUL+dCVfbt+u75yXYegqNi1SrMLOcTYAi4T88lv
 qtT4EPWIizz8lTpXFwCmAj5VEUJfA30aJ5B+himyfvXRvcepspXbnZEigEMTMyxBRsI1
 rCfbOUbOO2fuhdV2fehBFtONQJoNk61FccNMvakWX+2TCphrgANZ1IFSPA42eCeWa9OG
 M+RbsCIz3G7evFBUt61IGLqkg9rI5gPYiJuMTj5URYLiZTZW/IrnKhHTcL/h5ex2W4c1
 2vRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E4WIiXeGbKDxs9UbyyfZOjVgyCJTWA/AduHG+mw3Ozg=;
 b=fCEaTQqjO7tb0x3uj0he3oC9RigFQyMsbJFnAwjIq5Z0y3IiqMrChYVuPmE2iKoyP3
 y7hyyRAxLVka40PWtPQ+cf+WuBDBlNbECwN8ran2FOsGIjpq4E+Qs5VZZiXX6gsS5tlA
 5iOnSiNDXbSCL7oHS64dRonhCObqlrBwGRqNkx7zi4LeWlDV5cNHcaH4ImXoohPT6yqk
 tk55qI318kFXoMvNwSrU2EWH5Ucf2b0Xv340mZAZC/EiqA7cHo9LytmSiZeXDCY2CcEW
 keMuShZLMpXR9IFSGTjc1mtJFZlLYSCaOPR8ROW944cP18XU3a0uNR1soHtylyGYoP0f
 UDDw==
X-Gm-Message-State: AGi0PuZ3RTH+EmJ7bSoSidlG7C8BXpzqKNLBjZhcOP1U+vdS+Wk8PjKV
 qrUt9phQa7UabDeFNPT4mha/PWiBpW0w1A==
X-Google-Smtp-Source: APiQypIgaMKX49GV/U1HjE4l3Up0jhdZCobmLhyfkuxFpjq9sh+MzskfqRAcr1tN8QgE7gggnLep2w==
X-Received: by 2002:a17:90a:714b:: with SMTP id
 g11mr3741642pjs.17.1586332646601; 
 Wed, 08 Apr 2020 00:57:26 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d85sm485599pfd.157.2020.04.08.00.57.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 00:57:26 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 9/9] riscv: add STRICT_KERNEL_RWX support
Date: Wed,  8 Apr 2020 15:57:04 +0800
Message-Id: <100e739c5fd722a96fcc640c8ee0c82fe34fcb6a.1586332296.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586332296.git.zong.li@sifive.com>
References: <cover.1586332296.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_005727_332797_EC408AB7 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The commit contains that make text section as non-writable, rodata
section as read-only, and data section as non-executable.

The init section should be changed to non-executable.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig                  |  1 +
 arch/riscv/include/asm/set_memory.h |  8 ++++++
 arch/riscv/mm/init.c                | 44 +++++++++++++++++++++++++++++
 3 files changed, 53 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 1e1efc998baf..58b556167d59 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -61,6 +61,7 @@ config RISCV
 	select ARCH_HAS_GIGANTIC_PAGE
 	select ARCH_HAS_SET_DIRECT_MAP
 	select ARCH_HAS_SET_MEMORY
+	select ARCH_HAS_STRICT_KERNEL_RWX
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
index 4c5bae7ca01c..c38df4771c09 100644
--- a/arch/riscv/include/asm/set_memory.h
+++ b/arch/riscv/include/asm/set_memory.h
@@ -22,6 +22,14 @@ static inline int set_memory_x(unsigned long addr, int numpages) { return 0; }
 static inline int set_memory_nx(unsigned long addr, int numpages) { return 0; }
 #endif
 
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
index fab855963c73..b55be44ff9bd 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -12,6 +12,7 @@
 #include <linux/sizes.h>
 #include <linux/of_fdt.h>
 #include <linux/libfdt.h>
+#include <linux/set_memory.h>
 
 #include <asm/fixmap.h>
 #include <asm/tlbflush.h>
@@ -477,6 +478,17 @@ static void __init setup_vm_final(void)
 	csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
 	local_flush_tlb_all();
 }
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
@@ -488,6 +500,38 @@ static inline void setup_vm_final(void)
 }
 #endif /* CONFIG_MMU */
 
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
 void __init paging_init(void)
 {
 	setup_vm_final();
-- 
2.26.0


