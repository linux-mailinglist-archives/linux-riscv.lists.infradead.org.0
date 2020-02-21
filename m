Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE15B166C02
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 01:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0B+eri2I3bJnbL8HjI1t4zPu6YBKBV5C/Vdmrqwl9Y0=; b=M9uvOLT6ihhW2L
	iu5jALYSfpK+Bdrmg54lUsVgZr25dKgGeMpAQAsmLqjnf5qHmGQFlCl5TZjBJD+JQNMWmAEJeY3UB
	PuIkp+UeQxcJYA+ndNJ4PkX9Z4r1hPIr5nvnjPE4LipwLtF3Vf/mvRQ6RKw34RlMs1VhWeP/pe7PU
	stjcuKUfUlEqlHdnextoKwIP5yPNaFugMKXdZF4USmB8opwVIk/9vv8bQrvIhRTdXeE0XtizgB04i
	6/yTJ7rfCnpVQ6sNUFcXfa6Qw3TVi7CIxNc5EZrcFIn6/HipIgzfYDiaWNrkPlz0xtRNTobYoacaw
	hxKvZG3kXRbVvAfDpLCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4wRh-0006QL-Jv; Fri, 21 Feb 2020 00:45:33 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4wRB-0004P7-GX
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 00:45:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582245925; x=1613781925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2m0oWojVmsmlTxUBpJeORdPegf1p+2OhgvzSpGqYQmo=;
 b=clzcfDdE1onJyHv8elB1koqP0VcuZSNGQMNmKohlgWg5R2bHRQqJBi2p
 7CCNYB3o49uykPsO2tATqorVHRWSJ1ZQKNLQwIItrey8zRscaD18ACYHG
 cbtbHUth3SpG8hxmliCHoIAUi/8PkzrHGKZTPPSPuXDaOycJfQqDi1fdB
 gUWuipqdd4u/nuMMj4qnN3UDl7GMjs8wAV/28tEVWs00ZnuUkEV15XByE
 IkzKpT/nUvPMsLhJCTqONUa3LspS8JpwbwkdwPlqZ21TlmHYcSKtu6+jB
 qbNtHTw6+4AuYCNUdarGZNiTAkVs8wmP1MrYVKHKmfdKMo8d7aE9QQ2P+ A==;
IronPort-SDR: 3XE3LJPf6nGgWdbAtRtn42yq1EETnStUwG5QOVmiq+tMbfZenm9ImeHojZ+ZjBju9IzunaHVEg
 o3iyB+XBQFSTDVkF8VjNEfno1/mONrn8t8NhvqYUS6bjfvhE3CaGVzjLC63j2IeTpDCqNfMZ4/
 BpYtyZu/UfrGHv92eAzdY3ffvWCm99+HUlrpYNCexovY5t4jOaWg0m2Ymzv9fJ5XzdGDBvrdrl
 BHpZHVqJayS2C27e0LOw6lYhRTLRm8CZI60VvIjGIW9EwkCXs3JqiZYGYqjrxmpugAUtu4hJnL
 L4g=
X-IronPort-AV: E=Sophos;i="5.70,466,1574092800"; d="scan'208";a="232211084"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2020 08:45:09 +0800
IronPort-SDR: 4gs2ziDCAiOAeVPkqSfVtG/bC89a7RbgmTJZOMiOaRLIgEPobyhUBQwvwbvZNyltEeMOpIhgE8
 Xc0RUDjWFjYwmI23rKJtF/nrxk0BcgC8Mz/v6Rrj0oHVS0gQeUwzp4yDZSp4gVX5PC5BOagW6Z
 5UvJIpHBUCNmPu+Dxfn3cjoCWOyviAZt/oqxRascNyTOUh5xOHUqCk+ZJKtLz3b6fGxlYnUu5u
 WSV3hbb5/ECEIuz77defghhNZPzGw/jj+coab2xCFkuPkpR9pOVRcV9y+YOQ5CJxMlM/lHQDU/
 vPrqYFhGA1AnQG2KlrCn18ka
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 16:37:25 -0800
IronPort-SDR: wGT3Sv/mzGV8P6O5WhMCYtDXgo4pCT4PaNinCS+z4RmxzvTqESy2u0LubptOTAqUIalFzBPiHr
 3i71xIfNzgrCIJZ17GHEof4TVTIammN9tb9sr6PQLMOwIOfUvtrFQUCHZb/rZKQMXCRjBCrvW1
 Z7flVMxuvNtX9Mqc2UXmgaIy+PFooXoLKjRk9xQCEXk2v6D9JJZH8DfvzN3Ppi1z7howRZFrTN
 aUvDyPk2Hhwz8hyrpOrxdd+V8AMwCQ/eRDRjSJFcXq3m0Y/VoLKuNfrzSUl3JZxI+WuCxnjyQO
 K4A=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Feb 2020 16:44:49 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 11/12] RISC-V: Support cpu hotplug
Date: Thu, 20 Feb 2020 16:44:12 -0800
Message-Id: <20200221004413.12869-12-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200221004413.12869-1-atish.patra@wdc.com>
References: <20200221004413.12869-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_164501_616974_3B0C5408 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Nick Hu <nickhu@andestech.com>,
 Vincent Chen <vincent.chen@sifive.com>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Atish Patra <atish.patra@wdc.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>, Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch enable support for cpu hotplug in RISC-V. It uses SBI HSM
extension to online/offline any hart. As a result, the harts are
returned to firmware once they are offline. If the harts are brought
online afterwards, they re-enter Linux kernel as if a secondary hart
booted for the first time. All booting requirements are honored during
this process.

Tested both on QEMU and HighFive Unleashed board with. Test result follows.

---------------------------------------------------
Offline cpu 2
---------------------------------------------------
$ echo 0 > /sys/devices/system/cpu/cpu2/online
[   32.828684] CPU2: off
$ cat /proc/cpuinfo
processor       : 0
hart            : 0
isa             : rv64imafdcsu
mmu             : sv48

processor       : 1
hart            : 1
isa             : rv64imafdcsu
mmu             : sv48

processor       : 3
hart            : 3
isa             : rv64imafdcsu
mmu             : sv48

processor       : 4
hart            : 4
isa             : rv64imafdcsu
mmu             : sv48

processor       : 5
hart            : 5
isa             : rv64imafdcsu
mmu             : sv48

processor       : 6
hart            : 6
isa             : rv64imafdcsu
mmu             : sv48

processor       : 7
hart            : 7
isa             : rv64imafdcsu
mmu             : sv48

---------------------------------------------------
online cpu 2
---------------------------------------------------
$ echo 1 > /sys/devices/system/cpu/cpu2/online
$ cat /proc/cpuinfo
processor       : 0
hart            : 0
isa             : rv64imafdcsu
mmu             : sv48

processor       : 1
hart            : 1
isa             : rv64imafdcsu
mmu             : sv48

processor       : 2
hart            : 2
isa             : rv64imafdcsu
mmu             : sv48

processor       : 3
hart            : 3
isa             : rv64imafdcsu
mmu             : sv48

processor       : 4
hart            : 4
isa             : rv64imafdcsu
mmu             : sv48

processor       : 5
hart            : 5
isa             : rv64imafdcsu
mmu             : sv48

processor       : 6
hart            : 6
isa             : rv64imafdcsu
mmu             : sv48

processor       : 7
hart            : 7
isa             : rv64imafdcsu
mmu             : sv48

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig               | 12 ++++-
 arch/riscv/include/asm/cpu_ops.h | 12 +++++
 arch/riscv/include/asm/smp.h     | 17 +++++++
 arch/riscv/kernel/Makefile       |  1 +
 arch/riscv/kernel/cpu-hotplug.c  | 87 ++++++++++++++++++++++++++++++++
 arch/riscv/kernel/cpu_ops_sbi.c  | 34 +++++++++++++
 arch/riscv/kernel/setup.c        | 19 ++++++-
 7 files changed, 180 insertions(+), 2 deletions(-)
 create mode 100644 arch/riscv/kernel/cpu-hotplug.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 8c0f5385fa30..27bfc7947e44 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -20,7 +20,6 @@ config RISCV
 	select CLONE_BACKWARDS
 	select COMMON_CLK
 	select GENERIC_CLOCKEVENTS
-	select GENERIC_CPU_DEVICES
 	select GENERIC_IRQ_SHOW
 	select GENERIC_PCI_IOMAP
 	select GENERIC_SCHED_CLOCK
@@ -247,6 +246,17 @@ config NR_CPUS
 	depends on SMP
 	default "8"
 
+config HOTPLUG_CPU
+	bool "Support for hot-pluggable CPUs"
+	depends on SMP
+	select GENERIC_IRQ_MIGRATION
+	help
+
+	  Say Y here to experiment with turning CPUs off and on.  CPUs
+	  can be controlled through /sys/devices/system/cpu.
+
+	  Say N if you want to disable CPU hotplug.
+
 choice
 	prompt "CPU Tuning"
 	default TUNE_GENERIC
diff --git a/arch/riscv/include/asm/cpu_ops.h b/arch/riscv/include/asm/cpu_ops.h
index daf29f70407d..efd6700d245d 100644
--- a/arch/riscv/include/asm/cpu_ops.h
+++ b/arch/riscv/include/asm/cpu_ops.h
@@ -18,12 +18,24 @@
  *			is a mechanism for doing so, tests whether it is
  *			possible to boot the given HART.
  * @cpu_start:		Boots a cpu into the kernel.
+ * @cpu_disable:	Prepares a cpu to die. May fail for some
+ *			mechanism-specific reason, which will cause the hot
+ *			unplug to be aborted. Called from the cpu to be killed.
+ * @cpu_stop:		Makes a cpu leave the kernel. Must not fail. Called from
+ *			the cpu being stopped.
+ * @cpu_is_stopped:	Ensures a cpu has left the kernel. Called from another
+ *			cpu.
  */
 struct cpu_operations {
 	const char	*name;
 	int		(*cpu_prepare)(unsigned int cpu);
 	int		(*cpu_start)(unsigned int cpu,
 				     struct task_struct *tidle);
+#ifdef CONFIG_HOTPLUG_CPU
+	int		(*cpu_disable)(unsigned int cpu);
+	void		(*cpu_stop)(void);
+	int		(*cpu_is_stopped)(unsigned int cpu);
+#endif
 };
 
 extern const struct cpu_operations *cpu_ops[NR_CPUS];
diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
index 023f74fb8b3b..f4c7cfda6b7f 100644
--- a/arch/riscv/include/asm/smp.h
+++ b/arch/riscv/include/asm/smp.h
@@ -43,6 +43,13 @@ void riscv_cpuid_to_hartid_mask(const struct cpumask *in, struct cpumask *out);
  */
 #define raw_smp_processor_id() (current_thread_info()->cpu)
 
+#if defined CONFIG_HOTPLUG_CPU
+int __cpu_disable(void);
+void __cpu_die(unsigned int cpu);
+void cpu_stop(void);
+#else
+#endif /* CONFIG_HOTPLUG_CPU */
+
 #else
 
 static inline void show_ipi_stats(struct seq_file *p, int prec)
@@ -69,4 +76,14 @@ static inline void riscv_cpuid_to_hartid_mask(const struct cpumask *in,
 }
 
 #endif /* CONFIG_SMP */
+
+#if defined(CONFIG_HOTPLUG_CPU) && (CONFIG_SMP)
+bool cpu_has_hotplug(unsigned int cpu);
+#else
+static inline bool cpu_has_hotplug(unsigned int cpu)
+{
+	return false;
+}
+#endif
+
 #endif /* _ASM_RISCV_SMP_H */
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index a0be34b96846..9601ac907f70 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -47,5 +47,6 @@ obj-$(CONFIG_RISCV_SBI)		+= sbi.o
 ifeq ($(CONFIG_RISCV_SBI), y)
 obj-$(CONFIG_SMP) += cpu_ops_sbi.o
 endif
+obj-$(CONFIG_HOTPLUG_CPU)	+= cpu-hotplug.o
 
 clean:
diff --git a/arch/riscv/kernel/cpu-hotplug.c b/arch/riscv/kernel/cpu-hotplug.c
new file mode 100644
index 000000000000..2a37cfb6eb46
--- /dev/null
+++ b/arch/riscv/kernel/cpu-hotplug.c
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018 Western Digital Corporation or its affiliates.
+ */
+
+#include <linux/kernel.h>
+#include <linux/mm.h>
+#include <linux/sched.h>
+#include <linux/err.h>
+#include <linux/irq.h>
+#include <linux/cpu.h>
+#include <linux/sched/hotplug.h>
+#include <asm/irq.h>
+#include <asm/cpu_ops.h>
+#include <asm/sbi.h>
+
+void cpu_stop(void);
+void arch_cpu_idle_dead(void)
+{
+	cpu_stop();
+}
+
+bool cpu_has_hotplug(unsigned int cpu)
+{
+	if (cpu_ops[cpu]->cpu_stop)
+		return true;
+
+	return false;
+}
+
+/*
+ * __cpu_disable runs on the processor to be shutdown.
+ */
+int __cpu_disable(void)
+{
+	int ret = 0;
+	unsigned int cpu = smp_processor_id();
+
+	if (!cpu_ops[cpu] || !cpu_ops[cpu]->cpu_stop)
+		return -EOPNOTSUPP;
+
+	if (cpu_ops[cpu]->cpu_disable)
+		ret = cpu_ops[cpu]->cpu_disable(cpu);
+
+	if (ret)
+		return ret;
+
+	remove_cpu_topology(cpu);
+	set_cpu_online(cpu, false);
+	irq_migrate_all_off_this_cpu();
+
+	return ret;
+}
+
+/*
+ * Called on the thread which is asking for a CPU to be shutdown.
+ */
+void __cpu_die(unsigned int cpu)
+{
+	int ret = 0;
+
+	if (!cpu_wait_death(cpu, 5)) {
+		pr_err("CPU %u: didn't die\n", cpu);
+		return;
+	}
+	pr_notice("CPU%u: off\n", cpu);
+
+	/* Verify from the firmware if the cpu is really stopped*/
+	if (cpu_ops[cpu]->cpu_is_stopped)
+		ret = cpu_ops[cpu]->cpu_is_stopped(cpu);
+	if (ret)
+		pr_warn("CPU%d may not have stopped: %d\n", cpu, ret);
+}
+
+/*
+ * Called from the idle thread for the CPU which has been shutdown.
+ */
+void cpu_stop(void)
+{
+	idle_task_exit();
+
+	(void)cpu_report_death();
+
+	cpu_ops[smp_processor_id()]->cpu_stop();
+	/* It should never reach here */
+	BUG();
+}
diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
index 70d02dfe0ab8..8848c5b6e1c4 100644
--- a/arch/riscv/kernel/cpu_ops_sbi.c
+++ b/arch/riscv/kernel/cpu_ops_sbi.c
@@ -74,8 +74,42 @@ static int sbi_cpu_prepare(unsigned int cpuid)
 	return 0;
 }
 
+#ifdef CONFIG_HOTPLUG_CPU
+static int sbi_cpu_disable(unsigned int cpuid)
+{
+	if (!cpu_ops_sbi.cpu_stop)
+		return -EOPNOTSUPP;
+	return 0;
+}
+
+static void sbi_cpu_stop(void)
+{
+	int ret;
+
+	ret = sbi_hsm_hart_stop();
+	pr_crit("Unable to stop the cpu %u (%d)\n", smp_processor_id(), ret);
+}
+
+static int sbi_cpu_is_stopped(unsigned int cpuid)
+{
+	int rc;
+	int hartid = cpuid_to_hartid_map(cpuid);
+
+	rc = sbi_hsm_hart_get_status(hartid);
+
+	if (rc == SBI_HSM_HART_STATUS_NOT_AVAILABLE)
+		return 0;
+	return rc;
+}
+#endif
+
 const struct cpu_operations cpu_ops_sbi = {
 	.name		= "sbi",
 	.cpu_prepare	= sbi_cpu_prepare,
 	.cpu_start	= sbi_cpu_start,
+#ifdef CONFIG_HOTPLUG_CPU
+	.cpu_disable	= sbi_cpu_disable,
+	.cpu_stop	= sbi_cpu_stop,
+	.cpu_is_stopped	= sbi_cpu_is_stopped,
+#endif
 };
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 582ecbed6442..b3f8986a3b25 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -16,12 +16,13 @@
 #include <linux/of_platform.h>
 #include <linux/sched/task.h>
 #include <linux/swiotlb.h>
+#include <linux/smp.h>
 
 #include <asm/clint.h>
+#include <asm/cpu_ops.h>
 #include <asm/setup.h>
 #include <asm/sections.h>
 #include <asm/pgtable.h>
-#include <asm/smp.h>
 #include <asm/sbi.h>
 #include <asm/tlbflush.h>
 #include <asm/thread_info.h>
@@ -43,6 +44,7 @@ struct screen_info screen_info = {
 /* The lucky hart to first increment this variable will boot the other cores */
 atomic_t hart_lottery;
 unsigned long boot_cpu_hartid;
+static DEFINE_PER_CPU(struct cpu, cpu_devices);
 
 void __init parse_dtb(void)
 {
@@ -90,3 +92,18 @@ void __init setup_arch(char **cmdline_p)
 
 	riscv_fill_hwcap();
 }
+
+static int __init topology_init(void)
+{
+	int i;
+
+	for_each_possible_cpu(i) {
+		struct cpu *cpu = &per_cpu(cpu_devices, i);
+
+		cpu->hotpluggable = cpu_has_hotplug(i);
+		register_cpu(cpu, i);
+	}
+
+	return 0;
+}
+subsys_initcall(topology_init);
-- 
2.25.0


