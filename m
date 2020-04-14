Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432D21A7205
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Apr 2020 05:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tpHV8AoQYK4ODD4Rv537D00CyvZIguCFqmQYU+5jFwg=; b=YhPtIyV70uT1pR
	48W7QfparpIMWjBcOycBYXRd/GMs4CSnLyxiSdt9V0lwU7e/eExorr9UdPJVKFatGiXPjFYUAegpQ
	IKj+ymw/t6vq0RkHjuFPTUJCBHR/dmN7YF4e7tC2vvHWs+tlw4NPw6P+drQeTwZBx3JMquHyXn8l2
	oi1TZKqge55bQplRNNlBi3fiFHl0Th46JB5/NCUu4cKSVJ8WfgFPHkFcs8CoeBw4gdPaZc7/z3Zhe
	vpcR3SyMucqKb/8QzdpFNOH+DSYgOQdrJPigijJRspWebaurgzNZ+82mhkJProt3ZeDPWBZOw6fEt
	pwz256Et+utfN9L/5pQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOCce-0002W8-Us; Tue, 14 Apr 2020 03:52:28 +0000
Received: from mailgate-2.ics.forth.gr ([139.91.1.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOCca-0002UT-8c
 for linux-riscv@lists.infradead.org; Tue, 14 Apr 2020 03:52:27 +0000
Received: from av3.ics.forth.gr (av3in [139.91.1.77])
 by mailgate-2.ics.forth.gr (8.14.4/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 03E3pnbx031580; Tue, 14 Apr 2020 03:51:51 GMT
X-AuditID: 8b5b014d-257ff700000045c5-a7-5e953355255f
Received: from enigma.ics.forth.gr (enigma.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 4E.25.17861.553359E5; Tue, 14 Apr 2020 06:51:49 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user: mick@ics.forth.gr at ics.forth.gr
From: Nick Kossifidis <mick@ics.forth.gr>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v2] RISC-V: Add kexec support
Date: Tue, 14 Apr 2020 06:51:28 +0300
Message-Id: <20200414035128.506534-1-mick@ics.forth.gr>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprILMWRmVeSWpSXmKPExsXSHT1dWTfUeGqcwcInvBYtH96xWixa8Z3F
 YsvhR8wW2z63sFk0vzvHbvHycg+zRdssfgd2j6m/z7B4vHn5ksXj4aZLTB6bl9R7XGq+zu7R
 fqCbKYAtissmJTUnsyy1SN8ugStj15GJTAXPSio2v9/K1sD4NaaLkZNDQsBEYt+tS2xdjFwc
 QgJHGSVWt59mhEi4Sdy+v5MVxGYT0JSYf+kgSxcjB4eIgLLE/HuuIPXMAhsZJU7+PsgEUiMs
 oCux594SdhCbRUBVomcWRJxXwFxi6pUPUDPlJbZ++8QKEReUODnzCQuIzQwUb946m3kCI88s
 JKlZSFILGJlWMQoklhnrZSYX66XlF5Vk6KUXbWIEhxqj7w7G25vf6h1iZOJgPMQowcGsJML7
 pHxinBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHePO7lsUIC6YklqdmpqQWpRTBZJg5OqQamZSsn
 aC4602TyZ2bKnQMHa57+uRrw70LuDxFeVouqXwd28Kizix5lfaH4Yrv/kX/blzHEL1HzyzSz
 cffLu770RdIMDTu/rjtf80UP2PFsqMqbJS13dEpgp+zxOLaUqXOX7ZHJ/lXl2Pqau9NKuN32
 5KZZl3WO9c6PPjq76EG70rRpDue+v+d98f+N5NT7k0wr3plOrd3YevLwEaHO4uTOyZKVYguU
 y3WFjDasP909eVbZy4fvDfi2RU0Nbzs0rcxmVvOr14fdnn6wfxamYL/lW7FYu/OvDqN1U3Vi
 7zwp/tsqpnuivX8O+/4Pf8yXpls9CT+zdfrKiWuXMvFP3bXCJlj+X0L+RcuiDC2FUqXImUos
 xRmJhlrMRcWJAOfZK5+kAgAA
X-Greylist: inspected by milter-greylist-4.6.2 (mailgate-2.ics.forth.gr
 [139.91.1.5]);
 Tue, 14 Apr 2020 03:51:51 +0000 (GMT) for IP:'139.91.1.77' DOMAIN:'av3in'
 HELO:'av3.ics.forth.gr' FROM:'mick@ics.forth.gr' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mailgate-2.ics.forth.gr [139.91.1.5]); Tue, 14 Apr 2020 03:51:51 +0000 (GMT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_205224_859573_0CA03A9A 
X-CRM114-Status: GOOD (  32.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: david.abdurachmanov@sifive.com, anup@brainfault.org, atish.patra@wdc.com,
 palmer@dabbelt.com, paul.walmsley@sifive.com,
 Nick Kossifidis <mick@ics.forth.gr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch adds support for kexec on RISC-V. On SMP systems it depends
on HOTPLUG_CPU in order to be able to bring up all harts after kexec.
It also needs a recent OpenSBI version that supports the HSM extension.
I tested it on riscv64 QEMU on both an smp and a non-smp system.

Note that on my tests although all harts seem to go down properly,
when using more than 2 harts on qemu, they don't seem to come back
as expected. I tried various ways of doing this, including using
the new smp_shutdown_nonboot_cpus() but the result is the same.

The patch for kexec-tools can be found at:
http://riscv.ics.forth.gr/kexec-tools.patch

The older version of this patch can be found at:
https://patchwork.kernel.org/patch/10902945/

v2:
 * Pass needed parameters as arguments to riscv_kexec_relocate
   instead of using global variables.
 * Use kimage_arch to hold the fdt address of the included fdt.
 * Use SYM_* macros on kexec_relocate.S.
 * Compatibility with STRICT_KERNEL_RWX.
 * Compatibility with HOTPLUG_CPU for SMP
 * Small cleanups

Signed-off-by: Nick Kossifidis <mick@ics.forth.gr>
---
 arch/riscv/Kconfig                 |  14 +++
 arch/riscv/include/asm/kexec.h     |  47 +++++++
 arch/riscv/kernel/Makefile         |   1 +
 arch/riscv/kernel/kexec_relocate.S | 157 +++++++++++++++++++++++
 arch/riscv/kernel/machine_kexec.c  | 196 +++++++++++++++++++++++++++++
 include/uapi/linux/kexec.h         |   1 +
 6 files changed, 416 insertions(+)
 create mode 100644 arch/riscv/include/asm/kexec.h
 create mode 100644 arch/riscv/kernel/kexec_relocate.S
 create mode 100644 arch/riscv/kernel/machine_kexec.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index bc713666f..acbef6ee6 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -331,6 +331,20 @@ config RISCV_SBI_V01
 	help
 	  This config allows kernel to use SBI v0.1 APIs. This will be
 	  deprecated in future once legacy M-mode software are no longer in use.
+
+config KEXEC
+	bool "Kexec system call"
+	select KEXEC_CORE
+	select HOTPLUG_CPU if SMP
+	help
+	  kexec is a system call that implements the ability to shutdown your
+	  current kernel, and to start another kernel. It is like a reboot
+	  but it is independent of the system firmware. And like a reboot
+	  you can start any kernel with it, not just Linux.
+
+	  The name comes from the similarity to the exec system call.
+
+
 endmenu
 
 menu "Boot options"
diff --git a/arch/riscv/include/asm/kexec.h b/arch/riscv/include/asm/kexec.h
new file mode 100644
index 000000000..edff8a84a
--- /dev/null
+++ b/arch/riscv/include/asm/kexec.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 FORTH-ICS/CARV
+ *		       Nick Kossifidis <mick@ics.forth.gr>
+ */
+
+#ifndef _RISCV_KEXEC_H
+#define _RISCV_KEXEC_H
+
+/* Maximum physical address we can use pages from */
+#define KEXEC_SOURCE_MEMORY_LIMIT (-1UL)
+
+/* Maximum address we can reach in physical address mode */
+#define KEXEC_DESTINATION_MEMORY_LIMIT (-1UL)
+
+/* Maximum address we can use for the control code buffer */
+#define KEXEC_CONTROL_MEMORY_LIMIT (-1UL)
+
+/* Reserve a page for the control code buffer */
+#define KEXEC_CONTROL_PAGE_SIZE 4096
+
+#define KEXEC_ARCH KEXEC_ARCH_RISCV
+
+static inline void
+crash_setup_regs(struct pt_regs *newregs,
+		 struct pt_regs *oldregs)
+{
+	/* Dummy implementation for now */
+}
+
+
+#define ARCH_HAS_KIMAGE_ARCH
+
+struct kimage_arch {
+	unsigned long fdt_addr;
+};
+
+const extern unsigned char riscv_kexec_relocate[];
+const extern unsigned int riscv_kexec_relocate_size;
+
+typedef void (*riscv_kexec_do_relocate)(unsigned long first_ind_entry,
+					unsigned long jump_addr,
+					unsigned long fdt_addr,
+					unsigned long hartid,
+					unsigned long va_pa_off);
+
+#endif
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 86c830810..28dccbbe6 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -51,5 +51,6 @@ ifeq ($(CONFIG_RISCV_SBI), y)
 obj-$(CONFIG_SMP) += cpu_ops_sbi.o
 endif
 obj-$(CONFIG_HOTPLUG_CPU)	+= cpu-hotplug.o
+obj-${CONFIG_KEXEC}		+= kexec_relocate.o machine_kexec.o
 
 clean:
diff --git a/arch/riscv/kernel/kexec_relocate.S b/arch/riscv/kernel/kexec_relocate.S
new file mode 100644
index 000000000..957f63242
--- /dev/null
+++ b/arch/riscv/kernel/kexec_relocate.S
@@ -0,0 +1,157 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 FORTH-ICS/CARV
+ *		       Nick Kossifidis <mick@ics.forth.gr>
+ */
+
+#include <asm/asm.h>	/* For RISCV_* and REG_* macros */
+#include <asm/page.h>	/* For PAGE_SHIFT */
+#include <linux/linkage.h> /* For SYM_* macros */
+
+SYM_CODE_START(riscv_kexec_relocate)
+
+	/*
+	 * s0: Pointer to the current entry
+	 * s1: (const) Phys address to jump to after relocation
+	 * s2: (const) Phys address of the FDT image
+	 * s3: (const) The hartid of the current hart
+	 * s4: Pointer to the destination address for the relocation
+	 * s5: (const) Number of words per page
+	 * s6: (const) 1, used for subtraction
+	 * s7: (const) va_pa_offset, used when switching MMU off
+	 * s8: (const) Physical address of the main loop
+	 * s9: (debug) indirection page counter
+	 * s10: (debug) entry counter
+	 * s11: (debug) copied words counter
+	 */
+	mv	s0, a0
+	mv	s1, a1
+	mv	s2, a2
+	mv	s3, a3
+	mv	s4, zero
+	li	s5, ((1 << PAGE_SHIFT) / RISCV_SZPTR)
+	li	s6, 1
+	mv	s7, a4
+	mv	s8, zero
+	mv	s9, zero
+	mv	s10, zero
+	mv	s11, zero
+
+	/* Disable / cleanup interrupts */
+	csrw	sie, zero
+	csrw	sip, zero
+
+	/*
+	 * When we switch SATP.MODE to "Bare" we'll only
+	 * play with physical addresses. However the first time
+	 * we try to jump somewhere, the offset on the jump
+	 * will be relative to pc which will still be on VA. To
+	 * deal with this we set stvec to the physical address at
+	 * the start of the loop below so that we jump there in
+	 * any case.
+	 */
+	la	s8, 1f
+	sub	s8, s8, s7
+	csrw	stvec, s8
+
+	/* Process entries in a loop */
+1:
+	addi	s10, s10, 1
+	REG_L	t0, 0(s0)		/* t0 = *image->entry */
+	addi	s0, s0, RISCV_SZPTR	/* image->entry++ */
+
+	/* IND_DESTINATION entry ? -> save destination address */
+	andi	t1, t0, 0x1
+	beqz	t1, 2f
+	andi	s4, t0, ~0x1
+	j	1b
+
+2:
+	/* IND_INDIRECTION entry ? -> update next entry ptr (PA) */
+	andi	t1, t0, 0x2
+	beqz	t1, 2f
+	andi	s0, t0, ~0x2
+	addi	s9, s9, 1
+	csrw	sptbr, zero
+	jalr	zero, s8, 0
+
+2:
+	/* IND_DONE entry ? -> jump to done label */
+	andi	t1, t0, 0x4
+	beqz	t1, 2f
+	j	4f
+
+2:
+	/*
+	 * IND_SOURCE entry ? -> copy page word by word to the
+	 * destination address we got from IND_DESTINATION
+	 */
+	andi	t1, t0, 0x8
+	beqz	t1, 1b		/* Unknown entry type, ignore it */
+	andi	t0, t0, ~0x8
+	mv	t3, s5		/* i = num words per page */
+3:	/* copy loop */
+	REG_L	t1, (t0)	/* t1 = *src_ptr */
+	REG_S	t1, (s4)	/* *dst_ptr = *src_ptr */
+	addi	t0, t0, RISCV_SZPTR /* stc_ptr++ */
+	addi	s4, s4, RISCV_SZPTR /* dst_ptr++ */
+	sub	t3, t3, s6	/* i-- */
+	addi	s11, s11, 1	/* c++ */
+	beqz	t3, 1b		/* copy done ? */
+	j	3b
+
+4:
+	/* Wait for the relocation to be visible by other harts */
+	fence	w,w
+
+	/* Pass the arguments to the next kernel  / Cleanup*/
+	mv	a0, s3
+	mv	a1, s2
+	mv	a2, s1
+
+	/* Cleanup */
+	mv	a3, zero
+	mv	a4, zero
+	mv	a5, zero
+	mv	a6, zero
+	mv	a7, zero
+
+	mv	s0, zero
+	mv	s1, zero
+	mv	s2, zero
+	mv	s3, zero
+	mv	s4, zero
+	mv	s5, zero
+	mv	s6, zero
+	mv	s7, zero
+	mv	s8, zero
+	mv	s9, zero
+	mv	s10, zero
+	mv	s11, zero
+
+	mv	t0, zero
+	mv	t1, zero
+	mv	t2, zero
+	mv	t3, zero
+	mv	t4, zero
+	mv	t5, zero
+	mv	t6, zero
+	csrw	sepc, zero
+	csrw	scause, zero
+	csrw	sscratch, zero
+
+	/*
+	 * Make sure the relocated code is visible
+	 * and jump to the new kernel
+	 */
+	fence.i
+
+	jalr	zero, a2, 0
+
+SYM_CODE_END(riscv_kexec_relocate)
+riscv_kexec_relocate_end:
+
+	.section ".rodata"
+SYM_DATA(riscv_kexec_relocate_size,
+	.long riscv_kexec_relocate_end - riscv_kexec_relocate)
+
diff --git a/arch/riscv/kernel/machine_kexec.c b/arch/riscv/kernel/machine_kexec.c
new file mode 100644
index 000000000..d38aa75f7
--- /dev/null
+++ b/arch/riscv/kernel/machine_kexec.c
@@ -0,0 +1,196 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 FORTH-ICS/CARV
+ *		       Nick Kossifidis <mick@ics.forth.gr>
+ */
+
+#include <linux/kexec.h>
+#include <asm/kexec.h>		/* For riscv_kexec_* symbol defines */
+#include <linux/smp.h>		/* For smp_send_stop () */
+#include <asm/cacheflush.h>	/* For local_flush_icache_all() */
+#include <asm/barrier.h>	/* For smp_wmb() */
+#include <asm/page.h>		/* For PAGE_MASK */
+#include <linux/libfdt.h>	/* For fdt_check_header() */
+#include <asm/set_memory.h>	/* For set_memory_x() */
+#include <linux/compiler.h>	/* For unreachable() */
+#include <linux/cpu.h>		/* For cpu_down() */
+
+/**
+ * kexec_image_info - Print received image details
+ */
+static void
+kexec_image_info(const struct kimage *image)
+{
+	unsigned long i;
+
+	pr_debug("Kexec image info:\n");
+	pr_debug("\ttype:        %d\n", image->type);
+	pr_debug("\tstart:       %lx\n", image->start);
+	pr_debug("\thead:        %lx\n", image->head);
+	pr_debug("\tnr_segments: %lu\n", image->nr_segments);
+
+	for (i = 0; i < image->nr_segments; i++) {
+		pr_debug("\t    segment[%lu]: %016lx - %016lx", i,
+			image->segment[i].mem,
+			image->segment[i].mem + image->segment[i].memsz);
+		pr_debug("\t\t0x%lx bytes, %lu pages\n",
+			(unsigned long) image->segment[i].memsz,
+			(unsigned long) image->segment[i].memsz /  PAGE_SIZE);
+	}
+}
+
+/**
+ * machine_kexec_prepare - Initialize kexec
+ *
+ * This function is called from do_kexec_load, when the user has
+ * provided us with an image to be loaded. Its goal is to validate
+ * the image and prepare the control code buffer as needed.
+ * Note that kimage_alloc_init has already been called and the
+ * control buffer has already been allocated.
+ */
+int
+machine_kexec_prepare(struct kimage *image)
+{
+	struct kimage_arch *internal = &image->arch;
+	struct fdt_header fdt = {0};
+	void *control_code_buffer = NULL;
+	int i = 0;
+
+	kexec_image_info(image);
+
+	if (image->type == KEXEC_TYPE_CRASH) {
+		pr_warn("Loading a crash kernel is unsupported for now.\n");
+		return -EINVAL;
+	}
+
+	/* Find the Flattened Device Tree and save its physical address */
+	for (i = 0; i < image->nr_segments; i++) {
+		if (image->segment[i].memsz <= sizeof(fdt))
+			continue;
+
+		if (copy_from_user(&fdt, image->segment[i].buf, sizeof(fdt)))
+			continue;
+
+		if (fdt_check_header(&fdt))
+			continue;
+
+		internal->fdt_addr = (unsigned long) image->segment[i].mem;
+		break;
+	}
+
+	if (!internal->fdt_addr) {
+		pr_err("Device tree not included in the provided image\n");
+		return -EINVAL;
+	}
+
+	/* Copy the assembler code for relocation to the control page */
+	control_code_buffer = page_address(image->control_code_page);
+	memcpy(control_code_buffer, riscv_kexec_relocate,
+		riscv_kexec_relocate_size);
+
+	/* Mark the control page executable */
+	set_memory_x((unsigned long) control_code_buffer, 1);
+
+#ifdef CONFIG_SMP
+	/*
+	 * Make sure other harts see the copied data
+	 * if they try to read the control buffer
+	 */
+	smp_wmb();
+#endif
+
+	return 0;
+}
+
+
+/**
+ * machine_kexec_cleanup - Cleanup any leftovers from
+ *			   machine_kexec_prepare
+ *
+ * This function is called by kimage_free to handle any arch-specific
+ * allocations done on machine_kexec_prepare. Since we didn't do any
+ * allocations there, this is just an empty function. Note that the
+ * control buffer is freed by kimage_free.
+ */
+void
+machine_kexec_cleanup(struct kimage *image)
+{
+}
+
+
+/*
+ * machine_shutdown - Prepare for a kexec reboot
+ *
+ * This function is called by kernel_kexec just before machine_kexec
+ * below. Its goal is to prepare the rest of the system (the other
+ * harts and possibly devices etc) for a kexec reboot.
+ */
+void machine_shutdown(void)
+{
+#if defined(CONFIG_HOTPLUG_CPU) && (CONFIG_SMP)
+	cpumask_t mask;
+	int cpu;
+#endif
+	/*
+	 * No more interrupts on this hart
+	 * until we are back up.
+	 */
+	local_irq_disable();
+
+#if defined(CONFIG_HOTPLUG_CPU) && (CONFIG_SMP)
+	cpumask_copy(&mask, cpu_online_mask);
+	cpumask_clear_cpu(smp_processor_id(), &mask);
+
+	for_each_cpu(cpu, &mask)
+		cpu_down(cpu);
+#endif
+}
+
+/**
+ * machine_crash_shutdown - Prepare to kexec after a kernel crash
+ *
+ * This function is called by crash_kexec just before machine_kexec
+ * below and its goal is similar to machine_shutdown, but in case of
+ * a kernel crash. Since we don't handle such cases yet, this function
+ * is empty.
+ */
+void
+machine_crash_shutdown(struct pt_regs *regs)
+{
+}
+
+/**
+ * machine_kexec - Jump to the loaded kimage
+ *
+ * This function is called by kernel_kexec which is called by the
+ * reboot system call when the reboot cmd is LINUX_REBOOT_CMD_KEXEC,
+ * or by crash_kernel which is called by the kernel's arch-specific
+ * trap handler in case of a kernel panic. It's the final stage of
+ * the kexec process where the pre-loaded kimage is ready to be
+ * executed. We assume at this point that all other harts are
+ * suspended and this hart will be the new boot hart.
+ */
+void __noreturn
+machine_kexec(struct kimage *image)
+{
+	struct kimage_arch *internal = &image->arch;
+	unsigned long jump_addr = (unsigned long) image->start;
+	unsigned long first_ind_entry = (unsigned long) &image->head;
+	unsigned long this_hart_id = raw_smp_processor_id();
+	unsigned long fdt_addr = internal->fdt_addr;
+	void *control_code_buffer = page_address(image->control_code_page);
+	riscv_kexec_do_relocate do_relocate = control_code_buffer;
+
+	pr_notice("Will call new kernel at %08lx from hart id %lx\n",
+		  jump_addr, this_hart_id);
+	pr_notice("FDT image at %08lx\n", fdt_addr);
+
+	/* Make sure the relocation code is visible to the hart */
+	local_flush_icache_all();
+
+	/* Jump to the relocation code */
+	pr_notice("Bye...\n");
+	do_relocate(first_ind_entry, jump_addr, fdt_addr,
+		    this_hart_id, va_pa_offset);
+	unreachable();
+}
diff --git a/include/uapi/linux/kexec.h b/include/uapi/linux/kexec.h
index 05669c87a..778dc191c 100644
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
2.24.1


