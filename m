Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E65179F55
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 06:37:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l8IQMXsaaQD3LF/hqVCXVaRE9BS6Y44h3qFcRtFEOTQ=; b=RUGQVB6/ENYWzEPgjL9VekyrG
	NYF1VfK8RvsnpcDefrzvDQHl0fcVGc4+3ynz0gyWoh3VEGfsgnJVC66rsxGn3AlJUiosH0XzfRhg3
	kEVxSMSr+ytFZMbcx/sWRjn0yyKgbToyXcZTdWYVEye5RJ2vxcn3jyiASLVgETmVAVvAjnD5M0ja3
	72cV2mEXrnjASx6uxqW2/6c/+pkXtAEZNuOKxYSxXJWRrp2EwR5ADZ++ELxopv3EhLoCnBFFcSzKZ
	3g4ZPyL4ISgQePXuAvHn0fg3UqSYFpvbSyODmYvQXOx6oY/PuwcziubUdChGiX2AGwGq3jPpCjM1Q
	lbLOh1VTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9jCK-0007Rz-Jm; Thu, 05 Mar 2020 05:37:28 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9jCG-0007RN-Iy
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 05:37:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583386697; x=1614922697;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BMmTdCGLKC2IBgRGcbpB4rVQkwxxL+sKSO1/nKYKahI=;
 b=MANvVPbzxmAfIvCsimqa2e3tZD62g28/Dn4cHSnzNGjNFtTc12twiW41
 /lgu450zlNSzoMQ69K8vWmrkhjgDs+k0A6n0rcP7Afy3+pRMF8H36sqBR
 BGFlT/UweYncpkZO+aiX+QIXtB7Xz9zuoojJWs7TS5A8ALbVqMKjwxOtq
 R64Swuc0ts6U0yxz70r1OYSpvHalIbMijsg6v9nanffhclCdbi25dbP9W
 BvfbU1NLHF9CBdJrcsAuPkP6SpFCMbN+di45ZQSZ4+lZhObOY+AZcv8YY
 JM2nqUiFr4QN/Uayl5m+dWXvDU42AV+3iYORncMFJowIgylSnHxRf9VZA g==;
IronPort-SDR: 0oNldnNnki/RtRMFqUWz9mJcwvQQmEPpYp53wKNq5uj5nO4ooA9t9/S5L9YxMdjtmSNtwuILzV
 C/8YcmFkcge4Zygg6vbsykC74FXbstJ41Dfh2xWGAN4W9YY1WiUm1x2KFEF2U1d1LX5agNFhOP
 ocMYVpGCelhgy52lavloJZBwmgCk48ivtQ3Ys8KL/5PkIt+Mk7a22ZN7qGXq76AtT4GcV6s+pk
 loo987diA4obahms44fijZPYDvZ+GCaiVpGr/3aQcz0kJB8W3hNk7L2HbbJlkdN1/tUuyXXsKo
 +ek=
X-IronPort-AV: E=Sophos;i="5.70,516,1574092800"; d="scan'208";a="233505340"
Received: from mail-sn1nam02lp2055.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.55])
 by ob1.hgst.iphmx.com with ESMTP; 05 Mar 2020 13:38:06 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UYtj1sh+4eRmUY9DY3eSAupRwhfQsrYPmbEL2hyC52foEGzcuWWEy8SN2GMaaU7PzVeP15LxB1JamvatYpYvUbTan/N7QN0RjlzXz5Ywi74AIci7/a1X/LAjgkhcnL7mdcFOepw2w27/uK2B+ArvgXLEEY8NpRhOrPd/X/baJ2A1oUR6KQ3UlYHoS/QgZqObmu1dxmN/0w8frN7OcrErEYtgR9/av0X225sHSHMLDBKFDXXqA0upNQmXbpLYFhMHgoaVPlBHgwNSaa1dNnnZNFzM3a27paJ/CZu15iSx0VUrDQlE/IFrioh7793wxU5Lcvh8mgOWvSV7clJNuoskwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l8IQMXsaaQD3LF/hqVCXVaRE9BS6Y44h3qFcRtFEOTQ=;
 b=NwcvvMX8nfN/GVpwi4H/WbGI9ZxfQJmiDyXbm4jN3UQy0RwVZMwIfm8CK0tI6zzfDgCWAryN3F+4imngd+6t3vYq50CB8WmYiK/WFW3Ch7Vtuv189UGxvruqSguqhRR8RH3xuxa3k8E8UiUPNCrRgQsOODaMXymoPv/nuQfjFz2B191hmGWwI56y49hbCXZF0Cw2V2K9gskInBeWME8JOKUWSLm4grSOzWkA2sWQFsqd5svb9St2JZgEcg9+4D0Fn+u8rQ6pIyY3obkMm/2ecPX7NmaGMILZF2QML8eO/pKuVs44WtUsHU+udyrrV8q9DitoXWoQGxKOoz94UV794g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l8IQMXsaaQD3LF/hqVCXVaRE9BS6Y44h3qFcRtFEOTQ=;
 b=H/FzE/Oic//A/DVkf4f3/ogGlQHP5PlJGpQMFVtOUEpmWw3JqoP2Xw3TrETKEFCT3eRWIu1RyiMXjx1VsUhwtPSLHnXyQkrnNDaLPPT5n90+YWJi+ZM8KPJNabaY6bJq6ygP+GemAaRiXBWG2jV+hSq7Ni4goCPTGlBjoNcBiu4=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6173.namprd04.prod.outlook.com (2603:10b6:208:d9::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.19; Thu, 5 Mar
 2020 05:37:16 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 05:37:16 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: RE: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Thread-Topic: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Thread-Index: AQHV4ZAMJsXyjI3DHUSsYl38YFGEgKg5mrRg
Date: Thu, 5 Mar 2020 05:37:16 +0000
Message-ID: <MN2PR04MB6061B382AF9F875B61B863978DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <20200212103432.660256-5-damien.lemoal@wdc.com>
 <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
 <MN2PR04MB6061D77B37B5BFD3851F661F8DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
 <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 96d5e8f9-3b38-4fa9-c006-08d7c0c7439d
x-ms-traffictypediagnostic: MN2PR04MB6173:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB617381DEBFC7D34DBA51D5D18DE20@MN2PR04MB6173.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03333C607F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(39860400002)(396003)(366004)(136003)(199004)(189003)(26005)(86362001)(6506007)(64756008)(7696005)(76116006)(71200400001)(66446008)(66476007)(53546011)(186003)(66946007)(9686003)(55016002)(66556008)(4326008)(52536014)(5660300002)(478600001)(2906002)(8936002)(33656002)(81166006)(316002)(81156014)(8676002)(54906003)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6173;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9QmvsFyqGz3KkXMpuZMXeMYl3tOLsyuManqiZbiXStek26h0+HVx3cVrwLz+Dnmc+CrnXk9lDjVsqDl/PI67nVoUY1SgHUsGIa+5uO2uK7Q9upcTMZBdmpeXHssDnXlgsCYYycxxR36XC30oD1bXrhDCo5kqwpBjgRbuTrYEG3SeRCZ9WuL18fCbIjSbm6lKNfCKM6XUvIfyCWGAbrI19OGe0UW6lAjCQ6Ik0jkup77y2COwWOi50KQg7oRzkhvkWT3135IiBrWdXATXO+DcwLBIA4qVUgym0bViLKCpWFfNYX3FlS0tnwyVGvSTJO19GonbNWyEdJNqiQxxTm1pTdD2wP9lkYUhIz/iTgL04DJj9d4QVCLrvbPbHxKIBeOEBWY1rxvpo7+Dh54GBoPk+4h8u8f0ODAOtYY0e72MOVTtrPUKfJEfY4ZpcV/L86up
x-ms-exchange-antispam-messagedata: senpGZpi0ohHHCLYl4ZtRRO+YjXNXhBHUNE/eRqx8KQhCpZlWqsZzQ8gfmkBzsr4PAGjwZ2uDKBWn5eIA46lsHNc9pK40SgAVQludsUrtEqVG0bH3/xPBcjGNIYl96scJe8cLBOPsiX/cH46Kf5Yiw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96d5e8f9-3b38-4fa9-c006-08d7c0c7439d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2020 05:37:16.1111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7lPBjjPmpbNZpAbWn6YLjHAWVv+WddC2QuCHHIzA4D6a21t9oClhPd7twnXwTIM5UEjzwU/BC1xSgfN+HXf1gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_213724_712972_6BFE95B0 
X-CRM114-Status: GOOD (  40.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Damien Le Moal
> Sent: 05 March 2020 10:44
> To: Anup Patel <Anup.Patel@wdc.com>; Palmer Dabbelt
> <palmer@dabbelt.com>
> Cc: linux-riscv@lists.infradead.org; Paul Walmsley
> <paul.walmsley@sifive.com>
> Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
>=20
> On 2020/03/05 13:58, Anup Patel wrote:
> >
> >
> >> -----Original Message-----
> >> From: Palmer Dabbelt <palmer@dabbelt.com>
> >> Sent: 05 March 2020 00:59
> >> To: Damien Le Moal <Damien.LeMoal@wdc.com>
> >> Cc: linux-riscv@lists.infradead.org; Paul Walmsley
> >> <paul.walmsley@sifive.com>; Anup Patel <Anup.Patel@wdc.com>
> >> Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
> >>
> >> On Wed, 12 Feb 2020 02:34:26 PST (-0800), Damien Le Moal wrote:
> >>> Enable a kernel builtin dtb for boards not capable of providing a
> >>> device tree to the kernel.
> >>
> >> I'd prefer if we picked a mechanism that allows a single kernel
> >> binary to be run on multiple systems.  I think there's two use cases h=
ere:
> >
> > I strongly support "single kernel binary for multiple systems" but
> > it's for different purpose here.
> >
> >>
> >> * Bootloaders that provide no DTB at all.
> >> * Bootloaders that provied a DTB that, for some reason, isn't usable.
>=20
> Sure, but as Anup mentions below, the current use case it to not even use
> any bootloader at all for the K210 since that brings no value at all (in =
my
> opinion). More on this below.
>=20
> >>
> >> Given those constraints, could we do something similar to the early
> fixups?
> >> I'm thinking we could build a mapping between a hardware identifier
> >> and a DTB, then look up the DTB we want to use.  Users that want a
> >> kernel that only runs on a single device can do so by configuring
> >> only a single DTB, users that want a more portable kernel can select
> >> a bunch -- that's essentially the same as how we're treating
> >> everything else (for example, the
> >> CONFIG_SOC_* stuff).
> >
> > There is no bootloader on Kendryte K210. The Linux RISC-V NOMMU kernel
> > boots directly. The BUILTIN_DTB is only applicable to cases where
> > there is no bootloader before kernel.
> >
> > The Linux RISC-V NOMMU will tend be used in cases where:
> > 1. There is no bootloader and kernel boots directly hence we need
> > builtin DTB feature.
> > 2. There is very less RAM so we will have to build kernel specific to
> > a particular platform with bare minimum drivers. Due to this, we will
> > have separate defconfig for NOMMU platforms.
> >
> > I think point1 can be tackled if we enforce having bootloader (such as
> > U-Boot) for NOMMU systems and drop this patch.
>=20
> But that would go against point 2 as that will use more memory... By "dro=
p
> this patch", may be you meant to say "not use this config option" ?

I meant to use U-Boot on Kendryte to launch kernel.

>=20
> > For point2 above, we don't have much alternatives other than reducing
> > kernel binary size by disabling unwanted drivers.
>=20
> And not using a boot loader. Sean got U-boot working with Kendryte, so it=
 is
> not that we cannot make it work. It is only that it may be less optimal d=
ue to
> the memory used by the boot loader itself. Unless we can recover it if th=
e
> kernel relocate itself over it ? Surely doable, but it does sound to me l=
ike an
> overkill for this particular use case, i.e. a tiny, hyper-embedded board =
where
> running Linux is probably not the best choice in the first place, at leas=
t when
> looking at real applications. The story is different for "hobbyist" level=
. My on-
> going 6 DoF robotic arm project controlled with Linux on K210 is a valid =
use
> case after all :)

Dropping BUILTIN DTB feature will be more like a Linux RISC-V policy thingy=
.
My suggestion was more about discouraging Linux S-mode users to use the
BUILTIN DTB feature.

I agree that it is difficult to fit a proper boot-flow (having proper bootl=
oader)
due to limited RAM. If we don't link DTB to Linux RISC-V NOMMU then some
thing else need to provide it hence bootloader suggestion.

Apart from the Linux RISC-V NOMMU use-case, the BUILTIN DTB feature can
be useful in environments such as FPGAs/Palladium where proper bootloader
is not available.

Regards,
Anup

>=20
> >
> >>
> >> For the hardware ID, could we do something like:
> >>
> >> * Check for the top-level DT compatible string, on systems where we
> have a
> >>   provided DTB.
> >> * Check for a matching mimpid/marchid/mvendorid tuple, maybe with
> >> some sort of
> >>   masking functionality if we later need one.  These are availiable vi=
a SBI
> >>   calls, but I'd be inclined to restrict them to M-mode boot and just =
say the
> >>   SBI must provide a device tree with at least a suitable compatible s=
tring.
> >>
> >> While I suppose we could put together a tool for generating these
> >> tables, for now we could probably just stick the mappings in a table
> >> for now given that there's only one of them.
> >>
> >> That said, I'm not sure what to do about the different Kendryte
> >> boards -- is there any way to poke the hardware to see which is which?
> >
> > I am sure there are two three different boards out there. Don't know
> > exact differences between these boards.
>=20
> As far as I can tell, all the boards use the exact same SoC. No differenc=
es that
> I can detect nor aware of. What differs between the different flavors of
> boards are the perypherals attached: some have WiFi, different LCDs and
> different cameras. The device tree is able to describe that of course, bu=
t the
> core dtsi part for the SoC itself seem to be OK at least for the 4 differ=
ent
> boards I have (Kendryte KD233, Sipeed MAIXDUINO, MAIX Go and Dan
> Dock).
>=20
> >
> > Regards,
> > Anup
> >
> >>
> >>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> >>> ---
> >>>  arch/riscv/Kbuild            |  1 +
> >>>  arch/riscv/Kconfig           | 18 ++++++++++++++++++
> >>>  arch/riscv/boot/dts/Makefile |  4 ++++
> >>>  arch/riscv/kernel/setup.c    |  6 ++++++
> >>>  arch/riscv/mm/init.c         |  4 ++++
> >>>  5 files changed, 33 insertions(+)
> >>>
> >>> diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild index
> >>> d1d0aa70fdf1..988804e430e4 100644
> >>> --- a/arch/riscv/Kbuild
> >>> +++ b/arch/riscv/Kbuild
> >>> @@ -1,3 +1,4 @@
> >>>  # SPDX-License-Identifier: GPL-2.0-only
> >>>
> >>>  obj-y +=3D kernel/ mm/ net/
> >>> +obj-$(CONFIG_USE_BUILTIN_DTB)	+=3D boot/dts/
> >>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig index
> >>> 1a3b5a5276be..28899e15f548 100644
> >>> --- a/arch/riscv/Kconfig
> >>> +++ b/arch/riscv/Kconfig
> >>> @@ -355,6 +355,24 @@ config CMDLINE_FORCE
> >>>
> >>>  endchoice
> >>>
> >>> +config USE_BUILTIN_DTB
> >>> +	bool "Use builtin DTB"
> >>> +	help
> >>> +	  Link a device tree blob for particular hardware into the kernel,
> >>> +	  suppressing use of the DTB pointer provided by the bootloader.
> >>> +	  This option should only be used with hardware or bootloaders that
> >>> +	  are not capable of providing a DTB to the kernel, or for
> >>> +	  experimental hardware without stable device tree bindings.
> >>> +
> >>> +config BUILTIN_DTB_SOURCE
> >>> +	string "Source file for builtin DTB"
> >>> +	default ""
> >>> +	depends on USE_BUILTIN_DTB
> >>> +	help
> >>> +	  Base name (without suffix, relative to arch/riscv/boot/dts) for
> >>> +	  the a DTS file that will be used to produce the DTB linked into
> >>> +	  the kernel.
> >>> +
> >>>  endmenu
> >>>
> >>>  menu "Power management options"
> >>> diff --git a/arch/riscv/boot/dts/Makefile
> >>> b/arch/riscv/boot/dts/Makefile index dcc3ada78455..0bf2669aa12d
> >>> 100644
> >>> --- a/arch/riscv/boot/dts/Makefile
> >>> +++ b/arch/riscv/boot/dts/Makefile
> >>> @@ -1,2 +1,6 @@
> >>>  # SPDX-License-Identifier: GPL-2.0
> >>> +ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")
> >>> +obj-$(CONFIG_USE_BUILTIN_DTB) +=3D $(patsubst
> >>> +"%",%,$(CONFIG_BUILTIN_DTB_SOURCE)).dtb.o
> >>> +else
> >>>  subdir-y +=3D sifive
> >>> +endif
> >>> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> >>> index 0a6d415b0a5a..3e89be9d888c 100644
> >>> --- a/arch/riscv/kernel/setup.c
> >>> +++ b/arch/riscv/kernel/setup.c
> >>> @@ -68,7 +68,13 @@ void __init setup_arch(char **cmdline_p)
> >>>
> >>>  	setup_bootmem();
> >>>  	paging_init();
> >>> +
> >>> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
> >>> +	unflatten_and_copy_device_tree();
> >>> +#else
> >>>  	unflatten_device_tree();
> >>> +#endif
> >>> +
> >>>  	clint_init_boot_cpu();
> >>>
> >>>  #ifdef CONFIG_SWIOTLB
> >>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c index
> >>> 965a8cf4829c..1274e889d008 100644
> >>> --- a/arch/riscv/mm/init.c
> >>> +++ b/arch/riscv/mm/init.c
> >>> @@ -480,7 +480,11 @@ static void __init setup_vm_final(void)  #else
> >>> asmlinkage void __init setup_vm(uintptr_t dtb_pa)  {
> >>> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
> >>> +	dtb_early_va =3D __dtb_start;
> >>> +#else
> >>>  	dtb_early_va =3D (void *)dtb_pa;
> >>> +#endif
> >>>  }
> >>>
> >>>  static inline void setup_vm_final(void)
> >
>=20
>=20
> --
> Damien Le Moal
> Western Digital Research

