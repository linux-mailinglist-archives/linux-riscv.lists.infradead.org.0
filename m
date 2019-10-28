Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F72E7106
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 13:11:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiS9bGTBU3i2xlow3PoKR9WOgR5b6K70J1jkGb7OLUg=; b=JSGS/Z5T77sKid
	eEKH6HkBmIX+bBJq07IMoKsKfJDpivU9emGNuS6PmucH2RFxR9b5ZUtFLhAFyPP2DhKfnCKGeZ9Rg
	wb0Wfwq544WFQiGszUqAHb8tULhwyp8yQuVHid9/Maf3WHjpberi+lGEW3WCywZPlq6LHkWIdpjsY
	V8NqOvppTU6IaEh9r43r8/Vx2IS4FvhwmO5KpLRpvFANxuMrjB8AkTp/bAUF79G4kdIWYxHJ5kXHK
	o9bO7EPUg8Ww+DjMQNnXqm0uQ86bs1PBQShDGStuIuUopyM/4EpOLsfmYfHG3r2NZaexj/So7kk/P
	WRNQhN5RwK0gIAkjbdaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3ra-00076N-7W; Mon, 28 Oct 2019 12:11:10 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3rV-0006x2-OO; Mon, 28 Oct 2019 12:11:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 07/12] riscv: provide native clint access for M-mode
Date: Mon, 28 Oct 2019 13:10:38 +0100
Message-Id: <20191028121043.22934-8-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028121043.22934-1-hch@lst.de>
References: <20191028121043.22934-1-hch@lst.de>
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
Cc: Anup Patel <anup@brainfault.org>, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

RISC-V has the concept of a cpu level interrupt controller.  The
interface for it is split between a standardized part that is exposed
as bits in the mstatus/sstatus register and the mie/mip/sie/sip
CRS.  But the bit to actually trigger IPIs is not standardized and
just mentioned as implementable using MMIO.

Add support for IPIs using MMIO using the SiFive clint layout (which is
also shared by Ariane, Kendrye and the Qemu virt platform).  Additional
the MMIO block also support the time value and timer compare registers,
so they are also set up using the same OF node.  Support for other
layouts should also be relatively easy to add in the future.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/clint.h | 39 ++++++++++++++++++++++++++++++
 arch/riscv/include/asm/sbi.h   |  2 ++
 arch/riscv/kernel/Makefile     |  1 +
 arch/riscv/kernel/clint.c      | 44 ++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/setup.c      |  2 ++
 arch/riscv/kernel/smp.c        | 16 ++++++++++---
 arch/riscv/kernel/smpboot.c    |  4 ++++
 7 files changed, 105 insertions(+), 3 deletions(-)
 create mode 100644 arch/riscv/include/asm/clint.h
 create mode 100644 arch/riscv/kernel/clint.c

diff --git a/arch/riscv/include/asm/clint.h b/arch/riscv/include/asm/clint.h
new file mode 100644
index 000000000000..02a26b68f21d
--- /dev/null
+++ b/arch/riscv/include/asm/clint.h
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0
+#ifndef _ASM_CLINT_H
+#define _ASM_CLINT_H 1
+
+#include <linux/io.h>
+#include <linux/smp.h>
+
+#ifdef CONFIG_RISCV_M_MODE
+extern u32 __iomem *clint_ipi_base;
+
+void clint_init_boot_cpu(void);
+
+static inline void clint_send_ipi_single(unsigned long hartid)
+{
+	writel(1, clint_ipi_base + hartid);
+}
+
+static inline void clint_send_ipi_mask(const struct cpumask *hartid_mask)
+{
+	int hartid;
+
+	for_each_cpu(hartid, hartid_mask)
+		clint_send_ipi_single(hartid);
+}
+
+static inline void clint_clear_ipi(unsigned long hartid)
+{
+	writel(0, clint_ipi_base + hartid);
+}
+#else /* CONFIG_RISCV_M_MODE */
+#define clint_init_boot_cpu()	do { } while (0)
+
+/* stubs to for code is only reachable under IS_ENABLED(CONFIG_RISCV_M_MODE): */
+void clint_send_ipi_single(unsigned long hartid);
+void clint_send_ipi_mask(const struct cpumask *hartid_mask);
+void clint_clear_ipi(unsigned long hartid);
+#endif /* CONFIG_RISCV_M_MODE */
+
+#endif /* _ASM_CLINT_H */
diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index a4774bafe033..407d1024f9eb 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -97,6 +97,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 #else /* CONFIG_RISCV_SBI */
 /* stubs to for code is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
 void sbi_set_timer(uint64_t stime_value);
+void sbi_clear_ipi(void);
+void sbi_send_ipi(const unsigned long *hart_mask);
 void sbi_remote_fence_i(const unsigned long *hart_mask);
 #endif /* CONFIG_RISCV_SBI */
 #endif /* _ASM_RISCV_SBI_H */
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index d8c35fa93cc6..2dca51046899 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -29,6 +29,7 @@ obj-y	+= vdso.o
 obj-y	+= cacheinfo.o
 obj-y	+= vdso/
 
+obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
 obj-$(CONFIG_FPU)		+= fpu.o
 obj-$(CONFIG_SMP)		+= smpboot.o
 obj-$(CONFIG_SMP)		+= smp.o
diff --git a/arch/riscv/kernel/clint.c b/arch/riscv/kernel/clint.c
new file mode 100644
index 000000000000..3647980d14c3
--- /dev/null
+++ b/arch/riscv/kernel/clint.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Christoph Hellwig.
+ */
+
+#include <linux/io.h>
+#include <linux/of_address.h>
+#include <linux/types.h>
+#include <asm/clint.h>
+#include <asm/csr.h>
+#include <asm/timex.h>
+#include <asm/smp.h>
+
+/*
+ * This is the layout used by the SiFive clint, which is also shared by the qemu
+ * virt platform, and the Kendryte KD210 at least.
+ */
+#define CLINT_IPI_OFF		0
+#define CLINT_TIME_CMP_OFF	0x4000
+#define CLINT_TIME_VAL_OFF	0xbff8
+
+u32 __iomem *clint_ipi_base;
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
+	riscv_time_cmp = base + CLINT_TIME_CMP_OFF;
+	riscv_time_val = base + CLINT_TIME_VAL_OFF;
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
index 51627c3aa4b8..ccec1fb1cc99 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -14,6 +14,7 @@
 #include <linux/seq_file.h>
 #include <linux/delay.h>
 
+#include <asm/clint.h>
 #include <asm/sbi.h>
 #include <asm/tlbflush.h>
 #include <asm/cacheflush.h>
@@ -90,7 +91,10 @@ static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
 	smp_mb__after_atomic();
 
 	riscv_cpuid_to_hartid_mask(mask, &hartid_mask);
-	sbi_send_ipi(cpumask_bits(&hartid_mask));
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		sbi_send_ipi(cpumask_bits(&hartid_mask));
+	else
+		clint_send_ipi_mask(&hartid_mask);
 }
 
 static void send_ipi_single(int cpu, enum ipi_message_type op)
@@ -101,12 +105,18 @@ static void send_ipi_single(int cpu, enum ipi_message_type op)
 	set_bit(op, &ipi_data[cpu].bits);
 	smp_mb__after_atomic();
 
-	sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
+	else
+		clint_send_ipi_single(hartid);
 }
 
 static inline void clear_ipi(void)
 {
-	csr_clear(CSR_IP, IE_SIE);
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		csr_clear(CSR_IP, IE_SIE);
+	else
+		clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
 }
 
 void riscv_software_interrupt(void)
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 18ae6da5115e..6300b09f1d1d 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -24,6 +24,7 @@
 #include <linux/of.h>
 #include <linux/sched/task_stack.h>
 #include <linux/sched/mm.h>
+#include <asm/clint.h>
 #include <asm/irq.h>
 #include <asm/mmu_context.h>
 #include <asm/tlbflush.h>
@@ -134,6 +135,9 @@ asmlinkage void __init smp_callin(void)
 {
 	struct mm_struct *mm = &init_mm;
 
+	if (!IS_ENABLED(CONFIG_RISCV_SBI))
+		clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
+
 	/* All kernel threads share the same mm context.  */
 	mmgrab(mm);
 	current->active_mm = mm;
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
