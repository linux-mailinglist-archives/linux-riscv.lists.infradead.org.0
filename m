Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8756932294
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Jun 2019 10:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAL5rZ0wP586L/h2IxtRzCi8rOi2H4zwKjNZoSCASM0=; b=Vs8wRTW2JKhv3s
	aq0gye+XlyOicnYNG/AShCeb2IhmsL9uezgT+ZeEf1NYqeb1j9sso/jirDs8QZjas014/6PReY1dV
	4rx9PRfr/OXF0v46un2bshWXrZo9UbxvmaqLFbdMInTlAgR7E4ohDTybgplovcIUldLuEESg5kLFp
	2Mp8Ml82FxgKAVGNBY7u2b+tLf9SE/J6Ym6H6N2hTGJIwm3lHwjZygb14AcWF6IprQIJYnobJ3LzG
	B8dBFbP5o41P6F42MI/EqZT9oP4OB7qV/fwhG9jD01piJd13+8/JfhWPZPcPUFIvCtEf75OSP+iGS
	CpwZQ7VDC11P2inE1Low==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLQx-0003HZ-FJ; Sun, 02 Jun 2019 08:01:39 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLQs-0003FP-KP
 for linux-riscv@lists.infradead.org; Sun, 02 Jun 2019 08:01:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so6137446wrs.3
 for <linux-riscv@lists.infradead.org>; Sun, 02 Jun 2019 01:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=19JHlpBM08NaaoHMsfAWuVL8kWvPtpcvA1ACdpeOftw=;
 b=D1YagV2wbPbvYWZG6MzOREWRKQGhvSfaNMR6MaRpuTG3+iRMDz8IOAruUW8V/2CsOV
 dWr/OLZLPLXOS1ERStSTQ19mZ53xlDQFlCJOUKK8RJwaNcJpCG+KarzUiCyGZMQXpEIu
 FrBKvFBcPrSGmn+reOALH9WfV1FPfwlGjHpjwpBngwFOMGCXiQBEKv5uQkawr3ERKQdC
 /qUujjIVeGUijZJ+vZVg5y/1BqUbnG5ZHp4iAUZp0E30WUPtCT7Hb3CzQFd7FOATQ1wJ
 4drT05q/92szPLAyQN6niHi0Skv8EP3tySB0tavCnhXN1cXgLJpaPi7XM/05hHIDrWaj
 +3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=19JHlpBM08NaaoHMsfAWuVL8kWvPtpcvA1ACdpeOftw=;
 b=A45WDGqL49PHqj86NxohlEOQ8CabrkfYNqPVNKzXnQgflxarghHs1xhFh9di9o+YgO
 7Wo1EFmPhc6T1H2Tq5rV6bGIwjwNWMU2BHJiXehgSOqFqtBeZ1Kz5f5e9/A1PSjBkGQY
 aa4oDWTBJDb8olKgbuWpglfNhHd1dDld+ozBKtuQb7GzyFvhqXsxxvjVuuggAv+LgFgO
 RL8+PjN9Fzbz+IU2TtFlh73+o/mzPiAjThNbQmrOag53s3Twks8pgPXdxqLywx9G1+QF
 zXH5ooAGalX9f4tARo3xu/zFISNM0jco1ximMLolXcfDV3nAOILEILbhB388ZAif71JZ
 nppg==
X-Gm-Message-State: APjAAAXGlHIjV0b0c/NSjrfhZhNMqnr8dHuZ1ppM3O8ZVFCYAZtxmniW
 jnMLDwqGp3EDhQAz/Jywv2C3ng==
X-Google-Smtp-Source: APXvYqxIdhhZ2JdruuDE0wVdfP3W+Q1cj5pKLGr8tiWIFLeuCifPv8CGC4QztbWIeJssrrKzi3Ds7A==
X-Received: by 2002:adf:c98f:: with SMTP id f15mr12552255wrh.279.1559462493346; 
 Sun, 02 Jun 2019 01:01:33 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net.
 [217.76.161.89])
 by smtp.gmail.com with ESMTPSA id y133sm4868583wmg.5.2019.06.02.01.01.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:01:32 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 2/5] dt-bindings: riscv: sifive: add YAML documentation for
 the SiFive FU540
Date: Sun,  2 Jun 2019 01:01:23 -0700
Message-Id: <20190602080126.31075-3-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190602080126.31075-1-paul.walmsley@sifive.com>
References: <20190602080126.31075-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_010134_671808_3DED2887 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
