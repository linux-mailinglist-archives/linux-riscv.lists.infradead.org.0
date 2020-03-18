Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EDC189385
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 02:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vuxswliKTubVP8of6YVTD5ezN8kSxgXpPUoFQqnYn6g=; b=Ksym7D8oUZk42r
	VfFlUvDhA4EmOeAvQup8GQQj6AKOEGuSKq/uX/hwqGMj5vCcYAyI/PCGpc/f6RckPGJIvpCVmkN64
	99L/A4plXGXtBLIMD4PZdqBDqdE8BH9lPxcwQP5JGixknTNkap7LAdJWE3arTquuBMGHFACD0M7Yy
	qAJ7lewY634ldyfy+HArwz6YQdfY88NJa4Q0LEvy7O/1zytqoejnKF+UYIFejh8rVglb/CAXyI1Oo
	TDHk8gQfAetQv//sKmeglABIDI/U8jl28JSye0brmq/PNSyOPLyGUOQnHEgpmvCGH7sP7MAB50KuK
	oiipXdEWkGVnyKKkPLpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENFw-0007JS-2r; Wed, 18 Mar 2020 01:12:24 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENFh-0006um-OX
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 01:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584493930; x=1616029930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6XwVtd4hjdLAdDULSYiiivE6I4tNnePY/rn/fOEMUu4=;
 b=Dl1KE6dltb0r+ifnJmA3VVOynj6MHizRYZFY27sM2BLK3eFTLnzrdKpI
 zipdFxltpGbZLzp+rHsIIfOHae+mz3fA+Wb6p74c+A967S3Dp7JkLzHXD
 SnaMG2y09aHnCMHU2DPWCO2XbwmGFHIQJ7wFIrbRvPmx706KTviKrDh9G
 hOnjXcLfylA9z0OFADqi3Do0r95hHKdLFn4a7jjjb2l8AUUC+BmoieGGI
 D11AssB+hl7DC892mhM0+9xDF9z9Bs1qz7Z3SO9tsbRcxoLuwhnOX7W4P
 P8lyrUiy/8x6SALKdlTZDXxgjpm4gl2xuy3CzvCef/haM+lzBF45ryKvD w==;
IronPort-SDR: HcLppdfDUZodGcG7NG32NswFKkK3I3fItx9sP53Tc6zg5LxW209ROCFzUXGWFlLsUYB03BMNho
 Gs7BqsiMOwKDiFKtsY2xFTD/kTN7M5RMD0mlWN3ETuCbweEXzqTYThxCN/K8SnKPjOvEpmF6/w
 hIdTKx+ivLo+yKDRxdlzWKG8aIhdSMl21RNmsCtEzh8GnjyC/S4CVjiwQR/QsXc1bKoq3fSzFQ
 zXdDI4/yzxKShhm9ENqU+ZOT/NPQczQNSZMB7TCwVowa3KAT6Ubrj1VyIfD7KrgAiCdSCUkV5/
 M0U=
X-IronPort-AV: E=Sophos;i="5.70,565,1574092800"; d="scan'208";a="134242171"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Mar 2020 09:12:02 +0800
IronPort-SDR: l0aoU0XAJjWaYRZCYI2VgrEJTXShIbN5LrukbzZHiX4joHjV+eqLkt0C+3188bLwBkV6LPgkAL
 yk2o/Dab5kLaMwIIBD72qedxkDLOFJz6hZjd4UyA9xKP1JdaARyaNkn3uPWYVzMHA5zWrALWAG
 Sba/pmGMpy+1t52FmwLpESgKwyYCl9jnWK0gquGOzf7KihUKxinB8pHJXi41H7HFcFH7rXO1Qi
 E9iH+b1IywJIRfx7tEQnE0uX+TtPUoDYUNxlUcHOSOEj7ohJLIuBApC7NBZr88ZVYLqDieXjvs
 L2Z6ZW8R4wh8e8n7Hr3LeueT
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 18:03:28 -0700
IronPort-SDR: o9JDJg+S4/mv3uQOWj+ifTAHQHQdygp45KaVQHxiyWTNMjk1EFPiqy42FM0B+NbL38uK313F/p
 SFSRhLIcvIx65mwxWAi8tPUEbM32LDmTTiWbE1sVlPQTripVNLaYv+A6V2YxkmOre8zpMqkQhq
 NuRm7W8T/x9N1xWruUFH0aOXvEwXobQz1rmpGSkkY7XUXqcHI2y0gfZS0MEuyKPme0vIDz4Xlp
 +caEo60cf8Rne4ZSoCQ5PljzG36fE1xOR9hjHYU8s5ZIEozE2jWQsGeZPcx41S8cLwNo9FvJc6
 6/E=
WDCIronportException: Internal
Received: from mccorma-lt.ad.shared (HELO yoda.hgst.com) ([10.86.54.125])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Mar 2020 18:12:01 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v11 10/11] RISC-V: Add supported for ordered booting method
 using HSM
Date: Tue, 17 Mar 2020 18:11:43 -0700
Message-Id: <20200318011144.91532-11-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200318011144.91532-1-atish.patra@wdc.com>
References: <20200318011144.91532-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_181209_877494_9490C710 
X-CRM114-Status: GOOD (  18.91  )
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

Currently, all harts have to jump Linux in RISC-V. This complicates the
multi-stage boot process as every transient stage also has to ensure all
harts enter to that stage and jump to Linux afterwards. It also obstructs
a clean Kexec implementation.

SBI HSM extension provides alternate solutions where only a single hart
need to boot and enter Linux. The booting hart can bring up secondary
harts one by one afterwards.

Add SBI HSM based cpu_ops that implements an ordered booting method in
RISC-V. This change is also backward compatible with older firmware not
implementing HSM extension. If a latest kernel is used with older
firmware, it will continue to use the default spinning booting method.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/kernel/Makefile      |  3 ++
 arch/riscv/kernel/cpu_ops.c     | 10 +++-
 arch/riscv/kernel/cpu_ops_sbi.c | 81 +++++++++++++++++++++++++++++++++
 arch/riscv/kernel/head.S        | 26 +++++++++++
 arch/riscv/kernel/smpboot.c     |  2 +-
 arch/riscv/kernel/traps.c       |  2 +-
 6 files changed, 121 insertions(+), 3 deletions(-)
 create mode 100644 arch/riscv/kernel/cpu_ops_sbi.c

diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index f81a6ff88005..a0be34b96846 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -44,5 +44,8 @@ obj-$(CONFIG_PERF_EVENTS)	+= perf_event.o
 obj-$(CONFIG_PERF_EVENTS)	+= perf_callchain.o
 obj-$(CONFIG_HAVE_PERF_REGS)	+= perf_regs.o
 obj-$(CONFIG_RISCV_SBI)		+= sbi.o
+ifeq ($(CONFIG_RISCV_SBI), y)
+obj-$(CONFIG_SMP) += cpu_ops_sbi.o
+endif
 
 clean:
diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
index 62705908eee5..c4c33bf02369 100644
--- a/arch/riscv/kernel/cpu_ops.c
+++ b/arch/riscv/kernel/cpu_ops.c
@@ -18,6 +18,7 @@ const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
 void *__cpu_up_stack_pointer[NR_CPUS];
 void *__cpu_up_task_pointer[NR_CPUS];
 
+extern const struct cpu_operations cpu_ops_sbi;
 extern const struct cpu_operations cpu_ops_spinwait;
 
 void cpu_update_secondary_bootdata(unsigned int cpuid,
@@ -34,5 +35,12 @@ void cpu_update_secondary_bootdata(unsigned int cpuid,
 
 void __init cpu_set_ops(int cpuid)
 {
-	cpu_ops[cpuid] = &cpu_ops_spinwait;
+#if IS_ENABLED(CONFIG_RISCV_SBI)
+	if (sbi_probe_extension(SBI_EXT_HSM) > 0) {
+		if (!cpuid)
+			pr_info("SBI v0.2 HSM extension detected\n");
+		cpu_ops[cpuid] = &cpu_ops_sbi;
+	} else
+#endif
+		cpu_ops[cpuid] = &cpu_ops_spinwait;
 }
diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
new file mode 100644
index 000000000000..66f3cded91f5
--- /dev/null
+++ b/arch/riscv/kernel/cpu_ops_sbi.c
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * HSM extension and cpu_ops implementation.
+ *
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
+ */
+
+#include <linux/init.h>
+#include <linux/mm.h>
+#include <asm/cpu_ops.h>
+#include <asm/sbi.h>
+#include <asm/smp.h>
+
+extern char secondary_start_sbi[];
+const struct cpu_operations cpu_ops_sbi;
+
+static int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
+			      unsigned long priv)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_START,
+			hartid, saddr, priv, 0, 0, 0);
+	if (ret.error)
+		return sbi_err_map_linux_errno(ret.error);
+	else
+		return 0;
+}
+
+#ifdef CONFIG_HOTPLUG_CPU
+static int sbi_hsm_hart_stop(void)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STOP, 0, 0, 0, 0, 0, 0);
+
+	if (ret.error)
+		return sbi_err_map_linux_errno(ret.error);
+	else
+		return 0;
+}
+
+static int sbi_hsm_hart_get_status(unsigned long hartid)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STATUS,
+			hartid, 0, 0, 0, 0, 0);
+	if (ret.error)
+		return sbi_err_map_linux_errno(ret.error);
+	else
+		return ret.value;
+}
+#endif
+
+static int sbi_cpu_start(unsigned int cpuid, struct task_struct *tidle)
+{
+	int rc;
+	unsigned long boot_addr = __pa_symbol(secondary_start_sbi);
+	int hartid = cpuid_to_hartid_map(cpuid);
+
+	cpu_update_secondary_bootdata(cpuid, tidle);
+	rc = sbi_hsm_hart_start(hartid, boot_addr, 0);
+
+	return rc;
+}
+
+static int sbi_cpu_prepare(unsigned int cpuid)
+{
+	if (!cpu_ops_sbi.cpu_start) {
+		pr_err("cpu start method not defined for CPU [%d]\n", cpuid);
+		return -ENODEV;
+	}
+	return 0;
+}
+
+const struct cpu_operations cpu_ops_sbi = {
+	.name		= "sbi",
+	.cpu_prepare	= sbi_cpu_prepare,
+	.cpu_start	= sbi_cpu_start,
+};
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 173507395a6b..e5115d5e0b3a 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -99,11 +99,37 @@ relocate:
 	ret
 #endif /* CONFIG_MMU */
 #ifdef CONFIG_SMP
+	.global secondary_start_sbi
+secondary_start_sbi:
+	/* Mask all interrupts */
+	csrw CSR_IE, zero
+	csrw CSR_IP, zero
+
+	/* Load the global pointer */
+	.option push
+	.option norelax
+		la gp, __global_pointer$
+	.option pop
+
+	/*
+	 * Disable FPU to detect illegal usage of
+	 * floating point in kernel space
+	 */
+	li t0, SR_FS
+	csrc CSR_STATUS, t0
+
 	/* Set trap vector to spin forever to help debug */
 	la a3, .Lsecondary_park
 	csrw CSR_TVEC, a3
 
 	slli a3, a0, LGREG
+	la a4, __cpu_up_stack_pointer
+	la a5, __cpu_up_task_pointer
+	add a4, a3, a4
+	add a5, a3, a5
+	REG_L sp, (a4)
+	REG_L tp, (a5)
+
 	.global secondary_start_common
 secondary_start_common:
 
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index e89396a2a1af..4e9922790f6e 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -143,7 +143,7 @@ void __init smp_cpus_done(unsigned int max_cpus)
 /*
  * C entry point for a secondary processor.
  */
-asmlinkage __visible void __init smp_callin(void)
+asmlinkage __visible void smp_callin(void)
 {
 	struct mm_struct *mm = &init_mm;
 
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index ffb3d94bf0cc..8e13ad45ccaa 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -147,7 +147,7 @@ int is_valid_bugaddr(unsigned long pc)
 }
 #endif /* CONFIG_GENERIC_BUG */
 
-void __init trap_init(void)
+void trap_init(void)
 {
 	/*
 	 * Set sup0 scratch register to 0, indicating to exception vector
-- 
2.25.1


