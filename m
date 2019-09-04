Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB43A8040
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 12:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gRJGQ+NU30zrURCArBDJh9wdU59q6cexMgZPFsn/GJ8=; b=NPs
	vUHrSlStY5WCH+K1Q/VMqB1WkfE8Mnxl0JXLqbDcCai026Lhd0Ssc/BvEnoT7i/Olkomcw4F4OMtU
	mcbCGuf/c7lULWG4/wEkQVIhj7a2twMq1bdTaPxud/pk0fG2zkOLvbTYBbmIiWPjFSTVxyVu1An8w
	UsRGWnFh82M7dw7H4dPw3jMKWUX5sin3+5pHxoN0ZQWp+Mv9pNDqaMRTEaGZLc4qf9vgX/3Ju+ueH
	nRogoaCBOevufnXf0x4WFF6SzHJbZx5h+9ghsHsb0CMZlX5vOwEWRrAuj8ucePDZISjIgu5b9ZxJ0
	pkacYj5gT1fce2BT4xDoxp0qqhK4LPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SOc-000060-Fg; Wed, 04 Sep 2019 10:20:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SOX-0008TG-Qm
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 10:20:11 +0000
Received: by mail-pg1-x542.google.com with SMTP id x15so10993416pgg.8
 for <linux-riscv@lists.infradead.org>; Wed, 04 Sep 2019 03:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=J/+/1jhl4CuoY9Z/mhDhMnmKOIqzxcucbYzyGMDV3bY=;
 b=CORLaL/CvcphzgxSNJFn4X4v7kP4bDjHR6i/EX1ozp9IxvsGPO5SOgJVs12qRzD9zq
 9FP+oVjN/1UAwoWfnjwhcQCUem38ccuPN2q9PM+47l+u31chxAQ+QyytYx8QyUj12sVZ
 yVJSvxJdNti3TuNpf7Fn/Km5A4itymNTEnpIRzEjtvDSJOKJmgZw6bNxmbI5VVkhZyl5
 iYUqxGHivRS6JP6SO1VcgPMlvtwFaTUdt5bNyqvW7pOp3AKQyA5KdFC3BrJ/RL0wWlve
 MavDd6/n8d2fbjyajYj1s0NOlOf16VCs+HrORUVsiiwBV2BHKDD5AF0Gp0pVYImxXnC+
 s5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=J/+/1jhl4CuoY9Z/mhDhMnmKOIqzxcucbYzyGMDV3bY=;
 b=ZUQV+3pAanxwZ5GPFDYzkB6yBxYotgH1n6fX8T4+mWaPh2nEGBgbgI04fZhUbtAmMO
 M7iyZd2y/S8vcBdr1RHc97M/Zo+ydQgCuKRICafVM7WYKWpSdfKOchepwFir/HfiebCt
 WRuLzHMWep32emYo9tvcK/Etu9XTdE+W1Wf8mD88UxCxIQN8xH2vhF7X79MdZJjFL+/Q
 8ORGonSxK7OhZff0OZcB3KCbmF+V/+TAhgHVVZmK+EeQLK8Hhf8RTaW1yGW5TvODC84L
 7zJ5VTiKRSiNWzYcNxF0jIzXCEC/mxk/kIDLlr0doH5E5i3GYAqNyyI/lGciDWP7hvwk
 YVhA==
X-Gm-Message-State: APjAAAXYzrtiw8R21cw4gNUq+MxF0dcqfhhK7ZZx/OiWJsppKb4IR3Y5
 xVWQhFB1VVEZJYAlF5taAltWsA==
X-Google-Smtp-Source: APXvYqwfTQYhLAozNtIm8UdrAyXLSg8j912XKe8r8DrSl6YP/T2n5628nUBZNbwocefVP9R/TCS0Fg==
X-Received: by 2002:aa7:87d3:: with SMTP id i19mr31973373pfo.57.1567592408536; 
 Wed, 04 Sep 2019 03:20:08 -0700 (PDT)
Received: from pragneshp.open-silicon.com ([114.143.65.226])
 by smtp.gmail.com with ESMTPSA id p20sm22806882pgi.81.2019.09.04.03.20.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 04 Sep 2019 03:20:08 -0700 (PDT)
From: Pragnesh Patel <pragnesh.patel@sifive.com>
To: palmer@sifive.com,
	paul.walmsley@sifive.com
Subject: [PATCH v2] dt-bindings: serial: Convert riscv,
 sifive-serial to json-schema
Date: Wed,  4 Sep 2019 15:49:11 +0530
Message-Id: <1567592383-8920-1-git-send-email-pragnesh.patel@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_032009_888282_DDC753B9 
X-CRM114-Status: GOOD (  13.82  )
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
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-serial@vger.kernel.org,
 linux-riscv@lists.infradead.org, Pragnesh Patel <pragnesh.patel@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Convert the riscv,sifive-serial binding to DT schema using json-schema.

Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
---

Changes in v2:
- Replace enum with items in compatible property

 .../devicetree/bindings/serial/sifive-serial.txt   | 33 ------------
 .../devicetree/bindings/serial/sifive-serial.yaml  | 62 ++++++++++++++++++++++
 2 files changed, 62 insertions(+), 33 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/sifive-serial.txt
 create mode 100644 Documentation/devicetree/bindings/serial/sifive-serial.yaml

diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.txt b/Documentation/devicetree/bindings/serial/sifive-serial.txt
deleted file mode 100644
index c86b1e5..0000000
--- a/Documentation/devicetree/bindings/serial/sifive-serial.txt
+++ /dev/null
@@ -1,33 +0,0 @@
-SiFive asynchronous serial interface (UART)
-
-Required properties:
-
-- compatible: should be something similar to
-	      "sifive,<chip>-uart" for the UART as integrated
-	      on a particular chip, and "sifive,uart<version>" for the
-	      general UART IP block programming model.	Supported
-	      compatible strings as of the date of this writing are:
-	      "sifive,fu540-c000-uart" for the SiFive UART v0 as
-	      integrated onto the SiFive FU540 chip, or "sifive,uart0"
-	      for the SiFive UART v0 IP block with no chip integration
-	      tweaks (if any)
-- reg: address and length of the register space
-- interrupts: Should contain the UART interrupt identifier
-- clocks: Should contain a clock identifier for the UART's parent clock
-
-
-UART HDL that corresponds to the IP block version numbers can be found
-here:
-
-https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/uart
-
-
-Example:
-
-uart0: serial@10010000 {
-	compatible = "sifive,fu540-c000-uart", "sifive,uart0";
-	interrupt-parent = <&plic0>;
-	interrupts = <80>;
-	reg = <0x0 0x10010000 0x0 0x1000>;
-	clocks = <&prci PRCI_CLK_TLCLK>;
-};
diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.yaml b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
new file mode 100644
index 0000000..e8d3aed
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/sifive-serial.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive asynchronous serial interface (UART)
+
+maintainers:
+  - Pragnesh Patel <pragnesh.patel@sifive.com>
+  - Paul Walmsley  <paul.walmsley@sifive.com>
+  - Palmer Dabbelt <palmer@sifive.com>
+
+allOf:
+  - $ref: /schemas/serial.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: sifive,fu540-c000-uart
+      - const: sifive,uart0
+
+    description:
+      Should be something similar to "sifive,<chip>-uart"
+      for the UART as integrated on a particular chip,
+      and "sifive,uart<version>" for the general UART IP
+      block programming model.
+
+      UART HDL that corresponds to the IP block version
+      numbers can be found here -
+
+      https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+      #include <dt-bindings/clock/sifive-fu540-prci.h>
+      serial@10010000 {
+        compatible = "sifive,fu540-c000-uart", "sifive,uart0";
+        interrupt-parent = <&plic0>;
+        interrupts = <80>;
+        reg = <0x0 0x10010000 0x0 0x1000>;
+        clocks = <&prci PRCI_CLK_TLCLK>;
+      };
+
+...
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
