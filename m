Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDD3322A6
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Jun 2019 10:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpNk2OBndVn7pqpWQ80y4cXEw/45bkWFJLxeVA99Ado=; b=jIHdowj1vNkucC
	nRUzeQmkwkNmN+B9/zskzcnoOsYdrevja4R0lt7qpiloxJdZzUq9jf+uITNkLQUmBWLEzC5un1KZM
	76ofzNU1iz1lqEYyFAp+JP1vIZ+iuzSmVA5aOJWBD3pQ3AXuNr9kHmydB0Z0C5ZXZ9gXCwBhXI5CZ
	5Tp2glLxa8hMp6/sEswaq0/s4h0+LFovagY0ztsu523FugikuF2wT+adHizAYyzGRl1TD2rrkSngE
	7oVQ5U313a61U+qg/Ynn2uLk7AzP4H+RJXZ8w281luKhcB4b6Blk2macJeuiPEd448e53SWNk/Ztf
	96RnESDLthB1W/XhBMoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLUV-0005Cp-E8; Sun, 02 Jun 2019 08:05:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLUO-00050p-Uv
 for linux-riscv@lists.infradead.org; Sun, 02 Jun 2019 08:05:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id f10so8524781wmb.1
 for <linux-riscv@lists.infradead.org>; Sun, 02 Jun 2019 01:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QmaqjHAcXNQW/qmNDVGvURxfu0pBpsioEB7U9HBButg=;
 b=c5AyJHJQQn97Ig9xKz8VpCWMryghMHrJJ5H1EhXWar+zpiY77POV6FQ/f0W8sQe2JJ
 euGG9MOHa9sn+CCDz8+DTOz1jBhPKK6oIP1h37OLQAJYYppanEEku4MHBIYPwKx+qM9U
 XHTaoe1VYB8AUcH4I+aGlsAMTVjY5Yfu6x9QA0Z4dr76lV3znrqxsyQIoMxbu4q1XJ24
 7UVQCB4ltN02xRMu0o6R40KsJwZlS7uAXHkh0fppA9y++QOt+q0dpcDASZH7MSqH9xlH
 iHb558RaW03WzD6ukiB54q+sd/SU4uARYNhCmqPcJFFYZiW43pFDmmIejBAttCUJY09y
 +5PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QmaqjHAcXNQW/qmNDVGvURxfu0pBpsioEB7U9HBButg=;
 b=CB8nFZGIxqP3BBxXaTKmWvPBmpLn6phxrp8RfdJkBpWE51roGJfATEb6VWJhxDfi6y
 RTkGP/QdfLuFxBhHMTGTooHkrX6DQrb6PizEHk0lIxBpI7wB42CV834HMgNla20C9ZzI
 qVHKukQHGnBl0nmsk4oPD3WhxgnSwgxy7/qvePSl/3CNnUnEWUT6hfKn1e0aanGBgbt1
 bQZyCahqoy7o6sppb3WYNi6XQAlHRzKfssg1jiWlZTipYzso7vbkMU92cvlkTeCCWkoe
 zN3AwEhVXMLie/ftej6Zhv3vuV7EUCA9SbHcDYH8f+SHjYNG9mECfozvtMiE+f6fvKuH
 46Mw==
X-Gm-Message-State: APjAAAV7mCiFShpiuYwAlQR6pV2/Z/MvaevHAeLTVRBtMXJ/UM4bDlp+
 hJpy5L+jP32tR0dEo4u4Dw81LQ==
X-Google-Smtp-Source: APXvYqyq4F0fqV/E/88Xn12tEzosdIbLtgNGXWvBnpTrS21K0Ra87wwMdUCctRh2AeEUjHEwTgjF9g==
X-Received: by 2002:a05:600c:2243:: with SMTP id
 a3mr10379885wmm.83.1559462711525; 
 Sun, 02 Jun 2019 01:05:11 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net.
 [217.76.161.89])
 by smtp.gmail.com with ESMTPSA id l190sm10186301wml.16.2019.06.02.01.05.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:05:11 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 5/5] riscv: dts: add initial board data for the SiFive
 HiFive Unleashed
Date: Sun,  2 Jun 2019 01:05:00 -0700
Message-Id: <20190602080500.31700-6-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190602080500.31700-1-paul.walmsley@sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_010513_061409_53095801 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Add initial board data for the SiFive HiFive Unleashed A00.

Currently the data populated in this DT file describes the board
DRAM configuration and the external clock sources that supply the
PRCI.

This third version incorporates changes based on more comments from
Rob Herring <robh+dt@kernel.org>.

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
 arch/riscv/boot/dts/sifive/Makefile           |  2 +
 .../boot/dts/sifive/hifive-unleashed-a00.dts  | 67 +++++++++++++++++++
 2 files changed, 69 insertions(+)
 create mode 100644 arch/riscv/boot/dts/sifive/Makefile
 create mode 100644 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts

diff --git a/arch/riscv/boot/dts/sifive/Makefile b/arch/riscv/boot/dts/sifive/Makefile
new file mode 100644
index 000000000000..baaeef9efdcb
--- /dev/null
+++ b/arch/riscv/boot/dts/sifive/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+dtb-y += hifive-unleashed-a00.dtb
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
new file mode 100644
index 000000000000..1de4ea1577d5
--- /dev/null
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/* Copyright (c) 2018-2019 SiFive, Inc */
+
+/dts-v1/;
+
+#include "fu540-c000.dtsi"
+
+/* Clock frequency (in Hz) of the PCB crystal for rtcclk */
+#define RTCCLK_FREQ		1000000
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <2>;
+	model = "SiFive HiFive Unleashed A00";
+	compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000";
+
+	chosen {
+	};
+
+	cpus {
+		timebase-frequency = <RTCCLK_FREQ>;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x0 0x80000000 0x2 0x00000000>;
+	};
+
+	soc {
+	};
+
+	hfclk: hfclk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <33333333>;
+		clock-output-names = "hfclk";
+	};
+
+	rtcclk: rtcclk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <RTCCLK_FREQ>;
+		clock-output-names = "rtcclk";
+	};
+};
+
+&qspi0 {
+	flash@0 {
+		compatible = "issi,is25wp256", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		m25p,fast-read;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
+	};
+};
+
+&qspi2 {
+	status = "okay";
+	mmc@0 {
+		compatible = "mmc-spi-slot";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+		voltage-ranges = <3300 3300>;
+		disable-wp;
+	};
+};
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
