Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB4B159EAC
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 02:52:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LuPXOIbxBmenpqXqZVXOG/y0mEBIH8t2JeMg8idbWK0=; b=Lhg0bpFR3+63R4
	xw4g2CYdOjHzHuCetpq7labEYFwncwJExLOrI0p3rdn8fRdJEDFhmATOOdlhIPE3DlUIqIHU4rihg
	97QpWOEMjLdWWFiqbcwrGjSpQnReyjFd29NGQy6yW99SbdbLAI2p0xX7yZYG1co2LzbhOoL79o1Hh
	+OhTagGZUCotLTq95AyZfYvC2IJ8CjwMfZzKeREfjrr9h03FuUSyb0KCnxvn/a8CWV5RQg91JzLh/
	gRRtaq2YFtRgLlyVySM0gMi9aZCou0+JmLAYaQBCUxLnwTFacIsvtboZbWY7gyQ+4Xh6ydS550Ugg
	p4mQIc3eyquAcyphzi3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hCM-0006Ah-T2; Wed, 12 Feb 2020 01:52:18 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hC3-0005mv-8i
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 01:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581472329; x=1613008329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zJTVe1D9nhTrVxWl9u6c1zknXKl4UCVgI0tm6GTnV40=;
 b=el1qvkXQs7J3Au4JnZA1B9FyYNvhyfQeLh6VchG4XRMfCi/Mv2k2zXST
 66PkXQjERUlA+7r0J829L7YxkNvkHDCiexCRQ0drYrE4bYtIarup0m50M
 x22XjAobdt8oXMKdcXfNefn9JnLQMz1YZu3RU09X6/6I5LrWINWKaPT34
 5auIsRCc8qXLNz/GFG2jrCn69ZEgh8r9D8piZVXBoP1c5d/idbMhdCpI3
 d0w8aIAo7fThOUKsNChutNcDGGr5JbstY4JDcVVLmHLtX2hS6ld2eSr/J
 kPpGTEGjpOZttcEQaA4u9eBHH0cdmARPAXRNVcv0iLAqsmfvDS2oV0Rmz w==;
IronPort-SDR: BF/n/KNnl4JZUfv1GBG+BcMqnFBQB52HkKU1eHQpogChn8jcozjwt7w8h+bRTkfI0rUElUqGLx
 CgjB+csEzyNB05WQDxeMcBlXq+oHPYHaidGO9LC+lYElI1iw+qNPDHTEgDEAgObN9CW5cGO8tN
 JbykGwYHM5z0MgGSb6dlVHDEKgWWYtg41Cz0Kp32bfMsN4dUkz11U9Csv77FZdKpCZ93ATRCsY
 cc9Qxhk4nHoC1n9HYOXvfYMrDDEBiwVh85YaNo3U3BBMEx8ODRomLQSO4ljKFMwbLUOjL8c68I
 jPE=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="231429785"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 09:52:05 +0800
IronPort-SDR: EbtOXrJFDeFImg6HChHhuSpHCRyJaebQAEemSRh+DubGq3jEOegomTMaq2Wbtq3+kZZRrWiLEy
 K78Fjdyv2RHJ6CWTBqx2t4HXcxPY8z39FHM+63dJ4LONxHTmaadtz1NUB6lyhQgsUgn3mbcwnR
 AMthpLj1i/LZUtU9OcHL7ZqvVUJxn/HJ7UZS56oa71f4X5OtTK7krAafHyzZkv6l7SzIvdo2cz
 zMmuQC+1qMUVJx3kvACqMNRVE+oHCljUc6Uumi6AY4iZo+SYsLYqoQJZkOE+iWzvUYD1Y3zVlq
 ra2lT+qaDI4ig5rUcxmXNKWb
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 17:44:46 -0800
IronPort-SDR: NcODoFZall0iSabbvf4O22W8dEzev9T0ZY7Y2FevX58TgGpsx2zpOM1vHyMO9N/SrOMWsXhzLv
 PcJrAJpmWRe+TS56JR0Eniyhith87XooDhdnpt8HSS9ok2doXBDD4bNVh/yZ188WEIiGSPMgTY
 AIy2cFhXSpfpVufN0uT+eIp/JUyqnhVGu3G9v+uDlxDUcVxGlfqPmdZEgKQKyrsZk8n6y0MHCw
 g3PXyPtmdECYGlwzAN0g+2MlzXYFC/IurqEQfH8dT1tv8C0rgBy81gj36PVv9Tc9e2lt/TAcSt
 SDg=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Feb 2020 17:51:56 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 09/11] RISC-V: Add supported for ordered booting method
 using HSM
Date: Tue, 11 Feb 2020 17:48:20 -0800
Message-Id: <20200212014822.28684-10-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200212014822.28684-1-atish.patra@wdc.com>
References: <20200212014822.28684-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_175159_384607_F4019177 
X-CRM114-Status: GOOD (  17.85  )
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
 arch/riscv/kernel/cpu_ops.c     | 10 +++++++++-
 arch/riscv/kernel/cpu_ops_sbi.c | 31 +++++++++++++++++++++++++++++++
 arch/riscv/kernel/head.S        | 26 ++++++++++++++++++++++++++
 arch/riscv/kernel/smpboot.c     |  2 +-
 arch/riscv/kernel/traps.c       |  2 +-
 5 files changed, 68 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
index 1085def3735a..6221bbedaea4 100644
--- a/arch/riscv/kernel/cpu_ops.c
+++ b/arch/riscv/kernel/cpu_ops.c
@@ -18,6 +18,7 @@ const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
 void *__cpu_up_stack_pointer[NR_CPUS];
 void *__cpu_up_task_pointer[NR_CPUS];
 
+extern const struct cpu_operations cpu_ops_sbi;
 extern const struct cpu_operations cpu_ops_spinwait;
 
 void cpu_update_secondary_bootdata(unsigned int cpuid,
@@ -34,7 +35,14 @@ void cpu_update_secondary_bootdata(unsigned int cpuid,
 
 int __init cpu_set_ops(int cpuid)
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
 
 	return 0;
 }
diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
index 9bdb60e0a4df..31487a80c3b8 100644
--- a/arch/riscv/kernel/cpu_ops_sbi.c
+++ b/arch/riscv/kernel/cpu_ops_sbi.c
@@ -7,9 +7,13 @@
 
 #include <linux/init.h>
 #include <linux/mm.h>
+#include <asm/cpu_ops.h>
 #include <asm/sbi.h>
 #include <asm/smp.h>
 
+extern char secondary_start_sbi[];
+const struct cpu_operations cpu_ops_sbi;
+
 static int sbi_hsm_hart_stop(void)
 {
 	struct sbiret ret;
@@ -46,3 +50,30 @@ static int sbi_hsm_hart_get_status(unsigned long hartid)
 	else
 		return ret.value;
 }
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
index c1be597d22a1..8386cfafba98 100644
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
index 2ee41c779a16..2c56ac70e64d 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -146,7 +146,7 @@ void __init smp_cpus_done(unsigned int max_cpus)
 /*
  * C entry point for a secondary processor.
  */
-asmlinkage __visible void __init smp_callin(void)
+asmlinkage __visible void smp_callin(void)
 {
 	struct mm_struct *mm = &init_mm;
 
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index f4cad5163bf2..0063dd7318d6 100644
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
2.24.0


