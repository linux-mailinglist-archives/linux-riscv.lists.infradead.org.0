Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19354DBB07
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 02:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/seW2zwd2RWuBPh9duq/r2b65xUlPZbBMcRAfvZZsio=; b=RtM1QGC6tj/FUg
	LCHOe0o7+R94FDPjINLmylgV9u4oHt6MJsDYGMfMnKZG68EIHvEHNE91K5Y3AfHm8Umvnz8aOeTo0
	l+8vqDHcmx7StQ5u6DojVFqGa8KCOgWgcS3IbR01iOmsGAPmDLUm1gLFUEKQh1iC8GH46ukIDsVOA
	8lU9ZuIGe1NYoIv7FZ0oaWrb7H0LrNEs4Kx6WYhI3hVt2HB//meAnaKNYVfN3kt7J7/7zBPdtmW1Y
	z6ttL7ImsoVQRlTaaBzV/8FlF+aJPDi8NtzZL3nwAHLiv/WBlKd29A8eekXgKt5Xi1J/OYpAuM68s
	w/SH1daDUrUeDD2PsaLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLGSq-00030C-MH; Fri, 18 Oct 2019 00:49:56 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLGSm-0002v8-6w
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 00:49:53 +0000
Received: by mail-il1-x144.google.com with SMTP id o16so3948011ilq.7
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 17:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BhNZJ/+01P0kEF6Kf+e/ysZ/4G6fTDDw4/sqJjXlOAY=;
 b=ehkIOPdn3CRMG5PytE7+4nIxgQAUmtNUHg9RLR/0iq3ceQ+LLyOya4r2zB9ZQv3rLT
 EOV6baW5GLOj4xjTpQTUcNeZg2Do0rH9/rM2eoFeq95ROtZugTPXYljg086q218p37XU
 PupD2xZ3y/8wUtdn4md7XSrO2J63hei4Qi49d6JEvzx6AV0EgK3LhO2WASmsnw6jks4K
 43ERMMOjyJISfX4oh0rL3ExTo+az5GNY6b/fiYN+fP0D1JLHXmaYglSRH1YYAI7kUt3V
 sOalfJpAWI/cKyGM6KDmaSVXDFCGebnbMVU+PT+3wE2TKqj48f/dVcUvKXtS2Qas/QBh
 9Vrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BhNZJ/+01P0kEF6Kf+e/ysZ/4G6fTDDw4/sqJjXlOAY=;
 b=bWDazpmxqrD2zRjPmg77T+3rFpQDTY1XB/8Z+1J50P8JZ3yg4+pjsqlZIrOL+PHSO0
 3JJXbTddIeMhbm/ThmjcW5g0D1bVPtzGW5K1E1psnakiyehtiiDBMRAptNe3biVOE2FE
 vt+IqUMKMzhdQSl9EWhYatulLLxKL0cGOugsdCpOSUwwyMraMQsVyRc8adR4d6CQ9J8K
 55XXUjuQfPvZgoXbPzsvN8ipk04uzL5PW1xEtkAV5pCLtcbNcP1CNcGoaBcVnrOb0j/m
 yP6hCjWf/fhSrY3TynvpuzW/jLLgS1yqV4G4V2HTSzwjukP+FfJq8hGyd//jplIq+v5R
 h4bw==
X-Gm-Message-State: APjAAAVz4GhnGE9v8jqftSmMPHWocWBuJpggVFN+t17ejywSBgLJiiyv
 y/AZme9ek+ZsmsXfx/5xYXhxa+kfp68=
X-Google-Smtp-Source: APXvYqya70OHf3T73kG/NYr+Aj+62vc/dsfk6f+RNF4DoKCCuzt8IZZ4Up75ZCR68rBdX/tViOE9ew==
X-Received: by 2002:a92:c88b:: with SMTP id w11mr6675702ilo.154.1571359790821; 
 Thu, 17 Oct 2019 17:49:50 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z20sm1493891iof.38.2019.10.17.17.49.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 17:49:50 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 2/8] riscv: add prototypes for assembly language functions
 from head.S
Date: Thu, 17 Oct 2019 17:49:23 -0700
Message-Id: <20191018004929.3445-3-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018004929.3445-1-paul.walmsley@sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_174952_253405_B7AF0823 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add prototypes for assembly language functions defined in head.S,
and include these prototypes into C source files that call those
functions.

This patch resolves the following warnings from sparse:

arch/riscv/kernel/setup.c:39:10: warning: symbol 'hart_lottery' was not declared. Should it be static?
arch/riscv/kernel/setup.c:42:13: warning: symbol 'parse_dtb' was not declared. Should it be static?
arch/riscv/kernel/smpboot.c:33:6: warning: symbol '__cpu_up_stack_pointer' was not declared. Should it be static?
arch/riscv/kernel/smpboot.c:34:6: warning: symbol '__cpu_up_task_pointer' was not declared. Should it be static?
arch/riscv/kernel/smpboot.c:133:24: warning: symbol 'smp_callin' was not declared. Should it be static?
arch/riscv/mm/fault.c:25:17: warning: symbol 'do_page_fault' was not declared. Should it be static?

This change should have no functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/kernel/head.h    | 21 +++++++++++++++++++++
 arch/riscv/kernel/setup.c   |  2 ++
 arch/riscv/kernel/smpboot.c |  2 ++
 arch/riscv/mm/fault.c       |  2 ++
 arch/riscv/mm/init.c        |  2 ++
 5 files changed, 29 insertions(+)
 create mode 100644 arch/riscv/kernel/head.h

diff --git a/arch/riscv/kernel/head.h b/arch/riscv/kernel/head.h
new file mode 100644
index 000000000000..105fb0496b24
--- /dev/null
+++ b/arch/riscv/kernel/head.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 SiFive, Inc.
+ */
+#ifndef __ASM_HEAD_H
+#define __ASM_HEAD_H
+
+#include <linux/linkage.h>
+#include <linux/init.h>
+
+extern atomic_t hart_lottery;
+
+asmlinkage void do_page_fault(struct pt_regs *regs);
+asmlinkage void __init setup_vm(uintptr_t dtb_pa);
+
+extern void *__cpu_up_stack_pointer[];
+extern void *__cpu_up_task_pointer[];
+
+void __init parse_dtb(void);
+
+#endif /* __ASM_HEAD_H */
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index a990a6cb184f..845ae0e12115 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -24,6 +24,8 @@
 #include <asm/tlbflush.h>
 #include <asm/thread_info.h>
 
+#include "head.h"
+
 #ifdef CONFIG_DUMMY_CONSOLE
 struct screen_info screen_info = {
 	.orig_video_lines	= 30,
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 18ae6da5115e..59fa59e013d4 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -30,6 +30,8 @@
 #include <asm/sections.h>
 #include <asm/sbi.h>
 
+#include "head.h"
+
 void *__cpu_up_stack_pointer[NR_CPUS];
 void *__cpu_up_task_pointer[NR_CPUS];
 static DECLARE_COMPLETION(cpu_running);
diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
index 96add1427a75..ec15a9b15448 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -18,6 +18,8 @@
 #include <asm/ptrace.h>
 #include <asm/tlbflush.h>
 
+#include "../head.h"
+
 /*
  * This routine handles page faults.  It determines the address and the
  * problem, and then passes it off to one of the appropriate routines.
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 83f7d12042fb..fa8748a74414 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -19,6 +19,8 @@
 #include <asm/pgtable.h>
 #include <asm/io.h>
 
+#include "../kernel/head.h"
+
 unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)]
 							__page_aligned_bss;
 EXPORT_SYMBOL(empty_zero_page);
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
