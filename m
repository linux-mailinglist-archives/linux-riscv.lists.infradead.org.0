Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B0A186D47
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 15:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AD7FtBEtTdopzK9pUfhZrq115V9s5XIG8+/OzSZ3Wto=; b=Id0rNVxT/X/VKG
	LmVLLHAUp3m1UmLy58Gofz5hPR/Px7Q31oPKkD6QpcyPLJHi6gDuzHxkju0FmiFz4LebDZS8+xWBH
	sHXjs8w/537hlo+3g3uNCJsJQbLkQOBSTLXbgu9WLvC6qvV4AIoK6ouVHUFzzt00niERrG6Jx+rYP
	L37/co27Qnc224jIJKwql8aBBpq4CkPxPikzz0znHs/O+2bLgh6FtPZDeLua4tVCstx5P/+r/gHed
	bVWLc9eJ6KmGhtcg0cQY9EJ73ry7tkim/K1XD45BjbA20V1iVegoRiaH009L2O9x4Kjz9emej36j+
	qWXGjO25gtW46+KGTqug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDquF-0000Tv-Mt; Mon, 16 Mar 2020 14:39:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDquB-0000RT-Do
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 14:39:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id m15so9860973pgv.12
 for <linux-riscv@lists.infradead.org>; Mon, 16 Mar 2020 07:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AD7FtBEtTdopzK9pUfhZrq115V9s5XIG8+/OzSZ3Wto=;
 b=beK8PCLhYD1dsLDpHJqB8TGxb7jQ3ongo5w6XNyZETLY4DBFCgV6vo1/Kg3D8/g9TT
 jDa7CyqwP6bvlCprkI5tDSFMoUTXcgwB6uiucd06U6ZutTR34GpztaaDBilSTUraD1lA
 f/sVZKw2N5UEeOUhzymaK7xfM/UqWtoxrBrSlOhsigCrjhc+WFJYpHUVUYs7cGMJppAS
 colGDPgTSwUmsuiSnMYX1LLvGitITGH21NbuQ3oavInbU/YFwa6DgCpLfDhW/TG0VVFn
 5v9nH08IShEv4OkMwS2q4yMf4YwLYG0Rq9f0GIRPBZfSeSOOUH3EMyyFpIsO01TXv07a
 O17Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AD7FtBEtTdopzK9pUfhZrq115V9s5XIG8+/OzSZ3Wto=;
 b=PecgEcxWeUWRou7wAlnEgkiXEDv7fKJe8ks3VvpQ///QJ5NLmyPRTW0Q1+jkA6as5o
 U0a/xgjcR4sJAuaWY0tMC4q+Q7VHav85JjPmVVSd4YSMd1HB/ovh89/Rq7rfk4oC1p3M
 9AVdRhq+5ouCvl/dyGK5QF2lNrfa+5l6p8kHMTaK1665AqO0ZXrTgpJKBnLKvewqm8Qu
 pcJyb6PgKnA3jL57JlUh1APp1rB2uGpkffx6Nt1cPSwSp6qQqjqmwiDJfIpgxBTEwpx0
 cvD39eE03hP0X5X5CjZMAYMUrGDkcyi+9L+WjsK7PgITi9zXgEYHoNMU021ormjTig+l
 Yymg==
X-Gm-Message-State: ANhLgQ2qDOYVhpXcayRONi2Za6dp8o2fo4gNglmgSSi8wDCghiCEhdka
 7vXfIdAaPuzT7leIMh6b8wTSoQ==
X-Google-Smtp-Source: ADFU+vu68iG0TnbKfTTHZ6jUwW0TjWy3ZYyyMw5wypW0qWK6v9wnWEf9y1k4iDUr1GuSU5GTgBbgdw==
X-Received: by 2002:a62:7d4e:: with SMTP id y75mr5644pfc.32.1584369586818;
 Mon, 16 Mar 2020 07:39:46 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com
 ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
 by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.39.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 07:39:46 -0700 (PDT)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 01/50] kallsyms/printk: Add loglvl to print_ip_sym()
Date: Mon, 16 Mar 2020 14:38:27 +0000
Message-Id: <20200316143916.195608-2-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_073947_488034_3A3FCF59 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 0940681d2f68..a76892b48fff 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -98,7 +98,7 @@ static void notrace walk_stackframe(struct task_struct *task,
 
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
index 32406ef0d6a2..af819bb6874b 100644
--- a/kernel/locking/lockdep.c
+++ b/kernel/locking/lockdep.c
@@ -3998,7 +3998,7 @@ static void print_unlock_imbalance_bug(struct task_struct *curr,
 		curr->comm, task_pid_nr(curr));
 	print_lockdep_cache(lock);
 	pr_cont(") at:\n");
-	print_ip_sym(ip);
+	print_ip_sym(KERN_WARNING, ip);
 	pr_warn("but there are no more locks to release!\n");
 	pr_warn("\nother info that might help us debug this:\n");
 	lockdep_print_held_locks(curr);
@@ -4600,7 +4600,7 @@ static void print_lock_contention_bug(struct task_struct *curr,
 		curr->comm, task_pid_nr(curr));
 	print_lockdep_cache(lock);
 	pr_cont(") at:\n");
-	print_ip_sym(ip);
+	print_ip_sym(KERN_WARNING, ip);
 	pr_warn("but there are no locks held!\n");
 	pr_warn("\nother info that might help us debug this:\n");
 	lockdep_print_held_locks(curr);
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 1a9983da4408..2284deb3a83b 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -3858,8 +3858,7 @@ static noinline void __schedule_bug(struct task_struct *prev)
 	if (IS_ENABLED(CONFIG_DEBUG_PREEMPT)
 	    && in_atomic_preempt_off()) {
 		pr_err("Preemption disabled at:");
-		print_ip_sym(preempt_disable_ip);
-		pr_cont("\n");
+		print_ip_sym(KERN_ERR, preempt_disable_ip);
 	}
 	if (panic_on_warn)
 		panic("scheduling while atomic\n");
@@ -6792,8 +6791,7 @@ void ___might_sleep(const char *file, int line, int preempt_offset)
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
index fd81c7de77a7..c377e290ba54 100644
--- a/kernel/trace/ftrace.c
+++ b/kernel/trace/ftrace.c
@@ -2021,12 +2021,12 @@ void ftrace_bug(int failed, struct dyn_ftrace *rec)
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
@@ -2037,12 +2037,12 @@ void ftrace_bug(int failed, struct dyn_ftrace *rec)
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
2.25.1


