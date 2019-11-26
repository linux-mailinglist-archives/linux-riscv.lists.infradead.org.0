Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2D410A462
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 20:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4o7egGcLcaaIDXKji+BZA6lxmlX1x9F5v92TxTnzEKA=; b=st8J4yeZxQvXYM
	cAs8Nd61TE1DTJTkf9Wusqcu1vFIUielryxqi/2FuLC3ziaeTVsdF7AGlQWq0lHobhKBfF4xyL65o
	uU8oPhpc25efLXMGeoA4es0BFEaStEECCJ/J/uKe8VW8TwCURO1kuLdQmrp11llP0nbGbqD5KWHh8
	02JvrKhPlFf6X8P/ACWnHcP1UQrLRu/+XOQB0gQ3JJOJ4qFg91ZSHr+oEFkEkXkdGYTL9Pe13loTi
	BhQb2wF9wqZWxVbV7Uu6H3iGxeAw78uFQ1X7l9iwM7I2fsxxwxfOTjVBlOwd7MhgOXSXpHY2Dwr6c
	g5cSEbup2TRoCA+ZPX9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZgIN-00012J-VL; Tue, 26 Nov 2019 19:14:43 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZgIK-00011q-NP
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 19:14:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574795681; x=1606331681;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Mh9oP1vRPRJ6iCVwgCS+9JamwfmnKqLeDSqFOowWZqo=;
 b=kWlnA4Cn5P3TT7QTvEr+1+oRPq20rJH1Thl1WjNWXmK/jtidj845UBhA
 W6T9mrnh24I0+bXgHTfzOlXEHRYaV7leZlk+Fk6EWEfybJ1Fo6NxBHJSk
 wHmFTY2ZDU4DQUGOsfKN+Wz/pHXgs8jadHM+aDBQsUdmgfdtyFaOk2h39
 2+q5Ni9M4/fKi+ltw/OLo6N7yMR4hTECB+Dz4WQs5USDLsUWSX+dIiD+I
 1+8zI4LoZKDNQk0RpiFLvGPXDkImSQ1zLxgVb+pMl7Lj2hvU98hrVhAWh
 CxMq23y6mOADzLncTOCtql3a0BzIFN1lZ45/UhcSmmhZ6KXRLWF+Hg8MI g==;
IronPort-SDR: p303q5DuQcNokq1/QS379kNYP+AR2dyesIyV5XFFAF6i8RrlKvcdfGkOxBqmwhv1VvoSHvuGcq
 avuujRUxAYV13BhGn4ldhuqdYe02eAttp03Vix2/yT1CVhlVOK0j4C6pRqfOzCTGMVP+DZPD8M
 6sCORr8zlRgDehPKzDL9wLHnFCiiEPG2kiCUt59t1HXUrQEEO+zMUnc23Tem8fXyNOuVCJRcha
 nc//0k16wa1DvafeDWctFxd84j/v0F8UlLGV/c9chTtAlhDl1AC5OE9+W9YoOpCbcKi8TSVZi6
 3jE=
X-IronPort-AV: E=Sophos;i="5.69,246,1571673600"; d="scan'208";a="125671099"
Received: from mail-bl2nam02lp2058.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.58])
 by ob1.hgst.iphmx.com with ESMTP; 27 Nov 2019 03:14:39 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kiNBpI16rdJv2ZavA5GbXZCvsHZZMLBdP0nLG20iwjux6woSYx/ukoPb0eq01T2svVXhd5OEQ/dGHEro5NWWdIuw6WXWESj9SIM4Ocwryz4p9XvI/tj2AjyeN8KXijhS12Ku+gqmXLwl3EDJMtFhqwKS5hJiSjZ7QL5fV1RqIlfzLgQeIKYAB03CT67NVZbjNWFNcavPivf3eSmXqJNNP8GfW7aFq/rZXaT6dnkR/+GFa6kBfYFC2dTsIldepeyxl1gwS8USXqTziKzJV9m4qZ/O9I42cYmFgUp0xOj8N7kf+7CEbia0dhh6C71TfuXBR8N+M/YcXkNBaV6z4855WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mh9oP1vRPRJ6iCVwgCS+9JamwfmnKqLeDSqFOowWZqo=;
 b=FYR473BFzaTsjDuXQuBAJZhBBEAUJiObexbKPfnKsLPaSCN1NTkhCohp0gfgqdUbDE0DDHAi6Bl8WoioBidHsByRaYZudOWocKDqOf7fLUnafJQQCcboHYosmGSD+BUZms/jyHbEM4WJ0qRjfBgNb2ZFFINdTx0yWJA8q/nU1ocujrLh1sXb1MBKK9K8MyRK/KCis/MHOjB7F1koniTe7sT48D4Y36aIKdfpbAmjaIUjSyKw/BhLzXCVybnWc5rrlT3a2rsFca3Nu1kx0whJkxMm3bW7RrfLGOfcTx6RbdSTxVML3qKBNxePulV1sLYmb4uERBpn8d8OroYiNy3IVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mh9oP1vRPRJ6iCVwgCS+9JamwfmnKqLeDSqFOowWZqo=;
 b=HzMByUVPPory8LgypTHPGJCsJLBlyOLcurq+o2krn7pVELgoTgm7nLctz3lFHpEqwDkni1dI8wFzEcFdjVpT7i1zTU8UHSlRPWgA5MwdnZGrLUEim6k/0h9Y+f8jTdly+iPzR3KFi1kSJaQ9teDTeRxi+i2k0495vZH2RLAHMeo=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5959.namprd04.prod.outlook.com (20.178.235.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Tue, 26 Nov 2019 19:14:37 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7%3]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 19:14:37 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, "palmer@sifive.com"
 <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>
Subject: Re: [PATCH 2/4] RISC-V: Enable QEMU virt machine support in defconfigs
Thread-Topic: [PATCH 2/4] RISC-V: Enable QEMU virt machine support in
 defconfigs
Thread-Index: AQHVo5NiGffd8yApskGKkdUmXYega6ed1FQA
Date: Tue, 26 Nov 2019 19:14:37 +0000
Message-ID: <bfd66a0d4f4e5ec112244101bc4173aef9a56286.camel@wdc.com>
References: <20191125132147.97111-1-anup.patel@wdc.com>
 <20191125132147.97111-3-anup.patel@wdc.com>
In-Reply-To: <20191125132147.97111-3-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b0171fe4-d022-4674-bf61-08d772a4e10b
x-ms-traffictypediagnostic: BYAPR04MB5959:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB595917C73108042D82FE4E44FA450@BYAPR04MB5959.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:227;
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(136003)(366004)(396003)(376002)(189003)(199004)(5660300002)(2616005)(2171002)(71190400001)(71200400001)(11346002)(446003)(46003)(76176011)(305945005)(36756003)(316002)(81156014)(4001150100001)(6116002)(8676002)(6506007)(8936002)(81166006)(7736002)(102836004)(2501003)(54906003)(256004)(99286004)(14444005)(2906002)(478600001)(6512007)(86362001)(186003)(14454004)(6486002)(6246003)(66946007)(4326008)(66556008)(110136005)(66476007)(76116006)(66446008)(64756008)(25786009)(6436002)(118296001)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5959;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7LdF6JNKtnsHoWN6kgSLu1z0g4NUygN8WiJLbYT1F/FiCYPn4zyn0dijwOkIHyI+L92N/cSRt7iaXI9n5CT3vMl0ZloXoeD+SSaIG9CpB+q16HSf5zaRqTe+HnJcPzMM4KweOAsUTxWWFaEHbKXURjtM474gnHtTRvA3KqBTlBW+GAcLeFvpoSO8nZnJSc74vv6gKXtGV5wtF925BWmcWnGJmnRVyIq5uH/SG0s4GbYFHymn/lQg5JgcJeG8XICJ7Q3sI3j1NAweg5JGEhWoBtFovShjDAwP337/T5ddjVjQWXDFuM45GpM2IS0G4fAP2qWwApK2FjOQgdWr1t+T0D39B4OLw7sZsnaEDVxVAcj6OSq9Yw+MMtmllIC8xYKSnnxS/+chYfJHonYK3hoObl0sQwVgLYyZHZ6JMVCwsQiP9eDyyIg/y/a9+RB4VBTu
Content-ID: <DE3E432933B97941803ED957693C419A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0171fe4-d022-4674-bf61-08d772a4e10b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2019 19:14:37.0152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RVAdPcNCOdLpSegPpDwvUKGexeouB4cWDSThJXvzypb7U9kvaROFJhIpxWeTIOtPshp4qtMJvbd+Q4nIYcs3Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5959
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_111440_800433_45D43520 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>, "hch@lst.de" <hch@lst.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-11-25 at 13:22 +0000, Anup Patel wrote:
> We have kconfig option for QEMU virt machine so let's enable it
> in RV32 and RV64 defconfigs.
> 

and remove the virt specific configs from defconfig.

Bit more verbose commit text makes more sense here.


> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/configs/defconfig      | 15 +--------------
>  arch/riscv/configs/rv32_defconfig | 16 +---------------
>  2 files changed, 2 insertions(+), 29 deletions(-)
> 
> diff --git a/arch/riscv/configs/defconfig
> b/arch/riscv/configs/defconfig
> index 420a0dbef386..2515fe6417e1 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -15,6 +15,7 @@ CONFIG_BLK_DEV_INITRD=y
>  CONFIG_EXPERT=y
>  CONFIG_BPF_SYSCALL=y
>  CONFIG_SOC_SIFIVE=y
> +CONFIG_SOC_VIRT=y
>  CONFIG_SMP=y
>  CONFIG_MODULES=y
>  CONFIG_MODULE_UNLOAD=y
> @@ -30,7 +31,6 @@ CONFIG_IP_PNP_BOOTP=y
>  CONFIG_IP_PNP_RARP=y
>  CONFIG_NETLINK_DIAG=y
>  CONFIG_NET_9P=y
> -CONFIG_NET_9P_VIRTIO=y
>  CONFIG_PCI=y
>  CONFIG_PCIEPORTBUS=y
>  CONFIG_PCI_HOST_GENERIC=y
> @@ -38,15 +38,12 @@ CONFIG_PCIE_XILINX=y
>  CONFIG_DEVTMPFS=y
>  CONFIG_DEVTMPFS_MOUNT=y
>  CONFIG_BLK_DEV_LOOP=y
> -CONFIG_VIRTIO_BLK=y
>  CONFIG_BLK_DEV_SD=y
>  CONFIG_BLK_DEV_SR=y
> -CONFIG_SCSI_VIRTIO=y
>  CONFIG_ATA=y
>  CONFIG_SATA_AHCI=y
>  CONFIG_SATA_AHCI_PLATFORM=y
>  CONFIG_NETDEVICES=y
> -CONFIG_VIRTIO_NET=y
>  CONFIG_MACB=y
>  CONFIG_E1000E=y
>  CONFIG_R8169=y
> @@ -57,15 +54,12 @@ CONFIG_SERIAL_8250_CONSOLE=y
>  CONFIG_SERIAL_OF_PLATFORM=y
>  CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
>  CONFIG_HVC_RISCV_SBI=y
> -CONFIG_VIRTIO_CONSOLE=y
>  CONFIG_HW_RANDOM=y
> -CONFIG_HW_RANDOM_VIRTIO=y
>  CONFIG_SPI=y
>  CONFIG_SPI_SIFIVE=y
>  # CONFIG_PTP_1588_CLOCK is not set
>  CONFIG_DRM=y
>  CONFIG_DRM_RADEON=y
> -CONFIG_DRM_VIRTIO_GPU=y
>  CONFIG_FRAMEBUFFER_CONSOLE=y
>  CONFIG_USB=y
>  CONFIG_USB_XHCI_HCD=y
> @@ -78,12 +72,6 @@ CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
>  CONFIG_MMC=y
>  CONFIG_MMC_SPI=y
> -CONFIG_VIRTIO_PCI=y
> -CONFIG_VIRTIO_BALLOON=y
> -CONFIG_VIRTIO_INPUT=y
> -CONFIG_VIRTIO_MMIO=y
> -CONFIG_RPMSG_CHAR=y
> -CONFIG_RPMSG_VIRTIO=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
>  CONFIG_AUTOFS4_FS=y
> @@ -98,6 +86,5 @@ CONFIG_NFS_V4_2=y
>  CONFIG_ROOT_NFS=y
>  CONFIG_9P_FS=y
>  CONFIG_CRYPTO_USER_API_HASH=y
> -CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
>  # CONFIG_RCU_TRACE is not set
> diff --git a/arch/riscv/configs/rv32_defconfig
> b/arch/riscv/configs/rv32_defconfig
> index 87ee6e62b64b..bbcf14fd6f40 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -14,6 +14,7 @@ CONFIG_CHECKPOINT_RESTORE=y
>  CONFIG_BLK_DEV_INITRD=y
>  CONFIG_EXPERT=y
>  CONFIG_BPF_SYSCALL=y
> +CONFIG_SOC_VIRT=y
>  CONFIG_ARCH_RV32I=y
>  CONFIG_SMP=y
>  CONFIG_MODULES=y
> @@ -30,7 +31,6 @@ CONFIG_IP_PNP_BOOTP=y
>  CONFIG_IP_PNP_RARP=y
>  CONFIG_NETLINK_DIAG=y
>  CONFIG_NET_9P=y
> -CONFIG_NET_9P_VIRTIO=y
>  CONFIG_PCI=y
>  CONFIG_PCIEPORTBUS=y
>  CONFIG_PCI_HOST_GENERIC=y
> @@ -38,15 +38,12 @@ CONFIG_PCIE_XILINX=y
>  CONFIG_DEVTMPFS=y
>  CONFIG_DEVTMPFS_MOUNT=y
>  CONFIG_BLK_DEV_LOOP=y
> -CONFIG_VIRTIO_BLK=y
>  CONFIG_BLK_DEV_SD=y
>  CONFIG_BLK_DEV_SR=y
> -CONFIG_SCSI_VIRTIO=y
>  CONFIG_ATA=y
>  CONFIG_SATA_AHCI=y
>  CONFIG_SATA_AHCI_PLATFORM=y
>  CONFIG_NETDEVICES=y
> -CONFIG_VIRTIO_NET=y
>  CONFIG_MACB=y
>  CONFIG_E1000E=y
>  CONFIG_R8169=y
> @@ -57,13 +54,10 @@ CONFIG_SERIAL_8250_CONSOLE=y
>  CONFIG_SERIAL_OF_PLATFORM=y
>  CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
>  CONFIG_HVC_RISCV_SBI=y
> -CONFIG_VIRTIO_CONSOLE=y
>  CONFIG_HW_RANDOM=y
> -CONFIG_HW_RANDOM_VIRTIO=y
>  # CONFIG_PTP_1588_CLOCK is not set
>  CONFIG_DRM=y
>  CONFIG_DRM_RADEON=y
> -CONFIG_DRM_VIRTIO_GPU=y
>  CONFIG_FRAMEBUFFER_CONSOLE=y
>  CONFIG_USB=y
>  CONFIG_USB_XHCI_HCD=y
> @@ -74,13 +68,6 @@ CONFIG_USB_OHCI_HCD=y
>  CONFIG_USB_OHCI_HCD_PLATFORM=y
>  CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
> -CONFIG_VIRTIO_PCI=y
> -CONFIG_VIRTIO_BALLOON=y
> -CONFIG_VIRTIO_INPUT=y
> -CONFIG_VIRTIO_MMIO=y
> -CONFIG_RPMSG_CHAR=y
> -CONFIG_RPMSG_VIRTIO=y
> -CONFIG_SIFIVE_PLIC=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
>  CONFIG_AUTOFS4_FS=y
> @@ -95,6 +82,5 @@ CONFIG_NFS_V4_2=y
>  CONFIG_ROOT_NFS=y
>  CONFIG_9P_FS=y
>  CONFIG_CRYPTO_USER_API_HASH=y
> -CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
>  # CONFIG_RCU_TRACE is not set

Otherwise, looks good.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
