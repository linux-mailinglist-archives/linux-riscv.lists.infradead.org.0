Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94D5159EAE
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 02:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sCKCDFIM+ctDWfsoLL1PFiK4N+k114DKo9YlCsCNww=; b=OrApr8L1WzlO99
	pxCOtt+y0kHS2FZLFMwwr4nPRN9UnBlb5cJv5L7HmUqoj7o5M+SJrgoMQ+ONZT2eH6oEVKUYSRSHa
	ynQpAbrE7gl44pmBHNVrAOvscjxXSQUbi71wPSvVmWmP/CZ50GiSFceboR1ZDFyM/dmtkk0WnCvnk
	qO1DrIfjT5tPp/Qt27wCqd7vm/AUf9o1ky7RRMkzDeTDnH1/vzOYxC+fdPNCIABeoHyYxaHp/ySxx
	dlesg/YXY7YqHI/KLR1bfamy61/rD+EoRIzdeX2VeEH95vMUES/0RLLjqw2Uw2uo5e/7yxbwRUsTi
	YyVHqwvMYw0sNP9EbFEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hCQ-0006Gh-OW; Wed, 12 Feb 2020 01:52:22 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hC3-0005nF-Ki
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 01:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581472330; x=1613008330;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zli5H83agQoD1VNjbRUqZIKPARuSx1sBKsfj2wMKex4=;
 b=K0WX59tWXopxDGZUVs2mT7fFAwoKxOwThe9cGNjf7RavUH1jTQXs9y7A
 l38rJfYYS1nQE7GxkV2HjIZ4SNpGX27I3WmB5HIdLZaeqE4BbYKtiIg2f
 xilcGje9t4WstfCXu20MfTHys50pL1cnOmBjOMMXdntrGXYKaHUMPvXaA
 LwnPx0nHJ46omzi52mbXq7CXzknMk5OQP3pAkxLCyN9lAJozGObGftx7h
 D6QP214p7MhJrlKiVVseeoDrIPrrYj9pbsbhKSsX/aDYfFDhlbzUXFJ6z
 jv7NjqvuaOfAlPqLC+m3RvsZ5W7EaDRrYjxNnkNEtj1SnjNpISpxQthZO A==;
IronPort-SDR: jAdz3G2epuhyZt5m4u5vm5EpIPSQnjrB4oJ5K7ze8CR6bO/L0eYS/Sa5nzUdYAJ/tHUJ5qT9PC
 wLD7Z20lfzNlAUv/oGf7kDLnuJMkxzBq2JIfWm5Fyquyh2CBbeYmdNnguTQpF6k+eW93H1Zqfm
 EJ9lEadQ10OBuD9zIMLn4bsDCPPM2HgW7y8Ag4yUXwzMjGHGrRoPZE7r/01we6/OxG2S+VPowJ
 +KHPvU0VGon9CvfjKtVPbrD52BRZlXufoXQlj/mISBvVAnKbTm6eDwiGNveu92ChUwEpPlkKi8
 jQ0=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="231429797"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 09:52:07 +0800
IronPort-SDR: u48RpY1ox2NpBpsZCJN76YmhpKwrCYjCUa/kFwzr4D4M5LFXjrF5tyayxr3hNBq8QfHiiFFQC8
 ewnURYosl/Hm6bPmlLK6gTyY5x2NQJWIhA9tPHE07Q+pylwcQYrKEx/5j0dvgSSjGjrRHogdSb
 bk2VHdnc87BlrU8Y098KUbeGzEec8u4sAV/Yr+OQzKrH843kjludi4qD2/7IQ6M3vqpNSvoz+l
 rwt30UB0byR3ROWqtwuLjeMwVlOmivt2wyALLRdkukLkRryoCKb1F55AOwHjE9tL6t9+Ap0Uqe
 zPsn7syZcB0IQWNvjOxkF4xb
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 17:44:47 -0800
IronPort-SDR: DPKcQX/zxw2ZOLdwjTS7GYEy7EASSCZZAQM+RLZswNbsNxIUM1N2R5WsxNblGc95ErRxRCB5+S
 Kg8w/M4bFDhhhvWI6K7eNcrTX55MABWoxQD17ol9MJ1+rZv3TllpcfZkFJ8AP3StZU9nvulDpB
 t6bNnX+G59YsKkHpbeIyWPJpljqkJV2uYXhf6RC+A0x/B6EzD3WqTBS9uH97J6yoDr5Ts2PuIA
 wxHmFjmMHKIcfvDXVGn2XZfm1BuEx5kTv2W6JILPtPQZj0Kw4koC1H4bdxhCpNBkR4+ZsAQy/A
 uUM=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Feb 2020 17:51:57 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 11/11] RISC-V: Support cpu hotplug
Date: Tue, 11 Feb 2020 17:48:22 -0800
Message-Id: <20200212014822.28684-12-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200212014822.28684-1-atish.patra@wdc.com>
References: <20200212014822.28684-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_175159_792988_BBD9A6BE 
X-CRM114-Status: GOOD (  23.74  )
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
index 2afe1382dc36..ffd9f4dbd4fc 100644
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
index 7db276284009..df92d20e3a50 100644
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
index 31487a80c3b8..3f77db8a256a 100644
--- a/arch/riscv/kernel/cpu_ops_sbi.c
+++ b/arch/riscv/kernel/cpu_ops_sbi.c
@@ -72,8 +72,42 @@ static int sbi_cpu_prepare(unsigned int cpuid)
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
index 64d17cbae66b..21543a732a3d 100644
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
@@ -42,6 +43,7 @@ struct screen_info screen_info = {
 /* The lucky hart to first increment this variable will boot the other cores */
 atomic_t hart_lottery;
 unsigned long boot_cpu_hartid;
+static DEFINE_PER_CPU(struct cpu, cpu_devices);
 
 void __init parse_dtb(void)
 {
@@ -89,3 +91,18 @@ void __init setup_arch(char **cmdline_p)
 
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
2.24.0


