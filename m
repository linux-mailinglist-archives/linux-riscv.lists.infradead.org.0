Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D141A0F8E
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 16:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9zl9wdVM8GEYtYil3Mhwjs87sA3d02fBbOSD/V/2Io=; b=rf8Q1zMMGwRAz1
	owCKoE2Zo7fzphuRr4uQx46Xj80jQepavAZi23dFR6keQ/cUI8qw9UkXSPzf9K64pJF7T1z2QTYYQ
	n4fVU0yC4kfdco9dpyFkvCT/gAb6etjkNfao3cnOoRhqjP+1Q2vfFfHivvS9DI2GZnyxTUI2EF6Ar
	tZkFpYCItNkW3bqquK/FuGbmidtijLSi2bIKacPkxbQpYCRIa/ifx7JhU7nQC/jJfyW9/cfFdpBLp
	OLjnw+ebJSHsVcKsZt5Jbu7Ki8SvrZZbjn7aWpTIZuj4tKBQI/cvYv1Gz3gL7zslNwwV9yZkOhqch
	loCF9Jf3S4j+9+FSBstw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpVa-0006W0-03; Tue, 07 Apr 2020 14:47:22 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpVQ-0006Kh-Cl
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 14:47:13 +0000
Received: by mail-pj1-x1042.google.com with SMTP id z3so852927pjr.4
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 07:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v9zl9wdVM8GEYtYil3Mhwjs87sA3d02fBbOSD/V/2Io=;
 b=Dr3sAdrvWqwbVgYRG3xI41G3QomvAew/Asd8fOt+Hzih8GAcGLY990zl5lzEDEUFfS
 rFz2r8PiTez4vQkSHyG6i66D37p45zDTF7mKWyqHS2KRTSW4HsCHenibJ08i0FlY9LCA
 RJATz1HEkSwg5S/VSgSpr6RXXPaavBo70UMlSGPI82JH1ercjcbnGTpTe132ZKGMZHAw
 nZksYVqpBq42d5GPn0kG3A1mMxp6m9j2bb+5m8WvKb6oXTdpyGm/tEZMU0avt92C3PwW
 WXhNzRtLZimrbB/nPTEE/DL7MZON4cRniYmXRoW32mBWz7TA80gs7IJIuu/Jwx1bBX1v
 bT4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v9zl9wdVM8GEYtYil3Mhwjs87sA3d02fBbOSD/V/2Io=;
 b=R3xUwMgAKr9r2ErLphaVVQpucNZ2yIOYpHtxhGODcWbsBefg5fqgH4KGT3GW37k1zS
 LrqhLWm3KJvXZmupsZm9CrYlS5iXOCKYSpwBYuxjqm2FuJFRSvd+y3+JnBdLU1DPeN4o
 XM/8OpN6hiEO9W0kvfAoe8Ij32bq97Dp1CdtfhsYYPThOxx/qpzRnZP+aT75XdpQSppx
 3CgIiQDFu+4CnC0RQRS18GQch+V8VDyJS/IwTCua3UJZQt1QtYMLSDwMG6iVcGCyBzd4
 dhL+CiQkprtltux2cXYJCWE6XTjInvotY94KM1bFn8BIP6Eo6H9CQHuJJcsviMLBiy9w
 Tjbw==
X-Gm-Message-State: AGi0PuYx0WqxDmHHiu7GsRpvSWc/NsxHZ1kj9IUHu4pNy96LtDaBjHol
 Jt76lbnVazLB5knfNFvHJKc8+GGfh/g=
X-Google-Smtp-Source: APiQypIxfe67P6X0LmkT8qgkBuwk7TGkhTTBndI07oSrQhzlvJyC2RaWNfS88nZVZw4Jjgn0w6QRAw==
X-Received: by 2002:a17:902:aa94:: with SMTP id
 d20mr2788910plr.313.1586270831007; 
 Tue, 07 Apr 2020 07:47:11 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id y15sm14190093pfc.206.2020.04.07.07.47.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 07:47:10 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 6/9] riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
Date: Tue,  7 Apr 2020 22:46:51 +0800
Message-Id: <9a9f8ff6d9ea84628511def8bacce8f8247945d1.1586265122.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586265122.git.zong.li@sifive.com>
References: <cover.1586265122.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_074712_431487_1DBC3922 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

ARCH_SUPPORTS_DEBUG_PAGEALLOC provides a hook to map and unmap
pages for debugging purposes. Implement the __kernel_map_pages
functions to fill the poison pattern.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig       |  3 +++
 arch/riscv/mm/pageattr.c | 13 +++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a94d0f064d9c..1e1efc998baf 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -132,6 +132,9 @@ config ARCH_SELECT_MEMORY_MODEL
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
2.26.0


