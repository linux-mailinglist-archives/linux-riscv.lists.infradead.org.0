Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0B41034B4
	for <lists+linux-riscv@lfdr.de>; Wed, 20 Nov 2019 07:59:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ora92hci7bHDx44Srz1MvNVrMVMrVzE+txr1Ltkvcro=; b=soce0jirvLZ2lY
	nQaHCMeysJbxeSTtACI1YZAGkGzZRLhMCrkxzrTEkzUIH9yofMPSOQW7TT+KRdb8xS4g4qjJFWv3E
	WKDg6dmrbXqthb3Ne6Je4rgxg2/QbI+fskuw4Gvk4h8PhvL7k2Qkrp9z/6KfsqBMs/aiGd+B65QYh
	ofboG7z9Uy+h3Vk5jALYDb6GPiztStEApAdUTf9YBNYv+2EQXi7jv1t0eoFJxkpeFc8RuZ3WIPYj4
	IoTFBgOSA+d/vgEpWiZgPjj+BrFaxTwuAi4Jdy3qMpdxVTxmNn2zPtnHXNqoNB016yMvLQbHTo8jw
	a3otzzh94JLK1EHeiFXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJxk-00046j-7G; Wed, 20 Nov 2019 06:59:40 +0000
Received: from mail-eopbgr740040.outbound.protection.outlook.com
 ([40.107.74.40] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJxg-00045U-UE
 for linux-riscv@lists.infradead.org; Wed, 20 Nov 2019 06:59:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lQFOUUeT2UpBIbQI0ZAeMyREofNxJ1IhKZgvPDmJ8pSNj+ngT9RedFBn8ATeHAlJnMWBJKxWwUneHTVrDgRVBGv2/FTMyyayaek5gLuAMwRbHYmgoc8Kt2iL1T9kra08RubyqHwnZj8BhwN0w/v40IzQJ0l04sV2MjsOjRj8eeIhFo2vlPJ7WkkE20IueCt1DeveutMa63lCegAwyYoClFxPTykFCSVZsQxvx1siZ/6dbyZkPGZdYNMgQzbwoNwhpDfth3yD4BGDeWxLEpKy6sMjwgBfiDIsAn2VgxCD8037MOQ84ANyFlLCtWweEu98ZgH++TIh0mpvC7MfXVjlQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOOah1TvueSfyqsytPOgIXbJSpfUJF94Jx72tziVDQI=;
 b=WP85ZWBjNKz9cXneGiSxHsVSu4Wo5ke2P4fqxb4BRaDIfgpd4RY37jJRFxFqrzHU5xWduFFlmjSVSlpLlCGM7T3XkJFxWT2BT4GHKu5VtYHIzwxT0SlU4JfUXCrLcC/H0YMF0WIFFvtJfmNnQq14oG0lac80HO0qprJKgxajBxPQrgjj2QgqTRb8xOCo1px6ImlbiJAOp5VMx0NxxFjGLDvfd+Sz6wvwNlQen2f1co16ONHCjTRHoiQFu7N7Sc1OsGDuNsqVDIV4RQv33z99c8yBne8cQkA5rTfuBPzkgRzTBEPLtQnZ9IoqGZVNcD80AG2+07rAz2ZnUT9vpLn57w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOOah1TvueSfyqsytPOgIXbJSpfUJF94Jx72tziVDQI=;
 b=QUZULLmt03fRxKA7z87iEIE21fuC86QUsUz7J559hHEfFi12XVso69bhm1p53+ncmqFu5HENgiPmPStIf6bY0ouw1pwz6jz6IeGfb59MZr/PyHVvHbwPRU9uoBkBcHTkXfGH3Zqd3sFEG8g5cdZYT4l+ICY4YeOKOK+CKzT8h68=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3415.namprd13.prod.outlook.com (52.132.246.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.8; Wed, 20 Nov 2019 06:59:35 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2474.015; Wed, 20 Nov 2019
 06:59:35 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>
Subject: [PATCH v2 3/5] gpio: sifive: Add DT documentation for SiFive GPIO
Thread-Topic: [PATCH v2 3/5] gpio: sifive: Add DT documentation for SiFive GPIO
Thread-Index: AQHVn3ARzeUqKpAPb0atlM8yq0m+pw==
Date: Wed, 20 Nov 2019 06:59:35 +0000
Message-ID: <1574233128-28114-4-git-send-email-yash.shah@sifive.com>
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
x-ms-office365-filtering-correlation-id: b177c5ad-390b-41b5-555e-08d76d873384
x-ms-traffictypediagnostic: CH2PR13MB3415:
x-ms-exchange-purlcount: 2
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3415D80339FF6293A083918D8C4F0@CH2PR13MB3415.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(39840400004)(376002)(366004)(136003)(396003)(346002)(199004)(189003)(486006)(71200400001)(316002)(8676002)(6636002)(71190400001)(966005)(7416002)(8936002)(25786009)(99286004)(2906002)(54906003)(52116002)(76176011)(50226002)(2501003)(478600001)(110136005)(66066001)(86362001)(36756003)(81156014)(81166006)(386003)(6506007)(26005)(4326008)(102836004)(6306002)(5660300002)(6512007)(476003)(446003)(11346002)(6486002)(186003)(2616005)(6116002)(3846002)(7736002)(305945005)(6436002)(66476007)(66446008)(66946007)(66556008)(14444005)(44832011)(64756008)(107886003)(256004)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3415;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z8G5sJM9WZaKOpPhVFWCefRcCXqnX9OZRbC4qpmOrnj6rIjN/1nO6+FwBH3wfaIXTwSmF2rD/Zw0IS92NQoYaajq5+zIGjbSUYDPAgSlneBYpwDYSpvkFRDQG61XUehRr2apq2zS8hiDyg/j1juY/xnGTqq/Rkg4XT4xMcf/u8tBqqSSAxrlIEX0BTTG0u6WdOZO3S2RZeQ9EFZ7yrKohWR10QYVr/dJglnIPl9gj+pzGBI3BntSVlyPOAWCkIR3iQG0mquDZaVYDlMYH0I2cG2D6DuRptXW9X7ZtIh/BpOfE9jo/v+qyWHgT6fq42ztDB+KGITfpxPIHvQ+Z4lgCSvlLsi/tAcA5Zg0NnK6SrU5hoG2Zqsif1Mpe+LgOAq8cqw5qafBsbMsFnlj7LNAjkH8D7wBQ/GOjk+ATYXsBw0AMVXm8hy2vsxGjYwRbW1AcDMYW2BQf9YcIC9LnR5ol1gSNa6mLYy+C80Fi68Ws+w=
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b177c5ad-390b-41b5-555e-08d76d873384
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 06:59:35.1326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UcLxIdPglgSM9rYpuuU/QLfyKY1/ojFU7cgeFOqhAqXcuUUL5qcSgTJXfCaLdaXNncBLBZNV3CZAURite1p3lA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_225936_978434_6554EC8E 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.40 listed in list.dnswl.org]
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

DT json-schema for GPIO controller added.

Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
[Atish: Compatible string update]
Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 .../devicetree/bindings/gpio/gpio-sifive.yaml      | 69 ++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-sifive.yaml

diff --git a/Documentation/devicetree/bindings/gpio/gpio-sifive.yaml b/Documentation/devicetree/bindings/gpio/gpio-sifive.yaml
new file mode 100644
index 0000000..49214bb
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/gpio-sifive.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/gpio-sifive.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive GPIO controller
+
+maintainers:
+  - Yash Shah <yash.shah@sifive.com>
+  - Paul Walmsley <paul.walmsley@sifive.com>
+
+properties:
+  compatible:
+    items:
+      - const: sifive,fu540-c000-gpio
+      - const: sifive,gpio0
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description:
+      interrupt mapping one per GPIO. Maximum 16 GPIOs.
+    maxItems: 1
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+  clocks:
+    maxItems: 1
+
+  clock-names: true
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-controller: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - "#interrupt-cells"
+  - clocks
+  - "#gpio-cells"
+  - gpio-controller
+
+additionalProperties: false
+
+examples:
+  - |
+      #include <dt-bindings/clock/sifive-fu540-prci.h>
+      gpio@10060000 {
+        compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
+        interrupt-parent = <&plic>;
+        interrupts = <7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22>;
+        reg = <0x0 0x10060000 0x0 0x1000>;
+        clocks = <&tlclk PRCI_CLK_TLCLK>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+      };
+
+...
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
