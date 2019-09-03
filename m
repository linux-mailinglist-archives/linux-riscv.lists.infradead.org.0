Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8D8A654E
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 11:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6Cai41wYqUzzo3QNhkJOmPFj+AEZ0xnPDrQf2jFU0Y=; b=HmiOMU5MXWyLot
	mv8Mc6GD3qgUZKq/QVicxpUw/Y47UhT6c6S0HZhlxHF22bpKavZ+0q5NZ8Vbbj766p+ssy9SPZasX
	NPr9M0ciLcJOb5IlkFJBb4EE0MElPrjmaRU02Fl+UsUis0lCt3ZysSzbRLd/UrdWlTd84vgIYa225
	K17SoZ9+bMg4d5HSsTXnP1frRXi4r4eYJQuy9k+T7GUIIoDk+PnoPHUL9jS+l0qwUEfVgVpwuhEGj
	uIz2IKFzGTpoLLSg0UVnEHRK06iW2HkXA14tcO+iW91hkzgkJSokNdbKTFgnKffkF1hAqxclyGHPZ
	+/A4pgrLzbt51asNDmQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55Bx-00051U-Qj; Tue, 03 Sep 2019 09:33:37 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i55BL-0004Wn-Sk; Tue, 03 Sep 2019 09:33:00 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 08/20] riscv: abstract out CSR names for supervisor vs machine
 mode
Date: Tue,  3 Sep 2019 11:32:27 +0200
Message-Id: <20190903093239.21278-9-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903093239.21278-1-hch@lst.de>
References: <20190903093239.21278-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: Atish Patra <atish.patra@wdc.com>, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Many of the privileged CSRs exist in a supervisor and machine version
that are used very similarly.  Provide a new X-naming layer so that
we don't have to ifdef everywhere for M-mode Linux support.

Contains contributions from Damien Le Moal <Damien.LeMoal@wdc.com>.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig                 |  4 ++
 arch/riscv/include/asm/asm.h       |  6 +++
 arch/riscv/include/asm/csr.h       | 58 ++++++++++++++++++++++++++--
 arch/riscv/include/asm/irqflags.h  | 12 +++---
 arch/riscv/include/asm/processor.h |  2 +-
 arch/riscv/include/asm/ptrace.h    | 16 ++++----
 arch/riscv/include/asm/switch_to.h | 10 ++---
 arch/riscv/kernel/asm-offsets.c    |  8 ++--
 arch/riscv/kernel/entry.S          | 62 ++++++++++++++++--------------
 arch/riscv/kernel/fpu.S            |  8 ++--
 arch/riscv/kernel/head.S           | 12 +++---
 arch/riscv/kernel/irq.c            |  4 +-
 arch/riscv/kernel/process.c        | 15 ++++----
 arch/riscv/kernel/signal.c         | 21 +++++-----
 arch/riscv/kernel/traps.c          | 16 ++++----
 arch/riscv/lib/uaccess.S           | 12 +++---
 arch/riscv/mm/extable.c            |  4 +-
 arch/riscv/mm/fault.c              |  6 +--
 drivers/clocksource/timer-riscv.c  |  8 ++--
 drivers/irqchip/irq-sifive-plic.c  |  4 +-
 20 files changed, 178 insertions(+), 110 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index f392358ad4ea..e4a4bebdbcf3 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -57,6 +57,10 @@ config RISCV
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
 
+# set if we run in machine mode, cleared if we run in supervisor mode
+config RISCV_M_MODE
+	bool
+
 config MMU
 	def_bool y
 
diff --git a/arch/riscv/include/asm/asm.h b/arch/riscv/include/asm/asm.h
index 5a02b7d50940..0dfbeeb6fcb4 100644
--- a/arch/riscv/include/asm/asm.h
+++ b/arch/riscv/include/asm/asm.h
@@ -65,4 +65,10 @@
 #error "Unexpected __SIZEOF_SHORT__"
 #endif
 
+#ifdef CONFIG_RISCV_M_MODE
+# define Xret		mret
+#else
+# define Xret		sret
+#endif
+
 #endif /* _ASM_RISCV_ASM_H */
diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index a18923fa23c8..0dae5c361f29 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -11,8 +11,11 @@
 
 /* Status register flags */
 #define SR_SIE		_AC(0x00000002, UL) /* Supervisor Interrupt Enable */
+#define SR_MIE		_AC(0x00000008, UL) /* Machine Interrupt Enable */
 #define SR_SPIE		_AC(0x00000020, UL) /* Previous Supervisor IE */
+#define SR_MPIE		_AC(0x00000080, UL) /* Previous Machine IE */
 #define SR_SPP		_AC(0x00000100, UL) /* Previously Supervisor */
+#define SR_MPP		_AC(0x00001800, UL) /* Previously Machine */
 #define SR_SUM		_AC(0x00040000, UL) /* Supervisor User Memory Access */
 
 #define SR_FS		_AC(0x00006000, UL) /* Floating-point Status */
@@ -44,8 +47,8 @@
 #define SATP_MODE	SATP_MODE_39
 #endif
 
-/* SCAUSE */
-#define SCAUSE_IRQ_FLAG		(_AC(1, UL) << (__riscv_xlen - 1))
+/* *CAUSE */
+#define XCAUSE_IRQ_FLAG		(_AC(1, UL) << (__riscv_xlen - 1))
 
 #define IRQ_U_SOFT		0
 #define IRQ_S_SOFT		1
@@ -67,11 +70,26 @@
 #define EXC_LOAD_PAGE_FAULT	13
 #define EXC_STORE_PAGE_FAULT	15
 
-/* SIE (Interrupt Enable) and SIP (Interrupt Pending) flags */
+/* SIE/SIP (Machine Interrupt Enable/Pending) flags */
+#define MIE_MSIE		(_AC(0x1, UL) << IRQ_M_SOFT)
+#define MIE_MTIE		(_AC(0x1, UL) << IRQ_M_TIMER)
+#define MIE_MEIE		(_AC(0x1, UL) << IRQ_M_EXT)
+
+/* SIE/SIP (Supervisor Interrupt Enable/Pending) flags */
 #define SIE_SSIE		(_AC(0x1, UL) << IRQ_S_SOFT)
 #define SIE_STIE		(_AC(0x1, UL) << IRQ_S_TIMER)
 #define SIE_SEIE		(_AC(0x1, UL) << IRQ_S_EXT)
 
+/* symbolic CSR names: */
+#define CSR_MSTATUS		0x300
+#define CSR_MIE			0x304
+#define CSR_MTVEC		0x305
+#define CSR_MSCRATCH		0x340
+#define CSR_MEPC		0x341
+#define CSR_MCAUSE		0x342
+#define CSR_MTVAL		0x343
+#define CSR_MIP			0x344
+
 #define CSR_CYCLE		0xc00
 #define CSR_TIME		0xc01
 #define CSR_INSTRET		0xc02
@@ -89,6 +107,40 @@
 #define CSR_TIMEH		0xc81
 #define CSR_INSTRETH		0xc82
 
+#ifdef CONFIG_RISCV_M_MODE
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
+# define XIE_XTIE	MIE_MTIE
+# define XIE_XEIE	MIE_MEIE
+#else /* CONFIG_RISCV_M_MODE */
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
+# define XIE_XTIE	SIE_STIE
+# define XIE_XEIE	SIE_SEIE
+#endif /* CONFIG_RISCV_M_MODE */
+
 #ifndef __ASSEMBLY__
 
 #define csr_swap(csr, val)					\
diff --git a/arch/riscv/include/asm/irqflags.h b/arch/riscv/include/asm/irqflags.h
index e70f647ce3b7..ba2828a37d72 100644
--- a/arch/riscv/include/asm/irqflags.h
+++ b/arch/riscv/include/asm/irqflags.h
@@ -13,31 +13,31 @@
 /* read interrupt enabled status */
 static inline unsigned long arch_local_save_flags(void)
 {
-	return csr_read(CSR_SSTATUS);
+	return csr_read(CSR_XSTATUS);
 }
 
 /* unconditionally enable interrupts */
 static inline void arch_local_irq_enable(void)
 {
-	csr_set(CSR_SSTATUS, SR_SIE);
+	csr_set(CSR_XSTATUS, SR_XIE);
 }
 
 /* unconditionally disable interrupts */
 static inline void arch_local_irq_disable(void)
 {
-	csr_clear(CSR_SSTATUS, SR_SIE);
+	csr_clear(CSR_XSTATUS, SR_XIE);
 }
 
 /* get status and disable interrupts */
 static inline unsigned long arch_local_irq_save(void)
 {
-	return csr_read_clear(CSR_SSTATUS, SR_SIE);
+	return csr_read_clear(CSR_XSTATUS, SR_XIE);
 }
 
 /* test flags */
 static inline int arch_irqs_disabled_flags(unsigned long flags)
 {
-	return !(flags & SR_SIE);
+	return !(flags & SR_XIE);
 }
 
 /* test hardware interrupt enable bit */
@@ -49,7 +49,7 @@ static inline int arch_irqs_disabled(void)
 /* set interrupt enabled status */
 static inline void arch_local_irq_restore(unsigned long flags)
 {
-	csr_set(CSR_SSTATUS, flags & SR_SIE);
+	csr_set(CSR_XSTATUS, flags & SR_XIE);
 }
 
 #endif /* _ASM_RISCV_IRQFLAGS_H */
diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index f539149d04c2..46f825e34575 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -42,7 +42,7 @@ struct thread_struct {
 	((struct pt_regs *)(task_stack_page(tsk) + THREAD_SIZE		\
 			    - ALIGN(sizeof(struct pt_regs), STACK_ALIGN)))
 
-#define KSTK_EIP(tsk)		(task_pt_regs(tsk)->sepc)
+#define KSTK_EIP(tsk)		(task_pt_regs(tsk)->xepc)
 #define KSTK_ESP(tsk)		(task_pt_regs(tsk)->sp)
 
 
diff --git a/arch/riscv/include/asm/ptrace.h b/arch/riscv/include/asm/ptrace.h
index d48d1e13973c..7684d81d0e84 100644
--- a/arch/riscv/include/asm/ptrace.h
+++ b/arch/riscv/include/asm/ptrace.h
@@ -12,7 +12,7 @@
 #ifndef __ASSEMBLY__
 
 struct pt_regs {
-	unsigned long sepc;
+	unsigned long xepc;
 	unsigned long ra;
 	unsigned long sp;
 	unsigned long gp;
@@ -44,10 +44,10 @@ struct pt_regs {
 	unsigned long t4;
 	unsigned long t5;
 	unsigned long t6;
-	/* Supervisor CSRs */
-	unsigned long sstatus;
-	unsigned long sbadaddr;
-	unsigned long scause;
+	/* Supervisor/Machine CSRs */
+	unsigned long xstatus;
+	unsigned long xbadaddr;
+	unsigned long xcause;
 	/* a0 value before the syscall */
 	unsigned long orig_a0;
 };
@@ -58,18 +58,18 @@ struct pt_regs {
 #define REG_FMT "%08lx"
 #endif
 
-#define user_mode(regs) (((regs)->sstatus & SR_SPP) == 0)
+#define user_mode(regs) (((regs)->xstatus & SR_XPP) == 0)
 
 
 /* Helpers for working with the instruction pointer */
 static inline unsigned long instruction_pointer(struct pt_regs *regs)
 {
-	return regs->sepc;
+	return regs->xepc;
 }
 static inline void instruction_pointer_set(struct pt_regs *regs,
 					   unsigned long val)
 {
-	regs->sepc = val;
+	regs->xepc = val;
 }
 
 #define profile_pc(regs) instruction_pointer(regs)
diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index f0227bdce0f0..77593105b367 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -16,19 +16,19 @@ extern void __fstate_restore(struct task_struct *restore_from);
 
 static inline void __fstate_clean(struct pt_regs *regs)
 {
-	regs->sstatus = (regs->sstatus & ~SR_FS) | SR_FS_CLEAN;
+	regs->xstatus = (regs->xstatus & ~SR_FS) | SR_FS_CLEAN;
 }
 
 static inline void fstate_off(struct task_struct *task,
 			      struct pt_regs *regs)
 {
-	regs->sstatus = (regs->sstatus & ~SR_FS) | SR_FS_OFF;
+	regs->xstatus = (regs->xstatus & ~SR_FS) | SR_FS_OFF;
 }
 
 static inline void fstate_save(struct task_struct *task,
 			       struct pt_regs *regs)
 {
-	if ((regs->sstatus & SR_FS) == SR_FS_DIRTY) {
+	if ((regs->xstatus & SR_FS) == SR_FS_DIRTY) {
 		__fstate_save(task);
 		__fstate_clean(regs);
 	}
@@ -37,7 +37,7 @@ static inline void fstate_save(struct task_struct *task,
 static inline void fstate_restore(struct task_struct *task,
 				  struct pt_regs *regs)
 {
-	if ((regs->sstatus & SR_FS) != SR_FS_OFF) {
+	if ((regs->xstatus & SR_FS) != SR_FS_OFF) {
 		__fstate_restore(task);
 		__fstate_clean(regs);
 	}
@@ -49,7 +49,7 @@ static inline void __switch_to_aux(struct task_struct *prev,
 	struct pt_regs *regs;
 
 	regs = task_pt_regs(prev);
-	if (unlikely(regs->sstatus & SR_SD))
+	if (unlikely(regs->xstatus & SR_SD))
 		fstate_save(prev, regs);
 	fstate_restore(next, task_pt_regs(next));
 }
diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
index 9f5628c38ac9..d631ad41917b 100644
--- a/arch/riscv/kernel/asm-offsets.c
+++ b/arch/riscv/kernel/asm-offsets.c
@@ -71,7 +71,7 @@ void asm_offsets(void)
 	OFFSET(TASK_THREAD_FCSR, task_struct, thread.fstate.fcsr);
 
 	DEFINE(PT_SIZE, sizeof(struct pt_regs));
-	OFFSET(PT_SEPC, pt_regs, sepc);
+	OFFSET(PT_XEPC, pt_regs, xepc);
 	OFFSET(PT_RA, pt_regs, ra);
 	OFFSET(PT_FP, pt_regs, s0);
 	OFFSET(PT_S0, pt_regs, s0);
@@ -105,9 +105,9 @@ void asm_offsets(void)
 	OFFSET(PT_T6, pt_regs, t6);
 	OFFSET(PT_GP, pt_regs, gp);
 	OFFSET(PT_ORIG_A0, pt_regs, orig_a0);
-	OFFSET(PT_SSTATUS, pt_regs, sstatus);
-	OFFSET(PT_SBADADDR, pt_regs, sbadaddr);
-	OFFSET(PT_SCAUSE, pt_regs, scause);
+	OFFSET(PT_XSTATUS, pt_regs, xstatus);
+	OFFSET(PT_XBADADDR, pt_regs, xbadaddr);
+	OFFSET(PT_XCAUSE, pt_regs, xcause);
 
 	/*
 	 * THREAD_{F,X}* might be larger than a S-type offset can handle, but
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 74ccfd464071..2c0513f8b62f 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -26,14 +26,14 @@
 
 	/*
 	 * If coming from userspace, preserve the user thread pointer and load
-	 * the kernel thread pointer.  If we came from the kernel, sscratch
-	 * will contain 0, and we should continue on the current TP.
+	 * the kernel thread pointer.  If we came from the kernel, the scratch
+	 * register will contain 0, and we should continue on the current TP.
 	 */
-	csrrw tp, CSR_SSCRATCH, tp
+	csrrw tp, CSR_XSCRATCH, tp
 	bnez tp, _save_context
 
 _restore_kernel_tpsp:
-	csrr tp, CSR_SSCRATCH
+	csrr tp, CSR_XSCRATCH
 	REG_S sp, TASK_TI_KERNEL_SP(tp)
 _save_context:
 	REG_S sp, TASK_TI_USER_SP(tp)
@@ -79,16 +79,16 @@ _save_context:
 	li t0, SR_SUM | SR_FS
 
 	REG_L s0, TASK_TI_USER_SP(tp)
-	csrrc s1, CSR_SSTATUS, t0
-	csrr s2, CSR_SEPC
-	csrr s3, CSR_STVAL
-	csrr s4, CSR_SCAUSE
-	csrr s5, CSR_SSCRATCH
+	csrrc s1, CSR_XSTATUS, t0
+	csrr s2, CSR_XEPC
+	csrr s3, CSR_XTVAL
+	csrr s4, CSR_XCAUSE
+	csrr s5, CSR_XSCRATCH
 	REG_S s0, PT_SP(sp)
-	REG_S s1, PT_SSTATUS(sp)
-	REG_S s2, PT_SEPC(sp)
-	REG_S s3, PT_SBADADDR(sp)
-	REG_S s4, PT_SCAUSE(sp)
+	REG_S s1, PT_XSTATUS(sp)
+	REG_S s2, PT_XEPC(sp)
+	REG_S s3, PT_XBADADDR(sp)
+	REG_S s4, PT_XCAUSE(sp)
 	REG_S s5, PT_TP(sp)
 	.endm
 
@@ -97,10 +97,10 @@ _save_context:
  * registers from the stack.
  */
 	.macro RESTORE_ALL
-	REG_L a0, PT_SSTATUS(sp)
-	REG_L a2, PT_SEPC(sp)
-	csrw CSR_SSTATUS, a0
-	csrw CSR_SEPC, a2
+	REG_L a0, PT_XSTATUS(sp)
+	REG_L a2, PT_XEPC(sp)
+	csrw CSR_XSTATUS, a0
+	csrw CSR_XEPC, a2
 
 	REG_L x1,  PT_RA(sp)
 	REG_L x3,  PT_GP(sp)
@@ -144,10 +144,10 @@ ENTRY(handle_exception)
 	SAVE_ALL
 
 	/*
-	 * Set sscratch register to 0, so that if a recursive exception
+	 * Set the scratch register to 0, so that if a recursive exception
 	 * occurs, the exception vector knows it came from the kernel
 	 */
-	csrw CSR_SSCRATCH, x0
+	csrw CSR_XSCRATCH, x0
 
 	/* Load the global pointer */
 .option push
@@ -167,7 +167,7 @@ ENTRY(handle_exception)
 	tail do_IRQ
 1:
 	/* Exceptions run with interrupts enabled */
-	csrs CSR_SSTATUS, SR_SIE
+	csrs CSR_XSTATUS, SR_XIE
 
 	/* Handle syscalls */
 	li t0, EXC_SYSCALL
@@ -194,7 +194,7 @@ handle_syscall:
 	 * scall instruction on sret
 	 */
 	addi s2, s2, 0x4
-	REG_S s2, PT_SEPC(sp)
+	REG_S s2, PT_XEPC(sp)
 	/* Trace syscalls, but only if requested by the user. */
 	REG_L t0, TASK_TI_FLAGS(tp)
 	andi t0, t0, _TIF_SYSCALL_WORK
@@ -221,9 +221,15 @@ ret_from_syscall:
 	bnez t0, handle_syscall_trace_exit
 
 ret_from_exception:
-	REG_L s0, PT_SSTATUS(sp)
-	csrc CSR_SSTATUS, SR_SIE
+	REG_L s0, PT_XSTATUS(sp)
+	csrc CSR_XSTATUS, SR_XIE
+#ifdef CONFIG_RISCV_M_MODE
+	/* the MPP value is too large to be used as an immediate arg for addi */
+	li t0, SR_MPP
+	and s0, s0, t0
+#else
 	andi s0, s0, SR_SPP
+#endif
 	bnez s0, resume_kernel
 
 resume_userspace:
@@ -237,14 +243,14 @@ resume_userspace:
 	REG_S s0, TASK_TI_KERNEL_SP(tp)
 
 	/*
-	 * Save TP into sscratch, so we can find the kernel data structures
-	 * again.
+	 * Save TP into the scratch register , so we can find the kernel data
+	 * structures again.
 	 */
-	csrw CSR_SSCRATCH, tp
+	csrw CSR_XSCRATCH, tp
 
 restore_all:
 	RESTORE_ALL
-	sret
+	Xret
 
 #if IS_ENABLED(CONFIG_PREEMPT)
 resume_kernel:
@@ -265,7 +271,7 @@ work_pending:
 	bnez s1, work_resched
 work_notifysig:
 	/* Handle pending signals and notify-resume requests */
-	csrs CSR_SSTATUS, SR_SIE /* Enable interrupts for do_notify_resume() */
+	csrs CSR_XSTATUS, SR_XIE /* Enable interrupts for do_notify_resume() */
 	move a0, sp /* pt_regs */
 	move a1, s0 /* current_thread_info->flags */
 	tail do_notify_resume
diff --git a/arch/riscv/kernel/fpu.S b/arch/riscv/kernel/fpu.S
index 631d31540660..1dade31f4564 100644
--- a/arch/riscv/kernel/fpu.S
+++ b/arch/riscv/kernel/fpu.S
@@ -23,7 +23,7 @@ ENTRY(__fstate_save)
 	li  a2,  TASK_THREAD_F0
 	add a0, a0, a2
 	li t1, SR_FS
-	csrs CSR_SSTATUS, t1
+	csrs CSR_XSTATUS, t1
 	frcsr t0
 	fsd f0,  TASK_THREAD_F0_F0(a0)
 	fsd f1,  TASK_THREAD_F1_F0(a0)
@@ -58,7 +58,7 @@ ENTRY(__fstate_save)
 	fsd f30, TASK_THREAD_F30_F0(a0)
 	fsd f31, TASK_THREAD_F31_F0(a0)
 	sw t0, TASK_THREAD_FCSR_F0(a0)
-	csrc CSR_SSTATUS, t1
+	csrc CSR_XSTATUS, t1
 	ret
 ENDPROC(__fstate_save)
 
@@ -67,7 +67,7 @@ ENTRY(__fstate_restore)
 	add a0, a0, a2
 	li t1, SR_FS
 	lw t0, TASK_THREAD_FCSR_F0(a0)
-	csrs CSR_SSTATUS, t1
+	csrs CSR_XSTATUS, t1
 	fld f0,  TASK_THREAD_F0_F0(a0)
 	fld f1,  TASK_THREAD_F1_F0(a0)
 	fld f2,  TASK_THREAD_F2_F0(a0)
@@ -101,6 +101,6 @@ ENTRY(__fstate_restore)
 	fld f30, TASK_THREAD_F30_F0(a0)
 	fld f31, TASK_THREAD_F31_F0(a0)
 	fscsr t0
-	csrc CSR_SSTATUS, t1
+	csrc CSR_XSTATUS, t1
 	ret
 ENDPROC(__fstate_restore)
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 86049aed8251..bb96bb7b95d2 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -47,8 +47,8 @@ ENTRY(_start)
 .global _start_kernel
 _start_kernel:
 	/* Mask all interrupts */
-	csrw CSR_SIE, zero
-	csrw CSR_SIP, zero
+	csrw CSR_XIE, zero
+	csrw CSR_XIP, zero
 
 	/* Load the global pointer */
 .option push
@@ -61,7 +61,7 @@ _start_kernel:
 	 * floating point in kernel space
 	 */
 	li t0, SR_FS
-	csrc CSR_SSTATUS, t0
+	csrc CSR_XSTATUS, t0
 
 	/* Pick one hart to run the main boot sequence */
 	la a3, hart_lottery
@@ -111,7 +111,7 @@ relocate:
 	/* Point stvec to virtual address of intruction after satp write */
 	la a2, 1f
 	add a2, a2, a1
-	csrw CSR_STVEC, a2
+	csrw CSR_XTVEC, a2
 
 	/* Compute satp for kernel page tables, but don't load it yet */
 	srl a2, a0, PAGE_SHIFT
@@ -133,7 +133,7 @@ relocate:
 1:
 	/* Set trap vector to spin forever to help debug */
 	la a0, .Lsecondary_park
-	csrw CSR_STVEC, a0
+	csrw CSR_XTVEC, a0
 
 	/* Reload the global pointer */
 .option push
@@ -159,7 +159,7 @@ relocate:
 
 	/* Set trap vector to spin forever to help debug */
 	la a3, .Lsecondary_park
-	csrw CSR_STVEC, a3
+	csrw CSR_XTVEC, a3
 
 	slli a3, a0, LGREG
 	la a1, __cpu_up_stack_pointer
diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
index 6d8659388c49..804ff70bb853 100644
--- a/arch/riscv/kernel/irq.c
+++ b/arch/riscv/kernel/irq.c
@@ -29,7 +29,7 @@ asmlinkage void __irq_entry do_IRQ(struct pt_regs *regs)
 	struct pt_regs *old_regs = set_irq_regs(regs);
 
 	irq_enter();
-	switch (regs->scause & ~SCAUSE_IRQ_FLAG) {
+	switch (regs->xcause & ~XCAUSE_IRQ_FLAG) {
 	case INTERRUPT_CAUSE_TIMER:
 		riscv_timer_interrupt();
 		break;
@@ -46,7 +46,7 @@ asmlinkage void __irq_entry do_IRQ(struct pt_regs *regs)
 		handle_arch_irq(regs);
 		break;
 	default:
-		pr_alert("unexpected interrupt cause 0x%lx", regs->scause);
+		pr_alert("unexpected interrupt cause 0x%lx", regs->xcause);
 		BUG();
 	}
 	irq_exit();
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index fb3a082362eb..853af1b7837b 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -34,7 +34,7 @@ void show_regs(struct pt_regs *regs)
 	show_regs_print_info(KERN_DEFAULT);
 
 	pr_cont("sepc: " REG_FMT " ra : " REG_FMT " sp : " REG_FMT "\n",
-		regs->sepc, regs->ra, regs->sp);
+		regs->xepc, regs->ra, regs->sp);
 	pr_cont(" gp : " REG_FMT " tp : " REG_FMT " t0 : " REG_FMT "\n",
 		regs->gp, regs->tp, regs->t0);
 	pr_cont(" t1 : " REG_FMT " t2 : " REG_FMT " s0 : " REG_FMT "\n",
@@ -56,23 +56,23 @@ void show_regs(struct pt_regs *regs)
 	pr_cont(" t5 : " REG_FMT " t6 : " REG_FMT "\n",
 		regs->t5, regs->t6);
 
-	pr_cont("sstatus: " REG_FMT " sbadaddr: " REG_FMT " scause: " REG_FMT "\n",
-		regs->sstatus, regs->sbadaddr, regs->scause);
+	pr_cont("status: " REG_FMT " badaddr: " REG_FMT " cause: " REG_FMT "\n",
+		regs->xstatus, regs->xbadaddr, regs->xcause);
 }
 
 void start_thread(struct pt_regs *regs, unsigned long pc,
 	unsigned long sp)
 {
-	regs->sstatus = SR_SPIE;
+	regs->xstatus = SR_SPIE;
 	if (has_fpu) {
-		regs->sstatus |= SR_FS_INITIAL;
+		regs->xstatus |= SR_FS_INITIAL;
 		/*
 		 * Restore the initial value to the FP register
 		 * before starting the user program.
 		 */
 		fstate_restore(current, regs);
 	}
-	regs->sepc = pc;
+	regs->xepc = pc;
 	regs->sp = sp;
 	set_fs(USER_DS);
 }
@@ -108,7 +108,8 @@ int copy_thread(unsigned long clone_flags, unsigned long usp,
 		const register unsigned long gp __asm__ ("gp");
 		memset(childregs, 0, sizeof(struct pt_regs));
 		childregs->gp = gp;
-		childregs->sstatus = SR_SPP | SR_SPIE; /* Supervisor, irqs on */
+		/* Supervisor/Machine, irqs on: */
+		childregs->xstatus = SR_XPP | SR_XPIE;
 
 		p->thread.ra = (unsigned long)ret_from_kernel_thread;
 		p->thread.s[0] = usp; /* fn */
diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index b14d7647d800..e1a2cee340f7 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -124,7 +124,7 @@ SYSCALL_DEFINE0(rt_sigreturn)
 		pr_info_ratelimited(
 			"%s[%d]: bad frame in %s: frame=%p pc=%p sp=%p\n",
 			task->comm, task_pid_nr(task), __func__,
-			frame, (void *)regs->sepc, (void *)regs->sp);
+			frame, (void *)regs->xepc, (void *)regs->sp);
 	}
 	force_sig(SIGSEGV);
 	return 0;
@@ -199,7 +199,7 @@ static int setup_rt_frame(struct ksignal *ksig, sigset_t *set,
 	 * We always pass siginfo and mcontext, regardless of SA_SIGINFO,
 	 * since some things rely on this (e.g. glibc's debug/segfault.c).
 	 */
-	regs->sepc = (unsigned long)ksig->ka.sa.sa_handler;
+	regs->xepc = (unsigned long)ksig->ka.sa.sa_handler;
 	regs->sp = (unsigned long)frame;
 	regs->a0 = ksig->sig;                     /* a0: signal number */
 	regs->a1 = (unsigned long)(&frame->info); /* a1: siginfo pointer */
@@ -208,7 +208,7 @@ static int setup_rt_frame(struct ksignal *ksig, sigset_t *set,
 #if DEBUG_SIG
 	pr_info("SIG deliver (%s:%d): sig=%d pc=%p ra=%p sp=%p\n",
 		current->comm, task_pid_nr(current), ksig->sig,
-		(void *)regs->sepc, (void *)regs->ra, frame);
+		(void *)regs->xepc, (void *)regs->ra, frame);
 #endif
 
 	return 0;
@@ -220,10 +220,9 @@ static void handle_signal(struct ksignal *ksig, struct pt_regs *regs)
 	int ret;
 
 	/* Are we from a system call? */
-	if (regs->scause == EXC_SYSCALL) {
+	if (regs->xcause == EXC_SYSCALL) {
 		/* Avoid additional syscall restarting via ret_from_exception */
-		regs->scause = -1UL;
-
+		regs->xcause = -1UL;
 		/* If so, check system call restarting.. */
 		switch (regs->a0) {
 		case -ERESTART_RESTARTBLOCK:
@@ -239,7 +238,7 @@ static void handle_signal(struct ksignal *ksig, struct pt_regs *regs)
 			/* fallthrough */
 		case -ERESTARTNOINTR:
                         regs->a0 = regs->orig_a0;
-			regs->sepc -= 0x4;
+			regs->xepc -= 0x4;
 			break;
 		}
 	}
@@ -261,9 +260,9 @@ static void do_signal(struct pt_regs *regs)
 	}
 
 	/* Did we come from a system call? */
-	if (regs->scause == EXC_SYSCALL) {
+	if (regs->xcause == EXC_SYSCALL) {
 		/* Avoid additional syscall restarting via ret_from_exception */
-		regs->scause = -1UL;
+		regs->xcause = -1UL;
 
 		/* Restart the system call - no handlers present */
 		switch (regs->a0) {
@@ -271,12 +270,12 @@ static void do_signal(struct pt_regs *regs)
 		case -ERESTARTSYS:
 		case -ERESTARTNOINTR:
                         regs->a0 = regs->orig_a0;
-			regs->sepc -= 0x4;
+			regs->xepc -= 0x4;
 			break;
 		case -ERESTART_RESTARTBLOCK:
                         regs->a0 = regs->orig_a0;
 			regs->a7 = __NR_restart_syscall;
-			regs->sepc -= 0x4;
+			regs->xepc -= 0x4;
 			break;
 		}
 	}
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 424eb72d56b1..86b05780c1d9 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -40,7 +40,7 @@ void die(struct pt_regs *regs, const char *str)
 	print_modules();
 	show_regs(regs);
 
-	ret = notify_die(DIE_OOPS, str, regs, 0, regs->scause, SIGSEGV);
+	ret = notify_die(DIE_OOPS, str, regs, 0, regs->xcause, SIGSEGV);
 
 	bust_spinlocks(0);
 	add_taint(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
@@ -85,7 +85,7 @@ static void do_trap_error(struct pt_regs *regs, int signo, int code,
 #define DO_ERROR_INFO(name, signo, code, str)				\
 asmlinkage void name(struct pt_regs *regs)				\
 {									\
-	do_trap_error(regs, signo, code, regs->sepc, "Oops - " str);	\
+	do_trap_error(regs, signo, code, regs->xepc, "Oops - " str);	\
 }
 
 DO_ERROR_INFO(do_trap_unknown,
@@ -128,12 +128,12 @@ asmlinkage void do_trap_break(struct pt_regs *regs)
 	if (!user_mode(regs)) {
 		enum bug_trap_type type;
 
-		type = report_bug(regs->sepc, regs);
+		type = report_bug(regs->xepc, regs);
 		switch (type) {
 		case BUG_TRAP_TYPE_NONE:
 			break;
 		case BUG_TRAP_TYPE_WARN:
-			regs->sepc += get_break_insn_length(regs->sepc);
+			regs->xepc += get_break_insn_length(regs->xepc);
 			break;
 		case BUG_TRAP_TYPE_BUG:
 			die(regs, "Kernel BUG");
@@ -141,7 +141,7 @@ asmlinkage void do_trap_break(struct pt_regs *regs)
 	}
 #endif /* CONFIG_GENERIC_BUG */
 
-	force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)(regs->sepc));
+	force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)(regs->xepc));
 }
 
 #ifdef CONFIG_GENERIC_BUG
@@ -166,9 +166,9 @@ void __init trap_init(void)
 	 * Set sup0 scratch register to 0, indicating to exception vector
 	 * that we are presently executing in the kernel
 	 */
-	csr_write(CSR_SSCRATCH, 0);
+	csr_write(CSR_XSCRATCH, 0);
 	/* Set the exception vector address */
-	csr_write(CSR_STVEC, &handle_exception);
+	csr_write(CSR_XTVEC, &handle_exception);
 	/* Enable all interrupts */
-	csr_write(CSR_SIE, -1);
+	csr_write(CSR_XIE, -1);
 }
diff --git a/arch/riscv/lib/uaccess.S b/arch/riscv/lib/uaccess.S
index ed2696c0143d..f47a2ea4dc89 100644
--- a/arch/riscv/lib/uaccess.S
+++ b/arch/riscv/lib/uaccess.S
@@ -18,7 +18,7 @@ ENTRY(__asm_copy_from_user)
 
 	/* Enable access to user memory */
 	li t6, SR_SUM
-	csrs CSR_SSTATUS, t6
+	csrs CSR_XSTATUS, t6
 
 	add a3, a1, a2
 	/* Use word-oriented copy only if low-order bits match */
@@ -47,7 +47,7 @@ ENTRY(__asm_copy_from_user)
 
 3:
 	/* Disable access to user memory */
-	csrc CSR_SSTATUS, t6
+	csrc CSR_XSTATUS, t6
 	li a0, 0
 	ret
 4: /* Edge case: unalignment */
@@ -72,7 +72,7 @@ ENTRY(__clear_user)
 
 	/* Enable access to user memory */
 	li t6, SR_SUM
-	csrs CSR_SSTATUS, t6
+	csrs CSR_XSTATUS, t6
 
 	add a3, a0, a1
 	addi t0, a0, SZREG-1
@@ -94,7 +94,7 @@ ENTRY(__clear_user)
 
 3:
 	/* Disable access to user memory */
-	csrc CSR_SSTATUS, t6
+	csrc CSR_XSTATUS, t6
 	li a0, 0
 	ret
 4: /* Edge case: unalignment */
@@ -114,11 +114,11 @@ ENDPROC(__clear_user)
 	/* Fixup code for __copy_user(10) and __clear_user(11) */
 10:
 	/* Disable access to user memory */
-	csrs CSR_SSTATUS, t6
+	csrs CSR_XSTATUS, t6
 	mv a0, a2
 	ret
 11:
-	csrs CSR_SSTATUS, t6
+	csrs CSR_XSTATUS, t6
 	mv a0, a1
 	ret
 	.previous
diff --git a/arch/riscv/mm/extable.c b/arch/riscv/mm/extable.c
index 7aed9178d365..e0659deeb16b 100644
--- a/arch/riscv/mm/extable.c
+++ b/arch/riscv/mm/extable.c
@@ -15,9 +15,9 @@ int fixup_exception(struct pt_regs *regs)
 {
 	const struct exception_table_entry *fixup;
 
-	fixup = search_exception_tables(regs->sepc);
+	fixup = search_exception_tables(regs->xepc);
 	if (fixup) {
-		regs->sepc = fixup->fixup;
+		regs->xepc = fixup->fixup;
 		return 1;
 	}
 	return 0;
diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
index 96add1427a75..10a8ce38ac7a 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -32,8 +32,8 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 	int code = SEGV_MAPERR;
 	vm_fault_t fault;
 
-	cause = regs->scause;
-	addr = regs->sbadaddr;
+	cause = regs->xcause;
+	addr = regs->xbadaddr;
 
 	tsk = current;
 	mm = tsk->mm;
@@ -51,7 +51,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 		goto vmalloc_fault;
 
 	/* Enable interrupts if they were enabled in the parent context. */
-	if (likely(regs->sstatus & SR_SPIE))
+	if (likely(regs->xstatus & SR_XPIE))
 		local_irq_enable();
 
 	/*
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 470c7ef02ea4..5d2fdc3e28a9 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -19,7 +19,7 @@
 static int riscv_clock_next_event(unsigned long delta,
 		struct clock_event_device *ce)
 {
-	csr_set(sie, SIE_STIE);
+	csr_set(CSR_XIE, XIE_XTIE);
 	sbi_set_timer(get_cycles64() + delta);
 	return 0;
 }
@@ -61,13 +61,13 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
 	ce->cpumask = cpumask_of(cpu);
 	clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);
 
-	csr_set(sie, SIE_STIE);
+	csr_set(CSR_XIE, XIE_XTIE);
 	return 0;
 }
 
 static int riscv_timer_dying_cpu(unsigned int cpu)
 {
-	csr_clear(sie, SIE_STIE);
+	csr_clear(CSR_XIE, XIE_XTIE);
 	return 0;
 }
 
@@ -76,7 +76,7 @@ void riscv_timer_interrupt(void)
 {
 	struct clock_event_device *evdev = this_cpu_ptr(&riscv_clock_event);
 
-	csr_clear(sie, SIE_STIE);
+	csr_clear(CSR_XIE, XIE_XTIE);
 	evdev->event_handler(evdev);
 }
 
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index c72c036aea76..4ee96ac90ea4 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -179,7 +179,7 @@ static void plic_handle_irq(struct pt_regs *regs)
 
 	WARN_ON_ONCE(!handler->present);
 
-	csr_clear(sie, SIE_SEIE);
+	csr_clear(CSR_XIE, XIE_XEIE);
 	while ((hwirq = readl(claim))) {
 		int irq = irq_find_mapping(plic_irqdomain, hwirq);
 
@@ -190,7 +190,7 @@ static void plic_handle_irq(struct pt_regs *regs)
 			generic_handle_irq(irq);
 		writel(hwirq, claim);
 	}
-	csr_set(sie, SIE_SEIE);
+	csr_set(CSR_XIE, XIE_XEIE);
 }
 
 /*
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
