Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B841034B2
	for <lists+linux-riscv@lfdr.de>; Wed, 20 Nov 2019 07:59:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZoLb+M1oa1ZvRWTQN5lWJdlvbimQ3KHETgP5f6jEDI=; b=BriAJTq0/e6YcH
	kqH81aVRDQGx4oNgrQJaV21PPf6D4i93pENPfArrckNCQYPzCC+caN/C0g/wA4+7PWEzHp/YyUYLX
	0cczFr56/vXuM+FYerxWE/BV8UkME8CYj/lkSOSSk9raqA9lOs4DDitH/H/kvVlnROAPmUxN7pDxF
	VWYfUoluL3n7DW1uVhtXUpfSxarVZ5lOngqjCrb/0SgKEfXphHs64Lue5dWJPVN5CjfsTwykJnUY8
	bVF/gx294l9ZW+Aypm1C+UWM9C9E8W8laViyFAOI9Y0DWNyo56qkcpSC/SA1uNEpP122KD1EmM6JH
	HjpteDP4/RiBIJd+ah9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJxd-000423-4L; Wed, 20 Nov 2019 06:59:33 +0000
Received: from mail-eopbgr740059.outbound.protection.outlook.com
 ([40.107.74.59] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJxa-00040W-BU
 for linux-riscv@lists.infradead.org; Wed, 20 Nov 2019 06:59:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XPhd5IguzPmM1ROZIyirRKxgR7xbIHYtV+wmeC89A5LzVKMGNQcYmWvDtFKkkfAlyhJrT1AtPO9tRNFLjA+lq6hcusS00Tjz7T+X806pJqmllnLuhp/egsZ5/BoEvEaDc55NuUQIBD2ZHZ9jt8I2bnS6+jLaaiCUvhByArdV6WmIEE64jukXHHyndYB3PfcEIsib+4AmjD7Bnsf83/b/8QnWMZMXwmTZzh3EyxoZlvBiw+DO7GLxhJaYY7zyBb6ucq6U6qi3s7IhtXdZEjle0oSkhk54KmWsRZtB8amYxN35EECgtRrL9tvEKet1wughFSY53fvvAqAvw1fKdGUIaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EdFG3ywbIWl8L8/pPBsiTq0inxwz+ga2fa1CTBFhD7Q=;
 b=I1I5HQrr2CXHRM0IHtZi1YCjvw5B9KQ11F4i8PwelKs4I55DGe9d4U42VWfCYLBA9HxKC8cp9WcW2E+Gqil9n3ZbQ+2arT65bSz2H4eDaCTibxq5QAO1MLSsE3yNnF9KnUp8Xw/JycfXJesYi4zarix5j+nRh1TNKfCY4p7YEF6uqodAJhsFsoPrbJKYZTDyhGCBN4ILUwCMNAk3mZZWD+5oMuH/gmrRR6JURYnhGCC9V9X3nDn4o5L9SC50yu61jfQLXtlarQN5zvdDxsbOPZN5xggNOeipNFiPzvVotLCSamqvafm7RXFBcVlKK68g3/VLJi8B7eHsxj+mb678Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EdFG3ywbIWl8L8/pPBsiTq0inxwz+ga2fa1CTBFhD7Q=;
 b=dMK+uuUebl5piTtlFNAIRMLptih3NYWT7ShbAAe09fk8Pbfz2o8jqMN4RKcfop74FT3ITEEEdX6h3w9puM3IJGvZO0vEfPOIgXwG6Fa3EBoyrM2jRTwwkfDp7iAf07YeX3IW5MYVH+rBfK+K9iN0KZIfYgzCkosh9lZoZPUMkXQ=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3415.namprd13.prod.outlook.com (52.132.246.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.8; Wed, 20 Nov 2019 06:59:28 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2474.015; Wed, 20 Nov 2019
 06:59:28 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>
Subject: [PATCH v2 2/5] irqchip: sifive: Support hierarchy irq domain
Thread-Topic: [PATCH v2 2/5] irqchip: sifive: Support hierarchy irq domain
Thread-Index: AQHVn3ANvAc498he10C+K+BReEuyxA==
Date: Wed, 20 Nov 2019 06:59:28 +0000
Message-ID: <1574233128-28114-3-git-send-email-yash.shah@sifive.com>
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
x-ms-office365-filtering-correlation-id: 789e57ac-365a-4bad-51ab-08d76d872f55
x-ms-traffictypediagnostic: CH2PR13MB3415:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3415972E84CDF892E9586FD18C4F0@CH2PR13MB3415.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39840400004)(376002)(366004)(136003)(396003)(346002)(199004)(189003)(486006)(71200400001)(316002)(8676002)(6636002)(71190400001)(7416002)(8936002)(25786009)(99286004)(2906002)(54906003)(52116002)(76176011)(50226002)(2501003)(478600001)(110136005)(66066001)(86362001)(36756003)(81156014)(81166006)(386003)(6506007)(26005)(4326008)(102836004)(5660300002)(6512007)(476003)(446003)(11346002)(6486002)(186003)(2616005)(6116002)(3846002)(7736002)(305945005)(6436002)(66476007)(66446008)(66946007)(66556008)(44832011)(64756008)(107886003)(256004)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3415;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hnhu0R/zc1evdBv3x+j/MfQUC1Co35W6xtBVdfuTBUZn5Q1E+47vGHsw2+QgI6RYeTOd32MOsWp1fLlGMStqyhaqb/YGx6pPM4dsSuHiQtsdYhW2xFLyr6dSCvaVfgY1IbF00divfO0pu5opLoRZvF3UM+Y+Wif2+H+hedoGOLEF4d9K6de7gAuE/Np10a1lvsZ0aDdZuBC8zp4akmYtKq+He3rf2ygDXk9XhlqhUPL2mkRhWygbaW4LVuL4cvpK2D4lBRwFPW0Rv/0I8g1wYt8+fr/QxBqZWDPk0YyXI+W27gWx6UiPseVoFI2/wrAMEE7mWZvurx5kzaTSmGJvowic4mMBR6+kFev3R2kQmoq8ZpsuG9JlPyfCsB80zYWB8kskOlSsn1zvMwLQiaSrQmBNb7i5pRduYlHB92gezT+LczFZYcgql9OZFMWvBcyZ
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 789e57ac-365a-4bad-51ab-08d76d872f55
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 06:59:28.1405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tYSXgLfmitjcQNMWvdpzCI7nG7WszDmn7+ygAZa2DdVRnPr+nAFQgmPH3TF6hZRjZ/mAbppJA0gaGrIRvhxvWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_225930_400268_ED729BA2 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.59 listed in list.dnswl.org]
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

Add support for hierarchy irq domains. This is needed as pre-requisite for
gpio-sifive driver.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 drivers/irqchip/Kconfig           |  1 +
 drivers/irqchip/irq-sifive-plic.c | 30 ++++++++++++++++++++++++++----
 2 files changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index ccbb897..a398552 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -488,6 +488,7 @@ endmenu
 config SIFIVE_PLIC
 	bool "SiFive Platform-Level Interrupt Controller"
 	depends on RISCV
+	select IRQ_DOMAIN_HIERARCHY
 	help
 	   This enables support for the PLIC chip found in SiFive (and
 	   potentially other) RISC-V systems.  The PLIC controls devices
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 7d0a12f..750e366 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -154,15 +154,37 @@ static struct irq_chip plic_chip = {
 static int plic_irqdomain_map(struct irq_domain *d, unsigned int irq,
 			      irq_hw_number_t hwirq)
 {
-	irq_set_chip_and_handler(irq, &plic_chip, handle_fasteoi_irq);
-	irq_set_chip_data(irq, NULL);
+	irq_domain_set_info(d, irq, hwirq, &plic_chip, d->host_data,
+			    handle_fasteoi_irq, NULL, NULL);
 	irq_set_noprobe(irq);
 	return 0;
 }
 
+static int plic_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
+				 unsigned int nr_irqs, void *arg)
+{
+	int i, ret;
+	irq_hw_number_t hwirq;
+	unsigned int type = IRQ_TYPE_NONE;
+	struct irq_fwspec *fwspec = arg;
+
+	ret = irq_domain_translate_onecell(domain, fwspec, &hwirq, &type);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < nr_irqs; i++) {
+		ret = plic_irqdomain_map(domain, virq + i, hwirq + i);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static const struct irq_domain_ops plic_irqdomain_ops = {
-	.map		= plic_irqdomain_map,
-	.xlate		= irq_domain_xlate_onecell,
+	.translate	= irq_domain_translate_onecell,
+	.alloc		= plic_irq_domain_alloc,
+	.free		= irq_domain_free_irqs_top,
 };
 
 static struct irq_domain *plic_irqdomain;
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
