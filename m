Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FAA1B2167
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 10:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1q1dIc4oOXMLuGJhmG405YIgkstM/KJ0hlFL0aEcs0=; b=F2D4UL5C+tPZUc
	mYAM4q/JOjPB7d2m8V8sos+GzMkK/Y3UFh8ee3b3xsfVeJcTopEIRKJ1k7pekfonINMTmBik2OlTS
	rUUFdeR+ndcOYy8W2hqgLrZSeLyJlElJLs/NWMVqr4DBYrZaNCEzOCQSzuqbfBnJCCOLba1o09b7w
	NoWX+dYYmlpWOgRPYh5yEjoIHbru1cOmsbb/jplWPkObewHEFBOZqvvNS0n/YbRZKEjNCSfpnasux
	TXTa4GJZhvr+hsUIt1HczZn8gZtlBrbrUDXDjYoErqLRyMVQuG9dwUoixEw2Jurn8bbT+xW5ZuqJL
	pIqCmo5HGTfLZugxixGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQo71-0008LK-6b; Tue, 21 Apr 2020 08:18:35 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQo61-0007Vk-Kg
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 08:17:35 +0000
Received: by mail-pj1-x1042.google.com with SMTP id t40so1051753pjb.3
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 01:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x1q1dIc4oOXMLuGJhmG405YIgkstM/KJ0hlFL0aEcs0=;
 b=JRJeJlPbvECowqMMqAqWbzZ8nqW0b1fVx207l4nQs0G9+u8AyrE8inMOe8Uu+Z6mGj
 oEOZzr8Klh+dWRbsfgOaINRJsKMd/aRX3NBYE5XqzRJkaxfMatym5xIbV3ooZL9jnaaM
 +HNfMZHP/TNdCf+PfqN1VPRK3J4JEGjE/ewraiaQV5Hg6+Ddm8v+G1yXlEhe/L1wUJsC
 baY1iJBav4DXjyhX63v9oHhvFi0vhSpYSODaovIkLUeCbp0OKzfU1xWU0XnbBOC1jzjx
 sc81wyIHXiBh5pXITuvhWZg3AI1x327mOGasYIohrkBPXI/7uBC/YKfXZ3fW0DizX8rC
 IIvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x1q1dIc4oOXMLuGJhmG405YIgkstM/KJ0hlFL0aEcs0=;
 b=neyhz+QzThAv5nFCwPuGwceZEA+icKIKaZKY6FKw/fOBGpTwfobAZPdxFTiodGrj9u
 5rx8erXqOWOX2OahVzBFcLU9udnIeY5RtLzkag0KVohP8RY4thFiY72EQndecq4y5Xt/
 VJG8RzbYTHn2wctacM7P0E21InIYznYRpiQiX3P2ei8fZDF+QXSxMCL84OeMi0V4irvC
 rXtpYnYoSzS8HHX5/skIAdWo3KNNnpmZfBQCCOlRKTqxSIj5KRmbUfuKSbrijqFSycQR
 jwTAFOTPibqurXiW7q9ZrwwniY3ZBTP11nXvc5huPEKPd2B2y0W2HuisDm63r55BxjR7
 uCsQ==
X-Gm-Message-State: AGi0Pub745s2atzopHOtfRdJQijr8Hs/qbl3g66/iQsj3ZWX6W4HnoW2
 y6InzjF6N6YVPb+cw8Dsc8SWbQ==
X-Google-Smtp-Source: APiQypJ6TDv1BUeEjsdzkZkCUKbnTrPG7TD+P1kqLfxoAk/M5KRTxIjpkFX2KILsnIQRT2ae8Ou8Jw==
X-Received: by 2002:a17:90a:1da6:: with SMTP id
 v35mr4465596pjv.44.1587457051158; 
 Tue, 21 Apr 2020 01:17:31 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id v9sm1610067pju.3.2020.04.21.01.17.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:17:30 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: akpm@linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, mingo@redhat.com,
 bp@alien8.de, x86@kernel.org, hpa@zytor.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] riscv: support DEBUG_WX
Date: Tue, 21 Apr 2020 16:17:13 +0800
Message-Id: <282e266311bced080bc6f7c255b92f87c1eb65d6.1587455584.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1587455584.git.zong.li@sifive.com>
References: <cover.1587455584.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_011733_714544_BB287BBA 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Support DEBUG_WX to check whether there are mapping with write and
execute permission at the same time.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig              | 1 +
 arch/riscv/include/asm/ptdump.h | 6 ++++++
 arch/riscv/mm/init.c            | 3 +++
 3 files changed, 10 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 62f7bfeb709e..612bf0a258d0 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -68,6 +68,7 @@ config RISCV
 	select ARCH_HAS_GCOV_PROFILE_ALL
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_ARCH_KASAN if MMU && 64BIT
+	select ARCH_HAS_DEBUG_WX
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
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
index b55be44ff9bd..86606e4d1860 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -19,6 +19,7 @@
 #include <asm/sections.h>
 #include <asm/pgtable.h>
 #include <asm/io.h>
+#include <asm/ptdump.h>
 
 #include "../kernel/head.h"
 
@@ -529,6 +530,8 @@ void mark_rodata_ro(void)
 	set_memory_ro(rodata_start, (data_start - rodata_start) >> PAGE_SHIFT);
 	set_memory_nx(rodata_start, (data_start - rodata_start) >> PAGE_SHIFT);
 	set_memory_nx(data_start, (max_low - data_start) >> PAGE_SHIFT);
+
+	debug_checkwx();
 }
 #endif
 
-- 
2.26.1


