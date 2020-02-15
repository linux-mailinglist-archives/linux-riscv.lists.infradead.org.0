Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E524F15FC69
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Feb 2020 04:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=SCTDnN+CV4iIoNjZ/LoyfIv5CC/brIrsYcTJLLzUFMI=; b=r35+Uw9XmeDA78pYoJ8dZY9Uq
	mCLIw1sTspkMXt6Vj2upFmTIwBx0Mqj+kaIPNWZt10nI83gfySkObdZKRYvdasLZufN5QmTuMXV3P
	XNI1c0ImdfJbkXERlK2LNdvmGlMwtqpHKh2FDDBLmrk5N6wQoLjuy/TpZZbbveEka3qnERW93w3Mf
	sctrUgUcbAKK2RhVa1TZYpbnBH2hO3Tocl4LQ8WpbI25oyKFhtZP3gbgcTqv8FpXie5XtUV0dIeIH
	JErdevYQP8rER05/RSy2FBbdosSUspFvSbqjQ0X/PWTMJN8LyKd0Hz42cU3zHVT13SjMzZtLHVuOn
	zMyl7b5hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2nh0-0002N0-R2; Sat, 15 Feb 2020 03:00:30 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ngx-0002Dq-56
 for linux-riscv@lists.infradead.org; Sat, 15 Feb 2020 03:00:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581735651; x=1613271651;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=s8D/oR9VmJzMHpqF5Xq2tD7KmpZ/NexuhYr55oVUNQY=;
 b=o1QhkNTJD18LZa66jFgjJwKCPwN7HlWYc5MVgqCNjO1kFasTg+c7/2OR
 uPrHr2jibVyNqDltjkYoRIc6CJOVimR+NaeR25jfUrGClCvd1wKv4tftd
 Lb6rJBsvKeh35kR3tJo7pHZTZuiJjUZA0Cf2ou3OLcbC4A2wdQuK6YOx0
 plMCF1vkkVQ9YSzoWMSWbHZaPNv6ydh2SbW7b2AGWq0QXavzic5u7Ws8+
 2BKnXvQlLAJKLKFz6XJ/XGnYyRZxQOy9WIbmSPCvAJSzU9rWey7sRHiWz
 ziI5vgDcO/N1abijxKR+F7ElOFBef76ufAzUM+tXKAYTN6OldEBbJ1vz0 Q==;
IronPort-SDR: kT0hxez3KXXc2yReTj/xecWk8OY1unjdEHRZgSRAdOl8f/eeGRf2ksEQLOucSPArIsCYY0fOIv
 VWDtmiMbCGjJtRS75ici1D2bzwtTjLqO3e7EWYZzfBDo1eM6zcRuWhjdeddgZSRdPFlanvaJk1
 U5K/i0v79KWj0s2NJM12C3VpeUpyZT4eY+HVAZg8Gsp3TXuGO2XLyg+FE02O46uwNig24BVwrf
 9gw5nGGdxAin+vWAYGA4lC4qWsDEGT14Ti0YsjmjmLpvoaLysGbzDFECNGSr+Sr0lABDY/kHc6
 A90=
X-IronPort-AV: E=Sophos;i="5.70,442,1574092800"; d="scan'208";a="231730826"
Received: from mail-dm6nam11lp2174.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.174])
 by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2020 11:00:41 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DpoKlDDpf6Nbs1Hvus9HY9uvQzAXCDrfsPFegTB68eNcLBOJql/LTg2uptGucWUkUHBGj70NO9qYhrFmXjPia0Ana/VrU//kRuNGOW0HISnT92iAg7aAj2QHXxko7/0isnBAtB5STiQXS0f+en+e4qaUR2dKPN4RwvZew3UKhWOYS0MolNSYKb+i/yGd4d1/rM7MgMPdmLsGnsCACH319h1SUoHYceEcEjeacyLmnwz7GPKUsHe1tEl3cPt4srtrt4g54IYnPO3Eu5Z6d50Gn0PEGqtiKHdrA3TbxqhSd9z1DCM/PbLFK5DEYW2UilEPAxukO5PLGFVx2itJyqQzKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SCTDnN+CV4iIoNjZ/LoyfIv5CC/brIrsYcTJLLzUFMI=;
 b=iDdJthHyv5HVT9NiNh8lMRCMrhPP4GWTjhLUM1NDhnD9VZYbsPfLcoO6z+ifFKfvWFbEg49UGgqg3phVP/sw1AcfxU1vPpoNHbgLSecKTI2Q4XuedHovEkc7viSAafvrt+zK8biIZz8JGAKFREIp1Na1cqS4/Nl+D11kMycQzhBLHfvHDKBMMv51gkb68QzFcljaocYXssivxL3goFFYEI1DJ5m6Dc11tRZ8oOr0DYOPuN/hc8AxDjNF9Q27lKPA0qXeWxxCY+4aB8R7m63PWDdu6NyCxMcWUSKW0gAEzch4cY05hpB1FMgfczNVi9gCmwKpptLiZMzD4G9obDcAYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SCTDnN+CV4iIoNjZ/LoyfIv5CC/brIrsYcTJLLzUFMI=;
 b=KPWIxB3TYtCDv1EfeJHvFbTVfU5yxo5xDRBW3xaM+upIMUjYZHK4XrM0mY8cmP5XCqlK9E6rpiSq+bNICOHYPTBpvy6LeLsuteOGclTzlCobME8+H9xd1QLZXqAiiSwX5YlQL710GmkQUWLIsU/h+T5osCLQ3rZOw/6CYhJk4o0=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.59.16) by
 BYAPR04MB4997.namprd04.prod.outlook.com (52.135.234.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Sat, 15 Feb 2020 03:00:19 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::cd8e:d1de:e661:a61%5]) with mapi id 15.20.2707.031; Sat, 15 Feb 2020
 03:00:18 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Sean Anderson <seanga2@gmail.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Topic: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Index: AQHV43iOGrtZHkBAPE20VvlfIfsDtA==
Date: Sat, 15 Feb 2020 03:00:18 +0000
Message-ID: <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
 <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c37070cd-e615-4e8e-125e-08d7b1c330a7
x-ms-traffictypediagnostic: BYAPR04MB4997:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB4997553ABACEB92DAE92FE21E7140@BYAPR04MB4997.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03142412E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(39860400002)(346002)(189003)(199004)(26005)(186003)(66556008)(76116006)(110136005)(54906003)(66446008)(64756008)(66476007)(86362001)(53546011)(6506007)(7696005)(316002)(33656002)(71200400001)(66946007)(8936002)(966005)(2906002)(5660300002)(9686003)(81166006)(8676002)(4326008)(478600001)(52536014)(55016002)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4997;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PQO674u/8O36iaWPhbHMNOrCqF+CeejRHxrZfDIicbvz7c1t9KhNfushzbTj7g8dT3Ett6OlPv3C9DopTJUAzSFmg35hP3GqoPbnHZukyduaWexNo7ToL+BtGNAVb5fzMsvKo4rvLzlJqPJ3gIAVDSZtLQxekUQWmOCoApqeH6YxkcFsqzbByjihh2XnCMQfyUcQ8BS5IGbTyu84J017/jYJPrNFYdXspTRLrySQtDxCpqk8o9NIdaDN08tDRdQtjKAJunx1eAzvX8IhlLSf5GgZrUq5uBm+RoY/QqajSyDfFzUYEmVoI/SuZRsmMQ6D3ETNN2qTkqARQVagUX/oNkldQUMy48AfJUKWR/ochCS/z0zo39g7QXXu6KSu7/UFlXcG3UZ9MSdooied3/quCrlj8FijqiNZm5TULISW7iDuBRWlp4k8Y1pRhqcsnHZTV9no8NdKizlwp/ZAVPg5u/cs80zlX3LouTB74qCBZi/nVVvVtyQyGA0+MfFwsH5XXwkvuIOFDqbIuU1qg5aEJg==
x-ms-exchange-antispam-messagedata: /Us8RyhXi4k3QBsAgneqCTy1NJvM4QwKHOq3Oxps7xjf0gAl2CXHwt/t2MNCeHuDjgIE83NMKpnyPkhynf2ISawXS4ZPXCcHxvV2hiuy7BLZu91BfJ//StAM9qW8nFWtssmu7Cs9h+Omx+CRVvQFlw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c37070cd-e615-4e8e-125e-08d7b1c330a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2020 03:00:18.7819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GKsiB3zHRjDVXpM6dAor9SCnR5KyH5VH1U5F6Z0YwW1aCgazYj2pxL6pRDCbqboOs8ic+V7j0KSQT1WlVyQu3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4997
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_190027_538483_F82BE28F 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/02/15 11:48, Sean Anderson wrote:=0A=
>>>> +		cpu0: cpu@0 {=0A=
>>>> +			device_type =3D "cpu";=0A=
>>>> +			reg =3D <0>;=0A=
>>>> +			compatible =3D "riscv";=0A=
>>>> +			riscv,isa =3D "rv64imafdc";=0A=
>>>> +			mmu-type =3D "none";=0A=
>>>=0A=
>>> This should be "sv36".=0A=
>>=0A=
>> If we want to run the MMU, yes. For a nommu kernel, I would rather stick=
=0A=
>> with "none". Not that it really matters since the nommu kernel will not=
=0A=
>> look at this entry anyway. No strong opinion either way in the end.=0A=
>> I have not checked the specs yet, but does sv36 necessarily implies olde=
r=0A=
>> specs 1.9 too ? If not, then we may want something else in there for thi=
s=0A=
>> soc special case.=0A=
> =0A=
> Ah, this should be "sv39", sorry. Ideally we would put something like=0A=
> the priv spec version in the isa string, or perhaps as a separate=0A=
> property. From reading the dt docs, it seems like one should try to=0A=
> describe the hardware as best as possible to allow for=0A=
> foward-compatibility.=0A=
=0A=
OK. But I guess we can keep the "none" here until we get to work on the MMU=
=0A=
support. That definitely sounds safer to me considering the specs differenc=
e.=0A=
=0A=
>>>> +			d-cache-size =3D <0x8000>;=0A=
>>>> +			d-cache-block-size =3D <64>; /* bogus */=0A=
>>>> +			clocks =3D <&sysctl 0>;=0A=
>>>=0A=
>>> This is correct only by coincidence. The clock structure is=0A=
>>>=0A=
>>> in0 -> pll0 -> aclk -> cpu=0A=
>>>=0A=
>>> aclk divides by two by default, so it runs at 390 MHz, which is also=0A=
>>> what you set pll1 to. However, if someone else (such as the bootloader)=
=0A=
>>> changes the pll0 frequency then this will be completely off.=0A=
>>=0A=
>> Yes... The clock management needs more work as mentioned in the cover=0A=
>> letter. All of this works for now with direct m-mode boot (no boot loade=
r)=0A=
>> and relies on the hardware defaults which are coded here. The sysctl dri=
ver=0A=
>> also relies on those defaults. A more solid implementation will need the=
=0A=
>> soc_early_init() code to discover and set things up correctly.=0A=
>>=0A=
>> As mentioned in the cover letter, this is all a base. It works, but=0A=
>> definitely is not complete.=0A=
> =0A=
> At the very least, I would different identifiers for each clock. That=0A=
> way you can ignore them now and add support later. There isn't a=0A=
> "natural" ordering (since the clocks are in a different order in every=0A=
> register), so I am using this arbitrary numbering scheme [1].=0A=
> =0A=
> [1] https://github.com/Forty-Bot/u-boot/blob/maix_v6/include/dt-bindings/=
clock/k210-sysctl.h=0A=
=0A=
Good idea. I had a look at this when I used your device tree but decided on=
=0A=
not using it for simplicity since using the default HW setup led to that=0A=
single clock 0. But this is a good point. I will use the identifiers and=0A=
for now have all the IDs used defined to "0". As the sysctl driver is=0A=
changed and improved, the DT can remain the same and more devices added eas=
ily.=0A=
=0A=
>>>> +		ranges;=0A=
>>>> +		interrupt-parent =3D <&plic0>;=0A=
>>>> +=0A=
>>>> +		sysctl: sysctl@50440000 {=0A=
>>>> +			compatible =3D "kendryte,k210-sysctl", "syscon";=0A=
>>>> +			reg =3D <0x50440000 0x1000>;=0A=
>>>> +			#clock-cells =3D <1>;=0A=
>>>> +		};=0A=
>>>=0A=
>>> Would it be possible to model this as an MFD? There are a lot of=0A=
>>> different registers in here, many of which are unrelated to clocks. For=
=0A=
>>> example, there are also reset registers, a reboot register, and DMA=0A=
>>> handshake controls. I think modeling this as a clock controller only=0A=
>>> does not correctly reflect the hardware, and will be awkward in the=0A=
>>> future.=0A=
>>=0A=
>> Absolutely. It is far from complete. And seeing your complete device tre=
e,=0A=
>> there are likely a lot of peripherals for which Linux already has driver=
s=0A=
>> and that could be used if the clocks/sysctl are improved. As mentioned i=
n=0A=
>> the cover letter, this is left as an exercise for interested people :)=
=0A=
>> Note that I am indeed interested in working on this a little more. I sim=
ply=0A=
>> lack the time to do it :)=0A=
> =0A=
> My next project after u-boot support was going to be Linux, so I can=0A=
> lend a hand after I get everything merged on that end.=0A=
=0A=
That would be great !=0A=
=0A=
>>>> +		plic0: interrupt-controller@c000000 {=0A=
>>>> +			#interrupt-cells =3D <1>;=0A=
>>>> +			interrupt-controller;=0A=
>>>> +			compatible =3D "kendryte,k210-plic0", "riscv,plic0";=0A=
>>>> +			reg =3D <0xC000000 0x3FFF008>;=0A=
>>>=0A=
>>> With regard to the size of registers, I had the following exchange on=
=0A=
>>> the U-Boot mailing list.=0A=
>>>=0A=
>>> On Tue, Feb 4, 2020 at 10:23 PM Sean Anderson <seanga2@gmail.com> wrote=
:=0A=
>>>>=0A=
>>>> On 2/4/20 6:32 AM, Bin Meng wrote:=0A=
>>>>> Hi Sean,=0A=
>>>>>=0A=
>>>>> On Mon, Feb 3, 2020 at 4:10 AM Sean Anderson <seanga2@gmail.com> wrot=
e:=0A=
>>>>>> Should the size of a reg be the size of the documented registers, or=
 the size=0A=
>>>>>> of the address space which will be routed to that device?=0A=
>>>>>=0A=
>>>>> Perhaps we need use the size of the address space routed to that=0A=
>>>>> device, in case there is some undocumented registers we need handle.=
=0A=
>>>>=0A=
>>>> Ok, I'll go with the whole address space then.=0A=
>>>=0A=
>>> You may want to make similar changes for Linux; I didn't see any=0A=
>>> documentation about what the preferred size was.=0A=
>>=0A=
>> I wondered about it too. Not really sure what to do about it.=0A=
> =0A=
> The sizes in my device tree are based on reading device memory and=0A=
> seeing where it repeats. For example, the memory at 50210000 and=0A=
> 50210100 is the same, so I set the uart1 reg to <50210000 0x100>.=0A=
=0A=
OK. Will make changes and retest.=0A=
=0A=
> =0A=
>>>> +			interrupts-extended =3D <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,=
=0A=
>>>> +					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;=0A=
>>>> +			riscv,ndev =3D <65>;=0A=
>>>> +			riscv,max-priority =3D <0x07>;=0A=
>>>> +		};=0A=
>>>> +=0A=
>>>> +		uarths0: serial@38000000 {=0A=
>>>> +			compatible =3D "kendryte,k210-uart0", "sifive,uart0";=0A=
>>>=0A=
>>> I would change the first compatible string to "kendryte,k210-uarths",=
=0A=
>>> since that is how this uart is described in their documentation.=0A=
>>=0A=
>> OK. It makes sense.=0A=
>>=0A=
>>>=0A=
>>>> +			reg =3D <0x38000000 0x20>;=0A=
>>>=0A=
>>> Same thing as the size comments above.=0A=
>>>=0A=
>>>> +			interrupts =3D <33>;=0A=
>>>> +			clocks =3D <&sysctl 0>;=0A=
>>>=0A=
>>> Same clock comments.=0A=
>>>=0A=
>>>> +		};=0A=
>>>> +	};=0A=
>>>> +};=0A=
>>>>=0A=
>>>=0A=
>>> --Sean=0A=
>>>=0A=
>>=0A=
>>=0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

