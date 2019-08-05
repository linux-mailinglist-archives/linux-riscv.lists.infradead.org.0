Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB2C81DBF
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 15:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhCZG08AJGfRab+jiCH32N2eF8ISOk+I6h/vyM53aRs=; b=s2S7/9mCYFQZnk
	SqcrEATuugw700Ot+sKBnFUSdWlbIMv49ykkzG6SDXfH/sgwvFacfFvR9czm82U6NAnRQt88KOBq7
	8qWoubPFTsHimiazm80KTUoRxV6cdU2Tmd3PNcxrBUGCBs8fR7Ya9oH4xXvkWd5zn/CkyynDe8Dag
	tL3BD+bEfk5P9FqlLZJkXCwPiAqGMjtduiXjyma88+o8XdCNRn9oo9Bs8bjW6ZEA/YAk4ZLX8qRDS
	NVZ8uhddSu9pePFZFXDcsBzNJ2G8QbEBn0yg0PsS8xdpIyTzs1XsVp3S1cNm22r8IJs5Jp8J1hNaQ
	e7KYxeK4IuEXI/tAWeTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudHx-0002ld-MW; Mon, 05 Aug 2019 13:44:37 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudHt-0002kP-QE
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 13:44:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565012673; x=1596548673;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LLTJgNCyVAD0HBTVMfvNeuX3bwcXsyRjidmw4ESBC3Y=;
 b=DKF1ssULJUnv/WtdF33XKHKIixM5L6x4p5P5ESiSnkAf7ira9L91hnMv
 n3n1g1wFmScrd4Yc3DfCAklCoOFBbZvWpWBavbWigSiMclouG57ksnWJv
 0y1BSjxse3swqe/v8Gfayzfsq70ru4z4m92dRcQ0zKgrbETfrGqjfBnuE
 P+9eItMc1kDJGX3D4iSyqGnYxD7kzxZkSUq+KXqUNrD82lmY3PNtl3cXu
 uamnTWMLOx9nPNafzc+0tzUbDbHlTP6UaYly3hWNWWwpPWkUptWJilQVM
 htNgKm/EtC8xrrXcmNuaEAQNiFi8+iWvqjEGEp4AJzjP9Hf4tb1wwz0V7 w==;
IronPort-SDR: c1U/RS7g/rIFwyjVspLUf1zkyDVSV6HWzqSEcqzOWxQzDqupvhhemw7FGALYjR/kfLxa4M8geo
 7wGCNZe44vC3VyxCQoWBeCzmLIKWtjpJ4egvSNJo1Y1bsVHQQ4YJeB9RjmujMXaF2ZOPbW+/aK
 SG+lPh+ZWtWjhRbpNhmK5NOOITeXD0tKloyaw758hX8c9FTuQTEuYHGVDArWZlAPslZf0Pm7EL
 /Nf11+cyT7KcwA8/dorqM90Got8YrHFNIo4O8iKa2/YAp2TmO85zC9nTTDGkStRbTlTsDmPHoA
 LPw=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="115996719"
Received: from mail-sn1nam01lp2057.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.57])
 by ob1.hgst.iphmx.com with ESMTP; 05 Aug 2019 21:44:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZOh9hGtVMKe2yLtCmMKTIPhHMBLIvHPBZgTEcdYw6isZ3Ds4laIw+xKV8ZC6r5bK8zRoUbMF3u5XgtiVd3iBioAsg0xR8/+1FG56Hl2c3gOlje7SRXnu5MjQOORTUzjT5G3S/lMirsRZTV95P/O3+gAQsdV0WcYzOs3+RZmWinDPLXFcedM1QZ6BMx7lz/KQdwnuWYYUhPCaAmoygp8iYrpb4DWGRgq7OjfkL0d2cmwjeGq5o8XDHajfiwcY5WmBijTwUlHOjhiQzuzYRGCyVrcU5/ztPINwQajtb0ZOM3Fe0R5zDSCZKS+bY0+79PgsyGWGV1u5Idqz7XOzJYFvPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rY2bVuq65cOlebX3boys5tycXEhMoWErW+e7acNWF8k=;
 b=R+pJq0WJotJzCcReT+Tqdk9LNqgx9hBuO+jV11GYUJNSBDZLmqj+pp/53u3yioPALbPkdZHJn3M4PG4Hk2Ic/iY4fY3gP+a0AHVr/+HEJn+Dqy3JS9H2T+6EFu73sYRMnE0tzz/jBkgo837tecjUBlzqUkRplfvZrHeZ+56bqcw3f6o7Lawjo9psFGjxGLFOCgeOtpo56KLwr9l0XqprvO2L0H6Ogy6sFL6Zy+91/p8k74ewYya6z/UM4LlPESv6pYO2k/m1lq4GjRsA2ipkRcGP1dUryfoAiWHFPq7nXdO6uxXDgV8e2inlSibRfUh9Rsc9XROSxyNt53FUhxjvfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rY2bVuq65cOlebX3boys5tycXEhMoWErW+e7acNWF8k=;
 b=ae0YLhp+LWBnqaN2Sp/r+xR2vIQlVtWVVOfZvpT5I63lHrGsf+rspmTNYBBMqZfItQQf6R494fG8jcaDMNrxsLwuTcUtNRcTxC4vxcn9sAnyBrm33j3Oz5x3OqBmZ7nqVZT4zvjZq4TvmlChEIjyXwscKusiNo6rj5RnC4jvyH0=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6446.namprd04.prod.outlook.com (52.132.169.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Mon, 5 Aug 2019 13:44:30 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 13:44:30 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v3 18/19] RISC-V: Enable VIRTIO drivers in RV64 and RV32
 defconfig
Thread-Topic: [PATCH v3 18/19] RISC-V: Enable VIRTIO drivers in RV64 and RV32
 defconfig
Thread-Index: AQHVS5PnXYsEbhOYsUCQ1bxJLhIz+g==
Date: Mon, 5 Aug 2019 13:44:30 +0000
Message-ID: <20190805134201.2814-19-anup.patel@wdc.com>
References: <20190805134201.2814-1-anup.patel@wdc.com>
In-Reply-To: <20190805134201.2814-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0087.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::27) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: edf96e18-cf5a-4eae-4778-08d719ab0a3f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6446; 
x-ms-traffictypediagnostic: MN2PR04MB6446:
x-microsoft-antispam-prvs: <MN2PR04MB6446AA630D4393EDE2A35E768DDA0@MN2PR04MB6446.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:238;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(366004)(346002)(396003)(136003)(189003)(199004)(102836004)(55236004)(386003)(25786009)(4326008)(6506007)(76176011)(7416002)(53936002)(2906002)(478600001)(3846002)(6116002)(44832011)(2616005)(446003)(476003)(11346002)(86362001)(486006)(1076003)(6436002)(256004)(110136005)(6512007)(316002)(54906003)(14444005)(6486002)(14454004)(66946007)(66476007)(66556008)(36756003)(305945005)(81166006)(5660300002)(71200400001)(71190400001)(68736007)(64756008)(66446008)(81156014)(7736002)(8676002)(8936002)(78486014)(99286004)(66066001)(50226002)(52116002)(186003)(9456002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6446;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lJJ7x1E51MuM6xBrAgzf7EaurNnyueQ7zyh1iOElME7SOAzmWc0uumJ1JU2ziE9Gd/ExQhCIcbsXtWEJosFuFjXXMYovm2RxXcmf9ESe76jzn5kz9yGD1RJGbnwJhK+GkQHzWin1tUjt7e5im+ilGxGU6W4B9lRIOsKGXbG9ABy4m2zdWLMMD2nvGV0Mayzq+Cby+TSvZChd3roGJA2WmUNnopjTFm2qG0b86OONoIgG1lF4xBm2goKchfKv6H3LnIWkJ50eZZM73R8nsrxSm3XMkp0X20RWpWMoB3xbasz0dn5w903lVVtDNVpzzfwsE4q92JFi1wAP3doax+2r24L5MPmpT5SNzVMr7SXcOMx32fSnxCTbkn4xOUNfAjzt6QxtrSezCsMblJit3MWk1XLfqU2eglQB0zvRkunvme4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edf96e18-cf5a-4eae-4778-08d719ab0a3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 13:44:30.1753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064433_971109_080AD76A 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch enables more VIRTIO drivers (such as console, rpmsg, 9p,
rng, etc.) which are usable on KVM RISC-V Guest and Xvisor RISC-V
Guest.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/configs/defconfig      | 13 +++++++++++++
 arch/riscv/configs/rv32_defconfig | 13 +++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 93205c0bf71d..420a0dbef386 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -29,6 +29,8 @@ CONFIG_IP_PNP_DHCP=y
 CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
@@ -39,6 +41,7 @@ CONFIG_BLK_DEV_LOOP=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
+CONFIG_SCSI_VIRTIO=y
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
@@ -54,11 +57,15 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_HW_RANDOM=y
+CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_SPI=y
 CONFIG_SPI_SIFIVE=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
+CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -71,7 +78,12 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
 CONFIG_MMC=y
 CONFIG_MMC_SPI=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_VIRTIO_BALLOON=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_VIRTIO_MMIO=y
+CONFIG_RPMSG_CHAR=y
+CONFIG_RPMSG_VIRTIO=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
@@ -84,6 +96,7 @@ CONFIG_NFS_V4=y
 CONFIG_NFS_V4_1=y
 CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
+CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index d5449ef805a3..b28267404d55 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -29,6 +29,8 @@ CONFIG_IP_PNP_DHCP=y
 CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
@@ -38,6 +40,7 @@ CONFIG_BLK_DEV_LOOP=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
+CONFIG_SCSI_VIRTIO=y
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
@@ -53,9 +56,13 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_HW_RANDOM=y
+CONFIG_HW_RANDOM_VIRTIO=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
+CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -66,7 +73,12 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_VIRTIO_BALLOON=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_VIRTIO_MMIO=y
+CONFIG_RPMSG_CHAR=y
+CONFIG_RPMSG_VIRTIO=y
 CONFIG_SIFIVE_PLIC=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
@@ -80,6 +92,7 @@ CONFIG_NFS_V4=y
 CONFIG_NFS_V4_1=y
 CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
+CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
