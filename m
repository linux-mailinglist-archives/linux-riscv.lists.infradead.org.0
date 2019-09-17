Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C5AB4769
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 08:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xrnWCwLng0k1MHCJpbMkNUbYU4B7Nd7poUS/3bYG8yA=; b=Sjx
	AxJCG/1aX/zBuLsU9Kxa2Qbpm5FsbX1eURTqnlMGT1AMt4w26yhbkAndnsVZ7BnBEvDLEtQsHWWR5
	Apny5D2qaHtPOSf+D+hYg3nn1y4fZE17mGettqcLFLSffe145eQM1HwZe+AQuIHkZmV0G+Fq7c9T9
	1M+3Hlhh52fusDtXFY0ZjbgGDAsllWdaqW3n4AJ2dYndVMjydo4jReV6ZOIJPfNJG6p9ByNFWcfDu
	cBjgRMf8o8BwKXqu7l9qBb1Enmn2cp+ihqBms0b2ZaKCyV/9Gz5g0XOBX2hT7O/+HmRSDoIaxbRDT
	ZZYT3R4v2epZZx4YiQafIOXR2tocyhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA6sz-0007xD-UX; Tue, 17 Sep 2019 06:22:50 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA6sv-0007wg-OR
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 06:22:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id d22so1049154pll.7
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 23:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=H3ZFg6Ip4/ySx02vg351K3EIXCHgNEDMYbg7+0FsxGE=;
 b=lpeuK2juqN/qKVXGSyG+DrKB9lu5i1+75AnOkmalz4I/1UotZnqmGrQraPClhhYBDc
 i1UMXEalGUoD52lG2gH6Xkkov8Wjk4LSoVfMqWEG4DoqPUgxdrOCsgA1r6bSmLJf47zs
 u++uv0HCaezKN7MyOChrXe7xcHA2LP5be9PvkMlITbfLueY1fhlKjszoo813ND9NABEo
 Vh78+OiSTOCMtNKggBu3UPm6A3GbBJsSW7DvelQMDNtv5vVMhjD94HX/bhV/V0abl7AB
 fYHXZ6KULRMFDNr7gdUHUYI7NOdBOoQ+n+iJeqcvOv7vyVkD7TMfKLrLcFIXifqbU8PL
 /u+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=H3ZFg6Ip4/ySx02vg351K3EIXCHgNEDMYbg7+0FsxGE=;
 b=o/x6EZEZ5O2YIjH9FEuHOITXSAzUmni5o9UbucSerJmiKrmnbP8EXq1fYNY3emDvyo
 aDVAW72byHs18DfyvCHV39HqP0zsLe3+9e4ldQbzRa/HqgKSRbipQngpmJ+6O8on35iz
 eQIQ/cqcAInP85TnhO8wlSI231B5etr9mqK3VC5J4QrJm0V388a7pOOArhgb4S1DAArv
 yerTblO0fyAKO36shHyxEbIW6yvgqLYe29g6oS6WRG9KsYNHcWTnxR3XDGB27mhzv6dL
 /pvpknGSlWUi5rxYbjDwjPBpZ5GU4dyI7OunYoQEQTsMHbPIFyYH5gIetjkHgUk4pooZ
 Izdg==
X-Gm-Message-State: APjAAAU9OEFbwMP0rypD3/QnSy9okRoUrPvttNNaywU3YHwjRjnXntJP
 skGb2J9vZIUKoHIhc3r/KX4ryw==
X-Google-Smtp-Source: APXvYqxc1GSAJOFhL24PM4/sAigtUqJGuzkbsT3sbmZF9dP6esNli7c5E5OOqkMQBHYzpIIxZa8pFg==
X-Received: by 2002:a17:902:b40c:: with SMTP id
 x12mr2076829plr.236.1568701363879; 
 Mon, 16 Sep 2019 23:22:43 -0700 (PDT)
Received: from localhost.localdomain (111-241-124-228.dynamic-ip.hinet.net.
 [111.241.124.228])
 by smtp.gmail.com with ESMTPSA id v21sm1318096pjy.3.2019.09.16.23.22.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 23:22:43 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH 1/3] dt-bindings: dmaengine: sf-pdma: add bindins for SiFive
 PDMA
Date: Tue, 17 Sep 2019 14:22:05 +0800
Message-Id: <20190917062239.762-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_232245_799285_4A8CBFF2 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Green Wan <green.wan@sifive.com>,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-hackers@sifive.com,
 linux-riscv@lists.infradead.org, "Paul E. McKenney" <paulmck@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add DT bindings document for Platform DMA(PDMA) driver of board,
HiFive Unleashed Rev A00.

Signed-off-by: Green Wan <green.wan@sifive.com>
---
 .../bindings/dma/sifive,fu540-c000-pdma.yaml  | 63 +++++++++++++++++++
 MAINTAINERS                                   |  5 ++
 2 files changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml

diff --git a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
new file mode 100644
index 000000000000..b5423f1cfcaf
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/sifive,fu540-c000-pdma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive Unleashed Rev C000 Platform DMA
+
+maintainers:
+  - Green Wan <green.wan@sifive.com>
+  - Palmer Debbelt <palmer@sifive.com>
+  - Paul Walmsley <paul.walmsley@sifive.com>
+
+description: |
+  Platform DMA is a DMA engine of SiFive Unleashed. It supports 4
+  channels. Each channel has 2 interrupts. One is for DMA done and
+  the other is for DME error.
+
+  In different SoC, DMA could be attached to different IRQ line.
+  DT file need to be changed to meet the difference. For technical
+  doc,
+
+  https://static.dev.sifive.com/FU540-C000-v1.0.pdf
+
+properties:
+  compatible:
+    items:
+      - const: sifive,fu540-c000-pdma
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 8
+    maxItems: 8
+
+  interrupt-parent:
+    description:
+      Interrupt parent must correspond to the name PLIC interrupt
+      controller, i.e. "plic0"
+    maxItems: 1
+
+  '#dma-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupt-parent
+  - interrupts
+  - '#dma-cells'
+
+examples:
+  - |
+    dma@3000000 {
+      compatible = "sifive,fu540-c000-pdma";
+      reg = <0x0 0x3000000 0x0 0x8000>;
+      interrupt-parent = <&plic0>;
+      interrupts = <23 24 25 26 27 28 29 30>;
+      #dma-cells = <1>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 49f75d1b7b51..d0caa09a479e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14591,6 +14591,11 @@ F:	drivers/media/usb/siano/
 F:	drivers/media/usb/siano/
 F:	drivers/media/mmc/siano/
 
+SIFIVE PDMA DRIVER
+M:	Green Wan <green.wan@sifive.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
+
 SIFIVE DRIVERS
 M:	Palmer Dabbelt <palmer@sifive.com>
 M:	Paul Walmsley <paul.walmsley@sifive.com>
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
