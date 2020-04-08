Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 207B31A1CED
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 09:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qkEQ73ghM61/BXRvlDJEs7SEg6hkPYIpkfLFdxJqkM=; b=O2WPeH/A+Xd5Wn
	VT4sQUiKhLHSvD3rF5EGR0qYhOt62e3P8FGEzgRxW1FFvkZwIolzk3ReJBNZCbLdwWV+ruQH2bIWa
	Pn9RiajIBiEIsBDFfq6aP+EiHhKNNa+Bv7KWS3VH3/8txjidGVUwoqQp+OU7LNlmbKqozEz0RX/QM
	79wFhjM5qbRSafqoIRYK+BHDEgh3fa4bbf1onruRGl0aCS0U6pEkTFOhWmsUxeuxQdcTM3sAkFfvr
	BcfbEqtn2bKd5FaaxBds8ykAVU9ZzMU7cuvUj3roINseiI2F6dPCnGnwNZeXPlqOqcYm2Fw2JQSiQ
	sn4IYCI6b7lP1G5DHECw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5aS-0007f5-Jt; Wed, 08 Apr 2020 07:57:28 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5aJ-0007Wo-D0
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 07:57:20 +0000
Received: by mail-pl1-x642.google.com with SMTP id t4so2222005plq.12
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 00:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qkEQ73ghM61/BXRvlDJEs7SEg6hkPYIpkfLFdxJqkM=;
 b=M8FsO9urOLYfx+qNB72XqLl5IeK3k1rkWGB2QMaKDxaZ3GMZ9TkmwxK2X106mzWTZc
 h6SfGPemIf+TGa9RC0VllenRql97VDhVTSgiLjT7uRcU/sIo1L09xxkH4TJZbbTOdany
 KvIdpvhuZ7aZu4Hew/CRlD3Nu11OQ1e8+YCp1KVzmmD0In0eppM5yJwdWx6d1xyfhEF5
 F7/KOZyVklGrHaTKN3apLnV+MT57NiaA9GWFMExs7czk8HzYqQxKqRwOpymkHHiB4R0b
 e94SlP/mbS0WGfoYQTh6cOJPSe609uoPJPYWGWI5B03/10hz2Cwb363yMLe7BTSN9DRM
 yFGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qkEQ73ghM61/BXRvlDJEs7SEg6hkPYIpkfLFdxJqkM=;
 b=cMHL4UNkV5ELRRCc+aqcdUC2ot4nqXgVnEQqOdaH8Lh6gyTjhK2WbIpHb2TV7em+b6
 A2ozWBohC72+ABU6A7pas6Kmb/l/n++50nT2SOio5FrpwVdOIP//Y8ka99qe842vjPWd
 IJvBAROAy6h04Msg84WSrUeeQqN61RROwvvn28A2K4K+2mQJT7lX/J5NP8/drrMbBt8b
 QO+Yy3bgRKktcgKebURwsnx75pD7X066c7uJPNykND2zPe2WWtZ59/9W8DKpVo8ANJgb
 eXnQSsX721m8HG0XjsjvAqoyzWZJ9DjHH4i1QUhxHcpu8a8Ia5vXjwsWrPj/ioeykKFw
 IuaQ==
X-Gm-Message-State: AGi0Pua16Mvfq1N90RyJ5I0e/tH2A1BqAbtVcaxP3iSZevJAHRiR39/w
 cQbf6yGCm2dvDHn/BPnH07QkoA==
X-Google-Smtp-Source: APiQypIIXeNxjIMGSbVinBL4trNwBKG9qqUy1Cb/noizBIcTE9mvQcsmUXs8oVjWTimn72tJBLN8Cw==
X-Received: by 2002:a17:90a:33d1:: with SMTP id
 n75mr3776658pjb.167.1586332638821; 
 Wed, 08 Apr 2020 00:57:18 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d85sm485599pfd.157.2020.04.08.00.57.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 00:57:18 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 5/9] riscv: add ARCH_HAS_SET_DIRECT_MAP support
Date: Wed,  8 Apr 2020 15:57:00 +0800
Message-Id: <357ebe77f7f676dcc7e828436275ec096fd61a96.1586332296.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586332296.git.zong.li@sifive.com>
References: <cover.1586332296.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_005719_543424_55D24CFD 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Add set_direct_map_*() functions for setting the direct map alias for
the page to its default permissions and to an invalid state that cannot
be cached in a TLB. (See d253ca0c ("x86/mm/cpa: Add set_direct_map_*()
functions")) Add a similar implementation for RISC-V.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig                  |  1 +
 arch/riscv/include/asm/set_memory.h |  3 +++
 arch/riscv/mm/pageattr.c            | 24 ++++++++++++++++++++++++
 3 files changed, 28 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 9044e0dd95ea..a94d0f064d9c 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -59,6 +59,7 @@ config RISCV
 	select HAVE_EBPF_JIT if 64BIT
 	select EDAC_SUPPORT
 	select ARCH_HAS_GIGANTIC_PAGE
+	select ARCH_HAS_SET_DIRECT_MAP
 	select ARCH_HAS_SET_MEMORY
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
index 79a810f0f38b..620d81c372d9 100644
--- a/arch/riscv/include/asm/set_memory.h
+++ b/arch/riscv/include/asm/set_memory.h
@@ -21,4 +21,7 @@ static inline int set_memory_x(unsigned long addr, int numpages) { return 0; }
 static inline int set_memory_nx(unsigned long addr, int numpages) { return 0; }
 #endif
 
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
2.26.0


