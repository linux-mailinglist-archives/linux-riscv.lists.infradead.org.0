Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C46B1034B7
	for <lists+linux-riscv@lfdr.de>; Wed, 20 Nov 2019 08:00:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ShefsYA7SwVdAzHrKPys6T2nvcy9evdL6A5V00BQATQ=; b=UBS7U++LqSpycz
	iNdfR5ITMSeXRwXCFyv+kgBlrGUdb++6pUIWb1fYQOcznFNaIMBc8yuVRaHLfw+0cwN0HntvjM9rf
	CxpFMK2UQJ36724P/AU+8N/jZWUsvbr/S23EhHZm/n40P1QC2XceeOziX4ALH9TIRx11EXe2NP59D
	wkaYOK1RmoelQQMJ9Ag3g7QtB+FbZZ0IffMcgmqd8QwQTS0owz1jlMktvxB9CIvzmj7rmlxTzsoWo
	pK8XrszGFR+KUzT0jG9ZiwG3jnBRloSkSSWpzFg8Ta1O6L4OeNRYE+oG3NSGsGOmYrUyQcuTb1XiA
	YISY7T067+3fU6lzzyxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJy3-0004FE-Jk; Wed, 20 Nov 2019 06:59:59 +0000
Received: from mail-eopbgr740071.outbound.protection.outlook.com
 ([40.107.74.71] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJy0-0004Eg-Hz
 for linux-riscv@lists.infradead.org; Wed, 20 Nov 2019 06:59:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QudJtLN5gZkL0Q0uYE88gbELJwtZd2Lq0YDHcd9BB8SbXxGwAqB6c3LqEyYfzlxur0HzFDWHTZOtKblgUOlOfcK57U4XSfod4b2De9KnBJcT0qbAH522rBCWg9q6bXo2bonCz0pNnTSn13fdvYdKTB/zv/aAVefYdNwJbZxUnwzIaUYQsBRnjdboV0iY3wQV87U+jeMtDdVDIJYPp6amm+dV3gA+aP5WgB5b2gQ7ET4xav+cQz84eVJCoywWYI1lTzHJSTiX+3Z/gW3JU/OHK35slOqzXR6eIzjB13GviGT9InOcwaDH5vdOMjDeKPOnmiIbsTt/l9j8Sw7BHGHnag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZtNaULOgo5BlFOvij4pkR5P0UvZDV4dwCoW0GuDIds=;
 b=LhDPPfaH4YSezCfTnlfV1UnRgpj9keXsVJ6Hr2Qz77/w0c6cliYtURBZM60RTR8VEXAx5VcfRDbVXnQ1fLqf/sQcMr9Kd6a/jC8YlA7MZd8YZfvC2cV2TMvpns6jaA42Pz9RrJAyUqIRFYEe88BD6w/C2NDEdTZKlPQdXk05wc5uVzPXla6iPPCNd0uFd/G4P6LxSRT64T4biAgAStROHZ7bScptdfunyDVdoD4rKdgyD5ERMmLQXEDO9KS1clLwlCflULkSow27icVZA8f84JEovGIGXR2zSUAIYpwCwmAB0rwJPgfrJKmysM42u6NvT4QkO/KmlG3GpHOF5el1QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZtNaULOgo5BlFOvij4pkR5P0UvZDV4dwCoW0GuDIds=;
 b=kbYDpGR2mYzCJMx0dHws+iexY+MThCW+0Zsb9MXLmYdwDr55/pATUjgkt81AnonPr6IsX4xLO1L1mbvSt6MpKUm7kh0asKQY71j8R93mZhNl49kUM/QPRGTUvDYm+fF3mweYEHMn1sbOxmUNAG1Pe7+YKFDn6e11gQKsDFBgzjU=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3415.namprd13.prod.outlook.com (52.132.246.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.8; Wed, 20 Nov 2019 06:59:54 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2474.015; Wed, 20 Nov 2019
 06:59:54 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>
Subject: [PATCH v2 5/5] riscv: dts: Add DT support for SiFive FU540 GPIO driver
Thread-Topic: [PATCH v2 5/5] riscv: dts: Add DT support for SiFive FU540 GPIO
 driver
Thread-Index: AQHVn3AcQeUBZ0Ytu0eVtL/jFebGtg==
Date: Wed, 20 Nov 2019 06:59:54 +0000
Message-ID: <1574233128-28114-6-git-send-email-yash.shah@sifive.com>
References: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0208.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::28) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f318d4e-c5fb-413e-ac20-08d76d873f38
x-ms-traffictypediagnostic: CH2PR13MB3415:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3415B8848CE35DC8EC7A75458C4F0@CH2PR13MB3415.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(39850400004)(376002)(366004)(136003)(396003)(346002)(199004)(189003)(486006)(71200400001)(316002)(8676002)(6636002)(71190400001)(7416002)(8936002)(25786009)(99286004)(2906002)(54906003)(52116002)(76176011)(50226002)(2501003)(478600001)(110136005)(66066001)(86362001)(36756003)(81156014)(81166006)(386003)(6506007)(26005)(4326008)(102836004)(5660300002)(6512007)(476003)(446003)(11346002)(6486002)(186003)(2616005)(6116002)(3846002)(7736002)(305945005)(6436002)(66476007)(66446008)(66946007)(66556008)(14444005)(44832011)(64756008)(107886003)(256004)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3415;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fvvcx2Ee1oXlgGkchxJfkVUnrIEuXl82YPIZVKWU+0ssqbhZuzIr5dF2/eAg02IpDIZpZdkn3FS4bu5jvLrdH0f44yQXVH6Y+jjVn/VeOd1iySg25Y6yA/4TYzz9x3MhAvg6gUj9W7VOAB7fv1G1JJaSbiQYJOYweeauVpfSb+YLXzm9j/hZ2TbfhQEpl/laZzUeeEDOobWf6yOUonhjCg49XUcEHjqLiuqTGmpoxtSUdfC0oxCej8FW+UCiW5EhoL8wpUn5HG+c/9TRx7AmG9fNkAcJQRC3c5QKPhFdihZpbLs4O4l2Zzct7chpXg1ll9+iK26wlY3ymTDWT2CQoRBAGWr3M9VjqwW0c4jY7yYIM59xjC7k4aHjdLyAV85cQl6mjaklT8xuGSPGuMX5FG85cZrXEiiOiYRie0uE5Y9fKIKVrRne1m2tFtyV86jc
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f318d4e-c5fb-413e-ac20-08d76d873f38
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 06:59:54.7814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RVZ7l/Xxvn6s7QRaWf3FMKOVCS9bzXtpmmTGRpSS8WvAOYwJYSYkuD276z0SPm3fw9MNzZaEYS/o7QzBguFNkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_225956_598952_82EED530 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
