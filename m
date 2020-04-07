Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6753A1A0F98
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 16:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4WIiXeGbKDxs9UbyyfZOjVgyCJTWA/AduHG+mw3Ozg=; b=sj/U3q62ktZ5Zn
	tk1NuMjGncoaTw3ckgchyZRQ/z5DLYxa3Uc7Doc8ogodfNCPc+bMx6aAhSQxRUrFexhYMtGKaRWbf
	9z7w9IKml+H8IN0niQNw1EGLVnxQDAvw81tP+x1lpdUVODX/wl/JubD1n/JgJ/IIhUsigUdd2HbTU
	s2Um0z800hUPh33WBEwiGBJFIcYy6Xt0JE1iGY/IaLV5DoNGf3wd2RuyMLK0BZAYGBnGsXfKfLseh
	uWWOW0iGASqwUDdhWoVWsuVPK6RGaT0Af5G9ATsURUtH1Ra/oArC+Wa0zRCLmXCRTbL/cOR3uic6P
	EcEh26y6IN05mZaCSCxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpVx-000709-SC; Tue, 07 Apr 2020 14:47:45 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpVW-0006TJ-Lr
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 14:47:20 +0000
Received: by mail-pj1-x1044.google.com with SMTP id nu11so858575pjb.1
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 07:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E4WIiXeGbKDxs9UbyyfZOjVgyCJTWA/AduHG+mw3Ozg=;
 b=TtvzXxSJ0vpaB0ZG++G2fkPig6AtFEsttCjqY2Xvv9MaF0/H7Z/pUc+9b4ouCtetSj
 4120O3V+N+4RGONMM6wYETKEPPwBodh7xtC8Aeat9tSSrhoRmifL+6stENNVtQwsGgn4
 4qdDIhygGHzmwFk2y8DpRVDHh5WpmIDnqHRLSWxY83gDpKpJjWbZh7S7P9kq1Ks1kXxI
 b3Qe2gvh2ejACDVV9xe+XJV40SBNBlygiUBuFR/PU+9KbIRTWi5fg15zt3eVXvMTByU+
 xzW7/AEiuPvSp7AYkSo4O/lwLVRR/E/a40w/7WqVXe6vnpHdE8iaICEgw4NRtXQ3zqjW
 W6Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E4WIiXeGbKDxs9UbyyfZOjVgyCJTWA/AduHG+mw3Ozg=;
 b=ePyE7nQTEDHiFUQ47bV/d3ywFie2QbMDgeStfQsktC8L2Lhz0dnQo0I4fDLezgPo8x
 oNcfhp6jLsXqlfQ8R9FPPc+lS/fUphe+/Icl35c76tQb9KrLRjYWOcHLmI5VPXJHPCzE
 4wQSJzNdhOZ7cq3ynGEG1jpvquna48qyd85VMwhWi8SKZZ5a7IutafvCCJYo+cTErXHA
 GEaIQ5MIFgChwq41P/vxRXK6xb+nDJ+zlkfk5blLO9Z5OoUc0FhfAqp/cSd8S5Acu9f0
 I+L5mH/OgiQHopPiLrQ84dvQPkP3UgiszqFbKAvoX6r4wwcCeJdJW6NBexg4YdsCEpcp
 1Z1w==
X-Gm-Message-State: AGi0Pub/KPc0DOIEhvn1Ycpwps4qup2wQ1sH/8h5NM0K/9H60Zczm/Rk
 kza9UYMN5USMBFRFyEGugUFRSQ==
X-Google-Smtp-Source: APiQypJUKWF94J6ayuHjup8iitIs5Pg3Mufg8IUFflYhlm4L0XY+598UDR5xW3cZS1qS1UmEjpbxIw==
X-Received: by 2002:a17:90a:c207:: with SMTP id
 e7mr3190940pjt.117.1586270837136; 
 Tue, 07 Apr 2020 07:47:17 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id y15sm14190093pfc.206.2020.04.07.07.47.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 07:47:16 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 9/9] riscv: add STRICT_KERNEL_RWX support
Date: Tue,  7 Apr 2020 22:46:54 +0800
Message-Id: <933a02ac01c1ac2a5c174474d46da12e8db96d63.1586265122.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586265122.git.zong.li@sifive.com>
References: <cover.1586265122.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_074718_761570_33B285CF 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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


