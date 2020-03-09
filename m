Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9C217E519
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 17:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHHEfisV2sac3yFCwT8HncLiEjhV+vQXrDf+i+Lfo5s=; b=gb2DY+VHiVjONR
	GvgCJLg5OMFXO4VFzC5ASaahXEA70qobC4Gc3yLxkLZAUel4cal18Y3UiZnXM0/3JiZ1H7gIJesEZ
	ANsgFqDybvOzJQ9ab0MHmZDXXTSFJNwI82UHxvB/Uau1mS1Sv01sh19pbXpEO7BrxheAnQynCQopb
	iVt4bjPnSB3uCA/rnSYI1r4t4qMx9fDUcjNsGAzAglrt7prc9LS+bOK5NZEckx7013BVxuO/lc52/
	sNICt9ZoIkScwjRYeb91ero3p4NH3zaW3bdU3JN/Ki9rJPjd9RcKAzWS2JszwK9QogOwiZTOGvlBs
	4PkcNDGrU/O2ZUEAgN7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLh9-0001q4-5L; Mon, 09 Mar 2020 16:55:59 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLh5-0001mx-I7
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 16:55:56 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ca13so114919pjb.2
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 09:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vHHEfisV2sac3yFCwT8HncLiEjhV+vQXrDf+i+Lfo5s=;
 b=BbPLO03dyCa+SyiNdur03wskOA1e08hVCPGslDAS1VUBdOVZO6yyoMP9lPpTBQcmcs
 YIJMzo/kcYik2akSNkRjdEXgA6A68YhK0XKtJV+feTLUp2TBVgslgOYf4DU/h73984p6
 Lr39AvgO+AMKpJzkJXt4oHLkSiIPda9FtnVTpg909nn54MLvY8BPlnAWnAhjblrg/bni
 iJLQY1p2iilrIfTO3xwxe7Q2FfX4JGSfIQbRFSwjgKdBddKQl/bk1JaUDPiMLppDiGly
 qJMb+e5NkKIKt9emfqKxAqjXalN22WWABKOrz4V0ZGPAfQARUw10zya+lHoq9lqFhWXZ
 2RWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vHHEfisV2sac3yFCwT8HncLiEjhV+vQXrDf+i+Lfo5s=;
 b=g2+zrL+BnonSyVWfzsHkqbvpdQNs2mo0rYJna2OCTT7rkKD671J0ukUPiqNlvcSj63
 ox3PDY12Aq+pxshPVdsV/EeDDOgQoekzYUNyISHUtf7aXEN11Z+218oRKmUldfRbzWqW
 VHG7VNGOa7KZUZ3iSNivGdjCiQmx+XTo8V7do8ZnXlKLaPZdFFd/JV6p+Z8+Vgx2UN7L
 cuLX+B+7qHQcW1+cu3CE1H5ixNzjJ5nwi3WVo8FFxqIY72Uv/fPDK4EQ44EfVk+y/Nxm
 IJUPNYuIiRdii+ToTNloShqetsDqutLvQlr7y9EdSJ0R39U6e3axf9UWJtgYDPWtnb4T
 qRHw==
X-Gm-Message-State: ANhLgQ0BPJFU+a1ukFgpPKgwVphpDZ1eqBLhfE7BA8/RVMtMCvv2POb0
 59ffBclVfW6Eb1fSNUiBt5QjIg==
X-Google-Smtp-Source: ADFU+vugSzzgoz7P/m6okoBnNDkn/m4RKfS4UaZxqEjoQ8tY5gOY5KCpG8thfmum+g91BYz9JrNrNw==
X-Received: by 2002:a17:902:a409:: with SMTP id
 p9mr17015682plq.211.1583772955012; 
 Mon, 09 Mar 2020 09:55:55 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id cm2sm104013pjb.23.2020.03.09.09.55.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:55:54 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/9] riscv: add ARCH_HAS_SET_DIRECT_MAP support
Date: Tue, 10 Mar 2020 00:55:37 +0800
Message-Id: <e9850f9bf5a38be492fd57bbd5f1d7f8f7578cc5.1583772574.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583772574.git.zong.li@sifive.com>
References: <cover.1583772574.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095555_604946_527C1AF2 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
index 9ab592aa1b5f..71fabb0ffdbe 100644
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
2.25.1


