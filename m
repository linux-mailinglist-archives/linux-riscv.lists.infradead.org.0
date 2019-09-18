Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38514B699C
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Sep 2019 19:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f89+nTK98a1VnVsSBnuSLo2qURbjtRlU/uibTn3asak=; b=dY2JnkJe3SDN6cfSb1pkOJ9MwP
	E+tQJyKx2NNbjUCd+x/K4ITNMEsl39HEClYtQrpDwHhbkq296WEM/ANKktHBt8DfoU+LRJGYv/lG4
	Z8yazvJSIQbHoAobuJshHDsTgf3NtYpREj73CU+y2uz99/tZIT5TqwSClVAnIhlc2PorY8PU92CXu
	c844WAVLurhlaNbmtwJBNPMt0oSwSgeZjgGSelGAOOcJBcPkekZ3FxwsuC4cvIV4+8RVVAolx8unZ
	lbCYnTIqA1a4XfzwBayJmWdD/Jyvi3ZufdNfWWDbB/gpcfTfpRRWBtcLmwDIoq01mHEkXYM5lrv5W
	yrBJ12jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAdqb-0006pp-UX; Wed, 18 Sep 2019 17:34:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAdok-000507-FH; Wed, 18 Sep 2019 17:32:40 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D79D821928;
 Wed, 18 Sep 2019 17:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568827958;
 bh=E9DwEf7R8b/H/w/pY582iNh72DFD9zpZbpy6YjCJtCA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xHEiwH/r63UQYy4j6Uf8KGGtFbl4pyX4olLMK84c3ybxPXAShOU6AW7FSUIC76wh0
 9foNamqzWle3Cgmi0S2/zX1D7GQgiwPMUPGJzBJkTKl0OzQP4UHOYYHcX9YiMaCUCb
 5WhDtUwJ68hJrzzVaxE139BLp3UdDCgJMgSlHHEU=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Matt Mackall <mpm@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-tegra@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-crypto@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: [PATCH v2 5/8] dt-bindings: watchdog: Convert Samsung SoC watchdog
 bindings to json-schema
Date: Wed, 18 Sep 2019 19:31:38 +0200
Message-Id: <20190918173141.4314-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190918173141.4314-1-krzk@kernel.org>
References: <20190918173141.4314-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_103238_717065_F5ABA075 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Convert Samsung S3C/S5P/Exynos watchdog bindings to DT schema format
using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Indent example with four spaces (more readable),
2. Remove unneeded timeout-sec description.
---
 .../bindings/watchdog/samsung-wdt.txt         | 35 ----------
 .../bindings/watchdog/samsung-wdt.yaml        | 67 +++++++++++++++++++
 2 files changed, 67 insertions(+), 35 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/samsung-wdt.txt
 create mode 100644 Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.txt b/Documentation/devicetree/bindings/watchdog/samsung-wdt.txt
deleted file mode 100644
index 46dcb48e75b4..000000000000
--- a/Documentation/devicetree/bindings/watchdog/samsung-wdt.txt
+++ /dev/null
@@ -1,35 +0,0 @@
-* Samsung's Watchdog Timer Controller
-
-The Samsung's Watchdog controller is used for resuming system operation
-after a preset amount of time during which the WDT reset event has not
-occurred.
-
-Required properties:
-- compatible : should be one among the following
-	- "samsung,s3c2410-wdt" for S3C2410
-	- "samsung,s3c6410-wdt" for S3C6410, S5PV210 and Exynos4
-	- "samsung,exynos5250-wdt" for Exynos5250
-	- "samsung,exynos5420-wdt" for Exynos5420
-	- "samsung,exynos7-wdt" for Exynos7
-
-- reg : base physical address of the controller and length of memory mapped
-	region.
-- interrupts : interrupt number to the cpu.
-- samsung,syscon-phandle : reference to syscon node (This property required only
-	in case of compatible being "samsung,exynos5250-wdt" or "samsung,exynos5420-wdt".
-	In case of Exynos5250 and 5420 this property points to syscon node holding the PMU
-	base address)
-
-Optional properties:
-- timeout-sec : contains the watchdog timeout in seconds.
-
-Example:
-
-watchdog@101d0000 {
-	compatible = "samsung,exynos5250-wdt";
-	reg = <0x101D0000 0x100>;
-	interrupts = <0 42 0>;
-	clocks = <&clock 336>;
-	clock-names = "watchdog";
-	samsung,syscon-phandle = <&pmu_syscon>;
-};
diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
new file mode 100644
index 000000000000..3ea3c9fe8390
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/samsung-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SoC Watchdog Timer Controller
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+description: |+
+  The Samsung's Watchdog controller is used for resuming system operation
+  after a preset amount of time during which the WDT reset event has not
+  occurred.
+
+properties:
+  compatible:
+    enum:
+      - samsung,s3c2410-wdt                   # for S3C2410
+      - samsung,s3c6410-wdt                   # for S3C6410, S5PV210 and Exynos4
+      - samsung,exynos5250-wdt                # for Exynos5250
+      - samsung,exynos5420-wdt                # for Exynos5420
+      - samsung,exynos7-wdt                   # for Exynos7
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  samsung,syscon-phandle:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the PMU system controller node (in case of Exynos5250
+      and Exynos5420).
+
+  timeout-sec:
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - interrupts
+  - reg
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos5250-wdt
+              - samsung,exynos5420-wdt
+    then:
+      required:
+        - samsung,syscon-phandle
+
+examples:
+  - |
+    watchdog@101d0000 {
+        compatible = "samsung,exynos5250-wdt";
+        reg = <0x101D0000 0x100>;
+        interrupts = <0 42 0>;
+        clocks = <&clock 336>;
+        clock-names = "watchdog";
+        samsung,syscon-phandle = <&pmu_syscon>;
+    };
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
