Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4650D1B528B
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 04:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=x6BV12i3S3iPseXlP34X228fqownpc0d9H2J9YGhN3w=; b=NfNNJWtNbpxNbtoVM7uok3z1p
	dA+7bLUIbHnoks2hGQSdBC3eI1kBN5UcoE/vpNOSX52NgVqzwdVTArtSaO88W+xs+RF75GfFjKZwf
	3V9dCoaoFoI0L3EW3DdwI1K9DQhN4mVyy/j+EU7rRukveGdCrARlQx7w3jEw6kDAt2y/prGfl2FQW
	GWCQkFxCRs3BlR/p7zvZ5YDYAXs2lygyTEXR/wbZBCN8vnVah6/5ne0CvPAlx2pHylQ33rpl+uvUm
	UWglgIMTK+Xejb89SVJEXG4lF2JPBAEiR+9jRO2MY+qW/ggWWySyBhQIz1qFSN5yqKSIZe970811S
	ZMBDGvC0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRRd7-0005I3-0O; Thu, 23 Apr 2020 02:30:21 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRRd1-0004E8-8E
 for linux-riscv@lists.infradead.org; Thu, 23 Apr 2020 02:30:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587609015; x=1619145015;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=hR7Q00PmvUHpiOTO546zx2xFGhYHv5Y6sgs0WLkzQ9E=;
 b=VmuauVMi1sJM7XHoy3WBx+T/t/APY5wbm+irW7qW5oWw06Qngjjxfo2U
 IfptELvWTs6aoum7MdjLzQOqz2XDyShQgl21HU7OoC7/atDQDkAxFn+k9
 ObvNax7hN6wTc7f+zk9GO5/bjG1WxKDp7ELQwV5lB35gowwa9cKsT/OZt
 A25VrOOtDV++ULAZjSFHCk8QYBg6csOv5ybtbkNd68i3spM0mTUGNxhMq
 M1AB+AjMDSvW57sQur6ozyGIOFmU2T+xZ14/UkAVRRs/w5gaaTxxwJudk
 sJY+aTW+cV3NFUr8aPQyMH87j7EyRnWF2/2UJf/20SNSrb1UKVqXFnVd4 A==;
IronPort-SDR: OtfLVdN3xDt1Jr6OYWyAmwziTqSZk1qNWFJTrwWEUtIz3/6ztALwhLo7eT57I7GbTwtsvWZOco
 GNko2IrI9oknusP+7iNug8EDY2HJaXDAw8ffh0+BT/6k7ybIAbif/KNbd5IU0HAdKrcMO7/ttm
 c6CRIF6V/106xS5wGSF+gBASEE24k8q45eB1aC/XMOh0Xnzb7nZYriJ1BGf1AFHDqBDmBfoxTo
 586B6V4jwSgWZhww5VdlojDGRleQA1JRu56g+8iwNfqyfR4iy+v6Vw88P3TwEYT/mUnYPNykpT
 2/k=
X-IronPort-AV: E=Sophos;i="5.73,305,1583164800"; d="scan'208";a="135938343"
Received: from mail-mw2nam12lp2042.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.42])
 by ob1.hgst.iphmx.com with ESMTP; 23 Apr 2020 10:30:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eSfJfpctD1v4lLxYf2Z7zIHYpOm6NspA7cVrJALGqrwqYwec2xaPLVXXBoNkkzJ1LYG2wCby5HP4CpI0ZbQsVMhhfDRC5MpJcb7Us6xLTNUIQTQzYNg1H7PNcxxfiWG+FQh8k9USq+tGzPfJglrKjCQvSe/wgZW06727n3mO6J8L6loh8enQRqLalYDOFnVi6fs/0Pz82vUqRvJrJWfOvF9R+5sAS/RluLiyWIPtnbY56qUSkBzGLj6RL2M7fLz4y89ek+olNm+/pXb010HgwEzVfUTaEbbkhT/Qk5JPpoJSshrroLnSpCk7fvavmxig7NSuOUH6Rty2iaLTt2eeZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x6BV12i3S3iPseXlP34X228fqownpc0d9H2J9YGhN3w=;
 b=AKEcYGhmuf8S/FeOdpN6QExYZf+jJibWtc1fPLH651O6x6f7SeY5VbjN+dpw1Ke/Fi8UIorZrz0mkerqwTQHkS4V2V14Pxh+jxjXi3VGilFRQ6p0DSSGV4kyRVkIadih2FEZyPdWfaif3UFpAf+FbnMpcXaJayVTuXONjOioFGINVKsfIOaZ0/NOZsazrrNdFd0P5lVtq8tZz7hCQT5WhZxhBxyYiIexldVwTl/e2ruxlT+aYhg8oH+NudwDs13dARrtURv0m8KA7OnNIZZ13tjzyjNnXiM/k3xIf2haRkP29iBMbsw+vhGjR8OYaSI85ry5FgxpkODKD6mglKMUEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x6BV12i3S3iPseXlP34X228fqownpc0d9H2J9YGhN3w=;
 b=VinQz49PPzu8Nd7g3+YYqvbaEP9wiz/rdVjYY/loh5dQhMtnF4Hq20qTYc2R4hK8gKOasCIVqGBthZeO+GqF8th0tHi2XtkESJGPXGKPI0bJf4CWkJZPCp/GdqapVhIDDToZzQ+dYOrkooBAfgVEpT+wnc1vw4J7FyVHvqLZiLs=
Received: from BY5PR04MB6900.namprd04.prod.outlook.com (2603:10b6:a03:229::20)
 by BY5PR04MB6723.namprd04.prod.outlook.com (2603:10b6:a03:226::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 02:30:02 +0000
Received: from BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606]) by BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606%8]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 02:30:02 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 0/3] K210 support fixes
Thread-Topic: [PATCH 0/3] K210 support fixes
Thread-Index: AQHWGCujIRwnV4bwO0empZd8no3pRA==
Date: Thu, 23 Apr 2020 02:30:02 +0000
Message-ID: <BY5PR04MB69006DFD0CFA33250B845EC1E7D30@BY5PR04MB6900.namprd04.prod.outlook.com>
References: <mhng-14ad9472-18bb-49a3-99f2-a87d176ad9c4@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0b89b2bc-db38-4ed2-d4fa-08d7e72e3a42
x-ms-traffictypediagnostic: BY5PR04MB6723:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR04MB6723124DE140BB3580B513FBE7D30@BY5PR04MB6723.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6900.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(376002)(39860400002)(396003)(366004)(66556008)(316002)(54906003)(6916009)(33656002)(478600001)(55016002)(8936002)(9686003)(4326008)(186003)(81156014)(52536014)(8676002)(71200400001)(66476007)(66946007)(66446008)(76116006)(64756008)(53546011)(26005)(86362001)(2906002)(6506007)(5660300002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NjFCuitfsqgTKPEAcGKmLbbSup1Hq8o/+qu1vUp6o6hw/17Pp1oMZ/hO7rNDSuhM1jLMKD3J2BSAouSuVF+Bt1gx2JnTPyqivBOikH1kTcRzcf3Ee4GIyOgEZSi4m/9QR+5cv4d31Nso1YK44ffM/BufPFTuA8Zp7IacUaMkEHu+9lAfyZ4K891sjL1WI9B3Akv93DxyKGVktbHUj0ojjoFvGPdkED+eXbpeZvIbamf9AmJiMfdQY/JmAS3gXu9bIb941aDqGpK8QpQqNOCOrUUYd0GNLDa1n5r8F0OZZ2gvTXrgCVEfp1QM/tTVBtp8ceNuA1Y1urRQu1HznjWKxGgDXaa8f5Kraw9jMGxtW8dzZzipI0tcQBEHAU8jV609Kfj0BfcaPKKh39DciomVf0f1QMlo0gPPhGGshQ6ocCd7twYNrxE8A1NxqVL4pK8r
x-ms-exchange-antispam-messagedata: ixLx8VpmRYzbaa8Le6tvSOVLfoj0SJnL9KjQyii0nytkYAk5c3VvlauBbW3j+YYHh8llKVGgtuSIXrW9jtvTCBYCpWZwXqX4WY1IsnLCMV1z9CKw6qqnWpokkkkK2OQdUT8rEME5Mi3nW4NRJVZA5w==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b89b2bc-db38-4ed2-d4fa-08d7e72e3a42
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 02:30:02.7378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OJUADHwK3Xzxhp1A9qYG7NQrTZxLLN7T0PaC/y5+XzmKRgES/Voo2BDovBqF5L1cjU9ks0YCM0/051Nc/NstXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6723
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_193015_361271_2F5ADF16 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/04/22 7:24, Palmer Dabbelt wrote:=0A=
> On Mon, 13 Apr 2020 21:43:23 PDT (-0700), Damien Le Moal wrote:=0A=
>> Palmer,=0A=
>>=0A=
>> The first 2 patches of this series are your patches for the builtin DTB=
=0A=
>> fixed up and tested. The third patch adds necessary updates to the=0A=
>> K210 defconfig. Please review.=0A=
>>=0A=
>> Damien Le Moal (1):=0A=
>>   riscv: K210: Update defconfig=0A=
>>=0A=
>> Palmer Dabbelt (2):=0A=
>>   riscv: Allow device trees to be built into the kernel=0A=
>>   riscv: K210: Add a built-in device tree=0A=
>>=0A=
>>  arch/riscv/Kbuild                       |  1 +=0A=
>>  arch/riscv/Kconfig                      |  5 ++++=0A=
>>  arch/riscv/Kconfig.socs                 | 17 ++++++++++-=0A=
>>  arch/riscv/boot/dts/Makefile            |  2 ++=0A=
>>  arch/riscv/boot/dts/kendryte/Makefile   |  4 ++-=0A=
>>  arch/riscv/configs/nommu_k210_defconfig |  7 ++---=0A=
>>  arch/riscv/include/asm/soc.h            | 39 +++++++++++++++++++++++++=
=0A=
>>  arch/riscv/kernel/setup.c               |  4 +++=0A=
>>  arch/riscv/kernel/soc.c                 | 27 +++++++++++++++++=0A=
>>  arch/riscv/kernel/vmlinux.lds.S         |  5 ++++=0A=
>>  arch/riscv/mm/init.c                    |  9 ++++++=0A=
>>  drivers/soc/kendryte/k210-sysctl.c      | 12 ++++++++=0A=
>>  12 files changed, 125 insertions(+), 7 deletions(-)=0A=
> =0A=
> Is that PMP thing necessary as well?=0A=
> =0A=
> I've put these (along with the PMP fix) on for-next.=0A=
=0A=
Is your for-next branch for the next 5.8 merge window ? Or is it for 5.7.0-=
rcX=0A=
fixes ?=0A=
=0A=
These patches complete the K210 support. We should have that in 5.7 instead=
 of=0A=
leaving the half backed k210 support in that version...=0A=
=0A=
=0A=
> =0A=
> Thanks!=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

