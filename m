Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FA99C3F0
	for <lists+linux-riscv@lfdr.de>; Sun, 25 Aug 2019 15:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rpQeVFC/ljFhc7+g8L5HdDnvNi7tFVRd8mfQd4nS7g=; b=P1Xgz6FNfuWOyL
	5w43V8WrSbCkxM3nTEZBjtLjyk+3qcrUsvlw72Nz0d/QnXQLfTsDsO1p9q9n3Ln4cMIVGTTbtehFp
	Bu2+H9c2tA13JUiKXjv8JXgxTb26Tn8+x28C1Di6Mts5hBx4hgZdEofkX/MYqsJnnNTwO1LtLCVWJ
	hwDQLA+NC9O6FHXL7jbftp/hzBcF98LtThPOpEHgoRNuwR812ZFsS0RS7oCcrz/cRPi9fnhuzaMzb
	/XyWnkbvIYyiECUkWmEVPABffN6+14tpLUz5HkxQx2rrza5Z1dwP2eJfXLur6s2/4s9K5T3zVbkg3
	4vfBRGN3G+0dHWhhh8hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1sYA-0006wk-K7; Sun, 25 Aug 2019 13:27:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1sVf-0003Vs-4i; Sun, 25 Aug 2019 13:24:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id y200so2148911pfb.6;
 Sun, 25 Aug 2019 06:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ABqbUOb9yTlWBycLA+vVgy10aa3RFNPi90+kbWnXnj4=;
 b=XlOYWrX84QfUGfxVujtYSDLQjkO2n+X/V1vEeWQMWM0vBDv5dZmYayL7ewK9/lbe5f
 puws9gxnBBL3ZtW3KScqzRc6gHb1KEsyl2y4yQhDyRG12zSj06u/4BhqS6ynaWZhcInC
 Jp4HYYwgNMLWg2Ghh9y1+QkLbuG/aRj1cGJLC2LO3yJRuIkfwU5za3pe3qi4aGcuhY2k
 7OebOSPIuR/+smUIR4lMDKkb/t7HmfEDAj3+b1z7UddF8v1iR7b851xb4Zpfzt15eWOb
 SR2YAFMULehg2fpkKPwipTt84L1s26e4zUxtTuEXMUwo8IfVPP0ODxn+3EWkpC+gdOC1
 eAuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ABqbUOb9yTlWBycLA+vVgy10aa3RFNPi90+kbWnXnj4=;
 b=dAuutJxRKuSUekq/zd2qLBDT3zls6NecQKPF3jG9kstZJUIOKeruLmbAcP3iuU0pcK
 162leloBjLfekjTZr8Azfyq5PxnXtlV4WKG5ufa6smxKlhaR41k4rUpvWnSZIGUUIMSo
 Ty+iq3zDyaHwztSiNC9jKEAOar0q81US2bkcZMZYslPThzfuAw7VU2gMyuYDb8YFaPHr
 1oHP2bFhLEp48le8i4/iwkZjhoFtzIGoD08wWMbzB1dpzSI9MMyqcm5KRbK9u0CLAWHE
 TRzPyy8lKDTY6QPr6RevKRmRmBcr6u2T2//cSuwh4u0fuYdAX4dcFLT5bu0z8zibE2la
 rdIA==
X-Gm-Message-State: APjAAAV3XNCr2WnvpzURv9RNZhajFJg3F6P3GtXGA5k80oPvgE5BoPDJ
 XCPkd+QPzvrUZYI2E/Y9X0K1IrVJkMPSZQ==
X-Google-Smtp-Source: APXvYqyBC/JTyOCCBr2L81Di8jkyCQ7yEHU7nHNyqfLhe02b3ofAjzg1rsOUutsL2IFiJsmTOyG3Yg==
X-Received: by 2002:a63:69c1:: with SMTP id
 e184mr11615522pgc.198.1566739482405; 
 Sun, 25 Aug 2019 06:24:42 -0700 (PDT)
Received: from localhost.localdomain ([149.28.153.17])
 by smtp.gmail.com with ESMTPSA id y23sm11076562pfr.86.2019.08.25.06.24.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Aug 2019 06:24:42 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>
Subject: [PATCH 07/11] ftrace: prepare arch specific interfaces for function
 prototype feature
Date: Sun, 25 Aug 2019 21:23:26 +0800
Message-Id: <20190825132330.5015-8-changbin.du@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190825132330.5015-1-changbin.du@gmail.com>
References: <20190825132330.5015-1-changbin.du@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_062443_315684_22A13A9D 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (changbin.du[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-parisc@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Jessica Yu <jeyu@kernel.org>, sparclinux@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

To record function parameter and return value, we need the arch specific
code to pass the saved register context. It is only valid if the
CONFIG_FTRACE_FUNC_PROTOTYPE feature is enabled. This patch only changes
the interfaces, real implementation will be added later.

Signed-off-by: Changbin Du <changbin.du@gmail.com>
---
 arch/arm/kernel/ftrace.c             |  2 +-
 arch/arm64/kernel/ftrace.c           |  2 +-
 arch/csky/kernel/ftrace.c            |  2 +-
 arch/microblaze/kernel/ftrace.c      |  2 +-
 arch/mips/kernel/ftrace.c            |  2 +-
 arch/nds32/kernel/ftrace.c           |  5 +++--
 arch/parisc/kernel/ftrace.c          |  2 +-
 arch/powerpc/kernel/trace/ftrace.c   |  2 +-
 arch/riscv/kernel/ftrace.c           |  2 +-
 arch/s390/kernel/ftrace.c            |  2 +-
 arch/sh/kernel/ftrace.c              |  2 +-
 arch/sparc/kernel/ftrace.c           |  2 +-
 arch/x86/kernel/ftrace.c             |  2 +-
 include/linux/ftrace.h               | 10 +++++++---
 kernel/trace/fgraph.c                | 21 +++++++++++++++------
 kernel/trace/ftrace.c                |  4 +++-
 kernel/trace/trace.h                 |  2 +-
 kernel/trace/trace_functions_graph.c |  2 +-
 kernel/trace/trace_irqsoff.c         |  3 ++-
 kernel/trace/trace_sched_wakeup.c    |  3 ++-
 20 files changed, 46 insertions(+), 28 deletions(-)

diff --git a/arch/arm/kernel/ftrace.c b/arch/arm/kernel/ftrace.c
index bda949fd84e8..fd01c08b2dcb 100644
--- a/arch/arm/kernel/ftrace.c
+++ b/arch/arm/kernel/ftrace.c
@@ -191,7 +191,7 @@ void prepare_ftrace_return(unsigned long *parent, unsigned long self_addr,
 	old = *parent;
 	*parent = return_hooker;
 
-	if (function_graph_enter(old, self_addr, frame_pointer, NULL))
+	if (function_graph_enter(old, self_addr, frame_pointer, NULL, NULL))
 		*parent = old;
 }
 
diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index 171773257974..dc8cc516c00a 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -233,7 +233,7 @@ void prepare_ftrace_return(unsigned long self_addr, unsigned long *parent,
 	 */
 	old = *parent;
 
-	if (!function_graph_enter(old, self_addr, frame_pointer, NULL))
+	if (!function_graph_enter(old, self_addr, frame_pointer, NULL, NULL))
 		*parent = return_hooker;
 }
 
diff --git a/arch/csky/kernel/ftrace.c b/arch/csky/kernel/ftrace.c
index 44f4880179b7..5bc67f447e78 100644
--- a/arch/csky/kernel/ftrace.c
+++ b/arch/csky/kernel/ftrace.c
@@ -148,7 +148,7 @@ void prepare_ftrace_return(unsigned long *parent, unsigned long self_addr,
 	old = *parent;
 
 	if (!function_graph_enter(old, self_addr,
-			*(unsigned long *)frame_pointer, parent)) {
+			*(unsigned long *)frame_pointer, parent, NULL)) {
 		/*
 		 * For csky-gcc function has sub-call:
 		 * subi	sp,	sp, 8
diff --git a/arch/microblaze/kernel/ftrace.c b/arch/microblaze/kernel/ftrace.c
index 224eea40e1ee..9722e98cd01d 100644
--- a/arch/microblaze/kernel/ftrace.c
+++ b/arch/microblaze/kernel/ftrace.c
@@ -62,7 +62,7 @@ void prepare_ftrace_return(unsigned long *parent, unsigned long self_addr)
 		return;
 	}
 
-	if (function_graph_enter(old, self_addr, 0, NULL))
+	if (function_graph_enter(old, self_addr, 0, NULL, NULL))
 		*parent = old;
 }
 #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
diff --git a/arch/mips/kernel/ftrace.c b/arch/mips/kernel/ftrace.c
index 2625232bfe52..24668bf079d2 100644
--- a/arch/mips/kernel/ftrace.c
+++ b/arch/mips/kernel/ftrace.c
@@ -378,7 +378,7 @@ void prepare_ftrace_return(unsigned long *parent_ra_addr, unsigned long self_ra,
 	insns = core_kernel_text(self_ra) ? 2 : MCOUNT_OFFSET_INSNS + 1;
 	self_ra -= (MCOUNT_INSN_SIZE * insns);
 
-	if (function_graph_enter(old_parent_ra, self_ra, fp, NULL))
+	if (function_graph_enter(old_parent_ra, self_ra, fp, NULL, NULL))
 		*parent_ra_addr = old_parent_ra;
 	return;
 out:
diff --git a/arch/nds32/kernel/ftrace.c b/arch/nds32/kernel/ftrace.c
index fd2a54b8cd57..3dbf0017dfdf 100644
--- a/arch/nds32/kernel/ftrace.c
+++ b/arch/nds32/kernel/ftrace.c
@@ -217,7 +217,7 @@ void prepare_ftrace_return(unsigned long *parent, unsigned long self_addr,
 
 	old = *parent;
 
-	if (!function_graph_enter(old, self_addr, frame_pointer, NULL))
+	if (!function_graph_enter(old, self_addr, frame_pointer, NULL, NULL))
 		*parent = return_hooker;
 }
 
@@ -235,7 +235,8 @@ noinline void ftrace_graph_caller(void)
 	prepare_ftrace_return(parent_ip, selfpc, frame_pointer);
 }
 
-extern unsigned long ftrace_return_to_handler(unsigned long frame_pointer);
+extern unsigned long ftrace_return_to_handler(unsigned long frame_pointer,
+					      unsigned long retval);
 void __naked return_to_handler(void)
 {
 	__asm__ __volatile__ (
diff --git a/arch/parisc/kernel/ftrace.c b/arch/parisc/kernel/ftrace.c
index b6fb30f2e4bf..ea02f36e4f84 100644
--- a/arch/parisc/kernel/ftrace.c
+++ b/arch/parisc/kernel/ftrace.c
@@ -40,7 +40,7 @@ static void __hot prepare_ftrace_return(unsigned long *parent,
 
 	old = *parent;
 
-	if (!function_graph_enter(old, self_addr, 0, NULL))
+	if (!function_graph_enter(old, self_addr, 0, NULL, NULL))
 		/* activate parisc_return_to_handler() as return point */
 		*parent = (unsigned long) &parisc_return_to_handler;
 }
diff --git a/arch/powerpc/kernel/trace/ftrace.c b/arch/powerpc/kernel/trace/ftrace.c
index be1ca98fce5c..78174bbb257e 100644
--- a/arch/powerpc/kernel/trace/ftrace.c
+++ b/arch/powerpc/kernel/trace/ftrace.c
@@ -956,7 +956,7 @@ unsigned long prepare_ftrace_return(unsigned long parent, unsigned long ip)
 
 	return_hooker = ppc_function_entry(return_to_handler);
 
-	if (!function_graph_enter(parent, ip, 0, NULL))
+	if (!function_graph_enter(parent, ip, 0, NULL, NULL))
 		parent = return_hooker;
 out:
 	return parent;
diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
index b94d8db5ddcc..18f836727950 100644
--- a/arch/riscv/kernel/ftrace.c
+++ b/arch/riscv/kernel/ftrace.c
@@ -142,7 +142,7 @@ void prepare_ftrace_return(unsigned long *parent, unsigned long self_addr,
 	 */
 	old = *parent;
 
-	if (function_graph_enter(old, self_addr, frame_pointer, parent))
+	if (function_graph_enter(old, self_addr, frame_pointer, parent, NULL))
 		*parent = return_hooker;
 }
 
diff --git a/arch/s390/kernel/ftrace.c b/arch/s390/kernel/ftrace.c
index 1bb85f60c0dd..5021a23c5089 100644
--- a/arch/s390/kernel/ftrace.c
+++ b/arch/s390/kernel/ftrace.c
@@ -209,7 +209,7 @@ unsigned long prepare_ftrace_return(unsigned long ra, unsigned long sp,
 	if (unlikely(atomic_read(&current->tracing_graph_pause)))
 		goto out;
 	ip -= MCOUNT_INSN_SIZE;
-	if (!function_graph_enter(ra, ip, 0, (void *) sp))
+	if (!function_graph_enter(ra, ip, 0, (void *) sp), NULL)
 		ra = (unsigned long) return_to_handler;
 out:
 	return ra;
diff --git a/arch/sh/kernel/ftrace.c b/arch/sh/kernel/ftrace.c
index 1b04270e5460..3a8271993e9c 100644
--- a/arch/sh/kernel/ftrace.c
+++ b/arch/sh/kernel/ftrace.c
@@ -364,7 +364,7 @@ void prepare_ftrace_return(unsigned long *parent, unsigned long self_addr)
 		return;
 	}
 
-	if (function_graph_enter(old, self_addr, 0, NULL))
+	if (function_graph_enter(old, self_addr, 0, NULL, NULL))
 		__raw_writel(old, parent);
 }
 #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
diff --git a/arch/sparc/kernel/ftrace.c b/arch/sparc/kernel/ftrace.c
index 684b84ce397f..2783185719ba 100644
--- a/arch/sparc/kernel/ftrace.c
+++ b/arch/sparc/kernel/ftrace.c
@@ -130,7 +130,7 @@ unsigned long prepare_ftrace_return(unsigned long parent,
 	if (unlikely(atomic_read(&current->tracing_graph_pause)))
 		return parent + 8UL;
 
-	if (function_graph_enter(parent, self_addr, frame_pointer, NULL))
+	if (function_graph_enter(parent, self_addr, frame_pointer, NULL, NULL))
 		return parent + 8UL;
 
 	return return_hooker;
diff --git a/arch/x86/kernel/ftrace.c b/arch/x86/kernel/ftrace.c
index 024c3053dbba..a044734167af 100644
--- a/arch/x86/kernel/ftrace.c
+++ b/arch/x86/kernel/ftrace.c
@@ -1072,7 +1072,7 @@ void prepare_ftrace_return(unsigned long self_addr, unsigned long *parent,
 		return;
 	}
 
-	if (function_graph_enter(old, self_addr, frame_pointer, parent))
+	if (function_graph_enter(old, self_addr, frame_pointer, parent, NULL))
 		*parent = old;
 }
 #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
index f5aab37a8c34..e615b5e639aa 100644
--- a/include/linux/ftrace.h
+++ b/include/linux/ftrace.h
@@ -757,9 +757,12 @@ struct ftrace_graph_ret {
 
 /* Type of the callback handlers for tracing function graph*/
 typedef void (*trace_func_graph_ret_t)(struct ftrace_graph_ret *); /* return */
-typedef int (*trace_func_graph_ent_t)(struct ftrace_graph_ent *); /* entry */
+/* @pt_regs is only available for CONFIG_FTRACE_FUNC_PROTOTYPE. */
+typedef int (*trace_func_graph_ent_t)(struct ftrace_graph_ent *,
+				      struct pt_regs *); /* entry */
 
-extern int ftrace_graph_entry_stub(struct ftrace_graph_ent *trace);
+int ftrace_graph_entry_stub(struct ftrace_graph_ent *trace,
+			    struct pt_regs *pt_regs);
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 
@@ -797,7 +800,8 @@ extern void return_to_handler(void);
 
 extern int
 function_graph_enter(unsigned long ret, unsigned long func,
-		     unsigned long frame_pointer, unsigned long *retp);
+		     unsigned long frame_pointer, unsigned long *retp,
+		     struct pt_regs *pt_regs);
 
 struct ftrace_ret_stack *
 ftrace_graph_get_ret_stack(struct task_struct *task, int idx);
diff --git a/kernel/trace/fgraph.c b/kernel/trace/fgraph.c
index 8dfd5021b933..7451dba84fee 100644
--- a/kernel/trace/fgraph.c
+++ b/kernel/trace/fgraph.c
@@ -96,8 +96,13 @@ ftrace_push_return_trace(unsigned long ret, unsigned long func,
 	return 0;
 }
 
+/*
+ * Called from arch specific code. @pt_regs is only available for
+ * CONFIG_FTRACE_FUNC_PROTOTYPE.
+ */
 int function_graph_enter(unsigned long ret, unsigned long func,
-			 unsigned long frame_pointer, unsigned long *retp)
+			 unsigned long frame_pointer, unsigned long *retp,
+			 struct pt_regs *pt_regs)
 {
 	struct ftrace_graph_ent trace;
 
@@ -108,7 +113,7 @@ int function_graph_enter(unsigned long ret, unsigned long func,
 		goto out;
 
 	/* Only trace if the calling function expects to */
-	if (!ftrace_graph_entry(&trace))
+	if (!ftrace_graph_entry(&trace, pt_regs))
 		goto out_ret;
 
 	return 0;
@@ -204,9 +209,11 @@ static struct notifier_block ftrace_suspend_notifier = {
 
 /*
  * Send the trace to the ring-buffer.
+ * @retval is only available for CONFIG_FTRACE_FUNC_PROTOTYPE.
  * @return the original return address.
  */
-unsigned long ftrace_return_to_handler(unsigned long frame_pointer)
+unsigned long ftrace_return_to_handler(unsigned long frame_pointer,
+				       unsigned long retval)
 {
 	struct ftrace_graph_ret trace;
 	unsigned long ret;
@@ -327,7 +334,8 @@ void ftrace_graph_sleep_time_control(bool enable)
 	fgraph_sleep_time = enable;
 }
 
-int ftrace_graph_entry_stub(struct ftrace_graph_ent *trace)
+int ftrace_graph_entry_stub(struct ftrace_graph_ent *trace,
+			    struct pt_regs *pt_regs)
 {
 	return 0;
 }
@@ -417,11 +425,12 @@ ftrace_graph_probe_sched_switch(void *ignore, bool preempt,
 		next->ret_stack[index].calltime += timestamp;
 }
 
-static int ftrace_graph_entry_test(struct ftrace_graph_ent *trace)
+static int ftrace_graph_entry_test(struct ftrace_graph_ent *trace,
+				   struct pt_regs *pt_regs)
 {
 	if (!ftrace_ops_test(&global_ops, trace->func, NULL))
 		return 0;
-	return __ftrace_graph_entry(trace);
+	return __ftrace_graph_entry(trace, pt_regs);
 }
 
 /*
diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
index 438b8b47198f..a1683cc55838 100644
--- a/kernel/trace/ftrace.c
+++ b/kernel/trace/ftrace.c
@@ -794,7 +794,9 @@ void ftrace_graph_graph_time_control(bool enable)
 	fgraph_graph_time = enable;
 }
 
-static int profile_graph_entry(struct ftrace_graph_ent *trace)
+/* @pt_regs is only available for CONFIG_FTRACE_FUNC_PROTOTYPE. */
+static int profile_graph_entry(struct ftrace_graph_ent *trace,
+			       struct pt_regs *pt_regs)
 {
 	struct ftrace_ret_stack *ret_stack;
 
diff --git a/kernel/trace/trace.h b/kernel/trace/trace.h
index 22433a15e340..4b31176d443e 100644
--- a/kernel/trace/trace.h
+++ b/kernel/trace/trace.h
@@ -737,7 +737,7 @@ void print_trace_header(struct seq_file *m, struct trace_iterator *iter);
 int trace_empty(struct trace_iterator *iter);
 
 void trace_graph_return(struct ftrace_graph_ret *trace);
-int trace_graph_entry(struct ftrace_graph_ent *trace);
+int trace_graph_entry(struct ftrace_graph_ent *trace, struct pt_regs *pt_regs);
 void set_graph_array(struct trace_array *tr);
 
 void tracing_start_cmdline_record(void);
diff --git a/kernel/trace/trace_functions_graph.c b/kernel/trace/trace_functions_graph.c
index 78af97163147..f331a9ba946d 100644
--- a/kernel/trace/trace_functions_graph.c
+++ b/kernel/trace/trace_functions_graph.c
@@ -124,7 +124,7 @@ static inline int ftrace_graph_ignore_irqs(void)
 	return in_irq();
 }
 
-int trace_graph_entry(struct ftrace_graph_ent *trace)
+int trace_graph_entry(struct ftrace_graph_ent *trace, struct pt_regs *pt_regs)
 {
 	struct trace_array *tr = graph_array;
 	struct trace_array_cpu *data;
diff --git a/kernel/trace/trace_irqsoff.c b/kernel/trace/trace_irqsoff.c
index a745b0cee5d3..513e3544a45a 100644
--- a/kernel/trace/trace_irqsoff.c
+++ b/kernel/trace/trace_irqsoff.c
@@ -172,7 +172,8 @@ static int irqsoff_display_graph(struct trace_array *tr, int set)
 	return start_irqsoff_tracer(irqsoff_trace, set);
 }
 
-static int irqsoff_graph_entry(struct ftrace_graph_ent *trace)
+static int irqsoff_graph_entry(struct ftrace_graph_ent *trace,
+			       struct pt_regs *pt_regs)
 {
 	struct trace_array *tr = irqsoff_trace;
 	struct trace_array_cpu *data;
diff --git a/kernel/trace/trace_sched_wakeup.c b/kernel/trace/trace_sched_wakeup.c
index 743b2b520d34..ce18f679930c 100644
--- a/kernel/trace/trace_sched_wakeup.c
+++ b/kernel/trace/trace_sched_wakeup.c
@@ -112,7 +112,8 @@ static int wakeup_display_graph(struct trace_array *tr, int set)
 	return start_func_tracer(tr, set);
 }
 
-static int wakeup_graph_entry(struct ftrace_graph_ent *trace)
+static int wakeup_graph_entry(struct ftrace_graph_ent *trace,
+			      struct pt_regs *pt_regs)
 {
 	struct trace_array *tr = wakeup_trace;
 	struct trace_array_cpu *data;
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
