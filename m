Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCF1172A47
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 22:35:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2nKrAkc7nEDUcUx0/lfg7h3wWZF++DSMjw3PSOPi658=; b=UZNedvtbpXckxU8cFCT/Lbb1A
	Mdjsg8FIaLMcvzJOxD7MoeGRom53gqvBdhePwswTYXQMXKinZAFTg7Np05WpHpcyuT7GzsDisLV3y
	qmW3UWdcEOwIhdMxVLrdgm6OAKK9YcEv/xqQtCYSYYgivZcXSwIFLwr0sU+BLVdJy3ltkuIO/vzvZ
	DiNzVSs0hc6sr6Jt8hQrXunrehzR3UKuVsIQ5UfqGFxGUJeefwKw0CaIQ89DSOOp0f/P91mFsNMbN
	IdoDkb2lu0Eq2y85wUFXJ76rllT5jKMdgMfXvE7voI2SFFEj9qM7E2nEOWiS/F5SLwU0ayp+pkTjG
	FyeejgL7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Qou-0007gY-UY; Thu, 27 Feb 2020 21:35:48 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Qor-0007f1-AQ
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 21:35:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id q4so335921pls.4
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 13:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=2nKrAkc7nEDUcUx0/lfg7h3wWZF++DSMjw3PSOPi658=;
 b=BxCCNCvypzdE0nGtBwI/KrvijMeblsePC3Bh9Gz462Jo73Aj/puwZGXXCWYim/SlkU
 /A2ftlvWPQgnnICG+1T+yv67RBKkeAT2D40XZ8UkZTrYsjfKKUHur1uCFlRkvoY69kGn
 jq5fDkpJbEbl49QT9mUN4r6P2oIHM4jkN5cKZGQ+lqdBTWDxGAAo48yMcokij1WvadyY
 gxuwZIxgq9H9sqcEIeWT/0IrTpW9WJ+IsJm504iiEN9hjLpPjGfIy9tscKMnoF4oHIBk
 8y3/tgktht9G1pi9J0rN4RbX9/Go7zZ8gLLD0ruYJ0jS3qCVu7JInV4PGklYF/DmwtGL
 e7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding:cc:from:to;
 bh=2nKrAkc7nEDUcUx0/lfg7h3wWZF++DSMjw3PSOPi658=;
 b=g7EYiVErZ+qhzNJjSI8qKZLLlf+4JiQVn+L9Ck5V2rZMRKD9fLtKN6o8fFZ4I4ZTmw
 3iFX1vWqrfaQ3AHJSFD6DAAn5HtOyKt35tFquIVJkTkeYZAoNQ7pP7lSs0KXeJr5XRDS
 FMN9zOWDfDIUVoHLfR2KCn5XuJ71qNjCzhLouYPFmzDflhvxpRyx3/Z+PtTttOd1rtKq
 +oh1TgaPOkBJu+ioQ+JRtTB7kMJocwqQkhXswnF59IY+D1hefyPWJVbaN/l/KzmJ/Bol
 9oBuclKsYlLRuUaXDvCD9Cwa1BFtz9jbq99CebC/IWAkWNMzeVRGp4w/ODELbEDMBX2h
 baQg==
X-Gm-Message-State: APjAAAWgyK7KOddMlxd+X5P0eXBIYR/Rh+ubeAnOcbXsWrsKMtP8mt4z
 +xYKcsfkpC57cnNDwuiQqOg3ew==
X-Google-Smtp-Source: APXvYqyxiJo7NJKOBkuKQfAk3KytzrONlSNU2e8xVGzWvqeuHJLVgi3ADlmJBCS1BOgWHs1G8rMkIg==
X-Received: by 2002:a17:902:9b8a:: with SMTP id
 y10mr772783plp.114.1582839343678; 
 Thu, 27 Feb 2020 13:35:43 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id a22sm8187624pfk.108.2020.02.27.13.35.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 13:35:43 -0800 (PST)
Subject: [PATCH 1/3] RISC-V: Stop relying on GCC's register allocator's
 hueristics
Date: Thu, 27 Feb 2020 13:34:48 -0800
Message-Id: <20200227213450.87194-2-palmer@dabbelt.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
In-Reply-To: <20200227213450.87194-1-palmer@dabbelt.com>
References: <20200227213450.87194-1-palmer@dabbelt.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_133545_357586_7E225CAF 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: clang-built-linux@googlegroups.com,
 Palmer Dabbelt <palmerdabbelt@google.com>, kernel-team@android.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

GCC allows users to hint to the register allocation that a variable should be
placed in a register by using a syntax along the lines of

    function(...) {
        register long in_REG __asm__("REG");
    }

We've abused this a bit throughout the RISC-V port to access fixed registers
directly as C variables.  In practice it's never going to blow up because GCC
isn't going to allocate these registers, but it's not a well defined syntax so
we really shouldn't be relying upon this.  Luckily there is a very similar but
well defined syntax that allows us to still access these registers directly as
C variables, which is to simply declare the register variables globally.  For
fixed variables this doesn't change the ABI.

LLVM disallows this ambiguous syntax, so this isn't just strictly a formatting
change.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/include/asm/current.h | 5 +++--
 arch/riscv/kernel/process.c      | 5 +++--
 arch/riscv/kernel/stacktrace.c   | 7 ++++---
 3 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/include/asm/current.h b/arch/riscv/include/asm/current.h
index dd973efe5d7c..1de233d8e8de 100644
--- a/arch/riscv/include/asm/current.h
+++ b/arch/riscv/include/asm/current.h
@@ -17,6 +17,8 @@
 
 struct task_struct;
 
+register struct task_struct *riscv_current_is_tp __asm__("tp");
+
 /*
  * This only works because "struct thread_info" is at offset 0 from "struct
  * task_struct".  This constraint seems to be necessary on other architectures
@@ -26,8 +28,7 @@ struct task_struct;
  */
 static __always_inline struct task_struct *get_current(void)
 {
-	register struct task_struct *tp __asm__("tp");
-	return tp;
+	return riscv_current_is_tp;
 }
 
 #define current get_current()
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 817cf7b0974c..610c11e91606 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -22,6 +22,8 @@
 #include <asm/switch_to.h>
 #include <asm/thread_info.h>
 
+unsigned long gp_in_global __asm__("gp");
+
 extern asmlinkage void ret_from_fork(void);
 extern asmlinkage void ret_from_kernel_thread(void);
 
@@ -107,9 +109,8 @@ int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
 	/* p->thread holds context to be restored by __switch_to() */
 	if (unlikely(p->flags & PF_KTHREAD)) {
 		/* Kernel thread */
-		const register unsigned long gp __asm__ ("gp");
 		memset(childregs, 0, sizeof(struct pt_regs));
-		childregs->gp = gp;
+		childregs->gp = gp_in_global;
 		/* Supervisor/Machine, irqs on: */
 		childregs->status = SR_PP | SR_PIE;
 
diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
index 0940681d2f68..02087fe539c6 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -19,6 +19,8 @@ struct stackframe {
 	unsigned long ra;
 };
 
+register unsigned long sp_in_global __asm__("sp");
+
 void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
 			     bool (*fn)(unsigned long, void *), void *arg)
 {
@@ -29,7 +31,7 @@ void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
 		sp = user_stack_pointer(regs);
 		pc = instruction_pointer(regs);
 	} else if (task == NULL || task == current) {
-		const register unsigned long current_sp __asm__ ("sp");
+		const register unsigned long current_sp = sp_in_global;
 		fp = (unsigned long)__builtin_frame_address(0);
 		sp = current_sp;
 		pc = (unsigned long)walk_stackframe;
@@ -73,8 +75,7 @@ static void notrace walk_stackframe(struct task_struct *task,
 		sp = user_stack_pointer(regs);
 		pc = instruction_pointer(regs);
 	} else if (task == NULL || task == current) {
-		const register unsigned long current_sp __asm__ ("sp");
-		sp = current_sp;
+		sp = sp_in_global;
 		pc = (unsigned long)walk_stackframe;
 	} else {
 		/* task blocked in __switch_to */
-- 
2.25.1.481.gfbce0eb801-goog


