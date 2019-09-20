Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D7FB8D56
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Sep 2019 11:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oZrui0SEEAJCQqkk06N05aEeaqe7vXFtrdUfEZ5J/8Y=; b=muv
	RTRKxPZ74yIW/O7e7/ZQoXk3jIcc5PJWB0H0Ohp5KA3dzwbA0w85DkXffl/8MYBnsP3SgONDxA1zM
	PoKeQpMX3LL4Nb+AT8t0u3vA6RIWGVJ2TlQOHP74PEUbqx111J6gYToNIkFWZ3muCQV/kcACOrFKc
	qIqmHhm7FqE5dmTdJOew2h59mYnlFnPknF5P2KnBN4CWPQN1rMV9Y/a5HICIUhcTt0f2u9EBZIi8p
	5xku6u5wkMlv+2yZYI+bGbk9DafJO2mMW86UkCWdqi0JR6DGPsY2KWXL/oVPEP5E/dkj+iR0kPsmf
	qd22OHTDxxhV5NVshmfLZl9cL2lBtiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBEmW-00016W-Qf; Fri, 20 Sep 2019 09:00:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBEmR-00015c-7i
 for linux-riscv@lists.infradead.org; Fri, 20 Sep 2019 09:00:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id c17so3461811pgg.4
 for <linux-riscv@lists.infradead.org>; Fri, 20 Sep 2019 02:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=lZ6o83XsrCODlciR1nsXn3cLtmEeSlMrbT5toWJpCcc=;
 b=boRD9KgdLzUDsKREFe8UooLcvnhttqrmMKJ4JJhiYtlGGMw+CVF6SF+eZPxWodTfbL
 BNFPx1e5qW4K0Z19vCoeGPRDaw5+mnXvWTBdQns+nrRSQeFimtdY44ONxttr5iMp5alO
 TIlGWUwDdgP3OWd7JA6Cn2GCNYXO10D91svahg0d7vqDoSiZxLmu7ChaNdQH1JhZXhDu
 EQRo6w897sfn6bT21bnOvhffhZQxWPMQoIfDzWeieIlF3MBEbvgy0X6YaxAa/fJsMChA
 AxDMf7BVksAMmhU8syqB3tE0udnT9TiSQz3cIumCQMqa8VtcqgU4qwIMEOHO4ZsBGgOP
 kH7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lZ6o83XsrCODlciR1nsXn3cLtmEeSlMrbT5toWJpCcc=;
 b=ocL+Ut/FeyzFu1gUlmOdtcNa6NwqC76jRPI6V8ANFdNNl7jw7z6iqR0B9qGP57gEh5
 el7Rhg428K3DL1t9AuOemdjILcvUGUdUkQUzEUfCTkG169dKURLBi3Ul6wUeYjXpGufT
 4UqXXCAgZywKAFG/LLGcrP/ZzVK2ccqXjX6J9LIOSIt2gTgTvI3zCmDCbRwIc5xOhOff
 hqtStC+NkGdvWnukVgHd1CFGnB9J95sZZP++Qa28Mc9IuTyNr1h1LUvlkZkMlpRDFMm7
 G9NPoUjqy8fRor0Us8Cd4iZddyxymUnRT6KLTF6S1DMgKDvpymsmrL6Rpo3Chzm6Fp8f
 +Z4w==
X-Gm-Message-State: APjAAAUPVSqt55eLK58jeyqR8HL8PR3vh0kdC3a3J2XskyUAtZ35S7Y/
 b9afwK0YyOdqb5z65G6eE8LPwQ==
X-Google-Smtp-Source: APXvYqw+06XQxJJ/V6LSwB5FOqyXHpQco/KIgZInvygsU6gRfbquO1CkKRsztR7zc2+L4Gy1eVkotQ==
X-Received: by 2002:a65:4286:: with SMTP id j6mr14346419pgp.218.1568970041990; 
 Fri, 20 Sep 2019 02:00:41 -0700 (PDT)
Received: from localhost.localdomain (36-228-113-219.dynamic-ip.hinet.net.
 [36.228.113.219])
 by smtp.gmail.com with ESMTPSA id n9sm1287730pgf.64.2019.09.20.02.00.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 02:00:41 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v3 1/3] dt-bindings: dmaengine: sf-pdma: add bindins for
 SiFive PDMA
Date: Fri, 20 Sep 2019 17:00:01 +0800
Message-Id: <20190920090033.19438-1-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_020045_096069_59686A63 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 .../bindings/dma/sifive,fu540-c000-pdma.yaml  | 55 +++++++++++++++++++
 MAINTAINERS                                   |  5 ++
 2 files changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml

diff --git a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
new file mode 100644
index 000000000000..3ed015f2b83a
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
@@ -0,0 +1,55 @@
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
+  '#dma-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - '#dma-cells'
+
+examples:
+  - |
+    dma@3000000 {
+      compatible = "sifive,fu540-c000-pdma";
+      reg = <0x0 0x3000000 0x0 0x8000>;
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
