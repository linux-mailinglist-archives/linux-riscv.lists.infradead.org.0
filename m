Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 405021E067B
	for <lists+linux-riscv@lfdr.de>; Mon, 25 May 2020 07:45:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jtoeagM7KBa+1tD4M0BbeSYsXsoUN6NrinopkC69XoU=; b=WEnshdmRTD6G+9EAm+W/StEN5
	NybjMltV112jSPyia6DqjnaI16bRQKs+rIJuKXtTaFMmioHLMncCUufgNrBg12sOmkgJV7bCpfQ15
	mSlewp7er3CpWbpce1CpbJUfJxbN6ojP03oUWt5q6LcaflBmA5DUGPeD35jxZ8tMafHr0TIz9KdIO
	MTwmiYeIg8GvDfskZCxlUgFSsrfB5jHZYK9HBrbbcIqdnmQOeZ5ZSkTNaWlam5Ql4lxvGuzb4wMT7
	k4HExyu2HiGNb+BdpVgLS/XzXmQEeXeil1pQFcnKK3oZaxDDiM7CImCIclVUEpyIMJ5qPJ+D4GQtN
	EsG+xCgGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd5vS-00020l-TB; Mon, 25 May 2020 05:45:26 +0000
Received: from mail-eopbgr750070.outbound.protection.outlook.com
 ([40.107.75.70] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd5vO-0001zk-Uf; Mon, 25 May 2020 05:45:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e9XiEhLsY19QwuKHefuuSOzQJCr5F5VrVpVN2zWx8hjyHbdRaf7SBwNL7hyBuTBpFspbhs+IYNT1F2tjJc0rcV2im/da1IpvvXLVEgayZAqE6fiH5xV2WYcSbxAtngDHKt+rNLUyoOr5uNjpaYqHrmQb9iTHZLz+l+dYqYR2x3IYFgU1Ro3MV0JatSc3cJwElhL9WxAq4Mtc/IaaK6yBItGdIfCMiiK5UO5ZbPp4HHLcLl7boOZTA4wCiH+rUddXDs0+Vn58tDadSOho+E02DhRGuBdW72zdxVcIM5fUMP1PlAW9dL9//LZRwtP8pa+zDPdaedaRQZhEEnVd27oRBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jtoeagM7KBa+1tD4M0BbeSYsXsoUN6NrinopkC69XoU=;
 b=dMpfeUuEHPdLC6EALqcyxmrqQEYotLHlqZiwEUTHC5mnxhcZpu5/uYBEGpWNvI0bEi1YRDotDceWByFqdR3vSlZ49oloNEv3Gj5Sta2cPCLq86Jxt0A0G7BXn8HJ9TYJzfNk9grTZzKZho41ij9PPPS5y9NfNqHzkJko4FXCOMjxebX/CNsIO+1wGAPsEYzwKStnkhjqeX8P8b6MnQms1DktQSWooYMECRxcU35KKkePuiIlmsA7KjXXL9c2uiKK6Cxj8iASOUVlc/cULy7e+1frYQEOYcbfheqzzT8JafxprnscLf0nR1/PvsDwLbLCHmWCSGZfBpFbjISIYhrWnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jtoeagM7KBa+1tD4M0BbeSYsXsoUN6NrinopkC69XoU=;
 b=rOGKK9FZ1aY1wM6SD+1Upa/Fb6BLNSssF8zGFCFBO2E8RqaoQFk1okiqTYXr44lZEWO2HXCyADP9GUoH5cbD2WR/CvM4HFZl+IzAJTU0mb8a/cwU5KXlLH9B5ZY0dJVgI4yEs0+F12LhKSLQKnThUBEItW5HxYczCNhY77WQr2s=
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2771.namprd13.prod.outlook.com (2603:10b6:408:83::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.9; Mon, 25 May
 2020 05:45:19 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c1d9:f4ee:80ab:de83]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c1d9:f4ee:80ab:de83%6]) with mapi id 15.20.3045.009; Mon, 25 May 2020
 05:45:19 +0000
From: Sagar Kadam <sagar.kadam@sifive.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Subject: RE: [PATCH v2 0/2] enable spi flash and update is25wp256d page write
 capabilities
Thread-Topic: [PATCH v2 0/2] enable spi flash and update is25wp256d page write
 capabilities
Thread-Index: AQHWLcrJDI5oN2bq6EiCAm88Ud2giKi4UvWg
Date: Mon, 25 May 2020 05:45:18 +0000
Message-ID: <BN8PR13MB2611897FD771955E74F8E55299B30@BN8PR13MB2611.namprd13.prod.outlook.com>
References: <1589885187-31247-1-git-send-email-sagar.kadam@sifive.com>
In-Reply-To: <1589885187-31247-1-git-send-email-sagar.kadam@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=sifive.com;
x-originating-ip: [116.74.149.243]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62cda84b-bd1b-4127-2c19-08d8006ecee3
x-ms-traffictypediagnostic: BN8PR13MB2771:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR13MB2771A1EC455CCF99ED1EBA7799B30@BN8PR13MB2771.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0414DF926F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nkriZ4bUJhf049rsQQz8EKUy/8PTEmsJZkH7wUrRZxYmikzZzMePmhNnq4+BHls5U6g58G4gakIUeRNPwTya/dHSDnH4nratQ3XwqXLHKUwL9OuycwJJBwgrJzRoktt1+kEVRcROI5OIs368zKiBuB27OGdt/t7y/gezEAkdpLB6YHkNZf2iM+bKMnMhMcJQX0wX/5R7cb+GdpSdE5DDM9N/7RPNAWfsTJccXyfxWXP/WwHLAIFstESHpUeNnMkkufwECOf87O48IK6xhFPu7xI91VnW5zrX57z+cgTZVVu6d3wI4clgnGCdViic5ELGOBUQz9j+S91Jf3RgUU5eLg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(39840400004)(366004)(136003)(396003)(66946007)(86362001)(9686003)(76116006)(478600001)(55016002)(71200400001)(64756008)(66476007)(66556008)(66446008)(7696005)(5660300002)(186003)(4326008)(110136005)(55236004)(44832011)(33656002)(53546011)(26005)(15650500001)(316002)(2906002)(7416002)(52536014)(54906003)(6506007)(8936002)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Qj5zbE/zQAFQijdmuq97tANUBtnP3Ew1lOnaPDpl/bS9Ha/lMW2xYP1LWKSijuiSRG6LVQuQ7U4LuLa+8Irqrpjf++JGOUvPMKwA/oAWnBXGAvp0/Xm/yNw6cq5lHAhl94GvsDqT0/h7DxLadVxaMsIeL2t05Ve4xVRbrgrdHdZ1Bgdw+GI/fMStPvNS4kNSrIkl21OW2Dmlgv0hHqXeaApNK+0mBNNPEKb5VU1luZs6WE98O4e37BrBInQgKH4RLDaFTsgIQqPytmAiXE1BzbU1F9sry0cvPio3++u1sKhB0j7tsbN5ARqsmzqC5iOZhgv3TyBaS6rjaolCjLXQAXk7vujcAqIk3xB/yYZVjNQl5BeByEyHZjfIxHlwyEoBP1GermYblKH/L2k8M/oxdBeQXQrLefY6Wf8Wa4BDHCWxApEO6GzuDZEQKWUHQoichrvnVQnBqk57debeRsmTVvp++yppFJP2NxHJhcoOZJ409oiue/h6jkSpDANUFDeh
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62cda84b-bd1b-4127-2c19-08d8006ecee3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2020 05:45:18.4055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KYVkX2rSrIbhvfFiXD4bJwJ2iIZCr3SbJKc19fFiv8Lh59ciwJx2bA2U+Pmt1Yttjx23iRqW28AOjQOctA7bKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2771
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_224523_079623_3258C809 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.70 listed in wl.mailspike.net]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "vigneshr@ti.com" <vigneshr@ti.com>,
 "tudor.ambarus@microchip.com" <tudor.ambarus@microchip.com>,
 "richard@nod.at" <richard@nod.at>, Paul Walmsley <paul.walmsley@sifive.com>,
 "anup.patel@wdc.com" <anup.patel@wdc.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

A gentle reminder.
Any suggestions here?

BR,
Sagar Kadam

> -----Original Message-----
> From: Sagar Kadam <sagar.kadam@sifive.com>
> Sent: Tuesday, May 19, 2020 4:16 PM
> To: linux-riscv@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
> mtd@lists.infradead.org
> Cc: Paul Walmsley <paul.walmsley@sifive.com>; palmer@dabbelt.com;
> aou@eecs.berkeley.edu; tudor.ambarus@microchip.com;
> miquel.raynal@bootlin.com; richard@nod.at; vigneshr@ti.com;
> anup.patel@wdc.com; Sagar Kadam <sagar.kadam@sifive.com>
> Subject: [PATCH v2 0/2] enable spi flash and update is25wp256d page write
> capabilities
>=20
> HiFive Unleashed A00 board has is25wp256d snor chip. It is observed that =
it
> gets configured with Serial Input Page program by the end of spi_nor_scan=
.
> Using the post bfpt fixup hook we prioritize the page program settings to
> use quad input page program (opcode:0x34) over serial input page program
> (opcode: 0x12).
>=20
> The patchset is tested on Linux 5.7.0-rc5.
>=20
> Changelog:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> V2:
> -Split common code between is25lp256 and is25wp256 devices as suggested
> Added a generic post bfpt fixup handler that identifies the flash parts
> based on their device id and uses the corresponding fixup. Other device's
> that need a post bfpt fixup can just add the device id check and either
> reuse the available fixups or write the necessary fixup code if one is no=
t
> available.
>=20
> V1:
> -Moved SPI_SIFIVE from defconfig to Kconfig.socs for SOC_SIFIVE.
>  Retained it's configurability using "imply" instead of "select"
>=20
> V0: Base version patch (Tested on 5.7.0-rc3).
>=20
>=20
> Sagar Shrikant Kadam (2):
>   riscv: defconfig: enable spi nor on Hifive Unleashed A00
>   spi: nor: update page program settings for is25wp256 using post bfpt
>     fixup
>=20
>  arch/riscv/Kconfig.socs      |  1 +
>  arch/riscv/configs/defconfig |  3 +-
>  drivers/mtd/spi-nor/issi.c   | 72
> ++++++++++++++++++++++++++++++++++++--------
>  3 files changed, 63 insertions(+), 13 deletions(-)
>=20
> --
> 2.7.4


