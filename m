Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A509EB6218
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Sep 2019 13:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=g7XzjDJ11yYnxIx+kTizN8A7DDVkoc3RalL18s4Xgk4=; b=lzX
	bF/m7FDN+ya9j99CudjjqJZH5d6ahV5paMkHPGiiEeu81stJ9c9wqtH3HTL/2vUFKur6gQENIJ9N9
	W+styjG2KgWT+RFeteB4xX4gX1vt/NyIkqjb3vU6RLStjFwIgAoGYHJE+73rATL+FbFRh6xGhQdoD
	5jAGWGBuxI1ZY9zaId71Ca09n5x4RlWW41ouMUxbtso3FUEcKtYpXLH53y8dtKivci2C9evhHEobi
	MvBoOkixxn29rhxEJ8sjwjsfT8799joeHG4Zy2Km4azLZg72SPpruRmCJrFdIOn/yrtK/cVdroF7o
	AyVOqU9Pl7O1wNUNDwNY9aGkm+K3oiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXqj-0003zE-AG; Wed, 18 Sep 2019 11:10:17 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXqX-0002qE-Kn
 for linux-riscv@lists.infradead.org; Wed, 18 Sep 2019 11:10:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id a24so3871220pgj.2
 for <linux-riscv@lists.infradead.org>; Wed, 18 Sep 2019 04:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=TIBonrAou/kqYBGJ3D/jipopO+euPWjTtxCKgGWeHV4=;
 b=nDUBvcRNoOHsnq/ANJ7DlJa95TZhwrU9I/02wwIaxgLKbyXRG4SlfJFWJ/mjhv1zZE
 F0fnFmn4Yh/fhCYdDKT9XsHtPqttwIZDKfXRUZFcCtQKOie+yCKHdPHPblvL8AgUYOjb
 TBmG6nLD1nyykmFcficCKja40OqTpsxenET3AJS2x2S1+6SR3M9v/TpKDNiKF6nfYhAQ
 7lNzvt4Jj6jXzDndcArdYASBwXVQl7ATPvE+3eH7NyB765cP+0tUkT4/BzC0jSmD72va
 TxL8rVFWScalSq3PX8BIcxAFBkBV640HuYdY7+sdff5WmSLk7odwR0X9lWNoNHaXOKXF
 q47g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TIBonrAou/kqYBGJ3D/jipopO+euPWjTtxCKgGWeHV4=;
 b=DlVqzwcrDmnbgGYbME+B+CURY93GPH4qljlIuIHwroYDLH14RmhheanpnEExBL4Zys
 P9vuYaBa8k0FMXGKRSZAxjRcjsSSXleOEEcxKUoUX3wOcL80iRk0nj9txEVwlwavUTye
 t7CJpxWW+Wqbhh+GoIBqWuRp9rvDCpWY7Z/9FmJizvoLk8ZQAzm+ZdMSFnqd65wNt0Et
 p0LfzA3oo6NnwDL9w7yD8GAg2exhqi5PKmcjZhsAoufoJnTbnAuWrT6AOqVQ9ei9yOew
 UEeoysaQXrJ9pLBb3T2rhSt6u4Ajxtd9uGB0zZtTOas50e9gxnUcA7gxMteqjITbrK5E
 hdlg==
X-Gm-Message-State: APjAAAWoiUwoXBjfihW+i4pEUsBn3mCGdjSHBmjNwa4lAIz/1paSceBN
 IxzmKEX+ZttV+Qjj3mhKHwjHDA==
X-Google-Smtp-Source: APXvYqyqxL5VeS9eLWRFaS7Glza3we5w7+0Qxt6B/uLgCy5YxfhDZUXsl4qiWi8BATH8D6ztv33biQ==
X-Received: by 2002:a65:648b:: with SMTP id e11mr3257766pgv.2.1568804999960;
 Wed, 18 Sep 2019 04:09:59 -0700 (PDT)
Received: from pragneshp.open-silicon.com ([114.143.65.226])
 by smtp.gmail.com with ESMTPSA id x125sm7256738pfb.93.2019.09.18.04.09.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 18 Sep 2019 04:09:59 -0700 (PDT)
From: Pragnesh Patel <pragnesh.patel@sifive.com>
To: palmer@sifive.com,
	paul.walmsley@sifive.com
Subject: [PATCH v2] spi: dt-bindings: Convert spi-sifive binding to json-schema
Date: Wed, 18 Sep 2019 16:38:39 +0530
Message-Id: <1568804927-13565-1-git-send-email-pragnesh.patel@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_041005_791184_789A009E 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-riscv@lists.infradead.org, Pragnesh Patel <pragnesh.patel@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Convert the spi-sifive binding to DT schema format.

Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
---

Changes in v2:
- Remove address-cells and size-cells property
- Added valid values for sifive,fifo-depth and sifive,max-bits-per-word
  property

 .../devicetree/bindings/spi/spi-sifive.txt         | 37 ----------
 .../devicetree/bindings/spi/spi-sifive.yaml        | 86 ++++++++++++++++++++++
 2 files changed, 86 insertions(+), 37 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-sifive.txt
 create mode 100644 Documentation/devicetree/bindings/spi/spi-sifive.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-sifive.txt b/Documentation/devicetree/bindings/spi/spi-sifive.txt
deleted file mode 100644
index 3f5c6e4..0000000
--- a/Documentation/devicetree/bindings/spi/spi-sifive.txt
+++ /dev/null
@@ -1,37 +0,0 @@
-SiFive SPI controller Device Tree Bindings
-------------------------------------------
-
-Required properties:
-- compatible		: Should be "sifive,<chip>-spi" and "sifive,spi<version>".
-			  Supported compatible strings are:
-			  "sifive,fu540-c000-spi" for the SiFive SPI v0 as integrated
-			  onto the SiFive FU540 chip, and "sifive,spi0" for the SiFive
-			  SPI v0 IP block with no chip integration tweaks.
-			  Please refer to sifive-blocks-ip-versioning.txt for details
-- reg			: Physical base address and size of SPI registers map
-			  A second (optional) range can indicate memory mapped flash
-- interrupts		: Must contain one entry
-- interrupt-parent	: Must be core interrupt controller
-- clocks		: Must reference the frequency given to the controller
-- #address-cells	: Must be '1', indicating which CS to use
-- #size-cells		: Must be '0'
-
-Optional properties:
-- sifive,fifo-depth		: Depth of hardware queues; defaults to 8
-- sifive,max-bits-per-word	: Maximum bits per word; defaults to 8
-
-SPI RTL that corresponds to the IP block version numbers can be found here:
-https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/spi
-
-Example:
-	spi: spi@10040000 {
-		compatible = "sifive,fu540-c000-spi", "sifive,spi0";
-		reg = <0x0 0x10040000 0x0 0x1000 0x0 0x20000000 0x0 0x10000000>;
-		interrupt-parent = <&plic>;
-		interrupts = <51>;
-		clocks = <&tlclk>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		sifive,fifo-depth = <8>;
-		sifive,max-bits-per-word = <8>;
-	};
diff --git a/Documentation/devicetree/bindings/spi/spi-sifive.yaml b/Documentation/devicetree/bindings/spi/spi-sifive.yaml
new file mode 100644
index 0000000..140e435
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spi-sifive.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spi-sifive.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive SPI controller
+
+maintainers:
+  - Pragnesh Patel <pragnesh.patel@sifive.com>
+  - Paul Walmsley  <paul.walmsley@sifive.com>
+  - Palmer Dabbelt <palmer@sifive.com>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+properties:
+  compatible:
+    items:
+      - const: sifive,fu540-c000-spi
+      - const: sifive,spi0
+
+    description:
+      Should be "sifive,<chip>-spi" and "sifive,spi<version>".
+      Supported compatible strings are -
+      "sifive,fu540-c000-spi" for the SiFive SPI v0 as integrated
+      onto the SiFive FU540 chip, and "sifive,spi0" for the SiFive
+      SPI v0 IP block with no chip integration tweaks.
+      Please refer to sifive-blocks-ip-versioning.txt for details
+
+      SPI RTL that corresponds to the IP block version numbers can be found here -
+      https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/spi
+
+  reg:
+    maxItems: 1
+
+    description:
+      Physical base address and size of SPI registers map
+      A second (optional) range can indicate memory mapped flash
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+    description:
+      Must reference the frequency given to the controller
+
+  sifive,fifo-depth:
+    description:
+      Depth of hardware queues; defaults to 8
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum: [ 8 ]
+      - default: 8
+
+  sifive,max-bits-per-word:
+    description:
+      Maximum bits per word; defaults to 8
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum: [ 0, 1, 2, 3, 4, 5, 6, 7, 8 ]
+      - default: 8
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+examples:
+  - |
+    spi: spi@10040000 {
+      compatible = "sifive,fu540-c000-spi", "sifive,spi0";
+      reg = <0x0 0x10040000 0x0 0x1000 0x0 0x20000000 0x0 0x10000000>;
+      interrupt-parent = <&plic>;
+      interrupts = <51>;
+      clocks = <&tlclk>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+      sifive,fifo-depth = <8>;
+      sifive,max-bits-per-word = <8>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
