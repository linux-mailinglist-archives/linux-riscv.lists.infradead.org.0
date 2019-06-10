Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ADC3BF53
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 00:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3eby4zvJaAIAzi5r3SsJHXQrj27i4q7/7X4zY5h7Wg=; b=kyDxZKfZDmMt7w
	XYhlSSEdGf/VMaiTTyeJMILbg7wiiX+8yAcB0DfjLtCcqe53M+vUKSO+NP3Oe+edfeeRhWQGqo4AM
	2oI/6Q88GScK6yTcjJDlCvJIys7F6XOzOBz/UjVhRs1VESSagLxJNxV9GD7KdeaKNCDiBsgl1tFUK
	tNXJrpoilkd6XiPgHZzhVDIUW7IRtvjCKUrce3voAEK05mEfTDLWxFONQ8VS3eq/MggVGqhtD1A1c
	SH4NWjvGJhUWutYOSBH5fhNeVI2pn2kquvPdVe4wAd5kIzHHgtiOITwXZmZwulLjKF6CH2IuA0CG/
	zhO7dqv33TJ30k6j0KxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSb9-0003l4-NO; Mon, 10 Jun 2019 22:17:03 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haSb1-0003av-U9; Mon, 10 Jun 2019 22:16:56 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: [PATCH 12/17] riscv: provide native clint access for M-mode
Date: Tue, 11 Jun 2019 00:16:16 +0200
Message-Id: <20190610221621.10938-13-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610221621.10938-1-hch@lst.de>
References: <20190610221621.10938-1-hch@lst.de>
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
Cc: linux-mm@kvack.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 uclinux-dev@uclinux.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

RISC-V has the concept of a cpu level interrupt controller.  Part of it
is expose as bits in the status registers, and 2 new CSRs per privilege
level in the instruction set, but the machanisms to trigger IPIs and
timer events, as well as reading the actual timer value are not
specified in the RISC-V spec but usually delegated to a block of MMIO
registers.  This patch adds support for those MMIO registers in the
timer and IPI code.  For now only the SiFive layout also supported by
a few other implementations is supported, but the code should be
easily extensible to others in the future.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/include/asm/clint.h    | 17 +++++++++++
 arch/riscv/include/asm/timex.h    | 22 ++++++++++++++
 arch/riscv/kernel/Makefile        |  1 +
 arch/riscv/kernel/clint.c         | 50 +++++++++++++++++++++++++++++++
 arch/riscv/kernel/setup.c         |  2 ++
 arch/riscv/kernel/smp.c           | 24 +++++++++++++++
 arch/riscv/kernel/smpboot.c       |  3 ++
 drivers/clocksource/timer-riscv.c | 11 ++++++-
 8 files changed, 129 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/clint.h
 create mode 100644 arch/riscv/kernel/clint.c

diff --git a/arch/riscv/include/asm/clint.h b/arch/riscv/include/asm/clint.h
new file mode 100644
index 000000000000..77559d07db33
--- /dev/null
+++ b/arch/riscv/include/asm/clint.h
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0
+#ifndef _ASM_CLINT_H
+#define _ASM_CLINT_H 1
+
+#ifdef CONFIG_M_MODE
+extern u32 __iomem *clint_ipi_base;
+extern u64 __iomem *clint_time_val;
+extern u64 __iomem *clint_time_cmp;
+
+void clint_init_one(void);
+void clint_init_boot_cpu(void);
+#else
+#define clint_init_one()	do { } while (0)
+#define clint_init_boot_cpu()	do { } while (0)
+#endif /* CONFIG_M_MODE */
+
+#endif /* _ASM_CLINT_H */
diff --git a/arch/riscv/include/asm/timex.h b/arch/riscv/include/asm/timex.h
index 6a703ec9d796..2a95adf8bba0 100644
--- a/arch/riscv/include/asm/timex.h
+++ b/arch/riscv/include/asm/timex.h
@@ -10,6 +10,27 @@
 
 typedef unsigned long cycles_t;
 
+#ifdef CONFIG_M_MODE
+
+#include <linux/io-64-nonatomic-lo-hi.h>
+#include <asm/clint.h>
+
+static inline uint64_t get_cycles64(void)
+{
+	return readq_relaxed(clint_time_val);
+}
+
+#ifdef CONFIG_64BIT
+#define get_cycles	get_cycles64
+#else
+static inline cycles_t get_cycles(void)
+{
+	return readl_relaxed(clint_time_val);
+}
+#define get_cycles	get_cycles
+#endif /* CONFIG_64BIT */
+
+#else /* CONFIG_M_MODE */
 static inline cycles_t get_cycles_inline(void)
 {
 	cycles_t n;
@@ -40,6 +61,7 @@ static inline uint64_t get_cycles64(void)
 	return ((u64)hi << 32) | lo;
 }
 #endif
+#endif /* CONFIG_M_MODE */
 
 #define ARCH_HAS_READ_CURRENT_TIMER
 
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 2420d37d96de..f933c04f89db 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -29,6 +29,7 @@ obj-y	+= vdso.o
 obj-y	+= cacheinfo.o
 obj-y	+= vdso/
 
+obj-$(CONFIG_M_MODE)		+= clint.o
 obj-$(CONFIG_FPU)		+= fpu.o
 obj-$(CONFIG_SMP)		+= smpboot.o
 obj-$(CONFIG_SMP)		+= smp.o
diff --git a/arch/riscv/kernel/clint.c b/arch/riscv/kernel/clint.c
new file mode 100644
index 000000000000..a1089ccab9e3
--- /dev/null
+++ b/arch/riscv/kernel/clint.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Christoph Hellwig.
+ */
+
+#include <linux/io.h>
+#include <linux/of_address.h>
+#include <linux/types.h>
+#include <asm/csr.h>
+#include <asm/irq.h>
+#include <asm/timex.h>
+
+/*
+ * This is the layout used by the SiFive clint, which is also shared by the qemu
+ * virt platform, and the Kendryte KD210 at least.
+ */
+#define CLINT_IPI_OFF		0
+#define CLINT_TIME_VAL_OFF	0xbff8
+#define CLINT_TIME_CMP_OFF	0x4000;
+
+u32 __iomem *clint_ipi_base;
+u64 __iomem *clint_time_val;
+u64 __iomem *clint_time_cmp;
+
+void clint_init_one(void)
+{
+	writel(0, clint_ipi_base + csr_read(mhartid));
+}
+
+void clint_init_boot_cpu(void)
+{
+	struct device_node *np;
+	void __iomem *base;
+
+	np = of_find_compatible_node(NULL, NULL, "riscv,clint0");
+	if (!np) {
+		panic("clint not found");
+		return;
+	}
+
+	base = of_iomap(np, 0);
+	if (!base)
+		panic("could not map CLINT");
+
+	clint_ipi_base = base + CLINT_IPI_OFF;
+	clint_time_val = base + CLINT_TIME_VAL_OFF;
+	clint_time_cmp = base + CLINT_TIME_CMP_OFF;
+
+	clint_init_one();
+}
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index b92e6831d1ec..2892d82f474c 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -17,6 +17,7 @@
 #include <linux/sched/task.h>
 #include <linux/swiotlb.h>
 
+#include <asm/clint.h>
 #include <asm/setup.h>
 #include <asm/sections.h>
 #include <asm/pgtable.h>
@@ -67,6 +68,7 @@ void __init setup_arch(char **cmdline_p)
 	setup_bootmem();
 	paging_init();
 	unflatten_device_tree();
+	clint_init_boot_cpu();
 
 #ifdef CONFIG_SWIOTLB
 	swiotlb_init(1);
diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 91164204496c..e498a5e1615c 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -24,7 +24,9 @@
 #include <linux/sched.h>
 #include <linux/seq_file.h>
 #include <linux/delay.h>
+#include <linux/io.h>
 
+#include <asm/clint.h>
 #include <asm/sbi.h>
 #include <asm/tlbflush.h>
 #include <asm/cacheflush.h>
@@ -89,6 +91,27 @@ static void ipi_stop(void)
 		wait_for_interrupt();
 }
 
+#ifdef CONFIG_M_MODE
+static inline void send_ipi_single(int cpu, enum ipi_message_type op)
+{
+	set_bit(op, &ipi_data[cpu].bits);
+	writel(1, clint_ipi_base + cpuid_to_hartid_map(cpu));
+}
+
+static inline void send_ipi_mask(const struct cpumask *mask,
+		enum ipi_message_type op)
+{
+	int cpu;
+
+	for_each_cpu(cpu, mask)
+		send_ipi_single(cpu, op);
+}
+
+static inline void clear_ipi(void)
+{
+	writel(0, clint_ipi_base + cpuid_to_hartid_map(smp_processor_id()));
+}
+#else /* CONFIG_M_MODE */
 static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
 {
 	int cpuid, hartid;
@@ -114,6 +137,7 @@ static inline void clear_ipi(void)
 {
 	csr_clear(CSR_SIP, SIE_SSIE);
 }
+#endif /* CONFIG_M_MODE */
 
 void riscv_software_interrupt(void)
 {
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 7462a44304fe..5737c8e9c97d 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -23,6 +23,7 @@
 #include <linux/of.h>
 #include <linux/sched/task_stack.h>
 #include <linux/sched/mm.h>
+#include <asm/clint.h>
 #include <asm/irq.h>
 #include <asm/mmu_context.h>
 #include <asm/tlbflush.h>
@@ -132,6 +133,8 @@ asmlinkage void __init smp_callin(void)
 {
 	struct mm_struct *mm = &init_mm;
 
+	clint_init_one();
+
 	/* All kernel threads share the same mm context.  */
 	mmgrab(mm);
 	current->active_mm = mm;
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 2e2d363faabf..281915c3e6f2 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -24,7 +24,15 @@
  * operations on the current hart.  There is guaranteed to be exactly one timer
  * per hart on all RISC-V systems.
  */
-
+#ifdef CONFIG_M_MODE
+static int riscv_clock_next_event(unsigned long delta,
+		struct clock_event_device *ce)
+{
+	csr_set(CSR_XIE, XIE_XTIE);
+	writeq(get_cycles64() + delta, clint_time_cmp + csr_read(mhartid));
+	return 0;
+}
+#else
 static int riscv_clock_next_event(unsigned long delta,
 		struct clock_event_device *ce)
 {
@@ -32,6 +40,7 @@ static int riscv_clock_next_event(unsigned long delta,
 	sbi_set_timer(get_cycles64() + delta);
 	return 0;
 }
+#endif /* #ifdef CONFIG_M_MODE */
 
 static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = {
 	.name			= "riscv_timer_clockevent",
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
