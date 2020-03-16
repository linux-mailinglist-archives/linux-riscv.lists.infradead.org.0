Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 722D51862B8
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 03:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOea3a7mlPJiX0lVGt+8b4086xX4tI8gxX1Ja/SVARs=; b=Fi5mdXsU/E8JyX
	b//IvxWFNbkMB7BpnNmbUQLCG/IOQl8AhKastPO1YgN7VQfpRbsXSXA5byzmZEQWZu3FeawAqL6uI
	Xv7uACMpA8tbS9CJ9DdTAAhEuKoWnaGtLIwbvFZGrbZvgSCqpQku2vfsR77XWwv41qS7fG449tJvr
	ev1ZXVGwsY9l2Q+sYT1VFeAnSQZgaT6g/vGB1RVKunBUvg8b9TvZJ7qicx2kodo3BVL3S/TcocgPf
	x5ehxTHoU6qfEWfnydnDtjy6Cctq/5UN65Qs7lBmHSgeEZm7Z2WnMxFe8notEn+3Jnr/4f4YUs39G
	uDHfdMiOqx0nagpBpoMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDff1-00005p-7n; Mon, 16 Mar 2020 02:39:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfZu-0002eM-46
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 02:34:08 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD6032072A;
 Mon, 16 Mar 2020 02:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326045;
 bh=kfUWbnTeMtmznHS2XI+DY12FQ9bzL1Ohz2f03135/Vs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1/UwPJSIKYUyGkWJNi0p4PpXttYjfdGxcHGEa8l21KyVYOhXKbwvQ0cr/ukRfxXFL
 b42yYZdcCzVz7eJV9cHHl++D6v+8You17CDSLYPY3oJ2OHc/m1lgABexWbj7bx4Sr3
 JZ7j826pVnYwPM7m2Aqn2iXMK/a2zgXYfwJ6oDn8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 38/41] riscv: fix seccomp reject syscall code path
Date: Sun, 15 Mar 2020 22:33:16 -0400
Message-Id: <20200316023319.749-38-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316023319.749-1-sashal@kernel.org>
References: <20200316023319.749-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193406_343558_3CF766A9 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Kees Cook <keescook@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>, netdev@vger.kernel.org,
 Palmer Dabbelt <palmerdabbelt@google.com>, linux-riscv@lists.infradead.org,
 bpf@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Tycho Andersen <tycho@tycho.ws>

[ Upstream commit af33d2433b03d63ed31fcfda842f46676a5e1afc ]

If secure_computing() rejected a system call, we were previously setting
the system call number to -1, to indicate to later code that the syscall
failed. However, if something (e.g. a user notification) was sleeping, and
received a signal, we may set a0 to -ERESTARTSYS and re-try the system call
again.

In this case, seccomp "denies" the syscall (because of the signal), and we
would set a7 to -1, thus losing the value of the system call we want to
restart.

Instead, let's return -1 from do_syscall_trace_enter() to indicate that the
syscall was rejected, so we don't clobber the value in case of -ERESTARTSYS
or whatever.

This commit fixes the user_notification_signal seccomp selftest on riscv to
no longer hang. That test expects the system call to be re-issued after the
signal, and it wasn't due to the above bug. Now that it is, everything
works normally.

Note that in the ptrace (tracer) case, the tracer can set the register
values to whatever they want, so we still need to keep the code that
handles out-of-bounds syscalls. However, we can drop the comment.

We can also drop syscall_set_nr(), since it is no longer used anywhere, and
the code that re-loads the value in a7 because of it.

Reported in: https://lore.kernel.org/bpf/CAEn-LTp=ss0Dfv6J00=rCAy+N78U2AmhqJNjfqjr2FDpPYjxEQ@mail.gmail.com/

Reported-by: David Abdurachmanov <david.abdurachmanov@gmail.com>
Signed-off-by: Tycho Andersen <tycho@tycho.ws>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/include/asm/syscall.h |  7 -------
 arch/riscv/kernel/entry.S        | 11 +++--------
 arch/riscv/kernel/ptrace.c       | 11 +++++------
 3 files changed, 8 insertions(+), 21 deletions(-)

diff --git a/arch/riscv/include/asm/syscall.h b/arch/riscv/include/asm/syscall.h
index 42347d0981e7e..49350c8bd7b09 100644
--- a/arch/riscv/include/asm/syscall.h
+++ b/arch/riscv/include/asm/syscall.h
@@ -28,13 +28,6 @@ static inline int syscall_get_nr(struct task_struct *task,
 	return regs->a7;
 }
 
-static inline void syscall_set_nr(struct task_struct *task,
-				  struct pt_regs *regs,
-				  int sysno)
-{
-	regs->a7 = sysno;
-}
-
 static inline void syscall_rollback(struct task_struct *task,
 				    struct pt_regs *regs)
 {
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index e163b7b64c86c..f6486d4956013 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -228,20 +228,13 @@ check_syscall_nr:
 	/* Check to make sure we don't jump to a bogus syscall number. */
 	li t0, __NR_syscalls
 	la s0, sys_ni_syscall
-	/*
-	 * The tracer can change syscall number to valid/invalid value.
-	 * We use syscall_set_nr helper in syscall_trace_enter thus we
-	 * cannot trust the current value in a7 and have to reload from
-	 * the current task pt_regs.
-	 */
-	REG_L a7, PT_A7(sp)
 	/*
 	 * Syscall number held in a7.
 	 * If syscall number is above allowed value, redirect to ni_syscall.
 	 */
 	bge a7, t0, 1f
 	/*
-	 * Check if syscall is rejected by tracer or seccomp, i.e., a7 == -1.
+	 * Check if syscall is rejected by tracer, i.e., a7 == -1.
 	 * If yes, we pretend it was executed.
 	 */
 	li t1, -1
@@ -334,6 +327,7 @@ work_resched:
 handle_syscall_trace_enter:
 	move a0, sp
 	call do_syscall_trace_enter
+	move t0, a0
 	REG_L a0, PT_A0(sp)
 	REG_L a1, PT_A1(sp)
 	REG_L a2, PT_A2(sp)
@@ -342,6 +336,7 @@ handle_syscall_trace_enter:
 	REG_L a5, PT_A5(sp)
 	REG_L a6, PT_A6(sp)
 	REG_L a7, PT_A7(sp)
+	bnez t0, ret_from_syscall_rejected
 	j check_syscall_nr
 handle_syscall_trace_exit:
 	move a0, sp
diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
index 407464201b91e..444dc7b0fd78c 100644
--- a/arch/riscv/kernel/ptrace.c
+++ b/arch/riscv/kernel/ptrace.c
@@ -148,21 +148,19 @@ long arch_ptrace(struct task_struct *child, long request,
  * Allows PTRACE_SYSCALL to work.  These are called from entry.S in
  * {handle,ret_from}_syscall.
  */
-__visible void do_syscall_trace_enter(struct pt_regs *regs)
+__visible int do_syscall_trace_enter(struct pt_regs *regs)
 {
 	if (test_thread_flag(TIF_SYSCALL_TRACE))
 		if (tracehook_report_syscall_entry(regs))
-			syscall_set_nr(current, regs, -1);
+			return -1;
 
 	/*
 	 * Do the secure computing after ptrace; failures should be fast.
 	 * If this fails we might have return value in a0 from seccomp
 	 * (via SECCOMP_RET_ERRNO/TRACE).
 	 */
-	if (secure_computing() == -1) {
-		syscall_set_nr(current, regs, -1);
-		return;
-	}
+	if (secure_computing() == -1)
+		return -1;
 
 #ifdef CONFIG_HAVE_SYSCALL_TRACEPOINTS
 	if (test_thread_flag(TIF_SYSCALL_TRACEPOINT))
@@ -170,6 +168,7 @@ __visible void do_syscall_trace_enter(struct pt_regs *regs)
 #endif
 
 	audit_syscall_entry(regs->a7, regs->a0, regs->a1, regs->a2, regs->a3);
+	return 0;
 }
 
 __visible void do_syscall_trace_exit(struct pt_regs *regs)
-- 
2.20.1


