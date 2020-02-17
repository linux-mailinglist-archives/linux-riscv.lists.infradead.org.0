Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32996160D61
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Feb 2020 09:32:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqZre+qvRSlhzzIsQAOcDiYE/HQp90HazzZ9Hh0zU/8=; b=qKMBOy0H6Pa5Z9
	GT7NsTo927W4xjJGu3dHxJZKQqSz65Nss6kkeVsBHYFQfp9YiswYdxWIP5mzYFVAtiwtQEfWkcJse
	bz0GNkpXlG/Z8eiewcIyWew/3Bap6cpxUnXlZMBkbt5Vo+RMy6hR3/2relcL69z7xApP3hpKk3bgm
	LmS9gONdvYmIhkec5NYO4iQYtCztgpQkUFt48skZpmX8lnbli9wnbF5D/jMKGspmdbRydRIN/Etgn
	9jBiMwWukMQlOiWi70ugyUGc6/4o8ZeyTHuWOsWrNzcmaBvXoAb5clYkAVJyh/holnjI3cUh/mFSc
	01vLeBb7Ko71NR2u+PkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bpk-000652-E0; Mon, 17 Feb 2020 08:32:52 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bpZ-0005qZ-EF
 for linux-riscv@lists.infradead.org; Mon, 17 Feb 2020 08:32:42 +0000
Received: by mail-pj1-x1042.google.com with SMTP id m13so6869050pjb.2
 for <linux-riscv@lists.infradead.org>; Mon, 17 Feb 2020 00:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qqZre+qvRSlhzzIsQAOcDiYE/HQp90HazzZ9Hh0zU/8=;
 b=HwcNoIc+nhRG7KN6U7GJ/P5tvJVQpfZLmZ3SodJKoS/AdlZAd18lHi9giRGFtuQs14
 qD4SyEasVBlRnYYsohlKQZghcYaIe6o8VQceYzD0d8fR1QfMX7CfDXuyPgF9FRknqUpD
 kPCZIcw2Y/U2XOPbf3ic2AGus5iXzeIrGEcmi0U/51P1JsnN0TcKopFe4Lcn45e8gnpC
 7hEqRIEohlpjyBj0cPgUWdj3BUTvYxH9tKXbToLTszDj8Q0QSBvdx3VzbLZd4FXPVIPD
 UdI3Um6zCRsbQvBseeB8fuC+KIteMRgQU5oL4AmTQKB6GytYK1xpXRama5SQHnb2xTC0
 DRzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qqZre+qvRSlhzzIsQAOcDiYE/HQp90HazzZ9Hh0zU/8=;
 b=F4F/GU5gFr979QvepxuCVnOlfNly2wmH849WMVo1dz6x9Xw8DWj4PsiHmtUrq0ASoJ
 +GNfGMMhICkcwhxVGChlAKknrSaqWFNaF0HlB1mzU/wOn65mH56LcW/6PXT9tOgflIs1
 i8r61UMdBz5TFNGP29pNNBEqxFLaMDOC2xjTiOlVcB7LIdpq2rH/DzFtQinsAG/GC9XF
 7cJRq7x89BCslErgCiG212UKpsyIbJyxPN+4V/lsz+vYpyDc2O+11xjbWnVq/INNYs4a
 TJ5IUyoP2tLzGsgsGYDP1pIz82LvZTuN2JXm8ahfwmvmRolP8tW/3J42NbMelDCVFggy
 14SA==
X-Gm-Message-State: APjAAAUycirHBYrlW0m6zgy3Q4ntjRIJbur5M6QEtn8BxpArntL37+K7
 o6iBuTfl4jhMTn/6CfNKJKuUgw==
X-Google-Smtp-Source: APXvYqy+2s0Zjwc0q2R9Pe28sHcFC9n4l5MJdG4iOX9zFBrwLpWdVyrjUYVsdsgQdYU4G3MPld8yrg==
X-Received: by 2002:a17:90b:11cd:: with SMTP id
 gv13mr18718381pjb.94.1581928360712; 
 Mon, 17 Feb 2020 00:32:40 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id z10sm16989319pgz.88.2020.02.17.00.32.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 00:32:40 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 7/8] riscv: add DEBUG_WX support
Date: Mon, 17 Feb 2020 16:32:22 +0800
Message-Id: <20200217083223.2011-8-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200217083223.2011-1-zong.li@sifive.com>
References: <20200217083223.2011-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_003241_488286_E9B2767D 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Support DEBUG_WX to check whether there are mapping with write and
execute permission at the same time.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig.debug        | 30 ++++++++++++++++++++++++++++++
 arch/riscv/include/asm/ptdump.h |  6 ++++++
 arch/riscv/mm/init.c            |  2 ++
 3 files changed, 38 insertions(+)

diff --git a/arch/riscv/Kconfig.debug b/arch/riscv/Kconfig.debug
index e69de29bb2d1..2bcd88e75626 100644
--- a/arch/riscv/Kconfig.debug
+++ b/arch/riscv/Kconfig.debug
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config DEBUG_WX
+	bool "Warn on W+X mappings at boot"
+	select PTDUMP_CORE
+	help
+	  Generate a warning if any W+X mappings are found at boot.
+
+	  This is useful for discovering cases where the kernel is leaving
+	  W+X mappings after applying NX, as such mappings are a security risk.
+	  This check also includes UXN, which should be set on all kernel
+	  mappings.
+
+	  Look for a message in dmesg output like this:
+
+	    riscv/mm: Checked W+X mappings: passed, no W+X pages found.
+
+	  or like this, if the check failed:
+
+	    riscv/mm: Checked W+X mappings: FAILED, <N> W+X pages found.
+
+	  Note that even if the check fails, your kernel is possibly
+	  still fine, as W+X mappings are not a security hole in
+	  themselves, what they do is that they make the exploitation
+	  of other unfixed kernel bugs easier.
+
+	  There is no runtime or memory usage effect of this option
+	  once the kernel has booted up - it's a one time check.
+
+	  If in doubt, say "Y".
diff --git a/arch/riscv/include/asm/ptdump.h b/arch/riscv/include/asm/ptdump.h
index e29af7191909..eb2a1cc5f22c 100644
--- a/arch/riscv/include/asm/ptdump.h
+++ b/arch/riscv/include/asm/ptdump.h
@@ -8,4 +8,10 @@
 
 void ptdump_check_wx(void);
 
+#ifdef CONFIG_DEBUG_WX
+#define debug_checkwx() ptdump_check_wx()
+#else
+#define debug_checkwx() do { } while (0)
+#endif
+
 #endif /* _ASM_RISCV_PTDUMP_H */
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 09fa643e079c..a05d76e5fefe 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -509,6 +509,8 @@ void mark_rodata_ro(void)
 	set_memory_ro(rodata_start, (data_start - rodata_start) >> PAGE_SHIFT);
 	set_memory_nx(rodata_start, (data_start - rodata_start) >> PAGE_SHIFT);
 	set_memory_nx(data_start, (max_low - data_start) >> PAGE_SHIFT);
+
+	debug_checkwx();
 }
 #endif
 
-- 
2.25.0


