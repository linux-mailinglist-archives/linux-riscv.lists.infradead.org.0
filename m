Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3796322A3
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Jun 2019 10:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAL5rZ0wP586L/h2IxtRzCi8rOi2H4zwKjNZoSCASM0=; b=Q7G1m75thNlIgx
	+HpmaP98mqfmPvZeLbPmdw8BQ13itNjvjT1Gie81TcEZNNdMILs/pXJoynHHZ4+87qHgCEag5hgXy
	8RxXUi79FbPY1uPEuDMKOxGHc8HpQ505wqWrm8vKEZS6RLpJ4oRd1Qw9e4TuRPQd7XLJII9o+raDI
	mz5gMfBSrb1U7fMggWYQyNijv2kipwHksPKErD2pwkHGmrkxHmjee4dq7EX0VmfnHKauWHXWey9Sx
	ST7IBID3Gs9IC25dCYdP6m9im7QC1vbrYMGwHx2TJ6fvMFprRuq4sAABtHa2cwK/DUz/xeW5we0pn
	s6YwaGX0/cGMYCuaggIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLUR-00058r-Om; Sun, 02 Jun 2019 08:05:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLUJ-0004Mh-VT
 for linux-riscv@lists.infradead.org; Sun, 02 Jun 2019 08:05:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id p11so4360256wre.7
 for <linux-riscv@lists.infradead.org>; Sun, 02 Jun 2019 01:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=19JHlpBM08NaaoHMsfAWuVL8kWvPtpcvA1ACdpeOftw=;
 b=VCdfTsHhwzCR9YhzLBuLeD/dMl6Knig2Qrr/Lpl2mzOsirlbvU1qW+irHX7isYh0D9
 61JGiq+jQWtwbNdIx//Skzk3QztjQOK3IJdl4hnFMlFxKKXdMqNt880RYGiwa04PbPyf
 wx3kh+5yoUnvomaQdj8RDE2wqlLmjjLg2jqJqIMjP7QfgvrSR+E2DoxHSo9r9MueQc9E
 LRO/J843GZGz9QAhACybdilvcL3oSrZGjOp08ChuTXgK/6lR+biQbXan2NoItoUcZiwO
 yPtH39dTYbSnzcmvYnCzWy9kl5NLCNDrVcvmY0JCVGL4bisWtinY7qslXDqIe6+neqxC
 7ofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=19JHlpBM08NaaoHMsfAWuVL8kWvPtpcvA1ACdpeOftw=;
 b=nG7aPslNp393/wLdSlUAY+6uJAnbk0wzN9Fm9Dz07jT9CN56UoZazhUatBlSEIz1G/
 lFL56O/dj0cc1CooRzFodxpxauchleQoIX0ojXJa6astq8CtTIMruP2lrxyA7O6VWUvm
 oFbezK9IOxCSqYrcDq2pYeDwLGXHgF15B8l/OdkcGlXp/CzvvLkwIQwfkXmsT5KH5gUn
 GAG37QACczvPlXCYOvoEBAx6ydbFqkEsURdEvjiDmnbZqQIccxq3RKTTYMO250nr/cs7
 jCFrkws7mWX0EEcOM0IP8+TUVoK9Z/DfDZ+ercHWKTE0fqgt8lwmRFhfbgNNS+OMXhvC
 nqmA==
X-Gm-Message-State: APjAAAU6ehYjKU0SwPCb/cVfKw4umpNvyFX/jEF4BtDEIVs1NWY4BXZD
 qgXCT2ywyBPOS1+leZD5RhKjrRtOKe0=
X-Google-Smtp-Source: APXvYqwE8EuKMBl8b7yhXkwj4vtsenrRLz2TFZwMuxn258Kx08W0WGwnpfz+wP7SL38hHnLQqp7PqA==
X-Received: by 2002:adf:ea4a:: with SMTP id j10mr360935wrn.114.1559462706355; 
 Sun, 02 Jun 2019 01:05:06 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net.
 [217.76.161.89])
 by smtp.gmail.com with ESMTPSA id l190sm10186301wml.16.2019.06.02.01.05.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:05:05 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 2/5] dt-bindings: riscv: sifive: add YAML documentation for
 the SiFive FU540
Date: Sun,  2 Jun 2019 01:04:57 -0700
Message-Id: <20190602080500.31700-3-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190602080500.31700-1-paul.walmsley@sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_010508_087747_51AEF538 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Paul Walmsley <paul@pwsan.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add YAML DT binding documentation for the SiFive FU540 SoC.  This
SoC is documented at:

    https://static.dev.sifive.com/FU540-C000-v1.0.pdf

Passes dt-doc-validate, as of yaml-bindings commit 4c79d42e9216.

This second version incorporates review feedback from Rob Herring
<robh@kernel.org>.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Paul Walmsley <paul@pwsan.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: devicetree@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../devicetree/bindings/riscv/sifive.yaml     | 25 +++++++++++++++++++
 MAINTAINERS                                   |  9 +++++++
 2 files changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml

diff --git a/Documentation/devicetree/bindings/riscv/sifive.yaml b/Documentation/devicetree/bindings/riscv/sifive.yaml
new file mode 100644
index 000000000000..ce7ca191789e
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/sifive.yaml
@@ -0,0 +1,25 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/sifive.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive SoC-based boards
+
+maintainers:
+  - Paul Walmsley <paul.walmsley@sifive.com>
+  - Palmer Dabbelt <palmer@sifive.com>
+
+description:
+  SiFive SoC-based boards
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    items:
+      - enum:
+          - sifive,freedom-unleashed-a00
+      - const: sifive,fu540-c000
+      - const: sifive,fu540
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4ce575..8a64051cf5fc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14322,6 +14322,15 @@ S:	Supported
 K:	sifive
 N:	sifive
 
+SIFIVE FU540 SYSTEM-ON-CHIP
+M:	Paul Walmsley <paul.walmsley@sifive.com>
+M:	Palmer Dabbelt <palmer@sifive.com>
+L:	linux-riscv@lists.infradead.org
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/pjw/sifive.git
+S:	Supported
+K:	fu540
+N:	fu540
+
 SILEAD TOUCHSCREEN DRIVER
 M:	Hans de Goede <hdegoede@redhat.com>
 L:	linux-input@vger.kernel.org
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
