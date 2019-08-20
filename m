Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3E695A78
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 10:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qbbXO/Y4Rr/DDSwNZjqhFtC5QKbe/KQrh6QnL6PX+0U=; b=o8zLPYZIhqQ5bfDOyNf4d5Keux
	IOnM2nTDvSH2BBIDH8Zse5Z+j+mM2lDq7NArJshJgt/o3JEiVlIRRl8PtqpYlMB5TGln2PLVsIgqW
	ENtVf8B50TyfH+74tfcS4pTiA77ttuiBsreHJuhQAqWczB2FLGaDsIQhQflpSW/g8oXuIMD2FShJs
	OlOT9LbewErlQNdxIOEp9TUoItbYc4MqUv8z11bk65bUNhr/g+2Vh71pWfWICI5enLN3g3C9lAHfO
	wF68yUgavkuWsOsCbdXjT1vlVelJCZgmZRNy52yaFS0YdrSLIftI3E6Ua5rhX4ogw46ka3Pw6ClbI
	4s7U8+hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzxV-0006WV-LZ; Tue, 20 Aug 2019 08:57:41 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzxO-0006Po-Il
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 08:57:36 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07436283|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.692448-0.0313479-0.276204; FP=0|0|0|0|0|-1|-1|-1;
 HT=e02c03275; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=8; RT=8; SR=0;
 TI=SMTPD_---.FF9vUNc_1566291446; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.FF9vUNc_1566291446)
 by smtp.aliyun-inc.com(10.147.41.137);
 Tue, 20 Aug 2019 16:57:27 +0800
From: Mao Han <han_mao@c-sky.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH V4 1/3] riscv: Add perf callchain support
Date: Tue, 20 Aug 2019 16:57:16 +0800
Message-Id: <820d80272fc5627b8d00e684663a614470217606.1566290744.git.han_mao@c-sky.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1566290744.git.han_mao@c-sky.com>
References: <cover.1566290744.git.han_mao@c-sky.com>
In-Reply-To: <cover.1566290744.git.han_mao@c-sky.com>
References: <cover.1566290744.git.han_mao@c-sky.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_015734_880334_E738909B 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Guo Ren <guoren@kernel.org>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Christoph Hellwig <hch@lst.de>,
 Mao Han <han_mao@c-sky.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch add support for perf callchain sampling on riscv platform.
The return address of leaf function is retrieved from pt_regs as
it is not saved in the outmost frame.

Signed-off-by: Mao Han <han_mao@c-sky.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Greentime Hu <green.hu@gmail.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: linux-riscv <linux-riscv@lists.infradead.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Guo Ren <guoren@kernel.org>
---
 arch/riscv/Makefile                |   3 +
 arch/riscv/kernel/Makefile         |   3 +-
 arch/riscv/kernel/perf_callchain.c | 115 +++++++++++++++++++++++++++++++++++++
 3 files changed, 120 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/kernel/perf_callchain.c

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 7a117be..946565b 100644
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
index 2420d37..b1bea89 100644
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
index 0000000..d75d15c
--- /dev/null
+++ b/arch/riscv/kernel/perf_callchain.c
@@ -0,0 +1,115 @@
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
+static int unwind_frame_kernel(struct stackframe *frame)
+{
+	if (kstack_end((void *)frame->fp))
+		return -EPERM;
+	if (frame->fp & 0x3 || frame->fp < TASK_SIZE)
+		return -EPERM;
+	if (frame->fp < CONFIG_PAGE_OFFSET)
+		return -EPERM;
+
+	*frame = *((struct stackframe *)frame->fp - 1);
+	if (__kernel_text_address(frame->ra)) {
+		int graph = 0;
+
+		frame->ra = ftrace_graph_ret_addr(NULL, &graph, frame->ra,
+				NULL);
+	}
+	return 0;
+}
+
+static void notrace walk_stackframe(struct stackframe *fr,
+			struct perf_callchain_entry_ctx *entry)
+{
+	do {
+		perf_callchain_store(entry, fr->ra);
+	} while (unwind_frame_kernel(fr) >= 0);
+}
+
+/*
+ * Get the return address for a single stackframe and return a pointer to the
+ * next frame tail.
+ */
+static unsigned long user_backtrace(struct perf_callchain_entry_ctx *entry,
+			unsigned long fp, unsigned long reg_ra)
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
+	perf_callchain_store(entry, ra);
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
+	/* RISC-V does not support virtualization. */
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
+void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
+			   struct pt_regs *regs)
+{
+	struct stackframe fr;
+
+	/* RISC-V does not support virtualization. */
+	if (perf_guest_cbs && perf_guest_cbs->is_in_guest()) {
+		pr_warn("RISC-V does not support perf in guest mode!");
+		return;
+	}
+
+	fr.fp = regs->s0;
+	fr.ra = regs->ra;
+	walk_stackframe(&fr, entry);
+}
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
