Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40E1108EC1
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 14:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rc9S4tId4HYeFBgNqenlwInLoywnBHDx0U9TPZGLaac=; b=VBldvSQhk+dQSP
	alIfVSvD1nYsaiTKY5qQ+0vqvFfM7LXnB0Dk6f3VY6B35bNt7aaK32GNtCbdFc5XF5glP6TFw3lEh
	t5I9Z7O5Dxvfj2C2rexy5w4MgJsEIvfIP4tatBTWZPIl1ava3Ny+yiWO7YmmTwK4v44JP+T2UwDEF
	z9dG11piQXFekvMYTai6oEiCIRJ1ZoMt+IQ3E2z7xYae6PyKoqXgD+dVxoee64xsHYcVDSHch2tCI
	zZc/fRRC0OC9JbRmmMs19sFblTv6GyiYg+hgG2v2gv6vaAy9JZRif2FeA5Gb1UodOmcMecIMU/914
	5dNRq101eXTD4YSKW7BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZEK7-0005C5-9X; Mon, 25 Nov 2019 13:22:39 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZEK3-00050s-K3
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 13:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574688156; x=1606224156;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2fh3RgL9iVwfsOpzAmayb+7U4n6phjkR2aCD9h8bXpY=;
 b=ZT50gOiAejOFe+xX40NBZaWZ9Cfb9PEzb/0C7jZVlj1uXFwOgZCccGLR
 JSmb/zyS7UCWzBGO5Sky7wU3uuVFA5E9JKq4J2vFbaItkPZdv6TVKmV7w
 o/COX9XBwWNzagCson9Bqg1ZyM7VLUE7wD2gtkXpelt6B4l8qYS24hUae
 E/MS/WgCd8ReH8zYD6sqH9p3hSV+FqzmVshh4JjPkKk5sn6FGmhDhIOcX
 0VDSzlejO/28rV2GfNri4qKq/UYyyUNujVcHkKCGYFPVus6kQFFx6dsL8
 2PVLon008azOhLcqHL/U7dG9lBFUoc7eZuc5mp7M6uuEiHcpBEuYyYldK A==;
IronPort-SDR: fs6R9ScqEM3/R5wQrNW+RZlvn3Z0D5vIfEHWMB+XjCZaRo+X4eQyd/XaRCuLI3MBJFyuxN3jrA
 0adgc8AMGSFQSOKQ4zLpDDaIe+Jngw4s8eD4iG2KG00HtfKtOAZyvD62E65ZgVwxjUM2Xz8Tjy
 SsdJh9hszmE4qR2IxCSM10DUFQ1QcS+QvYx4kRJNChDrRaseCF3IHZNz/U86oDMTr+BaGS61C5
 y4ORTNF6l3jvL5bQnjVcpM1hZKU6wx3PL4pWnpU5ps/3amT1hKtDeNPvMgoXXP8Ba2l+9w5gU5
 WhA=
X-IronPort-AV: E=Sophos;i="5.69,241,1571673600"; d="scan'208";a="125552379"
Received: from mail-co1nam03lp2053.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.53])
 by ob1.hgst.iphmx.com with ESMTP; 25 Nov 2019 21:22:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lIg0q5EOuB+L05E/H6DaJ+vV3YgzuaBdqvVAJqtA7w+e6dDCAkvmBiN1ctxcjuSJuYLvQxLxskhBjS2ops5ER8aahc9Qu3kwRgyWj8ABD0DC5G1+TjWACtCN5gBXL4xVjSNpJv12HpK3pYU4NRj7NHYZ7lRTuRANYuIeoGMXe3oV8dqbBXrgB2JEBTFZNAT5ly69NXWNBY2IxnN9IFfNw9ZZWsuGE+OUePtf94pXwKiWr31Mmkq+OHUVBD5gcAayCjotBqg5KaLj6ZvXGUFbWNaWxthk9EB550SRor0cvpUPv5FzZFVQppWXz6ZYF/AZDzSf1dlQAi8lzChg6ROR7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uv3NKpQiaMTtuA9aGgL0qXqJh4omLMv3zz30yZLlAXQ=;
 b=Ttfv2QXlhoqH7pVdUdpbgdUwwaMO46MKVKBd9wNUGFTIPdS6VZzRxSjxc6b4L9OweFbpZ1g7BuXdYbC06yEZCe1PYsQNdcSiFcansgfhJTZ2UITICw1ysFrYyQcszlPGlqHgfXm0E1I6qvN4v3E2QYINLa6/Pbfdi6fP5D/99i8jBC1gXOegI6NxvU4bVnfNu+fqftnEzILBxeavFutB+7GQBBTPTOROSeHxl0DaRKFbMNk2OKi9H2TDd0Ea8bDtzSUJvookDxFeUCWo3hYYOIslNd/ngELkEx1AYDuQhHWX3uhuhj5aWIRcfeCwswsFHq42SRTFZpR2aPkwgKMA3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uv3NKpQiaMTtuA9aGgL0qXqJh4omLMv3zz30yZLlAXQ=;
 b=xx1u+EdQW4p4UYNUW/M/1rEN27zTtJhhORvMintQUyNdC0HrlorfBc/jq3n1/20TURpGYsd5jdfxpydunFQx91t5B6OdILTxNfDikZ5UszKyunQcsSF1xi8gBcK2wMSkOXlxa7bTIS/UfEt4xcsiC0HWsbcNQb1ZG7hRs6sx2vM=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5981.namprd04.prod.outlook.com (20.178.246.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Mon, 25 Nov 2019 13:22:33 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30%7]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 13:22:33 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH 3/4] RISC-V: Select SYSCON Reboot and Poweroff for QEMU virt
 machine
Thread-Topic: [PATCH 3/4] RISC-V: Select SYSCON Reboot and Poweroff for QEMU
 virt machine
Thread-Index: AQHVo5NlvBKiweGXYE6LEmKXtKfRsg==
Date: Mon, 25 Nov 2019 13:22:33 +0000
Message-ID: <20191125132147.97111-4-anup.patel@wdc.com>
References: <20191125132147.97111-1-anup.patel@wdc.com>
In-Reply-To: <20191125132147.97111-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0029.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::15) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.21.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 450cd3e4-ca7a-4ac1-626e-08d771aa87e9
x-ms-traffictypediagnostic: MN2PR04MB5981:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB59813CE562E4B5CE8246C33C8D4A0@MN2PR04MB5981.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(189003)(199004)(14454004)(50226002)(66946007)(8936002)(2906002)(81166006)(81156014)(6506007)(66476007)(6486002)(305945005)(25786009)(256004)(76176011)(9456002)(54906003)(316002)(8676002)(6436002)(66446008)(386003)(66556008)(64756008)(110136005)(99286004)(52116002)(186003)(26005)(5660300002)(102836004)(1076003)(44832011)(55236004)(478600001)(66066001)(2616005)(71190400001)(71200400001)(446003)(11346002)(6116002)(3846002)(86362001)(6512007)(36756003)(4326008)(7736002)(2171002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5981;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZsfPepQwPy2ARMjbhewRmpyuwGrRwUWqJiAy+D4YtkZZzWfNDZv8arb7VozDHCewbLIhK+EdLey+VT7Rd7TdRRbP6yP9MwfH8U2iKJ2KNYUqs4oqs9sbCmpd/YTA95fXNYjzcwZZNmIa3bdpaKKzjIVequR5QlZOcw0Tjd5SPFOKvV+BiUCxLBbkMDU8JeQKlHo7Ed2oJaq5KrH5C7LUXNitMivaTgv+w9g9VEkyCYKl3mVL2Y268Zurd55/d8w70OlO/xKtOGxVRBwuIv3Kd/1k+v3zf1L+pi5ZGQcFjYvSfdUz1T3CBzgJ1zXV0qgscdFOpIVzQ6rjjH0pIyGmZh4To+GZFqF4WdokXRB5ur1NQbuWWKuTkn8YgEvaGhGJCM6uHUDDXeHpw0sDRSOITb2ADwjdeiPSnn6hMmhrQ+VZ13MRLNrXfgeCr5CP2uqz
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 450cd3e4-ca7a-4ac1-626e-08d771aa87e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 13:22:33.6042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6WExsfh5OV/AqzV3SNEE/449Ncaiu3tjgiUNrxN7ufLqwK5e6w9qBztA9gYZ/uoT2cZ65aBo6XG5KPlzfLedCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5981
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_052235_715980_881CC433 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.21.49 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The SYSCON Reboot and Poweroff drivers can be used on QEMU virt machine
to reboot or poweroff the system hence we select these drivers using
QEMU virt machine kconfig option.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/Kconfig.socs           | 2 ++
 arch/riscv/configs/defconfig      | 1 +
 arch/riscv/configs/rv32_defconfig | 1 +
 3 files changed, 4 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 62383951bf2e..bae4907b4880 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -26,6 +26,8 @@ config SOC_VIRT
        select RPMSG_VIRTIO
        select CRYPTO_DEV_VIRTIO
        select VIRTIO_INPUT
+       select POWER_RESET_SYSCON
+       select POWER_RESET_SYSCON_POWEROFF
        select SIFIVE_PLIC
        help
          This enables support for QEMU Virt Machine.
diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 2515fe6417e1..bf33bd40ee07 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -58,6 +58,7 @@ CONFIG_HW_RANDOM=y
 CONFIG_SPI=y
 CONFIG_SPI_SIFIVE=y
 # CONFIG_PTP_1588_CLOCK is not set
+CONFIG_POWER_RESET=y
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index bbcf14fd6f40..234213b4ea74 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -56,6 +56,7 @@ CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
 CONFIG_HW_RANDOM=y
 # CONFIG_PTP_1588_CLOCK is not set
+CONFIG_POWER_RESET=y
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
