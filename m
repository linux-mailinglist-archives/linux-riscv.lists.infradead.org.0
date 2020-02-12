Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6892E15A682
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 11:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6K/DxpfPlFT0caFXd0S88LLQ2CXabjyXNQFeF5FH8VI=; b=WZnssz7mascW8G
	vxVSbFFTNj5RilE/N8f6sJoh2gPH53IVLRAiKLaNXXAKLtCJTTU8QKZ2+ZD+LBKxO4V3j9JsvTp9T
	Z1tUpye18+aSOkQPGUSMaCb6ZNiof/6HqVQcPSJlWFhHAGLK84xrtEQv7HO7N5XfomAyHDfH89ANL
	bFNEWrp8BgP/75BjljSsCUNour3q+p2s07ZAH/t7T89XJAXb0LRT+lEh523QvKNmmVVFnKfQXZ1Q/
	Ve5uwK86ly8wul5Uzp29oPO7HUYUn5/XNpmIAxofjnWrlF03RT9xJYYXFFzPtMGU0FZ3T3D4QxXnJ
	nrIDll1Qmj5fu7GYlbPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pMU-0003xw-Co; Wed, 12 Feb 2020 10:35:18 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pLt-0002L5-PE
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 10:34:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581503682; x=1613039682;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JsnDMs2QdZAGUVQ7hZS7FTyEWwtXgzt8F7In8tUQjto=;
 b=Q5uQaS3uC0Txv35xMy9bGCZx9DD3R1+BZbjpbuxTNN3j4hXdE6u/SpQo
 Lhoej0h3G3aUra/sOcWSLsDc/UAkb6KjK6lv8jwv8kZ+dUnsFEFemB4Sv
 Lc53S8PKVckddJDBY/1pdUryaMOFJMUBNPRTh6bJYqZQqJfymcV2+A83m
 zJCFYLOJTSc/x8RbnJD4lmeeLdjjbryo89lW4vP2/im+czZzKFzsciO7j
 jqyGKixmmd53BMhyAf43aHkw85qcO5n2Ce6JEXHs6bbf5mNNty0O6uE2L
 dIaW0XKsMFoeGQVOLLd7HoA5XNtqtK17OLhRJR1znjym+q0zc+ZNmWlz1 w==;
IronPort-SDR: ppd97TtsQLhQqTu38rqA6jw1uLBmbwwgJ4yF+v2ukQPkjv93uhWbmxC9xLuJodmT5BXE67GdhU
 cb4yHWBeF0sS+CSEh+odNSqn2Hw2sqJb39SEAoFS7IV3Z5wz/jbPP9zuWVnCSofVhxWySJGT6X
 FRDNNKzt587nD4RNsPbeL7x5mOqlCJUJ58ZxYsi+kHNd+Pb8I2Y3tA6ZLbicCL52uH9sQKm1Tc
 3+lKJL7qqli148GdIdLLFqiWCXXZ/dgCwAtF25sgsO8XoWID1pofTdYbw/9sXaWmFquBVFLh7T
 nGE=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="131113056"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 18:34:42 +0800
IronPort-SDR: +QLe3qAOlT3Ng2tzF1QCO81OCC0Mxj3xej9U3t01UfglYPbC4Yjt9ogtqw/a9ZHSDrdh6yPFkn
 6h2jB2NF+i6QaqOYVujPeofdf3f3Z+fQenAXRMD7uWfBPYQf8cKKlYrzO6dcG/5kYceCAsI8RX
 jlc45Hyd8DK4fefp42ZDZ1hF1BULkMdZgX8tTdBQCcfQPdgSofy+ukHNc0OcK0N7BK3hFXy2ur
 nX0fYsXiFSwuRc7nIT5lh3sz5jynZjZ6JNE/ztJBAKnWPw2Kd5BoKsYTM+ln2NR31JLMow67rI
 Euo0kmsw3YvI6DaKFROhaFay
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:27:30 -0800
IronPort-SDR: vit2bMMoD52yq4u44QpYl2+w3DGbouoQuN+TO8Xr8iALqYz1w4K+mWBOcdao218iXoQCGxSfgO
 2AIgjqk3/wg38h+G2HYJ2RQjekuOi07bswIQdgQyv0pLEPr3JYxQHCCx+7GPJQcZy6wKVziGJr
 L7u58wISP/lec//aHLe2mKOCtZRG78uL9RN3yWLK0vrayN5vUuPzc50hrkSnItczB7TOGbUnic
 jBFhD3+2eGVRLbS85rE5nUQeJKnjtTnrUM/ZJ6syYcNE1HgkoboOCIZJGswu6G3B++qN5SWhyz
 P8c=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 Feb 2020 02:34:39 -0800
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Date: Wed, 12 Feb 2020 19:34:30 +0900
Message-Id: <20200212103432.660256-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212103432.660256-1-damien.lemoal@wdc.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023441_889721_9398479D 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add a generic device tree for Kendryte K210 SoC based boards. This (for
now) very simple device tree works for the Kendryte KD233 development
board, the Sipeed MAIX M1 Dock based boards and the Sipeed MAIXDUINO
board.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/boot/dts/Makefile           |   1 +
 arch/riscv/boot/dts/kendryte/Makefile  |   2 +
 arch/riscv/boot/dts/kendryte/k210.dts  |  23 +++++
 arch/riscv/boot/dts/kendryte/k210.dtsi | 123 +++++++++++++++++++++++++
 4 files changed, 149 insertions(+)
 create mode 100644 arch/riscv/boot/dts/kendryte/Makefile
 create mode 100644 arch/riscv/boot/dts/kendryte/k210.dts
 create mode 100644 arch/riscv/boot/dts/kendryte/k210.dtsi

diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
index 0bf2669aa12d..87815557f2db 100644
--- a/arch/riscv/boot/dts/Makefile
+++ b/arch/riscv/boot/dts/Makefile
@@ -3,4 +3,5 @@ ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")
 obj-$(CONFIG_USE_BUILTIN_DTB) += $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_SOURCE)).dtb.o
 else
 subdir-y += sifive
+subdir-y += kendryte
 endif
diff --git a/arch/riscv/boot/dts/kendryte/Makefile b/arch/riscv/boot/dts/kendryte/Makefile
new file mode 100644
index 000000000000..815444e69e89
--- /dev/null
+++ b/arch/riscv/boot/dts/kendryte/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_SOC_KENDRYTE) += k210.dtb
diff --git a/arch/riscv/boot/dts/kendryte/k210.dts b/arch/riscv/boot/dts/kendryte/k210.dts
new file mode 100644
index 000000000000..0d1f28fce6b2
--- /dev/null
+++ b/arch/riscv/boot/dts/kendryte/k210.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+
+/dts-v1/;
+
+#include "k210.dtsi"
+
+/ {
+	model = "Kendryte K210 generic";
+	compatible = "kendryte,k210";
+
+	chosen {
+		bootargs = "earlycon console=ttySIF0";
+		stdout-path = "serial0";
+	};
+};
+
+&uarths0 {
+	status = "okay";
+};
+
diff --git a/arch/riscv/boot/dts/kendryte/k210.dtsi b/arch/riscv/boot/dts/kendryte/k210.dtsi
new file mode 100644
index 000000000000..4b9eeabb07f7
--- /dev/null
+++ b/arch/riscv/boot/dts/kendryte/k210.dtsi
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+
+/ {
+	/*
+	 * Although the K210 is a 64-bit CPU, the address bus is only 32-bits
+	 * wide, and the upper half of all addresses is ignored.
+	 */
+	#address-cells = <1>;
+	#size-cells = <1>;
+	compatible = "kendryte,k210";
+
+	aliases {
+		serial0 = &uarths0;
+	};
+
+	clocks {
+		in0: oscillator {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <26000000>;
+		};
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		timebase-frequency = <7800000>;
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			reg = <0>;
+			compatible = "riscv";
+			riscv,isa = "rv64imafdc";
+			mmu-type = "none";
+			i-cache-size = <0x8000>;
+			i-cache-block-size = <64>; /* bogus */
+			d-cache-size = <0x8000>;
+			d-cache-block-size = <64>; /* bogus */
+			clocks = <&sysctl 0>;
+			clock-frequency = <390000000>;
+			cpu0_intc: interrupt-controller {
+				#interrupt-cells = <1>;
+				interrupt-controller;
+				compatible = "riscv,cpu-intc";
+			};
+		};
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			reg = <1>;
+			compatible = "riscv";
+			riscv,isa = "rv64imafdc";
+			mmu-type = "none";
+			i-cache-size = <0x8000>;
+			i-cache-block-size = <64>; /* bogus */
+			d-cache-size = <0x8000>;
+			d-cache-block-size = <64>; /* bogus */
+			clocks = <&sysctl 0>;
+			clock-frequency = <390000000>;
+			cpu1_intc: interrupt-controller {
+				#interrupt-cells = <1>;
+				interrupt-controller;
+				compatible = "riscv,cpu-intc";
+			};
+		};
+	};
+
+	sram0: memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x400000>;
+	};
+
+	sram1: memory@80400000 {
+		device_type = "memory";
+		reg = <0x80400000 0x200000>;
+	};
+
+	kpu_sram: memory@80600000 {
+		device_type = "memory";
+		reg = <0x80600000 0x200000>;
+	};
+
+	soc {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "kendryte,k210-soc", "simple-bus";
+		ranges;
+		interrupt-parent = <&plic0>;
+
+		sysctl: sysctl@50440000 {
+			compatible = "kendryte,k210-sysctl", "syscon";
+			reg = <0x50440000 0x1000>;
+			#clock-cells = <1>;
+		};
+
+		clint0: interrupt-controller@2000000 {
+			compatible = "riscv,clint0";
+			reg = <0x2000000 0xC000>;
+			interrupts-extended = <&cpu0_intc 3>,  <&cpu1_intc 3>;
+			clocks = <&sysctl 0>;
+		};
+
+		plic0: interrupt-controller@c000000 {
+			#interrupt-cells = <1>;
+			interrupt-controller;
+			compatible = "kendryte,k210-plic0", "riscv,plic0";
+			reg = <0xC000000 0x3FFF008>;
+			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,
+					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;
+			riscv,ndev = <65>;
+			riscv,max-priority = <0x07>;
+		};
+
+		uarths0: serial@38000000 {
+			compatible = "kendryte,k210-uart0", "sifive,uart0";
+			reg = <0x38000000 0x20>;
+			interrupts = <33>;
+			clocks = <&sysctl 0>;
+		};
+	};
+};
-- 
2.24.1


