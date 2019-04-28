Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7737BB4B2
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Apr 2019 02:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pDswmECOsjvll7N+djswsOa5I/jMTtdIB5K+li7PFg=; b=BYFR2zTl3WYYZo
	FaD+QQ5/mxz5kCDGtrG4YRgbkQWbSBcz3Z8OdtTTKMZQ8lTxOCm/mSORz98zLdJUoMKTpNOvECCnU
	DN3ChyHHpGK3QPFfNMrkkfedzewpqFePmBnOAD0y1M5YnDRTVNIOoNefAppqob+C+LmR5i1FyNAq0
	QTaoD7FTUQG4ZaVf3dop7yD/A8SdfwS1Ne0WO2PWZpHua/dxNbMU06aa3+n5ms0QeG5CWBroKnVce
	9pQRX3m1j+A2tInYn32Qxk/nmmZEGeJqMqD4Dn861D2a5J+NCO18hkryz6yPYQHBrZPbUvVcKLD43
	ncYDh1l3M4t4psOFx7eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKXf8-0001OO-TQ; Sun, 28 Apr 2019 00:27:22 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKXdy-0008R0-2V; Sun, 28 Apr 2019 00:26:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556411170; x=1587947170;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C0s3Q/O8qn11niz50wHDStN1x4FtZC5KPQ7JENLP8SA=;
 b=f8Q/8sLXqm5kv//s7084dCHvPRN2BSXskDOkoWx+F3xU3Xm0sFmh5suI
 CpYHPuqWTEVzL55ID5DZlgjvRQfBjYcudvJm6m0sVFbAoSYv10yNFM57w
 gkD7kkD5Y7sxMfcNJM7RB1n40eCnObmWPkfkO7msrfvbcYDlGmFU6e0DS
 m7GfjR6Mx9TQtNX0yS/0p16KrV0dayfZI9HSazfLxPJu69WMyio/UFFId
 nyhGlYstZZRp40laMkTyiK7blQAm6cCg26b8fpVo+Aqyior77YYRws/rM
 UEZt90vjC3gs6M9VFIdwzRiHwTFPYDfM7HdPCUYfpUkA/QFRjvC8NVxVe Q==;
X-IronPort-AV: E=Sophos;i="5.60,403,1549900800"; d="scan'208";a="108718389"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Apr 2019 08:26:04 +0800
IronPort-SDR: 8xR/kLryhpH78TMGHLaGOgBqsKRyZqnshO9Iyp0TQ31f7mmxYOT0lnAIqSWOUsutxzexi8MXEI
 DZd5vebsAHPesnIA3MCxsex9RPAbJbZqZoPalH+tPxS899nTXixJO3Y9VCfsk86zukrKFuYCQ+
 jCSqDt7fyIObePeKLXoQEwnBSSTUp8IcntFPNr6H0CSbS89z+FJXTezLJhngcghdVED3iafWJQ
 U5FhzDSpJxz2kbMUTkHwAl71ToHGaVUsgfm/mIRnNqD0cz8GrV6pLNzr3vOK3Acmdvoc10WH9Z
 iRZ7/Mj27gNZKeYlRJ9hKadj
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 27 Apr 2019 17:02:29 -0700
IronPort-SDR: u+PFeKWQ12BYmx3wQh9/mn/2Jk/YxiB/FZFzUhp1CfGT2zYs87b7FKeA2xAuTzBL67IrB/ypud
 qMKsr2v84TUS/6VgObI6p4xN2I2QLG+R2s5vhYjBdiGqVLOEOMLhEhbUhc4bUe2aNgPNbjoaDn
 fuQ4f8jQyBFgFX0t3E6vQKXZbvFXyb20iSBKq/PcY8aj87kfnlfD1W7hSm3gVLScMDySvcIk/Z
 RVCuNCHM5kYv36nRZ51PdPGml/aQjENIbLElzMLTel/h9jgUfORwcE590tLWEWafyZOi8yr7Qt
 6yI=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Apr 2019 17:26:04 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFT PATCH v4 5/5] RISC-V: Parse cpu topology during boot.
Date: Sat, 27 Apr 2019 17:25:29 -0700
Message-Id: <20190428002529.14229-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190428002529.14229-1-atish.patra@wdc.com>
References: <20190428002529.14229-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_172610_328362_DCABB36B 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Anup Patel <anup@brainfault.org>, Ingo Molnar <mingo@kernel.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Andreas Schwab <schwab@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, there are no topology defined for RISC-V.
Parse the cpu-map node from device tree and setup the
cpu topology.

CPU topology after applying the patch.
$cat /sys/devices/system/cpu/cpu2/topology/core_siblings_list
0-3
$cat /sys/devices/system/cpu/cpu3/topology/core_siblings_list
0-3
$cat /sys/devices/system/cpu/cpu3/topology/physical_package_id
0
$cat /sys/devices/system/cpu/cpu3/topology/core_id
3

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig          | 1 +
 arch/riscv/kernel/smpboot.c | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index eb56c82d8aa1..ac87a0ec8b5c 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -47,6 +47,7 @@ config RISCV
 	select PCI_MSI if PCI
 	select RISCV_TIMER
 	select GENERIC_IRQ_MULTI_HANDLER
+	select GENERIC_ARCH_TOPOLOGY if SMP
 	select ARCH_HAS_PTE_SPECIAL
 	select HAVE_EBPF_JIT if 64BIT
 
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 7a0b62252524..54f89d5b19ba 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -16,6 +16,7 @@
  * GNU General Public License for more details.
  */
 
+#include <linux/arch_topology.h>
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -43,6 +44,7 @@ static DECLARE_COMPLETION(cpu_running);
 
 void __init smp_prepare_boot_cpu(void)
 {
+	init_cpu_topology();
 }
 
 void __init smp_prepare_cpus(unsigned int max_cpus)
@@ -146,6 +148,7 @@ asmlinkage void __init smp_callin(void)
 
 	trap_init();
 	notify_cpu_starting(smp_processor_id());
+	update_siblings_masks(smp_processor_id());
 	set_cpu_online(smp_processor_id(), 1);
 	/*
 	 * Remote TLB flushes are ignored while the CPU is offline, so emit
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
