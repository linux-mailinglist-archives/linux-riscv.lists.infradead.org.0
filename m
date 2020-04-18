Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD811AF49A
	for <lists+linux-riscv@lfdr.de>; Sat, 18 Apr 2020 22:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9JXp3Rhu7cLwrTpzSGBlYRihxWrREylPnANLGxW8+A=; b=CXjnD4AaelMW0G
	QGBy7MQX9XWADhU386UDjuugm5RQhmLyvRdx64BIwe/s7/j3hbc4y2ywQUP6NvFNdrpgjfQHPReny
	MTVEYiN1Dio63g8q+i8tK7CKv0xmepYVAdEmJkQlK/3Ma2DqaF1MWaQ6OpDwa8TnjJ/3niHhBXS6e
	ySvRhjyXBrKSPQAWE/Rac+2db6JAvkLyS+gnZycePuAa3u58AZ9LFlJEoXIC8qrNK+qezgTWtaET0
	HJHK7ND+1obwSoYxWaUAXTqKJRsBYEQDVZFlRAaFFjJLLXebTbM570o+V2A14A9R9ggaqmIQLne7G
	LMVS2JWVImr+k68fbF9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPtwe-0001W2-Mo; Sat, 18 Apr 2020 20:20:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPtwP-0001RX-OH
 for linux-riscv@lists.infradead.org; Sat, 18 Apr 2020 20:19:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id b11so7162855wrs.6
 for <linux-riscv@lists.infradead.org>; Sat, 18 Apr 2020 13:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w9JXp3Rhu7cLwrTpzSGBlYRihxWrREylPnANLGxW8+A=;
 b=JbKBnVI0U7UxcxtT3faWRBiszj2XDgDFNgOzl43LDvQOtUFOB6w3E5B95JQ02ihE5Q
 CbjPeHs/PbFRpvn3MkULt1q6O8tUFrOWCxovRBPgBd4kwLLHY7nf/Yvg4WhOPXZxa6RJ
 xO1U5xUK6+wnn6/Q6sRBP+4RKsvgM3VuJjlyvvwHcMQUNvbTyT/P/UFWc8Hnhaxpc2Uy
 3899B03P/bo6pEn9hVyvWffjs203ik5r1iuxI33XXtIqIL5AO9dPWGDc7UR7/5w0lpm+
 y8seH4ZRgOz2SS7aRfsJaESdsBpp5+p5pSKfxGy5ed0qVUN3qKeKg//OOcvqalgGE90G
 gGEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w9JXp3Rhu7cLwrTpzSGBlYRihxWrREylPnANLGxW8+A=;
 b=kVXe8cto3dIodigCHsFZTb/m2cEG8btqnvM1Wcv/vWMDCR+jtQ2DUzteWsS02ar1V5
 a3TYod+Htt+PWC5whBgUsXVRh8TXHvrWddnA3KoGzRdVaC8aEYJNNPpxedTRw5PrNCcz
 022/xCn0uWimKr2Jntb65xFEa0UYfJWyASGrimAK5d90J1JVXS1WRA6lX8c7xBfaUJGm
 XJ0/gn5g5yDvpFc+O4HC8K4ReOXzlpFW9TEkIfOo0oSQh2RPewSxNc5+rOK9DI8KJ/YC
 Ko3Nt8NhHv1ZpwfXySx9SIk3aa1Q0j/88zAqkI7xSwEcYn8GqrNGcRHU2HkDSsI719gv
 GCcg==
X-Gm-Message-State: AGi0PuY514F93bvZlYVxQ8TtqlmE9Ln/UUeXp0ayuHS00kQj0PZZ/APr
 u+N2OvlF3fcwx0/UR+skADw30g==
X-Google-Smtp-Source: APiQypIDuM3/Wd2F8zlmlHEJK4d/GC19+42X9SoC5sMfPvE3cHV9j61KFyhaLVuETxKlplewtcxzwA==
X-Received: by 2002:adf:c442:: with SMTP id a2mr10309363wrg.110.1587241191939; 
 Sat, 18 Apr 2020 13:19:51 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id
 m1sm31735255wro.64.2020.04.18.13.19.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 13:19:51 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv3 01/50] kallsyms/printk: Add loglvl to print_ip_sym()
Date: Sat, 18 Apr 2020 21:18:55 +0100
Message-Id: <20200418201944.482088-2-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_131953_787639_A1D9284F 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Juri Lelli <juri.lelli@redhat.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 James Hogan <jhogan@kernel.org>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Ben Segall <bsegall@google.com>, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Dmitry Safonov <dima@arista.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mel Gorman <mgorman@suse.de>, Jiri Slaby <jslaby@suse.com>,
 Petr Mladek <pmladek@suse.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Steven Rostedt <rostedt@goodmis.org>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Michal Simek <monstr@monstr.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

print_ip_sym() needs to have a log level parameter to comply with other
parts being printed. Otherwise, half of the expected backtrace would be
printed and other may be missing with some logging level.

The following callee(s) are using now the adjusted log level:
- microblaze/unwind: the same level as headers & userspace unwind.
  Note that pr_debug()'s there are for debugging the unwinder itself.
- nds32/traps: symbol addresses are printed with the same log level
  as backtrace headers.
- lockdep: ip for locking issues is printed with the same log level
  as other part of the warning.
- sched: ip where preemption was disabled is printed as error like
  the rest part of the message.
- ftrace: bug reports are now consistent in the log level being used.

Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Ben Segall <bsegall@google.com>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>
Cc: Greentime Hu <green.hu@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: James Hogan <jhogan@kernel.org>
Cc: Juri Lelli <juri.lelli@redhat.com>
Cc: Mel Gorman <mgorman@suse.de>
Cc: Michal Simek <monstr@monstr.eu>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Paul Burton <paulburton@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Vincent Chen <deanbo422@gmail.com>
Cc: Vincent Guittot <vincent.guittot@linaro.org>
Cc: Will Deacon <will@kernel.org>
Cc: linux-mips@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/microblaze/kernel/unwind.c | 2 +-
 arch/mips/kernel/traps.c        | 4 ++--
 arch/nds32/kernel/traps.c       | 4 ++--
 arch/riscv/kernel/stacktrace.c  | 2 +-
 include/linux/kallsyms.h        | 4 ++--
 kernel/locking/lockdep.c        | 4 ++--
 kernel/sched/core.c             | 6 ++----
 kernel/trace/ftrace.c           | 8 ++++----
 tools/include/linux/kallsyms.h  | 2 +-
 9 files changed, 17 insertions(+), 19 deletions(-)

diff --git a/arch/microblaze/kernel/unwind.c b/arch/microblaze/kernel/unwind.c
index 34c270cb11fc..4241cdd28ee7 100644
--- a/arch/microblaze/kernel/unwind.c
+++ b/arch/microblaze/kernel/unwind.c
@@ -254,7 +254,7 @@ static void microblaze_unwind_inner(struct task_struct *task,
 					task->comm);
 				break;
 			} else
-				print_ip_sym(pc);
+				print_ip_sym(KERN_INFO, pc);
 		}
 
 		/* Stop when we reach anything not part of the kernel */
diff --git a/arch/mips/kernel/traps.c b/arch/mips/kernel/traps.c
index 31968cbd6464..de05503c680c 100644
--- a/arch/mips/kernel/traps.c
+++ b/arch/mips/kernel/traps.c
@@ -123,7 +123,7 @@ static void show_raw_backtrace(unsigned long reg29)
 			break;
 		}
 		if (__kernel_text_address(addr))
-			print_ip_sym(addr);
+			print_ip_sym(KERN_DEFAULT, addr);
 	}
 	printk("\n");
 }
@@ -153,7 +153,7 @@ static void show_backtrace(struct task_struct *task, const struct pt_regs *regs)
 	}
 	printk("Call Trace:\n");
 	do {
-		print_ip_sym(pc);
+		print_ip_sym(KERN_DEFAULT, pc);
 		pc = unwind_stack(task, &sp, pc, &ra);
 	} while (pc);
 	pr_cont("\n");
diff --git a/arch/nds32/kernel/traps.c b/arch/nds32/kernel/traps.c
index f4d386b52622..40625760a125 100644
--- a/arch/nds32/kernel/traps.c
+++ b/arch/nds32/kernel/traps.c
@@ -108,7 +108,7 @@ static void __dump(struct task_struct *tsk, unsigned long *base_reg)
 			if (__kernel_text_address(ret_addr)) {
 				ret_addr = ftrace_graph_ret_addr(
 						tsk, &graph, ret_addr, NULL);
-				print_ip_sym(ret_addr);
+				print_ip_sym(KERN_EMERG, ret_addr);
 			}
 			if (--cnt < 0)
 				break;
@@ -124,7 +124,7 @@ static void __dump(struct task_struct *tsk, unsigned long *base_reg)
 
 				ret_addr = ftrace_graph_ret_addr(
 						tsk, &graph, ret_addr, NULL);
-				print_ip_sym(ret_addr);
+				print_ip_sym(KERN_EMERG, ret_addr);
 			}
 			if (--cnt < 0)
 				break;
diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
index 02087fe539c6..eeee844fb93d 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -99,7 +99,7 @@ static void notrace walk_stackframe(struct task_struct *task,
 
 static bool print_trace_address(unsigned long pc, void *arg)
 {
-	print_ip_sym(pc);
+	print_ip_sym(KERN_DEFAULT, pc);
 	return false;
 }
 
diff --git a/include/linux/kallsyms.h b/include/linux/kallsyms.h
index 657a83b943f0..98338dc6b5d2 100644
--- a/include/linux/kallsyms.h
+++ b/include/linux/kallsyms.h
@@ -165,9 +165,9 @@ static inline int kallsyms_show_value(void)
 
 #endif /*CONFIG_KALLSYMS*/
 
-static inline void print_ip_sym(unsigned long ip)
+static inline void print_ip_sym(const char *loglvl, unsigned long ip)
 {
-	printk("[<%px>] %pS\n", (void *) ip, (void *) ip);
+	printk("%s[<%px>] %pS\n", loglvl, (void *) ip, (void *) ip);
 }
 
 #endif /*_LINUX_KALLSYMS_H*/
diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
index ac10db66cc63..079e251fdb4a 100644
--- a/kernel/locking/lockdep.c
+++ b/kernel/locking/lockdep.c
@@ -4399,7 +4399,7 @@ static void print_unlock_imbalance_bug(struct task_struct *curr,
 		curr->comm, task_pid_nr(curr));
 	print_lockdep_cache(lock);
 	pr_cont(") at:\n");
-	print_ip_sym(ip);
+	print_ip_sym(KERN_WARNING, ip);
 	pr_warn("but there are no more locks to release!\n");
 	pr_warn("\nother info that might help us debug this:\n");
 	lockdep_print_held_locks(curr);
@@ -5050,7 +5050,7 @@ static void print_lock_contention_bug(struct task_struct *curr,
 		curr->comm, task_pid_nr(curr));
 	print_lockdep_cache(lock);
 	pr_cont(") at:\n");
-	print_ip_sym(ip);
+	print_ip_sym(KERN_WARNING, ip);
 	pr_warn("but there are no locks held!\n");
 	pr_warn("\nother info that might help us debug this:\n");
 	lockdep_print_held_locks(curr);
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 3a61a3b8eaa9..e6ea7c17a362 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -3864,8 +3864,7 @@ static noinline void __schedule_bug(struct task_struct *prev)
 	if (IS_ENABLED(CONFIG_DEBUG_PREEMPT)
 	    && in_atomic_preempt_off()) {
 		pr_err("Preemption disabled at:");
-		print_ip_sym(preempt_disable_ip);
-		pr_cont("\n");
+		print_ip_sym(KERN_ERR, preempt_disable_ip);
 	}
 	if (panic_on_warn)
 		panic("scheduling while atomic\n");
@@ -6800,8 +6799,7 @@ void ___might_sleep(const char *file, int line, int preempt_offset)
 	if (IS_ENABLED(CONFIG_DEBUG_PREEMPT)
 	    && !preempt_count_equals(preempt_offset)) {
 		pr_err("Preemption disabled at:");
-		print_ip_sym(preempt_disable_ip);
-		pr_cont("\n");
+		print_ip_sym(KERN_ERR, preempt_disable_ip);
 	}
 	dump_stack();
 	add_taint(TAINT_WARN, LOCKDEP_STILL_OK);
diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
index 041694a1eb74..120b4b7f927c 100644
--- a/kernel/trace/ftrace.c
+++ b/kernel/trace/ftrace.c
@@ -2031,12 +2031,12 @@ void ftrace_bug(int failed, struct dyn_ftrace *rec)
 	case -EFAULT:
 		FTRACE_WARN_ON_ONCE(1);
 		pr_info("ftrace faulted on modifying ");
-		print_ip_sym(ip);
+		print_ip_sym(KERN_INFO, ip);
 		break;
 	case -EINVAL:
 		FTRACE_WARN_ON_ONCE(1);
 		pr_info("ftrace failed to modify ");
-		print_ip_sym(ip);
+		print_ip_sym(KERN_INFO, ip);
 		print_ip_ins(" actual:   ", (unsigned char *)ip);
 		pr_cont("\n");
 		if (ftrace_expected) {
@@ -2047,12 +2047,12 @@ void ftrace_bug(int failed, struct dyn_ftrace *rec)
 	case -EPERM:
 		FTRACE_WARN_ON_ONCE(1);
 		pr_info("ftrace faulted on writing ");
-		print_ip_sym(ip);
+		print_ip_sym(KERN_INFO, ip);
 		break;
 	default:
 		FTRACE_WARN_ON_ONCE(1);
 		pr_info("ftrace faulted on unknown error ");
-		print_ip_sym(ip);
+		print_ip_sym(KERN_INFO, ip);
 	}
 	print_bug_type();
 	if (rec) {
diff --git a/tools/include/linux/kallsyms.h b/tools/include/linux/kallsyms.h
index 89ca6fe257cc..efb6c3f5f2a9 100644
--- a/tools/include/linux/kallsyms.h
+++ b/tools/include/linux/kallsyms.h
@@ -20,7 +20,7 @@ static inline const char *kallsyms_lookup(unsigned long addr,
 
 #include <execinfo.h>
 #include <stdlib.h>
-static inline void print_ip_sym(unsigned long ip)
+static inline void print_ip_sym(const char *loglvl, unsigned long ip)
 {
 	char **name;
 
-- 
2.26.0


