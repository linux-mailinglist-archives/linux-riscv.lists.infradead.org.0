Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C3418281B
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 06:11:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzckbmjEEzFD9AOeg1oQ8AO4L3G6Cks6q6IxgseQ88U=; b=uJWEDlsUqgWerE
	wQXAfgUWSBvf8QwGvsm/z6XDImoJ+bWjuZy0ZEamz/x0eVtCkPc+ALD5YPHDBvmqGTX1hUdAQdzC7
	cFQT5L2kF21CcV+0BmVQcOyaNYV/uA6MVxZlsZzXj9uTg3MniWITVQigybd+rTffUFNxFlm+65W4G
	V4ASpiDsEdtYDFopeIj3B7nWHDm5XPEJpnoIhQ/Ji8P/+0GeicLquTgLDSszTLyuMkwQCF6ZNT4Ak
	EutGTdFXMILXq0yZxR771T5Qvls9DZgFKPeeGHUGZ2e7qDK13qIdgXaU7tAHYmTMI4U6JMZonz7hT
	/wvAQ8Ggohb/0ajmnaBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCG83-0000PM-8m; Thu, 12 Mar 2020 05:11:31 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCG7n-0008Vc-OI
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 05:11:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583989876; x=1615525876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1sBF4fVy8rRTzWl5KrOGxoQuM7dQje7hYqIq7fMWkqI=;
 b=TKYIkJRJriP38xgWicssAJHGgZ+xERHvpfsH7i2+bvLH+YjpJHYIT/ai
 SO0PETnoixeUMtmn0szNysfDLDUiJD437PMVXXZGgxF8VOaUk/VRDXbMA
 4+/xsJgq1YkqoZlcaIvjDGFZzrCTgZTzgqlNPIzZQbZUKavXWLlL8Zf0O
 HawftDkbwDplHWYtViBsLWzwClU5l1bt/H0e5Egmrfvx6KpI8A18iQQ6k
 hvhil/rUqmWcCmcEbpPwKps4sHN8xi/NwzNsRVBD+grkJRIIVOjCGHu9C
 tWHbFJAZSrAdo6M4aqBqRkFq97fGK7/tsHyLuvaggAjgBJvROVLjloPHK w==;
IronPort-SDR: fqmgjxJ5iLpl3aXABJUICG/aDhcyNaSh75+CR20BJ9Ur5dirJGuG/aWVXabBYMWQBZADKDnhC7
 tsjIPQ9ShSVou1jUGCWLh0rWr0py3hLKD+6N1bTnI3NXo6vi59P/n0WRquXQLBmxoZtNVKHjWP
 PDSTSpFCcYYz/XicPtsvDGZLEFXYOb18y+XehuEDDq+BjeZH81Rs9xKoYy7IVKRXk9vyYueZAx
 ufyNxfgOVuVHc5onJDKkBbl+koblWWdmdbLlO90enlTeiUVsrQwrcKqj7UpfGX4L4ybajdpxrv
 z/0=
X-IronPort-AV: E=Sophos;i="5.70,543,1574092800"; d="scan'208";a="133718977"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Mar 2020 13:11:15 +0800
IronPort-SDR: XX3XZs+3qaYL1APGQpq6M4VxM2yOFcSIAi7EYMDKjeFfZXRzlEpCbBsUw/x4y9VZB8nJWvgijI
 HJxChnjWJG9U1CSDJ5zqdeifKxhMQy6D3xbxNwlUZz5JWczDrJLsdW5/ZYmI7sEQ7cy83mwN7k
 Q0rdtrtb6Ox0YipsWYgivbXhoSLgw3qcXJs8oN6/MLRj/KQPA9+LZJfxAyoFwZ5wZzyFMrJSmf
 +JM7sp0Q8QrN4WU5if0r1bUFKO9s6Z6bmOg45iGPKEGYg4+WxRPPMQBHNxFMuJEf/7FJuTs7Qw
 HP+5cGqhG4MVpuZ+IT/5s3yB
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 22:03:15 -0700
IronPort-SDR: 3dBOvuSgKg0+6iqxrYfekjIAeDpqG4KuR3V/wrvDmFH7qz4n1rKlPyZtXi81CMQE23fcC96aAQ
 KCHv1KVifMpSh3gsdUPOFVxjhK2VOHS0DOVSScKnrGre8qkqM6zwVeb9GUf1At8NlaKLiU78Xn
 PK3IQ9nGAeFSbjz50YMXYx2rhf6zuUaV9sI3nIFtJ83J3sST4p/8UJmqoasgFaY/0/naS/QDzr
 BuSL9hvpZ5C7Rg0zlApCdsHr2XzmD0yp/tH96ozRc7/9YerMEK4/dwiiojlZbuPTWZzqWd73nV
 WQc=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Mar 2020 22:11:13 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v2 6/9] riscv: Add Kendryte K210 device tree
Date: Thu, 12 Mar 2020 14:11:04 +0900
Message-Id: <20200312051107.1454880-7-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312051107.1454880-1-damien.lemoal@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_221115_854196_C30FC13F 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add a generic device tree for Kendryte K210 SoC based boards. This (for
now) very simple device tree works for the Kendryte KD233 development
board, the Sipeed MAIX M1 Dan Dock board and the Sipeed MAIXDUINO board.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/boot/dts/Makefile           |   1 +
 arch/riscv/boot/dts/kendryte/Makefile  |   2 +
 arch/riscv/boot/dts/kendryte/k210.dts  |  23 +++++
 arch/riscv/boot/dts/kendryte/k210.dtsi | 117 +++++++++++++++++++++++++
 include/dt-bindings/clock/k210-clk.h   |  20 +++++
 5 files changed, 163 insertions(+)
 create mode 100644 arch/riscv/boot/dts/kendryte/Makefile
 create mode 100644 arch/riscv/boot/dts/kendryte/k210.dts
 create mode 100644 arch/riscv/boot/dts/kendryte/k210.dtsi
 create mode 100644 include/dt-bindings/clock/k210-clk.h

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
index 000000000000..88f28a3fd337
--- /dev/null
+++ b/arch/riscv/boot/dts/kendryte/k210.dtsi
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+#include <dt-bindings/clock/k210-clk.h>
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
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		timebase-frequency = <7800000>;
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			reg = <0>;
+			compatible = "kendryte,k210", "sifive,rocket0", "riscv";
+			riscv,isa = "rv64imafdc";
+			mmu-type = "none";
+			i-cache-size = <0x8000>;
+			i-cache-block-size = <64>;
+			d-cache-size = <0x8000>;
+			d-cache-block-size = <64>;
+			clocks = <&sysctl K210_CLK_CPU>;
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
+			compatible = "kendryte,k210", "sifive,rocket0", "riscv";
+			riscv,isa = "rv64imafdc";
+			mmu-type = "none";
+			i-cache-size = <0x8000>;
+			i-cache-block-size = <64>; /* bogus */
+			d-cache-size = <0x8000>;
+			d-cache-block-size = <64>; /* bogus */
+			clocks = <&sysctl K210_CLK_CPU>;
+			clock-frequency = <390000000>;
+			cpu1_intc: interrupt-controller {
+				#interrupt-cells = <1>;
+				interrupt-controller;
+				compatible = "riscv,cpu-intc";
+			};
+		};
+	};
+
+	sram: memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x400000>,
+		      <0x80400000 0x200000>,
+		      <0x80600000 0x200000>;
+		reg-names = "sram0", "sram1", "aisram";
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
+			clocks = <&sysctl K210_CLK_ACLK>;
+		};
+
+		plic0: interrupt-controller@c000000 {
+			#interrupt-cells = <1>;
+			interrupt-controller;
+			compatible = "kendryte,k210-plic0", "riscv,plic0";
+			reg = <0xC000000 0x4000000>;
+			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,
+					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;
+			riscv,ndev = <65>;
+			riscv,max-priority = <7>;
+		};
+
+		uarths0: serial@38000000 {
+			compatible = "kendryte,k210-uarths", "sifive,uart0";
+			reg = <0x38000000 0x1000>;
+			interrupts = <33>;
+			clocks = <&sysctl K210_CLK_CPU>;
+		};
+	};
+};
diff --git a/include/dt-bindings/clock/k210-clk.h b/include/dt-bindings/clock/k210-clk.h
new file mode 100644
index 000000000000..5a2fd64d1a49
--- /dev/null
+++ b/include/dt-bindings/clock/k210-clk.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
+ */
+#ifndef K210_CLK_H
+#define K210_CLK_H
+
+/*
+ * Arbitrary identifiers for clocks.
+ * The structure is: in0 -> pll0 -> aclk -> cpu
+ *
+ * Since we use the hardware defaults for now, set all these to the same clock.
+ */
+#define K210_CLK_PLL0   0
+#define K210_CLK_PLL1   0
+#define K210_CLK_ACLK   0
+#define K210_CLK_CPU    0
+
+#endif /* K210_CLK_H */
-- 
2.24.1


