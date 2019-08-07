Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A685E84B9A
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 14:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhCZG08AJGfRab+jiCH32N2eF8ISOk+I6h/vyM53aRs=; b=k+aJP2E1URolFI
	Vlf0iBB9ewwhFPFJrrK6/SQXHIOBdVi9DJfVYJjUi3R46VzQbOc7dj5VW0e4+Jdyw+YHW+0H8WQNj
	yoSYU2UHTby4rP5rjRwdPbkrMkoaRO95rC9EgmGwjjVJPFeM58mtq0SqS7c34fU290fD4LfCZdDrA
	ZhKbGZn8QmPv6loZCRJXa7B3wOtkxCv0dUTfHNt5igvNrpJo7QQkTu5KpKS3j+xAKIJtcdmlxz5xO
	DbLJpq/4QeSL5DeIpb4brIjcojqYpfMScPZndZSuAYbZJLe/WNMTxwPCfz/nNeFgdE+8kQS4wK11x
	gZmBZg0rTtnUGsiDvxDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvL4j-0005ty-1y; Wed, 07 Aug 2019 12:29:53 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvL4e-0005Wh-EA
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 12:29:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565180988; x=1596716988;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LLTJgNCyVAD0HBTVMfvNeuX3bwcXsyRjidmw4ESBC3Y=;
 b=dRp000TUii0hNmLkVyadeL7cxhJVcLqK6RVch/Jt21SDLYQ620lTlGbO
 ynnVbviaJSl6EtqTcy3oZj/eGPeSwPi+qlgLa2J+DlQpC+3t2cvCWenCp
 5A6y7w9f3Y1EAFrcuYff5dbbC/qttKBfhwVRkYLNGx0kW8vQ/y1KrJF4o
 Eyjo1ovnxhJhNnaKshgH0RABgLINKE/BWoIp09WGR9bppyvH/4dJlIijR
 FfAFsrvQEhL0L2uCMgd11oBesCjQhgaC5AOoYOdmkW1B+eCKAgI/Ys+pi
 CQsOgAkndsmcNBB5QKxtM/0Kv8iA1IlgtQ0bAPJLoKDaeN3GHtxEpc8Zj A==;
IronPort-SDR: G4jWcRg6tMiuB/OZLuzGyruakZoXf2QfgKAQgImoe5jeeRbXDmoIrSfrkSUHrpm9WCUfQiTXE1
 2Otj+LgVFfGmC0ak18ALXRajsjHdJCojKkM0a9k31u2tpZFIjsAjBr2C/fYPvq9xlMS4lwU4XF
 UEmelpTldisTnQwErZn9lZklSYBPqK+j1AIstOmMe2GT1psKkN+iRY+zkdjLgpAilhc07e8nsE
 AbYEP4k9cfZn7bLBJClj7j6Efi8l9TyIIc2qdgJCQ0YpKeo9i1umrCBujz2AotKucsBD6aVD+M
 8Mk=
X-IronPort-AV: E=Sophos;i="5.64,357,1559491200"; d="scan'208";a="119865608"
Received: from mail-dm3nam03lp2056.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.56])
 by ob1.hgst.iphmx.com with ESMTP; 07 Aug 2019 20:29:47 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/RibwNEhTY2ti5PrKK5M6JiC/GsOAaPKJutVOeoA7eXY1aMmHhjtzq90ZZIqZDFpX5+xYW4Kv1ke0UlhKSLcDbMPRVGcxAhN6UE7EImZjaMtqjKPz2KVfwzbnjsr6jogw76efKvr3PiZ65xJqpiRw4h/yYFcpKG1NNbjDB8mwo+8X4c9oajVeMlXiN8vazL8k51Jwgjk7VvW9jWXXpefA+FYqniJT9s29NqxHbVhjn/sWUG0jQ8q4/0fDFMFAn4lrmf3Q7/FqmhTdEgBKIIsPmQUCAEMaNxz4VqWFtin8j7rMtvALySSxiZz34BOLb5iHHmCkJsi288YFZ9X4AZNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rY2bVuq65cOlebX3boys5tycXEhMoWErW+e7acNWF8k=;
 b=luGQh9sBL16YvaKs3VI8RQld7a5/WkcXiOJC5qu1j1g7NaAiBI9bndhCrrUyl4Y2TOOMi5GvD1D3dmaqca62yie1tQcWBgkkfNtO0XJBpMxGcVN0nuoMfkfsZj6zXIEwVbN0L4qa8OEyeCt98ttYrgAvmAk4d55HEGqEJzwv/Mkl6uwyZFHhmG9ZnqeDcsDFoQ2xfcvewC2RYkKHAK7KCjU4Do1ngguB0AEJhOfUYr4dXTfrDmWVV8EygcI8lnbYwaaydu8pxV3uJ8B+ZtZMgXgbmtqM1nnZKe9/VGczsF8Hfp68xKlo3v9Tyzz+H4m01ocTK8f890uWo9PW9o0MSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rY2bVuq65cOlebX3boys5tycXEhMoWErW+e7acNWF8k=;
 b=bcYc40EmRDnDf+lmXodrsWc5h4TLDIkPpNGc7dUNPzoNQjbtDqKDSWn+s7oCgGAtSD3aC8ETw4+KUYWRtHxnVhN6/M/927GzO1VPweu/ReCdszc5KdDxz39ka6i33qEXiB+Z/oJ37Uk+e9/CtpwuGID6b9xU9QwHQxI+zCSj3uE=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5821.namprd04.prod.outlook.com (20.179.22.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 12:29:46 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 12:29:46 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v4 19/20] RISC-V: Enable VIRTIO drivers in RV64 and RV32
 defconfig
Thread-Topic: [PATCH v4 19/20] RISC-V: Enable VIRTIO drivers in RV64 and RV32
 defconfig
Thread-Index: AQHVTRvLa7uY6eE0xkKO9JocK2GkAg==
Date: Wed, 7 Aug 2019 12:29:45 +0000
Message-ID: <20190807122726.81544-20-anup.patel@wdc.com>
References: <20190807122726.81544-1-anup.patel@wdc.com>
In-Reply-To: <20190807122726.81544-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0097.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::13)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.52.255]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 234c26ab-88e5-4fcf-f32b-08d71b32ee54
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5821; 
x-ms-traffictypediagnostic: MN2PR04MB5821:
x-microsoft-antispam-prvs: <MN2PR04MB5821E80444FA9CD3BAA017918DD40@MN2PR04MB5821.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:238;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(199004)(189003)(110136005)(1076003)(71190400001)(6486002)(71200400001)(50226002)(186003)(53936002)(2906002)(25786009)(66066001)(8676002)(36756003)(54906003)(81156014)(7736002)(81166006)(6436002)(316002)(6512007)(8936002)(26005)(4326008)(305945005)(66446008)(6506007)(64756008)(66556008)(66476007)(66946007)(11346002)(68736007)(478600001)(2616005)(86362001)(476003)(55236004)(102836004)(486006)(446003)(76176011)(14454004)(14444005)(52116002)(3846002)(6116002)(256004)(5660300002)(7416002)(44832011)(386003)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5821;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uo0Gch82XoBejRv2h57TrqVALvDwDx1bOYFq6j/T9ZTjjbJq67J0qQNUzNAhTR5wvt6cm3S2beCucMNMSFhUX+L+PRiRTfY6ma8n+V8JiP0k+7uFwSHBPluXqTlHIsoJQjPuOMuYP30DwSybkaA+48EPsgEx8dlyFku7rrOaSHASoF6OCcsF8pDwSvwrSAErWLPVspnXNItjsZC7mgxYCRW1wC5DVc9kLElPKzlUNzISwFWB+UcTkQmu4Gx+CdnWFWicwoL8SxmVYpCNzgZmAnLHPkEQ+4taj/Mhs1UPdHDOuKu6yiq0fc7nWjKa1aKQRZbutNEcr8dJ5N+Dckiusk6wwCKsaCX7AsZ8RdyD21SHHBQKAY/CftUJrHxrmrn+eLYZ+IqOPSy0mOiHEtiddfRPpA4Ipa825c/Di/LFIzc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 234c26ab-88e5-4fcf-f32b-08d71b32ee54
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 12:29:46.0332 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jknTPpuu0lxufwmm+6R6nZhvwFH8IuUY+MspzMMJVPPVzh/QkmEHOv2S3ydKOKXKaDrHFAepZM55G+kNmygSpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5821
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_052948_669510_D06013DC 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
