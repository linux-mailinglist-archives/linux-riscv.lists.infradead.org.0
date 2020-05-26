Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAB01A3095
	for <lists+linux-riscv@lfdr.de>; Thu,  9 Apr 2020 10:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7W0iuRWRwuXfHalcozTY4+ssiJ7ikXJpGP5CjDCWEz4=; b=YFTtTgLVLqSMNiceVl32g1R35/
	g9qhA44wuDDRBi1JIU38VfqKbqnNQado8tKkiuZMA7K5G6EqDpCGb31zciMo08bDSzT8XTVF2ZWdV
	j80TQxLLGo4DPfV60Vf45YqsPsYlKCWSFTDxXoX+4RqqSehBvgGQ1c+qpV/0yQbdETlpx+A6VuZPd
	ojEUEpn9ahsUxVSF7nwPiewhdYRytafBljCJoiaGXK5oIAMzTSSX+eyAbQ1WUQcGzIblYd4ZUoEVD
	qiWeGXlkveZeqPp3BCAtskkF22dwpZ44ZBY6Ab/jLt4BT/9Ld8qXvC7mVf5/vTZBNFM40ChhRoPdb
	tj7WbP+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMS6O-00027U-LB; Thu, 09 Apr 2020 07:59:56 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMS6G-0001pZ-Ce
 for linux-riscv@lists.infradead.org; Thu, 09 Apr 2020 07:59:53 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07436282|-1; CH=green;
 DM=|CONTINUE|false|;
 DS=CONTINUE|ham_system_inform|0.0253039-0.00278707-0.971909;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03279; MF=yibin_liu@c-sky.com; NM=1; PH=DS; RN=8;
 RT=8; SR=0; TI=SMTPD_---.HDRRefl_1586419179; 
Received: from localhost(mailfrom:yibin_liu@c-sky.com
 fp:SMTPD_---.HDRRefl_1586419179)
 by smtp.aliyun-inc.com(10.147.41.138);
 Thu, 09 Apr 2020 15:59:39 +0800
From: Liu Yibin <yibin_liu@c-sky.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH] RISC-V: Add kdump support
Date: Thu,  9 Apr 2020 15:59:38 +0800
Message-Id: <1586419178-19527-1-git-send-email-yibin_liu@c-sky.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_005948_908640_95581DEC 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: bhe@redhat.com, Liu Yibin <yibin_liu@c-sky.com>, guoren@kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, dyoung@redhat.com,
 han_mao@c-sky.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch adds kdump for RISC-V. I've tested it on
riscv64 qemu.

Signed-off-by: Liu Yibin <yibin_liu@c-sky.com>
---
 arch/riscv/Kconfig                  |  20 +++++
 arch/riscv/include/asm/elf.h        |   3 +
 arch/riscv/include/asm/kexec.h      | 100 ++++++++++++++++++++++
 arch/riscv/include/asm/ptrace.h     |  69 ++++++++-------
 arch/riscv/kernel/Makefile          |   4 +
 arch/riscv/kernel/cpu-reset.S       |  23 +++++
 arch/riscv/kernel/cpu-reset.h       |  65 ++++++++++++++
 arch/riscv/kernel/crash_dump.c      |  70 +++++++++++++++
 arch/riscv/kernel/machine_kexec.c   | 158 ++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/relocate_kernel.S |  31 +++++++
 arch/riscv/kernel/reset.c           |   4 +
 arch/riscv/mm/init.c                | 166 ++++++++++++++++++++++++++++++++++++
 include/uapi/linux/kexec.h          |   1 +
 13 files changed, 682 insertions(+), 32 deletions(-)
 create mode 100644 arch/riscv/include/asm/kexec.h
 create mode 100644 arch/riscv/kernel/cpu-reset.S
 create mode 100644 arch/riscv/kernel/cpu-reset.h
 create mode 100644 arch/riscv/kernel/crash_dump.c
 create mode 100644 arch/riscv/kernel/machine_kexec.c
 create mode 100644 arch/riscv/kernel/relocate_kernel.S

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index fa7dc03..e20e147 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -294,6 +294,26 @@ menu "Kernel features"
 
 source "kernel/Kconfig.hz"
 
+config KEXEC
+	select KEXEC_CORE
+	bool "kexec system call"
+	help
+	  kexec is a system call that implements the ability to shutdown your
+	  current kernel, and to start another kernel.  It is like a reboot
+	  but it is independent of the system firmware.   And like a reboot
+	  you can start any kernel with it, not just Linux.
+
+config CRASH_DUMP
+	bool "Build kdump crash kernel"
+	help
+	  Generate crash dump after being started by kexec. This should
+	  be normally only set in special crash dump kernels which are
+	  loaded in the main kernel with kexec-tools into a specially
+	  reserved region and then later executed after a crash by
+	  kdump/kexec.
+
+	  For more details see Documentation/kdump/kdump.txt
+
 config SECCOMP
 	bool "Enable seccomp to safely compute untrusted bytecode"
 	help
diff --git a/arch/riscv/include/asm/elf.h b/arch/riscv/include/asm/elf.h
index d83a4ef..c85319c 100644
--- a/arch/riscv/include/asm/elf.h
+++ b/arch/riscv/include/asm/elf.h
@@ -49,6 +49,9 @@
 #define ELF_HWCAP	(elf_hwcap)
 extern unsigned long elf_hwcap;
 
+#define ELF_CORE_COPY_REGS(dest, regs)	\
+	*(struct user_regs_struct *)&(dest) = (regs)->user_regs;
+
 /*
  * This yields a string that ld.so will use to load implementation
  * specific libraries for optimization.  This is more specific in
diff --git a/arch/riscv/include/asm/kexec.h b/arch/riscv/include/asm/kexec.h
new file mode 100644
index 0000000..a4ca5a2
--- /dev/null
+++ b/arch/riscv/include/asm/kexec.h
@@ -0,0 +1,100 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * kexec for riscv
+ *
+ * Copyright (C) 2020-2025 Alibaba Group Holding Limited
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef _RISCV_KEXEC_H
+#define _RISCV_KEXEC_H
+
+/* Maximum physical address we can use pages from */
+
+#define KEXEC_SOURCE_MEMORY_LIMIT (-1UL)
+
+/* Maximum address we can reach in physical address mode */
+
+#define KEXEC_DESTINATION_MEMORY_LIMIT (-1UL)
+
+/* Maximum address we can use for the control code buffer */
+
+#define KEXEC_CONTROL_MEMORY_LIMIT (-1UL)
+
+#define KEXEC_CONTROL_PAGE_SIZE 4096
+
+#define KEXEC_ARCH KEXEC_ARCH_RISCV
+
+#ifndef __ASSEMBLY__
+
+/**
+ * crash_setup_regs() - save registers for the panic kernel
+ *
+ * @newregs: registers are saved here
+ * @oldregs: registers to be saved (may be %NULL)
+ */
+static inline void crash_setup_regs(struct pt_regs *newregs,
+				    struct pt_regs *oldregs)
+{
+	if (oldregs) {
+		memcpy(newregs, oldregs, sizeof(*newregs));
+	} else {
+		u64 tmp1, tmp2;
+
+		__asm__ __volatile__ (
+			"sd	ra, 8(%2)\n"
+			"sd	gp, 24(%2)\n"
+			"sd	t0, 40(%2)\n"
+			"sd	t1, 48(%2)\n"
+			"sd	t2, 56(%2)\n"
+			"sd	s0, 64(%2)\n"
+			"sd	s1, 72(%2)\n"
+			"sd	a0, 80(%2)\n"
+			"sd	a1, 88(%2)\n"
+			"sd	a2, 96(%2)\n"
+			"sd	a3, 104(%2)\n"
+			"sd	a4, 112(%2)\n"
+			"sd	a5, 120(%2)\n"
+			"sd	a6, 128(%2)\n"
+			"sd	a7, 136(%2)\n"
+			"sd	s2, 144(%2)\n"
+			"sd	s3, 152(%2)\n"
+			"sd	s4, 160(%2)\n"
+			"sd	s5, 168(%2)\n"
+			"sd	s6, 176(%2)\n"
+			"sd	s7, 184(%2)\n"
+			"sd	s8, 192(%2)\n"
+			"sd	s9, 200(%2)\n"
+			"sd	s10, 208(%2)\n"
+			"sd	s11, 216(%2)\n"
+			"sd	t3, 224(%2)\n"
+			"sd	t4, 232(%2)\n"
+			"sd	t5, 240(%2)\n"
+			"sd	t6, 248(%2)\n"
+			"auipc	%0, 0\n"
+			"sd	%0, 0(%2)\n"
+			"csrr	%0, sstatus\n"
+			"sd	%0, 256(%2)\n"
+			"csrr	%0, stval\n"
+			"sd	%0, 264(%2)\n"
+			"csrr	%0, scause\n"
+			"sd	%0, 272(%2)\n"
+			"sd	tp, 32(%2)\n"
+			"sd	sp, 16(%2)\n"
+			: "=&r" (tmp1), "=&r" (tmp2)
+			: "r" (newregs)
+			: "memory"
+		);
+	}
+}
+
+static inline bool crash_is_nosave(unsigned long pfn) {return false; }
+static inline void crash_prepare_suspend(void) {}
+static inline void crash_post_resume(void) {}
+
+#endif /* __ASSEMBLY__ */
+
+#endif
diff --git a/arch/riscv/include/asm/ptrace.h b/arch/riscv/include/asm/ptrace.h
index ee49f80..e15288c 100644
--- a/arch/riscv/include/asm/ptrace.h
+++ b/arch/riscv/include/asm/ptrace.h
@@ -12,38 +12,43 @@
 #ifndef __ASSEMBLY__
 
 struct pt_regs {
-	unsigned long epc;
-	unsigned long ra;
-	unsigned long sp;
-	unsigned long gp;
-	unsigned long tp;
-	unsigned long t0;
-	unsigned long t1;
-	unsigned long t2;
-	unsigned long s0;
-	unsigned long s1;
-	unsigned long a0;
-	unsigned long a1;
-	unsigned long a2;
-	unsigned long a3;
-	unsigned long a4;
-	unsigned long a5;
-	unsigned long a6;
-	unsigned long a7;
-	unsigned long s2;
-	unsigned long s3;
-	unsigned long s4;
-	unsigned long s5;
-	unsigned long s6;
-	unsigned long s7;
-	unsigned long s8;
-	unsigned long s9;
-	unsigned long s10;
-	unsigned long s11;
-	unsigned long t3;
-	unsigned long t4;
-	unsigned long t5;
-	unsigned long t6;
+	union {
+		struct user_regs_struct user_regs;
+		struct {
+			unsigned long epc;
+			unsigned long ra;
+			unsigned long sp;
+			unsigned long gp;
+			unsigned long tp;
+			unsigned long t0;
+			unsigned long t1;
+			unsigned long t2;
+			unsigned long s0;
+			unsigned long s1;
+			unsigned long a0;
+			unsigned long a1;
+			unsigned long a2;
+			unsigned long a3;
+			unsigned long a4;
+			unsigned long a5;
+			unsigned long a6;
+			unsigned long a7;
+			unsigned long s2;
+			unsigned long s3;
+			unsigned long s4;
+			unsigned long s5;
+			unsigned long s6;
+			unsigned long s7;
+			unsigned long s8;
+			unsigned long s9;
+			unsigned long s10;
+			unsigned long s11;
+			unsigned long t3;
+			unsigned long t4;
+			unsigned long t5;
+			unsigned long t6;
+		};
+	};
 	/* Supervisor/Machine CSRs */
 	unsigned long status;
 	unsigned long badaddr;
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index f40205c..bea693a 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -28,6 +28,10 @@ obj-y	+= stacktrace.o
 obj-y	+= cacheinfo.o
 obj-$(CONFIG_MMU) += vdso.o vdso/
 
+obj-$(CONFIG_KEXEC_CORE)        += machine_kexec.o relocate_kernel.o    \
+						cpu-reset.o
+obj-$(CONFIG_CRASH_DUMP)        += crash_dump.o
+
 obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
 obj-$(CONFIG_FPU)		+= fpu.o
 obj-$(CONFIG_SMP)		+= smpboot.o
diff --git a/arch/riscv/kernel/cpu-reset.S b/arch/riscv/kernel/cpu-reset.S
new file mode 100644
index 0000000..250be72
--- /dev/null
+++ b/arch/riscv/kernel/cpu-reset.S
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * CPU reset routines
+ *
+ * Copyright (C) 2020-2025 Alibaba Group Holding Limited
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <linux/linkage.h>
+
+ENTRY(__cpu_soft_restart)
+		fence
+		fence.i
+		sfence.vma
+		mv	s1, a0		//entry
+		mv	a0, a1		//arg0
+		mv	a1, a2		//arg1
+		mv	a2, a3		//arg2
+		jr s1
+ENDPROC(__cpu_soft_restart)
diff --git a/arch/riscv/kernel/cpu-reset.h b/arch/riscv/kernel/cpu-reset.h
new file mode 100644
index 0000000..8a12f6d
--- /dev/null
+++ b/arch/riscv/kernel/cpu-reset.h
@@ -0,0 +1,65 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * CPU reset routines
+ *
+ * Copyright (C) 2020-2025 Alibaba Group Holding Limited
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef _RISCV_CPU_RESET_H
+#define _RISCV_CPU_RESET_H
+
+extern const unsigned char riscv_relocate_new_kernel[];
+extern const unsigned long riscv_relocate_new_kernel_size;
+
+extern struct resource *standard_resources;
+void __cpu_soft_restart(unsigned long entry,
+						unsigned long arg0,
+						unsigned long arg1,
+						unsigned long arg2);
+
+static void __noreturn cpu_soft_restart(unsigned long entry,
+					       unsigned long arg0,
+					       unsigned long arg1,
+					       unsigned long arg2)
+{
+	typeof(__cpu_soft_restart) *restart;
+	pgd_t *idmap_pgd;
+	pmd_t *idmap_pmd;
+	long pa_start, pa_end;
+	long i, j, m, n, delta;
+	long idmap_pmd_size;
+
+	pa_start = standard_resources->start;
+	pa_end = standard_resources->end;
+
+	idmap_pmd_size = (pa_end - pa_start + 1) / PMD_SIZE * sizeof(pmd_t);
+
+	idmap_pgd = (pgd_t *)__va(csr_read(CSR_SATP) << PAGE_SHIFT);
+	idmap_pmd = (pmd_t *)__get_free_pages(GFP_KERNEL,
+				get_order(idmap_pmd_size));
+
+	m = (pa_start >> PGDIR_SHIFT) % PTRS_PER_PGD;
+	n = (pa_end >> PGDIR_SHIFT) % PTRS_PER_PGD;
+
+	for (i = 0; m <= n; m++, i++)
+		idmap_pgd[m] = pfn_pgd(PFN_DOWN(__pa(idmap_pmd)) + i,
+				__pgprot(_PAGE_TABLE));
+
+	m = pa_start >> PMD_SHIFT;
+	n = (pa_end + 1) >> PMD_SHIFT;
+	delta = n - m;
+
+	for (i = (pa_start + 1) % PMD_SIZE, j = 0; i <= delta; i++, j++)
+		idmap_pmd[i] = pfn_pmd(PFN_DOWN(pa_start + j * PMD_SIZE),
+				__pgprot(pgprot_val(PAGE_KERNEL) | _PAGE_EXEC));
+
+	restart = (void *)__pa_symbol(__cpu_soft_restart);
+	restart(entry, arg0, arg1, arg2);
+	unreachable();
+}
+
+#endif
diff --git a/arch/riscv/kernel/crash_dump.c b/arch/riscv/kernel/crash_dump.c
new file mode 100644
index 0000000..bd14f57
--- /dev/null
+++ b/arch/riscv/kernel/crash_dump.c
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Routines for doing kexec-based kdump
+ *
+ * Copyright (C) 2020-2025 Alibaba Group Holding Limited
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <linux/crash_dump.h>
+#include <linux/errno.h>
+#include <linux/io.h>
+#include <linux/memblock.h>
+#include <linux/uaccess.h>
+
+/**
+ * copy_oldmem_page() - copy one page from old kernel memory
+ * @pfn: page frame number to be copied
+ * @buf: buffer where the copied page is placed
+ * @csize: number of bytes to copy
+ * @offset: offset in bytes into the page
+ * @userbuf: if set, @buf is in a user address space
+ *
+ * This function copies one page from old kernel memory into buffer pointed by
+ * @buf. If @buf is in userspace, set @userbuf to %1. Returns number of bytes
+ * copied or negative error in case of failure.
+ */
+ssize_t copy_oldmem_page(unsigned long pfn, char *buf,
+			 size_t csize, unsigned long offset,
+			 int userbuf)
+{
+	void *vaddr;
+
+	if (!csize)
+		return 0;
+
+	vaddr = memremap(__pfn_to_phys(pfn), PAGE_SIZE, MEMREMAP_WB);
+	if (!vaddr)
+		return -ENOMEM;
+
+	if (userbuf) {
+		if (copy_to_user((char __user *)buf, vaddr + offset, csize)) {
+			memunmap(vaddr);
+			return -EFAULT;
+		}
+	} else {
+		memcpy(buf, vaddr + offset, csize);
+	}
+
+	memunmap(vaddr);
+
+	return csize;
+}
+
+/**
+ * elfcorehdr_read - read from ELF core header
+ * @buf: buffer where the data is placed
+ * @count: number of bytes to read
+ * @ppos: address in the memory
+ *
+ * This function reads @count bytes from elf core header which exists
+ * on crash dump kernel's memory.
+ */
+ssize_t elfcorehdr_read(char *buf, size_t count, u64 *ppos)
+{
+	memcpy(buf, phys_to_virt((phys_addr_t)*ppos), count);
+	return count;
+}
diff --git a/arch/riscv/kernel/machine_kexec.c b/arch/riscv/kernel/machine_kexec.c
new file mode 100644
index 0000000..9316d49
--- /dev/null
+++ b/arch/riscv/kernel/machine_kexec.c
@@ -0,0 +1,158 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * kexec for riscv
+ *
+ * Copyright (C) 2020-2025 Alibaba Group Holding Limited
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <linux/interrupt.h>
+#include <linux/irq.h>
+#include <linux/kernel.h>
+#include <linux/kexec.h>
+#include <linux/page-flags.h>
+#include <linux/smp.h>
+
+#include <asm/cacheflush.h>
+#include <asm/mmu.h>
+#include <asm/mmu_context.h>
+#include <asm/page.h>
+
+#include "cpu-reset.h"
+
+/*
+ * kexec_image_info - For debugging output.
+ */
+#define kexec_image_info(_i) _kexec_image_info(__func__, __LINE__, _i)
+static void _kexec_image_info(const char *func, int line,
+	const struct kimage *kimage)
+{
+	unsigned long i;
+
+	pr_debug("%s:%d:\n", func, line);
+	pr_debug("  kexec kimage info:\n");
+	pr_debug("    type:        %d\n", kimage->type);
+	pr_debug("    start:       0x%lx\n", kimage->start);
+	pr_debug("    head:        0x%lx\n", kimage->head);
+	pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
+
+	for (i = 0; i < kimage->nr_segments; i++) {
+		pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
+			i,
+			kimage->segment[i].mem,
+			kimage->segment[i].mem + kimage->segment[i].memsz,
+			kimage->segment[i].memsz,
+			kimage->segment[i].memsz /  PAGE_SIZE);
+	}
+}
+
+void machine_kexec_cleanup(struct kimage *kimage)
+{
+	/* Empty routine needed to avoid build errors. */
+}
+
+/**
+ * machine_kexec_prepare - Prepare for a kexec reboot.
+ *
+ * Called from the core kexec code when a kernel image is loaded.
+ * Forbid loading a kexec kernel if we have no way of hotplugging cpus or cpus
+ * are stuck in the kernel. This avoids a panic once we hit machine_kexec().
+ */
+int machine_kexec_prepare(struct kimage *kimage)
+{
+	kexec_image_info(kimage);
+
+	return 0;
+}
+
+/**
+ * machine_kexec - Do the kexec reboot.
+ *
+ * Called from the core kexec code for a sys_reboot with LINUX_REBOOT_CMD_KEXEC.
+ */
+void machine_kexec(struct kimage *kimage)
+{
+	phys_addr_t reboot_code_buffer_phys;
+	void *reboot_code_buffer;
+
+	reboot_code_buffer_phys = page_to_phys(kimage->control_code_page);
+	reboot_code_buffer = phys_to_virt(reboot_code_buffer_phys);
+
+	pr_debug("%s:%d: control_code_page:        0x%lx\n", __func__, __LINE__,
+		(long)kimage->control_code_page);
+	pr_debug("%s:%d: reboot_code_buffer_phys:  0x%lx\n", __func__, __LINE__,
+		(long)reboot_code_buffer_phys);
+	pr_debug("%s:%d: reboot_code_buffer:       0x%lx\n", __func__, __LINE__,
+		(long)reboot_code_buffer);
+	pr_debug("%s:%d: relocate_new_kernel:      0x%lx\n", __func__, __LINE__,
+		(long)riscv_relocate_new_kernel);
+	pr_debug("%s:%d: relocate_new_kernel_size: 0x%lx(%lu) bytes\n",
+		__func__, __LINE__, riscv_relocate_new_kernel_size,
+		riscv_relocate_new_kernel_size);
+
+	/*
+	 * Copy riscv_relocate_new_kernel to the reboot_code_buffer for use
+	 * after the kernel is shut down.
+	 */
+	memcpy(reboot_code_buffer, riscv_relocate_new_kernel,
+		riscv_relocate_new_kernel_size);
+
+	pr_info("Bye!\n");
+
+	local_irq_disable();
+
+	cpu_soft_restart(reboot_code_buffer_phys, kimage->head,
+				kimage->start, 0);
+}
+
+static void machine_kexec_mask_interrupts(void)
+{
+	unsigned int i;
+	struct irq_desc *desc;
+
+	for_each_irq_desc(i, desc) {
+		struct irq_chip *chip;
+		int ret;
+
+		chip = irq_desc_get_chip(desc);
+		if (!chip)
+			continue;
+
+		/*
+		 * First try to remove the active state. If this
+		 * fails, try to EOI the interrupt.
+		 */
+		ret = irq_set_irqchip_state(i, IRQCHIP_STATE_ACTIVE, false);
+
+		if (ret && irqd_irq_inprogress(&desc->irq_data) &&
+		    chip->irq_eoi)
+			chip->irq_eoi(&desc->irq_data);
+
+		if (chip->irq_mask)
+			chip->irq_mask(&desc->irq_data);
+
+		if (chip->irq_disable && !irqd_irq_disabled(&desc->irq_data))
+			chip->irq_disable(&desc->irq_data);
+	}
+}
+
+/**
+ * machine_crash_shutdown - shutdown non-crashing cpus and save registers
+ */
+extern void crash_smp_send_stop(void);
+void machine_crash_shutdown(struct pt_regs *regs)
+{
+	local_irq_disable();
+
+	/* shutdown non-crashing cpus */
+	crash_smp_send_stop();
+
+	/* for crashing cpu */
+	crash_save_cpu(regs, smp_processor_id());
+	machine_kexec_mask_interrupts();
+
+	pr_info("Starting crashdump kernel...\n");
+}
diff --git a/arch/riscv/kernel/relocate_kernel.S b/arch/riscv/kernel/relocate_kernel.S
new file mode 100644
index 0000000..d6baed4
--- /dev/null
+++ b/arch/riscv/kernel/relocate_kernel.S
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020-2025 Alibaba Group Holding Limited
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <linux/kexec.h>
+#include <linux/linkage.h>
+
+#include <asm/kexec.h>
+#include <asm/page.h>
+
+ENTRY(riscv_relocate_new_kernel)
+	/* Start new image. */
+	mv	s1, a1
+	mv	a0, zero
+	mv	a1, a2
+	mv	a2, zero
+	mv	a3, zero
+	jr	s1
+ENDPROC(riscv_relocate_new_kernel)
+
+.Lcopy_end:
+.org	KEXEC_CONTROL_PAGE_SIZE
+
+.globl riscv_relocate_new_kernel_size
+riscv_relocate_new_kernel_size:
+	.quad	.Lcopy_end - riscv_relocate_new_kernel
diff --git a/arch/riscv/kernel/reset.c b/arch/riscv/kernel/reset.c
index ee5878d..8bc4dba 100644
--- a/arch/riscv/kernel/reset.c
+++ b/arch/riscv/kernel/reset.c
@@ -30,3 +30,7 @@ void machine_power_off(void)
 {
 	pm_power_off();
 }
+
+void machine_shutdown(void)
+{
+}
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 965a8cf..31b8b17 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -13,6 +13,8 @@
 #include <linux/of_fdt.h>
 #include <linux/libfdt.h>
 
+#include <linux/crash_dump.h>
+
 #include <asm/fixmap.h>
 #include <asm/tlbflush.h>
 #include <asm/sections.h>
@@ -28,6 +30,169 @@ EXPORT_SYMBOL(empty_zero_page);
 extern char _start[];
 void *dtb_early_va;
 
+#ifdef CONFIG_KEXEC_CORE
+static void __init reserve_crashkernel(void)
+{
+	unsigned long long crash_base, crash_size;
+	int ret;
+
+	ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
+			&crash_size, &crash_base);
+	if (ret || !crash_size)
+		return;
+
+	if (crash_base == 0) {
+		crash_base = memblock_find_in_range(0,
+			__pfn_to_phys(max_low_pfn)-1, crash_size, SZ_2M);
+		pr_debug("crash_base: 0x%llx\n", crash_base);
+	}
+
+	memblock_reserve(crash_base, crash_size);
+
+	pr_info("crashkernel reserved: 0x%016llx - 0x%016llx (%lld MB)\n",
+		crash_base, crash_base + crash_size, crash_size >> 20);
+
+	crashk_res.start = crash_base;
+	crashk_res.end = crash_base + crash_size - 1;
+}
+#else
+static void __init reserve_crashkernel(void)
+{
+}
+#endif /* CONFIG_KEXEC_CORE */
+
+#ifdef CONFIG_CRASH_DUMP
+static int __init early_init_dt_scan_elfcorehdr(unsigned long node,
+		const char *uname, int depth, void *data)
+{
+	const __be32 *reg;
+	int len;
+
+	if (depth != 1 || strcmp(uname, "chosen") != 0)
+		return 0;
+
+	reg = of_get_flat_dt_prop(node, "linux,elfcorehdr", &len);
+	if (!reg || (len < (dt_root_addr_cells + dt_root_size_cells)))
+		return 1;
+
+	elfcorehdr_addr = dt_mem_next_cell(dt_root_addr_cells, &reg);
+	elfcorehdr_size = dt_mem_next_cell(dt_root_size_cells, &reg);
+
+	return 1;
+}
+
+/*
+ * reserve_elfcorehdr() - reserves memory for elf core header
+ *
+ * This function reserves the memory occupied by an elf core header
+ * described in the device tree. This region contains all the
+ * information about primary kernel's core image and is used by a dump
+ * capture kernel to access the system memory on primary kernel.
+ */
+static void __init reserve_elfcorehdr(void)
+{
+	of_scan_flat_dt(early_init_dt_scan_elfcorehdr, NULL);
+
+	if (!elfcorehdr_size)
+		return;
+
+	if (memblock_is_region_reserved(elfcorehdr_addr, elfcorehdr_size)) {
+		pr_warn("elfcorehdr is overlapped\n");
+		return;
+	}
+
+	memblock_reserve(elfcorehdr_addr, elfcorehdr_size);
+
+	pr_info("Reserving %lldKB of memory at 0x%llx for elfcorehdr\n",
+		elfcorehdr_size >> 10, elfcorehdr_addr);
+}
+#else
+static void __init reserve_elfcorehdr(void)
+{
+}
+#endif /* CONFIG_CRASH_DUMP */
+
+/*
+ * Standard memory resources
+ */
+static struct resource mem_res[] = {
+	{
+		.name = "Kernel code",
+		.start = 0,
+		.end = 0,
+		.flags = IORESOURCE_SYSTEM_RAM
+	},
+	{
+		.name = "Kernel data",
+		.start = 0,
+		.end = 0,
+		.flags = IORESOURCE_SYSTEM_RAM
+	}
+};
+
+#define kernel_code mem_res[0]
+#define kernel_data mem_res[1]
+
+static int num_standard_resources;
+struct resource *standard_resources;
+
+static void __init request_standard_resources(void)
+{
+	struct memblock_region *region;
+	struct resource *res;
+	unsigned long i = 0;
+	size_t res_size;
+
+	kernel_code.start   = __pa_symbol(_start);
+	kernel_code.end     = __pa_symbol(__init_end - 1);
+	kernel_data.start   = __pa_symbol(_sdata);
+	kernel_data.end     = __pa_symbol(_end - 1);
+
+	num_standard_resources = memblock.memory.cnt;
+	res_size = num_standard_resources * sizeof(*standard_resources);
+	standard_resources = memblock_alloc(res_size, SMP_CACHE_BYTES);
+	if (!standard_resources)
+		panic("%s: Failed to allocate %zu bytes\n", __func__, res_size);
+
+	for_each_memblock(memory, region) {
+		res = &standard_resources[i++];
+		if (memblock_is_nomap(region)) {
+			res->name  = "reserved";
+			res->flags = IORESOURCE_MEM;
+		} else {
+			res->name  = "System RAM";
+			res->flags = IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
+		}
+		res->start =
+			__pfn_to_phys(memblock_region_memory_base_pfn(region));
+		res->end =
+			__pfn_to_phys(memblock_region_memory_end_pfn(region)) -
+			1;
+
+		request_resource(&iomem_resource, res);
+
+		if (kernel_code.start >= res->start &&
+		    kernel_code.end <= res->end)
+			request_resource(res, &kernel_code);
+		if (kernel_data.start >= res->start &&
+		    kernel_data.end <= res->end)
+			request_resource(res, &kernel_data);
+#ifdef CONFIG_KEXEC_CORE
+		/* Userspace will find "Crash kernel" region in /proc/iomem. */
+		if (crashk_res.end && crashk_res.start >= res->start &&
+		    crashk_res.end <= res->end)
+			request_resource(res, &crashk_res);
+#endif
+	}
+}
+
+void __init riscv_kdump_crash(void)
+{
+	reserve_crashkernel();
+	reserve_elfcorehdr();
+	request_standard_resources();
+}
+
 static void __init zone_sizes_init(void)
 {
 	unsigned long max_zone_pfns[MAX_NR_ZONES] = { 0, };
@@ -495,6 +660,7 @@ void __init paging_init(void)
 	sparse_init();
 	setup_zero_page();
 	zone_sizes_init();
+	riscv_kdump_crash();
 }
 
 #ifdef CONFIG_SPARSEMEM_VMEMMAP
diff --git a/include/uapi/linux/kexec.h b/include/uapi/linux/kexec.h
index 05669c8..778dc19 100644
--- a/include/uapi/linux/kexec.h
+++ b/include/uapi/linux/kexec.h
@@ -42,6 +42,7 @@
 #define KEXEC_ARCH_MIPS_LE (10 << 16)
 #define KEXEC_ARCH_MIPS    ( 8 << 16)
 #define KEXEC_ARCH_AARCH64 (183 << 16)
+#define KEXEC_ARCH_RISCV   (243 << 16)
 
 /* The artificial cap on the number of segments passed to kexec_load. */
 #define KEXEC_SEGMENT_MAX 16
-- 
2.7.4


