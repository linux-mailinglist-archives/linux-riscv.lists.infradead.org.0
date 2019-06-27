Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655D558B40
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 21:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+sakpIybGSca+0E/b7Dh0cFxXUJHhXIxoSPTV/tWRw=; b=Ossgt55Ex3Uu33
	RSMn6lcqrEF4R+3LIKh3lYsCsRl4HO3yXzq5Jut8jSAnF5Bl9RHE8u2bUP74M0YqHujCCOAwG+wME
	6xxN6hemrhf6bdGYnK3cXFTo9cS+ZoGdPgX2M9n1SbSwrv45FG0seUpjB8H5sxVa3LbW4hxpd/zCZ
	5VQDZrV6Vxt0SZm3HZvGr+d8SCjKMzsOotv8JyRgZVbJ1rGETELe7hxhViMF5eY7WpTXj2iaXI310
	nTCyhNWQGxF8X/4mavBG6tUqJzALdPDlYca2IKO3G1BJ6uaMdvHPkSQ28YyijWxkAOSX1okD+q7kL
	9YyRPiy3BEa6p4tmu3Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgaVv-0005OD-JM; Thu, 27 Jun 2019 19:56:59 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgaUT-0004KW-Az; Thu, 27 Jun 2019 19:55:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561665329; x=1593201329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m7LM1Yn30CHGyuOfV/dUHRcNlm8MmSeMc/SCvDGd79w=;
 b=eEVUOvLucpsGbPXQ5dM90b1u2qtr6/KsySu9CHfGm9kQS7FhC6O2BNQF
 W+PcHJEYgP5Bu2jkfBC4Gwnknpdq3Lkky2mEfHXDcWAgTXxTOGAiwIgVW
 MEIy2TbZR88Lm2aOCFszMxp79FatXX1b8n7OOUU4MyzGsliNIjSWWVeeE
 l/y8xgCdE8ZLKDxSFy17iK5aMNiKbMxZM/u2Y3DyjJtSel2BMn7x+FoYh
 OdeYW5niKOQyHFSNW0pc3cDHmGgOUO0rq5V1PRNLvC6jvm8yFTJri464h
 MQYAMUKP0hRQNnPCjUrIUQokyU26wGUfzMKmzrvwrYs+MFhBMHy5bqbaL w==;
X-IronPort-AV: E=Sophos;i="5.63,424,1557158400"; d="scan'208";a="113353775"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jun 2019 03:55:27 +0800
IronPort-SDR: YQaPvpRGXel+gFhv/4+lR+G/R33r5E7U7PEdcYSPIdhqubI+JPMiRJSm0htk6VuJYjSpoiSJpg
 EyEtA+M81+nBEicjCGH59tOBt7pAAAFBVkdQE2gXDWVUmi3n+sqOkWzgWRl87+SriEmOUTS/gu
 ETo5WnZdzQZCYFns+GknYYAZAFcUoZfDQ0X4+PT3+pLUQ+aLFAwtuKwpFm5V4l4XL4gHfwxSMs
 hgdAStc6R0/+FbcX5mizNPUECbWXjNM9spvauzhrkqGj3jbns6GmIBm/CyKrIXTQ7Q+Moh/gdR
 Y+OJ+oKc8M8GuU8Xl/tEMW54
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 27 Jun 2019 12:54:39 -0700
IronPort-SDR: 4GoDamj7+XgyAJmdeE9KYznaHJBKqx0eZM/gumbXu9GISzR6wl+Al12ZO7VEaYZ9o17iRK85NI
 snHWMPUO3jXOxsfp9ZrwF0e/3XkAJaMcpG6hWNjupSKxOW9YFhdQc+KXaJnbOw2rDKaE2W2nE/
 ZjKCrMByiMMN1ru8MahcyfDkerbKQnSBdtfTTh5Cr10cHkA/s8uOjMeZFT9NlpjJhDhRP83ww0
 sDkRiZOStnKyqft5diKb3Tx4JsSSyxqcnei4vNkzOlVfrPtWM0XkJJhqgfqZp3xy28KIqs8A0H
 SS4=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jun 2019 12:55:27 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 4/7] arm: Use common cpu_topology structure and functions.
Date: Thu, 27 Jun 2019 12:52:59 -0700
Message-Id: <20190627195302.28300-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627195302.28300-1-atish.patra@wdc.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_125529_458075_07A3033B 
X-CRM114-Status: GOOD (  20.56  )
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
 Morten Rasmussen <morten.rasmussen@arm.com>, Anup Patel <anup@brainfault.org>,
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

Currently, ARM32 and ARM64 uses different data structures to represent
their cpu topologies. Since, we are moving the ARM64 topology to common
code to be used by other architectures, we can reuse that for ARM32 as
well.

Take this opprtunity to remove the redundant functions from ARM32 and
reuse the common code instead.

To: Russell King <linux@armlinux.org.uk>
Signed-off-by: Atish Patra <atish.patra@wdc.com>
Tested-by: Sudeep Holla <sudeep.holla@arm.com> (on TC2)
Reviewed-by : Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm/include/asm/topology.h | 20 -----------
 arch/arm/kernel/topology.c      | 60 ++++-----------------------------
 drivers/base/arch_topology.c    |  4 ++-
 include/linux/arch_topology.h   |  6 ++--
 4 files changed, 11 insertions(+), 79 deletions(-)

diff --git a/arch/arm/include/asm/topology.h b/arch/arm/include/asm/topology.h
index 2a786f54d8b8..8a0fae94d45e 100644
--- a/arch/arm/include/asm/topology.h
+++ b/arch/arm/include/asm/topology.h
@@ -5,26 +5,6 @@
 #ifdef CONFIG_ARM_CPU_TOPOLOGY
 
 #include <linux/cpumask.h>
-
-struct cputopo_arm {
-	int thread_id;
-	int core_id;
-	int socket_id;
-	cpumask_t thread_sibling;
-	cpumask_t core_sibling;
-};
-
-extern struct cputopo_arm cpu_topology[NR_CPUS];
-
-#define topology_physical_package_id(cpu)	(cpu_topology[cpu].socket_id)
-#define topology_core_id(cpu)		(cpu_topology[cpu].core_id)
-#define topology_core_cpumask(cpu)	(&cpu_topology[cpu].core_sibling)
-#define topology_sibling_cpumask(cpu)	(&cpu_topology[cpu].thread_sibling)
-
-void init_cpu_topology(void);
-void store_cpu_topology(unsigned int cpuid);
-const struct cpumask *cpu_coregroup_mask(int cpu);
-
 #include <linux/arch_topology.h>
 
 /* Replace task scheduler's default frequency-invariant accounting */
diff --git a/arch/arm/kernel/topology.c b/arch/arm/kernel/topology.c
index 60e375ce1ab2..238f1da0219c 100644
--- a/arch/arm/kernel/topology.c
+++ b/arch/arm/kernel/topology.c
@@ -177,17 +177,6 @@ static inline void parse_dt_topology(void) {}
 static inline void update_cpu_capacity(unsigned int cpuid) {}
 #endif
 
- /*
- * cpu topology table
- */
-struct cputopo_arm cpu_topology[NR_CPUS];
-EXPORT_SYMBOL_GPL(cpu_topology);
-
-const struct cpumask *cpu_coregroup_mask(int cpu)
-{
-	return &cpu_topology[cpu].core_sibling;
-}
-
 /*
  * The current assumption is that we can power gate each core independently.
  * This will be superseded by DT binding once available.
@@ -197,32 +186,6 @@ const struct cpumask *cpu_corepower_mask(int cpu)
 	return &cpu_topology[cpu].thread_sibling;
 }
 
-static void update_siblings_masks(unsigned int cpuid)
-{
-	struct cputopo_arm *cpu_topo, *cpuid_topo = &cpu_topology[cpuid];
-	int cpu;
-
-	/* update core and thread sibling masks */
-	for_each_possible_cpu(cpu) {
-		cpu_topo = &cpu_topology[cpu];
-
-		if (cpuid_topo->socket_id != cpu_topo->socket_id)
-			continue;
-
-		cpumask_set_cpu(cpuid, &cpu_topo->core_sibling);
-		if (cpu != cpuid)
-			cpumask_set_cpu(cpu, &cpuid_topo->core_sibling);
-
-		if (cpuid_topo->core_id != cpu_topo->core_id)
-			continue;
-
-		cpumask_set_cpu(cpuid, &cpu_topo->thread_sibling);
-		if (cpu != cpuid)
-			cpumask_set_cpu(cpu, &cpuid_topo->thread_sibling);
-	}
-	smp_wmb();
-}
-
 /*
  * store_cpu_topology is called at boot when only one cpu is running
  * and with the mutex cpu_hotplug.lock locked, when several cpus have booted,
@@ -230,7 +193,7 @@ static void update_siblings_masks(unsigned int cpuid)
  */
 void store_cpu_topology(unsigned int cpuid)
 {
-	struct cputopo_arm *cpuid_topo = &cpu_topology[cpuid];
+	struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
 	unsigned int mpidr;
 
 	/* If the cpu topology has been already set, just return */
@@ -250,12 +213,12 @@ void store_cpu_topology(unsigned int cpuid)
 			/* core performance interdependency */
 			cpuid_topo->thread_id = MPIDR_AFFINITY_LEVEL(mpidr, 0);
 			cpuid_topo->core_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
-			cpuid_topo->socket_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
+			cpuid_topo->package_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
 		} else {
 			/* largely independent cores */
 			cpuid_topo->thread_id = -1;
 			cpuid_topo->core_id = MPIDR_AFFINITY_LEVEL(mpidr, 0);
-			cpuid_topo->socket_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
+			cpuid_topo->package_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
 		}
 	} else {
 		/*
@@ -265,7 +228,7 @@ void store_cpu_topology(unsigned int cpuid)
 		 */
 		cpuid_topo->thread_id = -1;
 		cpuid_topo->core_id = 0;
-		cpuid_topo->socket_id = -1;
+		cpuid_topo->package_id = -1;
 	}
 
 	update_siblings_masks(cpuid);
@@ -275,7 +238,7 @@ void store_cpu_topology(unsigned int cpuid)
 	pr_info("CPU%u: thread %d, cpu %d, socket %d, mpidr %x\n",
 		cpuid, cpu_topology[cpuid].thread_id,
 		cpu_topology[cpuid].core_id,
-		cpu_topology[cpuid].socket_id, mpidr);
+		cpu_topology[cpuid].package_id, mpidr);
 }
 
 static inline int cpu_corepower_flags(void)
@@ -298,18 +261,7 @@ static struct sched_domain_topology_level arm_topology[] = {
  */
 void __init init_cpu_topology(void)
 {
-	unsigned int cpu;
-
-	/* init core mask and capacity */
-	for_each_possible_cpu(cpu) {
-		struct cputopo_arm *cpu_topo = &(cpu_topology[cpu]);
-
-		cpu_topo->thread_id = -1;
-		cpu_topo->core_id =  -1;
-		cpu_topo->socket_id = -1;
-		cpumask_clear(&cpu_topo->core_sibling);
-		cpumask_clear(&cpu_topo->thread_sibling);
-	}
+	reset_cpu_topology();
 	smp_wmb();
 
 	parse_dt_topology();
diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
index 5781bb4c457c..797e3cd71bea 100644
--- a/drivers/base/arch_topology.c
+++ b/drivers/base/arch_topology.c
@@ -426,6 +426,7 @@ static int __init parse_dt_topology(void)
 	of_node_put(cn);
 	return ret;
 }
+#endif
 
 /*
  * cpu topology table
@@ -491,7 +492,7 @@ static void clear_cpu_topology(int cpu)
 	cpumask_set_cpu(cpu, &cpu_topo->thread_sibling);
 }
 
-static void __init reset_cpu_topology(void)
+void __init reset_cpu_topology(void)
 {
 	unsigned int cpu;
 
@@ -526,6 +527,7 @@ __weak int __init parse_acpi_topology(void)
 	return 0;
 }
 
+#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
 void __init init_cpu_topology(void)
 {
 	reset_cpu_topology();
diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
index d4e76e0a283f..d4311127970d 100644
--- a/include/linux/arch_topology.h
+++ b/include/linux/arch_topology.h
@@ -54,11 +54,9 @@ extern struct cpu_topology cpu_topology[NR_CPUS];
 void init_cpu_topology(void);
 void store_cpu_topology(unsigned int cpuid);
 const struct cpumask *cpu_coregroup_mask(int cpu);
-#endif
-
-#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
 void update_siblings_masks(unsigned int cpu);
-#endif
 void remove_cpu_topology(unsigned int cpuid);
+void reset_cpu_topology(void);
+#endif
 
 #endif /* _LINUX_ARCH_TOPOLOGY_H_ */
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
