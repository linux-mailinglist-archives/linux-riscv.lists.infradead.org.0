Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D041B7C77
	for <lists+linux-riscv@lfdr.de>; Fri, 24 Apr 2020 19:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNTyMJY1cjgy6TO1cktHlCFEHnTVGSEoETINSPzee/E=; b=AT1SRBKfgBF3X2
	oR7BYQMh6v7pQMiECjTAQefnWTSJpMN1h0sBUTvk8s1NFqteqE70X4sLLD6BtBWsrhv6BItB25FDF
	R2t67LslA/iPbAb+Mm4rToIHI7RNFzRMsO0eWLLgZXPft5HuVN82mQc2js5jAijfbmUy2W7pUIfzz
	wV29TchAfNArYsSvcgApKAThs33faTp85TbqwtPtBfG/furnZdLkiIAvoDmwEH9mD1DziarCss0eU
	wJXnRF4ieHwNq/3D8QIhc1+NWqzGgycR624fV4Gq+d7mxM2sEvNvUno3O1FVl+XOWeDweqXrp+Kdz
	8egUL6xAM2+CfjQzpUtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1sb-0004DQ-Dy; Fri, 24 Apr 2020 17:12:45 +0000
Received: from mailgate.ics.forth.gr ([139.91.1.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1sU-00049c-Me
 for linux-riscv@lists.infradead.org; Fri, 24 Apr 2020 17:12:41 +0000
Received: from av3.ics.forth.gr (av3in.ics.forth.gr [139.91.1.77])
 by mailgate.ics.forth.gr (8.15.2/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 03OHCSDd094032; Fri, 24 Apr 2020 20:12:28 +0300 (EEST)
X-AuditID: 8b5b014d-257ff700000045c5-be-5ea31df794bb
Received: from enigma.ics.forth.gr (enigma-2.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 68.23.17861.7FD13AE5; Fri, 24 Apr 2020 20:12:23 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user: mick@ics.forth.gr at ics.forth.gr
From: Nick Kossifidis <mick@ics.forth.gr>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 2/3] RISC-V: Add kdump support
Date: Fri, 24 Apr 2020 20:12:13 +0300
Message-Id: <20200424171214.1515457-3-mick@ics.forth.gr>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200424171214.1515457-1-mick@ics.forth.gr>
References: <20200424171214.1515457-1-mick@ics.forth.gr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrELMWRmVeSWpSXmKPExsXSHT1dWfe77OI4g2cf1SxaPrxjtVi04juL
 xZbDj5gttn1uYbNofneO3eLl5R5mi7ZZ/BZNL64zO3B4TP19hsWj68cMVo83L1+yeDzcdInJ
 Y/OSeo9LzdfZPdoPdDMFsEdx2aSk5mSWpRbp2yVwZUzd+4e5YHdlxYKlF9kbGCcndzFyckgI
 mEic6WhnBrGFBI4zSmx96gMRd5O4fX8nK4jNJqApMf/SQZYuRg4OEQFlifn3XLsYuTiYBY4x
 SuxZMZ8JpEZYQE/i1Nv9YDaLgKrE6+MLwHp5BSwklpy/wQQxU15i67dPYHFOAUuJOXPnsEDs
 tZA4c3AvO0S9oMTJmU/A4sxA9c1bZzNPYOSbhSQ1C0lqASPTKkaBxDJjvczkYr20/KKSDL30
 ok2M4GBl9N3BeHvzW71DjEwcjIcYJTiYlUR4Y0oWxQnxpiRWVqUW5ccXleakFh9ilOZgURLn
 zeNeHiskkJ5YkpqdmlqQWgSTZeLglGpgYja6W1V6Tnf6E4G7XleWONU+ljyvu9n2/q9NVXbO
 mudmXsmusTnKqRppZbwjnf9sWYBTVJn4lV2Bpg+7OSt+7dme2rmKs6Nvc+srno07567ff7RN
 s0c66P4rKbGKRx1KKnPtlpm3PysrFHE3PersxXZhet6Vx4ZW7rzzurm+rdWY9eSRv/PhK6mh
 e7dtnVs068Sa3J/Tnv00kn5fMK3Brb/zg0uwVcC3nN/b31xM9sqTiTp65fD+fo3sc9ce5eku
 9d+45pPmoT1zGFZf8U2K+Bj3+96Kvdtlz7QZN6yZeUoxdAmfLIvjZ1XJoicd6W/3tb/PcYz9
 WfTY/KpJxcnDyv4elo95HTdH+jTbbCyvVWIpzkg01GIuKk4EAJlt8N7FAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_101239_112533_3B676E44 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.2 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [139.91.1.2 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 yibin_liu@c-sky.com, palmer@dabbelt.com, paul.walmsley@sifive.com,
 Nick Kossifidis <mick@ics.forth.gr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch adds support for kdump, the kernel will reserve a
region for the crash kernel and jump there on panic. In order
for userspace tools (kexec-tools) to prepare the crash kernel
kexec image, we also need to expose some information on
/proc/iomem for the memory regions used by the kernel and for
the region reserved for crash kernel. Note that on userspace
the device tree is used to determine the system's memory
layout so the "System RAM" on /proc/iomem is ignored. I just
put it there for compatibility with other archs.

I tested this on riscv64 qemu and works as expected, you may
test it by triggering a crash through /proc/sysrq_trigger:

echo c > /proc/sysrq_trigger

Signed-off-by: Nick Kossifidis <mick@ics.forth.gr>
---
 arch/riscv/include/asm/kexec.h      | 19 ++++---
 arch/riscv/include/uapi/asm/elf.h   |  6 +++
 arch/riscv/kernel/Makefile          |  2 +-
 arch/riscv/kernel/crash_save_regs.S | 56 +++++++++++++++++++++
 arch/riscv/kernel/kexec_relocate.S  | 61 +++++++++++++++++++++-
 arch/riscv/kernel/machine_kexec.c   | 31 +++++++-----
 arch/riscv/kernel/setup.c           | 50 ++++++++++++++++++
 arch/riscv/mm/init.c                | 78 +++++++++++++++++++++++++++++
 8 files changed, 282 insertions(+), 21 deletions(-)
 create mode 100644 arch/riscv/kernel/crash_save_regs.S

diff --git a/arch/riscv/include/asm/kexec.h b/arch/riscv/include/asm/kexec.h
index edff8a84a..5bfb3431f 100644
--- a/arch/riscv/include/asm/kexec.h
+++ b/arch/riscv/include/asm/kexec.h
@@ -21,11 +21,16 @@
 
 #define KEXEC_ARCH KEXEC_ARCH_RISCV
 
+extern void riscv_crash_save_regs(struct pt_regs *newregs);
+
 static inline void
 crash_setup_regs(struct pt_regs *newregs,
 		 struct pt_regs *oldregs)
 {
-	/* Dummy implementation for now */
+	if (oldregs)
+		memcpy(newregs, oldregs, sizeof(struct pt_regs));
+	else
+		riscv_crash_save_regs(newregs);
 }
 
 
@@ -38,10 +43,12 @@ struct kimage_arch {
 const extern unsigned char riscv_kexec_relocate[];
 const extern unsigned int riscv_kexec_relocate_size;
 
-typedef void (*riscv_kexec_do_relocate)(unsigned long first_ind_entry,
-					unsigned long jump_addr,
-					unsigned long fdt_addr,
-					unsigned long hartid,
-					unsigned long va_pa_off);
+typedef void (*riscv_kexec_method)(unsigned long first_ind_entry,
+				   unsigned long jump_addr,
+				   unsigned long fdt_addr,
+				   unsigned long hartid,
+				   unsigned long va_pa_off);
+
+extern riscv_kexec_method riscv_kexec_norelocate;
 
 #endif
diff --git a/arch/riscv/include/uapi/asm/elf.h b/arch/riscv/include/uapi/asm/elf.h
index d696d6610..5b19f5547 100644
--- a/arch/riscv/include/uapi/asm/elf.h
+++ b/arch/riscv/include/uapi/asm/elf.h
@@ -19,6 +19,12 @@ typedef unsigned long elf_greg_t;
 typedef struct user_regs_struct elf_gregset_t;
 #define ELF_NGREG (sizeof(elf_gregset_t) / sizeof(elf_greg_t))
 
+#define ELF_CORE_COPY_REGS(dest, regs)			\
+do {							\
+	*(struct user_regs_struct *)&(dest) =		\
+		*(struct user_regs_struct *)regs;	\
+} while (0);
+
 /* We don't support f without d, or q.  */
 typedef __u64 elf_fpreg_t;
 typedef union __riscv_fp_state elf_fpregset_t;
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 28dccbbe6..65f6c9f1d 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -51,6 +51,6 @@ ifeq ($(CONFIG_RISCV_SBI), y)
 obj-$(CONFIG_SMP) += cpu_ops_sbi.o
 endif
 obj-$(CONFIG_HOTPLUG_CPU)	+= cpu-hotplug.o
-obj-${CONFIG_KEXEC}		+= kexec_relocate.o machine_kexec.o
+obj-${CONFIG_KEXEC}		+= kexec_relocate.o crash_save_regs.o machine_kexec.o
 
 clean:
diff --git a/arch/riscv/kernel/crash_save_regs.S b/arch/riscv/kernel/crash_save_regs.S
new file mode 100644
index 000000000..ce5948097
--- /dev/null
+++ b/arch/riscv/kernel/crash_save_regs.S
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 FORTH-ICS/CARV
+ *  Nick Kossifidis <mick@ics.forth.gr>
+ */
+
+#include <asm/asm.h>    	/* For RISCV_* and REG_* macros */
+#include <asm/csr.h>		/* For CSR_* macros */
+#include <asm/asm-offsets.h>	/* For offsets on pt_regs */
+#include <linux/linkage.h>	/* For SYM_* macros */
+
+.section ".text"
+SYM_CODE_START(riscv_crash_save_regs)
+	REG_S ra,  PT_RA(a0)	/* x1 */
+	REG_S sp,  PT_SP(a0)	/* x2 */
+	REG_S gp,  PT_GP(a0)	/* x3 */
+	REG_S tp,  PT_TP(a0)	/* x4 */
+	REG_S t0,  PT_T0(a0)	/* x5 */
+	REG_S t1,  PT_T1(a0)	/* x6 */
+	REG_S t2,  PT_T2(a0)	/* x7 */
+	REG_S s0,  PT_S0(a0)	/* x8/fp */
+	REG_S s1,  PT_S1(a0)	/* x9 */
+	REG_S a0,  PT_A0(a0)	/* x10 */
+	REG_S a1,  PT_A1(a0)	/* x11 */
+	REG_S a2,  PT_A2(a0)	/* x12 */
+	REG_S a3,  PT_A3(a0)	/* x13 */
+	REG_S a4,  PT_A4(a0)	/* x14 */
+	REG_S a5,  PT_A5(a0)	/* x15 */
+	REG_S a6,  PT_A6(a0)	/* x16 */
+	REG_S a7,  PT_A7(a0)	/* x17 */
+	REG_S s2,  PT_S2(a0)	/* x18 */
+	REG_S s3,  PT_S3(a0)	/* x19 */
+	REG_S s4,  PT_S4(a0)	/* x20 */
+	REG_S s5,  PT_S5(a0)	/* x21 */
+	REG_S s6,  PT_S6(a0)	/* x22 */
+	REG_S s7,  PT_S7(a0)	/* x23 */
+	REG_S s8,  PT_S8(a0)	/* x24 */
+	REG_S s9,  PT_S9(a0)	/* x25 */
+	REG_S s10, PT_S10(a0)	/* x26 */
+	REG_S s11, PT_S11(a0)	/* x27 */
+	REG_S t3,  PT_T3(a0)	/* x28 */
+	REG_S t4,  PT_T4(a0)	/* x29 */
+	REG_S t5,  PT_T5(a0)	/* x30 */
+	REG_S t6,  PT_T6(a0)	/* x31 */
+
+	csrr t1, CSR_STATUS
+	csrr t2, CSR_EPC
+	csrr t3, CSR_TVAL
+	csrr t4, CSR_CAUSE
+
+	REG_S t1, PT_STATUS(a0)
+	REG_S t2, PT_EPC(a0)
+	REG_S t3, PT_BADADDR(a0)
+	REG_S t4, PT_CAUSE(a0)
+	ret
+SYM_CODE_END(riscv_crash_save_regs)
diff --git a/arch/riscv/kernel/kexec_relocate.S b/arch/riscv/kernel/kexec_relocate.S
index d26e38157..aa4a9a95c 100644
--- a/arch/riscv/kernel/kexec_relocate.S
+++ b/arch/riscv/kernel/kexec_relocate.S
@@ -152,7 +152,66 @@ SYM_CODE_START(riscv_kexec_relocate)
 SYM_CODE_END(riscv_kexec_relocate)
 riscv_kexec_relocate_end:
 
-	.section ".rodata"
+
+/* Used for jumping to crashkernel */
+.section ".text"
+SYM_CODE_START(riscv_kexec_norelocate)
+	/*
+	 * s0: (const) Phys address to jump to
+	 * s1: (const) Phys address of the FDT image
+	 * s2: (const) The hartid of the current hart
+	 */
+	mv	s0, a1
+	mv	s1, a2
+	mv	s2, a3
+
+	/* Disable / cleanup interrupts */
+	csrw	sie, zero
+	csrw	sip, zero
+
+	/* Switch to physical addressing */
+	csrw	sptbr, zero
+
+	/* Pass the arguments to the next kernel  / Cleanup*/
+	mv	a0, s2
+	mv	a1, s1
+	mv	a2, s0
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
+	jalr	zero, a2, 0
+SYM_CODE_END(riscv_kexec_norelocate)
+
+.section ".rodata"
 SYM_DATA(riscv_kexec_relocate_size,
 	.long riscv_kexec_relocate_end - riscv_kexec_relocate)
 
diff --git a/arch/riscv/kernel/machine_kexec.c b/arch/riscv/kernel/machine_kexec.c
index b9fc735c3..14e9622eb 100644
--- a/arch/riscv/kernel/machine_kexec.c
+++ b/arch/riscv/kernel/machine_kexec.c
@@ -58,11 +58,6 @@ machine_kexec_prepare(struct kimage *image)
 
 	kexec_image_info(image);
 
-	if (image->type == KEXEC_TYPE_CRASH) {
-		pr_warn("Loading a crash kernel is unsupported for now.\n");
-		return -EINVAL;
-	}
-
 	/* Find the Flattened Device Tree and save its physical address */
 	for (i = 0; i < image->nr_segments; i++) {
 		if (image->segment[i].memsz <= sizeof(fdt))
@@ -84,12 +79,14 @@ machine_kexec_prepare(struct kimage *image)
 	}
 
 	/* Copy the assembler code for relocation to the control page */
-	control_code_buffer = page_address(image->control_code_page);
-	memcpy(control_code_buffer, riscv_kexec_relocate,
-		riscv_kexec_relocate_size);
+	if (image->type != KEXEC_TYPE_CRASH) {
+		control_code_buffer = page_address(image->control_code_page);
+		memcpy(control_code_buffer, riscv_kexec_relocate,
+		       riscv_kexec_relocate_size);
 
-	/* Mark the control page executable */
-	set_memory_x((unsigned long) control_code_buffer, 1);
+		/* Mark the control page executable */
+		set_memory_x((unsigned long) control_code_buffer, 1);
+	}
 
 #ifdef CONFIG_SMP
 	/*
@@ -149,6 +146,9 @@ void machine_shutdown(void)
 void
 machine_crash_shutdown(struct pt_regs *regs)
 {
+	machine_shutdown();
+	crash_save_cpu(regs, smp_processor_id());
+	pr_info("Starting crashdump kernel...\n");
 }
 
 /**
@@ -171,7 +171,12 @@ machine_kexec(struct kimage *image)
 	unsigned long this_hart_id = raw_smp_processor_id();
 	unsigned long fdt_addr = internal->fdt_addr;
 	void *control_code_buffer = page_address(image->control_code_page);
-	riscv_kexec_do_relocate do_relocate = control_code_buffer;
+	riscv_kexec_method kexec_method = NULL;
+
+	if (image->type != KEXEC_TYPE_CRASH)
+		kexec_method = control_code_buffer;
+	else
+		kexec_method = (riscv_kexec_method) &riscv_kexec_norelocate;
 
 	pr_notice("Will call new kernel at %08lx from hart id %lx\n",
 		  jump_addr, this_hart_id);
@@ -182,7 +187,7 @@ machine_kexec(struct kimage *image)
 
 	/* Jump to the relocation code */
 	pr_notice("Bye...\n");
-	do_relocate(first_ind_entry, jump_addr, fdt_addr,
-		    this_hart_id, va_pa_offset);
+	kexec_method(first_ind_entry, jump_addr, fdt_addr,
+		     this_hart_id, va_pa_offset);
 	unreachable();
 }
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 3e528312f..52d057bde 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -4,6 +4,8 @@
  *  Chen Liqin <liqin.chen@sunplusct.com>
  *  Lennox Wu <lennox.wu@sunplusct.com>
  * Copyright (C) 2012 Regents of the University of California
+ * Copyright (C) 2020 FORTH-ICS/CARV
+ *  Nick Kossifidis <mick@ics.forth.gr>
  */
 
 #include <linux/init.h>
@@ -17,6 +19,7 @@
 #include <linux/sched/task.h>
 #include <linux/swiotlb.h>
 #include <linux/smp.h>
+#include <linux/crash_dump.h>
 
 #include <asm/clint.h>
 #include <asm/cpu_ops.h>
@@ -50,6 +53,52 @@ atomic_t hart_lottery __section(.sdata);
 unsigned long boot_cpu_hartid;
 static DEFINE_PER_CPU(struct cpu, cpu_devices);
 
+/*
+ * Place kernel memory regions on the resource tree so that
+ * userspace tools such as kexec-tools can retrieve them from
+ * /proc/iomem. While there also add "System RAM" region for
+ * compatibility with other archs.
+ */
+static struct resource sysram_res = { .name = "System RAM", };
+static struct resource code_res = { .name = "Kernel code", };
+static struct resource data_res = { .name = "Kernel data", };
+static struct resource rodata_res = { .name = "Kernel rodata", };
+static struct resource bss_res = { .name = "Kernel bss", };
+
+static void __init kdump_resource_init(void)
+{
+	sysram_res.start = memblock_start_of_DRAM();
+	sysram_res.end = memblock_end_of_DRAM() - 1;
+	sysram_res.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM;
+	insert_resource(&iomem_resource, &sysram_res);
+
+	code_res.start = __pa_symbol(_text);
+	code_res.end = __pa_symbol(_etext) - 1;
+	code_res.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM;
+	insert_resource(&sysram_res, &code_res);
+
+	rodata_res.start = __pa_symbol(__start_rodata);
+	rodata_res.end = __pa_symbol(__end_rodata) - 1;
+	rodata_res.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM;
+	insert_resource(&sysram_res, &rodata_res);
+
+	data_res.start = __pa_symbol(_data);
+	data_res.end = __pa_symbol(_edata) - 1;
+	data_res.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM;
+	insert_resource(&sysram_res, &data_res);
+
+	bss_res.start = __pa_symbol(__bss_start);
+	bss_res.end = __pa_symbol(__bss_stop) - 1;
+	bss_res.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM;
+	insert_resource(&sysram_res, &bss_res);
+
+#ifdef CONFIG_KEXEC_CORE
+	/* Add crash kernel region if present */
+	if (crashk_res.end > crashk_res.start)
+		insert_resource(&sysram_res, &crashk_res);
+#endif
+}
+
 void __init parse_dtb(void)
 {
 	if (early_init_dt_scan(dtb_early_va))
@@ -75,6 +124,7 @@ void __init setup_arch(char **cmdline_p)
 
 	setup_bootmem();
 	paging_init();
+	kdump_resource_init();
 #if IS_ENABLED(CONFIG_BUILTIN_DTB)
 	unflatten_and_copy_device_tree();
 #else
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 9d7dfc986..1c4461590 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -2,6 +2,8 @@
 /*
  * Copyright (C) 2012 Regents of the University of California
  * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ * Copyright (C) 2020 FORTH-ICS/CARV
+ *  Nick Kossifidis <mick@ics.forth.gr>
  */
 
 #include <linux/init.h>
@@ -13,6 +15,7 @@
 #include <linux/of_fdt.h>
 #include <linux/libfdt.h>
 #include <linux/set_memory.h>
+#include <linux/crash_dump.h>
 
 #include <asm/fixmap.h>
 #include <asm/tlbflush.h>
@@ -541,6 +544,78 @@ void mark_rodata_ro(void)
 }
 #endif
 
+#ifdef CONFIG_KEXEC_CORE
+/*
+ * reserve_crashkernel() - reserves memory for crash kernel
+ *
+ * This function reserves memory area given in "crashkernel=" kernel command
+ * line parameter. The memory reserved is used by dump capture kernel when
+ * primary kernel is crashing.
+ */
+static void __init reserve_crashkernel(void)
+{
+	unsigned long long crash_base = 0;
+	unsigned long long crash_size = 0;
+	unsigned long start_pfn = find_min_pfn_with_active_regions();
+	unsigned long search_start = start_pfn << PAGE_SHIFT;
+	unsigned long search_end = (unsigned long) PFN_PHYS(max_low_pfn) - 1;
+
+	int ret = 0;
+
+	ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
+				&crash_size, &crash_base);
+	if (ret || !crash_size)
+		return;
+
+	crash_size = PAGE_ALIGN(crash_size);
+
+	if (crash_base == 0) {
+		/*
+		 * Current riscv boot protocol requires 2MB alignment for
+		 * RV64 and 4MB alignment for RV32 (hugepage size)
+		 */
+		crash_base = memblock_find_in_range(search_start, search_end,
+#ifdef CONFIG_64BIT
+						    crash_size, SZ_2M);
+#else
+						    crash_size, SZ_4M);
+#endif
+		if (crash_base == 0) {
+			pr_warn("crashkernel: couldn't allocate %lldKB\n",
+				crash_size >> 10);
+			return;
+		}
+	} else {
+		/* User specifies base address explicitly. */
+		if (!memblock_is_region_memory(crash_base, crash_size)) {
+			pr_warn("crashkernel: requested region is not memory\n");
+			return;
+		}
+
+		if (memblock_is_region_reserved(crash_base, crash_size)) {
+			pr_warn("crashkernel: requested region is reserved\n");
+			return;
+		}
+
+#ifdef CONFIG_64BIT
+		if (!IS_ALIGNED(crash_base, SZ_2M)) {
+#else
+		if (!IS_ALIGNED(crash_base, SZ_4M)) {
+#endif
+			pr_warn("crashkernel: requested region is misaligned\n");
+			return;
+		}
+	}
+	memblock_reserve(crash_base, crash_size);
+
+	pr_info("crashkernel: reserved 0x%016llx - 0x%016llx (%lld MB)\n",
+		crash_base, crash_base + crash_size, crash_size >> 20);
+
+	crashk_res.start = crash_base;
+	crashk_res.end = crash_base + crash_size - 1;
+}
+#endif
+
 void __init paging_init(void)
 {
 	setup_vm_final();
@@ -548,6 +623,9 @@ void __init paging_init(void)
 	sparse_init();
 	setup_zero_page();
 	zone_sizes_init();
+#ifdef CONFIG_KEXEC_CORE
+	reserve_crashkernel();
+#endif
 }
 
 #ifdef CONFIG_SPARSEMEM_VMEMMAP
-- 
2.24.1


