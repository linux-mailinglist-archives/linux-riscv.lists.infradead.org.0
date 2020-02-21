Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B0A166C01
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 01:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWu6qWUvoQxNMnCL16RkMVFzIQWk9Fn3zOCOUrooEus=; b=UgW3G1Ot5eI4+K
	48WNfszO15x7K2XUsPkyvhUCeYXPu6Gpk4NXar8pKQ38WrWaPI5KBexF2ZziCKz72UQ93r6CX7xtf
	uGfZPkF0r23AWuHxN/RaUP1MKSqPNHgi9GndvQU4OODUVLOhFT8+oinjyflrq/qAOvbGBD7TC7YWZ
	97wPlXcEAu/tNd8K3n4KveR3hCXBuurICHabCKvK+qJ4CrHU4Lf0inu9UwjfAB5I2e011AzU8sltA
	9dOdwO7EB9T5D6FD3si/HmhsJ1pkfqyYGPFRbPSk9UNmnqKZb/KmisWXk+LsNDrcXc/mDhGOJ4rVd
	CnbQN5Ngv+tptRU1L9GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4wRe-0006Kl-L1; Fri, 21 Feb 2020 00:45:30 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4wRA-0004PR-BV
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 00:45:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582245923; x=1613781923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0dyRb9zAXLp4QWHztutNURSgVdiAHA6cYNzlmqXm7d0=;
 b=CSXi/SUhfU0ub86OudC7FQfD+ibYRwU149HzJpQyVv2fAWVSWtVeIHmY
 NnzPQp5OVyltnfgqAT/FeKAtM2DLhW6DCdQY9Ewt7WgsoB2lvvHbyLTNJ
 7ktFRcWeldKmdUOiD9QRVxnr9RhAjwpCWbPJXaHlA8lCRNKt3Wb292VSt
 17OT6VqqLmZCACxYw+fkpAiynPP+ry84qvYYklwObglD81s1qqVU+YikK
 pQ/V5z+3Sl7Ny/zQRBMFDx0Xpncrid5jCVnLJctwMoNJ5FJQ/+YHCHlTR
 +uiHZ4dumTjrYRFc2eqbxbrDIsmnmRKTeEYUT/Ydg6DauXNFCujXZyDgA g==;
IronPort-SDR: WyLe9DY/5F+tNV8pEFOHQwPTQiS2pb4X8J1NoK4M3vLcCszNiLoNKblAgZuZkggjUSh+tJsSLx
 yEJWpCmNu23LQmxJTCvoDJZ9lYLfbUAVgL/LvcI0lGl29vnRVW8rzPf6L8wDbX5nTfm8X2VPtd
 4e/H/cid2olGp1VSH+nAchtTcOErC7OJgW92lmzzAzUuCe4hCzrQ9Tf+qBk75cLni7BWucDxCU
 dZZIP/eMAHnaHZhUE8+mTRBkMOx6+mGbYlrFcTxB8fZEd9Rvn56l4fOcqTuEl9MWjo8igitCsk
 j6c=
X-IronPort-AV: E=Sophos;i="5.70,466,1574092800"; d="scan'208";a="232211082"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2020 08:45:08 +0800
IronPort-SDR: jrutuUBHqOtyCedk5wuEuTvv+tPHKuP/U9e+O7lAvPKopFe7CGwRO+BjaiaG2MC4IQtnb98+lt
 ArC+MmuYLPlAHpkytERzMC0sW1JA9YuThBuSSU4hSKvzXLN8jHXmsl0h0L8+InjsuE0oW7BVQu
 iWhmn2SjkI0qX5L7YCcVHadErAYfWc2T9x89CpIX91ztuanxiDVDJWwCSVvPIyo7EWtEAHT2GR
 HE57qcXtEAwYICdeGWlGcaV1CyXVqWpxqbVSZTvlZPHWkVXjJEy3Ae5F1OFOhN44lf+M5zyXqi
 JSfMpX35kGv8HZdOTjMYU9V5
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 16:37:24 -0800
IronPort-SDR: AMNS+57z7EiZ28OZgHP/i9KafQM6Ug6T5U78Bo6m5kcZkqacMjvG67F2bk+qWqs4FacH/encZx
 LVgH/BWn5UFtB7bnr1WFJfCXcXUKQU5CCTR6xzTUfZ38aljoFBxRr4lWempORinW9JCfIPC3rf
 9kQiEmx6g3QlJsfsWmd82r2Imi8QK2JU6f4KH92Xpwf8r8Z3tT6zK++sJd5+2aG1bgFO9ogxn2
 0+wIxLr2rne3/up1ofD+ousT8D+ve2dz7JxEeZWIe2wJXwcj9QLpVzI99LrCvJjt3kPPGfVhX0
 sbY=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Feb 2020 16:44:49 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 10/12] RISC-V: Add supported for ordered booting method
 using HSM
Date: Thu, 20 Feb 2020 16:44:11 -0800
Message-Id: <20200221004413.12869-11-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200221004413.12869-1-atish.patra@wdc.com>
References: <20200221004413.12869-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_164500_534841_27924915 
X-CRM114-Status: GOOD (  18.57  )
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
index e950ae5bee9c..afa90f711a2b 100644
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
index 000000000000..70d02dfe0ab8
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
+		       unsigned long priv)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_START,
+			      hartid, saddr, priv, 0, 0, 0);
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
+			      hartid, 0, 0, 0, 0, 0);
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
index b85376d84098..ac5b0e0a02f6 100644
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
2.25.0


