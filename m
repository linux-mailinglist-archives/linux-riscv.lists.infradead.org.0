Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21578189391
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 02:12:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OwMmriRxzv8p3oJtfnGjETT/R2J5XzN9lxx7jWHSWE=; b=BNzXjml5yhMxSl
	FaNqPraGoPHho7d5ApggF2fQ0cA2HfVX8jZAflt3xQjpj4xlefTMTj0Xzxyuv2oxyn50RtGhCnJPi
	LB+rfLl+4l+iARvZfvOwIsN383kOqzdPTheS60hfyM6H4xVfxsILOABieBlqyB+QtDlmbFVteTDXI
	v5g6LlFN8MlLeTF50o3fYb7VC3V1qdGn30SakVQi8enqvRXl0T1MUnZ8M6lmRJBswyPeD23AclbW7
	/tNCV9713SZC3NW80t3jb6Wd7Ynhclv+ErX3mabYcDGtye8cGM95KT1A+CP3MxGYKNy+0wyidk9Yq
	7AKrQbQ/eS5Feud/3vIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENG1-0007Rm-3d; Wed, 18 Mar 2020 01:12:29 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENFe-0006um-RK
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 01:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584493927; x=1616029927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tPKIUvPrRM0YTzXmXxBH/vwESIM3PLnHx7sHtToL8Cc=;
 b=pVm/qJ6qThRA1v977Gf5LVIemjTWfFzG0TSp6ZnI1Ji0wn7+C3VVU/Xk
 qxQh/POsrDgJruDsrGzplViFf/m4QzgaJj53riwDQPsfUHn5Gws2mhjNr
 XIhe9IpEq8WzIHhG2z6jdOWs2qkAk5hEalWIkJ2E2mruHwPW8L+t4K+y6
 UKaqOq3q20CGJqzB9aHpNilA+mB18c8RRqihG/HUsaKTcwzTd8IYA2TD+
 S7y7lmhXfzYEa6r2xHUX+vmeHybx9pIMMmBKYEFjPkTLzf25oHW+BcuTw
 0Dv20GA2nksFTjxenq4aLcU+Ug6UooYk3hz9xhH1tPIGXZggkIQTQHkfu g==;
IronPort-SDR: MoFyoT6GkYjlK+awSAQVYa3jAJNhK1Z74xd6Fi6x8osP/mVJ/XH9s+RRb4Y9wg4BMTt3Ffi35M
 YqBEZv4Pien3j4B8sHLPmGoC7TgjmmLh2FGZnD99R5y5JwELNzd6MAQVBRGt1+JtB/T399i+12
 1z9jZsLkuy05VzEwT52ZpR6o1LnhTcGa5rZxo2vmLTiQgZZ/AWLLl35LgdfHaIXp/8JFsdNUcm
 XlfEEh8C9RyZD+FALDmI3BnwHQ1Et4D2H/cUj4j1Qg68VCS2aERCK3ajTblMntH/ibbEgUcmlX
 iGI=
X-IronPort-AV: E=Sophos;i="5.70,565,1574092800"; d="scan'208";a="134242162"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Mar 2020 09:12:00 +0800
IronPort-SDR: mKW53lGneL9CtZX2nIRL/tl2OshsR8+jtc6REyoChvI2yxFLTqP6/hYC5rnW3se3UKIwjx0BK5
 h9ZmYqy2lJmj2k7/cUEQIABKzfqmd3r4K5qZ28FGf5M+u7ooAqshhgHpq+KKU5LPbwoNAipQkS
 qt8BgIZakxK+LPURD7WOnKHexrIzOUjKehSWkZaWKcy197fEq+hnlNbuN68minQoy8LQX75CZf
 hjMoUhgK2hdWAMYit7eJEiaurVHzjoS+xdAziQfkZ/7dlNildDqcs25lbqrlOUBkv/fNpJgX7f
 XyKZnLEOw5BzJGGzOUcOBG9V
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 18:03:26 -0700
IronPort-SDR: IDO1oItmItfkBs4ru2vcCxSddF4r2S6P2maOTamJKutS0wJO7Pe2HyHNAfsD3M9p45CvS77/xJ
 8yfHbU7nrhjy8n/VxNi3r85WrxrN+nNCn2j1l/ppP4Ti68Clch3Wb0SIXtST2yAiwZStfR5P4b
 aErFmbvFerD8zo255+0XjiieEl2uJTaOlSwfcrMwdJDYzN/RnaKcdaOjfV7pQyHDD8aI4KsPI6
 JCmc2TFbB67u1c+2G95imrBQKtl6vfTjH+oa3XOyt2KRp4IfSfNB3PIEcRiiEHdTy7PPOmBgzX
 qGM=
WDCIronportException: Internal
Received: from mccorma-lt.ad.shared (HELO yoda.hgst.com) ([10.86.54.125])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Mar 2020 18:11:59 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v11 07/11] RISC-V: Add cpu_ops and modify default booting
 method
Date: Tue, 17 Mar 2020 18:11:40 -0700
Message-Id: <20200318011144.91532-8-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200318011144.91532-1-atish.patra@wdc.com>
References: <20200318011144.91532-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_181206_951938_41B97260 
X-CRM114-Status: GOOD (  23.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zong.li@sifive.com>,
 Nick Hu <nickhu@andestech.com>, Vincent Chen <vincent.chen@sifive.com>,
 Anup Patel <anup@brainfault.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, all non-booting harts start booting after the booting hart
updates the per-hart stack pointer. This is done in a way that, it's
difficult to implement any other booting method without breaking the
backward compatibility.

Define a cpu_ops method that allows to introduce other booting methods
in future. Modify the current booting method to be compatible with
cpu_ops.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/cpu_ops.h     | 34 +++++++++++++++++++
 arch/riscv/kernel/Makefile           |  2 ++
 arch/riscv/kernel/cpu_ops.c          | 38 +++++++++++++++++++++
 arch/riscv/kernel/cpu_ops_spinwait.c | 43 +++++++++++++++++++++++
 arch/riscv/kernel/smpboot.c          | 51 ++++++++++++++++------------
 5 files changed, 147 insertions(+), 21 deletions(-)
 create mode 100644 arch/riscv/include/asm/cpu_ops.h
 create mode 100644 arch/riscv/kernel/cpu_ops.c
 create mode 100644 arch/riscv/kernel/cpu_ops_spinwait.c

diff --git a/arch/riscv/include/asm/cpu_ops.h b/arch/riscv/include/asm/cpu_ops.h
new file mode 100644
index 000000000000..5ce81a28e1d9
--- /dev/null
+++ b/arch/riscv/include/asm/cpu_ops.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
+ * Based on arch/arm64/include/asm/cpu_ops.h
+ */
+#ifndef __ASM_CPU_OPS_H
+#define __ASM_CPU_OPS_H
+
+#include <linux/init.h>
+#include <linux/sched.h>
+#include <linux/threads.h>
+
+/**
+ * struct cpu_operations - Callback operations for hotplugging CPUs.
+ *
+ * @name:		Name of the boot protocol.
+ * @cpu_prepare:	Early one-time preparation step for a cpu. If there
+ *			is a mechanism for doing so, tests whether it is
+ *			possible to boot the given HART.
+ * @cpu_start:		Boots a cpu into the kernel.
+ */
+struct cpu_operations {
+	const char	*name;
+	int		(*cpu_prepare)(unsigned int cpu);
+	int		(*cpu_start)(unsigned int cpu,
+				     struct task_struct *tidle);
+};
+
+extern const struct cpu_operations *cpu_ops[NR_CPUS];
+void __init cpu_set_ops(int cpu);
+void cpu_update_secondary_bootdata(unsigned int cpuid,
+				   struct task_struct *tidle);
+
+#endif /* ifndef __ASM_CPU_OPS_H */
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index f40205cb9a22..f81a6ff88005 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -32,6 +32,8 @@ obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
 obj-$(CONFIG_FPU)		+= fpu.o
 obj-$(CONFIG_SMP)		+= smpboot.o
 obj-$(CONFIG_SMP)		+= smp.o
+obj-$(CONFIG_SMP)		+= cpu_ops.o
+obj-$(CONFIG_SMP)		+= cpu_ops_spinwait.o
 obj-$(CONFIG_MODULES)		+= module.o
 obj-$(CONFIG_MODULE_SECTIONS)	+= module-sections.o
 
diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
new file mode 100644
index 000000000000..62705908eee5
--- /dev/null
+++ b/arch/riscv/kernel/cpu_ops.c
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
+ */
+
+#include <linux/errno.h>
+#include <linux/mm.h>
+#include <linux/of.h>
+#include <linux/string.h>
+#include <linux/sched.h>
+#include <linux/sched/task_stack.h>
+#include <asm/cpu_ops.h>
+#include <asm/sbi.h>
+#include <asm/smp.h>
+
+const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
+
+void *__cpu_up_stack_pointer[NR_CPUS];
+void *__cpu_up_task_pointer[NR_CPUS];
+
+extern const struct cpu_operations cpu_ops_spinwait;
+
+void cpu_update_secondary_bootdata(unsigned int cpuid,
+				   struct task_struct *tidle)
+{
+	int hartid = cpuid_to_hartid_map(cpuid);
+
+	/* Make sure tidle is updated */
+	smp_mb();
+	WRITE_ONCE(__cpu_up_stack_pointer[hartid],
+		   task_stack_page(tidle) + THREAD_SIZE);
+	WRITE_ONCE(__cpu_up_task_pointer[hartid], tidle);
+}
+
+void __init cpu_set_ops(int cpuid)
+{
+	cpu_ops[cpuid] = &cpu_ops_spinwait;
+}
diff --git a/arch/riscv/kernel/cpu_ops_spinwait.c b/arch/riscv/kernel/cpu_ops_spinwait.c
new file mode 100644
index 000000000000..b2c957bb68c1
--- /dev/null
+++ b/arch/riscv/kernel/cpu_ops_spinwait.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
+ */
+
+#include <linux/errno.h>
+#include <linux/of.h>
+#include <linux/string.h>
+#include <asm/cpu_ops.h>
+#include <asm/sbi.h>
+#include <asm/smp.h>
+
+const struct cpu_operations cpu_ops_spinwait;
+
+static int spinwait_cpu_prepare(unsigned int cpuid)
+{
+	if (!cpu_ops_spinwait.cpu_start) {
+		pr_err("cpu start method not defined for CPU [%d]\n", cpuid);
+		return -ENODEV;
+	}
+	return 0;
+}
+
+static int spinwait_cpu_start(unsigned int cpuid, struct task_struct *tidle)
+{
+	/*
+	 * In this protocol, all cpus boot on their own accord.  _start
+	 * selects the first cpu to boot the kernel and causes the remainder
+	 * of the cpus to spin in a loop waiting for their stack pointer to be
+	 * setup by that main cpu.  Writing to bootdata
+	 * (i.e __cpu_up_stack_pointer) signals to the spinning cpus that they
+	 * can continue the boot process.
+	 */
+	cpu_update_secondary_bootdata(cpuid, tidle);
+
+	return 0;
+}
+
+const struct cpu_operations cpu_ops_spinwait = {
+	.name		= "spinwait",
+	.cpu_prepare	= spinwait_cpu_prepare,
+	.cpu_start	= spinwait_cpu_start,
+};
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 8bc01f0ca73b..e89396a2a1af 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -25,6 +25,7 @@
 #include <linux/sched/task_stack.h>
 #include <linux/sched/mm.h>
 #include <asm/clint.h>
+#include <asm/cpu_ops.h>
 #include <asm/irq.h>
 #include <asm/mmu_context.h>
 #include <asm/tlbflush.h>
@@ -34,8 +35,6 @@
 
 #include "head.h"
 
-void *__cpu_up_stack_pointer[NR_CPUS];
-void *__cpu_up_task_pointer[NR_CPUS];
 static DECLARE_COMPLETION(cpu_running);
 
 void __init smp_prepare_boot_cpu(void)
@@ -46,6 +45,7 @@ void __init smp_prepare_boot_cpu(void)
 void __init smp_prepare_cpus(unsigned int max_cpus)
 {
 	int cpuid;
+	int ret;
 
 	/* This covers non-smp usecase mandated by "nosmp" option */
 	if (max_cpus == 0)
@@ -54,6 +54,11 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
 	for_each_possible_cpu(cpuid) {
 		if (cpuid == smp_processor_id())
 			continue;
+		if (cpu_ops[cpuid]->cpu_prepare) {
+			ret = cpu_ops[cpuid]->cpu_prepare(cpuid);
+			if (ret)
+				continue;
+		}
 		set_cpu_present(cpuid, true);
 	}
 }
@@ -65,6 +70,8 @@ void __init setup_smp(void)
 	bool found_boot_cpu = false;
 	int cpuid = 1;
 
+	cpu_set_ops(0);
+
 	for_each_of_cpu_node(dn) {
 		hart = riscv_of_processor_hartid(dn);
 		if (hart < 0)
@@ -92,36 +99,38 @@ void __init setup_smp(void)
 			cpuid, nr_cpu_ids);
 
 	for (cpuid = 1; cpuid < nr_cpu_ids; cpuid++) {
-		if (cpuid_to_hartid_map(cpuid) != INVALID_HARTID)
+		if (cpuid_to_hartid_map(cpuid) != INVALID_HARTID) {
+			cpu_set_ops(cpuid);
 			set_cpu_possible(cpuid, true);
+		}
 	}
 }
 
+int start_secondary_cpu(int cpu, struct task_struct *tidle)
+{
+	if (cpu_ops[cpu]->cpu_start)
+		return cpu_ops[cpu]->cpu_start(cpu, tidle);
+
+	return -EOPNOTSUPP;
+}
+
 int __cpu_up(unsigned int cpu, struct task_struct *tidle)
 {
 	int ret = 0;
-	int hartid = cpuid_to_hartid_map(cpu);
 	tidle->thread_info.cpu = cpu;
 
-	/*
-	 * On RISC-V systems, all harts boot on their own accord.  Our _start
-	 * selects the first hart to boot the kernel and causes the remainder
-	 * of the harts to spin in a loop waiting for their stack pointer to be
-	 * setup by that main hart.  Writing __cpu_up_stack_pointer signals to
-	 * the spinning harts that they can continue the boot process.
-	 */
-	smp_mb();
-	WRITE_ONCE(__cpu_up_stack_pointer[hartid],
-		  task_stack_page(tidle) + THREAD_SIZE);
-	WRITE_ONCE(__cpu_up_task_pointer[hartid], tidle);
-
-	lockdep_assert_held(&cpu_running);
-	wait_for_completion_timeout(&cpu_running,
+	ret = start_secondary_cpu(cpu, tidle);
+	if (!ret) {
+		lockdep_assert_held(&cpu_running);
+		wait_for_completion_timeout(&cpu_running,
 					    msecs_to_jiffies(1000));
 
-	if (!cpu_online(cpu)) {
-		pr_crit("CPU%u: failed to come online\n", cpu);
-		ret = -EIO;
+		if (!cpu_online(cpu)) {
+			pr_crit("CPU%u: failed to come online\n", cpu);
+			ret = -EIO;
+		}
+	} else {
+		pr_crit("CPU%u: failed to start\n", cpu);
 	}
 
 	return ret;
-- 
2.25.1


