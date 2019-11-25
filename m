Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9C8108892
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 06:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ShefsYA7SwVdAzHrKPys6T2nvcy9evdL6A5V00BQATQ=; b=Q8QZ1t/r6xvN/Y
	rPbS/Z2T0pE8I/A7Jjovu3Rly2b1xNx8d9ek19DW8V+OLHpT7lJDMgxnJoxFkELtuytF3X+UEVDWb
	vyoMuZYzRx6x8GpK/CoxhiDusGCYE1CQ12Vq811GORIWWVAdSpSAwT0mlB/eKAVF6KvOKrksZVhef
	/mLqHo3QZ7mx4wcQeQ1HS3fzFZo3kRkyoAJ3YUGAeKm7DhDsZzqIpQvG4jzFNP2Hyri6EPx7dZVXG
	0DMZXnIiv1noPb9lg/8SwSotGvQRBVIZJJBuaDLD1lT9j4WXO7BEr/WaJskdTvQb6pLRgyqUAJeEy
	UGk6s+nmptwCbUoKq9Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ7O8-0004uA-D5; Mon, 25 Nov 2019 05:58:20 +0000
Received: from mail-eopbgr690040.outbound.protection.outlook.com
 ([40.107.69.40] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ7O5-0004re-09
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 05:58:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JYFq5JbTDCHyis+9wSSaZJy4ZU/zAOwK/I7QLZcrdiQo9H2k0IDaanM0FMOVYEgs6hzdP/vaHvnNO2ZA+/eQ8GX25DcRPlaMRun2aRO5URJFyFZ7kynXv0pjFIWMu3tn3YC8Ow4nRTdc9Y107RQilLSLxCqw3kn+96s1wDU9eHNCFVd4spL+OaFLd9+OPgrBQP81zmol69JW7vvW+CgvaB+uFzJXZD5KlsZPCAGOlL4LGtc9uRyZ/nqI9lia27OJlWmBYr97K63II+E5tTRDyBVgcPkcIcL7d8XjvnGyTDTvsFz6M6MG5csEb6wUOz7kzWQbRh8WczQ8ovyRzl4o0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZtNaULOgo5BlFOvij4pkR5P0UvZDV4dwCoW0GuDIds=;
 b=VA6lJDylLgva3+3wd+ut4VO0KJphy6UlZm/T0vS79R4uKdggL6xLUYRD2Qokjnj4TMFpNlExBX4bUGt3J3TvbQbVH7XOSE9Pe4ArBgKXFy1FFilRY82E4npdkYvD6MuG0Gav9s4Of69U+xqHvLme8tAXk1kaIKeAGKub4c9CSYUig790LcQsI52Eh9fPEZ2y/A72eHCtl5qUQ5yzHghAI3W+2V5YbWfDC6j0cABur9veFE9fVRG0+84ZKcdW0EcUMX6K3AO4ImTywAndG2hVgsnT4UZf/BBPbiRSVEVJHMZ0irZucBwzcN7cZ5zYioF1N7OkF8RMx93SACQlGp5YBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZtNaULOgo5BlFOvij4pkR5P0UvZDV4dwCoW0GuDIds=;
 b=ICa0IoOOyyh6H4M2VPDqhPw6RHHGUGtVCyoDe1/EJQ9WVgQ3gIBhP1LhoVNQUpyAAy/FKaduY6Mx/FKOSH9FwPyyAJ+vMQGgHv09BHLgDLDhAyiAlyVVyPh56ShHODkrbLiBp82OJiG4ozIdAqEG+gR8fmeAm4EMPhRZ9Y/n538=
Received: from MN2PR13MB3374.namprd13.prod.outlook.com (10.255.236.83) by
 MN2PR13MB2622.namprd13.prod.outlook.com (20.178.254.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.10; Mon, 25 Nov 2019 05:58:15 +0000
Received: from MN2PR13MB3374.namprd13.prod.outlook.com
 ([fe80::4481:4560:7083:e4c6]) by MN2PR13MB3374.namprd13.prod.outlook.com
 ([fe80::4481:4560:7083:e4c6%7]) with mapi id 15.20.2495.014; Mon, 25 Nov 2019
 05:58:15 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>
Subject: [PATCH v3 6/6] riscv: dts: Add DT support for SiFive FU540 GPIO driver
Thread-Topic: [PATCH v3 6/6] riscv: dts: Add DT support for SiFive FU540 GPIO
 driver
Thread-Index: AQHVo1VTXl3rxbuniEimR8aPOgQ+5g==
Date: Mon, 25 Nov 2019 05:58:14 +0000
Message-ID: <1574661437-28486-7-git-send-email-yash.shah@sifive.com>
References: <1574661437-28486-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1574661437-28486-1-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0053.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::17) To MN2PR13MB3374.namprd13.prod.outlook.com
 (2603:10b6:208:162::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e81c5664-0656-47a0-4686-08d7716c760b
x-ms-traffictypediagnostic: MN2PR13MB2622:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR13MB2622121C16B8DB7EC6EE66E18C4A0@MN2PR13MB2622.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(136003)(376002)(346002)(366004)(396003)(39840400004)(189003)(199004)(186003)(6436002)(2906002)(316002)(14454004)(7416002)(54906003)(4326008)(11346002)(71190400001)(2616005)(50226002)(8936002)(110136005)(478600001)(6512007)(446003)(6116002)(8676002)(36756003)(3846002)(25786009)(81156014)(44832011)(305945005)(5660300002)(52116002)(14444005)(76176011)(256004)(26005)(81166006)(71200400001)(6506007)(386003)(2501003)(6636002)(66446008)(66556008)(86362001)(66946007)(102836004)(99286004)(6486002)(7736002)(107886003)(64756008)(66476007)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR13MB2622;
 H:MN2PR13MB3374.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UiuWTCshWODqjTORFHwC+pjEh7oTKFg7XnOZXXukgKT1mFXvBrg9IPq0977T3CHDZahqSU91U7OuIYWBjiVLEl0AmBMaQsqQ8zsoS2xjseKTsy9G24Mlr63dyZXoiLbqqWDCLa+GGrNQobwZS9Xh7l0YiWJQxA1/xQDuvxCEkpyNT2BsL/DZS5IcOAm2MWD2VIylSoGBtEOyQ4mo7uIBNth+iobMvQJrR/dm/4IXR2x0zGXmfGs3sb4oVsWR9LA8Q6d2omBTcjydgyK0jf0ylmiK6yoZSOxKMZpWy/pBU+DE58CFVKB4Ju9LXuQDj7fgCzHWF8A+zh69iy+ub4Fk+ATSh+j6FTRQjJ68cQMA0TzkshvAxsTroisxV54E/TxBiaq+r2jWsNMjIw58NBIO6EGniuCQRuoqQNrGFGF+XsnGV0mbQgnAiMVz5n+3eTDG
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e81c5664-0656-47a0-4686-08d7716c760b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 05:58:14.9440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TAuDYyuBcQ+z5C+g7GBROhuvGQTBhNPjtiz1XcnOWQ9PPQHpcriuehgIUUjBqf340ptR6mijKuUrEa/26tF3+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB2622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_215817_049538_0B514839 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "maz@kernel.org" <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>, Yash Shah <yash.shah@sifive.com>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the gpio DT node in SiFive FU540 soc-specific DT file.
Enable the gpio node in HiFive Unleashed board-specific DT file.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 14 +++++++++++++-
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  4 ++++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index afa43c7..2d7c284 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -246,6 +246,18 @@
 			#pwm-cells = <3>;
 			status = "disabled";
 		};
-
+		gpio: gpio@10060000 {
+			compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
+			interrupt-parent = <&plic0>;
+			interrupts = <7 8 9 10 11 12 13 14 15
+				      16 17 18 19 20 21 22>;
+			reg = <0x0 0x10060000 0x0 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 88cfcb9..609198c 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -94,3 +94,7 @@
 &pwm1 {
 	status = "okay";
 };
+
+&gpio {
+	status = "okay";
+};
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
