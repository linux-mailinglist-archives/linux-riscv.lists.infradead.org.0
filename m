Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0515F108EBF
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 14:22:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I10dE3tqmC+7w3COAz6v+a1vVqJoz5rxfid0MEBCYfs=; b=ZuOxhGerZmEuvk
	QE093fCk394zoCePp8q9SxmeOoejW/dgjN8ViVE+zNsYCy86kzOdKe6PZr/DyMQ/qCbJEyh7MyiQ+
	6tfQLs1nm/4aNERNSopOvVZacAHaR61dk2MV5NAiwfmGOjkZuuR3eaPLGfE7Ltngp/dVNlAgPW5wC
	GIDi8QWuk3RqxY3EprdiHftoBV319q7cWFIINNdEIBYfPl3mc5r1mmU/M1YOl5l/Mir6+LcICKrUS
	8GBQmsV5ugIR4G/+2S1mHfPXqwvy4uHTySu63LhfZewWxIMG21GrIw08F3lqJuHyIKu5e4BBkVaGC
	AImngnk2Rovvckk7qUVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZEK2-00057W-Ot; Mon, 25 Nov 2019 13:22:34 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZEJy-00050s-9G
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 13:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574688151; x=1606224151;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9h0rz1WfUC8o5OlchWgdIPitNM3APph40biikbOceI0=;
 b=g4SiKUndOLL55blRFTmv6dndbdchBeruTEpzyCGlWn7+q/Lq6Yj0Wsfq
 AE+WbtU4FSC3M+Qu9Ch79+tQQBvM2qVkLZ++W5sYvHapuYUXv+8ctWK4R
 NSt7sJQKqt7ZSwTUaXOpWrSLnhPOzj+W3Nf8bLd4wpVJCvK7TGBiM01GP
 QLUeTfMbKgcYlEZCoSuGGYw96e/47QuAp/M5+7t3lRa1dGUrEzftVZ+XK
 AfEHUqK6upUVkM4NLKwJMQepVObrM7yjcT5kB/od9utajDN7bbtkaZKNg
 xcj8orNrT41u/EYHU3Me3/rqVckA7nvxz1UrXMRQXfqmNVyRD2quySHU4 Q==;
IronPort-SDR: yImNxP1ZV+ES2o26K6T4UPV4GFH7enVszpxSyc2UiAjJnNoO2GTndQke1o975SGVTD0W7PYDoL
 jqTL6SEK4yIJ6Xdh5jFeBqzO1L6mDBfJxu4rr5Azp1WIXcC/NOpDp3/W/yU6eB+vEX263uVVu2
 sbSv7iUJg6899TSFeJbjU2fJz9AwfhQMd4XoJ7pR+U12wX7n7yvYWa1FABOvhBE39KndsU4MwM
 M/307h1aItOozSiq+waN2jjUycjigRrAewHO9Qy0RilKYWA3aS0M87jE3GL+irDwPimXB639bd
 300=
X-IronPort-AV: E=Sophos;i="5.69,241,1571673600"; d="scan'208";a="125552370"
Received: from mail-dm3nam03lp2051.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.51])
 by ob1.hgst.iphmx.com with ESMTP; 25 Nov 2019 21:22:30 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n1mOJ6z0nKbo/zfnT/5IokDTGDr/GH0rzFJpZrh5qHkqiGmE1M7lpNiNVTp9kVKIOCldQ0iPDn8YTU50t20dqY1ajicNaNpBwchTMtF18ikWeEhXy/uTkjxuRyyfstij9cDsHc0vJkqMwBg93gShUvAnVds/Kam2Fwpx3otHuXQg3AfYjHXyMyv8BTKFglCsHMH25H+E1yh6AxWFnvv/gS252/6negzDIT8EKJZgMNyCSvcpJwa3F0bo0jAkoXDfSYqpRS3k65hLsXumjegS7RD521nZ1pKzZVRRRQQmfibEmxzc8FqsakIZbGqK//DBFIk9e0kF4JUyK7/gPxikJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Xk6zWwyjnMHB7R83Pmxe4MYmoqHePCkBLSupRrr3Q0=;
 b=fu8S8stbNXm0gE8xLeIkn3xPwIwTXo4/SAlm4l8P8sBclJSD9YiUY/5hscBO6VYbKDJsCAOE0u5GQtU203DlByacLxt2dcb/LbNBY2bTIKuWr2uJjUPuGHvNnPhIP8bAP2QZJzvuMC364rUNGjVTufF4klwdSkBTX+unZvc/HvxIswCRdkBmip99x/ZhwwqbeWrEvjC6P5RDoaMTloS0Et8jKn3AEsaxbZU392brjeX3AYYe9yRWgNLynNphqOR6SpkNINCZg5JwbpLamH0QPZVlwuWSHK6ov8Z8sfk+LSNTyQUxur9E8/hok7kkVomt8oEUe2Pl9eJov39AikxuaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Xk6zWwyjnMHB7R83Pmxe4MYmoqHePCkBLSupRrr3Q0=;
 b=Kas2NRNpLDm7f4+9FC94vLYK7LyPPeNuaS83LS2BSmB40J5l7xyxYFWcqDxloLuonmNykPBsqTJNwpmrb6YcmqEE56Fz74B/TlNr0Q4ed+xEbRBWw/qBuPnEEAMt1VsUhLsWklKOiuL3KsPbki6woQpDVtQ8veFqaI+66LUzdc4=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5981.namprd04.prod.outlook.com (20.178.246.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Mon, 25 Nov 2019 13:22:28 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::7949:d205:5ad1:1d30%7]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 13:22:28 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH 2/4] RISC-V: Enable QEMU virt machine support in defconfigs
Thread-Topic: [PATCH 2/4] RISC-V: Enable QEMU virt machine support in
 defconfigs
Thread-Index: AQHVo5NiSWkPf1raukKwhkFovIPUMg==
Date: Mon, 25 Nov 2019 13:22:28 +0000
Message-ID: <20191125132147.97111-3-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 78cb7a62-1f96-46f1-9136-08d771aa84cc
x-ms-traffictypediagnostic: MN2PR04MB5981:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5981E821E38BA1E969C53C9E8D4A0@MN2PR04MB5981.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(189003)(199004)(14454004)(50226002)(66946007)(8936002)(2906002)(81166006)(81156014)(6506007)(66476007)(6486002)(305945005)(25786009)(14444005)(256004)(76176011)(9456002)(54906003)(316002)(8676002)(6436002)(66446008)(386003)(66556008)(64756008)(110136005)(99286004)(52116002)(186003)(26005)(5660300002)(102836004)(1076003)(44832011)(55236004)(478600001)(66066001)(2616005)(71190400001)(71200400001)(446003)(11346002)(6116002)(3846002)(86362001)(6512007)(36756003)(4326008)(7736002)(2171002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5981;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sxkw8QmjxrdXiJzpwI0CT38yfe/CUZESRoQivSabSz3ZsqVSA448UU+MufOiVqreyROVhxMiujOYq6uZJSnwdAQGjh1aaUBfLiQjlOCV81z2PL9em11MBihiTKIfbAcCCWn65fxuhvapJXbRXIpLbZBAMPDiECulSeHjGRA7W5C25WN2eP9Ah76ja7TnFb4TJPew4Is1BV5+Nz1xp12ZjZ1/JZmXObnsdozFGN8Cy5to2TURetEtsB0WFrAbLLPzungyeG5C/gd4OjijhLm6b2OQD3qprT7G2HfVRhg5pWtYo09XnHcywunK1n32MyDRyWJ3uHD8RSWufbGzSEgMFp5P0rk9FszJBC1DgCfxaDpJVEN8M7SWCSiTT53e1vDNo7JtlleXbuynBwB7eJMeXnUJ+8sbE+xlzkK5e1Tqcp4PCp3jEF3VDwBpuZfMIhY/
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78cb7a62-1f96-46f1-9136-08d771aa84cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 13:22:28.4221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 56hWx4fLJJTUta5/gsY9Mzi2R02Wn/dPM8F+oRkbbZpftDwHdmY6cc0mmNPlfLPwVSfs60aPYHw6YiksrYcQzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5981
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_052230_405866_6ED5781E 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We have kconfig option for QEMU virt machine so let's enable it
in RV32 and RV64 defconfigs.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/configs/defconfig      | 15 +--------------
 arch/riscv/configs/rv32_defconfig | 16 +---------------
 2 files changed, 2 insertions(+), 29 deletions(-)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 420a0dbef386..2515fe6417e1 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -15,6 +15,7 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_EXPERT=y
 CONFIG_BPF_SYSCALL=y
 CONFIG_SOC_SIFIVE=y
+CONFIG_SOC_VIRT=y
 CONFIG_SMP=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
@@ -30,7 +31,6 @@ CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
 CONFIG_NET_9P=y
-CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
@@ -38,15 +38,12 @@ CONFIG_PCIE_XILINX=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_BLK_DEV_LOOP=y
-CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
-CONFIG_SCSI_VIRTIO=y
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
 CONFIG_NETDEVICES=y
-CONFIG_VIRTIO_NET=y
 CONFIG_MACB=y
 CONFIG_E1000E=y
 CONFIG_R8169=y
@@ -57,15 +54,12 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
-CONFIG_VIRTIO_CONSOLE=y
 CONFIG_HW_RANDOM=y
-CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_SPI=y
 CONFIG_SPI_SIFIVE=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
-CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -78,12 +72,6 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
 CONFIG_MMC=y
 CONFIG_MMC_SPI=y
-CONFIG_VIRTIO_PCI=y
-CONFIG_VIRTIO_BALLOON=y
-CONFIG_VIRTIO_INPUT=y
-CONFIG_VIRTIO_MMIO=y
-CONFIG_RPMSG_CHAR=y
-CONFIG_RPMSG_VIRTIO=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
@@ -98,6 +86,5 @@ CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
 CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
-CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
 # CONFIG_RCU_TRACE is not set
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index 87ee6e62b64b..bbcf14fd6f40 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -14,6 +14,7 @@ CONFIG_CHECKPOINT_RESTORE=y
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_EXPERT=y
 CONFIG_BPF_SYSCALL=y
+CONFIG_SOC_VIRT=y
 CONFIG_ARCH_RV32I=y
 CONFIG_SMP=y
 CONFIG_MODULES=y
@@ -30,7 +31,6 @@ CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
 CONFIG_NET_9P=y
-CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
@@ -38,15 +38,12 @@ CONFIG_PCIE_XILINX=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_BLK_DEV_LOOP=y
-CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_DEV_SR=y
-CONFIG_SCSI_VIRTIO=y
 CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
 CONFIG_NETDEVICES=y
-CONFIG_VIRTIO_NET=y
 CONFIG_MACB=y
 CONFIG_E1000E=y
 CONFIG_R8169=y
@@ -57,13 +54,10 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
-CONFIG_VIRTIO_CONSOLE=y
 CONFIG_HW_RANDOM=y
-CONFIG_HW_RANDOM_VIRTIO=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
-CONFIG_DRM_VIRTIO_GPU=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
@@ -74,13 +68,6 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
-CONFIG_VIRTIO_PCI=y
-CONFIG_VIRTIO_BALLOON=y
-CONFIG_VIRTIO_INPUT=y
-CONFIG_VIRTIO_MMIO=y
-CONFIG_RPMSG_CHAR=y
-CONFIG_RPMSG_VIRTIO=y
-CONFIG_SIFIVE_PLIC=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
@@ -95,6 +82,5 @@ CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
 CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
-CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
 # CONFIG_RCU_TRACE is not set
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
