Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD32318438D
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 10:17:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=on3rPF2BVYRG/gcxHVhrTiZo7EeVSjvjyAfkzT76XIY=; b=f8BvipkSuVRwzh
	8StZNPDDpiYUKGYWU6qSb7pJlmC6tbFS9VMhtPxp4mg7nTlKpig+nKgm3IZYEXlVElXCyq62UJRuQ
	wfsojEBFAPtClfKD8VwsWvEuVODr70eyO7Wyc2NfFesAL4eTRM3+CTa9f+ctKio2dLM4k0f4Lwqv9
	+7Icduu70Ckt2eLMfOM4rNk/FGpHnGWBUJ2GjVwXq8v7ce0VUm3w8hvjSmsq2IqXiC95JvHwrUVuP
	ObvICl3MxT8GcUK85m6YfyzOcz3c8/kOc2MPwf5lo++PoLsMFm54VvFpC1kq04KNSeGTBTJydGqKW
	tfqyk1OQwd79EbfxTeRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgRM-0006jA-6I; Fri, 13 Mar 2020 09:17:12 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgQx-0006Ig-Al
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 09:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584091007; x=1615627007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5CrK5+ZfXVJL1wLMJJcmnHdl1+bKwxD6BBEHreYiYC4=;
 b=qN1dflMAyKIMO81qaE8ueW5wPOQpNwhfZGyVzG+z9GkBTz4h17duUvlr
 FV891yGFWL5QKg8f4DCDTTyOkBmvinPyQ09tp4L+fVXhTnlLtEpr4Fd2z
 9Gb5Qd7m2Bh6Fk73C15uVHru4wIAfobD83COTSeJLI4WAvFRQVsiTtftz
 kCRjT31sNwijVfW0xvdXIsH3VW4QTG7h83912bvMaIGE+FTnMCsWxdQMp
 WEBIrWqa8ENsDiViaINOfnH/KiDfcXMvjyHrt2ytsCCAIXJMARg9hVOIn
 x2HwFFitndbiKqTB/uGPrBYrMuzRHCzxXcmz9guoGZ3tXULT0fH4zSQmI w==;
IronPort-SDR: LmxOIX834PKkDg4G7wMX87aLGTTj0zOqtzIrlj5L/yYSmm1RzKf8pFcD6jERdKx+mmmuNoxk+k
 VFQzqVeY7OG/usvXkLfRfzwt2F6tDaJCSHPEfHmjT1V7/1mq6T3qh5DMZOQBMBqytjZnGdGZ8f
 /0tzZzf6f6LNxsk3xBLwmVN7b/MM3SvkjK2Ts02DNMiIhrt2dRvdrt+O26jzBPguhaVEHbkrfy
 25rekhFCjuwo5QQv1Sjr1HFpTkJ7v25prrZco2NAlJvg6qVMjoK3OKpkeemBzARH6oqXqjO2zW
 yZU=
X-IronPort-AV: E=Sophos;i="5.70,548,1574092800"; d="scan'208";a="240669784"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 17:16:46 +0800
IronPort-SDR: m9WOOb8baQjDpuusFfK4C0y1VPg3vpco06R8VdZRp8XWRw5LxtiGNVluWdngVPY/pXWPEkZ3Sk
 CGlknsgzt8CRN6DgspiAaLvFo7Nk9ZeLpxZZ/WPtKdeCPcNB8SbCl1pPvQyTIUbEsqbtkUIixl
 bkeY3jsh49udSvSBzvqkJK/2bacMRf9a16hgPPmbq5FhsnB1eXdLkad5Yo0pjrrfqfrd2UO+GV
 AtafEDCtI75O3vo56J1nD6C0IWU0D+y0428b8r0WYOzT71KbyczuKucrf/3X6pRIpbHdxg8J1e
 4IfQVURigqQkqM170gNUBrMj
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:08:44 -0700
IronPort-SDR: HxmBf+d8sN3JhzuNT0pkPLDe4kVjS2I2kfMRPPZ/tuzMGlOcmwpU0jxjgUAiwHtkkRRsCbVVC+
 DyhufyPZxT7WJ8n1nC4JOmMQ8E/7jvZLOrqH1skX+4WQ91W448DQcz+EfX8Hw8o57aQBvIuRWZ
 8PpOOuxtw5EO7GPjevGcRYtMNIpVAswqLn8VXjOrKXcYWoEIK/K3iVjFjWSq4eTzm+qvkN4qhj
 7ppr9cMciev3mUaBcEcvpgAdv4xyy3AJ9MYm8L7GzWdTzRPdASvqM8JvWO13LZHOZ+N8c1+uUR
 N0A=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Mar 2020 02:16:45 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v3 6/9] riscv: Add Kendryte K210 device tree
Date: Fri, 13 Mar 2020 18:16:36 +0900
Message-Id: <20200313091639.87862-7-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313091639.87862-1-damien.lemoal@wdc.com>
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021647_415785_E5187C0B 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add a generic device tree for Kendryte K210 SoC based boards. This is
for now a very simple device tree describing the core elements of the
SoC. This is suitable (and tested) for the Kendryte KD233 development
board, the Sipeed MAIX M1 Dan Dock board and the Sipeed MAIXDUINO board.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/boot/dts/Makefile           |   1 +
 arch/riscv/boot/dts/kendryte/Makefile  |   2 +
 arch/riscv/boot/dts/kendryte/k210.dts  |  23 +++++
 arch/riscv/boot/dts/kendryte/k210.dtsi | 123 +++++++++++++++++++++++++
 include/dt-bindings/clock/k210-clk.h   |  20 ++++
 5 files changed, 169 insertions(+)
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
index 000000000000..c1df56ccb8d5
--- /dev/null
+++ b/arch/riscv/boot/dts/kendryte/k210.dtsi
@@ -0,0 +1,123 @@
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
+	/*
+	 * The K210 has an sv39 MMU following the priviledge specification v1.9.
+	 * Since this is a non-ratified draft specification, the kernel does not
+	 * support it and the K210 support enabled only for the !MMU case.
+	 * Be consistent with this by setting the CPUs MMU type to "none".
+	 */
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
+			i-cache-block-size = <64>;
+			d-cache-size = <0x8000>;
+			d-cache-block-size = <64>;
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
+			compatible = "kendryte,k210-sysctl", "simple-mfd";
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


