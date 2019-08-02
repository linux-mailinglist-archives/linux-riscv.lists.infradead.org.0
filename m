Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F9C7EE02
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 09:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfJcspAmznPSMx9hePMzyufgI5+urU2ukPcsN8xVCCw=; b=AWLQ+LekX2/2Kx
	N0IEKz7H2ssi+7uomWJp3GBC9xskC6H4o8JTCeS90NFf3L7J97AIOatKTGDMjV87SaRUmfPJAdVvI
	08qO/ppHYu8ddIhuxrII+nqUTMT0JNXUN6DoUEaTza75T2B7wAz8Z+C3ajUKQlNSMtczcXCzMaCbR
	Ci8/0X0IU+siQ1bpf3Ws70Nywkl5onf/nEAYPAsJNvHqpRzbqy1grgI8XmYSwMcBYG5WcQC5hE2SF
	gdxlmSIhPawYyjnIdSDPStV4mm8r6TCQDWJ252UofKLakblLvRsX0koo8c7GRmzLZUYNVJQZl3jv+
	+xstGuzryRhSDW6eM+HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSJN-00041a-H7; Fri, 02 Aug 2019 07:49:13 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSJ3-0003sZ-50
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 07:48:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564732157; x=1596268157;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3sVQD24PwdMT+/uCMiIrGy+yEC76O3ceO712hzdkhZM=;
 b=DlLvXgkzvqXxYWaVP629k1C25/npPV8wHqQV2Xfwv1tveKiXmmMcDMs7
 xzwvJRxmnyN+j4q2fVEyysgwDWR4c1I1fY+YPpFiYqjE4Cs9YO5icjd9M
 TiyxZRBD4K/lULuCwy+af/zP8ZK6bu00/Pw1odSz2R+LVfylJ4e9ixTKB
 DqRWnSs2mpNgXw14nq4QZBehChHI4xsBVZRppxI5XCM8yAn9qUs2GqqjG
 cEDBFsMdEV7zBg/tpVMBiYv2k2H0W2IeAK/HlDpdrluIeY2LgCPwJBFJF
 /7xrgtcQv0NKMh0lepI7QQGbJrVRm7hCBaSLCUQu86YB4w7nsAJXY947b Q==;
IronPort-SDR: 70PsoMnoUO1aRTxdHFVw35TdCrkoOjDl54bV4n2SkAHY5EQL97raDZfQ0ZaFXZD17SwpX/isLa
 1lIS4SQOIg6kkk4AITNvAUeSxAAm0Q4Plzq9gDcnGUt1QBDshBsODxcvnTnXWx6wKJSRUDy8r4
 rrzHwW5jRQJ4qeC1U1hbnWkOtfAvZKc+AnI8xrZFEb6AL5pDxZk5NJdEuk1Vu9oyvFvzpmuBWZ
 GVHLDY0nKA+u5aUkFVDZx9QcrAXXMS0ZrEFQL2+LhXTeuM5HpUb48k6t7hJMcmOCEfXlyC9xbi
 4l4=
X-IronPort-AV: E=Sophos;i="5.64,337,1559491200"; d="scan'208";a="215006751"
Received: from mail-co1nam04lp2057.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.57])
 by ob1.hgst.iphmx.com with ESMTP; 02 Aug 2019 15:49:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cuHSj6CNP1d1UrV8qPIW3so7FAQ15a0A12hcd4qeEGcalB5ggANCDZjAS7KqgiwHrDRr1stleB6nxwIPELza8URB2+rarmae1qFvR+5lUQMvbDs4Tgcca6KnkcPBJPimE+woqOg9pYaZlj4Pn/Tu4TaQUyYsOe2dnhA63S/85ZcDhy4/jnX9z1/ZRTMT2VyT2kW8lKenVqC4dvx+q7piPKPDkOK9BzmY/P+rSTeBKLHGXWkQxNBhlhRICeKfmzZyhWe4WgUG7kuKhCxGSYjno3U6OwCVnrYtXEtvSD/+borVD2cyio+9+7yl7/C1PguvfUmnXIOH4QW8pWzE34uVqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ot1gvoL1ac5Bhj8HPN2EC5ZSgrmJBFnsvONQ2G1Vovk=;
 b=NZbC9aX3KPK4CzUEflo0R2QWGbBcOqNyVIlepepIepHDxiAlsAy0N5cZ8CBYZBcyg4nx0GtLx+DnrX0A/39tVavNh/Vbs2I0IbPmeuyHT445wyDqG2eaVcqVzieHutaXMvgBm1yoIbHHKmQdfNVoDWCWU+8tWeLIkmCoQYpFxOACBwdcKDhMrk1DlzCMr1/C2ek35S5/UwsFTveKygVb9i9Lg2S8D/TeGXUeXHapNLFlJKoFs4qbkouQ1sHE8EUwJOy1HpOZZzLotSpV9bOMXcmHd3neYxawC30yzl1P4h4TfZ/7endhZc7jHEam5lzGL/V9VWYoRA2IyC5RDVFEWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ot1gvoL1ac5Bhj8HPN2EC5ZSgrmJBFnsvONQ2G1Vovk=;
 b=OCuE0Vggrqj1El4W5L/uPAO7S24oH7TB3dic748s8upF3U8ZEaAytmX/f6YR8BUjfuw09JUnIKQSuEKL6OT25P84SPnPOL8teoMcHN0izOOHJ4hWKtNcT8XbRcUopd6FYrnY6VRyyUoqaB9NZ5tyx+ws4ArU2iPG7xNi8OktaM4=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6208.namprd04.prod.outlook.com (20.178.248.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Fri, 2 Aug 2019 07:48:49 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 07:48:49 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH v2 18/19] RISC-V: Enable VIRTIO drivers in RV64 and RV32
 defconfig
Thread-Topic: [RFC PATCH v2 18/19] RISC-V: Enable VIRTIO drivers in RV64 and
 RV32 defconfig
Thread-Index: AQHVSQa4U9A3Oes97U6GsDcP3hBRMw==
Date: Fri, 2 Aug 2019 07:48:49 +0000
Message-ID: <20190802074620.115029-19-anup.patel@wdc.com>
References: <20190802074620.115029-1-anup.patel@wdc.com>
In-Reply-To: <20190802074620.115029-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0111.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::27)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c445b94b-8f05-4cbb-9618-08d7171ddae8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6208; 
x-ms-traffictypediagnostic: MN2PR04MB6208:
x-microsoft-antispam-prvs: <MN2PR04MB6208F0E0862993BCB72B9F3C8DD90@MN2PR04MB6208.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:238;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(39860400002)(396003)(376002)(346002)(199004)(189003)(99286004)(7736002)(305945005)(9456002)(50226002)(2906002)(8936002)(14444005)(256004)(3846002)(14454004)(86362001)(5660300002)(6116002)(478600001)(53936002)(316002)(66446008)(64756008)(66476007)(66946007)(66556008)(6512007)(68736007)(81166006)(81156014)(102836004)(55236004)(76176011)(71190400001)(386003)(25786009)(6506007)(54906003)(71200400001)(110136005)(78486014)(476003)(8676002)(446003)(44832011)(66066001)(6436002)(52116002)(2616005)(1076003)(186003)(7416002)(486006)(36756003)(6486002)(4326008)(26005)(11346002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6208;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cypk29NwHkGu4QwgI6wIuU3tcUL2UUlIstPB/LmreB4PpFWx/psqajHKoss1ktiafXs+8gonb4SLYdphtTxMvg3tVy35sc4QsydSaWIGSw8OdKkjo3LkRtE6d9WUPeBFkqPomIppZmGdMUy1ZgPnfe0BY4i7YwYCkz0SshzwPk4ECM8E8pOikz40LFVKlrCOfgyseXxU9xgWf/3aEDo4tDaxKOv3S6gbRkm/gwa/cVbeqh36BpXOq7c0OlcWpRCeC1hJb4DViOM4Q85JcmJr3JJiLKVTSYg8cXQQxb1VOHSXWb1LxxxC/bCGjNu/Jl5xHVRkWthI4fT8BU5d9h37eu8AowfsjveOjzGwt4UVvj4kjeWC9i/1KT+PfMytsDkwNEUIsgQn40ud9YZSzIqkw7umZYZh8p24sVceBQW/bFI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c445b94b-8f05-4cbb-9618-08d7171ddae8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 07:48:49.2579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_004853_419256_FDB1D775 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.20.161 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arch/riscv/configs/defconfig      | 23 ++++++++++++++++++-----
 arch/riscv/configs/rv32_defconfig | 13 +++++++++++++
 2 files changed, 31 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index b7b749b18853..420a0dbef386 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -29,15 +29,19 @@ CONFIG_IP_PNP_DHCP=y
 CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
 CONFIG_PCIE_XILINX=y
 CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
+CONFIG_SCSI_VIRTIO=y
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
@@ -53,9 +57,15 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_HW_RANDOM=y
+CONFIG_HW_RANDOM_VIRTIO=y
+CONFIG_SPI=y
+CONFIG_SPI_SIFIVE=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
+CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -66,8 +76,14 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
+CONFIG_MMC=y
+CONFIG_MMC_SPI=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_VIRTIO_BALLOON=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_VIRTIO_MMIO=y
-CONFIG_SPI_SIFIVE=y
+CONFIG_RPMSG_CHAR=y
+CONFIG_RPMSG_VIRTIO=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
@@ -80,11 +96,8 @@ CONFIG_NFS_V4=y
 CONFIG_NFS_V4_1=y
 CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
+CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
-CONFIG_SPI=y
-CONFIG_MMC_SPI=y
-CONFIG_MMC=y
-CONFIG_DEVTMPFS_MOUNT=y
 # CONFIG_RCU_TRACE is not set
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
