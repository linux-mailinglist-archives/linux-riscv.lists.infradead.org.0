Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F4E52827
	for <lists+linux-riscv@lfdr.de>; Tue, 25 Jun 2019 11:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=amhbhXf0mNUiiJWBUGS2HLTAGM5dYXrhPoww8GOklfI=; b=NM2
	8pKJwBu5DHoD0WR4wvhg4/n6r44dZMWJhwwnlJrIVD4p1MXTfj+QG274CFtFgAEMoQQOLtEX3++g/
	fDGb0BN9DDxDCtI2FjnmKt4gsXbLPV5rmVMQEddiykvXqeI8KH5Akh76UWY5CIPTpzx20QOrp6Hk1
	OVMmkTW1ZzYUhBzxL1Xu9Bpks3RsYEmakCmP1oL9DyV0oTZGD3I0MWewaafD9A0rpAF3Cuvds69Au
	mvBn9ky+3JYgBIlpWM1wCLkbaiUA7Dan3QTP4TQNcotj9KAocwINo1toa8Ili8G8iNuAqg2WEtjKy
	p8TZpCeHhB+8gdOYnJgwTIh2eYQZKZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhoB-0002Kc-Jc; Tue, 25 Jun 2019 09:32:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfho6-0002K9-8D
 for linux-riscv@lists.infradead.org; Tue, 25 Jun 2019 09:32:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id j2so9178828pfe.6
 for <linux-riscv@lists.infradead.org>; Tue, 25 Jun 2019 02:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=rpStZmf35igMxqzLeEFybCYnhueTgWtLq21mpmx87uQ=;
 b=lkRwaw1IUMjbuUdyCAHnbKBURaBkrUi37P3tS5gdfFTLedE3E79iT3ke2SHKBg9PZm
 uweWcx3f9W4ua0SkJy+FupZMmVyBSYFKPFi9TcCe0MkoPpHZbR5dmglZFXbAhYkSrmnb
 BHcQbrIRPav9Z2p0iJVqRb4I77GZkvtwdUJa+IrkhY/+rI/YTiDQRIydfn+QT2sa4JZc
 Dk9+PbIY9ZlIFXzHVy8A6FjkvRx+e3nPJdDfvuVSdtFy31mZ52P7vlfrcEy3LJP1+C/6
 Qpmw3cWv3L4O+jzdx8M0fqy32+Glba3bvb7tPgX4rwZktSZTJVoY7oGY3jC81O9tQTJP
 TJLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rpStZmf35igMxqzLeEFybCYnhueTgWtLq21mpmx87uQ=;
 b=DdGKoYpaZGpRoYMUMO4MQFxMk61sCbGDkGnUGO1Z00jXNxwrQSvZKf+Cnhm+dYcWmk
 wxFZM0U3rf7F9/Hn4n1BCHg4BRQtcElwKKEERSDcCv5Ovktjy28ZAakq5XlfKONqkjX1
 cchRbmWdMdl3ZNaMJEe6h9hKfgJTdhqMZg+QIzDSbhylPcAXNfODk0SrSUnFSmUbVs5L
 kFhNT4aefy2flsiwixMci34cjoAUY04ZJS4I1ANHO+NZbvKYmQe2wsNnxpsj7ex8IUe6
 LuGjMLlIbhyvEU+seMJNOXhlYZx0VhLeSYU/nKh8G4fptaUCAGmeAx46rW0yUoKJbplG
 AeyQ==
X-Gm-Message-State: APjAAAUTZERYhiUkR669ZVq/pxoIYqL9Zkfg0zsnHQSfssVhyUzxp7SS
 BYkYy6F1omiHipEsdhph/4HPaQ==
X-Google-Smtp-Source: APXvYqzbAg5MBG2Xe6ojTiLwa+O3LoQWCgWKX7EW8u/iOuynr270+kNo1TQksKvvhwhqxIO76r/FpQ==
X-Received: by 2002:a63:d218:: with SMTP id a24mr38650537pgg.419.1561455125207; 
 Tue, 25 Jun 2019 02:32:05 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id q19sm16634877pfc.62.2019.06.25.02.32.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 02:32:04 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org, paul.walmsley@sifive.com, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: dts: Re-organize the DT nodes
Date: Tue, 25 Jun 2019 15:01:31 +0530
Message-Id: <1561455091-29488-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_023206_318182_4CD54A77 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, palmer@sifive.com, aou@eecs.berkeley.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As per the convention for any SOC device with external connection,
define only device DT node in SOC DTSi file with status = "disabled"
and enable device in Board DTS file with status = "okay"

Reported-by: Anup Patel <anup@brainfault.org>
Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          |  6 ++++++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 13 +++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 4e8fbde..cc73522 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -177,6 +177,7 @@
 			interrupt-parent = <&plic0>;
 			interrupts = <4>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
 		};
 		uart1: serial@10011000 {
 			compatible = "sifive,fu540-c000-uart", "sifive,uart0";
@@ -184,6 +185,7 @@
 			interrupt-parent = <&plic0>;
 			interrupts = <5>;
 			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
 		};
 		i2c0: i2c@10030000 {
 			compatible = "sifive,fu540-c000-i2c", "sifive,i2c0";
@@ -195,6 +197,7 @@
 			reg-io-width = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			status = "disabled";
 		};
 		qspi0: spi@10040000 {
 			compatible = "sifive,fu540-c000-spi", "sifive,spi0";
@@ -205,6 +208,7 @@
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			status = "disabled";
 		};
 		qspi1: spi@10041000 {
 			compatible = "sifive,fu540-c000-spi", "sifive,spi0";
@@ -215,6 +219,7 @@
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			status = "disabled";
 		};
 		qspi2: spi@10050000 {
 			compatible = "sifive,fu540-c000-spi", "sifive,spi0";
@@ -224,6 +229,7 @@
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			status = "disabled";
 		};
 	};
 };
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 4da8870..0b55c53 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -42,7 +42,20 @@
 	};
 };
 
+&uart0 {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+};
+
 &qspi0 {
+	status = "okay";
 	flash@0 {
 		compatible = "issi,is25wp256", "jedec,spi-nor";
 		reg = <0>;
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
