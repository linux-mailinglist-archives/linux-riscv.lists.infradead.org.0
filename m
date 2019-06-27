Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3083758B49
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 21:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPXeTGsmMpJYbkVW6uDf35bIdLDrJ92TL/IPpVcKf2E=; b=axLQBSTrWuXFwU
	zXr+HuMPWTVMbQSHRx8RyXGzfWNlPcqaXIELvW/vdaO8+lHH3b/JvhL1GIZ7KSFq3Cwn/cqzFEgWq
	5L+J1zy39vdDxB9zjK9Z9KK27ZVHLNXEm6l8oEszAWEE8BNZYMxC1ILS9AuyraVFeUIKD5XclclG7
	wEiS5zrCI+ZcXmWTFsDc1stbZW5oQRX7dbqEg+IU3DQyKm4uBzcL3YLae79IyGjOQb7NG3z0Qc9l3
	9elmDUD0OxgSxuazJOllvzGb/MdII5ZaGRtF38gMfLzC7JNBVWy1ivWAXcQuL6XDFRwQ0VOwdBtQP
	hPmhi5Tv/rA07ISPm2vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgaWz-0006GA-Fi; Thu, 27 Jun 2019 19:58:05 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgaUV-0004Ka-6T; Thu, 27 Jun 2019 19:55:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561665331; x=1593201331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FdusRwcmVMWHwhKYZKA8Sg9X99lDeoGVE78siWre56A=;
 b=UgKzbTFgBSlYsXO9+AN/f82k2wOdz877LsQOKy4fvASThreHghJg47uq
 +j2T/0I+9oW5hiN2G1eEUfK8WbPDca2AbuxvaYH53NoGm45CynweJEHCf
 gQch85aD6uk+8Kv0CeHxmm0A/FrKtbmj1Fu1MG5Yj6j5PxL76P1+5ehhG
 8Amw7XrzYPbEknESqAOD7PbvtE34nVzhFg5UJTXBdAp1K0XhDb1L3sdY+
 tgn6Q1KnUK6sDTvu2H4c4ASkKb7Soe39m8iXFWJHXfF5TZmv0ruucL/Kr
 MvOXQ7ziMSbivJb0Q+SjgfWs3Qwe0f9lIXvFljPSjqBYY/wLYRK6FHCBX w==;
X-IronPort-AV: E=Sophos;i="5.63,424,1557158400"; d="scan'208";a="113353777"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jun 2019 03:55:27 +0800
IronPort-SDR: 9hW0JK1NbiiACzH/bPsV03CbsXI9vWBWRqKU2xQbnkiLpVxScWLPh+Cta7gWJX4QWs8PbL7VVJ
 G8CgMye1ud6MXePOJscSZH+tobZwpk21qA2lhkF/gZEbVLHlkLizvufmEQMUBcZ7HpHuIzbaol
 G7CIExuUOhUxfsLacftqeIktzbolbPrs9ObGb/gBATSc0b9VrnfniUlY2ObdnimIEtzYsGvGsd
 PRLzT3UA4hx/wk/lo1FfF+2NiEojz5WqRW+6ZsMquFXmWenrOIew4DiwReUEAFW94PQk3oD2CO
 8KKdA8uxuVKn5QMMf/RQkJtJ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 27 Jun 2019 12:54:40 -0700
IronPort-SDR: d1yMyLnC7Wu1GshTWNxTIlhczi+9O2jjCAHWfUDPztekbDm4XE3u04aDnlpTjRMmeh1CKLfui8
 P5UxBmYCTr8owGXsaC1vRfQs8i60QviKT47INux220RIG///tw1U65SK0XPTNY5dFv1fHZ+wEA
 Fhcra5QKct/RqS2YsuHLX3+i0hct8lXif7gbGJ3496ZQwlw8OY00Puha2jArrzVWz3BeTvE8zE
 zdOurgEpIZtkLqdZ98a+B+F3gbW2gJPkJ0jf1xfnBRk+3cJuhLtM9pz9qONTyZKb5acHeakOf+
 vm4=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jun 2019 12:55:27 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 5/7] RISC-V: Parse cpu topology during boot.
Date: Thu, 27 Jun 2019 12:53:00 -0700
Message-Id: <20190627195302.28300-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627195302.28300-1-atish.patra@wdc.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_125531_408193_330329A2 
X-CRM114-Status: GOOD (  13.24  )
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
