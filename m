Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9286E1A1CEF
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 09:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9zl9wdVM8GEYtYil3Mhwjs87sA3d02fBbOSD/V/2Io=; b=LyZ0b7U8XF+WNs
	XLerlZfFOEOAvYJH20Y5hF+IIgdYevM7hXI7SdBDsyPvs8YKdHhwyTQA+ursSWJisICu7ZXuf0jcQ
	NRbU/aI53Du+CsWvVvyQp86sVl8XfPvOJ2IjO61jl4fIypGIidIiM7+p5riQmUp5VYpgkf8uMc6Dd
	lIkRG1ntDbZPLvNVmITbYJgMZp1u8rq+kpQdln9rL3d1RnjTHNYW29hUflHPE1Tcik7DSgZcQT+C9
	vCeAk1d+H6ZjLw5jTGCnCU/HXhJagJ+Lv9wefT2nCQ3U/iYBEmF/ANXN7dPoNbYDzmbRKmfW3iZXp
	hpTjPbi8syOZQyOler5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5aV-0007lW-7x; Wed, 08 Apr 2020 07:57:31 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5aL-0007a0-B0
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 07:57:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id v2so860541plp.9
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 00:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v9zl9wdVM8GEYtYil3Mhwjs87sA3d02fBbOSD/V/2Io=;
 b=U7G20s6LmTf2LuYfnrXDNYEjXHb9WEsy956inSxRQMo/VA6l9qWdgAo0dEbehYjLYD
 f5E2WmGKWxTZ/YFKy5cJ2nJCMcOHestOXgrl8JHnYc6uOLdJMD66pzAkhMoz0lXMJa1a
 q6Sd93eJ5SmSFiJQR2GnbVljhf0cUURmRBg2OIVfpRGKqhHY6oA0yOci57cIypYhU94D
 KQViqVTTVemVaSYG2zoGoljdEnt4pnHr8w+Avu8mP8JIeNAYm12aAVJ+P5t/mLZGbxTk
 ky/UBHaVirsmaCNTa+FVw3OV3jfW5Xa2HRerKbZmZibpXXzOtY/bXT0OyuTQyV6liYO2
 rGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v9zl9wdVM8GEYtYil3Mhwjs87sA3d02fBbOSD/V/2Io=;
 b=sBHNqSA3HmnPzIRj4GhBlPJ3GmsuDfzSJ5Xx3zEgsTQxcOXg7fGbwsMWmfmazpVl1G
 3f8KTj6dproJpTch7YCN8rk5V5Z+6RJRki3zAnZE2wooaRHgidkT502rbQU3rgK6YiG3
 wavpGXeWedcgfJL7zMpc37DJsFxzwQFeVefI5bmahaQHbDc46mHGjUmUbbr4tTVXsajG
 0Ln4qSSZmhFjI0kWpxi9A+Jk9lVborfEfvqxEVnLA6dbISrweshLJarL5E2+9ojgtUjs
 gLmoTM5wGppFxnzI3QkX4jaXKfywdR7rJj/s3K4cAkLyYi8Odf7gnrXCwHb0nb6A/Srw
 QeIg==
X-Gm-Message-State: AGi0Pub7m08OmvdWWN7h1DbejNhT/7a0AV20GTTxEJrr+wbknvKpG92g
 noL/3A7gHYFt5QlNj8dO6pjNqg==
X-Google-Smtp-Source: APiQypLxV8BTgShiG5s/VFnuxWwrOSXsD17o88Vs6ZV9ud2Hzidb8dVTOvmyVJfp26rP9LzGVWdm7w==
X-Received: by 2002:a17:90a:db54:: with SMTP id
 u20mr3902925pjx.140.1586332640815; 
 Wed, 08 Apr 2020 00:57:20 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d85sm485599pfd.157.2020.04.08.00.57.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 00:57:20 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 6/9] riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
Date: Wed,  8 Apr 2020 15:57:01 +0800
Message-Id: <15fce3374de4978c4541beaab8216bf0f84ca72d.1586332296.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586332296.git.zong.li@sifive.com>
References: <cover.1586332296.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_005721_378551_A5AC3058 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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


