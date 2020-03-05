Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B387179EF7
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 06:14:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=XfkdSi6WHVXWKJ+6n6b7o4dCEaML1TOYzZVFAlKMHis=; b=M/inE19WEL04e+n+phTl1gHhU
	lQtU6y7a78C/GzUmif90Sw82is8qojRlqV1qWjVdrIx+WQE3z04rx76t3Suz3ICz5gRCDuXbpxOu8
	wMiQeLsCxe4JSvKawbxoWaFjbcjrcuf0GSHi5n4uK8pvpnCAgkexiogeAcSi5ayddcwnBT1UEQM60
	td37Lxwgcth8VBGJSs6IYLVPwPlebUyRdiAS8APzdi8+1M0SIBuEw2ytmRmlbWdVYNoXBQpvPMPzn
	q3xfDsN90trrZB4alw6a1sE5cO1yopCZyRxjE3ISzwmg4q5nX65PZFyzAB4hViTpGCUW6zpgRzPcP
	3Cp3pLAGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ipz-0007kW-Pn; Thu, 05 Mar 2020 05:14:23 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ipv-0007jW-O5
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 05:14:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583385259; x=1614921259;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=NO33j96hpq5h/PzYPaO8J6dc27fiI6fKEgFn2vXrpxA=;
 b=Ux595JItldFPXOV/zKcJMZ1tnorPttBsCT2bVNmSydrD5pNXediclRWZ
 KruxDDjdjWT1Vzk9lfIDaSfBHkNqnhFG70mk4jjKYPUx4HlboPPrNdEUM
 9UTCmZ1FbnBlaummz9IGKtHaDXUVoQykX46EJuMRUqj9CB7oHoNMQoBGU
 c0NsUcqkPFl4RuWkPIpaIu/6l2qkRi+CziYkOr03G937rC5351/GZlXXV
 O7Qxzfe7ol3vYHTrvo3cTKOSdgP6aVXfEx0NkfG6VtvoLKD9y9BZJD0q4
 Ii8InQA88T80wJewE0CsNq9bkCMbgXpnXyILL4/VZs4IRIWQDb3yXZlib g==;
IronPort-SDR: EEoUHinkDq9z8Svo+Uzhh2Oixz7HeCqLW/n+k/Zx2aCn4fRi3l6cqNV1mVKP+GzEbex662XPqs
 WGZXXlTdO9K681DWgz47BdI1jWY2JnKxMe9YZlbDzTMh2DXa9Yh0iGrIOzJk1xXp1iLwgy2RI/
 HmGVPsp3jGrexsq8a/fpPvv3mUIPqeKdbsYxJ0vKORCQW4qZiGBcugOCmSRAnipi36TGFZxMeb
 94W9TYLMQWYTQ+m9e7sdP0/fCkhMBd4BgJfwwGLf2rMjD5zQ0fORVsb7q5JGlkvHAT67Wn2u6P
 vHs=
X-IronPort-AV: E=Sophos;i="5.70,516,1574092800"; d="scan'208";a="239762789"
Received: from mail-mw2nam12lp2049.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.49])
 by ob1.hgst.iphmx.com with ESMTP; 05 Mar 2020 13:14:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SGWUdmwzfIpmmvBCBu+O4sBnkrUEpGEm1QwI5a0e/1DiZ4f4eUl/b6/oRDIQM2BAOc2CjJuIdC6kTd0O0P+YI+Iz9/DqEefsUR0zSJG4yKoEMHBkhVZ/wagnZoIdJzokvNdxipwubqCS8OqFHl0+8HhLV7OzUky0jknrjLcAqCuGB1WVnMFHAoB2u69lf91f+5i83iY4YjpU0xROWVmVLKgxXuEE7EbJFDuJUCVBVRHYWhsxyGOQ1wi1+HEAJdCpX6vXdbkXcIP9GnB6wm0MXm2opL/5WAawAWaiYw/GDri74GG5V/TW/1nDiA9lF/cym5Ev3DwOsgRXoRGRDhJQTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XfkdSi6WHVXWKJ+6n6b7o4dCEaML1TOYzZVFAlKMHis=;
 b=Lyg2S070b0PdWb5IfjXzkyXX87D9wjElc4ukeR1X7L2ou4Z1arGc5z5QYvdqIlAArOccS6CpjIjT0OZNMTyfFVO52tQ5ZSstj9bpn4R9oO0AaKRuBJsRhjBPY2Vh6oBMb6QzO078xt4pQQwyYs4JUJRij9eHEhmTKZddFliJqx27LXZli7J52tcKABH6L+h3xbxuKprQLErLWDn9fJ4dwFG8pfPrLvWyZTn2eGs1sF5oZwOPKjFEtioLRTKkuU+y3PuD+NC2qkc6qQYQFTFyN/LZb2NzaFE4585sKncHpb0CuoJ9PToHvuKmLTWzYXhUN5W0ROSl+zIMiQiEIQyULA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XfkdSi6WHVXWKJ+6n6b7o4dCEaML1TOYzZVFAlKMHis=;
 b=bzPHriPK8vNT4dpnuz8True9bq7q5Jf6n5BdilCBTry/jp92Xy2V1rYvPNS29xz3C2dayZNVpKrKcTp1Am85esoyoh8JW2sF04tjAkvDgvSddV/S0BaCiMPjUwzcHB/IZYx14KQ18e7WJS8i/UREM/qNWzIab6Lppxauzbztm9Q=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB5925.namprd04.prod.outlook.com (2603:10b6:a03:107::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Thu, 5 Mar
 2020 05:14:15 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 05:14:15 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Thread-Topic: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Thread-Index: AQHV8lslCIJVDubGrEC0qvpduZeQ5Q==
Date: Thu, 5 Mar 2020 05:14:14 +0000
Message-ID: <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-5-damien.lemoal@wdc.com>
 <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
 <MN2PR04MB6061D77B37B5BFD3851F661F8DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [2400:2411:43c0:6000:5d45:6908:9509:187]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4f3f1fa3-d05e-484e-e91a-08d7c0c40c62
x-ms-traffictypediagnostic: BYAPR04MB5925:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB592556AE9B4CF883F12CBFC4E7E20@BYAPR04MB5925.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 03333C607F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(376002)(136003)(39860400002)(396003)(189003)(199004)(71200400001)(8676002)(7696005)(81166006)(81156014)(4326008)(53546011)(6506007)(86362001)(5660300002)(33656002)(2906002)(186003)(316002)(66476007)(64756008)(66946007)(55016002)(52536014)(54906003)(110136005)(66556008)(76116006)(9686003)(66446008)(8936002)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5925;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zEIDXH/e5+QXw168X8/UzCOtavbfo1GxxJJwy1ILwluYq+eykqYFnI0pBlJTc6o6XVVXGyYpomPKp+oLZx3znLtW8+X4oV9amFoZbL5bkHvEm8CzodxcwdBPPDjXm33TboG+gdODv0PlcBeAxDsT24G4mh8OXQ7vRHUiKz+VvZ6wt/QFL3NzUJYyl+5dtYw6iB7MT1z1/9kiM8lNAYUUGtJg1U56YW4nwB/98Lkb7oFSHHp5CpN/w6+6CBnV9T+5iW4hkQB3VGwG1qIc7K5OjsL8WCaYNGMhqO3AOz4ysQ+26oai2GRzjO2gCglzJcW6sd40Cob5+QBJAuwP7/ggJvqooUv4PdUGzL9pSLAt8w0zEdx94hLCmW/lPrSi2WbBZMyY7yj8Zp8riLE5+7evXTnl2R9+M9un8PJQ6QW60jTeTNpleX1EF7Ae0/YDVDQc
x-ms-exchange-antispam-messagedata: VcDV/04IQM8wYBElLfqa3+vmejUnk/zabhj122SUPL4TyipnDpq1VuezP4v8H7xu+x8VowUza0wHwQX9tNtTbPSm43OJDl6zJhYapR1/QWmBebC0crTeStJM0buqQ2j+8HNjaguJijd0+eyLQI02MQY57So/UdUwpIIAEEC+aeRzIOzviGqnypMVn0ZcoqNLk2vnQGKEFTK5Od6QLyNPCA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f3f1fa3-d05e-484e-e91a-08d7c0c40c62
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2020 05:14:14.8347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R/BDXdDIP7zSlZkpybLdKqDqHR0CvOdonCiUnkQApcrDyNXERqe9/dqzwWnjHqEmYuYThg1bGQumUsXD+dBHqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_211419_804894_5D06E7BD 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 2020/03/05 13:58, Anup Patel wrote:=0A=
> =0A=
> =0A=
>> -----Original Message-----=0A=
>> From: Palmer Dabbelt <palmer@dabbelt.com>=0A=
>> Sent: 05 March 2020 00:59=0A=
>> To: Damien Le Moal <Damien.LeMoal@wdc.com>=0A=
>> Cc: linux-riscv@lists.infradead.org; Paul Walmsley=0A=
>> <paul.walmsley@sifive.com>; Anup Patel <Anup.Patel@wdc.com>=0A=
>> Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support=0A=
>>=0A=
>> On Wed, 12 Feb 2020 02:34:26 PST (-0800), Damien Le Moal wrote:=0A=
>>> Enable a kernel builtin dtb for boards not capable of providing a=0A=
>>> device tree to the kernel.=0A=
>>=0A=
>> I'd prefer if we picked a mechanism that allows a single kernel binary t=
o be=0A=
>> run on multiple systems.  I think there's two use cases here:=0A=
> =0A=
> I strongly support "single kernel binary for multiple systems" but it's f=
or=0A=
> different purpose here.=0A=
> =0A=
>>=0A=
>> * Bootloaders that provide no DTB at all.=0A=
>> * Bootloaders that provied a DTB that, for some reason, isn't usable.=0A=
=0A=
Sure, but as Anup mentions below, the current use case it to not even use a=
ny=0A=
bootloader at all for the K210 since that brings no value at all (in my=0A=
opinion). More on this below.=0A=
=0A=
>>=0A=
>> Given those constraints, could we do something similar to the early fixu=
ps?=0A=
>> I'm thinking we could build a mapping between a hardware identifier and =
a=0A=
>> DTB, then look up the DTB we want to use.  Users that want a kernel that=
=0A=
>> only runs on a single device can do so by configuring only a single DTB,=
 users=0A=
>> that want a more portable kernel can select a bunch -- that's essentiall=
y the=0A=
>> same as how we're treating everything else (for example, the=0A=
>> CONFIG_SOC_* stuff).=0A=
> =0A=
> There is no bootloader on Kendryte K210. The Linux RISC-V NOMMU kernel=0A=
> boots directly. The BUILTIN_DTB is only applicable to cases where there i=
s=0A=
> no bootloader before kernel.=0A=
> =0A=
> The Linux RISC-V NOMMU will tend be used in cases where:=0A=
> 1. There is no bootloader and kernel boots directly hence we need=0A=
> builtin DTB feature.=0A=
> 2. There is very less RAM so we will have to build kernel specific to=0A=
> a particular platform with bare minimum drivers. Due to this, we will=0A=
> have separate defconfig for NOMMU platforms.=0A=
> =0A=
> I think point1 can be tackled if we enforce having bootloader (such as U-=
Boot)=0A=
> for NOMMU systems and drop this patch.=0A=
=0A=
But that would go against point 2 as that will use more memory... By "drop =
this=0A=
patch", may be you meant to say "not use this config option" ?=0A=
=0A=
> For point2 above, we don't have much alternatives other than reducing=0A=
> kernel binary size by disabling unwanted drivers.=0A=
=0A=
And not using a boot loader. Sean got U-boot working with Kendryte, so it i=
s not=0A=
that we cannot make it work. It is only that it may be less optimal due to =
the=0A=
memory used by the boot loader itself. Unless we can recover it if the kern=
el=0A=
relocate itself over it ? Surely doable, but it does sound to me like an=0A=
overkill for this particular use case, i.e. a tiny, hyper-embedded board wh=
ere=0A=
running Linux is probably not the best choice in the first place, at least =
when=0A=
looking at real applications. The story is different for "hobbyist" level. =
My=0A=
on-going 6 DoF robotic arm project controlled with Linux on K210 is a valid=
 use=0A=
case after all :)=0A=
=0A=
> =0A=
>>=0A=
>> For the hardware ID, could we do something like:=0A=
>>=0A=
>> * Check for the top-level DT compatible string, on systems where we have=
 a=0A=
>>   provided DTB.=0A=
>> * Check for a matching mimpid/marchid/mvendorid tuple, maybe with some=
=0A=
>> sort of=0A=
>>   masking functionality if we later need one.  These are availiable via =
SBI=0A=
>>   calls, but I'd be inclined to restrict them to M-mode boot and just sa=
y the=0A=
>>   SBI must provide a device tree with at least a suitable compatible str=
ing.=0A=
>>=0A=
>> While I suppose we could put together a tool for generating these tables=
, for=0A=
>> now we could probably just stick the mappings in a table for now given t=
hat=0A=
>> there's only one of them.=0A=
>>=0A=
>> That said, I'm not sure what to do about the different Kendryte boards -=
- is=0A=
>> there any way to poke the hardware to see which is which?=0A=
> =0A=
> I am sure there are two three different boards out there. Don't know exac=
t=0A=
> differences between these boards.=0A=
=0A=
As far as I can tell, all the boards use the exact same SoC. No differences=
 that=0A=
I can detect nor aware of. What differs between the different flavors of bo=
ards=0A=
are the perypherals attached: some have WiFi, different LCDs and different=
=0A=
cameras. The device tree is able to describe that of course, but the core d=
tsi=0A=
part for the SoC itself seem to be OK at least for the 4 different boards I=
 have=0A=
(Kendryte KD233, Sipeed MAIXDUINO, MAIX Go and Dan Dock).=0A=
=0A=
> =0A=
> Regards,=0A=
> Anup=0A=
> =0A=
>>=0A=
>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>>> ---=0A=
>>>  arch/riscv/Kbuild            |  1 +=0A=
>>>  arch/riscv/Kconfig           | 18 ++++++++++++++++++=0A=
>>>  arch/riscv/boot/dts/Makefile |  4 ++++=0A=
>>>  arch/riscv/kernel/setup.c    |  6 ++++++=0A=
>>>  arch/riscv/mm/init.c         |  4 ++++=0A=
>>>  5 files changed, 33 insertions(+)=0A=
>>>=0A=
>>> diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild index=0A=
>>> d1d0aa70fdf1..988804e430e4 100644=0A=
>>> --- a/arch/riscv/Kbuild=0A=
>>> +++ b/arch/riscv/Kbuild=0A=
>>> @@ -1,3 +1,4 @@=0A=
>>>  # SPDX-License-Identifier: GPL-2.0-only=0A=
>>>=0A=
>>>  obj-y +=3D kernel/ mm/ net/=0A=
>>> +obj-$(CONFIG_USE_BUILTIN_DTB)	+=3D boot/dts/=0A=
>>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig index=0A=
>>> 1a3b5a5276be..28899e15f548 100644=0A=
>>> --- a/arch/riscv/Kconfig=0A=
>>> +++ b/arch/riscv/Kconfig=0A=
>>> @@ -355,6 +355,24 @@ config CMDLINE_FORCE=0A=
>>>=0A=
>>>  endchoice=0A=
>>>=0A=
>>> +config USE_BUILTIN_DTB=0A=
>>> +	bool "Use builtin DTB"=0A=
>>> +	help=0A=
>>> +	  Link a device tree blob for particular hardware into the kernel,=0A=
>>> +	  suppressing use of the DTB pointer provided by the bootloader.=0A=
>>> +	  This option should only be used with hardware or bootloaders that=
=0A=
>>> +	  are not capable of providing a DTB to the kernel, or for=0A=
>>> +	  experimental hardware without stable device tree bindings.=0A=
>>> +=0A=
>>> +config BUILTIN_DTB_SOURCE=0A=
>>> +	string "Source file for builtin DTB"=0A=
>>> +	default ""=0A=
>>> +	depends on USE_BUILTIN_DTB=0A=
>>> +	help=0A=
>>> +	  Base name (without suffix, relative to arch/riscv/boot/dts) for=0A=
>>> +	  the a DTS file that will be used to produce the DTB linked into=0A=
>>> +	  the kernel.=0A=
>>> +=0A=
>>>  endmenu=0A=
>>>=0A=
>>>  menu "Power management options"=0A=
>>> diff --git a/arch/riscv/boot/dts/Makefile=0A=
>>> b/arch/riscv/boot/dts/Makefile index dcc3ada78455..0bf2669aa12d 100644=
=0A=
>>> --- a/arch/riscv/boot/dts/Makefile=0A=
>>> +++ b/arch/riscv/boot/dts/Makefile=0A=
>>> @@ -1,2 +1,6 @@=0A=
>>>  # SPDX-License-Identifier: GPL-2.0=0A=
>>> +ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")=0A=
>>> +obj-$(CONFIG_USE_BUILTIN_DTB) +=3D $(patsubst=0A=
>>> +"%",%,$(CONFIG_BUILTIN_DTB_SOURCE)).dtb.o=0A=
>>> +else=0A=
>>>  subdir-y +=3D sifive=0A=
>>> +endif=0A=
>>> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c=0A=
>>> index 0a6d415b0a5a..3e89be9d888c 100644=0A=
>>> --- a/arch/riscv/kernel/setup.c=0A=
>>> +++ b/arch/riscv/kernel/setup.c=0A=
>>> @@ -68,7 +68,13 @@ void __init setup_arch(char **cmdline_p)=0A=
>>>=0A=
>>>  	setup_bootmem();=0A=
>>>  	paging_init();=0A=
>>> +=0A=
>>> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)=0A=
>>> +	unflatten_and_copy_device_tree();=0A=
>>> +#else=0A=
>>>  	unflatten_device_tree();=0A=
>>> +#endif=0A=
>>> +=0A=
>>>  	clint_init_boot_cpu();=0A=
>>>=0A=
>>>  #ifdef CONFIG_SWIOTLB=0A=
>>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c index=0A=
>>> 965a8cf4829c..1274e889d008 100644=0A=
>>> --- a/arch/riscv/mm/init.c=0A=
>>> +++ b/arch/riscv/mm/init.c=0A=
>>> @@ -480,7 +480,11 @@ static void __init setup_vm_final(void)  #else=0A=
>>> asmlinkage void __init setup_vm(uintptr_t dtb_pa)  {=0A=
>>> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)=0A=
>>> +	dtb_early_va =3D __dtb_start;=0A=
>>> +#else=0A=
>>>  	dtb_early_va =3D (void *)dtb_pa;=0A=
>>> +#endif=0A=
>>>  }=0A=
>>>=0A=
>>>  static inline void setup_vm_final(void)=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

