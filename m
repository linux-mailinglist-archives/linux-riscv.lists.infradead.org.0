Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF28159EAA
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 02:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Qpkt7mXr3d6XjN4QraOpIjRCgatG3HSDr+0PX2WEiE=; b=YfGkvgorhD2qkJ
	uAcoSyoalN1osLDsqrzcPvy5+cwzyzsdxdJGeXEQTQ2poOsMyTo26bWRN4Ht7z0Jgw6chy0HR7q/6
	OoAAJRllPAxt1Dnn7/A1+i775cYwHV69CQGIVqU/M1/Wc6CNmHLmgAkqdVbuiC0yyI56xtSfmKH/5
	njkwj6PdNeNFDU5ecWA3Xfy5UIEuZMOQl3Pe4q9Hgu50PbRqC9sNvjyYXIq9arY8xvYRgTIvdUHnz
	ztf+fiDdYnSUJ3vifXsRQ6n2sjNo9dOnUlCgNbKP+z8QvbgeahBEJqluS/SVIu2QcGo/hSw6eql/r
	sdCOGPt4gJAvPU8SFKSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hCG-00062v-VN; Wed, 12 Feb 2020 01:52:12 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hC1-0005nF-6A
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 01:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581472326; x=1613008326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LpWsyq8fbS8F8mkUsuT6z0R/SYdDzi1sWlMGDqfsfoQ=;
 b=qKtx/P5t7Wy9LcsNMYP8jS7LgQDFj3Jm/X33tz+5X+yKEa73V59H1JX2
 rarSW7SKXmqR1MaMKDpUoJBQY8GZmlNRldmT5ozK4BItsv8wZ0FWcLlrg
 1FR2/70ddVEfzuqCFkvCw2gogQQSieUQ4Va5OLwMYUO+umyN0x3IRFh8y
 1XVIzv1qe9uYbWd7oW9U1dTVt4b0mhkG5+oDgzuxNMt3Qx3kgf6u/KOaH
 K/yydBdykUS2hiv9kHO8cKTHvBqIC8RYemLVdBU0ZGiziwYP2fdCUZz2u
 IY6dBt57fAt6St+szcMob+2tFGg8zJYDxQlzSrZoalcr3oS5XIxjt/O/L w==;
IronPort-SDR: bCGZ4KXwbTLJS68D45SszDp/qunngFSY5UjWs1jFkKv1hM4WYQuLfvJuvr0hqCRZDANxBVxuJ6
 Jh49QS6foVfQPcmUgxH2N1Nsn4xGn3rQAhkhNHaSN4JkWyaDmDZ/3D6Qu6mowgc7hSa3850cEN
 vUXw7jJVqLVOlo2UONw9qnBL+sDDKcKgwMeFvR2EY15i/3jO65iBucEyXDH1w7DpEUIQA02en4
 lUf+AlhIjZiT5KhiHQxax0MB2FOenyUU8EWT1FKIFV90+OdCsyJJD1bX+CLkxOXyBnMD/OPx9a
 iUs=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="231429777"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 09:52:04 +0800
IronPort-SDR: rcggInZ8ZwrGN7U12h8KS9B17GiW/npDN8pAAwOC+zhdc+v7BfDHLTJyKRlXAfIUXll1YoeI5R
 hafFtyGFsl15Ckk3yCMWj+sz154+acmONzd67yo7qzdoJWhccWHI3vj/wGlVNnsq5gSlhpvunp
 Wn2e0DBuuz5xr1XjK9yofY6Nar87Ej1ZNxS9RanRiY8Ph6xIYI07DZz3l/EzmCe0pGcVObEC1U
 XgP9z8LAqSZu/aDMXtphv+D6wNwcM75aBRWp0Qb/Y/DyJnu74UHHnkRvC2Cg7RTRJJbbOSrfQ4
 W/WcMn62mWxCwUmOyphsTwVK
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 17:44:46 -0800
IronPort-SDR: GNftXFYzlTSnGZjG8Gov6CwMGLyYugP9bqApO3LDcSy72fntl2HTq9z4wKia1zPso7jpjm7nh3
 dq+NroivrDMBWwg5LWXnH2AChAbMIQ1pHjwqeYz0XTr2c1ctbM30fmSAkOk9mH5s/ynwE5nJYV
 v4fHTUzqb0dixrNI5w+XensVVPNspnPUNDn1G/HyA07EExsGriT7fF3lBIA3GLhQSQiplwSEfT
 1oVPjDsap0xsKoMPnRV6dSeIyzdSWT+kDCsJ0rom6eq3tYtlIqvdxQUpQ63ltIMDuL95eEEq9M
 nLc=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Feb 2020 17:51:56 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 07/11] RISC-V: Add cpu_ops and modify default booting method
Date: Tue, 11 Feb 2020 17:48:18 -0800
Message-Id: <20200212014822.28684-8-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200212014822.28684-1-atish.patra@wdc.com>
References: <20200212014822.28684-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_175157_279866_E09C892C 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Vincent Chen <vincent.chen@sifive.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Anup Patel <anup@brainfault.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Mao Han <han_mao@c-sky.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Kees Cook <keescook@chromium.org>
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
---
 arch/riscv/include/asm/cpu_ops.h     | 34 ++++++++++++++++++
 arch/riscv/kernel/Makefile           |  2 ++
 arch/riscv/kernel/cpu_ops.c          | 40 +++++++++++++++++++++
 arch/riscv/kernel/cpu_ops_spinwait.c | 42 ++++++++++++++++++++++
 arch/riscv/kernel/smpboot.c          | 54 +++++++++++++++++-----------
 5 files changed, 151 insertions(+), 21 deletions(-)
 create mode 100644 arch/riscv/include/asm/cpu_ops.h
 create mode 100644 arch/riscv/kernel/cpu_ops.c
 create mode 100644 arch/riscv/kernel/cpu_ops_spinwait.c

diff --git a/arch/riscv/include/asm/cpu_ops.h b/arch/riscv/include/asm/cpu_ops.h
new file mode 100644
index 000000000000..7db276284009
--- /dev/null
+++ b/arch/riscv/include/asm/cpu_ops.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2019 Western Digital Corporation or its affiliates.
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
+int __init cpu_set_ops(int cpu);
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
index 000000000000..1085def3735a
--- /dev/null
+++ b/arch/riscv/kernel/cpu_ops.c
@@ -0,0 +1,40 @@
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
+		  task_stack_page(tidle) + THREAD_SIZE);
+	WRITE_ONCE(__cpu_up_task_pointer[hartid], tidle);
+}
+
+int __init cpu_set_ops(int cpuid)
+{
+	cpu_ops[cpuid] = &cpu_ops_spinwait;
+
+	return 0;
+}
diff --git a/arch/riscv/kernel/cpu_ops_spinwait.c b/arch/riscv/kernel/cpu_ops_spinwait.c
new file mode 100644
index 000000000000..f828e660294e
--- /dev/null
+++ b/arch/riscv/kernel/cpu_ops_spinwait.c
@@ -0,0 +1,42 @@
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
+	 * setup by that main cpu.  Writing to bootdata (i.e __cpu_up_stack_pointer) signals to
+	 * the spinning cpus that they can continue the boot process.
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
index 8bc01f0ca73b..2ee41c779a16 100644
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
@@ -92,36 +99,41 @@ void __init setup_smp(void)
 			cpuid, nr_cpu_ids);
 
 	for (cpuid = 1; cpuid < nr_cpu_ids; cpuid++) {
-		if (cpuid_to_hartid_map(cpuid) != INVALID_HARTID)
+		if (cpuid_to_hartid_map(cpuid) != INVALID_HARTID) {
+			if (cpu_set_ops(cpuid)) {
+				cpuid_to_hartid_map(cpuid) = INVALID_HARTID;
+				continue;
+			}
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
2.24.0


