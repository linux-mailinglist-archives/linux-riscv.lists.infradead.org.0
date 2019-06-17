Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9475548D5D
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 21:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPXeTGsmMpJYbkVW6uDf35bIdLDrJ92TL/IPpVcKf2E=; b=NtfPyDz43+oyq+
	232tCcbiok57YFm9XBGQ8CBhVzk9+GYWlfU76TZmNlZU07GxGqooD3fmFFg6foDdpHQTsksbgm7Dz
	n7S6of2+kvoq4msqXjfPHN911h0YZyISv9UkJVgi/U35C+j8F3oVPoyBtXt3pD9/KnOHQ9PYQJYFa
	WXBD9TqPqBrAl+HhpX2SRJTmRoKih6nqVqrWq0cid7p1GCMBtTlAME1Vc9rjGu/RYvi8yGMay+Y9A
	zKwLU79RVaJ04xMDeUhw7JcZ+4hR72VPDKt6Z6KbyVYYmLqjJ9fJJSa0p2QZBlySmQw385zoGJ7IL
	lXEmtrIv+yn6AHURAjNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcwuM-00057N-9F; Mon, 17 Jun 2019 19:03:10 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcwsB-0003VE-5c; Mon, 17 Jun 2019 19:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560798055; x=1592334055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FdusRwcmVMWHwhKYZKA8Sg9X99lDeoGVE78siWre56A=;
 b=jdozColWzvkyAMfgFkRmO0V14gA0W5CAlrDZd3nt4OFwEGBRSc+7jKUF
 sBdteck0XcdeK2FguYcsj5yh2bOuiEYBAUauzxnvYAJkyZINm1VC3bI0n
 khVQpQ4ma51uEWGemdF+r/CqTjfpQ5JMRJ05ahhayU1rcehEpPi3Oyg45
 ywchyOpKWLin+zKl5qIN0dtaKrvcn6S6rDXOmATCYEIYLjrgjKDuhuSLO
 6nlp19+mhth0zeJslb/f8XeA2zgcFaXS6KR6tdI+B1KyLdO+nqb7q0lj2
 kjoXwQner4wHHQtMr1JbLT5U+UGy76UPPaP1H2NLIv3vMu1b9+EV15iIr A==;
X-IronPort-AV: E=Sophos;i="5.63,386,1557158400"; d="scan'208";a="217145878"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Jun 2019 03:00:53 +0800
IronPort-SDR: lark6FSEkc2GXfE7tZqKGC9z/H41Foz95Kr7TiwGB3TWVu5JYUBqUpkVnmN0HmhtxopwkrwBDD
 O2mpvFvK1kbKW46HI6YVWXQTW/qXgN7id4jBG7/hDTEb6tQaKmsoqjAQQ3I3fy89qR438MWcMA
 wYiF0QGefrZ1fC/vCkK+SHI/XWJIp8tyGQqgSCS8S2B201TZa0YOyy+Hs917G7mysK1t4A2jIR
 uXcdnImmUzGj/J6EAEN2CKFTi4t1CIOJ6s9dl1n1qdrQpPUL3wQMO6CFz+Tq2jcfDhlhnT3ExC
 x5vk68hZPPB7HZzSSRSBwBom
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 17 Jun 2019 12:00:23 -0700
IronPort-SDR: zJubSC4vCo5jqsd42gSsbVN/4doMi68FO7XiOle1TUfLfMPXN6wZP2lcTR+aBUYXaFVE5T7mCV
 Yp3NzoCU4Y2XpnoKnDsi/VUpWSP9tNuczvEyZoD6d1c9yPq6OJSTb5tdVJ46EG19vadZxhQsea
 a9RXFQLbpka2H3p+WDc23vduv3b3WkQ/LZqWi04t3SrejMK4FwC2XcI6ITBJ2At29H2CRGEUaa
 v69yCj/PPY4KbZeSRiM5PpS7Blo2ZKFbth72KvUGe7x0U/yg20Ub6/loOEkI6UbyeLzfiWZeVJ
 EQc=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Jun 2019 12:00:51 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org,
	Russell King <linux@armlinux.org.uk>
Subject: [PATCH v7 5/7] RISC-V: Parse cpu topology during boot.
Date: Mon, 17 Jun 2019 11:59:18 -0700
Message-Id: <20190617185920.29581-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617185920.29581-1-atish.patra@wdc.com>
References: <20190617185920.29581-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_120055_431015_EA182349 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Anup Patel <anup@brainfault.org>, Ingo Molnar <mingo@kernel.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Atish Patra <atish.patra@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
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
Acked-by: Sudeep Holla <sudeep.holla@arm.com>
Acked-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/Kconfig          | 1 +
 arch/riscv/kernel/smpboot.c | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 0c4b12205632..2d8a16299a85 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -47,6 +47,7 @@ config RISCV
 	select PCI_MSI if PCI
 	select RISCV_TIMER
 	select GENERIC_IRQ_MULTI_HANDLER
+	select GENERIC_ARCH_TOPOLOGY if SMP
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_MMIOWB
 	select HAVE_EBPF_JIT if 64BIT
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 7462a44304fe..18ae6da5115e 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -8,6 +8,7 @@
  * Copyright (C) 2017 SiFive
  */
 
+#include <linux/arch_topology.h>
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -35,6 +36,7 @@ static DECLARE_COMPLETION(cpu_running);
 
 void __init smp_prepare_boot_cpu(void)
 {
+	init_cpu_topology();
 }
 
 void __init smp_prepare_cpus(unsigned int max_cpus)
@@ -138,6 +140,7 @@ asmlinkage void __init smp_callin(void)
 
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
