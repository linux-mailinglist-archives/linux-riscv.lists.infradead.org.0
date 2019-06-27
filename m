Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C566358B42
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 21:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4DKOYKUMSmAlPsqY8Z41J/rKa9zfCpxNfQCg4ctWFsU=; b=k/4QIn7eSqkR97
	rSQG1De+RsJ5vBY9RqxY6Y7/JNn3cu4SOlfY1aXWWyHpwnEt32L0MkbyaQSq0Wy7WpfKZPNjlyLkn
	z1gLPbuCO2mp4JBEiYo6Dl2OXBzlvgY9oxzg8fSGVNw7mYUujRiFSDS0TA01n4yZb571E4OG9YDZp
	bP/Kj7JCgGHyUmnVVmi5/3OWPdSAzewCP3hbPlYfRX7LOci7bTC0BvfT5ItiBgzy0lgwd+DYDHLa6
	24G6pTi58jfa1nVWifMiYnaSip0vTvDUPG3t7GwL9AQe4jUy6HpTS6oHF68Yxt3/UUAbT0UFWxFn1
	Udn+mN5TXp1QyEbKwONg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgaWH-0005eu-3x; Thu, 27 Jun 2019 19:57:21 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgaUS-0004KX-T4; Thu, 27 Jun 2019 19:55:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561665329; x=1593201329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YV3vtnK6W8FYP7RLPlwhXUIA/1X+XzIwp2SUJb3f0ok=;
 b=IEYFKD6D1lVpHN74OaUWUdyt74g6RtFRNkG5puRCh6LDfddIhedrlwVc
 LdLZtLxuneSrDZHUTdBHxIVLHre05WOl0B3BGC/BHOoeEWfh4cL3iI5Gn
 fDZIoW+PDU637tXg41kRnfLEFEZYL+yUKPaUVLJmCPVTY1I1qZlRD1DeE
 UBRCrpxo4Gpdf6NXL/O56C39V24drns5d7nqt50MxgmpM0KYapHJgdAYE
 lSbMbiCr6AbZZiKZmnRL5wllUD1rBQ3XLsjVLZbrJEFgdnGs91vgquqyJ
 HIqGyi0oQv2lomR0P0FVv9Qhil7IYQLnTaPshXaf9B2TM/Xy4PLlqd1Em Q==;
X-IronPort-AV: E=Sophos;i="5.63,424,1557158400"; d="scan'208";a="113353774"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jun 2019 03:55:26 +0800
IronPort-SDR: od4MWjI1SqQWRi6H5vr7248HRJCjSM2rroq2DfPhsQ+AEE/EBl1miQkxf0d4NMPiJ7cC5xXYV4
 6JdvAK0Etvx7MJpio1XOBMCCaDls3Car/hJDGgm9jB27iVgFd/X90onGoeYzVH5Ja8YVE9pqA/
 NNS8IDHszh0zzsyr72/HNiTEjrIkUr62Yh2HeHg/JxwnExOsy+qK6IUuOf7A73f36zIAqdANe1
 mTbsGOTJeZQ+Ct0Xkwjh/cftGF8pnYWZuEDMhyu2WczC539J2OzaCLktR0VLFavK07/JUauOC7
 CQczarRWAn/qdtY/D8fLp+i2
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 27 Jun 2019 12:54:39 -0700
IronPort-SDR: wR2/Li+PKkXWk+TQ6HUIsu8cs/pPlvKX9o/DLhatChFBOplvOrygAdijTcp9uiMv65THie53Go
 RWv++hho/UhxpRcinXdhTK10AIj9/eeQoJpo/d/uoyxBaqbyeYUEeSYk8r2mLwafTGPC0r13Xs
 4FsUKrPEWjw0hNC7G8dZUPrGGgu//jndaeUuva25bbds+7NVca4knXMQoptGXZ4XNpXC1XIGUm
 Yc5RJHJAAeTVxpZRk9JoTPnHtnC8SEE6c1Pdmeni7fLMRocSOlSFx07XfajM0eIf/C0MkyyIEo
 K5g=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jun 2019 12:55:26 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 3/7] cpu-topology: Move cpu topology code to common code.
Date: Thu, 27 Jun 2019 12:52:58 -0700
Message-Id: <20190627195302.28300-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627195302.28300-1-atish.patra@wdc.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_125529_004605_D7EE0A23 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@kernel.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Johan Hovold <johan@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Both RISC-V & ARM64 are using cpu-map device tree to describe
their cpu topology. It's better to move the relevant code to
a common place instead of duplicate code.

To: Will Deacon <will.deacon@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Atish Patra <atish.patra@wdc.com>
[Tested on QDF2400]
Tested-by: Jeffrey Hugo <jhugo@codeaurora.org>
[Tested on Juno and other embedded platforms.]
Tested-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/include/asm/topology.h |  23 ---
 arch/arm64/kernel/topology.c      | 303 +-----------------------------
 drivers/base/arch_topology.c      | 296 +++++++++++++++++++++++++++++
 include/linux/arch_topology.h     |  28 +++
 include/linux/topology.h          |   1 +
 5 files changed, 329 insertions(+), 322 deletions(-)

diff --git a/arch/arm64/include/asm/topology.h b/arch/arm64/include/asm/topology.h
index 0524f2438649..a4d945db95a2 100644
--- a/arch/arm64/include/asm/topology.h
+++ b/arch/arm64/include/asm/topology.h
@@ -4,29 +4,6 @@
 
 #include <linux/cpumask.h>
 
-struct cpu_topology {
-	int thread_id;
-	int core_id;
-	int package_id;
-	int llc_id;
-	cpumask_t thread_sibling;
-	cpumask_t core_sibling;
-	cpumask_t llc_sibling;
-};
-
-extern struct cpu_topology cpu_topology[NR_CPUS];
-
-#define topology_physical_package_id(cpu)	(cpu_topology[cpu].package_id)
-#define topology_core_id(cpu)		(cpu_topology[cpu].core_id)
-#define topology_core_cpumask(cpu)	(&cpu_topology[cpu].core_sibling)
-#define topology_sibling_cpumask(cpu)	(&cpu_topology[cpu].thread_sibling)
-#define topology_llc_cpumask(cpu)	(&cpu_topology[cpu].llc_sibling)
-
-void init_cpu_topology(void);
-void store_cpu_topology(unsigned int cpuid);
-void remove_cpu_topology(unsigned int cpuid);
-const struct cpumask *cpu_coregroup_mask(int cpu);
-
 #ifdef CONFIG_NUMA
 
 struct pci_bus;
diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
index 0825c4a856e3..6b95c91e7d67 100644
--- a/arch/arm64/kernel/topology.c
+++ b/arch/arm64/kernel/topology.c
@@ -14,250 +14,13 @@
 #include <linux/acpi.h>
 #include <linux/arch_topology.h>
 #include <linux/cacheinfo.h>
-#include <linux/cpu.h>
-#include <linux/cpumask.h>
 #include <linux/init.h>
 #include <linux/percpu.h>
-#include <linux/node.h>
-#include <linux/nodemask.h>
-#include <linux/of.h>
-#include <linux/sched.h>
-#include <linux/sched/topology.h>
-#include <linux/slab.h>
-#include <linux/smp.h>
-#include <linux/string.h>
 
 #include <asm/cpu.h>
 #include <asm/cputype.h>
 #include <asm/topology.h>
 
-static int __init get_cpu_for_node(struct device_node *node)
-{
-	struct device_node *cpu_node;
-	int cpu;
-
-	cpu_node = of_parse_phandle(node, "cpu", 0);
-	if (!cpu_node)
-		return -1;
-
-	cpu = of_cpu_node_to_id(cpu_node);
-	if (cpu >= 0)
-		topology_parse_cpu_capacity(cpu_node, cpu);
-	else
-		pr_crit("Unable to find CPU node for %pOF\n", cpu_node);
-
-	of_node_put(cpu_node);
-	return cpu;
-}
-
-static int __init parse_core(struct device_node *core, int package_id,
-			     int core_id)
-{
-	char name[10];
-	bool leaf = true;
-	int i = 0;
-	int cpu;
-	struct device_node *t;
-
-	do {
-		snprintf(name, sizeof(name), "thread%d", i);
-		t = of_get_child_by_name(core, name);
-		if (t) {
-			leaf = false;
-			cpu = get_cpu_for_node(t);
-			if (cpu >= 0) {
-				cpu_topology[cpu].package_id = package_id;
-				cpu_topology[cpu].core_id = core_id;
-				cpu_topology[cpu].thread_id = i;
-			} else {
-				pr_err("%pOF: Can't get CPU for thread\n",
-				       t);
-				of_node_put(t);
-				return -EINVAL;
-			}
-			of_node_put(t);
-		}
-		i++;
-	} while (t);
-
-	cpu = get_cpu_for_node(core);
-	if (cpu >= 0) {
-		if (!leaf) {
-			pr_err("%pOF: Core has both threads and CPU\n",
-			       core);
-			return -EINVAL;
-		}
-
-		cpu_topology[cpu].package_id = package_id;
-		cpu_topology[cpu].core_id = core_id;
-	} else if (leaf) {
-		pr_err("%pOF: Can't get CPU for leaf core\n", core);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static int __init parse_cluster(struct device_node *cluster, int depth)
-{
-	char name[10];
-	bool leaf = true;
-	bool has_cores = false;
-	struct device_node *c;
-	static int package_id __initdata;
-	int core_id = 0;
-	int i, ret;
-
-	/*
-	 * First check for child clusters; we currently ignore any
-	 * information about the nesting of clusters and present the
-	 * scheduler with a flat list of them.
-	 */
-	i = 0;
-	do {
-		snprintf(name, sizeof(name), "cluster%d", i);
-		c = of_get_child_by_name(cluster, name);
-		if (c) {
-			leaf = false;
-			ret = parse_cluster(c, depth + 1);
-			of_node_put(c);
-			if (ret != 0)
-				return ret;
-		}
-		i++;
-	} while (c);
-
-	/* Now check for cores */
-	i = 0;
-	do {
-		snprintf(name, sizeof(name), "core%d", i);
-		c = of_get_child_by_name(cluster, name);
-		if (c) {
-			has_cores = true;
-
-			if (depth == 0) {
-				pr_err("%pOF: cpu-map children should be clusters\n",
-				       c);
-				of_node_put(c);
-				return -EINVAL;
-			}
-
-			if (leaf) {
-				ret = parse_core(c, package_id, core_id++);
-			} else {
-				pr_err("%pOF: Non-leaf cluster with core %s\n",
-				       cluster, name);
-				ret = -EINVAL;
-			}
-
-			of_node_put(c);
-			if (ret != 0)
-				return ret;
-		}
-		i++;
-	} while (c);
-
-	if (leaf && !has_cores)
-		pr_warn("%pOF: empty cluster\n", cluster);
-
-	if (leaf)
-		package_id++;
-
-	return 0;
-}
-
-static int __init parse_dt_topology(void)
-{
-	struct device_node *cn, *map;
-	int ret = 0;
-	int cpu;
-
-	cn = of_find_node_by_path("/cpus");
-	if (!cn) {
-		pr_err("No CPU information found in DT\n");
-		return 0;
-	}
-
-	/*
-	 * When topology is provided cpu-map is essentially a root
-	 * cluster with restricted subnodes.
-	 */
-	map = of_get_child_by_name(cn, "cpu-map");
-	if (!map)
-		goto out;
-
-	ret = parse_cluster(map, 0);
-	if (ret != 0)
-		goto out_map;
-
-	topology_normalize_cpu_scale();
-
-	/*
-	 * Check that all cores are in the topology; the SMP code will
-	 * only mark cores described in the DT as possible.
-	 */
-	for_each_possible_cpu(cpu)
-		if (cpu_topology[cpu].package_id == -1)
-			ret = -EINVAL;
-
-out_map:
-	of_node_put(map);
-out:
-	of_node_put(cn);
-	return ret;
-}
-
-/*
- * cpu topology table
- */
-struct cpu_topology cpu_topology[NR_CPUS];
-EXPORT_SYMBOL_GPL(cpu_topology);
-
-const struct cpumask *cpu_coregroup_mask(int cpu)
-{
-	const cpumask_t *core_mask = cpumask_of_node(cpu_to_node(cpu));
-
-	/* Find the smaller of NUMA, core or LLC siblings */
-	if (cpumask_subset(&cpu_topology[cpu].core_sibling, core_mask)) {
-		/* not numa in package, lets use the package siblings */
-		core_mask = &cpu_topology[cpu].core_sibling;
-	}
-	if (cpu_topology[cpu].llc_id != -1) {
-		if (cpumask_subset(&cpu_topology[cpu].llc_sibling, core_mask))
-			core_mask = &cpu_topology[cpu].llc_sibling;
-	}
-
-	return core_mask;
-}
-
-static void update_siblings_masks(unsigned int cpuid)
-{
-	struct cpu_topology *cpu_topo, *cpuid_topo = &cpu_topology[cpuid];
-	int cpu;
-
-	/* update core and thread sibling masks */
-	for_each_online_cpu(cpu) {
-		cpu_topo = &cpu_topology[cpu];
-
-		if (cpuid_topo->llc_id == cpu_topo->llc_id) {
-			cpumask_set_cpu(cpu, &cpuid_topo->llc_sibling);
-			cpumask_set_cpu(cpuid, &cpu_topo->llc_sibling);
-		}
-
-		if (cpuid_topo->package_id != cpu_topo->package_id)
-			continue;
-
-		cpumask_set_cpu(cpuid, &cpu_topo->core_sibling);
-		cpumask_set_cpu(cpu, &cpuid_topo->core_sibling);
-
-		if (cpuid_topo->core_id != cpu_topo->core_id)
-			continue;
-
-		cpumask_set_cpu(cpuid, &cpu_topo->thread_sibling);
-		cpumask_set_cpu(cpu, &cpuid_topo->thread_sibling);
-	}
-}
-
 void store_cpu_topology(unsigned int cpuid)
 {
 	struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
@@ -296,59 +59,19 @@ void store_cpu_topology(unsigned int cpuid)
 	update_siblings_masks(cpuid);
 }
 
-static void clear_cpu_topology(int cpu)
-{
-	struct cpu_topology *cpu_topo = &cpu_topology[cpu];
-
-	cpumask_clear(&cpu_topo->llc_sibling);
-	cpumask_set_cpu(cpu, &cpu_topo->llc_sibling);
-
-	cpumask_clear(&cpu_topo->core_sibling);
-	cpumask_set_cpu(cpu, &cpu_topo->core_sibling);
-	cpumask_clear(&cpu_topo->thread_sibling);
-	cpumask_set_cpu(cpu, &cpu_topo->thread_sibling);
-}
-
-static void __init reset_cpu_topology(void)
-{
-	unsigned int cpu;
-
-	for_each_possible_cpu(cpu) {
-		struct cpu_topology *cpu_topo = &cpu_topology[cpu];
-
-		cpu_topo->thread_id = -1;
-		cpu_topo->core_id = 0;
-		cpu_topo->package_id = -1;
-		cpu_topo->llc_id = -1;
-
-		clear_cpu_topology(cpu);
-	}
-}
-
-void remove_cpu_topology(unsigned int cpu)
-{
-	int sibling;
-
-	for_each_cpu(sibling, topology_core_cpumask(cpu))
-		cpumask_clear_cpu(cpu, topology_core_cpumask(sibling));
-	for_each_cpu(sibling, topology_sibling_cpumask(cpu))
-		cpumask_clear_cpu(cpu, topology_sibling_cpumask(sibling));
-	for_each_cpu(sibling, topology_llc_cpumask(cpu))
-		cpumask_clear_cpu(cpu, topology_llc_cpumask(sibling));
-
-	clear_cpu_topology(cpu);
-}
-
 #ifdef CONFIG_ACPI
 /*
  * Propagate the topology information of the processor_topology_node tree to the
  * cpu_topology array.
  */
-static int __init parse_acpi_topology(void)
+int __init parse_acpi_topology(void)
 {
 	bool is_threaded;
 	int cpu, topology_id;
 
+	if (acpi_disabled)
+		return 0;
+
 	is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
 
 	for_each_possible_cpu(cpu) {
@@ -384,24 +107,6 @@ static int __init parse_acpi_topology(void)
 
 	return 0;
 }
-
-#else
-static inline int __init parse_acpi_topology(void)
-{
-	return -EINVAL;
-}
 #endif
 
-void __init init_cpu_topology(void)
-{
-	reset_cpu_topology();
 
-	/*
-	 * Discard anything that was parsed if we hit an error so we
-	 * don't use partial information.
-	 */
-	if (!acpi_disabled && parse_acpi_topology())
-		reset_cpu_topology();
-	else if (of_have_populated_dt() && parse_dt_topology())
-		reset_cpu_topology();
-}
diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
index 1739d7e1952a..5781bb4c457c 100644
--- a/drivers/base/arch_topology.c
+++ b/drivers/base/arch_topology.c
@@ -15,6 +15,11 @@
 #include <linux/string.h>
 #include <linux/sched/topology.h>
 #include <linux/cpuset.h>
+#include <linux/cpumask.h>
+#include <linux/init.h>
+#include <linux/percpu.h>
+#include <linux/sched.h>
+#include <linux/smp.h>
 
 DEFINE_PER_CPU(unsigned long, freq_scale) = SCHED_CAPACITY_SCALE;
 
@@ -244,3 +249,294 @@ static void parsing_done_workfn(struct work_struct *work)
 #else
 core_initcall(free_raw_capacity);
 #endif
+
+#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
+static int __init get_cpu_for_node(struct device_node *node)
+{
+	struct device_node *cpu_node;
+	int cpu;
+
+	cpu_node = of_parse_phandle(node, "cpu", 0);
+	if (!cpu_node)
+		return -1;
+
+	cpu = of_cpu_node_to_id(cpu_node);
+	if (cpu >= 0)
+		topology_parse_cpu_capacity(cpu_node, cpu);
+	else
+		pr_crit("Unable to find CPU node for %pOF\n", cpu_node);
+
+	of_node_put(cpu_node);
+	return cpu;
+}
+
+static int __init parse_core(struct device_node *core, int package_id,
+			     int core_id)
+{
+	char name[10];
+	bool leaf = true;
+	int i = 0;
+	int cpu;
+	struct device_node *t;
+
+	do {
+		snprintf(name, sizeof(name), "thread%d", i);
+		t = of_get_child_by_name(core, name);
+		if (t) {
+			leaf = false;
+			cpu = get_cpu_for_node(t);
+			if (cpu >= 0) {
+				cpu_topology[cpu].package_id = package_id;
+				cpu_topology[cpu].core_id = core_id;
+				cpu_topology[cpu].thread_id = i;
+			} else {
+				pr_err("%pOF: Can't get CPU for thread\n",
+				       t);
+				of_node_put(t);
+				return -EINVAL;
+			}
+			of_node_put(t);
+		}
+		i++;
+	} while (t);
+
+	cpu = get_cpu_for_node(core);
+	if (cpu >= 0) {
+		if (!leaf) {
+			pr_err("%pOF: Core has both threads and CPU\n",
+			       core);
+			return -EINVAL;
+		}
+
+		cpu_topology[cpu].package_id = package_id;
+		cpu_topology[cpu].core_id = core_id;
+	} else if (leaf) {
+		pr_err("%pOF: Can't get CPU for leaf core\n", core);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int __init parse_cluster(struct device_node *cluster, int depth)
+{
+	char name[10];
+	bool leaf = true;
+	bool has_cores = false;
+	struct device_node *c;
+	static int package_id __initdata;
+	int core_id = 0;
+	int i, ret;
+
+	/*
+	 * First check for child clusters; we currently ignore any
+	 * information about the nesting of clusters and present the
+	 * scheduler with a flat list of them.
+	 */
+	i = 0;
+	do {
+		snprintf(name, sizeof(name), "cluster%d", i);
+		c = of_get_child_by_name(cluster, name);
+		if (c) {
+			leaf = false;
+			ret = parse_cluster(c, depth + 1);
+			of_node_put(c);
+			if (ret != 0)
+				return ret;
+		}
+		i++;
+	} while (c);
+
+	/* Now check for cores */
+	i = 0;
+	do {
+		snprintf(name, sizeof(name), "core%d", i);
+		c = of_get_child_by_name(cluster, name);
+		if (c) {
+			has_cores = true;
+
+			if (depth == 0) {
+				pr_err("%pOF: cpu-map children should be clusters\n",
+				       c);
+				of_node_put(c);
+				return -EINVAL;
+			}
+
+			if (leaf) {
+				ret = parse_core(c, package_id, core_id++);
+			} else {
+				pr_err("%pOF: Non-leaf cluster with core %s\n",
+				       cluster, name);
+				ret = -EINVAL;
+			}
+
+			of_node_put(c);
+			if (ret != 0)
+				return ret;
+		}
+		i++;
+	} while (c);
+
+	if (leaf && !has_cores)
+		pr_warn("%pOF: empty cluster\n", cluster);
+
+	if (leaf)
+		package_id++;
+
+	return 0;
+}
+
+static int __init parse_dt_topology(void)
+{
+	struct device_node *cn, *map;
+	int ret = 0;
+	int cpu;
+
+	cn = of_find_node_by_path("/cpus");
+	if (!cn) {
+		pr_err("No CPU information found in DT\n");
+		return 0;
+	}
+
+	/*
+	 * When topology is provided cpu-map is essentially a root
+	 * cluster with restricted subnodes.
+	 */
+	map = of_get_child_by_name(cn, "cpu-map");
+	if (!map)
+		goto out;
+
+	ret = parse_cluster(map, 0);
+	if (ret != 0)
+		goto out_map;
+
+	topology_normalize_cpu_scale();
+
+	/*
+	 * Check that all cores are in the topology; the SMP code will
+	 * only mark cores described in the DT as possible.
+	 */
+	for_each_possible_cpu(cpu)
+		if (cpu_topology[cpu].package_id == -1)
+			ret = -EINVAL;
+
+out_map:
+	of_node_put(map);
+out:
+	of_node_put(cn);
+	return ret;
+}
+
+/*
+ * cpu topology table
+ */
+struct cpu_topology cpu_topology[NR_CPUS];
+EXPORT_SYMBOL_GPL(cpu_topology);
+
+const struct cpumask *cpu_coregroup_mask(int cpu)
+{
+	const cpumask_t *core_mask = cpumask_of_node(cpu_to_node(cpu));
+
+	/* Find the smaller of NUMA, core or LLC siblings */
+	if (cpumask_subset(&cpu_topology[cpu].core_sibling, core_mask)) {
+		/* not numa in package, lets use the package siblings */
+		core_mask = &cpu_topology[cpu].core_sibling;
+	}
+	if (cpu_topology[cpu].llc_id != -1) {
+		if (cpumask_subset(&cpu_topology[cpu].llc_sibling, core_mask))
+			core_mask = &cpu_topology[cpu].llc_sibling;
+	}
+
+	return core_mask;
+}
+
+void update_siblings_masks(unsigned int cpuid)
+{
+	struct cpu_topology *cpu_topo, *cpuid_topo = &cpu_topology[cpuid];
+	int cpu;
+
+	/* update core and thread sibling masks */
+	for_each_online_cpu(cpu) {
+		cpu_topo = &cpu_topology[cpu];
+
+		if (cpuid_topo->llc_id == cpu_topo->llc_id) {
+			cpumask_set_cpu(cpu, &cpuid_topo->llc_sibling);
+			cpumask_set_cpu(cpuid, &cpu_topo->llc_sibling);
+		}
+
+		if (cpuid_topo->package_id != cpu_topo->package_id)
+			continue;
+
+		cpumask_set_cpu(cpuid, &cpu_topo->core_sibling);
+		cpumask_set_cpu(cpu, &cpuid_topo->core_sibling);
+
+		if (cpuid_topo->core_id != cpu_topo->core_id)
+			continue;
+
+		cpumask_set_cpu(cpuid, &cpu_topo->thread_sibling);
+		cpumask_set_cpu(cpu, &cpuid_topo->thread_sibling);
+	}
+}
+
+static void clear_cpu_topology(int cpu)
+{
+	struct cpu_topology *cpu_topo = &cpu_topology[cpu];
+
+	cpumask_clear(&cpu_topo->llc_sibling);
+	cpumask_set_cpu(cpu, &cpu_topo->llc_sibling);
+
+	cpumask_clear(&cpu_topo->core_sibling);
+	cpumask_set_cpu(cpu, &cpu_topo->core_sibling);
+	cpumask_clear(&cpu_topo->thread_sibling);
+	cpumask_set_cpu(cpu, &cpu_topo->thread_sibling);
+}
+
+static void __init reset_cpu_topology(void)
+{
+	unsigned int cpu;
+
+	for_each_possible_cpu(cpu) {
+		struct cpu_topology *cpu_topo = &cpu_topology[cpu];
+
+		cpu_topo->thread_id = -1;
+		cpu_topo->core_id = -1;
+		cpu_topo->package_id = -1;
+		cpu_topo->llc_id = -1;
+
+		clear_cpu_topology(cpu);
+	}
+}
+
+void remove_cpu_topology(unsigned int cpu)
+{
+	int sibling;
+
+	for_each_cpu(sibling, topology_core_cpumask(cpu))
+		cpumask_clear_cpu(cpu, topology_core_cpumask(sibling));
+	for_each_cpu(sibling, topology_sibling_cpumask(cpu))
+		cpumask_clear_cpu(cpu, topology_sibling_cpumask(sibling));
+	for_each_cpu(sibling, topology_llc_cpumask(cpu))
+		cpumask_clear_cpu(cpu, topology_llc_cpumask(sibling));
+
+	clear_cpu_topology(cpu);
+}
+
+__weak int __init parse_acpi_topology(void)
+{
+	return 0;
+}
+
+void __init init_cpu_topology(void)
+{
+	reset_cpu_topology();
+
+	/*
+	 * Discard anything that was parsed if we hit an error so we
+	 * don't use partial information.
+	 */
+	if (parse_acpi_topology())
+		reset_cpu_topology();
+	else if (of_have_populated_dt() && parse_dt_topology())
+		reset_cpu_topology();
+}
+#endif
diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
index d9bdc1a7f4e7..d4e76e0a283f 100644
--- a/include/linux/arch_topology.h
+++ b/include/linux/arch_topology.h
@@ -33,4 +33,32 @@ unsigned long topology_get_freq_scale(int cpu)
 	return per_cpu(freq_scale, cpu);
 }
 
+struct cpu_topology {
+	int thread_id;
+	int core_id;
+	int package_id;
+	int llc_id;
+	cpumask_t thread_sibling;
+	cpumask_t core_sibling;
+	cpumask_t llc_sibling;
+};
+
+#ifdef CONFIG_GENERIC_ARCH_TOPOLOGY
+extern struct cpu_topology cpu_topology[NR_CPUS];
+
+#define topology_physical_package_id(cpu)	(cpu_topology[cpu].package_id)
+#define topology_core_id(cpu)		(cpu_topology[cpu].core_id)
+#define topology_core_cpumask(cpu)	(&cpu_topology[cpu].core_sibling)
+#define topology_sibling_cpumask(cpu)	(&cpu_topology[cpu].thread_sibling)
+#define topology_llc_cpumask(cpu)	(&cpu_topology[cpu].llc_sibling)
+void init_cpu_topology(void);
+void store_cpu_topology(unsigned int cpuid);
+const struct cpumask *cpu_coregroup_mask(int cpu);
+#endif
+
+#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
+void update_siblings_masks(unsigned int cpu);
+#endif
+void remove_cpu_topology(unsigned int cpuid);
+
 #endif /* _LINUX_ARCH_TOPOLOGY_H_ */
diff --git a/include/linux/topology.h b/include/linux/topology.h
index cb0775e1ee4b..4b3755d65812 100644
--- a/include/linux/topology.h
+++ b/include/linux/topology.h
@@ -27,6 +27,7 @@
 #ifndef _LINUX_TOPOLOGY_H
 #define _LINUX_TOPOLOGY_H
 
+#include <linux/arch_topology.h>
 #include <linux/cpumask.h>
 #include <linux/bitops.h>
 #include <linux/mmzone.h>
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
