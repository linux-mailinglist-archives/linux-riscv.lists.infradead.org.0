Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDECD14AE28
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 03:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sec2vKtP1Ey0UM+i5UuuRQUpWerTOMUtRt2sfvUkDjM=; b=JdQw8VOG274X47
	I1SrkDku5kGjwmmMbSX+m5GbLFoivHjjcd4b0u2Q+nMVONelHEoWNmAvyiPppQiN49UICFua5nzph
	rfeE53e/zFICXrI0As8Z/+ccBxl0ICU723QZK7DB1WGjR52U1vbiW2EfEwOXuEyw7LKL39S3EDnFT
	4GYtfYdGG/DnKaDdUrDufJdXwiZ6OmZXIrfxTTt701b7fRXhRIP7fNldUJM/AqBBMgjR/qmZBQagQ
	JbNG0FEUsAmXv0kD9vuq4lVLzz00tsPp2CGgULOTj8UZ32fp8BQN1MalbFoqexxMwSIbY7mBbeRdb
	sNxbyEeo8fe7RbLXK5/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGcO-0006S8-Rh; Tue, 28 Jan 2020 02:28:44 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGbv-0005pr-SQ
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 02:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580178497; x=1611714497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9/4+D4chKrcwV4CoOuuG7G2FPWLBcuIllOhB7t6PGOY=;
 b=aJPBYLlKqVbaYTEM5fEu1kXLsAde7GBFAWOixPI6Dsx2tTIIX9lG3Gwp
 6iN/9wcq3t6CY78bFroHnuuMZwZ4Y8F51eHQ9WGV33VJmqqmRMZB7oAO5
 Y5GU1fxUOP/kMK1Z4KDYpjQvIL6qH2b7TzoZVFF0TnRL9oOKZcgOhXkkj
 NXx8u8sbUip6bVm8GE1mvVIlpt+2LRsjHXXiBldiywRbbQBvlZQDPksjM
 EOs73WhfZSM9sLVGxuJH+QWncZ/4BiAd698aDC9XVMHwkMXbP09fkxG1E
 R2sYph7NEFuD7TO41NzvTHNYaettCwTsf92uXsaFhaEDDjiN8BpBCKSIw A==;
IronPort-SDR: q93yYRn8bdBfy+qaWrN7mBLMcJsZWQf8q3chIa3w6FoJGP/hF2HpIxGI+jYb4qMUslf4LBoGJ+
 XEAD4XqZODINTeOtdTo98o6j/jyd6p8Zu0n7HZJZhr+wEnuvcy+Zm8hHC71ErXemYCljyjvnH7
 q3aeV/pUhRIcIbHmyRem/FuX5QTc4mMvWZUGV1i9MXTRiJd/6RrI3hNjwhgmXvsnzxpPW5TyAl
 7E+oQVM9EDyfFrej8labWhwUFchCbaF0rs8vIcS53+HeJGO2I8yQrrqZCFK4peBgHUcifNgvmL
 xkM=
X-IronPort-AV: E=Sophos;i="5.70,372,1574092800"; d="scan'208";a="230237606"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2020 10:28:32 +0800
IronPort-SDR: 6HvS9GisIf2trYuNBh4DG/AZ4ay86rl5W3nz1USgmOIlZK7BBU3svIw9f5hDDE6/tEJd6fj7+l
 umbZURfepX89CK/aRcULI4aaq+ZW9eDBvHu0ghQ4MI96PQIZ4+5DcNKzkQJYHqYjfO8lsGQUD5
 TtGSHB9xy5MGs1/KwgQP0XNcn/qWbZrhs0gd3eJdNfo59BzD+wpeMdthXzRErW5kuosN44Efu0
 sGJ3cckdI488fiC+rzjeqpfw2+EhRSggCqcExP6KwsupjIjCHJy0qTy6WSadyZujR+naGnxeBK
 H0vKJ3pDiBa9pFyT2bfLjW8m
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 18:21:26 -0800
IronPort-SDR: L5w45/D70nhTLbCM68m93MH+z7Ithd6pTtaen98yHchkqQi1Gb85CnBL37T4Fz9F+NWCEKWau3
 sUqYKhIm3odCScr0S2X6l0gd85Wu+yoH7/4dgR+IT98AMMlG8k0o39O9PrMgSQQ7/j2C8cXvC4
 wCwoxxOOfpx67v+lqZVry+RAIEoJdQXjIi3P7ZTB1+xj9S/1eh9K3kbuYSyxVsca78WL7QL4m9
 HXLNJl3heH8wnvMNj4p3SnJuSnJ3vI0w+CQoYY+QFz2oyA2bXbgtxVpoA4PAMAplG2duuc8Dis
 OH8=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jan 2020 18:28:11 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 09/10] RISC-V: Add supported for ordered booting method
 using HSM
Date: Mon, 27 Jan 2020 18:27:36 -0800
Message-Id: <20200128022737.15371-10-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200128022737.15371-1-atish.patra@wdc.com>
References: <20200128022737.15371-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_182815_967559_F5D43EB2 
X-CRM114-Status: GOOD (  17.03  )
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
 arch/riscv/kernel/cpu_ops.c | 41 ++++++++++++++++++++++++++++++++++++-
 arch/riscv/kernel/head.S    | 25 ++++++++++++++++++++++
 arch/riscv/kernel/smpboot.c |  2 +-
 arch/riscv/kernel/traps.c   |  2 +-
 4 files changed, 67 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
index 099dbb6ff9f0..454df032066f 100644
--- a/arch/riscv/kernel/cpu_ops.c
+++ b/arch/riscv/kernel/cpu_ops.c
@@ -17,9 +17,13 @@ const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
 
 void *__cpu_up_stack_pointer[NR_CPUS];
 void *__cpu_up_task_pointer[NR_CPUS];
+extern char secondary_start_sbi[];
 
+const struct cpu_operations cpu_sbi_ops;
 const struct cpu_operations cpu_spinwait_ops;
 
+#define RISCV_HART_FIRMWARE_STOPPED 0
+
 static int spinwait_cpu_prepare(unsigned int cpuid)
 {
 	if (!cpu_spinwait_ops.cpu_start) {
@@ -29,6 +33,32 @@ static int spinwait_cpu_prepare(unsigned int cpuid)
 	return 0;
 }
 
+static int sbi_cpu_prepare(unsigned int cpuid)
+{
+	if (!cpu_sbi_ops.cpu_start) {
+		pr_err("cpu start method not defined for CPU [%d]\n", cpuid);
+		return -ENODEV;
+	}
+	return 0;
+}
+
+static int sbi_cpu_start(unsigned int cpuid, struct task_struct *tidle)
+{
+	int rc;
+	int hartid = cpuid_to_hartid_map(cpuid);
+	unsigned long boot_addr = __pa_symbol(secondary_start_sbi);
+
+	/* Make sure tidle is updated */
+	smp_mb();
+	WRITE_ONCE(__cpu_up_stack_pointer[hartid],
+		  task_stack_page(tidle) + THREAD_SIZE);
+	WRITE_ONCE(__cpu_up_task_pointer[hartid], tidle);
+
+	rc = sbi_hsm_hart_start(hartid, boot_addr, 0);
+
+	return rc;
+}
+
 static int spinwait_cpu_start(unsigned int cpuid, struct task_struct *tidle)
 {
 	int hartid = cpuid_to_hartid_map(cpuid);
@@ -48,6 +78,12 @@ static int spinwait_cpu_start(unsigned int cpuid, struct task_struct *tidle)
 	return 0;
 }
 
+const struct cpu_operations cpu_sbi_ops = {
+	.name		= "sbi",
+	.cpu_prepare	= sbi_cpu_prepare,
+	.cpu_start	= sbi_cpu_start,
+};
+
 const struct cpu_operations cpu_spinwait_ops = {
 	.name		= "spinwait",
 	.cpu_prepare	= spinwait_cpu_prepare,
@@ -56,6 +92,9 @@ const struct cpu_operations cpu_spinwait_ops = {
 
 int __init cpu_set_ops(int cpuid)
 {
-	cpu_ops[cpuid] = &cpu_spinwait_ops;
+	if (sbi_hsm_is_available())
+		cpu_ops[cpuid] = &cpu_sbi_ops;
+	else
+		cpu_ops[cpuid] = &cpu_spinwait_ops;
 	return 0;
 }
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 9d7f084a50cc..3c93973667c8 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -210,11 +210,36 @@ relocate:
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
 	.global secondary_start_common
 secondary_start_common:
 
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index f2cf541bc895..8ac9115001b9 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -144,7 +144,7 @@ void __init smp_cpus_done(unsigned int max_cpus)
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


