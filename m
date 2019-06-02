Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31B6322A4
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Jun 2019 10:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFV2ziPwawXYA++4eL06A4t3hczsIdRBSx2uFwPacFY=; b=gWfm1p7mGVcIXS
	Ca6xz1phga0IgzzhGRje3N/Y3giLNAncP+TisVRwWGGY1lbDx9QeaDAfX1NLyLTZCWwfwNwhqym+P
	StDvD1usPXLNBO5bdDFkTf8ECRhXNUqnwMcXTpMv7MRA5BqfgzKSLLqT78JXsZN1Rs22lmPoHoI7i
	qlfBeHL2ECkDTQf8Lg7UCIzGeEhfpItSlUdlmLzsI/ePHQSyax3zYMKvBUX9o9ay+ugfBJu2dIPiM
	QN3SgxfhJGF9FzTgMWDqAe0qVIO1oTyhOwsvQjYIIS6mkdBL6IZ232g8+N0VZvnAccgipLJ5BCKyv
	T97qy6PkbDUiHHo7qi3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLUT-00059Q-5l; Sun, 02 Jun 2019 08:05:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLUL-0004Yq-Nz
 for linux-riscv@lists.infradead.org; Sun, 02 Jun 2019 08:05:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id g135so5324636wme.4
 for <linux-riscv@lists.infradead.org>; Sun, 02 Jun 2019 01:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wvk9LhsSu5lYNJZOdSQrHtIo1oj0PZh/JKcuQJp9vDo=;
 b=YwyMTxQ0Tv2Qdzp8L6b5CjQfwl8xlL/N7sdxHxKS6MqZq/BtV/T063MjUmRs2SbdmR
 Sq5DHcZBWq7V/QEeu+Twu624TVEg07klgcnFIdC1qnvqzBUytHts8BwADI9dBQVvGMKc
 4+z2cbGB2F4ba5nePNL78S7cnIkLoBiEKu3YJCx+zmFvJAaxVxDFCqKtJJGw014VXxrj
 z3QRd78A1HA1X/AYEDC54il+/X+NkJgGI61lA0jJCHiZx6PiTaLzetAsbjTZN3hb518x
 7ciIJA93p4pqRvNQe+pBqc9LXyL4KfrRFm9BQnxDD7Vys1z6opqUYhoH4HC0Bjb5i3z0
 Spmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wvk9LhsSu5lYNJZOdSQrHtIo1oj0PZh/JKcuQJp9vDo=;
 b=CRIK0MCQCnHNUPMcgDdgj4j+P2q1x4abBjdaF0w/7sE/LRd2Qeh9SK4Tf4GxBsY2Db
 I39IZKWspw3p2R2y1eWB0XzdN/6iAZb+oxzyBFoKOtjeob1GyAsnQSM6WIizhoptTrjw
 GdpuRPOclebktjDyR9hL81VCvvcphnLcHHckSwh4SZ4jnuS6rLm3kjtr59COXYeWOxd4
 vHSBYE4VvCkaoHCPO4FiWcsV6Kzi3oduxy7F2weUsqrw2t2iUbqdSAA0nxg1QzYuFSXA
 tNfIVUvevI+qSs0+zAwAzma5hC5t68YhPzoSam0rT+vjlO74mTuP6o75GnwiAdUnI7v7
 t+/w==
X-Gm-Message-State: APjAAAWsdGIU4HlwNHekusr9acQdgDLCXVXjYjmtVcAc13sCMdN0/Lm+
 XGEVF5mVraLZx2z1WKvUFZMf0w==
X-Google-Smtp-Source: APXvYqyAZ6rxxIrchthzK1GIyd+woTIGPDx+BzNwo8BfN8W3cUIcc5lwTK4V5096dz+9iq2uCXG2HQ==
X-Received: by 2002:a1c:b4d4:: with SMTP id d203mr10966857wmf.34.1559462707984; 
 Sun, 02 Jun 2019 01:05:07 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net.
 [217.76.161.89])
 by smtp.gmail.com with ESMTPSA id l190sm10186301wml.16.2019.06.02.01.05.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:05:07 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 3/5] dt-bindings: riscv: convert cpu binding to json-schema
Date: Sun,  2 Jun 2019 01:04:58 -0700
Message-Id: <20190602080500.31700-4-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190602080500.31700-1-paul.walmsley@sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_010510_178521_C879F070 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Paul Walmsley <paul@pwsan.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

At Rob's request, we're starting to migrate our DT binding
documentation to json-schema YAML format.  Start by converting our cpu
binding documentation.  While doing so, document more properties and
nodes.  This includes adding binding documentation support for the E51
and U54 CPU cores ("harts") that are present on this SoC.  These cores
are described in:

    https://static.dev.sifive.com/FU540-C000-v1.0.pdf

This cpus.yaml file is intended to be a starting point and to
evolve over time.  It passes dt-doc-validate as of the yaml-bindings
commit 4c79d42e9216.

This patch was originally based on the ARM json-schema binding
documentation as added by commit 672951cbd1b7 ("dt-bindings: arm: Convert
cpu binding to json-schema").

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Paul Walmsley <paul@pwsan.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
---
 .../devicetree/bindings/riscv/cpus.yaml       | 168 ++++++++++++++++++
 1 file changed, 168 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/cpus.yaml

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
new file mode 100644
index 000000000000..6e8d55d9d4e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -0,0 +1,168 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/cpus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V bindings for 'cpus' DT nodes
+
+maintainers:
+  - Paul Walmsley <paul.walmsley@sifive.com>
+  - Palmer Dabbelt <palmer@sifive.com>
+
+allOf:
+  - $ref: /schemas/cpus.yaml#
+
+properties:
+  $nodename:
+    const: cpus
+    description: Container of cpu nodes
+
+  '#address-cells':
+    const: 1
+    description: |
+      A single unsigned 32-bit integer uniquely identifies each RISC-V
+      hart in a system.  (See the "reg" node under the "cpu" node,
+      below).
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^cpu@[0-9a-f]+$':
+    properties:
+      compatible:
+        type: array
+        items:
+          - enum:
+              - sifive,rocket0
+              - sifive,e5
+              - sifive,e51
+              - sifive,u54-mc
+              - sifive,u54
+              - sifive,u5
+          - const: riscv
+        description:
+          Identifies that the hart uses the RISC-V instruction set
+          and identifies the type of the hart.
+
+      mmu-type:
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/string"
+          - enum:
+              - riscv,sv32
+              - riscv,sv39
+              - riscv,sv48
+        description:
+          Identifies the MMU address translation mode used on this
+          hart.  These values originate from the RISC-V Privileged
+          Specification document, available from
+          https://riscv.org/specifications/
+
+      riscv,isa:
+        allOf:
+          - $ref: "/schemas/types.yaml#/definitions/string"
+          - enum:
+              - rv64imac
+              - rv64imafdc
+        description:
+          Identifies the specific RISC-V instruction set architecture
+          supported by the hart.  These are documented in the RISC-V
+          User-Level ISA document, available from
+          https://riscv.org/specifications/
+
+      timebase-frequency:
+        type: integer
+        minimum: 1
+        description:
+          Specifies the clock frequency of the system timer in Hz.
+          This value is common to all harts on a single system image.
+
+      interrupt-controller:
+        type: object
+        description: Describes the CPU's local interrupt controller
+
+        properties:
+          '#interrupt-cells':
+            const: 1
+
+          compatible:
+            const: riscv,cpu-intc
+
+          interrupt-controller: true
+
+        required:
+          - '#interrupt-cells'
+          - compatible
+          - interrupt-controller
+
+    required:
+      - riscv,isa
+      - timebase-frequency
+      - interrupt-controller
+
+examples:
+  - |
+    // Example 1: SiFive Freedom U540G Development Kit
+    cpus {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        timebase-frequency = <1000000>;
+        cpu@0 {
+                clock-frequency = <0>;
+                compatible = "sifive,rocket0", "riscv";
+                device_type = "cpu";
+                i-cache-block-size = <64>;
+                i-cache-sets = <128>;
+                i-cache-size = <16384>;
+                reg = <0>;
+                riscv,isa = "rv64imac";
+                cpu_intc0: interrupt-controller {
+                        #interrupt-cells = <1>;
+                        compatible = "riscv,cpu-intc";
+                        interrupt-controller;
+                };
+        };
+        cpu@1 {
+                clock-frequency = <0>;
+                compatible = "sifive,rocket0", "riscv";
+                d-cache-block-size = <64>;
+                d-cache-sets = <64>;
+                d-cache-size = <32768>;
+                d-tlb-sets = <1>;
+                d-tlb-size = <32>;
+                device_type = "cpu";
+                i-cache-block-size = <64>;
+                i-cache-sets = <64>;
+                i-cache-size = <32768>;
+                i-tlb-sets = <1>;
+                i-tlb-size = <32>;
+                mmu-type = "riscv,sv39";
+                reg = <1>;
+                riscv,isa = "rv64imafdc";
+                tlb-split;
+                cpu_intc1: interrupt-controller {
+                        #interrupt-cells = <1>;
+                        compatible = "riscv,cpu-intc";
+                        interrupt-controller;
+                };
+        };
+    };
+
+  - |
+    // Example 2: Spike ISA Simulator with 1 Hart
+    cpus {
+            cpu@0 {
+                    device_type = "cpu";
+                    reg = <0>;
+                    compatible = "riscv";
+                    riscv,isa = "rv64imafdc";
+                    mmu-type = "riscv,sv48";
+                    interrupt-controller {
+                            #interrupt-cells = <1>;
+                            interrupt-controller;
+                            compatible = "riscv,cpu-intc";
+                    };
+            };
+    };
+...
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
