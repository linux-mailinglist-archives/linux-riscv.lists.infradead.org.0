Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BEBA1C34
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 15:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/u4Wg45M3aQDz79o8M8itJxFfBC0i4WIL9hp9aaDkHQ=; b=kLtNFtabQiUXs7
	SucLHQxdPca1qv1JCG/CBZbuwz5FrfxkXrWdmSCeR69N6iTD3dzRWndwOrsMtVs5u5AYDa2rnGXks
	qHVDnoE3PTrBZyMGObb+bln5roMDibQiFPvpOj9uV9G5KLa+DXCsH54cB/zgUkpmptiDBZ/7jYFqw
	w+RdqPcMBovyJ+LL7kM8lrL6hI0XXsPF+mDFuNmhwqhhAjcgNa4fhXvCoogTwniOmbX7B1DeljdQ4
	JZiH77Phafu3OFR0luC3VdqslE3is8SIIBxtXUeF/9F2RjcreKt5bMS/sxZGGTg44ZfLZ41C3CO/Z
	fWcRZqLjR4rJGyLbn1mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Kvi-0003Zo-2y; Thu, 29 Aug 2019 13:57:38 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KvX-0003ND-ME
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 13:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567087047; x=1598623047;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i0dBuMtm4qYdmPHDPdzjlUG780xav8sFb1mfXlmWgr8=;
 b=rFE6Sqi7GwIgS/OgWbWpCiOOtWnACdpZRoKhHfMwEwGxen9mFN7Yqndb
 DkJOiezhOzCYnqOsopHK5n8eCukTHlvanXkketOZquIEpyMTw5IUeTNIH
 cu3r4ITftImJpVCgqjpWRTFzWW6QpYHt24HTQoJWrP5rR8REfyG7bRGak
 XRDAXrlx2hduNQ5VvmiJaAmTeN17cB9Rp1FloYkPNrUK930fgmZQe/4h2
 RGMJsqktqH1p1w+YyBHoYBvuTiwUrr2/hNwmJ/Oh3+PPjsfQ/1Y1zZ0yG
 o7PjZoGMeQfT6MtyEv/ONPxGJ7Nl3enLhd/ISpVKjc8mG23VKpFmHfn3q g==;
IronPort-SDR: wIf5S7IsoY6HEDk91Hb754q+ry0sE4X4hwmg4pqwUaFPAOehmO0BhGyjpGp4NhIyEabC5YFLQ0
 ILoWkXPt2pXMJ+zhZQzurPSXtlegEbQdiiu3D3u7aVIz03KZqzhkYuwewwiC9HY9cQRfv+Em3P
 6zOgsuBVuHi2LkSEvIushigmEtQWv0uSnLx+dqmJGU5s2znks6PBuBwfBUDUpldQ72asNjFKFA
 6KvVU5JxIIfdiS4AJYmOU/NKBULQO0m9/PCMnbkqzPRCIj1PjZRssu2Ynd1K9o07NpkzTXKoap
 EG0=
X-IronPort-AV: E=Sophos;i="5.64,443,1559491200"; d="scan'208";a="117866048"
Received: from mail-co1nam04lp2059.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.59])
 by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2019 21:57:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XYNNB1guBpzIyQTZ/zqi9zPHoe9HUWXJgLxEKxf7fqLyjwR1dVzDDVFl/PcjnphI24ZQ715kGCfd7FJt1y5oui78uKZMNuC8RRT+sBaolf/BgaJK/Vmc3FrZsAE35waOgnsv4u/erMHY551QAMpOUKMFEL/i2L8caqLTnaHMIQU+uFaXQxM+CBut/BAQCYhQ9dQ9k93acapKQ7WAE4AbdRlLjxC+9ZQS6pdYq2oVk9+MO1YLSgIA27yxGWqXjtNhEEkoK6+7/trimJH2LIkw3F/KRVwce3HV8ZXrMK0OH8EWujAkVb6gzXqJxjfUim6pHXDmvEcy/HjR25Ecz1IJ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6V1q6hJtlrVrDqgWao5UQv7SJqACoYta45fGWJ5PcbU=;
 b=XHPUClx/uuagQ+juIGBKEwxCFUrR/eqsSEyyC0HCipDunILgb1AST1mEWXYI1qtkiAEbfIPBllcX9Z/VoqfKUTeKGwxGb+mjoE/xn3UqIxb7avCsP2gjt4t052qaOjP2uUPkg9dSV5SYBDcJOBRtiOd9Y+tNPh2SzW3rMlWq8i4n48Zg/6No9M6YinSlhlzWccgNKxgrAGV07Iuxpe4fWX5GQwpX2qSFAYulRoHvBm2hlgHtXCQ+SnDuJZP6Kk6pjPQgvWu5OLISmOrQJTLcUfP1FTMlUdKp0XSLTpYCryJ1YwAmqS8xvceSA096KcBvl7CeIGiX4784f+L/xTpJSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6V1q6hJtlrVrDqgWao5UQv7SJqACoYta45fGWJ5PcbU=;
 b=oLReDMEc5JT5fJNgatdbGsez+NAb55AdL0GzryemUCNXc8v9nPcJs5E+jd7NRFvI0JM3ZSXIYYQETU9rcEiS3mVLBkXZmgL6/u9hZfRdArtPtfCFQh524pmXXdmvXkwpJKBkJvQ8B5b46Sw//k5np9Gc0GN065xml4N4q1r03ao=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6255.namprd04.prod.outlook.com (20.178.245.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 13:57:25 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 13:57:25 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v6 20/21] RISC-V: Enable VIRTIO drivers in RV64 and RV32
 defconfig
Thread-Topic: [PATCH v6 20/21] RISC-V: Enable VIRTIO drivers in RV64 and RV32
 defconfig
Thread-Index: AQHVXnGvxSf/dwB1Z0WFAAkZdKW5Yg==
Date: Thu, 29 Aug 2019 13:57:25 +0000
Message-ID: <20190829135427.47808-21-anup.patel@wdc.com>
References: <20190829135427.47808-1-anup.patel@wdc.com>
In-Reply-To: <20190829135427.47808-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:e::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.51.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1be532b2-fad1-4b0b-6af7-08d72c88d231
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6255; 
x-ms-traffictypediagnostic: MN2PR04MB6255:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB625566EDB7800C69B3558EF98DA20@MN2PR04MB6255.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:238;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(396003)(346002)(376002)(136003)(199004)(189003)(446003)(55236004)(11346002)(76176011)(386003)(2616005)(53936002)(36756003)(25786009)(5660300002)(4326008)(6436002)(316002)(6486002)(99286004)(6506007)(71190400001)(256004)(14444005)(6512007)(486006)(52116002)(2906002)(476003)(1076003)(102836004)(478600001)(81166006)(81156014)(110136005)(8676002)(54906003)(26005)(66446008)(64756008)(66556008)(66476007)(86362001)(7416002)(6116002)(50226002)(7736002)(14454004)(3846002)(66066001)(8936002)(44832011)(71200400001)(66946007)(186003)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6255;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HQp4zBRKubr6430BQXu9ixiJBDfv8ofyssd+41XkYx18FnvGw7O2v6LBcvovDNi3RSgoEP2I65fTfZFH4BWGIC+OlgeY0VlkbhAOEk7IugrUhG9BzwZHhGkidoHYdp1QpKgcSji96hoCogZWT7KQMG3oqmSW4NTl1Cpno3/WayaIJWw7pKSEBNBJDb9p5guXIwsd2ODcbT7/6K2XpNXJkIcs9JqT4if+otf/B4YcUvJIJdbv4wxmi41nKDYMJDI4cjXXwD38kjAbvRg3VZvWJgYVrO2U2tmPXY26J58MZZ7uIk7mu5ZFoKuEEynpgC5ZC5OVuVtBLVk90rJdEvcgwFv+QywwPYK3mA382hwH+kzy+n4syX3bK256o2noo1AkWBEeq3AYiCnLC62rVs+CNZX2KlAANSWNkTP3mYt34cQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1be532b2-fad1-4b0b-6af7-08d72c88d231
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 13:57:25.1142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wEkMGEbeodsh8FcoLIN4brDLTthjn2b1z/FZTJN9JKth8a1fd0hINACizehUkcz9fzfT5uFX/KLyubyiKyinLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_065728_163376_C3D1C1EC 
X-CRM114-Status: GOOD (  10.73  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/configs/defconfig      | 11 +++++++++++
 arch/riscv/configs/rv32_defconfig | 11 +++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 3efff552a261..420a0dbef386 100644
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
@@ -54,6 +57,7 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_SPI=y
@@ -61,6 +65,7 @@ CONFIG_SPI_SIFIVE=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
+CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -73,7 +78,12 @@ CONFIG_USB_STORAGE=y
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
@@ -86,6 +96,7 @@ CONFIG_NFS_V4=y
 CONFIG_NFS_V4_1=y
 CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
+CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index 7da93e494445..87ee6e62b64b 100644
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
@@ -39,6 +41,7 @@ CONFIG_BLK_DEV_LOOP=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
+CONFIG_SCSI_VIRTIO=y
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
@@ -54,11 +57,13 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_VIRTIO=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
+CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -69,7 +74,12 @@ CONFIG_USB_OHCI_HCD=y
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
@@ -83,6 +93,7 @@ CONFIG_NFS_V4=y
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
