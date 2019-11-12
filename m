Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BCCF8F6B
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 13:12:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/hjCqIPCTwxiJZ1ND5zttJA3LpJX9EcMtgvgz8IHM0=; b=dtITlx5XtE2bRH
	FdXz74dJiunl6WiSNS1fEmejiHe2IbUO6jTRYMJuhJFvQKJibMjGtD0ivLYMzleBnLCktKS0obPMm
	I4cuAHNboboffVBDUohsZoLa6ad2LYIBxwBvbBnKVDc7KgXkSQSrmYy4JhXPHYGzr82+G/WFFjiDz
	nLs+iXLJRePh4ZUKTBWCDRZW3jQeiKWo2XME1HCvVNEYNsQ4/dcRsPtSiOnaMIyWFGjdtIPpJUMSS
	gTNsibGMlzMqAG0DGqOsQF+lNivYF+Ui8AvGEcXSFxohWxnCJS2WUL396q12aeZWS7f4S6k6ozxiM
	nLHfflWnuQ5idvdjIqGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUV1o-0007ZV-At; Tue, 12 Nov 2019 12:12:12 +0000
Received: from mail-eopbgr700063.outbound.protection.outlook.com
 ([40.107.70.63] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUV1k-0007XZ-6r
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 12:12:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nO2ZES2f+AU7NfpL0Q849G7RfpsnTgOq3OYN9N7QLXVodh/gtD3WjibHSorsklQrTA7DyOmTE5jR8RWeeGFK930QbQRTT0KJCydNo9PHRlUiN+v6sJYqXRoCD0Zlqt+q40/xA/iIO/6YpQcO/2YqOa3T+4MO2K2nPKu0ebUNqqlkGB/P6qHVMnGxOkPiWwRYOBNGcAyc/u0MPG2kf61GE0DIgzxJnDxv+cPOuBR0omEhP8oA+w/geSW6lO06Q7qi4y8DTDV8Bp9BlnRbU2LmDwjNfOTzkO5l9DFizW3npEK/4te3vvtmN28MAR/z03Kh6vjUqyfbaeH5hRdXy/K+yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gxa/CBogdj8j8XuJbmYeGFh0eftJ0B6KQUSxLAa2K+w=;
 b=TGMZGy1Kjex2CU2qvn4xc3RTg6db3woq/lVw1/kWhyyPeahFZVrrZmY++bLVjX55veFGrH8AIi1H1Iykf7JdiXUUKRX3ii6JM3JySlPKWfF9KTgzXJmhM1XKLvOeZWM6yJXA93p/eO0zvXx8XCp27+S1n37xrcpjHkPqojfjy/g470WhUZrtJYWwSFbYCWL2WsacEL5CUXW1Vxt7a/U79bXZcrSMPBGbA/l/qDQak1jJx3lOP2myslenA3U0vbSByiooltbm3RWXVTjUe8tFqCLka854Xi3U1j0QeQGNzUHP/ZShrmhaLbQrIou3NyMnlKVVmRQk39kspe5y25rqVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gxa/CBogdj8j8XuJbmYeGFh0eftJ0B6KQUSxLAa2K+w=;
 b=Qg+c7Lyd1rQn8BTMpROSDJNmFi4f41tu5grxzhWHDW3JE5XRSfZqCKQYNcavMagtdyKi/2GqCila1B90ic/JGyYKSRdRg1VJEm6FUZmpZXs98Lb2Fa8bM2tBC9Qc6Z4lZ0azN42Hi7K7PCyeagywUEfmfeynuqE66YN/4CdqxDg=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3541.namprd13.prod.outlook.com (52.132.247.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.17; Tue, 12 Nov 2019 12:12:06 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2451.018; Tue, 12 Nov 2019
 12:12:06 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>
Subject: [PATCH 2/4] gpio: sifive: Add DT documentation for SiFive GPIO
Thread-Topic: [PATCH 2/4] gpio: sifive: Add DT documentation for SiFive GPIO
Thread-Index: AQHVmVJmBhj+jTok9UKZTpmxOnAggA==
Date: Tue, 12 Nov 2019 12:12:06 +0000
Message-ID: <1573560684-48104-3-git-send-email-yash.shah@sifive.com>
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0029.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5c::17) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 521c19bb-e2b3-4fde-f985-08d7676988d3
x-ms-traffictypediagnostic: CH2PR13MB3541:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3541C9AB783DE2E2C46155E98C770@CH2PR13MB3541.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(39840400004)(136003)(346002)(376002)(396003)(366004)(189003)(199004)(11346002)(186003)(14454004)(25786009)(486006)(107886003)(446003)(2616005)(476003)(66946007)(6116002)(3846002)(36756003)(478600001)(4326008)(7416002)(305945005)(2501003)(7736002)(2906002)(54906003)(110136005)(316002)(99286004)(6486002)(6512007)(44832011)(8676002)(14444005)(81166006)(6436002)(66066001)(76176011)(50226002)(81156014)(6636002)(8936002)(52116002)(5660300002)(26005)(386003)(6506007)(86362001)(102836004)(66556008)(66476007)(71200400001)(256004)(64756008)(71190400001)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3541;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d8zBPPRrEzdargIbduXTMNZmArqmUaV7eLwlrfA+FguVqBMxoojN4zUqbVxyJZwfERFlDu7B6inOk268JeCxiShCZn14zllDX0yQYnbj3DdZZ69oXvdHWGepfBz8QSF2Jc/Zkyk1VinbwMe5xRxRINaxbbcZmaDZSt8WIDc9fV5ZFDsBZ9qmRe2r2SPvKy0Eowl4pOvk3VWo5JU8QKE2p1H53Ml3GB4Mo6/eNQNRp7uWNUXfmFqeh/EbxaeYpw7VRIBbhp4wG4QRtDJrYse0ZPJ18aDLxDjf13WZS4a/RxuZPBfl9YmTyPi6nvNZh2KZMX4os4Mar7E3GVC/41lzKDfXg9RpSchhDeGAQre9xVZ3Myl/Ms5mkFnjWwAUgOiYLgoUng86zhmjUMqlNd0xQz5yWqB3giX3F7aKWHnUpRzgYSqVncamDAV+UgdqWxjr
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 521c19bb-e2b3-4fde-f985-08d7676988d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 12:12:06.3683 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vn7qWNhCF6sU4HBQkrW/HYXHhZZmvsKKy4Rshm9O1cF4knmQIhYbW7e7JxlqLrbEL4m9eDmnLxUVDSi99SQXfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3541
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_041208_250774_2ECFB16E 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.63 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

DT documentation for GPIO controller added.

Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
[Atish: Compatible string update]
Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 .../devicetree/bindings/gpio/gpio-sifive.txt       | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-sifive.txt

diff --git a/Documentation/devicetree/bindings/gpio/gpio-sifive.txt b/Documentation/devicetree/bindings/gpio/gpio-sifive.txt
new file mode 100644
index 0000000..d3416d5
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/gpio-sifive.txt
@@ -0,0 +1,33 @@
+SiFive GPIO controller bindings
+
+Required properties:
+- compatible: Should be "sifive,<chip>-gpio" and "sifive,gpio<version>".
+  Supported compatible strings are: "sifive,fu540-c000-gpio" for the SiFive
+  GPIO v0 as integrated onto the SiFive FU540 chip, and "sifive,gpio0" for the
+  SiFive GPIO v0 IP block with no chip integration tweaks.
+  Please refer to sifive-blocks-ip-versioning.txt for details.
+- reg: Physical base address and length of the controller's registers.
+- clocks: Should contain a clock identifier for the GPIO's parent clock.
+- #gpio-cells : Should be 2
+  - The first cell is the GPIO offset number.
+  - The second cell indicates the polarity of the GPIO
+- gpio-controller : Marks the device node as a GPIO controller.
+- interrupt-controller: Marks the device node as an interrupt controller.
+- #interrupt-cells : Should be 2.
+  - The first cell is the GPIO offset number within the GPIO controller.
+  - The second cell is the edge/level to use for interrupt generation.
+- interrupts: Specify the interrupts, one per GPIO
+
+Example:
+
+gpio: gpio@10060000 {
+	compatible = "sifive,fu540-c000-gpio","sifive,gpio0";
+	interrupt-parent = <&plic>;
+	interrupts = <7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22>;
+	reg = <0x0 0x10060000 0x0 0x1000>;
+	clocks = <&tlclk>;
+	gpio-controller;
+	#gpio-cells = <2>;
+	interrupt-controller;
+	#interrupt-cells = <2>;
+};
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
