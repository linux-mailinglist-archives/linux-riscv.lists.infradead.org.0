Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE8517E51D
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 17:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pj6YU6fNBmNBvi7LLVQO3JduXJ0KuYFucC7zWHr65Nk=; b=tL69eO0SggJN4A
	amy8nqlj90g6VGVYocBD+uNAHGlZPo++cvAEJ2znO3d0JwAqasyxt8cTqR34i4KlfvwMcjjmJhNSU
	0RwhPlhXnHMOcsZ4MBeoGh3cG9kfJN+2Veem+xhDvnStcBT105wmwuUt87Bmob0yNfzKOPiav/iIz
	bqWeC1LDK1JvbOj8VJmR7urX9iYuehzFI2KknehY89LdlTgrdqXI2XcAplqHcCOgfO0xNZ1sTMDQ0
	EV0LcQU4cb8IQgPLVMQiRNBc76dEJrDZylv4Phr2N4bAFrx/ye5z+Sq0wiFT/HnwXt9DeEQOM+kuf
	3CJG1wrmYOeTmGAEfptQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLhD-0001vD-Hs; Mon, 09 Mar 2020 16:56:03 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLh7-0001pg-In
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 16:55:58 +0000
Received: by mail-pj1-x1044.google.com with SMTP id l41so117636pjb.1
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 09:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pj6YU6fNBmNBvi7LLVQO3JduXJ0KuYFucC7zWHr65Nk=;
 b=Kz5wZL0QX3z5mdgkaCve7q0Sdp+qurClLFPED1kkQIlMvfvq2LXn76XIgAjzv2BpEY
 MrrucAluEYGJaWzqw0x/bEY+HXW5cOFCQV6yO52s5CqPzqQo3rju3sKmt93SqCmFKcUk
 I1huy2XaBPYVifCrA7j6DAcAmH77qVjnS0p5cEvrBH3Sty3QjN39+J3r3XuJVY7cXhOH
 6ZrxOm9Y0AepZ7lC4utyjxbrtMDXlxv5LLkGWJ+ZKXaU2o2VqjVyZYBSjYK0tDGAL2rw
 EuKfQqKzWJwXBXu1rehhNnL0e7pwGHqjlxqC266WSX+3cd+6w0wzfKJaBrU/6LIdprzf
 uxbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pj6YU6fNBmNBvi7LLVQO3JduXJ0KuYFucC7zWHr65Nk=;
 b=FWMDy7b7Eardyx8ndFraaNF8YXQn2f42EPbXFq0Fi9i83Yq3Skm7nmQ5pUvWMzVfGn
 WBhKAndAdecbcgR3KJ6mML9WlkBlidPDIKCJBoTnmBPErrn/V6NXj1aeRvRyS/O1MzMF
 AgtXOM9AW32feLb81jWzekAC6WHx94UEiPXovPXkjQQgKxcrF6NEnq/TU9y8FPxhAFhZ
 YJmcXWr6Ziq2z4OZQo0Moqr+HVz9XFCIO18qV5PAtkT7UGTy7lgHk61YHNEaiRqDGT97
 rpbhmisd5WN7Ag/EYKwRvGag7MdQKlVXqfQ/WFhNTScEgkZxXgSnQADYwM7vpA2y9E0C
 J31A==
X-Gm-Message-State: ANhLgQ3/aQg+l8JLnIy0c9/TwQq+AKMe3vBD2BHCmAq74eG/mPcNmOD7
 KAYEv2ns4/Mrs2JQQIa1pOFycg==
X-Google-Smtp-Source: ADFU+vuFuIvwey8N5BijwFFLtPfOfnzzce9nnU9LlfG84PmcU+RSOSGj4b/pBpPRmjKl+djPHaBMvw==
X-Received: by 2002:a17:90b:194d:: with SMTP id
 nk13mr256192pjb.144.1583772956753; 
 Mon, 09 Mar 2020 09:55:56 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id cm2sm104013pjb.23.2020.03.09.09.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:55:56 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/9] riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
Date: Tue, 10 Mar 2020 00:55:38 +0800
Message-Id: <3b6b3c18655b41306e24a96d56abe1f860a6f900.1583772574.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583772574.git.zong.li@sifive.com>
References: <cover.1583772574.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095557_627589_8DEE0972 
X-CRM114-Status: UNSURE (   8.11  )
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

ARCH_SUPPORTS_DEBUG_PAGEALLOC provides a hook to map and unmap
pages for debugging purposes. Implement the __kernel_map_pages
functions to fill the poison pattern.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig       |  3 +++
 arch/riscv/mm/pageattr.c | 13 +++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 71fabb0ffdbe..54437d7662a5 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -133,6 +133,9 @@ config ARCH_SELECT_MEMORY_MODEL
 config ARCH_WANT_GENERAL_HUGETLB
 	def_bool y
 
+config ARCH_SUPPORTS_DEBUG_PAGEALLOC
+	def_bool y
+
 config SYS_SUPPORTS_HUGETLBFS
 	def_bool y
 
diff --git a/arch/riscv/mm/pageattr.c b/arch/riscv/mm/pageattr.c
index 7be6cd67e2ef..728759eb530a 100644
--- a/arch/riscv/mm/pageattr.c
+++ b/arch/riscv/mm/pageattr.c
@@ -172,3 +172,16 @@ int set_direct_map_default_noflush(struct page *page)
 
 	return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
 }
+
+void __kernel_map_pages(struct page *page, int numpages, int enable)
+{
+	if (!debug_pagealloc_enabled())
+		return;
+
+	if (enable)
+		__set_memory((unsigned long)page_address(page), numpages,
+			     __pgprot(_PAGE_PRESENT), __pgprot(0));
+	else
+		__set_memory((unsigned long)page_address(page), numpages,
+			     __pgprot(0), __pgprot(_PAGE_PRESENT));
+}
-- 
2.25.1


