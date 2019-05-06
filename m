Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EB714A65
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 14:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vuCyWOt5ePw2FLMa+GDZsyZKVAQVt89IYH2JEQgC9zg=; b=BT17Q4grPxjSUb
	DKm0SsxP4Mq3Fdx6i7tE/9YeStvDLVFr7i8kCB3cSiZ+1IFE2W6FpvW8iB0YSncDlG4i0OMEjqOHb
	NS4m6E+hzYyy7SEsQxN0M9zg5Ccxw/KhojDML1uZQ+rZ7Ulc3tzf38pU2dfVj8ymvfHs7Zwh714Pg
	O7+1XEU5IPXzXQjP6zyArs9KVDD3u8zaNZtPTYETKgHzMejIg3IJ4CK7M8i5UR9bxoc0RWFzw5CV1
	Hc1OrmVYG0g/32Nnr+TXU0TQjDt1QWbLMPbxlJj5lbnefia1y0y2W0Dy1cVE31fOoNF9qp5DOjEzi
	yxNH382NsVfj+E0afgnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdBF-0002jo-9B; Mon, 06 May 2019 12:57:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNdBB-0002iy-Cl
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 12:57:14 +0000
Received: by mail-pl1-x644.google.com with SMTP id z8so6354314pln.4
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 05:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=UEMFuO/eOkfUtvyg6UNn5h6oENU1qFZHdaBFePFfFNQ=;
 b=AE1PXGLZJecXBOPRAwBuRMnblokvY4Q0jBYbOPQUH9ga6NW/3/iRhy1M0MHq3tbdCX
 uJsgHg/lIEiG1eqxsvpOAbsVrjZ4d1hiKTvsA8UuyG735bRdSD5cepmrQY0TJFFtEss0
 wq7sz+SKcZa17jAwJaviUSTfm9zOEbyO89WD2RPCMpoe6JGbRvL7PMlSyv7owG0Xdz61
 xJHhbCDWt6cYgJH2Om2zDxvsszmaxJ+vEwmAE/8S8yp5pJbAtvq4LzaSKyVeyIZsTkJx
 +5ewBdy38Br3/bkNF36vOwS7Calww1lDF8AYQP9HBkuEOwP44x1agCGai3klUr1BMjjN
 joCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=UEMFuO/eOkfUtvyg6UNn5h6oENU1qFZHdaBFePFfFNQ=;
 b=O2Li2V0/aZ2lF11nsGESIOpQ/eE+3s/JA21WytUnoO0ipd6U3elMGiku+NRuHoKwn+
 J2UZiDjBP9B1CXgo7/N+18yUannJBQXk0OvGzXhZyntYZGrQ3pfQYP9a/0lXWnXvNSX9
 gPYS794+Kpgqdxu+oglbZ/HuSj9WBlLCBTAd3+yY3qCl0fmqvrlXxWMPitixvEW+Pl5q
 5OHIFNcHDHaksTfA9JI5f0TixNP2SMfTESgE1rOpYklvF32b6UWNuOQUdR4i/kYnCqZz
 JFlLfMh6QMZY1rw1B/bv4QdYZWxWCHVH0PerIr3NSO47M+eKtPNVbeKCwHvSwG4AbIgk
 dOZg==
X-Gm-Message-State: APjAAAUFJWiMQFKvHXat2zL07EzAXFFrxYSDXJPsgzE93iuNNgXADLNg
 Lo71sMatCc9rA8lugU9Zc4GPkIgKOAZDMA==
X-Google-Smtp-Source: APXvYqwOMXzzUAwPKPtRF+CBlMJBVPfD958G5aEnOG3pjXTVVfmOZ08lmJe4WL3RA/tBI9KTIOPqug==
X-Received: by 2002:a17:902:a503:: with SMTP id
 s3mr31394556plq.16.1557147432852; 
 Mon, 06 May 2019 05:57:12 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id p81sm18031132pfa.26.2019.05.06.05.57.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 05:57:12 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, palmer@sifive.com,
 paul.walmsley@sifive.com, sagar.kadam@sifive.com, peter@korsgaard.com,
 andrew@lunn.ch, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 v1 1/3] dt-bindings: i2c: add documentation for adding
 SiFive I2C driver
Date: Mon,  6 May 2019 18:23:58 +0530
Message-Id: <1557147240-29551-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
References: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_055713_437612_C9F591E3 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add DT binding for OpenCore's based i2c device as found in
FU540 Chipset on HiFive Unleashed Platform (Rev A00).

The doc explains, how to add DT support for I2C devices.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 .../devicetree/bindings/i2c/i2c-sifive.txt         | 29 ++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-sifive.txt

diff --git a/Documentation/devicetree/bindings/i2c/i2c-sifive.txt b/Documentation/devicetree/bindings/i2c/i2c-sifive.txt
new file mode 100644
index 0000000..2a0fc9b
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/i2c-sifive.txt
@@ -0,0 +1,29 @@
+SiFive I2C controller Device Tree Bindings
+-------------------------------------------------
+
+Required properties:
+
+- compatible		: Should be "sifive,<chipset>-i2c" for a particular chip or
+			  "sifive,i2c<ver>" for a general I2C block.
+			  For FU540 chipset the supported compatible string is "sifive,fu540-c000-i2c".
+- reg			: Physical base address and size of I2C registers map.
+- reg-names		: Should contain the resource reg names.
+- clocks		: Must reference the frequency given to the controller.
+- #address-cells	: Must be '1'.
+- #size-cells		: Must be '0'.
+- clock-frequency	: desired I2C bus clock frequency.
+
+Example:
+	i2c@10030000 {
+			compatible = "sifive,i2c0","sifive,fu540-c000-i2c";
+			reg = <0x0 0x10030000 0x0 0x1000>;
+			reg-names = "i2c-control";
+			clocks = <&tlclk>;
+			clock-frequency = <100000>;
+
+			reg-shift = <2>;
+			reg-io-width = <1>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+	};
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
