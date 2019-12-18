Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DFB124ECC
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Dec 2019 18:06:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4D6xuio+8u/6zPJ5seXNY5WbWGZMLzm5IXxIXeVLCBA=; b=CWESC/nF28TjXl6tHLzV+JBF3d
	/Jrm1mZuoxO93sgcPxCk0YE1UkbD5F2qNEvYUAz3VF/EzZrlwxHBYVfr6Hd+NHP/e3YDVj3SLClY5
	rSzxqABFGDfz7ij65vztWHc1KeW4k9riWkBBtm1QpGo4UEOmsJts/LbO3stCfvVhgm5sx3Mb/pVH3
	KWyzGcJjDtZP1ZxlfPlFm1nb4f+FrfF3deLVB/eFKkH8+uafAYu+GhT4N2ZqfLH7ei6B48w0zvGNo
	WkjuiU7PtQSKTwMldNwyfKLUHkMzshh5xz/AoImSkKW2s9UZlxhqN5OiU0l6LUnFRH0dpID+MT/xt
	K3IMZsyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcm8-0000cZ-CM; Wed, 18 Dec 2019 17:06:16 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcm3-0000be-M2
 for linux-riscv@lists.infradead.org; Wed, 18 Dec 2019 17:06:14 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s7so1162471pjc.0
 for <linux-riscv@lists.infradead.org>; Wed, 18 Dec 2019 09:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=4D6xuio+8u/6zPJ5seXNY5WbWGZMLzm5IXxIXeVLCBA=;
 b=bDbpAPNPhOhk1utSmAYIqOje9X38LYR4etf/f/BtalxCt1BXjplGCjRT5GjfabXr+g
 fY5PYgzxHut7IHJ4Yx3r+IIfSHSKIvtD4ivk7YGPbtgM67AWq2O/21uFI+cQ10cypumU
 wHackUorg6k5m+abIDlpIUs6bXMQbGJhul+Q8IrvKUui1FMrlq3bXbziPGnSG4kedPZQ
 Jfb/2Xznsae87jznlRHC0KuQZZMkltau4zmM70m3Z+5cgH2uNan1/5eeiFXWkmCJmQKL
 nO0VJ0OzhDj0kyvrp8wG83YH4XORbPvLM4kOY3ynFw1EaJxHh7zK+Z6lMYIDZGaF36fs
 MsHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4D6xuio+8u/6zPJ5seXNY5WbWGZMLzm5IXxIXeVLCBA=;
 b=Yxodp7fBndYhXcuJu3AOZ5KqUtaEWsMjPgRlEiqRCP0crGfvtqfylN2gIjCcHV3uN1
 CT4cW3uWOfRlvXL0geiQZxOf5j3vBfAuXZ3hnab3UIR1q5SZab4WvR4aOLgQTK9xuqjs
 P4wD7CiLrwx373K+/Ygk/TaNGpbu+EXwfWE32XxrewUUjFdET9bcb3NOKdnUP63dXYSk
 xN57Kp4DB8+e8kNGmd2IanYXv6HkBdjOGIqnRs1HHL7O1s1mofFPKL+viyWiqRTd52KU
 qwvmzBvCeQe1ofVa26D6zPcPHfpjW2TnSxiZ8+dmtxLcgKXt8DXgkE1YgAFmK4Zr567B
 L8ew==
X-Gm-Message-State: APjAAAWGhtxqfVKOXEkyTSX0oebkomZKS4m4QJ2PqeDo5Fbg3KcEsTEe
 WJTerpz0pUo9neW7SaSTX8z6Aw==
X-Google-Smtp-Source: APXvYqx1Rnt9M4yfYki9+VRva+seFipPgGP3qYByiqy7051L4eFOGSA3004k/l1MzyUrVXEOzkvGxQ==
X-Received: by 2002:a17:902:82c3:: with SMTP id
 u3mr3723233plz.73.1576688770320; 
 Wed, 18 Dec 2019 09:06:10 -0800 (PST)
Received: from rip.lixom.net (99-152-116-91.lightspeed.sntcca.sbcglobal.net.
 [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id v29sm3844699pgl.88.2019.12.18.09.06.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Dec 2019 09:06:09 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH] riscv: change CSR M/S defines to use "X" for prefix
Date: Wed, 18 Dec 2019 09:06:03 -0800
Message-Id: <20191218170603.58256-1-olof@lixom.net>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_090611_869200_42A6642A 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: damien.lemoal@wdc.com, jason@lakedaemon.net, maz@kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Commit a4c3733d32a7 ("riscv: abstract out CSR names for supervisor vs
machine mode") introduced new non-S/M-specific defines for some of the
CSRs and fields that differ for when you run the kernel in machine or
supervisor mode.

One of those was "IRQ_TIMER" (instead of IRQ_S_TIMER/IRQ_M_MTIMER),
which was generic enough to cause conflicts with other defines in
drivers. Since it was in csr.h, it ended up getting pulled in through
fairly generic include files, etc.

I looked at just renaming those, but for consistency I chose to rename all
M/S symbols to using 'X' instead of 'S'/'M' in the identifiers instead,
which gives them all less generic names.

This is pretty churny, and I'm sure there'll be opinions on naming, but
I figured I'd do the busywork of fixing it up instead of just pointing
out the conflicts.

Fixes: a4c3733d32a7 ("riscv: abstract out CSR names for supervisor vs machine mode")
Cc: Christoph Hellwig <hch@lst.de>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Olof Johansson <olof@lixom.net>
---
 arch/riscv/include/asm/csr.h      | 70 +++++++++++++++++++--------------------
 arch/riscv/include/asm/irqflags.h | 12 +++----
 arch/riscv/include/asm/ptrace.h   |  2 +-
 arch/riscv/kernel/entry.S         | 32 +++++++++---------
 arch/riscv/kernel/fpu.S           |  8 ++---
 arch/riscv/kernel/head.S          | 14 ++++----
 arch/riscv/kernel/irq.c           |  6 ++--
 arch/riscv/kernel/process.c       |  4 +--
 arch/riscv/kernel/smp.c           |  2 +-
 arch/riscv/kernel/traps.c         |  6 ++--
 arch/riscv/lib/uaccess.S          | 12 +++----
 arch/riscv/mm/fault.c             |  2 +-
 drivers/clocksource/timer-riscv.c |  8 ++---
 drivers/irqchip/irq-sifive-plic.c |  6 ++--
 14 files changed, 92 insertions(+), 92 deletions(-)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 0a62d2d684552..21b323c25c94a 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -103,45 +103,45 @@
 #define CSR_MHARTID		0xf14
 
 #ifdef CONFIG_RISCV_M_MODE
-# define CSR_STATUS	CSR_MSTATUS
-# define CSR_IE		CSR_MIE
-# define CSR_TVEC	CSR_MTVEC
-# define CSR_SCRATCH	CSR_MSCRATCH
-# define CSR_EPC	CSR_MEPC
-# define CSR_CAUSE	CSR_MCAUSE
-# define CSR_TVAL	CSR_MTVAL
-# define CSR_IP		CSR_MIP
-
-# define SR_IE		SR_MIE
-# define SR_PIE		SR_MPIE
-# define SR_PP		SR_MPP
-
-# define IRQ_SOFT	IRQ_M_SOFT
-# define IRQ_TIMER	IRQ_M_TIMER
-# define IRQ_EXT	IRQ_M_EXT
+# define CSR_XSTATUS	CSR_MSTATUS
+# define CSR_XIE	CSR_MIE
+# define CSR_XTVEC	CSR_MTVEC
+# define CSR_XSCRATCH	CSR_MSCRATCH
+# define CSR_XEPC	CSR_MEPC
+# define CSR_XCAUSE	CSR_MCAUSE
+# define CSR_XTVAL	CSR_MTVAL
+# define CSR_XIP	CSR_MIP
+
+# define SR_XIE		SR_MIE
+# define SR_XPIE	SR_MPIE
+# define SR_XPP		SR_MPP
+
+# define IRQ_X_SOFT	IRQ_M_SOFT
+# define IRQ_X_TIMER	IRQ_M_TIMER
+# define IRQ_X_EXT	IRQ_M_EXT
 #else /* CONFIG_RISCV_M_MODE */
-# define CSR_STATUS	CSR_SSTATUS
-# define CSR_IE		CSR_SIE
-# define CSR_TVEC	CSR_STVEC
-# define CSR_SCRATCH	CSR_SSCRATCH
-# define CSR_EPC	CSR_SEPC
-# define CSR_CAUSE	CSR_SCAUSE
-# define CSR_TVAL	CSR_STVAL
-# define CSR_IP		CSR_SIP
-
-# define SR_IE		SR_SIE
-# define SR_PIE		SR_SPIE
-# define SR_PP		SR_SPP
-
-# define IRQ_SOFT	IRQ_S_SOFT
-# define IRQ_TIMER	IRQ_S_TIMER
-# define IRQ_EXT	IRQ_S_EXT
+# define CSR_XSTATUS	CSR_SSTATUS
+# define CSR_XIE	CSR_SIE
+# define CSR_XTVEC	CSR_STVEC
+# define CSR_XSCRATCH	CSR_SSCRATCH
+# define CSR_XEPC	CSR_SEPC
+# define CSR_XCAUSE	CSR_SCAUSE
+# define CSR_XTVAL	CSR_STVAL
+# define CSR_XIP	CSR_SIP
+
+# define SR_XIE		SR_SIE
+# define SR_XPIE	SR_SPIE
+# define SR_XPP		SR_SPP
+
+# define IRQ_X_SOFT	IRQ_S_SOFT
+# define IRQ_X_TIMER	IRQ_S_TIMER
+# define IRQ_X_EXT	IRQ_S_EXT
 #endif /* CONFIG_RISCV_M_MODE */
 
 /* IE/IP (Supervisor/Machine Interrupt Enable/Pending) flags */
-#define IE_SIE		(_AC(0x1, UL) << IRQ_SOFT)
-#define IE_TIE		(_AC(0x1, UL) << IRQ_TIMER)
-#define IE_EIE		(_AC(0x1, UL) << IRQ_EXT)
+#define IE_SIE		(_AC(0x1, UL) << IRQ_X_SOFT)
+#define IE_TIE		(_AC(0x1, UL) << IRQ_X_TIMER)
+#define IE_EIE		(_AC(0x1, UL) << IRQ_X_EXT)
 
 #ifndef __ASSEMBLY__
 
diff --git a/arch/riscv/include/asm/irqflags.h b/arch/riscv/include/asm/irqflags.h
index 08d4d6a5b7e95..ba2828a37d724 100644
--- a/arch/riscv/include/asm/irqflags.h
+++ b/arch/riscv/include/asm/irqflags.h
@@ -13,31 +13,31 @@
 /* read interrupt enabled status */
 static inline unsigned long arch_local_save_flags(void)
 {
-	return csr_read(CSR_STATUS);
+	return csr_read(CSR_XSTATUS);
 }
 
 /* unconditionally enable interrupts */
 static inline void arch_local_irq_enable(void)
 {
-	csr_set(CSR_STATUS, SR_IE);
+	csr_set(CSR_XSTATUS, SR_XIE);
 }
 
 /* unconditionally disable interrupts */
 static inline void arch_local_irq_disable(void)
 {
-	csr_clear(CSR_STATUS, SR_IE);
+	csr_clear(CSR_XSTATUS, SR_XIE);
 }
 
 /* get status and disable interrupts */
 static inline unsigned long arch_local_irq_save(void)
 {
-	return csr_read_clear(CSR_STATUS, SR_IE);
+	return csr_read_clear(CSR_XSTATUS, SR_XIE);
 }
 
 /* test flags */
 static inline int arch_irqs_disabled_flags(unsigned long flags)
 {
-	return !(flags & SR_IE);
+	return !(flags & SR_XIE);
 }
 
 /* test hardware interrupt enable bit */
@@ -49,7 +49,7 @@ static inline int arch_irqs_disabled(void)
 /* set interrupt enabled status */
 static inline void arch_local_irq_restore(unsigned long flags)
 {
-	csr_set(CSR_STATUS, flags & SR_IE);
+	csr_set(CSR_XSTATUS, flags & SR_XIE);
 }
 
 #endif /* _ASM_RISCV_IRQFLAGS_H */
diff --git a/arch/riscv/include/asm/ptrace.h b/arch/riscv/include/asm/ptrace.h
index ee49f80c95337..507ed43bc4b8a 100644
--- a/arch/riscv/include/asm/ptrace.h
+++ b/arch/riscv/include/asm/ptrace.h
@@ -58,7 +58,7 @@ struct pt_regs {
 #define REG_FMT "%08lx"
 #endif
 
-#define user_mode(regs) (((regs)->status & SR_PP) == 0)
+#define user_mode(regs) (((regs)->status & SR_XPP) == 0)
 
 
 /* Helpers for working with the instruction pointer */
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index dd61bb247ce75..309cbf057c4e7 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -29,11 +29,11 @@
 	 * the kernel thread pointer.  If we came from the kernel, the scratch
 	 * register will contain 0, and we should continue on the current TP.
 	 */
-	csrrw tp, CSR_SCRATCH, tp
+	csrrw tp, CSR_XSCRATCH, tp
 	bnez tp, _save_context
 
 _restore_kernel_tpsp:
-	csrr tp, CSR_SCRATCH
+	csrr tp, CSR_XSCRATCH
 	REG_S sp, TASK_TI_KERNEL_SP(tp)
 _save_context:
 	REG_S sp, TASK_TI_USER_SP(tp)
@@ -79,11 +79,11 @@ _save_context:
 	li t0, SR_SUM | SR_FS
 
 	REG_L s0, TASK_TI_USER_SP(tp)
-	csrrc s1, CSR_STATUS, t0
-	csrr s2, CSR_EPC
-	csrr s3, CSR_TVAL
-	csrr s4, CSR_CAUSE
-	csrr s5, CSR_SCRATCH
+	csrrc s1, CSR_XSTATUS, t0
+	csrr s2, CSR_XEPC
+	csrr s3, CSR_XTVAL
+	csrr s4, CSR_XCAUSE
+	csrr s5, CSR_XSCRATCH
 	REG_S s0, PT_SP(sp)
 	REG_S s1, PT_STATUS(sp)
 	REG_S s2, PT_EPC(sp)
@@ -118,8 +118,8 @@ _save_context:
 	REG_L  a2, PT_EPC(sp)
 	REG_SC x0, a2, PT_EPC(sp)
 
-	csrw CSR_STATUS, a0
-	csrw CSR_EPC, a2
+	csrw CSR_XSTATUS, a0
+	csrw CSR_XEPC, a2
 
 	REG_L x1,  PT_RA(sp)
 	REG_L x3,  PT_GP(sp)
@@ -166,7 +166,7 @@ ENTRY(handle_exception)
 	 * Set the scratch register to 0, so that if a recursive exception
 	 * occurs, the exception vector knows it came from the kernel
 	 */
-	csrw CSR_SCRATCH, x0
+	csrw CSR_XSCRATCH, x0
 
 	/* Load the global pointer */
 .option push
@@ -187,11 +187,11 @@ ENTRY(handle_exception)
 1:
 	/*
 	 * Exceptions run with interrupts enabled or disabled depending on the
-	 * state of SR_PIE in m/sstatus.
+	 * state of SR_XPIE in m/sstatus.
 	 */
-	andi t0, s1, SR_PIE
+	andi t0, s1, SR_XPIE
 	beqz t0, 1f
-	csrs CSR_STATUS, SR_IE
+	csrs CSR_XSTATUS, SR_XIE
 
 1:
 	/* Handle syscalls */
@@ -270,7 +270,7 @@ ret_from_syscall_rejected:
 
 ret_from_exception:
 	REG_L s0, PT_STATUS(sp)
-	csrc CSR_STATUS, SR_IE
+	csrc CSR_XSTATUS, SR_XIE
 #ifdef CONFIG_RISCV_M_MODE
 	/* the MPP value is too large to be used as an immediate arg for addi */
 	li t0, SR_MPP
@@ -294,7 +294,7 @@ resume_userspace:
 	 * Save TP into the scratch register , so we can find the kernel data
 	 * structures again.
 	 */
-	csrw CSR_SCRATCH, tp
+	csrw CSR_XSCRATCH, tp
 
 restore_all:
 	RESTORE_ALL
@@ -322,7 +322,7 @@ work_pending:
 	bnez s1, work_resched
 work_notifysig:
 	/* Handle pending signals and notify-resume requests */
-	csrs CSR_STATUS, SR_IE /* Enable interrupts for do_notify_resume() */
+	csrs CSR_XSTATUS, SR_XIE /* Enable interrupts for do_notify_resume() */
 	move a0, sp /* pt_regs */
 	move a1, s0 /* current_thread_info->flags */
 	tail do_notify_resume
diff --git a/arch/riscv/kernel/fpu.S b/arch/riscv/kernel/fpu.S
index dd2205473de78..1dade31f45647 100644
--- a/arch/riscv/kernel/fpu.S
+++ b/arch/riscv/kernel/fpu.S
@@ -23,7 +23,7 @@ ENTRY(__fstate_save)
 	li  a2,  TASK_THREAD_F0
 	add a0, a0, a2
 	li t1, SR_FS
-	csrs CSR_STATUS, t1
+	csrs CSR_XSTATUS, t1
 	frcsr t0
 	fsd f0,  TASK_THREAD_F0_F0(a0)
 	fsd f1,  TASK_THREAD_F1_F0(a0)
@@ -58,7 +58,7 @@ ENTRY(__fstate_save)
 	fsd f30, TASK_THREAD_F30_F0(a0)
 	fsd f31, TASK_THREAD_F31_F0(a0)
 	sw t0, TASK_THREAD_FCSR_F0(a0)
-	csrc CSR_STATUS, t1
+	csrc CSR_XSTATUS, t1
 	ret
 ENDPROC(__fstate_save)
 
@@ -67,7 +67,7 @@ ENTRY(__fstate_restore)
 	add a0, a0, a2
 	li t1, SR_FS
 	lw t0, TASK_THREAD_FCSR_F0(a0)
-	csrs CSR_STATUS, t1
+	csrs CSR_XSTATUS, t1
 	fld f0,  TASK_THREAD_F0_F0(a0)
 	fld f1,  TASK_THREAD_F1_F0(a0)
 	fld f2,  TASK_THREAD_F2_F0(a0)
@@ -101,6 +101,6 @@ ENTRY(__fstate_restore)
 	fld f30, TASK_THREAD_F30_F0(a0)
 	fld f31, TASK_THREAD_F31_F0(a0)
 	fscsr t0
-	csrc CSR_STATUS, t1
+	csrc CSR_XSTATUS, t1
 	ret
 ENDPROC(__fstate_restore)
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 84a6f0a4b120b..71efbba25ed59 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -48,8 +48,8 @@ ENTRY(_start)
 .global _start_kernel
 _start_kernel:
 	/* Mask all interrupts */
-	csrw CSR_IE, zero
-	csrw CSR_IP, zero
+	csrw CSR_XIE, zero
+	csrw CSR_XIP, zero
 
 #ifdef CONFIG_RISCV_M_MODE
 	/* flush the instruction cache */
@@ -76,7 +76,7 @@ _start_kernel:
 	 * floating point in kernel space
 	 */
 	li t0, SR_FS
-	csrc CSR_STATUS, t0
+	csrc CSR_XSTATUS, t0
 
 #ifdef CONFIG_SMP
 	li t0, CONFIG_NR_CPUS
@@ -134,7 +134,7 @@ relocate:
 	/* Point stvec to virtual address of intruction after satp write */
 	la a2, 1f
 	add a2, a2, a1
-	csrw CSR_TVEC, a2
+	csrw CSR_XTVEC, a2
 
 	/* Compute satp for kernel page tables, but don't load it yet */
 	srl a2, a0, PAGE_SHIFT
@@ -156,7 +156,7 @@ relocate:
 1:
 	/* Set trap vector to spin forever to help debug */
 	la a0, .Lsecondary_park
-	csrw CSR_TVEC, a0
+	csrw CSR_XTVEC, a0
 
 	/* Reload the global pointer */
 .option push
@@ -180,7 +180,7 @@ relocate:
 #ifdef CONFIG_SMP
 	/* Set trap vector to spin forever to help debug */
 	la a3, .Lsecondary_park
-	csrw CSR_TVEC, a3
+	csrw CSR_XTVEC, a3
 
 	slli a3, a0, LGREG
 	la a1, __cpu_up_stack_pointer
@@ -254,7 +254,7 @@ ENTRY(reset_regs)
 	bnez	t0, .Lreset_regs_done
 
 	li	t1, SR_FS
-	csrs	CSR_STATUS, t1
+	csrs	CSR_XSTATUS, t1
 	fmv.s.x	f0, zero
 	fmv.s.x	f1, zero
 	fmv.s.x	f2, zero
diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
index 3f07a91d5afb4..cfbec2adb33a0 100644
--- a/arch/riscv/kernel/irq.c
+++ b/arch/riscv/kernel/irq.c
@@ -23,11 +23,11 @@ asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
 
 	irq_enter();
 	switch (regs->cause & ~CAUSE_IRQ_FLAG) {
-	case IRQ_TIMER:
+	case IRQ_X_TIMER:
 		riscv_timer_interrupt();
 		break;
 #ifdef CONFIG_SMP
-	case IRQ_SOFT:
+	case IRQ_X_SOFT:
 		/*
 		 * We only use software interrupts to pass IPIs, so if a non-SMP
 		 * system gets one, then we don't know what to do.
@@ -35,7 +35,7 @@ asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
 		riscv_software_interrupt();
 		break;
 #endif
-	case IRQ_EXT:
+	case IRQ_X_EXT:
 		handle_arch_irq(regs);
 		break;
 	default:
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 95a3031e5c7c9..7d3ddb18863a8 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -65,7 +65,7 @@ void show_regs(struct pt_regs *regs)
 void start_thread(struct pt_regs *regs, unsigned long pc,
 	unsigned long sp)
 {
-	regs->status = SR_PIE;
+	regs->status = SR_XPIE;
 	if (has_fpu) {
 		regs->status |= SR_FS_INITIAL;
 		/*
@@ -111,7 +111,7 @@ int copy_thread(unsigned long clone_flags, unsigned long usp,
 		memset(childregs, 0, sizeof(struct pt_regs));
 		childregs->gp = gp;
 		/* Supervisor/Machine, irqs on: */
-		childregs->status = SR_PP | SR_PIE;
+		childregs->status = SR_XPP | SR_XPIE;
 
 		p->thread.ra = (unsigned long)ret_from_kernel_thread;
 		p->thread.s[0] = usp; /* fn */
diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index eb878abcaaf81..1c95cfeea9f13 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -116,7 +116,7 @@ static void send_ipi_single(int cpu, enum ipi_message_type op)
 static inline void clear_ipi(void)
 {
 	if (IS_ENABLED(CONFIG_RISCV_SBI))
-		csr_clear(CSR_IP, IE_SIE);
+		csr_clear(CSR_XIP, IE_SIE);
 	else
 		clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
 }
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index f4cad5163bf2c..d8d7c4dbb0afd 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -153,9 +153,9 @@ void __init trap_init(void)
 	 * Set sup0 scratch register to 0, indicating to exception vector
 	 * that we are presently executing in the kernel
 	 */
-	csr_write(CSR_SCRATCH, 0);
+	csr_write(CSR_XSCRATCH, 0);
 	/* Set the exception vector address */
-	csr_write(CSR_TVEC, &handle_exception);
+	csr_write(CSR_XTVEC, &handle_exception);
 	/* Enable all interrupts */
-	csr_write(CSR_IE, -1);
+	csr_write(CSR_XIE, -1);
 }
diff --git a/arch/riscv/lib/uaccess.S b/arch/riscv/lib/uaccess.S
index fecd65657a6fc..f47a2ea4dc898 100644
--- a/arch/riscv/lib/uaccess.S
+++ b/arch/riscv/lib/uaccess.S
@@ -18,7 +18,7 @@ ENTRY(__asm_copy_from_user)
 
 	/* Enable access to user memory */
 	li t6, SR_SUM
-	csrs CSR_STATUS, t6
+	csrs CSR_XSTATUS, t6
 
 	add a3, a1, a2
 	/* Use word-oriented copy only if low-order bits match */
@@ -47,7 +47,7 @@ ENTRY(__asm_copy_from_user)
 
 3:
 	/* Disable access to user memory */
-	csrc CSR_STATUS, t6
+	csrc CSR_XSTATUS, t6
 	li a0, 0
 	ret
 4: /* Edge case: unalignment */
@@ -72,7 +72,7 @@ ENTRY(__clear_user)
 
 	/* Enable access to user memory */
 	li t6, SR_SUM
-	csrs CSR_STATUS, t6
+	csrs CSR_XSTATUS, t6
 
 	add a3, a0, a1
 	addi t0, a0, SZREG-1
@@ -94,7 +94,7 @@ ENTRY(__clear_user)
 
 3:
 	/* Disable access to user memory */
-	csrc CSR_STATUS, t6
+	csrc CSR_XSTATUS, t6
 	li a0, 0
 	ret
 4: /* Edge case: unalignment */
@@ -114,11 +114,11 @@ ENDPROC(__clear_user)
 	/* Fixup code for __copy_user(10) and __clear_user(11) */
 10:
 	/* Disable access to user memory */
-	csrs CSR_STATUS, t6
+	csrs CSR_XSTATUS, t6
 	mv a0, a2
 	ret
 11:
-	csrs CSR_STATUS, t6
+	csrs CSR_XSTATUS, t6
 	mv a0, a1
 	ret
 	.previous
diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
index cf7248e07f439..ede89cdfb153f 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -53,7 +53,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 		goto vmalloc_fault;
 
 	/* Enable interrupts if they were enabled in the parent context. */
-	if (likely(regs->status & SR_PIE))
+	if (likely(regs->status & SR_XPIE))
 		local_irq_enable();
 
 	/*
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 4e54856ce2a5f..16ed3749eee12 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -31,7 +31,7 @@ static inline void mmio_set_timer(u64 val)
 static int riscv_clock_next_event(unsigned long delta,
 		struct clock_event_device *ce)
 {
-	csr_set(CSR_IE, IE_TIE);
+	csr_set(CSR_XIE, IE_TIE);
 	if (IS_ENABLED(CONFIG_RISCV_SBI))
 		sbi_set_timer(get_cycles64() + delta);
 	else
@@ -76,13 +76,13 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
 	ce->cpumask = cpumask_of(cpu);
 	clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);
 
-	csr_set(CSR_IE, IE_TIE);
+	csr_set(CSR_XIE, IE_TIE);
 	return 0;
 }
 
 static int riscv_timer_dying_cpu(unsigned int cpu)
 {
-	csr_clear(CSR_IE, IE_TIE);
+	csr_clear(CSR_XIE, IE_TIE);
 	return 0;
 }
 
@@ -91,7 +91,7 @@ void riscv_timer_interrupt(void)
 {
 	struct clock_event_device *evdev = this_cpu_ptr(&riscv_clock_event);
 
-	csr_clear(CSR_IE, IE_TIE);
+	csr_clear(CSR_XIE, IE_TIE);
 	evdev->event_handler(evdev);
 }
 
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 8df547d2d9353..d75c12edd1b8c 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -181,7 +181,7 @@ static void plic_handle_irq(struct pt_regs *regs)
 
 	WARN_ON_ONCE(!handler->present);
 
-	csr_clear(CSR_IE, IE_EIE);
+	csr_clear(CSR_XIE, IE_EIE);
 	while ((hwirq = readl(claim))) {
 		int irq = irq_find_mapping(plic_irqdomain, hwirq);
 
@@ -191,7 +191,7 @@ static void plic_handle_irq(struct pt_regs *regs)
 		else
 			generic_handle_irq(irq);
 	}
-	csr_set(CSR_IE, IE_EIE);
+	csr_set(CSR_XIE, IE_EIE);
 }
 
 /*
@@ -256,7 +256,7 @@ static int __init plic_init(struct device_node *node,
 		 * Skip contexts other than external interrupts for our
 		 * privilege level.
 		 */
-		if (parent.args[0] != IRQ_EXT)
+		if (parent.args[0] != IRQ_X_EXT)
 			continue;
 
 		hartid = plic_find_hart_id(parent.np);
-- 
2.11.0


