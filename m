Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB6D1E84A
	for <lists+linux-riscv@lfdr.de>; Wed, 15 May 2019 08:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8yRjhwCrgipAcpWFpjtBcA1h0o8vGX8DKGPTxAdKTvE=; b=iWIl7lS6xBfP0y
	l2jZhECrXHzT60+zB+35lZndDWGzsiBkWNCU60+qL3wFhY7EdafkzhAnUqriroZSAbWNEAC5sew7A
	QRIOptbgoicRP5SrqzO+Zpi2jmIC94k3gmyG2coMN79Ati7vbPZEJncfULhHgawfIHcmbUB0C/FSy
	qarEs2Pxwg+4wAhi6nPWHUE9f4VObyTEjjpfpwRzxUeZl+Z/fvb9VMPCehuRVs+8U67zLqNxs4zu5
	0PvK1X1wOmQYkr6JsM1wnXJ6OzTWS2XLesyxCHjNr/BEudLnYq9bjcqF0pB6H4Jz5+AswzGjLOX/C
	adoVK3jJZjsVTkg5zNfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQnRL-0001pQ-V8; Wed, 15 May 2019 06:30:59 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQnRI-0001ns-SW
 for linux-riscv@lists.infradead.org; Wed, 15 May 2019 06:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557901857; x=1589437857;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=/3JFuvi5KaEHcItK79ajYJVZ0XA2wvkcfcSp8VyJNyY=;
 b=S2DV3Qn2CRvOPQggbA+LGMn2UCpTFad2m1LGD5WYMNkU0jZ4Ge/B34ve
 gjS6catrKv8kl+qJlXyv2FaDjnWVKihY2jjYIm7eDv45gijlr9FyqwfBv
 vksffawsC0q6sbKRfKZ24SKDOsH2wOeTJmgG5BgkLaCWYo+XfQEA0ioRb
 dbMA191CRoUSSvcJNhIQips/3xgmpYIq3o5eLlF/auMOLXVFf8/znTvu1
 7a2an5YjRI5lmIOvJh4aR48Dtotfzbti9sBcLs+dpvlz2cwbKwHcTcxGe
 lYc/ZlIsFOZT06z5XESbIWbZZUufSpZNwDYS9AyQOY7RJzHpe12P8oTJF w==;
X-IronPort-AV: E=Sophos;i="5.60,471,1549900800"; d="scan'208";a="108302799"
Received: from mail-co1nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.56])
 by ob1.hgst.iphmx.com with ESMTP; 15 May 2019 14:30:42 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3JFuvi5KaEHcItK79ajYJVZ0XA2wvkcfcSp8VyJNyY=;
 b=DcmXYaLpYyy3FfNIcKHl5Oa/7/GEYbEhCgLPxr34hysFjw0obpxCOWHpSkf7TlPfKberlXbB9Xdk84KUoAtQO11isftpfR6u5us3ZCspUlaximzyJsU3oq3+hKxiXn9q01TUYDWLKO+38kkHbptONcqKklPbeTXWzOCVBqIeg5Y=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6128.namprd04.prod.outlook.com (20.178.248.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Wed, 15 May 2019 06:30:40 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::5577:2af9:2b09:8171]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::5577:2af9:2b09:8171%3]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 06:30:40 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] RISC-V: defconfig: Enable NO_HZ_IDLE and HIGH_RES_TIMERS
Thread-Topic: [PATCH] RISC-V: defconfig: Enable NO_HZ_IDLE and HIGH_RES_TIMERS
Thread-Index: AQHVCue2HEus4pRvEEGYJRX3qv0JOw==
Date: Wed, 15 May 2019 06:30:39 +0000
Message-ID: <20190515063004.3466-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR01CA0079.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:49::21) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e574d5c-3244-4b0a-f658-08d6d8fed923
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6128; 
x-ms-traffictypediagnostic: MN2PR04MB6128:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB612804594253EF0236B937668D090@MN2PR04MB6128.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(346002)(39860400002)(366004)(376002)(189003)(199004)(110136005)(5660300002)(54906003)(81156014)(66446008)(99286004)(2906002)(66066001)(14454004)(3846002)(478600001)(81166006)(6116002)(7736002)(72206003)(305945005)(316002)(73956011)(1076003)(25786009)(8676002)(66556008)(64756008)(66476007)(52116002)(66946007)(102836004)(26005)(2171002)(486006)(4326008)(44832011)(86362001)(6436002)(476003)(6506007)(386003)(71190400001)(2616005)(8936002)(71200400001)(186003)(36756003)(6512007)(256004)(68736007)(6486002)(50226002)(53936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6128;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xhPhkc+iTrI0ZPpt4n6FCLyiS23hNPUWSgvQ8zinIdkznZjYWtrjyYJrHPTMiClokvOrhBkC7tYva7nLqomqG7lhQjPQUJTCJllaoBw4EG6ThVl2deGItOmKOn99o6vr7k4lRvZuO+8TAe1iEbbteStn6U+B+Y8lxVHgoRQidc/qz/j0iDztNUpHzxXRwlAuMeh6km56aA+WlZHRXITCZbodKt7RNhMKLVjdoZXWv7mXNWsnurm+IWQZv73fh+rADN+YbIcXsPOj6nifn+TwwMhzhPrhG+WBiqOlm5bvaXFJehQpmGj/mfUNTi6P49GNJKzqhUCbTXKpIrPvgiwdOs1NXFWOtMUIc62sQ4q0b8AlnrNsJxeeauDfSQ6JmniP1fLB1W4+ezJdWBmXENensE581XJXIJ64uHozcBw4EBg=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e574d5c-3244-4b0a-f658-08d6d8fed923
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 06:30:39.9592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_233056_961327_BD2EC42B 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch enables NO_HZ_IDLE (idle dynamic ticks) and HIGH_RES_TIMERS
(hrtimers) in RV32 and RV64 defconfigs.

Both of the above options are enabled by default for architectures
such as x86, ARM, and ARM64.

The idle dynamic ticks helps use save power by stopping timer ticks
when the system is idle whereas hrtimers is a much improved timer
subsystem compared to the old "timer wheel" based system.

This patch is tested on SiFive Unleashed board and QEMU Virt machine.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/configs/defconfig      | 2 ++
 arch/riscv/configs/rv32_defconfig | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 2fd3461e50ab..f254c352ec57 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -1,5 +1,7 @@
 CONFIG_SYSVIPC=y
 CONFIG_POSIX_MQUEUE=y
+CONFIG_NO_HZ_IDLE=y
+CONFIG_HIGH_RES_TIMERS=y
 CONFIG_IKCONFIG=y
 CONFIG_IKCONFIG_PROC=y
 CONFIG_CGROUPS=y
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index 1a911ed8e772..d5449ef805a3 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -1,5 +1,7 @@
 CONFIG_SYSVIPC=y
 CONFIG_POSIX_MQUEUE=y
+CONFIG_NO_HZ_IDLE=y
+CONFIG_HIGH_RES_TIMERS=y
 CONFIG_IKCONFIG=y
 CONFIG_IKCONFIG_PROC=y
 CONFIG_CGROUPS=y
-- 
2.17.1

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
