Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B17160D5A
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Feb 2020 09:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QV05nl1zAojbiLTVKnGFtXrM2l5IHlEM0aaK8Qpllr0=; b=kj8rvt02LX6lnl
	9Pu37xo2L1LNj2lfPZyDjgG4eghqEAeoWugiNq2cMrDnFdkrweEXQNr79/MtFYwluvDyWPgWUXnT0
	BZobIAEzqLKCcys7nAUEH5mSTPON2EcNSmSMa3mJrtUCUiVB/v/Zpkl81TFzSzOzF++Un/qvTvb+D
	Lumyt/18vV+8h6TH4CjPtcxNGSL5Hev2mHzYziyCjjHIo32tWuHJnANKX1BoKopfh14RY8dbSnYv7
	3IyBiETSDZRcgIB2osHce9eUhScjH/aQ5qMMliJKzFXjsEbb+RheNz9RpQ6s8v+4Z6GJ0gLLRxYtL
	5HZGeF+0c/OECv5Qu9Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bpV-0005eU-Lu; Mon, 17 Feb 2020 08:32:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bpR-0005aL-3V
 for linux-riscv@lists.infradead.org; Mon, 17 Feb 2020 08:32:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id c23so6411403plz.4
 for <linux-riscv@lists.infradead.org>; Mon, 17 Feb 2020 00:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QV05nl1zAojbiLTVKnGFtXrM2l5IHlEM0aaK8Qpllr0=;
 b=BNGkX/+PNF9RrOz6P/Y6buFJK2xKWgREEdOZvQ+I1uGvbmA6GCcw5m7IrkzMBUJwab
 KJpUCn9lE8gwmhWqZI/C/5Xao5cBTD/fPTfRhvMN0pXBmxWTDI84GO7oHsXURPJsu2TF
 ym4mvOQdmPj9/utlRvsanB8cgN9dD6seW49s14szKlYozUXNR0MJY9zqJ5y5enlWJsdk
 Bs4WhCnozkqTT6VcA3pJkCeX6sYW1e8zDO0BCAkMeNuZrD7mgPZK8EKxyZoKMmy6CyLG
 axVCXifesrfol+pHH6KaJlfQvSYpuRy64DeAwabzTfFZ5WLxxlwM2AZoNU2P4/IhSTwq
 M2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QV05nl1zAojbiLTVKnGFtXrM2l5IHlEM0aaK8Qpllr0=;
 b=PTtKo6HOSwrr/IsEledYDx73y9lK2S2+0/CPmR0DhmT4+A3A1QVTE9IRKL/lb/QjPr
 sbhin0kAfXezIPhHUnCUAzUKtTdUMIFSUuzcjt1+1esE68c5tozY+8xGd3GP1AZmK++E
 7fKfmfEZbEldQENTlYjXs0/6frplajHFGjX6hVxzRPhHnqkjtyhy1Y8IIxqrLOffjsJS
 wmEBgW4/Ihy6ALjmbQrfyouBLgA/7uRBOWQ2nSVar1ARAFCk8QamjAeqr44CHkOa++7o
 wWAn7AZG2ewGsodV9ug6TMal+I+J+PIsJIRb0KhJBoPhSyt90ZBYDaLMiy7FtC585am6
 vdTA==
X-Gm-Message-State: APjAAAUcnJewiJzW4NAnuNdcsywa44EB805zZJpBgXJNe+WYK8pchnw9
 umtE8WtgNRArBWdzuimvL1u+N73EU2g=
X-Google-Smtp-Source: APXvYqydROiyBhUZtlVN72Fe7TPNNBjcp6x58zxguFrmVQMWPOO9xgPGygDk/r8mmo8ephQKtYQ0gA==
X-Received: by 2002:a17:90a:191:: with SMTP id
 17mr18926233pjc.88.1581928352545; 
 Mon, 17 Feb 2020 00:32:32 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id z10sm16989319pgz.88.2020.02.17.00.32.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 00:32:32 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/8] riscv: add ARCH_HAS_SET_DIRECT_MAP support
Date: Mon, 17 Feb 2020 16:32:17 +0800
Message-Id: <20200217083223.2011-3-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200217083223.2011-1-zong.li@sifive.com>
References: <20200217083223.2011-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_003233_141586_6297DE96 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Add set_direct_map_*() functions for setting the direct map alias for
the page to its default permissions and to an invalid state that cannot
be cached in a TLB. (See d253ca0c ("x86/mm/cpa: Add set_direct_map_*()
functions")) Add a similar implementation for RISC-V.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig                  |  1 +
 arch/riscv/include/asm/set_memory.h |  3 +++
 arch/riscv/mm/pageattr.c            | 24 ++++++++++++++++++++++++
 3 files changed, 28 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 76ed36543b3a..07bf1a7c0dd2 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -60,6 +60,7 @@ config RISCV
 	select HAVE_EBPF_JIT if 64BIT
 	select EDAC_SUPPORT
 	select ARCH_HAS_GIGANTIC_PAGE
+	select ARCH_HAS_SET_DIRECT_MAP
 	select ARCH_HAS_SET_MEMORY
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
index 936f08063566..a9783a878dca 100644
--- a/arch/riscv/include/asm/set_memory.h
+++ b/arch/riscv/include/asm/set_memory.h
@@ -14,4 +14,7 @@ int set_memory_rw(unsigned long addr, int numpages);
 int set_memory_x(unsigned long addr, int numpages);
 int set_memory_nx(unsigned long addr, int numpages);
 
+int set_direct_map_invalid_noflush(struct page *page);
+int set_direct_map_default_noflush(struct page *page);
+
 #endif /* _ASM_RISCV_SET_MEMORY_H */
diff --git a/arch/riscv/mm/pageattr.c b/arch/riscv/mm/pageattr.c
index fcd59ef2835b..7be6cd67e2ef 100644
--- a/arch/riscv/mm/pageattr.c
+++ b/arch/riscv/mm/pageattr.c
@@ -148,3 +148,27 @@ int set_memory_nx(unsigned long addr, int numpages)
 {
 	return __set_memory(addr, numpages, __pgprot(0), __pgprot(_PAGE_EXEC));
 }
+
+int set_direct_map_invalid_noflush(struct page *page)
+{
+	unsigned long start = (unsigned long)page_address(page);
+	unsigned long end = start + PAGE_SIZE;
+	struct pageattr_masks masks = {
+		.set_mask = __pgprot(0),
+		.clear_mask = __pgprot(_PAGE_PRESENT)
+	};
+
+	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+}
+
+int set_direct_map_default_noflush(struct page *page)
+{
+	unsigned long start = (unsigned long)page_address(page);
+	unsigned long end = start + PAGE_SIZE;
+	struct pageattr_masks masks = {
+		.set_mask = PAGE_KERNEL,
+		.clear_mask = __pgprot(0)
+	};
+
+	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+}
-- 
2.25.0


