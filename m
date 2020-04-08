Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2ED1A1CF0
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 09:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geDMvpdyp4eREUjGenxPiMAgszPzsf8hdgTrRUcyDVI=; b=nfidC9TYl14okL
	9r0yRics/fqbGsaaeAIfypVzwuAORsmplrqja0cKARXEQYx/63IXtSmpUD851Qf6Itm7Cb4Lj3tti
	0zNhNDM2BN5YaogSespZuOjMrYH9S1qHejNq2yzqfIVoVPT+TaWREgW7DgKmbZl/MUEDGuJnI2SEp
	paVdi7mXd5toKISgk2SPNsbR56PR6wsgNPLXfOxzbwKNZnO6S8NNPZVb3xpcMWcVnzkxPvFl1+TR2
	BgnM/vz37166FgCUHqnFjKyGLG1kLcHTQiR3s02U6lDlkoz9LeLl/GHgf0I8RzW55NqDkjyeWFyao
	fbWfMdLdNJVOriAqQeBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5aX-0007pT-LD; Wed, 08 Apr 2020 07:57:33 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5aP-0007fw-9g
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 07:57:26 +0000
Received: by mail-pl1-x643.google.com with SMTP id d24so2232668pll.8
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 00:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=geDMvpdyp4eREUjGenxPiMAgszPzsf8hdgTrRUcyDVI=;
 b=S5QTx2CFt98Mt0i/C+3txkabVRmjPH9b1pHlRJMR81mtdW58kYh3qyK64Fxh3p+xSf
 aAW3UKDWwCxdsOUs10tw5Ieny0e/pYI/NixKjBtIvtsme6hq16mKn0ItpbINHGIfLrgl
 ahuZAlc1+dGCD+d7DCjrGl9v4lTLPWjkH+eMkZ2iyLMgWUlGt93OeiLRRj5jrflGGofw
 K+B3X0TIF3SIYc19ebpPfRZ0nORpsN0mnJSbba8ZifizsOIGjzaTmsoSA6e1xANjcnWr
 C2IZ5SKoe/ACv7Ijz+iMtf02S2kQM754MH/kuVyZkMTV6803o5EHrqrVFleBcaWMTS8a
 lPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=geDMvpdyp4eREUjGenxPiMAgszPzsf8hdgTrRUcyDVI=;
 b=chsQdDlkAJSlgt6f5slA8JY75W9BqNq5zKtjABbu/wyOdLzgrarFsFrhyLnrkeukD1
 34bP8AKHQ1jPYdw54dfjcVbur8yXSQhnqaF6VOqa0JWxVRuet9xUJgaFpNuBtrm5pwKL
 7FPjJ/ppxkoFSyLROx1qg6Al8sZhOThr164D3Vxmbpllp0n2ACsj1qp5b/0fF2d4KSoS
 +i2SXgoG9Nb8HEjPp0XcuM/RstShqWbXn81b8lYDSALr5TaigNjvt0cEVDiQZDMGoSFS
 v/lNTwzazsB7tgkP/rzx0lqfa5YIn1Lx5lorvns4A0ZVIySrSR/c8OX3cNykQFECoRlu
 cg/A==
X-Gm-Message-State: AGi0Pubu2hm/x9DmtDXIKABhdOSuXeYMr2E/XMImnpx9ruYR1hnkrKnB
 R0Jh/1Vbug132yc4yumsen9wxA==
X-Google-Smtp-Source: APiQypI5ixhPVxiaOZYKBPMsxFPDPz2i1VrQzUF3bngypFXRTDQ8GJzp3IxjnJPFrgBfCklRUsc91A==
X-Received: by 2002:a17:90a:1b6b:: with SMTP id
 q98mr3859791pjq.107.1586332644756; 
 Wed, 08 Apr 2020 00:57:24 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d85sm485599pfd.157.2020.04.08.00.57.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 00:57:24 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 8/9] riscv: add alignment for text, rodata and data sections
Date: Wed,  8 Apr 2020 15:57:03 +0800
Message-Id: <d78c601d553dde791057b54252064221f960546e.1586332296.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586332296.git.zong.li@sifive.com>
References: <cover.1586332296.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_005725_360140_B896A741 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The kernel mapping will tried to optimize its mapping by using bigger
size. In rv64, it tries to use PMD_SIZE, and tryies to use PGDIR_SIZE in
rv32. To ensure that the start address of these sections could fit the
mapping entry size, make them align to the biggest alignment.

Define a macro SECTION_ALIGN because the HPAGE_SIZE or PMD_SIZE, etc.,
are invisible in linker script.

This patch is prepared for STRICT_KERNEL_RWX support.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/include/asm/set_memory.h | 13 +++++++++++++
 arch/riscv/kernel/vmlinux.lds.S     |  5 ++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
index 620d81c372d9..4c5bae7ca01c 100644
--- a/arch/riscv/include/asm/set_memory.h
+++ b/arch/riscv/include/asm/set_memory.h
@@ -6,6 +6,7 @@
 #ifndef _ASM_RISCV_SET_MEMORY_H
 #define _ASM_RISCV_SET_MEMORY_H
 
+#ifndef __ASSEMBLY__
 /*
  * Functions to change memory attributes.
  */
@@ -24,4 +25,16 @@ static inline int set_memory_nx(unsigned long addr, int numpages) { return 0; }
 int set_direct_map_invalid_noflush(struct page *page);
 int set_direct_map_default_noflush(struct page *page);
 
+#endif /* __ASSEMBLY__ */
+
+#ifdef CONFIG_ARCH_HAS_STRICT_KERNEL_RWX
+#ifdef CONFIG_64BIT
+#define SECTION_ALIGN (1 << 21)
+#else
+#define SECTION_ALIGN (1 << 22)
+#endif
+#else /* !CONFIG_ARCH_HAS_STRICT_KERNEL_RWX */
+#define SECTION_ALIGN L1_CACHE_BYTES
+#endif /* CONFIG_ARCH_HAS_STRICT_KERNEL_RWX */
+
 #endif /* _ASM_RISCV_SET_MEMORY_H */
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 02e948b620af..ef87deea0350 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -9,6 +9,7 @@
 #include <asm/page.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
+#include <asm/set_memory.h>
 
 OUTPUT_ARCH(riscv)
 ENTRY(_start)
@@ -36,6 +37,7 @@ SECTIONS
 	PERCPU_SECTION(L1_CACHE_BYTES)
 	__init_end = .;
 
+	. = ALIGN(SECTION_ALIGN);
 	.text : {
 		_text = .;
 		_stext = .;
@@ -53,13 +55,14 @@ SECTIONS
 
 	/* Start of data section */
 	_sdata = .;
-	RO_DATA(L1_CACHE_BYTES)
+	RO_DATA(SECTION_ALIGN)
 	.srodata : {
 		*(.srodata*)
 	}
 
 	EXCEPTION_TABLE(0x10)
 
+	. = ALIGN(SECTION_ALIGN);
 	_data = .;
 
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
-- 
2.26.0


