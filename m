Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8652E3FCF
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 00:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4nKfNQPaOkwSBO4LeRMFwnbBtplaXl6si1mA8Af68E=; b=Li9k8EWkAX7OHK
	I+oKn1ZAk1dvGYvvR+Lx110dxgRoFG1dWbwcRIBlySKuoatAger1qq3osZUuAeUq5BkW3abpgDJac
	U1LtkrfvcG+DzrUglTDlTSAyWZ34IEeyR4IdlVrxcW/TVcT8NnugqSkivzAJ+6BPup9PgVDf31cf1
	iiOhNw8LIGFASddcZGvmFEWeXt7kkIENT7XbFKNWypvYEdYmN8cFS4yK3z13bHaq+eY2PRyXn39Nl
	CpDa6FebRUv7wiilApT1haVAmGklfJzVcRKBszydKUQ1wMPG1bAam2vYGo/l8jdyVNoSpYFwicvTQ
	0BFBYZaur2CQduXaGSVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm4F-0008UJ-8D; Thu, 24 Oct 2019 22:58:55 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNm4B-0008SG-K7
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 22:58:53 +0000
Received: by mail-il1-x143.google.com with SMTP id s75so167551ilc.3
 for <linux-riscv@lists.infradead.org>; Thu, 24 Oct 2019 15:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rwH1mCGuvyxfVt9hlJQA+v8zyCDiYgn0w8nqDJAf9i4=;
 b=fZefwvErY4t9Jpfnf2hyDKW+Y0djwlbRtsBhJfB/dV0LPdg82nb+PRwxYjM37s+HE9
 rWs5Ywno/n6CA7smnv7I9mkFG/UOpK6QxOEI4zA5agrtI/cGE13Vmlg3bjZf75p15S/B
 evq3/jmyvd3g4CxJeCT7m/zqvktqrmo/ZHJkmBvHSqODGX48zr8C7iotoetMkUEZBsRd
 a4oJxk8WBW9i3D38oRr1E0nGhnom8FEmPRvEPfaWm8g9fjNjv2U0ePOQE3MeNnmUW2DY
 OEg9I/MF3LYDZ9OFg32MTSHe8jZ+gm3btLnSJ13GxXOH3wRPkOaa08TmoEFlcP2mUvV2
 Zk2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rwH1mCGuvyxfVt9hlJQA+v8zyCDiYgn0w8nqDJAf9i4=;
 b=ezC+vEyOQFyO5DjEGMbtjccLJVu2KOadCgUy0p/w4Vpb3WB/9wkN53xBOKZ1mYwUDw
 iu6vgwZEtrpopjh+NG3yLkE8lGgROrUNzZtrMgMI70HicpG8iaZmR24FAzA0/31ryW3W
 vyj9CwEPhpl20hZsjdb6kSCMnsYv95gvvPj0INGyqG+4QauOwXgVI2jDu5mauq071RP7
 T2CuXQACZy4A3ul9gWbF4IFNCM+Exads7xWY3sb3djrYtDQdhEVNj/Szx0AhepkiAo1X
 eRg9HnHLjD3euM8BOFeREH8yUjUNMFBDNOBjRnPxcW3lK7aBOFy0j+dJUi2+Mcns7ppn
 oTGA==
X-Gm-Message-State: APjAAAWXJNbsXKyeC7tXTsT+zRV/oM6HrrXPtSlRm3ckkHDNPuXrSNwo
 jaLzGAKVpX3uwOF/Q77SFJlviknlwb0=
X-Google-Smtp-Source: APXvYqyX1pj9ooirtApU6iyZIfmqCYcc3hhVXfLXVP6OoNSUN4O0SXQCBbmkXFBvnMpXooATjcMy1Q==
X-Received: by 2002:a92:79d2:: with SMTP id u201mr598873ilc.103.1571957930485; 
 Thu, 24 Oct 2019 15:58:50 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id b18sm58112ilo.70.2019.10.24.15.58.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 15:58:50 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v4 1/6] riscv: add prototypes for assembly language functions
 from head.S
Date: Thu, 24 Oct 2019 15:58:33 -0700
Message-Id: <20191024225838.27743-2-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024225838.27743-1-paul.walmsley@sifive.com>
References: <20191024225838.27743-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155851_657522_3E19A525 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hch@lst.dev, greentime.hu@sifive.com, linux-kernel@vger.kernel.org,
 luc.vanoostenryck@gmail.com
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
index 96add1427a75..247b8c859c44 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -18,6 +18,8 @@
 #include <asm/ptrace.h>
 #include <asm/tlbflush.h>
 
+#include "../kernel/head.h"
+
 /*
  * This routine handles page faults.  It determines the address and the
  * problem, and then passes it off to one of the appropriate routines.
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index a1ca6200c31f..07af7b1e4069 100644
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
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
