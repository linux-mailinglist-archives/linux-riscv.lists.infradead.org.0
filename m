Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605F21DF50B
	for <lists+linux-riscv@lfdr.de>; Sat, 23 May 2020 07:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ipjdO2rJczSUQQgRbN8u5RyrXa3dJvT49sWIF6gQA0=; b=taIQM2rrdl1nNXvt/mXGdQl8o
	HpBkaHVZViz3fuITZ1zfx+374/InHoT9oopxqHeruR0DUkrZJ7N15Ks9hRoPu1c/+gt+I7s8ipl6V
	l7ym84rEacul+LSXbQd0NrIFgpsca4DpEHONqOZQi3spyjvASwY8LXovC0bKEnG9CTz1Wd4u9K4kD
	3CPz/xHkYnRZVMtSglAOBGKcINTWAzsOUdz2q7ErLM7R2/xDxzi7aCfTNKLCzmItcyZsiyUZjax7A
	BdFS40+4k7Fv/ncZc7+tFBvr94ultAdT5DDl5VAQgLOtD5/5AfSF5r1ZMa5NKfIkPCzJ7Wcj9CFv+
	SLBhNBRRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcMxd-0004Lj-3v; Sat, 23 May 2020 05:44:41 +0000
Received: from mail-eopbgr760047.outbound.protection.outlook.com
 ([40.107.76.47] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcMxW-0004KY-DN
 for linux-riscv@lists.infradead.org; Sat, 23 May 2020 05:44:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cHpmoWcmXeBZLx6N2Cg+TKbEoH/VS6zjOmp4xD2KYlqixl7J81DNM7O8INmkeSytKoWO9D380D2Mq+YGedCLz0bIiRwvfRSi0WMoVa3bmc5BtYuuwDth0pJDu3F04zpG/6cZDdA9W/L48kKyVhgXkiMkI5hCsFmtYDL2SnScjMn6rC85xLuy6AtYpmWScnzCP1kdfY/yndYx5k9ZOBkNjtJuNnWNBHP1Btlr8uaELZY5VJhoLkXEwSotlbgpfjTaXyxiGf2pvgeHTlJc4h8RSXrnHs79MqVMpGo87BI+1/350o2mb7/RAPenkpYMuwL0O+Pr/gkvE94Lm07RKPslJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ipjdO2rJczSUQQgRbN8u5RyrXa3dJvT49sWIF6gQA0=;
 b=V0Uz6f9FJCqhfpGNfj+iasN2hCXu6lzkfy2WRjCGGrYUWUSBiIbQQNKxJssgpIcDaa73XFOXUDVAoXEKttFp9B/WbQadPwmJ9QbJ3PHjPtbgwbzdYlurgEC0iXwmSXjcWeApR5uqPK7JK7/b2r9tWPwDalAFsllZQVYwEEmgwovKvQpCSUM7HmgntTJGl98AdlbbRQfeKtZ62SM9u7lldCaw0tynxE8RIQKfJ5Ro3othOIAEvcpkp/6HIe7HwbAVysejumDAlKx6Ovkgm4xPCJYrBz+O901u0V/PjEPhzmRjkEqzDT0XxoF5kWsHtoUeDSC6T82dQ+eKDEbyrODTLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ipjdO2rJczSUQQgRbN8u5RyrXa3dJvT49sWIF6gQA0=;
 b=IcZFUhI0e5n+cV/dyUaunDl++aebHAeZjD6eCU/kOx5ZjpTMpczdprUFU6YthHy/4YGSa5RSyP5RhXQlW0DecnJZzujeCIvmubWONIsovQuAwx/Yv2moqlr4mBEzRemrpOxgbrKayRTWCvP6QMzHDs6INsWvpXltwSrIggpKJJc=
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2900.namprd13.prod.outlook.com (2603:10b6:408:91::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.19; Sat, 23 May
 2020 05:44:29 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c1d9:f4ee:80ab:de83]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c1d9:f4ee:80ab:de83%6]) with mapi id 15.20.3045.009; Sat, 23 May 2020
 05:44:29 +0000
From: Sagar Kadam <sagar.kadam@sifive.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH v1 0/3] fix macb phy probe failure if phy-reset is not
 handled
Thread-Topic: [PATCH v1 0/3] fix macb phy probe failure if phy-reset is not
 handled
Thread-Index: AQHWKS5si1qF0hln+U+l+oHBCN2XWai1N8NA
Date: Sat, 23 May 2020 05:44:29 +0000
Message-ID: <BN8PR13MB26111D51332B5A716328079599B50@BN8PR13MB2611.namprd13.prod.outlook.com>
References: <1589378222-15238-1-git-send-email-sagar.kadam@sifive.com>
In-Reply-To: <1589378222-15238-1-git-send-email-sagar.kadam@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=sifive.com; 
x-originating-ip: [116.74.152.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5a82aac-6bf9-4229-fdd2-08d7fedc5c95
x-ms-traffictypediagnostic: BN8PR13MB2900:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR13MB2900FC81923FB0AC1BF0949899B50@BN8PR13MB2900.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0412A98A59
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sf2L9PS8sOqtlv9R2moR4bsFgb9t/SMyD18GGeKisd5ti5oyZHt5tL6orJXEnYH8w9Cc6gjP2S4Gi2CKNzxZmTEguAvxVmkVRMNOvvYYpwb5JV8XUyYdyzHOVFCKR9q1aRpPYxWL5zYzX3xD4ikootccWMwDqjt+isa3ienk+4UOqalVoPFqbHW0SAulytK1+gfMgqUmJTRnk9GSBl2ZZeWF6Lj9FOl/ZgKfcShble7IOZaKCyyuhTLLadwTcCijgyfM5hpRde3lFAVj8uXIgW56EWRgKUFWK5hcr0S01t10wQS/54KtenMSI/NWaOem8/qPXkVcGVhzVWpKSXNwf1gl8fKw0FBBd0eSxIwBWxz/1NXVa8NNFk22ZG7vCGXl7/Co5eoJOENy+memqtAk/A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(39840400004)(346002)(366004)(396003)(136003)(110136005)(33656002)(66446008)(54906003)(66556008)(55236004)(76116006)(26005)(5660300002)(64756008)(8676002)(66476007)(52536014)(8936002)(66946007)(71200400001)(7696005)(186003)(53546011)(6506007)(44832011)(55016002)(86362001)(316002)(9686003)(2906002)(966005)(478600001)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 4gRrY3VSpltmhiSxwFXgZ15tt0SYgsFB6hKSgMwIy/Q8OQww8Y8aLuqpuveHrxJYSHJbdfzr6qwy5Tv3crEvOInLW9xcGFD31aHJIcHlNz69Z3lPomAHEhch72L2u81IebNvdYK4Euhv+hCd3Keecemck/H7Pmws6+2MftDyBeuZZl4W0TdpSOC2d/NnqcABI4Mb67oDwQLi8YBFwz3gnX4UG1rxWn5LLYA95ioRofGTlslscjHwaaVzsi4IUc/BJOy71bRReTrxA8cSIRMZB/tJLnTMBWkTl41TJxGuE7QI+09/jv03srBML8XXVGngTyKqAroIHdy4OTXaQY35FiJQnKcs4NWlTtURRUKK7nE72GCToAA9HDKF82aeVrQvt+L2S8O85OpF+mA7dQNTAiZ/1lfLsVYzw1Z8wFc4gXSXYHYeCvE5exe3fi2g2VxT/b105DA7r9IV9qMd5HkPYgD15q0eblTHlaXbuqpfTQOzn5YjHVK7B74o7J2t+JmH
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5a82aac-6bf9-4229-fdd2-08d7fedc5c95
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2020 05:44:29.4799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dZuO8D6e8REzwQlmYWprxvaMDfj8TuOcDPk7uBDVKsveXFPsBKLhkMA9UmADz8cmcJNepMi5oWjIU7kEHGWXYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_224434_527418_C0CC9EE2 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.47 listed in wl.mailspike.net]
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
Cc: "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello,

A gentle reminder. Any suggestions here?

BR,
Sagar

> -----Original Message-----
> From: Sagar Kadam <sagar.kadam@sifive.com>
> Sent: Wednesday, May 13, 2020 7:27 PM
> To: linux-kernel@vger.kernel.org; linux-riscv@lists.infradead.org;
> devicetree@vger.kernel.org; robh+dt@kernel.org
> Cc: palmer@dabbelt.com; Paul Walmsley <paul.walmsley@sifive.com>;
> atish.patra@wdc.com; Sagar Kadam <sagar.kadam@sifive.com>
> Subject: [PATCH v1 0/3] fix macb phy probe failure if phy-reset is not
> handled
>=20
> HiFive Unleashed is having VSC8541-01 ethernet phy device and requires a
> specific reset sequence of 0-1-0-1 in order to use it in unmanaged mode.
> This series addresses a corner case where phy reset is not handled by boo=
t
> stages prior to linux.
> Somewhat similar unreliable phy probe failure was reported and discussed
> here [1].
> The macb driver fails to detect the ethernet phy device if the bootloader
> doesn't provide a proper reset sequence to the phy device or the phy itse=
lf
> is in some invalid state. Currently, the FSBL is resetting the phy device=
, and
> so there is no issue observed in the linux network setup.
>=20
> The series is based on linux-5.7-rc5.
> Patch 1: Add the OUI to the phy dt node to fix issue of missing mdio devi=
ce
> Patch 2 and 3:
> 	Resetting phy needs GPIO support so add to dt and defconfig.
>=20
> [1] https://lkml.org/lkml/2018/11/29/154
>=20
> To reproduce the issue:
> 1. Comment out VSC8541 reset sequence in fsbl/main.c
>    from within the freedom-u540-c000-bootloader.
> 2. Build and flash fsbl.bin to micro sdcard.
>=20
> Boot the board and bootlog will show network setup failure messages as:
>=20
> [  1.069474] libphy: MACB_mii_bus: probed [  1.073092] mdio_bus
> 10090000.ethernet-ffffffff: MDIO device at address 0
> 	       is missing
> .....
> [  1.979252] macb 10090000.ethernet eth0: Could not attach PHY (-19)
>=20
> 3. Now apply the series build, and boot kernel.
> 4. MACB and VSC8541 driver get successfully probed and the network is set
>    without any failure.
>=20
>=20
> So irrespective of whether the prior stages handle the phy reset sequence=
,
> the probing is successful in both the cases of cold boot and warm boot.
>=20
> Change History:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> V1:
> -Ignore 4th patch as suggested and so removed it from the series.
> -Verified this series on 5.7-rc5.
>=20
> V0: Base RFC patch. Verified on 5.7-rc2
>=20
>=20
> Sagar Shrikant Kadam (3):
>   dts: phy: fix missing mdio device and probe failure of vsc8541-01
>     device
>   dts: phy: add GPIO number and active state used for phy reset
>   riscv: defconfig: enable gpio support for HiFive Unleashed
>=20
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 2 ++
>  arch/riscv/configs/defconfig                        | 2 ++
>  2 files changed, 4 insertions(+)
>=20
> --
> 2.7.4


