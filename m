Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAAD10888E
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 06:58:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PP9h2khqeqy9WHMZxkZOWppd5YNPQShNzuLXdnGrTaQ=; b=iC0v4GXN+M8q2D
	vA+v26xxmfLWnccZDu+cSWJB/c5U2Clpz3luAM94F/KYFvBKv8HZM6dAL/hCM6tMTYHOP90t9HnlU
	gaqgyM7yCj79B73XhxvU8d/Aa68ZjTRb2wkXEBmV+NgnHpnEGu0PIvtbK640mJEUyMxHDZV7wcBXG
	vyc+wWE8NBuIIAHozjuTTCux6uOGX+WQ9SfowNHlDZuJqvMdDrfdxdcdXh5HGrrMgsLOTdzkWSWm7
	YsfS8jPtXrH2+yTSoIlb5Ua2FZPjSGOtGe+9Qjy0m6rfk9Ondnc4oHNVf3qGzqKS6g1ERyrmMbai5
	zMbJYYAN3V2p4gaZcmaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ7O4-0004qD-4a; Mon, 25 Nov 2019 05:58:16 +0000
Received: from mail-eopbgr690057.outbound.protection.outlook.com
 ([40.107.69.57] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ7Nz-0004na-T2
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 05:58:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FqbM5tI6b9v9TvqeZ2y/wiUm3XFghrlYmnuUqTFAf3KtKhAcp1QUBqSbmH7sdYFqRP4KZmYSsFiSyWTsGe75NrpAIkQfkm2aTyRGYz44DIo0nYQ5mKR3kouvU4xC0DRo/rBW97XvA1CBorugD635DzsABLUz70bcfvnaXWHvMHtOZZHxfGgV8BRUd9UFakpNIWjSYZ3lM+rCylTP0frrFgiiHX4Pb1VoVFbR3zDf0aK5+sZGkyScmRywigkrqzH0g2cMMgUWdAk9Sf+h14BjK3Nhe4VSk81pMO0wHRxv4t/EgFn1Tj7q3s3HtRsadwb/WSttBsd48m2yqYKeKR/OeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tHHqXFnUqn2splmiKIEwL+V8byquV+1B7GTV/9+B6fg=;
 b=P9T/GKs5Sx5aZxEq9ZNXZIs121pd/eA3LQ2xOBo0f0DOdX4JG72hw9gm5cSLVojGj1jNd9s+kci1qal1iU1N8xzT6I5nRfHn62seNe791TjaAquhzXbLkTiMAxFy2KtcYBvMPaXvkq7E4P1ves7iUAzTSZLN6zYPEVmdolvos6jdrJcoYcLMJwry8H2bjbjQi62KkDPt0vjZ5gALfuUhYbWW+o2LSQQqZCxUhz0JfqsmmWgbS9ef+t1oCrUWF7xAxnQfsm7R2zPbbQeR8rXXlkr5u4s5zEWgpnThDhv7nZaLJFUh7tGGCYdrbn6reaY7xhS2KRmf4X8xZTLTBxAABA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tHHqXFnUqn2splmiKIEwL+V8byquV+1B7GTV/9+B6fg=;
 b=tNeSeinxnOSKP2zoi+R+ITvMOnOxlGuTsPNPZJxlcHOC8oZXFrSUKM1vKcsyKFRw8teI5LeKOxhuRznSua8Ub5zDWoyfM7OGr/mdhGsVAKmw7azYjsRmpQU4hKlI79KHAqSOBEgdmY3k18iTPrARiUADaAvyRM92pMW+yDR4yyc=
Received: from MN2PR13MB3374.namprd13.prod.outlook.com (10.255.236.83) by
 MN2PR13MB2622.namprd13.prod.outlook.com (20.178.254.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.10; Mon, 25 Nov 2019 05:58:09 +0000
Received: from MN2PR13MB3374.namprd13.prod.outlook.com
 ([fe80::4481:4560:7083:e4c6]) by MN2PR13MB3374.namprd13.prod.outlook.com
 ([fe80::4481:4560:7083:e4c6%7]) with mapi id 15.20.2495.014; Mon, 25 Nov 2019
 05:58:09 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>
Subject: [PATCH v3 5/6] gpio: sifive: Add GPIO driver for SiFive SoCs
Thread-Topic: [PATCH v3 5/6] gpio: sifive: Add GPIO driver for SiFive SoCs
Thread-Index: AQHVo1VQYzPWzURXhUW+zbyogELnYg==
Date: Mon, 25 Nov 2019 05:58:09 +0000
Message-ID: <1574661437-28486-6-git-send-email-yash.shah@sifive.com>
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
x-ms-office365-filtering-correlation-id: 805f2378-d23d-4c67-72d5-08d7716c72cc
x-ms-traffictypediagnostic: MN2PR13MB2622:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR13MB2622DADED4BE17D8B4DA5F6E8C4A0@MN2PR13MB2622.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
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
x-microsoft-antispam-message-info: 0mCU7Nm3j8pYYmUjn/LrcqA/UMcFZqkkGqzv0LF3ZFpvofXctMmNbx4QgMDH+t+DftMfXl157asQf62sviFVXEeDYTUO2Bs9i7X768xKox0DoVcYiyk5q0Izx94IINGwTCEqV7pRJCmgXBotbdAK79j8ZYZFBG8gj9eAwvpZQhfQ46FUDChdF4BQcRrDBXrsdRVwRr431nKnmCCuyF/seYSjqrnySkCVpU2p9YvY6DlnSSBIFKFplYwZVc/gidMFxkhDIKCSg9AyFwKovPZpgHJNvCbp5Gvpv0KmWjv1zkAf4M9XAvq2kmkFb8y9Sa79eYfl2WKiYdvfZwKr7bHeBDEgQImrICbIZRGObRx4MEtV/k0gmWX5RUsPWbI+o6gZRnhc+7h8RhMb//Ok1jBPA24Eh8YkpVVTC1MNuoacNHt8xEYMeaBU8YbcqMaK0ySp
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 805f2378-d23d-4c67-72d5-08d7716c72cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 05:58:09.6480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aYzaS/S7ksMUFW80wYWw2gvqUWSxHQzAd5Q0WlICFIPitD/JMk2+QonocoYKDVV6rjmao+IsOrc/fMRA8JTpig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB2622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_215811_969360_8A94B0C2 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.57 listed in list.dnswl.org]
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

Adds the GPIO driver for SiFive RISC-V SoCs.

Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
[Atish: Various fixes and code cleanup]
Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 drivers/gpio/Kconfig       |   9 ++
 drivers/gpio/Makefile      |   1 +
 drivers/gpio/gpio-sifive.c | 252 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 262 insertions(+)
 create mode 100644 drivers/gpio/gpio-sifive.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 38e096e..05e8a41 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -453,6 +453,15 @@ config GPIO_SAMA5D2_PIOBU
 	  The difference from regular GPIOs is that they
 	  maintain their value during backup/self-refresh.
 
+config GPIO_SIFIVE
+	bool "SiFive GPIO support"
+	depends on OF_GPIO
+	select GPIO_GENERIC
+	select GPIOLIB_IRQCHIP
+	select REGMAP_MMIO
+	help
+	  Say yes here to support the GPIO device on SiFive SoCs.
+
 config GPIO_SIOX
 	tristate "SIOX GPIO support"
 	depends on SIOX
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index d2fd19c..bf7984e 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -121,6 +121,7 @@ obj-$(CONFIG_ARCH_SA1100)		+= gpio-sa1100.o
 obj-$(CONFIG_GPIO_SAMA5D2_PIOBU)	+= gpio-sama5d2-piobu.o
 obj-$(CONFIG_GPIO_SCH311X)		+= gpio-sch311x.o
 obj-$(CONFIG_GPIO_SCH)			+= gpio-sch.o
+obj-$(CONFIG_GPIO_SIFIVE)		+= gpio-sifive.o
 obj-$(CONFIG_GPIO_SIOX)			+= gpio-siox.o
 obj-$(CONFIG_GPIO_SODAVILLE)		+= gpio-sodaville.o
 obj-$(CONFIG_GPIO_SPEAR_SPICS)		+= gpio-spear-spics.o
diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
new file mode 100644
index 0000000..147a1bd
--- /dev/null
+++ b/drivers/gpio/gpio-sifive.c
@@ -0,0 +1,252 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 SiFive
+ */
+
+#include <linux/bitops.h>
+#include <linux/device.h>
+#include <linux/errno.h>
+#include <linux/of_irq.h>
+#include <linux/gpio/driver.h>
+#include <linux/init.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include <linux/regmap.h>
+
+#define SIFIVE_GPIO_INPUT_VAL	0x00
+#define SIFIVE_GPIO_INPUT_EN	0x04
+#define SIFIVE_GPIO_OUTPUT_EN	0x08
+#define SIFIVE_GPIO_OUTPUT_VAL	0x0C
+#define SIFIVE_GPIO_RISE_IE	0x18
+#define SIFIVE_GPIO_RISE_IP	0x1C
+#define SIFIVE_GPIO_FALL_IE	0x20
+#define SIFIVE_GPIO_FALL_IP	0x24
+#define SIFIVE_GPIO_HIGH_IE	0x28
+#define SIFIVE_GPIO_HIGH_IP	0x2C
+#define SIFIVE_GPIO_LOW_IE	0x30
+#define SIFIVE_GPIO_LOW_IP	0x34
+#define SIFIVE_GPIO_OUTPUT_XOR	0x40
+
+#define SIFIVE_GPIO_MAX		32
+#define SIFIVE_GPIO_IRQ_OFFSET	7
+
+struct sifive_gpio {
+	void __iomem		*base;
+	struct gpio_chip	gc;
+	struct regmap		*regs;
+	u32			irq_state;
+	unsigned int		trigger[SIFIVE_GPIO_MAX];
+	unsigned int		irq_parent[SIFIVE_GPIO_MAX];
+};
+
+static void sifive_gpio_set_ie(struct sifive_gpio *chip, unsigned int offset)
+{
+	unsigned long flags;
+	unsigned int trigger;
+
+	spin_lock_irqsave(&chip->gc.bgpio_lock, flags);
+	trigger = (chip->irq_state & BIT(offset)) ? chip->trigger[offset] : 0;
+	regmap_update_bits(chip->regs, SIFIVE_GPIO_RISE_IE, BIT(offset),
+			   (trigger & IRQ_TYPE_EDGE_RISING) ? BIT(offset) : 0);
+	regmap_update_bits(chip->regs, SIFIVE_GPIO_FALL_IE, BIT(offset),
+			   (trigger & IRQ_TYPE_EDGE_FALLING) ? BIT(offset) : 0);
+	regmap_update_bits(chip->regs, SIFIVE_GPIO_HIGH_IE, BIT(offset),
+			   (trigger & IRQ_TYPE_LEVEL_HIGH) ? BIT(offset) : 0);
+	regmap_update_bits(chip->regs, SIFIVE_GPIO_LOW_IE, BIT(offset),
+			   (trigger & IRQ_TYPE_LEVEL_LOW) ? BIT(offset) : 0);
+	spin_unlock_irqrestore(&chip->gc.bgpio_lock, flags);
+}
+
+static int sifive_gpio_irq_set_type(struct irq_data *d, unsigned int trigger)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct sifive_gpio *chip = gpiochip_get_data(gc);
+	int offset = irqd_to_hwirq(d);
+
+	if (offset < 0 || offset >= gc->ngpio)
+		return -EINVAL;
+
+	chip->trigger[offset] = trigger;
+	sifive_gpio_set_ie(chip, offset);
+	return 0;
+}
+
+static void sifive_gpio_irq_enable(struct irq_data *d)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct sifive_gpio *chip = gpiochip_get_data(gc);
+	int offset = irqd_to_hwirq(d) % SIFIVE_GPIO_MAX;
+	u32 bit = BIT(offset);
+	unsigned long flags;
+
+	irq_chip_enable_parent(d);
+
+	/* Switch to input */
+	gc->direction_input(gc, offset);
+
+	spin_lock_irqsave(&gc->bgpio_lock, flags);
+	/* Clear any sticky pending interrupts */
+	regmap_write(chip->regs, SIFIVE_GPIO_RISE_IP, bit);
+	regmap_write(chip->regs, SIFIVE_GPIO_FALL_IP, bit);
+	regmap_write(chip->regs, SIFIVE_GPIO_HIGH_IP, bit);
+	regmap_write(chip->regs, SIFIVE_GPIO_LOW_IP, bit);
+	spin_unlock_irqrestore(&gc->bgpio_lock, flags);
+
+	/* Enable interrupts */
+	assign_bit(offset, (unsigned long *)&chip->irq_state, 1);
+	sifive_gpio_set_ie(chip, offset);
+}
+
+static void sifive_gpio_irq_disable(struct irq_data *d)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct sifive_gpio *chip = gpiochip_get_data(gc);
+	int offset = irqd_to_hwirq(d) % SIFIVE_GPIO_MAX;
+
+	assign_bit(offset, (unsigned long *)&chip->irq_state, 0);
+	sifive_gpio_set_ie(chip, offset);
+	irq_chip_disable_parent(d);
+}
+
+static void sifive_gpio_irq_eoi(struct irq_data *d)
+{
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct sifive_gpio *chip = gpiochip_get_data(gc);
+	int offset = irqd_to_hwirq(d) % SIFIVE_GPIO_MAX;
+	u32 bit = BIT(offset);
+	unsigned long flags;
+
+	spin_lock_irqsave(&gc->bgpio_lock, flags);
+	/* Clear all pending interrupts */
+	regmap_write(chip->regs, SIFIVE_GPIO_RISE_IP, bit);
+	regmap_write(chip->regs, SIFIVE_GPIO_FALL_IP, bit);
+	regmap_write(chip->regs, SIFIVE_GPIO_HIGH_IP, bit);
+	regmap_write(chip->regs, SIFIVE_GPIO_LOW_IP, bit);
+	spin_unlock_irqrestore(&gc->bgpio_lock, flags);
+
+	irq_chip_eoi_parent(d);
+}
+
+static struct irq_chip sifive_gpio_irqchip = {
+	.name		= "sifive-gpio",
+	.irq_set_type	= sifive_gpio_irq_set_type,
+	.irq_mask	= irq_chip_mask_parent,
+	.irq_unmask	= irq_chip_unmask_parent,
+	.irq_enable	= sifive_gpio_irq_enable,
+	.irq_disable	= sifive_gpio_irq_disable,
+	.irq_eoi	= sifive_gpio_irq_eoi,
+};
+
+static int sifive_gpio_child_to_parent_hwirq(struct gpio_chip *gc,
+					     unsigned int child,
+					     unsigned int child_type,
+					     unsigned int *parent,
+					     unsigned int *parent_type)
+{
+	*parent_type = IRQ_TYPE_NONE;
+	*parent = child + SIFIVE_GPIO_IRQ_OFFSET;
+	return 0;
+}
+
+static const struct regmap_config sifive_gpio_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.fast_io = true,
+	.disable_locking = true,
+};
+
+static int sifive_gpio_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *node = pdev->dev.of_node;
+	struct device_node *irq_parent;
+	struct irq_domain *parent;
+	struct gpio_irq_chip *girq;
+	struct sifive_gpio *chip;
+	int ret, ngpio;
+
+	chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
+	if (!chip)
+		return -ENOMEM;
+
+	chip->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(chip->base)) {
+		dev_err(dev, "failed to allocate device memory\n");
+		return PTR_ERR(chip->base);
+	}
+
+	chip->regs = devm_regmap_init_mmio(dev, chip->base,
+					   &sifive_gpio_regmap_config);
+	if (IS_ERR(chip->regs))
+		return PTR_ERR(chip->regs);
+
+	ngpio = of_irq_count(node);
+	if (ngpio >= SIFIVE_GPIO_MAX) {
+		dev_err(dev, "Too many GPIO interrupts (max=%d)\n",
+			SIFIVE_GPIO_MAX);
+		return -ENXIO;
+	}
+
+	irq_parent = of_irq_find_parent(node);
+	if (!irq_parent) {
+		dev_err(dev, "no IRQ parent node\n");
+		return -ENODEV;
+	}
+	parent = irq_find_host(irq_parent);
+	if (!parent) {
+		dev_err(dev, "no IRQ parent domain\n");
+		return -ENODEV;
+	}
+
+	ret = bgpio_init(&chip->gc, dev, 4,
+			 chip->base + SIFIVE_GPIO_INPUT_VAL,
+			 chip->base + SIFIVE_GPIO_OUTPUT_VAL,
+			 NULL,
+			 chip->base + SIFIVE_GPIO_OUTPUT_EN,
+			 chip->base + SIFIVE_GPIO_INPUT_EN,
+			 0);
+	if (ret) {
+		dev_err(dev, "unable to init generic GPIO\n");
+		return ret;
+	}
+
+	/* Disable all GPIO interrupts before enabling parent interrupts */
+	regmap_write(chip->regs, SIFIVE_GPIO_RISE_IE, 0);
+	regmap_write(chip->regs, SIFIVE_GPIO_FALL_IE, 0);
+	regmap_write(chip->regs, SIFIVE_GPIO_HIGH_IE, 0);
+	regmap_write(chip->regs, SIFIVE_GPIO_LOW_IE, 0);
+	chip->irq_state = 0;
+
+	chip->gc.base = -1;
+	chip->gc.ngpio = ngpio;
+	chip->gc.label = dev_name(dev);
+	chip->gc.parent = dev;
+	chip->gc.owner = THIS_MODULE;
+	girq = &chip->gc.irq;
+	girq->chip = &sifive_gpio_irqchip;
+	girq->fwnode = of_node_to_fwnode(node);
+	girq->parent_domain = parent;
+	girq->child_to_parent_hwirq = sifive_gpio_child_to_parent_hwirq;
+	girq->handler = handle_bad_irq;
+	girq->default_type = IRQ_TYPE_NONE;
+
+	platform_set_drvdata(pdev, chip);
+	return gpiochip_add_data(&chip->gc, chip);
+}
+
+static const struct of_device_id sifive_gpio_match[] = {
+	{ .compatible = "sifive,gpio0" },
+	{ .compatible = "sifive,fu540-c000-gpio" },
+	{ },
+};
+
+static struct platform_driver sifive_gpio_driver = {
+	.probe		= sifive_gpio_probe,
+	.driver = {
+		.name	= "sifive_gpio",
+		.of_match_table = of_match_ptr(sifive_gpio_match),
+	},
+};
+builtin_platform_driver(sifive_gpio_driver)
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
