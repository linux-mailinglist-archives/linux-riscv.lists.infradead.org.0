Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440F114AE29
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 03:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xd3gx6V5JcIKOwDa9h2KLwwP3BD0e26QqEWaMEAqaq8=; b=XT46j6aU/+QVB+
	wq7KNNHWzDu2i7BcXjpJO2fZWXHGNpDUek/zQK8qYRJaKk+bHzGFHjWSrSmt3k5esNuCjyBJG0cMw
	hpvOa9c7g/kIrKF8XZsu9yUuecgBDzzYLh7/mZQ8TwH7VJtLhYRJdCnUHFqcj/KIz50OklVP1QwSp
	PWNsU/usEiYC8jqV7gVNrMcUnMyBNTp6eNozR0sk23p11KxsBV7yzYX7WVcSLEZ1Poam43slE/JOa
	0ZXiZvvJ8sTGZOcSERWYsEfqPZPq5czziBM4sybubVxEc41uySZ3r2ixpXg8KTJ49pEo763oH0MUf
	G2+WadebHlifKzz0WQdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGcR-0006Ug-3V; Tue, 28 Jan 2020 02:28:47 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGbw-0005qJ-2W
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 02:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580178497; x=1611714497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hTSqiqeL2/EozjiPkmP8vvNpZCNVxLDKqvRRmVXpK58=;
 b=mh965abGzqjjQ2XwUKQSYZiHmJerHyPDjcf0eAX+7rINvCYrqw8UPgs+
 VYdwtIy4+B4Vs5OGrcKMijnMpMRcdhTeAr5pkbqyEKZBtOCVF2z49VHvn
 StgtWtYCjkqsTKW749P9Bq8CbdqT0zRUz18eN54K8yeBxMzbB1HlER0NQ
 RO0fUmNA12P3wNKRinvLbiK4BvLl+i3/tZPFLmXhSw/Obj+aOWz8loc6J
 VxicE0fTdk+g/te48jX0wDkWsnxAp/p3n0pNnWbQElFCsoUKp0JW+I+DQ
 HbWLaWO+Qn8vE1c0ao9CWZVaPcDWBGI3cUDk0LfRDVx1Pw+taK1niXFBk g==;
IronPort-SDR: pLxGdExVuaNWd4uSEPkYLy2NVP0oU1pmn2BnsKGZarGpoxkqvOAkPwi+XuCQatNBJkwIDBhFCd
 0EH+Wg3wTZN1ugvFQGInYCOLaMjkCWqB3s1xddjK43VxoLir5Ph9ReaW+cDFUU2KVTnTM9wGka
 bjWuVyueRQAkzZaVvRskuOi9/W38l+XIXuGqFrzRMdyA/EuikRp9l0YxxjeJH85KNTNbMQCfuf
 yNsc2QVB6To67aMHrXxM57qbr7Yyqe7CU1QUTfYtVcC+UtHjidUb/OPISCQ+wlfZZjGs/l8KgU
 pCM=
X-IronPort-AV: E=Sophos;i="5.70,372,1574092800"; d="scan'208";a="230237611"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2020 10:28:33 +0800
IronPort-SDR: auzPt/AOTfgZRsad7sFb9gEQ3bprZC3Et/zYju1eDLwcUQ735fNdflzUIQ4jyHYjA8RDUOw0IH
 Scctmc10bgTSd5hoyXifqSJzr60Y3+06YOjeLO36Ep/9ugOpot3FHZQSeF2oGP0W9TYWO6AO4v
 f94Xf/HEKolzi6q4TClKiN7FUmGJUL4AeXu9jcFilywizKUR4z/b8IgByny14HMC54hQrUKiEx
 xBR5fWg+yqOR+dHjFsoHZrO8t6pwsFb90W30AKWNj1SXBJAce6NXOGyfbZDS8wdD1M1WKQhUVp
 u9IzgQuwl36Uktyq0qxG19/p
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 18:21:26 -0800
IronPort-SDR: c2BFc7nNVRyDbyLFhN1M3NUrb8xcXShYNzPmY4hb0qt+pjbxQAmyVTMiSIfTF4Zq919ew0WS7g
 r7LUlXIb8UgpO0rGMb4KvFUTw05o5QKvXg9DV8yvCpOBnnu5+ZLG4Nl2HH6XLO9oc++jyHVd5J
 iDakVacjojhF8+gIPnZt5ugfaor3Gv0Mi9jdqlGFEYpbsVid+Bkd5fAZ444uW469WtDdGTE0VX
 2762iFnvmAU0+N/N6hVV9ogo0MkEijKIdjwmSlkHzN5rXrtsKK/Li/9qBzDZCIMc/VRKK6uFvt
 5NY=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jan 2020 18:28:12 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 10/10] RISC-V: Support cpu hotplug
Date: Mon, 27 Jan 2020 18:27:37 -0800
Message-Id: <20200128022737.15371-11-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200128022737.15371-1-atish.patra@wdc.com>
References: <20200128022737.15371-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_182816_186375_72348F57 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Kees Cook <keescook@chromium.org>, abner.chang@hpe.com,
 Vincent Chen <vincent.chen@sifive.com>, nickhu@andestech.com,
 Anup Patel <anup@brainfault.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 clin@suse.com, Atish Patra <atish.patra@wdc.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Mao Han <han_mao@c-sky.com>
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
 arch/riscv/include/asm/cpu_ops.h |  5 ++
 arch/riscv/include/asm/smp.h     |  7 +++
 arch/riscv/kernel/Makefile       |  1 +
 arch/riscv/kernel/cpu-hotplug.c  | 84 ++++++++++++++++++++++++++++++++
 arch/riscv/kernel/cpu_ops.c      | 34 +++++++++++++
 arch/riscv/kernel/setup.c        | 26 ++++++++++
 7 files changed, 168 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/kernel/cpu-hotplug.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 518da42be545..99fb481dc805 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -22,7 +22,6 @@ config RISCV
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
index 27e9dfee5460..d53d7086f627 100644
--- a/arch/riscv/include/asm/cpu_ops.h
+++ b/arch/riscv/include/asm/cpu_ops.h
@@ -23,6 +23,11 @@ struct cpu_operations {
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
index 023f74fb8b3b..8d9c50c0f91c 100644
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
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index d77def5b4e87..6fe35a719de1 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -43,5 +43,6 @@ obj-$(CONFIG_PERF_EVENTS)	+= perf_event.o
 obj-$(CONFIG_PERF_EVENTS)	+= perf_callchain.o
 obj-$(CONFIG_HAVE_PERF_REGS)	+= perf_regs.o
 obj-$(CONFIG_RISCV_SBI)		+= sbi.o
+obj-$(CONFIG_HOTPLUG_CPU)	+= cpu-hotplug.o
 
 clean:
diff --git a/arch/riscv/kernel/cpu-hotplug.c b/arch/riscv/kernel/cpu-hotplug.c
new file mode 100644
index 000000000000..835b0747803e
--- /dev/null
+++ b/arch/riscv/kernel/cpu-hotplug.c
@@ -0,0 +1,84 @@
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
+bool can_hotplug_cpu(void)
+{
+	return true;
+}
+
+void arch_cpu_idle_dead(void)
+{
+	cpu_stop();
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
diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
index 454df032066f..9b315137b945 100644
--- a/arch/riscv/kernel/cpu_ops.c
+++ b/arch/riscv/kernel/cpu_ops.c
@@ -59,6 +59,34 @@ static int sbi_cpu_start(unsigned int cpuid, struct task_struct *tidle)
 	return rc;
 }
 
+#ifdef CONFIG_HOTPLUG_CPU
+static int sbi_cpu_disable(unsigned int cpuid)
+{
+	if (!cpu_sbi_ops.cpu_stop)
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
+	if (rc == RISCV_HART_FIRMWARE_STOPPED)
+		return 0;
+	return rc;
+}
+#endif
 static int spinwait_cpu_start(unsigned int cpuid, struct task_struct *tidle)
 {
 	int hartid = cpuid_to_hartid_map(cpuid);
@@ -82,6 +110,11 @@ const struct cpu_operations cpu_sbi_ops = {
 	.name		= "sbi",
 	.cpu_prepare	= sbi_cpu_prepare,
 	.cpu_start	= sbi_cpu_start,
+#ifdef CONFIG_HOTPLUG_CPU
+	.cpu_disable	= sbi_cpu_disable,
+	.cpu_stop	= sbi_cpu_stop,
+	.cpu_is_stopped	= sbi_cpu_is_stopped,
+#endif
 };
 
 const struct cpu_operations cpu_spinwait_ops = {
@@ -90,6 +123,7 @@ const struct cpu_operations cpu_spinwait_ops = {
 	.cpu_start	= spinwait_cpu_start,
 };
 
+
 int __init cpu_set_ops(int cpuid)
 {
 	if (sbi_hsm_is_available())
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 8208d1109ddb..dfab3bd40f2a 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -43,6 +43,7 @@ struct screen_info screen_info = {
 /* The lucky hart to first increment this variable will boot the other cores */
 atomic_t hart_lottery;
 unsigned long boot_cpu_hartid;
+static DEFINE_PER_CPU(struct cpu, cpu_devices);
 
 void __init parse_dtb(void)
 {
@@ -90,3 +91,28 @@ void __init setup_arch(char **cmdline_p)
 
 	riscv_fill_hwcap();
 }
+
+static inline bool can_hotplug_cpu(unsigned int cpu)
+{
+#ifdef CONFIG_HOTPLUG_CPU
+	if (cpu_ops[cpu]->cpu_stop)
+		return true;
+#endif
+	return false;
+}
+
+static int __init topology_init(void)
+{
+	int i;
+
+	pr_err("%s: In\n", __func__);
+	for_each_possible_cpu(i) {
+		struct cpu *cpu = &per_cpu(cpu_devices, i);
+
+		cpu->hotpluggable = can_hotplug_cpu(i);
+		register_cpu(cpu, i);
+	}
+
+	return 0;
+}
+subsys_initcall(topology_init);
-- 
2.24.0


