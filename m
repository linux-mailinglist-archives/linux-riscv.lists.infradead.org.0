Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BC8A92AD
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 21:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tbti3sXvRa2eOJU+eI1iFngMzl+YbbS34PTEfyVyGjM=; b=gY5FFDCOqzw2Ke
	16VfyTSby7UDbHM6cYAUOYOjZ87vridTcvUYZZ6tYoplJVL4FZPQpLTI4Z/HDStVL2lwMbbjkZ2VY
	nLYKOihZGX5k2TxZF6SMxzPFex95EFsRhrPCC3N7Qzo+be7R8QigB9qDO2U0kWL+Sl7u7kixHNyXU
	H2uGuEJMlfDuf9Fi6veoNdcIogoSuQEgeOHRJKM+eAa6FTj5hRTc2XfCgZS3mp5cDK7DLKMdi6Ly2
	dyhVe7dgqy3Dtt6IA1pxXZcNJa4sEGxrzMTOf+nNaXl8qpdOCkIB/KTpJpy1eBzanS4A458RjXb8k
	xtpuX/hC6S8bS46dG5+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5bMf-0000FQ-D6; Wed, 04 Sep 2019 19:54:49 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5bMc-0000F3-5P
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 19:54:47 +0000
Received: by mail-io1-xd42.google.com with SMTP id m11so15085295ioo.0
 for <linux-riscv@lists.infradead.org>; Wed, 04 Sep 2019 12:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=LlDPSpEczR5fvkibAFO5ZZRZGBz+aXPzFC2kng0jziw=;
 b=RYqZnuhmNd8oj1G0LxozGHsQy7uyZPoCcXks41skJkE6cUhOrz6IA7RM3coDs9YY05
 nA6wLO6qI9srj92LTt2ZoUrtqth9FgzHW9mb/upxz+3wZg0PkuAtPVdkv0onzzfw/VDw
 iAKVu/Di2b1tKS0xVYBDyXKUv4v+8zZ2AGXe2oq2WsLPcYAquOvym+ukXcxfPqIzSqGK
 cwlRoP4G/i9qLyy1nnmLRnalI2hZa6yVWUtdgNHye7rjhc4zB6UvGKf8rkW+BeoeSm83
 OiRgaY3CgbLZ4bXOMhed4XLCeh1qzMrGKQs6bduFDlVUMz1F3umjWCRrmCT1B07/zGsW
 +adA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=LlDPSpEczR5fvkibAFO5ZZRZGBz+aXPzFC2kng0jziw=;
 b=FCasGSpMrwhiCKWjtB7mVCcx8njrP+aueYALOHOgRU57Z+nvlOkow0CEhXnq8n+rvU
 JhMvR/n34/yNMFTa/V1u+afPHMkATqhPQQb3d2k60K74tYFWuPH+oCv1Y/0PN1GPBHPz
 fu5CGky0zFjxjo86GakzfbkDxnnFlGF1iwE9CjeFlzOQ+NzM5u9zoEUxu/+TBHXdLZjC
 akS/WOoQ54B7pgY82ZD+qhJqxyPSJgYq2d4/bhgk2b3ZPok7XOPR5ZuxoBh6v3GLOATc
 2bQ1hjxX3BndaNiJifQDo9+zNfqfQzQcJ3Qi0zWgLRusmlSmfVz8d23gaBwihRjamCvo
 c9CA==
X-Gm-Message-State: APjAAAX2v9LJujltg3oaZKK/gFfS+O5thXW1yA0AVx0U+qfmNgT1R28d
 nhBWj2ipcIaL4+yyDqEbEcKGVQ==
X-Google-Smtp-Source: APXvYqwSihk3BoH49liqRzwu0WHQ8cc9wMxBVqQG42DA+3Yj0C4NpZ/zeFIWqjtZU0o3VDjaryxLUQ==
X-Received: by 2002:a02:cf10:: with SMTP id q16mr533015jar.89.1567626882839;
 Wed, 04 Sep 2019 12:54:42 -0700 (PDT)
Received: from localhost (75-161-11-128.albq.qwest.net. [75.161.11.128])
 by smtp.gmail.com with ESMTPSA id q74sm35036563iod.72.2019.09.04.12.54.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 12:54:42 -0700 (PDT)
Date: Wed, 4 Sep 2019 12:54:41 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Mao Han <han_mao@c-sky.com>
Subject: Re: [PATCH V6 1/3] riscv: Add perf callchain support
In-Reply-To: <86d18d80affc39cf9579a24f1beb7c8631cfa9bd.1567060834.git.han_mao@c-sky.com>
Message-ID: <alpine.DEB.2.21.9999.1909041247560.13502@viisi.sifive.com>
References: <cover.1567060834.git.han_mao@c-sky.com>
 <86d18d80affc39cf9579a24f1beb7c8631cfa9bd.1567060834.git.han_mao@c-sky.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_125446_239697_36EB3056 
X-CRM114-Status: GOOD (  24.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-csky@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Mao Han,

On Thu, 29 Aug 2019, Mao Han wrote:

> This patch add support for perf callchain sampling on riscv platform.
> The return address of leaf function is retrieved from pt_regs as
> it is not saved in the outmost frame.
> 
> Signed-off-by: Mao Han <han_mao@c-sky.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Greentime Hu <green.hu@gmail.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: linux-riscv <linux-riscv@lists.infradead.org>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Guo Ren <guoren@kernel.org>

There are some 'checkpatch.pl --strict' warnings with this patch (below).  
These have been fixed here.  The following patch has been queued for 
v5.4-rc1 with Greentime's Tested-by:.  Thanks for your hard work following 
up on the feedback with these patches -


- Paul


CHECK: Alignment should match open parenthesis
#77: FILE: arch/riscv/kernel/perf_callchain.c:18:
+static unsigned long user_backtrace(struct perf_callchain_entry_ctx 
*entry,
+			unsigned long fp, unsigned long reg_ra)

CHECK: Blank lines aren't necessary after an open brace '{'
#146: FILE: arch/riscv/kernel/perf_callchain.c:87:
+{
+

CHECK: Alignment should match open parenthesis
#165: FILE: arch/riscv/kernel/stacktrace.c:23:
+void notrace walk_stackframe(struct task_struct *task,
 	struct pt_regs *regs, bool (*fn)(unsigned long, void *), void *arg)

------

From: Mao Han <han_mao@c-sky.com>
Date: Thu, 29 Aug 2019 14:57:00 +0800
Subject: [PATCH] riscv: Add perf callchain support

This patch adds support for perf callchain sampling on riscv platforms.
The return address of leaf function is retrieved from pt_regs as
it is not saved in the outmost frame.

Signed-off-by: Mao Han <han_mao@c-sky.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Greentime Hu <green.hu@gmail.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: linux-riscv <linux-riscv@lists.infradead.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Guo Ren <guoren@kernel.org>
Tested-by: Greentime Hu <greentime.hu@sifive.com>
[paul.walmsley@sifive.com: fixed some 'checkpatch.pl --strict' issues;
 fixed patch description spelling]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/Makefile                |  3 +
 arch/riscv/kernel/Makefile         |  3 +-
 arch/riscv/kernel/perf_callchain.c | 94 ++++++++++++++++++++++++++++++
 arch/riscv/kernel/stacktrace.c     |  4 +-
 4 files changed, 101 insertions(+), 3 deletions(-)
 create mode 100644 arch/riscv/kernel/perf_callchain.c

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index a73659e30f8d..4f0a3d2018d2 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -54,6 +54,9 @@ endif
 ifeq ($(CONFIG_MODULE_SECTIONS),y)
 	KBUILD_LDFLAGS_MODULE += -T $(srctree)/arch/riscv/kernel/module.lds
 endif
+ifeq ($(CONFIG_PERF_EVENTS),y)
+        KBUILD_CFLAGS += -fno-omit-frame-pointer
+endif
 
 KBUILD_CFLAGS_MODULE += $(call cc-option,-mno-relax)
 
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 2420d37d96de..b1bea89fc814 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -38,6 +38,7 @@ obj-$(CONFIG_MODULE_SECTIONS)	+= module-sections.o
 obj-$(CONFIG_FUNCTION_TRACER)	+= mcount.o ftrace.o
 obj-$(CONFIG_DYNAMIC_FTRACE)	+= mcount-dyn.o
 
-obj-$(CONFIG_PERF_EVENTS)      += perf_event.o
+obj-$(CONFIG_PERF_EVENTS)	+= perf_event.o
+obj-$(CONFIG_PERF_EVENTS)	+= perf_callchain.o
 
 clean:
diff --git a/arch/riscv/kernel/perf_callchain.c b/arch/riscv/kernel/perf_callchain.c
new file mode 100644
index 000000000000..8d2804f05cf9
--- /dev/null
+++ b/arch/riscv/kernel/perf_callchain.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2019 Hangzhou C-SKY Microsystems co.,ltd. */
+
+#include <linux/perf_event.h>
+#include <linux/uaccess.h>
+
+/* Kernel callchain */
+struct stackframe {
+	unsigned long fp;
+	unsigned long ra;
+};
+
+/*
+ * Get the return address for a single stackframe and return a pointer to the
+ * next frame tail.
+ */
+static unsigned long user_backtrace(struct perf_callchain_entry_ctx *entry,
+				    unsigned long fp, unsigned long reg_ra)
+{
+	struct stackframe buftail;
+	unsigned long ra = 0;
+	unsigned long *user_frame_tail =
+			(unsigned long *)(fp - sizeof(struct stackframe));
+
+	/* Check accessibility of one struct frame_tail beyond */
+	if (!access_ok(user_frame_tail, sizeof(buftail)))
+		return 0;
+	if (__copy_from_user_inatomic(&buftail, user_frame_tail,
+				      sizeof(buftail)))
+		return 0;
+
+	if (reg_ra != 0)
+		ra = reg_ra;
+	else
+		ra = buftail.ra;
+
+	fp = buftail.fp;
+	if (ra != 0)
+		perf_callchain_store(entry, ra);
+	else
+		return 0;
+
+	return fp;
+}
+
+/*
+ * This will be called when the target is in user mode
+ * This function will only be called when we use
+ * "PERF_SAMPLE_CALLCHAIN" in
+ * kernel/events/core.c:perf_prepare_sample()
+ *
+ * How to trigger perf_callchain_[user/kernel] :
+ * $ perf record -e cpu-clock --call-graph fp ./program
+ * $ perf report --call-graph
+ *
+ * On RISC-V platform, the program being sampled and the C library
+ * need to be compiled with -fno-omit-frame-pointer, otherwise
+ * the user stack will not contain function frame.
+ */
+void perf_callchain_user(struct perf_callchain_entry_ctx *entry,
+			 struct pt_regs *regs)
+{
+	unsigned long fp = 0;
+
+	/* RISC-V does not support perf in guest mode. */
+	if (perf_guest_cbs && perf_guest_cbs->is_in_guest())
+		return;
+
+	fp = regs->s0;
+	perf_callchain_store(entry, regs->sepc);
+
+	fp = user_backtrace(entry, fp, regs->ra);
+	while (fp && !(fp & 0x3) && entry->nr < entry->max_stack)
+		fp = user_backtrace(entry, fp, 0);
+}
+
+bool fill_callchain(unsigned long pc, void *entry)
+{
+	return perf_callchain_store(entry, pc);
+}
+
+void notrace walk_stackframe(struct task_struct *task,
+	struct pt_regs *regs, bool (*fn)(unsigned long, void *), void *arg);
+void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
+			   struct pt_regs *regs)
+{
+	/* RISC-V does not support perf in guest mode. */
+	if (perf_guest_cbs && perf_guest_cbs->is_in_guest()) {
+		pr_warn("RISC-V does not support perf in guest mode!");
+		return;
+	}
+
+	walk_stackframe(NULL, regs, fill_callchain, entry);
+}
diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
index f15642715d1a..0940681d2f68 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -19,8 +19,8 @@ struct stackframe {
 	unsigned long ra;
 };
 
-static void notrace walk_stackframe(struct task_struct *task,
-	struct pt_regs *regs, bool (*fn)(unsigned long, void *), void *arg)
+void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
+			     bool (*fn)(unsigned long, void *), void *arg)
 {
 	unsigned long fp, sp, pc;
 
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
