Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5AF1A0F8D
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 16:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1qkEQ73ghM61/BXRvlDJEs7SEg6hkPYIpkfLFdxJqkM=; b=UxXehSUmVa/dXd
	AFrY8HfGZeL/1eQQu5e3kClvWVvL1hXzJyA26PJiad70ovU1LAeoETctgyII9Lyx6BWl3+Kw1IPhi
	+MEAjk3FDJ10LrsZmK49XB85ghpXkQMr8/go5ou0zaMrUZrvSMYeo7anolMmI4jfzggyhMPBLG0If
	U/XYrSnspJvuOlEsrEShY/8fxFpsHdiNRLb9ZVBU8L+MFXrofuAN9Eg2u7mBI0M+66shXy9SdIkX6
	0LEOHlKqiYqeXDWhFm2oQn9oljdjPWCLOOAGSqZ2jiKAgcg4VVp9PFaA+j9NPoRlFCM1SQJibdrZy
	v7y9O4FDJHSCpBQLJgJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpVX-0006Qs-G8; Tue, 07 Apr 2020 14:47:19 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpVO-0006HT-1n
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 14:47:11 +0000
Received: by mail-pj1-x1043.google.com with SMTP id kx8so852648pjb.5
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 07:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1qkEQ73ghM61/BXRvlDJEs7SEg6hkPYIpkfLFdxJqkM=;
 b=Z95WsXjaZ4R1OiZAjtFWozqj9735nUzepdNDu+Rm+ykKmZ1QhMW1WXzh4mh+TxtIUE
 3up1bhUw0eoHYPS2z8u6Mz4s5j4A2KaKT+b3o5aWzvtjB2dNihRQ+qXe8mFuGaUjOb7e
 PHR/jKA1Ybc0M0HAbqxdcQ4Id/syAJDH5PBKE8wm9I8phudmq4vsXT6ifv3WXy0nXAIB
 AH2lCtDzZ8wqQyWQ5t3ZAaLK/NdSJoIrbi78EcorwBkK9t45hMs/R6/CQqwUJ3hI8RZL
 W9QEv1DPVnBiArLheGHAnGn1vDRriUf+GqOdmk4bKQW2fK7NCvaaEyPjormnBQMmeELy
 Pchg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1qkEQ73ghM61/BXRvlDJEs7SEg6hkPYIpkfLFdxJqkM=;
 b=CEyl4aT5uzxoffqIuuuDoOSJfvPW8e3voZH+l2X4dmLu6WFJewxnOvqxnNRHz4fCAF
 TOsD8bRhTC/Mo2UKcaxLOvQN9GazO9GpaWJ0zKNeGEIYAMBpWmj6KJM86oAK42WLxwvI
 WMwnphPG5IVbkIMXdo8JYeTDaDVq0zCMiWpjRs5g1xQDt/lh2Mf24tInX1iVb/IXePwH
 9okk7cAZZkTuqEfocvgvIYek7VomBu9oEKBCXvDPRZzD0V/ClXtgQcahQ8EWOoSfj6aR
 T+HZZ6UfttqQvx66zZW2FHF/NRLckeH7GeD3BG0ShguWIgQNxN40KEBcR/gQwzQIBZUw
 BsWA==
X-Gm-Message-State: AGi0Pua0LoOhK3kxbDUoC9bEiXS7N7Vyj7nH8B1vaxiIyK/5Fo2gaibH
 y0sGLZN7132Z12IZjgmFnHul3A==
X-Google-Smtp-Source: APiQypL0QZL2CpYGkPcslhSMRE9aqJtSat2xKN9cJ0wG3hkbm7awrwBq0Y0CDoR4ztQTWLcG3pAU6A==
X-Received: by 2002:a17:902:8609:: with SMTP id
 f9mr2675736plo.203.1586270828988; 
 Tue, 07 Apr 2020 07:47:08 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id y15sm14190093pfc.206.2020.04.07.07.47.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 07:47:08 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 5/9] riscv: add ARCH_HAS_SET_DIRECT_MAP support
Date: Tue,  7 Apr 2020 22:46:50 +0800
Message-Id: <1b9ab6009c1d70451e21a35ed7fea47c139bc65f.1586265122.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586265122.git.zong.li@sifive.com>
References: <cover.1586265122.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_074710_127082_C92E9EC5 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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


