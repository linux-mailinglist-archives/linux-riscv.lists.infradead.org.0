Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A468BD96
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 17:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/1TB3Q2oZj9VYkWupW8pnlJhmukK2F8YKR0NmOv5YY=; b=R8Ndf253sP7EnF
	R8FM+MgVsY2pWoJSzvAI9jfU25ayH3MfebgfDjejbGFDh1SOCylRhWWSkUHo5joAwJYA2cHA0p29X
	b6AmVcQUGQSzTxDQV0y2ufZRynL2tDEjH0ocVETPtZideTY2Iuxho3obG3EeyWMbtgjdGqW9HRxa+
	syJp2oQNSMWUicrudZSb3kPo2Y2fnoWYGMF/SAjyJ4B+bgLtk8CzW/B0N+6vRD+ZS2UesnDF7rrgC
	Nxjv1nT5eWB6apxx2fKUMk+Axz0I2syc7N9PiBpiDT16Z5jWF/gfP+O/JkhPaSDmVzk65raY/GZVt
	XDzvP3+uBCnsvI5bWoBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZ21-00059u-CJ; Tue, 13 Aug 2019 15:48:17 +0000
Received: from [2001:4bb8:180:1ec3:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZ1v-00053H-BW; Tue, 13 Aug 2019 15:48:11 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 08/15] riscv: provide native clint access for M-mode
Date: Tue, 13 Aug 2019 17:47:40 +0200
Message-Id: <20190813154747.24256-9-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190813154747.24256-1-hch@lst.de>
References: <20190813154747.24256-1-hch@lst.de>
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
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
 arch/riscv/include/asm/clint.h    | 40 +++++++++++++++++++++++++++
 arch/riscv/include/asm/timex.h    | 17 ++++++++++++
 arch/riscv/kernel/Makefile        |  1 +
 arch/riscv/kernel/clint.c         | 45 +++++++++++++++++++++++++++++++
 arch/riscv/kernel/setup.c         |  2 ++
 arch/riscv/kernel/smp.c           | 24 +++++++++++++++++
 arch/riscv/kernel/smpboot.c       |  3 +++
 drivers/clocksource/timer-riscv.c | 16 ++++++++---
 8 files changed, 144 insertions(+), 4 deletions(-)
 create mode 100644 arch/riscv/include/asm/clint.h
 create mode 100644 arch/riscv/kernel/clint.c

diff --git a/arch/riscv/include/asm/clint.h b/arch/riscv/include/asm/clint.h
new file mode 100644
index 000000000000..46d182d9a4db
--- /dev/null
+++ b/arch/riscv/include/asm/clint.h
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0
+#ifndef _ASM_CLINT_H
+#define _ASM_CLINT_H 1
+
+#include <linux/smp.h>
+
+#ifdef CONFIG_M_MODE
+extern u32 __iomem *clint_ipi_base;
+extern u64 __iomem *clint_time_val;
+extern u64 __iomem *clint_time_cmp;
+
+void clint_init_boot_cpu(void);
+
+static inline void clint_send_ipi(unsigned long hartid)
+{
+	writel(1, clint_ipi_base + hartid);
+}
+
+static inline void clint_clear_ipi(unsigned long hartid)
+{
+	writel(0, clint_ipi_base + hartid);
+}
+
+static inline u64 clint_read_timer(void)
+{
+	return readq_relaxed(clint_time_val);
+}
+
+static inline void clint_set_timer(unsigned long delta)
+{
+	writeq_relaxed(clint_read_timer() + delta,
+		clint_time_cmp + cpuid_to_hartid_map(smp_processor_id()));
+}
+
+#else
+#define clint_init_boot_cpu()	do { } while (0)
+#define clint_clear_ipi(hartid)	do { } while (0)
+#endif /* CONFIG_M_MODE */
+
+#endif /* _ASM_CLINT_H */
diff --git a/arch/riscv/include/asm/timex.h b/arch/riscv/include/asm/timex.h
index 6a703ec9d796..bf907997f107 100644
--- a/arch/riscv/include/asm/timex.h
+++ b/arch/riscv/include/asm/timex.h
@@ -10,6 +10,22 @@
 
 typedef unsigned long cycles_t;
 
+#ifdef CONFIG_M_MODE
+
+#include <linux/io-64-nonatomic-lo-hi.h>
+#include <asm/clint.h>
+
+static inline cycles_t get_cycles(void)
+{
+#ifdef CONFIG_64BIT
+	return readq_relaxed(clint_time_val);
+#else
+	return readl_relaxed(clint_time_val);
+#endif
+}
+#define get_cycles	get_cycles
+
+#else /* CONFIG_M_MODE */
 static inline cycles_t get_cycles_inline(void)
 {
 	cycles_t n;
@@ -40,6 +56,7 @@ static inline uint64_t get_cycles64(void)
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
index 000000000000..15b9e7fa5416
--- /dev/null
+++ b/arch/riscv/kernel/clint.c
@@ -0,0 +1,45 @@
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
+	clint_clear_ipi(boot_cpu_hartid);
+}
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index a990a6cb184f..f4ba71b66c73 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -17,6 +17,7 @@
 #include <linux/sched/task.h>
 #include <linux/swiotlb.h>
 
+#include <asm/clint.h>
 #include <asm/setup.h>
 #include <asm/sections.h>
 #include <asm/pgtable.h>
@@ -65,6 +66,7 @@ void __init setup_arch(char **cmdline_p)
 	setup_bootmem();
 	paging_init();
 	unflatten_device_tree();
+	clint_init_boot_cpu();
 
 #ifdef CONFIG_SWIOTLB
 	swiotlb_init(1);
diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 8cd730239613..ee8599a7ca48 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -13,7 +13,9 @@
 #include <linux/sched.h>
 #include <linux/seq_file.h>
 #include <linux/delay.h>
+#include <linux/io.h>
 
+#include <asm/clint.h>
 #include <asm/sbi.h>
 #include <asm/tlbflush.h>
 #include <asm/cacheflush.h>
@@ -78,6 +80,27 @@ static void ipi_stop(void)
 		wait_for_interrupt();
 }
 
+#ifdef CONFIG_M_MODE
+static inline void send_ipi_single(int cpu, enum ipi_message_type op)
+{
+	set_bit(op, &ipi_data[cpu].bits);
+	clint_send_ipi(cpuid_to_hartid_map(cpu));
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
+	clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
+}
+#else /* CONFIG_M_MODE */
 static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
 {
 	int cpuid, hartid;
@@ -103,6 +126,7 @@ static inline void clear_ipi(void)
 {
 	csr_clear(CSR_SIP, SIE_SSIE);
 }
+#endif /* CONFIG_M_MODE */
 
 void riscv_software_interrupt(void)
 {
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 7462a44304fe..1b7678d86ec8 100644
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
 
+	clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
+
 	/* All kernel threads share the same mm context.  */
 	mmgrab(mm);
 	current->active_mm = mm;
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 3ad2fa52bac9..09f2165bd0a5 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -24,12 +24,16 @@
  * operations on the current hart.  There is guaranteed to be exactly one timer
  * per hart on all RISC-V systems.
  */
-
 static int riscv_clock_next_event(unsigned long delta,
 		struct clock_event_device *ce)
 {
 	csr_set(CSR_XIE, XIE_XTIE);
+
+#ifdef CONFIG_M_MODE
+	clint_set_timer(delta);
+#else
 	sbi_set_timer(get_cycles64() + delta);
+#endif
 	return 0;
 }
 
@@ -45,14 +49,18 @@ static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = {
  * within one tick of each other, so while this could technically go
  * backwards when hopping between CPUs, practically it won't happen.
  */
-static unsigned long long riscv_clocksource_rdtime(struct clocksource *cs)
+static u64 riscv_sched_clock(void)
 {
+#ifdef CONFIG_M_MODE
+	return clint_read_timer();
+#else
 	return get_cycles64();
+#endif
 }
 
-static u64 riscv_sched_clock(void)
+static unsigned long long riscv_clocksource_rdtime(struct clocksource *cs)
 {
-	return get_cycles64();
+	return riscv_sched_clock();
 }
 
 static struct clocksource riscv_clocksource = {
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
