Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAAEB7518
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 10:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/2dCKeFQGCCAphb6phUL7eWRgfhEWEAIHNAEM8wIev4=; b=Zion31+tUUB6HM
	so3pWLgaWuHwEv17uz9kTjm+ijPug6iAA7WND0xaaySoepM6yWBT3xU6zVDwxa8cIN35colVSPIcz
	YbYinw/C+Mem8tixLIIEPZzBTWIWuwpppm12FrFOajdKv8+p9vjmiZaIxbtH1XixW01AbDbBLpJSS
	ymA9b/lS+twn4XXzWyH4Vj/qP7EHXhErc/QNVmivcr3GkbcIq/2uQxikHt8jD3C/Lkh6WmnArb2A+
	ejfnuYy4V6dkPLxsb9Knx9qDXKUQbxvwHYsnpUOIMehbVnjBIwLVmQis9xgz3WYw+X4ahN2bhXWj7
	n4BuHq8VL3+A9xvD/wGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArnh-0007LY-Dd; Thu, 19 Sep 2019 08:28:29 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArm0-00073G-WA
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 08:26:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id c17so1456744pgg.4
 for <linux-riscv@lists.infradead.org>; Thu, 19 Sep 2019 01:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=MCwBjnixuUWOdT5fxsKT+f8JhhCS0sBjKNnRV9H9MJA=;
 b=OuLvyHd6/TcRmM/yhXKnQu9L70XGf9vMPzszHhQvp+IG8/FbJ6c+Ri5nihn63Juo/+
 iYVkPo11QfvxV+vdIpvwe2iFH+DJN43oSEfqlM1wYcquoGCRLE89YfcMXLfjCRlPkUba
 99Fn30XrRHF3X4M7t8su2AZxEsOEUBvBbYYJJRlYZMqHquSj8biDVXxpRns0N0mpqXLA
 oACzcVpG0F9pUb96mxpZTnmM3HtkRM3MzN23gbXasipKYz1H/Eovugo40HAMs8wuIzIf
 M8e9DRIkvQzk0nzEuBpoZArrIJxXqHqjWeOC4jY2JT9jMZ+EDtTTrSMItTX3nPP1Our1
 vuOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=MCwBjnixuUWOdT5fxsKT+f8JhhCS0sBjKNnRV9H9MJA=;
 b=Ngiy0dMr3PfGnJw17cescDgF0HospJLvjltW4jwCVPFm9dMkpFlu8veEyfeqPL1KtR
 T9bvpihNAzwNHP/IH3YhwJ5oko4KKIDAg+CPPgvdZCUBPIXR2sUNdVFQoUz9GBht6ChA
 YT2teL3j3Nd++bu3YzGiOX537TC+nnNAskIS96Ml0NMJ9LbwD/HFKN/pKFLpRW4yoTU7
 ZrD2paiJB4pVA9W9mfIs0IoVT70LF4KDwaPcqC69pZHbGlUdR0jGL3f6KllxcMRgKst3
 XdRabUdi6x0oEz4LsWmOfWrx4lGucQQ7Z249CsCySSPmCJgZm48eTm/Z+SVPMzCHHG/I
 4ROA==
X-Gm-Message-State: APjAAAVXGNZQ0/B0gp0F+C0fV5htGjh8Qsa87mV1ILaOmF+S6pu2Dkkj
 3OnRIbE/mVZVEsmNEoeX82542c2ubXEoLg==
X-Google-Smtp-Source: APXvYqwqfSqqvRcRsVkwtRTLXm66Op8m/Z7cgMgg4zGfzmMTSRKnPSSDqYOlCLSZpOD8/asN+iKHwA==
X-Received: by 2002:a17:90a:8001:: with SMTP id
 b1mr2459505pjn.56.1568881602847; 
 Thu, 19 Sep 2019 01:26:42 -0700 (PDT)
Received: from localhost (57.sub-174-194-139.myvzw.com. [174.194.139.57])
 by smtp.gmail.com with ESMTPSA id v4sm10625186pff.181.2019.09.19.01.26.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 01:26:42 -0700 (PDT)
Date: Thu, 19 Sep 2019 01:26:38 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: resolve most warnings from sparse 
Message-ID: <alpine.DEB.2.21.9999.1909190125400.13510@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_012645_103989_C7813666 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Resolve most of the warnings emitted by sparse.  The objective here is
to keep arch/riscv as clean as possible with regards to sparse warnings,
and to maintain this bar for subsequent patches.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/entry.h       | 29 ++++++++++++++++++++++++++++
 arch/riscv/include/asm/head.h        | 21 ++++++++++++++++++++
 arch/riscv/include/asm/irq.h         |  6 ++++++
 arch/riscv/include/asm/pgtable.h     |  3 +++
 arch/riscv/include/asm/processor.h   |  5 +++++
 arch/riscv/include/asm/ptrace.h      |  2 ++
 arch/riscv/include/asm/smp.h         |  2 ++
 arch/riscv/include/asm/switch_to.h   |  1 +
 arch/riscv/include/asm/syscall.h     |  3 +++
 arch/riscv/include/asm/thread_info.h |  2 ++
 arch/riscv/kernel/cpufeature.c       |  1 +
 arch/riscv/kernel/module-sections.c  |  1 +
 arch/riscv/kernel/process.c          |  2 ++
 arch/riscv/kernel/reset.c            |  1 +
 arch/riscv/kernel/setup.c            |  1 +
 arch/riscv/kernel/signal.c           |  1 +
 arch/riscv/kernel/smp.c              |  4 ++++
 arch/riscv/kernel/smpboot.c          |  2 ++
 arch/riscv/kernel/stacktrace.c       |  4 ++--
 arch/riscv/kernel/syscall_table.c    |  1 +
 arch/riscv/kernel/time.c             |  2 +-
 arch/riscv/kernel/traps.c            |  1 +
 arch/riscv/kernel/vdso.c             |  3 ++-
 arch/riscv/mm/context.c              |  1 +
 arch/riscv/mm/fault.c                |  1 +
 arch/riscv/mm/init.c                 | 16 +++++++--------
 arch/riscv/mm/sifive_l2_cache.c      |  2 +-
 27 files changed, 105 insertions(+), 13 deletions(-)
 create mode 100644 arch/riscv/include/asm/entry.h
 create mode 100644 arch/riscv/include/asm/head.h

diff --git a/arch/riscv/include/asm/entry.h b/arch/riscv/include/asm/entry.h
new file mode 100644
index 000000000000..73bfcda993d0
--- /dev/null
+++ b/arch/riscv/include/asm/entry.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 SiFive, Inc.
+ */
+#ifndef __ASM_ENTRY_H
+#define __ASM_ENTRY_H
+
+#include <linux/linkage.h>
+#include <linux/init.h>
+
+asmlinkage void do_trap_unknown(struct pt_regs *regs);
+asmlinkage void do_trap_insn_misaligned(struct pt_regs *regs);
+asmlinkage void do_trap_insn_fault(struct pt_regs *regs);
+asmlinkage void do_trap_insn_illegal(struct pt_regs *regs);
+asmlinkage void do_trap_load_misaligned(struct pt_regs *regs);
+asmlinkage void do_trap_load_fault(struct pt_regs *regs);
+asmlinkage void do_trap_store_misaligned(struct pt_regs *regs);
+asmlinkage void do_trap_store_fault(struct pt_regs *regs);
+asmlinkage void do_trap_ecall_u(struct pt_regs *regs);
+asmlinkage void do_trap_ecall_s(struct pt_regs *regs);
+asmlinkage void do_trap_ecall_m(struct pt_regs *regs);
+asmlinkage void do_trap_break(struct pt_regs *regs);
+
+asmlinkage void do_notify_resume(struct pt_regs *regs,
+				 unsigned long thread_info_flags);
+
+void __init trap_init(void);
+
+#endif /* __ASM__H */
diff --git a/arch/riscv/include/asm/head.h b/arch/riscv/include/asm/head.h
new file mode 100644
index 000000000000..105fb0496b24
--- /dev/null
+++ b/arch/riscv/include/asm/head.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 SiFive, Inc.
+ */
+#ifndef __ASM_HEAD_H
+#define __ASM_HEAD_H
+
+#include <linux/linkage.h>
+#include <linux/init.h>
+
+extern atomic_t hart_lottery;
+
+asmlinkage void do_page_fault(struct pt_regs *regs);
+asmlinkage void __init setup_vm(uintptr_t dtb_pa);
+
+extern void *__cpu_up_stack_pointer[];
+extern void *__cpu_up_task_pointer[];
+
+void __init parse_dtb(void);
+
+#endif /* __ASM_HEAD_H */
diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
index 75576424c0f7..f0e9df6e6049 100644
--- a/arch/riscv/include/asm/irq.h
+++ b/arch/riscv/include/asm/irq.h
@@ -7,11 +7,17 @@
 #ifndef _ASM_RISCV_IRQ_H
 #define _ASM_RISCV_IRQ_H
 
+#include <linux/interrupt.h>
+#include <linux/linkage.h>
+
 #define NR_IRQS         0
 
 void riscv_timer_interrupt(void);
 void riscv_software_interrupt(void);
 
+asmlinkage void do_IRQ(struct pt_regs *regs);
+void __init init_IRQ(void);
+
 #include <asm-generic/irq.h>
 
 #endif /* _ASM_RISCV_IRQ_H */
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 4f4162d90586..1be4f70ab266 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -61,6 +61,9 @@
 
 #define PAGE_TABLE		__pgprot(_PAGE_TABLE)
 
+extern pgd_t swapper_pg_dir[];
+extern pgd_t trampoline_pg_dir[];
+extern pgd_t early_pg_dir[];
 extern pgd_t swapper_pg_dir[];
 
 /* MAP_PRIVATE permissions: xwr (copy-on-write) */
diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index f539149d04c2..f4fb93a2f282 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -9,6 +9,7 @@
 #include <linux/const.h>
 
 #include <asm/ptrace.h>
+#include <asm/processor.h>
 
 /*
  * This decides where the kernel will search for a free chunk of vm
@@ -78,6 +79,10 @@ int riscv_of_processor_hartid(struct device_node *node);
 
 extern void riscv_fill_hwcap(void);
 
+extern const struct seq_operations cpuinfo_op;
+
+void time_init(void);
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* _ASM_RISCV_PROCESSOR_H */
diff --git a/arch/riscv/include/asm/ptrace.h b/arch/riscv/include/asm/ptrace.h
index d48d1e13973c..7efd655acd55 100644
--- a/arch/riscv/include/asm/ptrace.h
+++ b/arch/riscv/include/asm/ptrace.h
@@ -101,6 +101,8 @@ static inline unsigned long regs_return_value(struct pt_regs *regs)
 	return regs->a0;
 }
 
+void show_regs(struct pt_regs *);
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* _ASM_RISCV_PTRACE_H */
diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
index a83451d73a4e..e8e44360af85 100644
--- a/arch/riscv/include/asm/smp.h
+++ b/arch/riscv/include/asm/smp.h
@@ -15,6 +15,8 @@
 struct seq_file;
 extern unsigned long boot_cpu_hartid;
 
+extern asmlinkage void __init smp_callin(void);
+
 #ifdef CONFIG_SMP
 /*
  * Mapping between linux logical cpu index and hartid.
diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index f0227bdce0f0..ee4f0ac62c9d 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -6,6 +6,7 @@
 #ifndef _ASM_RISCV_SWITCH_TO_H
 #define _ASM_RISCV_SWITCH_TO_H
 
+#include <linux/sched/task_stack.h>
 #include <asm/processor.h>
 #include <asm/ptrace.h>
 #include <asm/csr.h>
diff --git a/arch/riscv/include/asm/syscall.h b/arch/riscv/include/asm/syscall.h
index 42347d0981e7..640a88918632 100644
--- a/arch/riscv/include/asm/syscall.h
+++ b/arch/riscv/include/asm/syscall.h
@@ -89,4 +89,7 @@ static inline int syscall_get_arch(struct task_struct *task)
 #endif
 }
 
+void do_syscall_trace_enter(struct pt_regs *regs);
+void do_syscall_trace_exit(struct pt_regs *regs);
+
 #endif	/* _ASM_RISCV_SYSCALL_H */
diff --git a/arch/riscv/include/asm/thread_info.h b/arch/riscv/include/asm/thread_info.h
index 905372d7eeb8..d0d980d99019 100644
--- a/arch/riscv/include/asm/thread_info.h
+++ b/arch/riscv/include/asm/thread_info.h
@@ -58,6 +58,8 @@ struct thread_info {
 	.addr_limit	= KERNEL_DS,		\
 }
 
+extern int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src);
+
 #endif /* !__ASSEMBLY__ */
 
 /*
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index b1ade9a49347..a5ad00043104 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -10,6 +10,7 @@
 #include <asm/processor.h>
 #include <asm/hwcap.h>
 #include <asm/smp.h>
+#include <asm/switch_to.h>
 
 unsigned long elf_hwcap __read_mostly;
 #ifdef CONFIG_FPU
diff --git a/arch/riscv/kernel/module-sections.c b/arch/riscv/kernel/module-sections.c
index c9ae48333114..e264e59e596e 100644
--- a/arch/riscv/kernel/module-sections.c
+++ b/arch/riscv/kernel/module-sections.c
@@ -8,6 +8,7 @@
 #include <linux/elf.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/moduleloader.h>
 
 unsigned long module_emit_got_entry(struct module *mod, unsigned long val)
 {
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index fb3a082362eb..85e3c39bb60b 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -7,6 +7,7 @@
  * Copyright (C) 2017 SiFive
  */
 
+#include <linux/cpu.h>
 #include <linux/kernel.h>
 #include <linux/sched.h>
 #include <linux/sched/task_stack.h>
@@ -19,6 +20,7 @@
 #include <asm/csr.h>
 #include <asm/string.h>
 #include <asm/switch_to.h>
+#include <asm/thread_info.h>
 
 extern asmlinkage void ret_from_fork(void);
 extern asmlinkage void ret_from_kernel_thread(void);
diff --git a/arch/riscv/kernel/reset.c b/arch/riscv/kernel/reset.c
index d0fe623bfb8f..aa56bb135ec4 100644
--- a/arch/riscv/kernel/reset.c
+++ b/arch/riscv/kernel/reset.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/reboot.h>
+#include <linux/pm.h>
 #include <asm/sbi.h>
 
 static void default_power_off(void)
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index a990a6cb184f..aa60ac527be5 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -17,6 +17,7 @@
 #include <linux/sched/task.h>
 #include <linux/swiotlb.h>
 
+#include <asm/head.h>
 #include <asm/setup.h>
 #include <asm/sections.h>
 #include <asm/pgtable.h>
diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index b14d7647d800..0974b6efc888 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -12,6 +12,7 @@
 #include <linux/tracehook.h>
 #include <linux/linkage.h>
 
+#include <asm/entry.h>
 #include <asm/ucontext.h>
 #include <asm/vdso.h>
 #include <asm/switch_to.h>
diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 3836760d7aaf..d70e3c0ee983 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -8,7 +8,9 @@
  * Copyright (C) 2017 SiFive
  */
 
+#include <linux/cpu.h>
 #include <linux/interrupt.h>
+#include <linux/profile.h>
 #include <linux/smp.h>
 #include <linux/sched.h>
 #include <linux/seq_file.h>
@@ -66,11 +68,13 @@ bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
 	return phys_id == cpuid_to_hartid_map(cpu);
 }
 
+#ifdef CONFIG_PROFILING
 /* Unsupported */
 int setup_profiling_timer(unsigned int multiplier)
 {
 	return -EINVAL;
 }
+#endif
 
 static void ipi_stop(void)
 {
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 18ae6da5115e..2b81e4404a5d 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -24,11 +24,13 @@
 #include <linux/of.h>
 #include <linux/sched/task_stack.h>
 #include <linux/sched/mm.h>
+#include <asm/head.h>
 #include <asm/irq.h>
 #include <asm/mmu_context.h>
 #include <asm/tlbflush.h>
 #include <asm/sections.h>
 #include <asm/sbi.h>
+#include <asm/smp.h>
 
 void *__cpu_up_stack_pointer[NR_CPUS];
 void *__cpu_up_task_pointer[NR_CPUS];
diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
index 0940681d2f68..42193cf161e4 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -19,8 +19,8 @@ struct stackframe {
 	unsigned long ra;
 };
 
-void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
-			     bool (*fn)(unsigned long, void *), void *arg)
+static void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
+				    bool (*fn)(unsigned long, void *), void *arg)
 {
 	unsigned long fp, sp, pc;
 
diff --git a/arch/riscv/kernel/syscall_table.c b/arch/riscv/kernel/syscall_table.c
index e5dd52d8f633..f1ead9df96ca 100644
--- a/arch/riscv/kernel/syscall_table.c
+++ b/arch/riscv/kernel/syscall_table.c
@@ -8,6 +8,7 @@
 #include <linux/syscalls.h>
 #include <asm-generic/syscalls.h>
 #include <asm/vdso.h>
+#include <asm/syscall.h>
 
 #undef __SYSCALL
 #define __SYSCALL(nr, call)	[nr] = (call),
diff --git a/arch/riscv/kernel/time.c b/arch/riscv/kernel/time.c
index 541a2b885814..517d2153a933 100644
--- a/arch/riscv/kernel/time.c
+++ b/arch/riscv/kernel/time.c
@@ -6,7 +6,7 @@
 
 #include <linux/clocksource.h>
 #include <linux/delay.h>
-#include <asm/sbi.h>
+#include <asm/processor.h>
 
 unsigned long riscv_timebase;
 
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 424eb72d56b1..091d2b2e8b51 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -18,6 +18,7 @@
 #include <asm/processor.h>
 #include <asm/ptrace.h>
 #include <asm/csr.h>
+#include <asm/entry.h>
 
 int show_unhandled_signals = 1;
 
diff --git a/arch/riscv/kernel/vdso.c b/arch/riscv/kernel/vdso.c
index c9c21e0d5641..e740e5dc8099 100644
--- a/arch/riscv/kernel/vdso.c
+++ b/arch/riscv/kernel/vdso.c
@@ -9,6 +9,7 @@
 #include <linux/mm.h>
 #include <linux/slab.h>
 #include <linux/binfmts.h>
+#include <linux/elf.h>
 #include <linux/err.h>
 
 #include <asm/vdso.h>
@@ -25,7 +26,7 @@ static union {
 	struct vdso_data	data;
 	u8			page[PAGE_SIZE];
 } vdso_data_store __page_aligned_data;
-struct vdso_data *vdso_data = &vdso_data_store.data;
+static struct vdso_data *vdso_data = &vdso_data_store.data;
 
 static int __init vdso_init(void)
 {
diff --git a/arch/riscv/mm/context.c b/arch/riscv/mm/context.c
index beeb5d7f92ea..ca66d44156b6 100644
--- a/arch/riscv/mm/context.c
+++ b/arch/riscv/mm/context.c
@@ -7,6 +7,7 @@
 #include <linux/mm.h>
 #include <asm/tlbflush.h>
 #include <asm/cacheflush.h>
+#include <asm/mmu_context.h>
 
 /*
  * When necessary, performs a deferred icache flush for the given MM context,
diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
index 96add1427a75..56cc6674bc9f 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -14,6 +14,7 @@
 #include <linux/signal.h>
 #include <linux/uaccess.h>
 
+#include <asm/head.h>
 #include <asm/pgalloc.h>
 #include <asm/ptrace.h>
 #include <asm/tlbflush.h>
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index f0ba71304b6e..74546fcc3e4c 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -13,6 +13,7 @@
 #include <linux/of_fdt.h>
 
 #include <asm/fixmap.h>
+#include <asm/head.h>
 #include <asm/tlbflush.h>
 #include <asm/sections.h>
 #include <asm/pgtable.h>
@@ -37,7 +38,7 @@ static void __init zone_sizes_init(void)
 	free_area_init_nodes(max_zone_pfns);
 }
 
-void setup_zero_page(void)
+static void setup_zero_page(void)
 {
 	memset((void *)empty_zero_page, 0, PAGE_SIZE);
 }
@@ -140,7 +141,7 @@ EXPORT_SYMBOL(pfn_base);
 void *dtb_early_va;
 pgd_t swapper_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
 pgd_t trampoline_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
-pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
+static pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
 static bool mmu_enabled;
 
 #define MAX_EARLY_MAPPING_SIZE	SZ_128M
@@ -199,15 +200,15 @@ static void __init create_pte_mapping(pte_t *ptep,
 
 #ifndef __PAGETABLE_PMD_FOLDED
 
-pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
-pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
+static pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
+static pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
 
 #if MAX_EARLY_MAPPING_SIZE < PGDIR_SIZE
 #define NUM_EARLY_PMDS		1UL
 #else
 #define NUM_EARLY_PMDS		(1UL + MAX_EARLY_MAPPING_SIZE / PGDIR_SIZE)
 #endif
-pmd_t early_pmd[PTRS_PER_PMD * NUM_EARLY_PMDS] __initdata __aligned(PAGE_SIZE);
+static pmd_t early_pmd[PTRS_PER_PMD * NUM_EARLY_PMDS] __initdata __aligned(PAGE_SIZE);
 
 static pmd_t *__init get_pmd_virt(phys_addr_t pa)
 {
@@ -328,9 +329,8 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
  * for init.o in mm/Makefile.
  */
 
-#ifndef __riscv_cmodel_medany
-#error "setup_vm() is called from head.S before relocate so it should "
-	"not use absolute addressing."
+#if !defined(__riscv_cmodel_medany) && !defined(__CHECKER__)
+#error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
 #endif
 
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
diff --git a/arch/riscv/mm/sifive_l2_cache.c b/arch/riscv/mm/sifive_l2_cache.c
index 2e637ad71c05..a9ffff3277c7 100644
--- a/arch/riscv/mm/sifive_l2_cache.c
+++ b/arch/riscv/mm/sifive_l2_cache.c
@@ -142,7 +142,7 @@ static irqreturn_t l2_int_handler(int irq, void *device)
 	return IRQ_HANDLED;
 }
 
-int __init sifive_l2_init(void)
+static int __init sifive_l2_init(void)
 {
 	struct device_node *np;
 	struct resource res;
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
