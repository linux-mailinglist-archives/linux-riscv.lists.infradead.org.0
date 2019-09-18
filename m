Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02406B6988
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Sep 2019 19:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m3ahAZj1hhqX1GppFNY30TW02UPImJMlgv/Y7K8rGw0=; b=rEejb53n9NEsKXOf9it2U85N+r
	F10pvR7gN/2kuqjuBgKTDCpvPcrJzkIeMhR/1/J0fvsaI9G++Woj07NseUNCcLgJyE6c8QCJd/kPy
	8E/JvSa8iJ1+Rp2IX8KJr9IqEsG4UQrg0ZyI19DoJyflRz2dXeu8fTWLvoE/ZRKo4ehXFxbqCnnBf
	QfSePP9fzDgVmhShQQ8vK54mlITcZOYcWZouZJORVq/Ub8e6BI8d/zYTT4JtTNdSc52n2qg99WPFp
	Bl2FNfiycn8zD03bDooMraZITW9rgqT7i8bnl1OwxlfQtauPKcyhJ8+7C5ABSU7KdRxpQ3zSqxIDD
	x5gUS1QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAdpI-0005YD-Qn; Wed, 18 Sep 2019 17:33:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAdoR-0004gn-LA; Wed, 18 Sep 2019 17:32:21 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD58921924;
 Wed, 18 Sep 2019 17:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568827939;
 bh=zjXEIYpD3fE5Zr/V3tvwmlVGzHjthNbt5x4gZC+CdjI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FvR1MjqI294G8TedX7gWzHt3umBVoayRHdF7EOG3JD2wP2uWpCqWQc99LBZQ0Kh3L
 LDh3tPkQazq+H1Zkj4fi4TBZTgyNr2RAqWjGuznHsqPzewMg7Y8RFelIXYKOF3z4xp
 SRQvgJUOP+tCnMh2lvxLixwouFiU1b0SyXv+qMn8=
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
Subject: [PATCH v2 2/8] dt-bindings: sram: Convert SRAM bindings to json-schema
Date: Wed, 18 Sep 2019 19:31:35 +0200
Message-Id: <20190918173141.4314-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190918173141.4314-1-krzk@kernel.org>
References: <20190918173141.4314-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_103219_772760_08FAB82D 
X-CRM114-Status: GOOD (  19.83  )
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

Convert generic mmio-sram bindings to DT schema format using
json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Indent example with four spaces (more readable).
---
 .../devicetree/bindings/sram/sram.txt         |  80 ----------
 .../devicetree/bindings/sram/sram.yaml        | 138 ++++++++++++++++++
 2 files changed, 138 insertions(+), 80 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/sram.txt
 create mode 100644 Documentation/devicetree/bindings/sram/sram.yaml

diff --git a/Documentation/devicetree/bindings/sram/sram.txt b/Documentation/devicetree/bindings/sram/sram.txt
deleted file mode 100644
index e98908bd4227..000000000000
--- a/Documentation/devicetree/bindings/sram/sram.txt
+++ /dev/null
@@ -1,80 +0,0 @@
-Generic on-chip SRAM
-
-Simple IO memory regions to be managed by the genalloc API.
-
-Required properties:
-
-- compatible : mmio-sram or atmel,sama5d2-securam
-
-- reg : SRAM iomem address range
-
-Reserving sram areas:
----------------------
-
-Each child of the sram node specifies a region of reserved memory. Each
-child node should use a 'reg' property to specify a specific range of
-reserved memory.
-
-Following the generic-names recommended practice, node names should
-reflect the purpose of the node. Unit address (@<address>) should be
-appended to the name.
-
-Required properties in the sram node:
-
-- #address-cells, #size-cells : should use the same values as the root node
-- ranges : standard definition, should translate from local addresses
-           within the sram to bus addresses
-
-Optional properties in the sram node:
-
-- no-memory-wc : the flag indicating, that SRAM memory region has not to
-                 be remapped as write combining. WC is used by default.
-
-Required properties in the area nodes:
-
-- reg : iomem address range, relative to the SRAM range
-
-Optional properties in the area nodes:
-
-- compatible : standard definition, should contain a vendor specific string
-               in the form <vendor>,[<device>-]<usage>
-- pool : indicates that the particular reserved SRAM area is addressable
-         and in use by another device or devices
-- export : indicates that the reserved SRAM area may be accessed outside
-           of the kernel, e.g. by bootloader or userspace
-- protect-exec : Same as 'pool' above but with the additional
-		 constraint that code wil be run from the region and
-		 that the memory is maintained as read-only, executable
-		 during code execution. NOTE: This region must be page
-		 aligned on start and end in order to properly allow
-		 manipulation of the page attributes.
-- label : the name for the reserved partition, if omitted, the label
-          is taken from the node name excluding the unit address.
-- clocks : a list of phandle and clock specifier pair that controls the
-	   single SRAM clock.
-
-Example:
-
-sram: sram@5c000000 {
-	compatible = "mmio-sram";
-	reg = <0x5c000000 0x40000>; /* 256 KiB SRAM at address 0x5c000000 */
-
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges = <0 0x5c000000 0x40000>;
-
-	smp-sram@100 {
-		compatible = "socvendor,smp-sram";
-		reg = <0x100 0x50>;
-	};
-
-	device-sram@1000 {
-		reg = <0x1000 0x1000>;
-		pool;
-	};
-
-	exported@20000 {
-		reg = <0x20000 0x20000>;
-		export;
-	};
-};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
new file mode 100644
index 000000000000..8d9d6ce494b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -0,0 +1,138 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sram/sram.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic on-chip SRAM
+
+maintainers:
+  - FIXME <who@should.it.be>
+
+description: |+
+  Simple IO memory regions to be managed by the genalloc API.
+
+  Each child of the sram node specifies a region of reserved memory. Each
+  child node should use a 'reg' property to specify a specific range of
+  reserved memory.
+
+  Following the generic-names recommended practice, node names should
+  reflect the purpose of the node. Unit address (@<address>) should be
+  appended to the name.
+
+properties:
+  $nodename:
+    pattern: "^sram(@.*)?"
+
+  compatible:
+    items:
+      - enum:
+          - mmio-sram
+          - atmel,sama5d2-securam
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    description: Should use the same values as the root node.
+
+  "#size-cells":
+    description: Should use the same values as the root node.
+
+  ranges:
+    description:
+      Should translate from local addresses within the sram to bus addresses.
+
+  no-memory-wc:
+    description:
+      The flag indicating, that SRAM memory region has not to be remapped
+      as write combining. WC is used by default.
+    type: boolean
+
+  # TODO: additionalProperties: false
+
+patternProperties:
+  "^([a-z]*-)?sram@[a-f0-9]$":
+    type: object
+    description:
+      Each child of the sram node specifies a region of reserved memory.
+    properties:
+      reg:
+        description:
+          IO mem address range, relative to the SRAM range.
+
+      compatible:
+        $ref: /schemas/types.yaml#/definitions/string
+        description:
+          Should contain a vendor specific string in the form
+          <vendor>,[<device>-]<usage>
+
+      pool:
+        description:
+          Indicates that the particular reserved SRAM area is addressable
+          and in use by another device or devices.
+        type: boolean
+
+      export:
+        description:
+          Indicates that the reserved SRAM area may be accessed outside
+          of the kernel, e.g. by bootloader or userspace.
+        type: boolean
+
+      protect-exec:
+        description: |
+          Same as 'pool' above but with the additional constraint that code
+          will be run from the region and that the memory is maintained as
+          read-only, executable during code execution. NOTE: This region must
+          be page aligned on start and end in order to properly allow
+          manipulation of the page attributes.
+        type: boolean
+
+      label:
+        $ref: /schemas/types.yaml#/definitions/string
+        description:
+          The name for the reserved partition, if omitted, the label is taken
+          from the node name excluding the unit address.
+
+      clocks:
+        description:
+          A list of phandle and clock specifier pair that controls the
+          single SRAM clock.
+
+      # TODO: additionalProperties: false
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+examples:
+  - |
+    sram: sram@5c000000 {
+        compatible = "mmio-sram";
+        reg = <0x5c000000 0x40000>; /* 256 KiB SRAM at address 0x5c000000 */
+
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x5c000000 0x40000>;
+
+        smp-sram@100 {
+            compatible = "socvendor,smp-sram";
+            reg = <0x100 0x50>;
+        };
+
+        device-sram@1000 {
+            reg = <0x1000 0x1000>;
+            pool;
+        };
+
+        exported@20000 {
+            reg = <0x20000 0x20000>;
+            export;
+        };
+    };
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
