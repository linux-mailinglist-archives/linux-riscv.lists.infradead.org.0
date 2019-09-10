Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D47AE433
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 09:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=t27xVzWQGNq+KRm7Izf5PNBFx+X+eRDfhxuRXO6dC1g=; b=WEB
	4S/4zsg9z4BbuMDETexrkky2XoOkfqH04jL+3gRSyX/50kXqDtodGOcJGgIEZIcD+gMdXBDf2aEGV
	f+bdydAkiEW+FR41I2C4H8r4bvjlsTBlJZ4Q7CQGXzJOrKVUXF+d8pEwTBdwctXl4jUOzab7ko9tK
	mCHvJ/W4ERSVNlV12g4R+e6TC5f8lyHDDePgrhikZdqxFZBtjAj4fFpdBFiyeOkbKwo1bTwjf0ei6
	TlKSc9eSXsOltPIB9FrWbNAlsr+pKElK+R058GEnLwc6bk5p6wHIJ1n0oWapGgfTvIlVkTBhIhoV+
	4/N+8FFM0Uk16uI8f4J7BCseLLk5hQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7aBu-0006av-4C; Tue, 10 Sep 2019 07:03:54 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7aBg-0006Zt-Kl
 for linux-riscv@lists.infradead.org; Tue, 10 Sep 2019 07:03:45 +0000
Received: by mail-pl1-x642.google.com with SMTP id x20so2489779plm.9
 for <linux-riscv@lists.infradead.org>; Tue, 10 Sep 2019 00:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=x8676vaAMOMU0xS9ZBzOGK+O3nkLRs05V8sfia4T0io=;
 b=E1yMmjSYYd3SJOl+n5kBSPDt6WFLc78WrSf3sphfdotTh1RZBV7Wc2tjPZQ8px9Lig
 HIziAgXnNgmbIGwEZTBIwWFVvZyQHTmvuM5p5CxbaRm5SowE78u3iYJ/VsbfSugaN8jf
 NnlXJpbwcuB2cssMweuqo0+B1jpuvP2nzsTqzmKMtrl8C7M85iNm/k7zRCX4y7EdEqf3
 zFlfzHcT4mMotiXCMV6H4wM1ZqRLhS9zy8PV7yFjQZPpFgvdpOWnMx0T6R5N5kIMCVPa
 7F2JORo1xbDQps6U/RVRm7iIU80SWnXDaFWzFmmPz8v9wdKankZFOVw9XTCgudVlGMT4
 nClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=x8676vaAMOMU0xS9ZBzOGK+O3nkLRs05V8sfia4T0io=;
 b=BA044EtwltnkbgSlwNPqaPMXIbxXvfTnH8c//JiPDtCGy3+tLozIzF7ziXE1exyPKj
 jAt+gE99tt6owdbFCi++teNz5hrIhcIk4TxMiGHRyR6y5Hqgcws/m346QZg/Lcv+HfD9
 uwF8TAe/Q3VgwdWA40xSi7aHyq7jsF3jDcuR0pJ6+Rzt2PLKEYtSyQsA1LlZHNXwHBGz
 EEYV+6Y+hIno3UykZLS3JdurHw1uW1VMziQkTPxJK34eKhEJjURd7d57fZjSj5CFOivG
 okpLQ4MaS7d7c9tczKzygUFA15Vt/oAGZ2EmzHcBg9jx3++pTzl1m3ZMHXXAm3O5UEOf
 qdkg==
X-Gm-Message-State: APjAAAU+Ka6s8v7JsMrP9Vy+UrLOdTnUo6byJocU2kZneGaTal3OMA44
 zwIMkK988byZtw/SjKtJljnIRg==
X-Google-Smtp-Source: APXvYqzf295XBYzMkJ2GP3vZ3dUOjLqYHN6ex68DBrUFlhgOofOjYtZwSxq9PB4LXBeat1GxDUDaAw==
X-Received: by 2002:a17:902:8a88:: with SMTP id
 p8mr29467918plo.152.1568099017311; 
 Tue, 10 Sep 2019 00:03:37 -0700 (PDT)
Received: from pragneshp.open-silicon.com ([114.143.65.226])
 by smtp.gmail.com with ESMTPSA id q30sm1387383pja.18.2019.09.10.00.03.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 10 Sep 2019 00:03:36 -0700 (PDT)
From: Pragnesh Patel <pragnesh.patel@sifive.com>
To: palmer@sifive.com,
	paul.walmsley@sifive.com
Subject: [PATCH] spi: dt-bindings: Convert spi-sifive binding to json-schema
Date: Tue, 10 Sep 2019 12:32:51 +0530
Message-Id: <1568098996-4180-1-git-send-email-pragnesh.patel@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_000341_484322_B57CAF86 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 0000000..368f5d5
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
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  sifive,fifo-depth:
+    description:
+      Depth of hardware queues; defaults to 8
+    $ref: "/schemas/types.yaml#/definitions/uint32"
+
+  sifive,max-bits-per-word:
+    description:
+      Maximum bits per word; defaults to 8
+    $ref: "/schemas/types.yaml#/definitions/uint32"
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
