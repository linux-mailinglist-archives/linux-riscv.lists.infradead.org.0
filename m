Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C9C160D5F
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Feb 2020 09:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPsxu3vF78VOjjNcgLn5UDiKYUv2stj5MGhKdcRPAdc=; b=ZK4rIQTaiaVxiw
	vnOjcsjF3Iut8oiWOSoSAa01GmTsR/QERM95Cf1OgK/zVyT2PIBqz02b8HLh1qbf/cFn9gUf6dJqy
	RV3Yn1LxhR81nfBVGCew5PeU91PqtutOql/z/lTk8fvAYhSM9/P9DT7+8SdgmZwRPVhyn//h5dTab
	gvep1ahgAGyh8aCdFz4WErs7ip9Dq3PaBg0wqhMCT8iDTDDPYxFiSsnCT8UJcGQ4dZrXB9RF7z0Wu
	u9rN80bXJFEMqGPrsBrpT44i4xk/C9CY5KSFXCEEfAtKDdViPs+Vl9V14l+IagZ12hVAriVwIwtL9
	1ItU2CIYL/iJVXAQUFQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bpd-0005va-VV; Mon, 17 Feb 2020 08:32:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bpW-0005h1-JD
 for linux-riscv@lists.infradead.org; Mon, 17 Feb 2020 08:32:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id j9so8431093pfa.8
 for <linux-riscv@lists.infradead.org>; Mon, 17 Feb 2020 00:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gPsxu3vF78VOjjNcgLn5UDiKYUv2stj5MGhKdcRPAdc=;
 b=QqfINpR4S7uL5kzHi8zrFcEKpS0Hg6u0xhWvKZCxhOoVT8L95+H0av5sZv8SMIac4L
 m9Y32Pb60l6i1c8EfoTohasGi8mVKDbPiE0EDl1u6VhnGCKibAoT6zpoy+iy39KUZ04/
 FUQBEUjTIyi+2LGaFqST+8rSr2NfpNuJzZUgUftU5yT2l2zNwxGg2krVwXx0x92LIn37
 b8pR/IMMdGiJbQhsUJKH8Tl+ksvjKtjFBw4uZH39UnW+/bsuwYxlExwcEn7Ipy/wKW2Q
 AgoGrRI8Xr92quYiRyKvvcFt82qn06dATL7pOG399TqQvwYf4d3HOxfXR/ALUQqKVLEb
 BzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gPsxu3vF78VOjjNcgLn5UDiKYUv2stj5MGhKdcRPAdc=;
 b=sSgKN1D/3ABtJom8HRUroztco7bpxWF6lpJRtUB6WNk871so1X5LMlU99stYIe7TRX
 llxlzPQfNQ1dxDCuaHpFZ4KlK6GZV4o+tx3BhPfJ0avVqA0nHRGTSd7rNKvoMJHZuVHo
 chlxK2/d0ciUGmHgviUGQM9qyq/zB6QbXdTXxN0kKcwJyFlaEQjtvg8owRCAUZUG3+SN
 EiFmCzOdPMn1lqkCFJbBmtov2ck8H3hmU7L5rdousNzSxSulFW0XX508/4++1rZdVHv2
 wu9Ho2//H6/8de9ReyorOP6Fs1eeLLRw/aPp1qtGO43mnn80CDqXAhUpGDi1gOYEpOK/
 BO5A==
X-Gm-Message-State: APjAAAX8v3mxP52VCF9dFpTRRkAiJ8dkC326Ed4WgL8o3vXl0zkdlNfB
 98sRpglYdtFh6/YJze4qQEWADQ==
X-Google-Smtp-Source: APXvYqymt76w2DY7nuRpkPY4VFK07kmA6SpuJN4xTsV3hOUxHlwKdESWCmhnp5BoDlnAx1z2ts+Gfg==
X-Received: by 2002:a63:6441:: with SMTP id y62mr15877518pgb.86.1581928357485; 
 Mon, 17 Feb 2020 00:32:37 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id z10sm16989319pgz.88.2020.02.17.00.32.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 00:32:37 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/8] riscv: add alignment for text, rodata and data sections
Date: Mon, 17 Feb 2020 16:32:20 +0800
Message-Id: <20200217083223.2011-6-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200217083223.2011-1-zong.li@sifive.com>
References: <20200217083223.2011-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_003238_681392_95436A20 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

The kernel mapping will tried to optimize its mapping by using bigger
size. In rv64, it tries to use PMD_SIZE, and tryies to use PGDIR_SIZE in
rv32. To ensure that the start address of these sections could fit the
mapping entry size, make them align to the biggest alignment.

Define a macro SECTION_ALIGN because the HPAGE_SIZE or PMD_SIZE, etc.,
are invisible in linker script.

This patch is prepared for STRICT_KERNEL_RWX support.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/include/asm/set_memory.h | 13 +++++++++++++
 arch/riscv/kernel/vmlinux.lds.S     |  4 +++-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
index a9783a878dca..a91f192063c2 100644
--- a/arch/riscv/include/asm/set_memory.h
+++ b/arch/riscv/include/asm/set_memory.h
@@ -6,6 +6,7 @@
 #ifndef _ASM_RISCV_SET_MEMORY_H
 #define _ASM_RISCV_SET_MEMORY_H
 
+#ifndef __ASSEMBLY__
 /*
  * Functions to change memory attributes.
  */
@@ -17,4 +18,16 @@ int set_memory_nx(unsigned long addr, int numpages);
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
index 4ba8a5397e8b..0b145b9c1778 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -37,6 +37,7 @@ SECTIONS
 	PERCPU_SECTION(L1_CACHE_BYTES)
 	__init_end = .;
 
+	. = ALIGN(SECTION_ALIGN);
 	.text : {
 		_text = .;
 		_stext = .;
@@ -53,13 +54,14 @@ SECTIONS
 	}
 
 	/* Start of data section */
-	RO_DATA(L1_CACHE_BYTES)
+	RO_DATA(SECTION_ALIGN)
 	.srodata : {
 		*(.srodata*)
 	}
 
 	EXCEPTION_TABLE(0x10)
 
+	. = ALIGN(SECTION_ALIGN);
 	_sdata = .;
 
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
-- 
2.25.0


