Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B0910887B
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 06:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xzcikmj8K5qGQpd4xNgytcwgJU5K2HrzoD0DLEnBtmM=; b=A5F3sT2SQ+CTy4
	kc9LKoCiiFWAD3zm+gyr2Ya4mq+a0NN722CxMvCZRSiNoaPeCWQrJA+GVQo6aQRoR2VNg05gPZqFb
	z3zzE4NOuvD+qqFoKaqiV/ZYpe+z2vPTgRk54Amdn4u8vq647MUOH5F463ZARy0x+/187+ghCcC6Q
	IWmIDZS7SN3gtiXuh3eKwd3OuAI8jMIxaKLiyuaz+09B8dZ00DziQad3pmI7KyyZQrB0HGoY/9QqB
	bE9Z3/nqhwzrHEhPTkwpuQv0lMouwrvO3XuMOEaES0/6spqcleNrOWhwv+cu1k9uT1FpVH2bpTPnL
	WMAGzh8jKfNVPZzzSUaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ7Nf-0004XN-Ac; Mon, 25 Nov 2019 05:57:51 +0000
Received: from mail-eopbgr690069.outbound.protection.outlook.com
 ([40.107.69.69] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ7Nb-0004Wp-CK
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 05:57:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KN+R9+mxIZYpsA7T3MQf+TRQSppMQtvcvb0r8kyurrXqdwMaDpF4+ZcRGRQwqRA/e/oPHdZuw9ZyzaI/lA8Du1QKJCxBcGvfMgjPl73jAn0SjxbzitZ63nMF60uvw1oweTCqbEMzYhAwW6SIwJ4oeLPD+7jKAeGdVVEe6Kne9x/eaiaOXWupyb2OkDMMYPSv6i1+HkFvWPqQ9Nr1WZKjCiz0U7vrdn/RRghCsmhZaNLWnCe8bOJBk3O7QMDUQLUZIz7vgRyHttW89YbjJZsInxncHxcwC9CTuBkc1NUhPjPXvzd4F3GR5qVcFw3Tu8v5X0nwt/A4Vdj+TXPT5jtpqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/oGUqIma0DRISkcM1XRPGcZzb/uCEiVF+OqbnloLsiE=;
 b=BOV5wvC34R3nucOUOABg10X66/AfSqqJ3AgkE37CzOiiES/SPJY9gtc8g8ngOptOPvxRFI1Ri3MJJJGrB/zAZBjHXmdLEC0PLtGWl8eUjD8i2dzGKaz/0xXbFJQI6nm72PJYUyWmsDYLbP2qMuKHCM5FiW6UDxooqOVUY4VfkDsum36zPmGCduHC5CpHIAlmN+s2CzQk6JOZhzQgzr84qwDmBJFCyUbbPAk701BnONgsRW5zQJ3o5iBcN8Gq9g9wXOoBYVEf5/0T+LxJhY7XrG8zlIUZNginEwA1C01tVOxSFvHb1MlbWJMohWhxVOxPBbZJzNs7hWBfhDIESDlk7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/oGUqIma0DRISkcM1XRPGcZzb/uCEiVF+OqbnloLsiE=;
 b=a71NqHFZNtbPk3dsnguT92cn4j4OySsEDo+Na4lFZ76PbJUyiwrGuLywXZUJazl2Zn+qwN9x1rzwMVpg+Ve4rwft3DUmFIJui/GCjLlMA/Y4GIDg0KtIuW/PBqpAKhsKk7bI+YStWmt6K1gVex/1O7sErVxFP4XlgOM7MPYah1A=
Received: from MN2PR13MB3374.namprd13.prod.outlook.com (10.255.236.83) by
 MN2PR13MB2622.namprd13.prod.outlook.com (20.178.254.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.10; Mon, 25 Nov 2019 05:57:41 +0000
Received: from MN2PR13MB3374.namprd13.prod.outlook.com
 ([fe80::4481:4560:7083:e4c6]) by MN2PR13MB3374.namprd13.prod.outlook.com
 ([fe80::4481:4560:7083:e4c6%7]) with mapi id 15.20.2495.014; Mon, 25 Nov 2019
 05:57:41 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>
Subject: [PATCH v3 0/6] GPIO & Hierarchy IRQ support for HiFive Unleashed
Thread-Topic: [PATCH v3 0/6] GPIO & Hierarchy IRQ support for HiFive Unleashed
Thread-Index: AQHVo1U/2ljv661YTECJb4nJUTETbQ==
Date: Mon, 25 Nov 2019 05:57:41 +0000
Message-ID: <1574661437-28486-1-git-send-email-yash.shah@sifive.com>
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
x-ms-office365-filtering-correlation-id: 3bb8af75-4b7f-4f7c-997a-08d7716c621a
x-ms-traffictypediagnostic: MN2PR13MB2622:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR13MB2622B893A1649A98EB3774A48C4A0@MN2PR13MB2622.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(136003)(376002)(346002)(366004)(396003)(39840400004)(189003)(199004)(186003)(966005)(6436002)(2906002)(316002)(14454004)(7416002)(54906003)(4326008)(6306002)(71190400001)(2616005)(50226002)(8936002)(110136005)(478600001)(6512007)(6116002)(8676002)(36756003)(3846002)(25786009)(81156014)(44832011)(305945005)(5660300002)(52116002)(14444005)(256004)(26005)(81166006)(71200400001)(6506007)(386003)(2501003)(6636002)(66446008)(66556008)(86362001)(66946007)(102836004)(99286004)(6486002)(7736002)(107886003)(64756008)(66476007)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR13MB2622;
 H:MN2PR13MB3374.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:3; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ibNjMQFMNrY8ZAbHle0+Yup9NsDK6TNtww5Xjo+avVxpmyA8tIuf6THRrQnLmiJxkmqH86Ribwk3NIDXYFLtqFhXidBOnxElLCIyZd328dYdSOFviIJfA7i+YJ8u15c0+IWBqYrOugnwhBzCpMO/TecccEHPsz8TCZM0+DZLBKlZVR0SXq0V/NsNgjgJOqMTp7aWpd8BUM+QikrgOJAVX9N9wHdkXpCMMIlBgTrscyg8g1Dk4me34ft61w3OOjPatVSwL2qgWnmfhB7nWvJPOk0yo0rr5q8+ld7+tkSSLuzNxWJBngoH27jK7ehDrhN8WrJ0JVXsU8wtARcB2M0sXza7OxGRfkB3nLOmcLxUXgGFH27bTWDVowYw5yMuBKLyd2tcY5k7qX06kClNtMtWyRdHCDehl/ZP9ooTk130WknT8lrlavqYpgtfVLWGTmJ3COYuZ2zFPRvGzAGv4BN20sFQd5OJ7/ubDMXWtqxPj4U=
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bb8af75-4b7f-4f7c-997a-08d7716c621a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 05:57:41.5489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a1FANDnilxOFDVGbC2X/bWYpIxpmV9vWDmGD7hOwk+lEqYvFDp0KZMb8M851QY9Hf1bTq+qkTUQtftjTbiw2Mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB2622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_215747_516201_31635C0B 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.69 listed in list.dnswl.org]
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

This patch series adds GPIO drivers, DT documentation and DT nodes for
HiFive Unleashed board. The gpio patches are mostly based on Wesley's patch.
The patchset also adds hierarchy irq domain support as it is required by this
gpio driver. It also includes the irqdomain patch to introduce
irq_domain_translate_onecell() and irq-nvic driver patch to use this newly
introduced function.

This patchset is based on Linux 5.4-rc6 and tested on HiFive Unleashed board

Changes:
v3 vs v2:
- Include patch for irq-nvic driver to use irq_domain_translate_onecell
- Remove unnecessary inclusion of header files
- Use a single prefix for all symbols in this driver
- Rename the "enabled" field of struct sifive_gpio to "irq_state"
- Remove unused variables and locking from probe()
- Other minor changes

v2 vs v1:
- Add patch to introduce irq_domain_translate_onecell() and use it in
  the sifive PLIC driver
- Drop the usage of own locks, instead use internal bgpio_locks
- Consistently use regmap for register access throughout the gpio code
- Convert the GPIO DT documentation into a json schema
- Other minor changes based upon feedback received on v1

v1 vs RFC:
Incorporated below changes as suggested by Linus Walleij on RFC version of this
patchset[0]
- Dropped PWM patches as they are already merged.
- Include "GPIO_GENERIC" and "REGMAP_MMIO" in Kconfig select option
- Remove unwanted inclusion of header files
- Use regmap MMIO instead of customised sifive_assign_bit()
- Use GPIOLIB_GENERIC and bgpio_init() to set up the accessors
- Use hierarchical irqdomain

[0] https://lore.kernel.org/linux-riscv/20181010123519.RVexDppaPFpIWl7QU_hpP8tc5qqWPJgeuLYn0FaGbeQ@z/

Yash Shah (6):
  genirq: introduce irq_domain_translate_onecell
  irqchip: nvic: Use irq_domain_translate_onecell instead of custom func
  irqchip: sifive: Support hierarchy irq domain
  gpio: sifive: Add DT documentation for SiFive GPIO
  gpio: sifive: Add GPIO driver for SiFive SoCs
  riscv: dts: Add DT support for SiFive FU540 GPIO driver

 .../devicetree/bindings/gpio/gpio-sifive.yaml      |  69 ++++++
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi         |  14 +-
 .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts |   4 +
 drivers/gpio/Kconfig                               |   9 +
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-sifive.c                         | 252 +++++++++++++++++++++
 drivers/irqchip/Kconfig                            |   1 +
 drivers/irqchip/irq-nvic.c                         |  15 +-
 drivers/irqchip/irq-sifive-plic.c                  |  30 ++-
 include/linux/irqdomain.h                          |   5 +
 kernel/irq/irqdomain.c                             |  17 ++
 11 files changed, 399 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-sifive.yaml
 create mode 100644 drivers/gpio/gpio-sifive.c

-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
