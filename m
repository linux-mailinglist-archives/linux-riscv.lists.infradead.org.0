Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF105F8F6A
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 13:12:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mqyilKZEpPJUFPt0jLq3SoiM0yDZEKV6FivlbXJbOrs=; b=qHOwpCsdeNuJQr
	MfFdhmdZu5XyA5F7BFv2o+eVZMh2RInGQZO1x9R7Q+cq3Q7Lh+FiJWMz0AEFiDNQoEDaLDeUjlARE
	APWgSQapX7bHDgDntgyaBLG2JlKSWeFX0TzSvbbb1KMvEUStM36HfFlKwjEipp5h466yKyYoJgxag
	GD3s2ly0IIrBwHPH8Mr89Q7LTN37vD8fCR9o5YNwkedb6yngw8jfLkQ0uYEqPhWM1hzaBVWylVVrd
	69zpVyRz5xNu0DioXZv/oxOMqaK0NLFhAtAJgkHlSbi46rHjVYo6ylrx1MJ3gg1HZNn3sGGww2E18
	UNVfJv4sbZnmaL6WGWWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUV1d-0007S7-Kh; Tue, 12 Nov 2019 12:12:01 +0000
Received: from mail-eopbgr800050.outbound.protection.outlook.com
 ([40.107.80.50] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUV1Z-0007RJ-VS
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 12:11:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Glmhw627wh+Z1ASADl39Hk4i1l/dKEAxpjJ8QzT28vp2Y2D26ybf3TmM1ar3METjuXuqi4SrXb5e2fmLnjrmRvJRDHPNBF34PWz1s1uk4f7TmXcfCgzogjza7TQxAaARLcAN1SbVCAW1RNBNi8BnNxh/5SrqSGXKxpJu2JlW1lphx4q4UD0WB4PbKYOKY8GHv2R+y19Ww1i6TkSTOYKwoNjr+dkWBNAfaPI72Q/wSEUfK5HNxjUehH1+XN54qpMJYu4D1WWKaFoca/KXuyoYMiz7Z0AqnjH8TYW0CNaBW1j0T3Ggrm7B2kv0tS4TH5eNC9mMIiRzediBuKl9+fVx3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tl7NBQ4gzSbbEmKqn3pg9QSq4ozazJe6kpAJQj+GJuI=;
 b=loDnL8RwWjyB9i10rAPfEro7s2IiaRFGfsDM5JQNVlGk7Tj8hf+sOrSb1aSThpEaeGhMzx1sVTPL0SRnSzW28qi8zf5CQi0h65Sv0o7AeqPLDKOvtP4eQ35zM7R1q3Pes+UpPMNMWS89Tyx9fVzIMZCe7c4yUsi+GQmqW8203AdkiAqLkBAVX1Azc4n+TBctTiFMkOUAUH/UK2mmdqHLMVJ6Cj8DN4giwYMfbxo3K1h91B3cGIpi1pI+i7qEeICNG5xJax1lQTx0HW87dl1W2cW3ZTqwEOA99vWb/MrGRKVdj7GWc9oFlY0UwWOLL8Pe/Eu/UXUiYfs/kO5mY4RS1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tl7NBQ4gzSbbEmKqn3pg9QSq4ozazJe6kpAJQj+GJuI=;
 b=pfo49ZToY5BEviGrScgEsyzoYbB/+nQnzdSnmuetyz7triaCuguiJQdJzJtHVDTouLLk9BIU+iyS0xef1vTzQIsCh0FJYxOx88ts7XEwXMb56yLHMswqcifdQmrO2qjeVnkdlKwLlkZX47xKgSBEkOwxfpfpMwwJEh8+Fyn0SO0=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3541.namprd13.prod.outlook.com (52.132.247.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.17; Tue, 12 Nov 2019 12:11:52 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2451.018; Tue, 12 Nov 2019
 12:11:52 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>
Subject: [PATCH 0/4] GPIO & Hierarchy IRQ support for HiFive Unleashed
Thread-Topic: [PATCH 0/4] GPIO & Hierarchy IRQ support for HiFive Unleashed
Thread-Index: AQHVmVJemxZAHPd8SU62eeR4mkkR0Q==
Date: Tue, 12 Nov 2019 12:11:52 +0000
Message-ID: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
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
x-ms-office365-filtering-correlation-id: 0178d8da-6f42-4eb3-82b6-08d767698089
x-ms-traffictypediagnostic: CH2PR13MB3541:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3541BF54E6B62BB94DD857CB8C770@CH2PR13MB3541.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(39840400004)(136003)(346002)(376002)(396003)(366004)(189003)(199004)(186003)(14454004)(25786009)(486006)(107886003)(2616005)(476003)(66946007)(6116002)(3846002)(36756003)(478600001)(4326008)(7416002)(305945005)(966005)(2501003)(7736002)(2906002)(54906003)(110136005)(316002)(6306002)(99286004)(6486002)(6512007)(44832011)(8676002)(81166006)(6436002)(66066001)(50226002)(81156014)(6636002)(8936002)(52116002)(5660300002)(26005)(386003)(6506007)(86362001)(102836004)(66556008)(66476007)(71200400001)(256004)(64756008)(71190400001)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3541;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qh65fO5ZxBDTR8C7DMDWVvwCUq6r0pH9ohJHHg9fOZ6OGdduBHrgUYDAGzbKv7P1q1KLSPq4n1qLxnU/C2GgRGIf9HGlwjjt+JkIvQ+MMHCTNcycgEdIMc6OBwg7uYvQ5kB2CWJahHYVNy+QoFPtnTTmtNJKhVwhQTR8FdU/KXxSn+G1dvANMPVCgGDCM6LpYtYwDHPZfjw8vdz0TL2h8Ipb7jMKgwqz1UVWgq5dhIZZd1rjP9qU7lZCegdeg0kKREpCUkL2Q/zoOuBbY8OIROmeV65i8fNagxryDqZ7Cdb0Htxv0nqJmxMSorFpFRKB/j4N2ErZgAnFBS2BdUK8suXqNCn42Eilm7xIn5VjqVxkb7pm297zPwk/oFwZ3piRsmGHB/u7K/9VHC6kk8QALXwT+DQ0aEDOGGEc5HkuH9bvEytS2Q/aoo7CFDQGhHU7
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0178d8da-6f42-4eb3-82b6-08d767698089
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 12:11:52.4615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ahFEFVsMGt5KlGkg6bHLks+Zuhx+n6txj0cP4YAHMIsyus35eZcgFdEfXaBQ2f60gjAiha0bH3/cfQ/4X3haTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3541
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_041158_163119_9DD7E32F 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.80.50 listed in wl.mailspike.net]
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

This patch series adds GPIO drivers, DT documentation and DT nodes for
HiFive Unleashed board. The gpio patches are mostly based on Wesley's patch.
The patchset also adds hierarchy irq domain support as it is required by this
gpio driver.

This patchset is based on Linux 5.4-rc6 and tested on HiFive Unleashed board

Changes since RFC version:
Incorporated below changes as suggested by Linus Walleij on RFC version of this
patchset[0]
- Dropped PWM patches as they are already merged.
- Include "GPIO_GENERIC" and "REGMAP_MMIO" in Kconfig select option
- Remove unwanted inclusion of header files
- Use regmap MMIO instead of customised sifive_assign_bit()
- Use GPIOLIB_GENERIC and bgpio_init() to set up the accessors
- Use hierarchical irqdomain

[0] https://lore.kernel.org/linux-riscv/20181010123519.RVexDppaPFpIWl7QU_hpP8tc5qqWPJgeuLYn0FaGbeQ@z/

Yash Shah (4):
  irqchip: sifive: Support hierarchy irq domain
  gpio: sifive: Add DT documentation for SiFive GPIO
  gpio: sifive: Add GPIO driver for SiFive SoCs
  riscv: dts: Add DT support for SiFive FU540 GPIO driver

 .../devicetree/bindings/gpio/gpio-sifive.txt       |  33 +++
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi         |  14 +-
 .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts |   4 +
 drivers/gpio/Kconfig                               |   9 +
 drivers/gpio/Makefile                              |   1 +
 drivers/gpio/gpio-sifive.c                         | 255 +++++++++++++++++++++
 drivers/irqchip/Kconfig                            |   1 +
 drivers/irqchip/irq-sifive-plic.c                  |  41 +++-
 8 files changed, 353 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-sifive.txt
 create mode 100644 drivers/gpio/gpio-sifive.c

-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
