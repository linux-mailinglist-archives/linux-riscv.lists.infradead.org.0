Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7B9179FD3
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 07:14:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=q91acTSOygu/0TRk6kUIz0NOa8qdz/9DjT3TmWD5kXk=; b=Q5Wj/Gu70qnGMduncXvEf50Pb
	2Up6Gor4zqU18aVkJ53S7X9IDQzh8aD8vl/wEP81al8loFRXGax1IazKRRAejiXshor2FTOIKL6DR
	+hDFkes5228eP47Z9JN3fIl/Gp72E/RvOX5lTNhKkWiGmBdOFYfldApCOl+NfQtMz17IrcQ66lcXB
	ZAk4inhxGOTVZwMF4ameq4IHfqGIuHPbu8rx5vFW9dL4OJ5rJmWdyBFBqXZqLLj5+1X16vK/2bOsB
	kvKa66+wrXOE7FzFiTkw3bNIRincCSM2nPGo4WDnvmJr2+9UpJp6ldukW4BAF1DzCtOVcEuLWBSaa
	4EvsnyfxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9jlc-0003cO-21; Thu, 05 Mar 2020 06:13:56 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9jlX-0003b9-5N
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 06:13:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583388830; x=1614924830;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=m5EJx3nxLDC+5B2ZzH196Zx8cWBBf3hH7fiHZ8Va2zg=;
 b=LQR4l55mBT3qk+CaLwxDHBXYJo+idKy83klbxseQGdTz+bQKeqwSrynL
 i8tJIRFJqPmm4cHwWNX+Z7QI8XEmeV5nQ8G51dg/JIP7zf1/zty3QiYPd
 Wrc/yw9t/pq9etN7fPRODS7RVi/PxaicPTf6M+uSMrb5EcXHRHNBTIaBd
 V//++2RmyefCFIM7rYp8peyg/DxJnMuuRvL293Td0+yj5I3TtO6y3cZt2
 vmZl+CinRlUa8gcVPOUIJAQ7/D5oOEHUxwwQFoGJVEtBr2z9yIGUZH4fz
 1hAqgQSAgsVAhrEObQiZGgwJbufXw7LvQTXE40DpMmDfbefm4XQO4n8af A==;
IronPort-SDR: 4K5bUbT+xLVrVZg4ivUrA6Z5GK8ucXkK4EblpKWTkWLTGdwwGUK4IoGpiguGWOasLXiBYS6dkd
 yspNfZNuvFMh8nU8ZN6d7YMwiKiPjXkXMufOczSnKoqmnKT4wS5CdPrmJTcsnvWuXdZe+H9cb4
 UgQGxvzqwW/tWxXqxvQWuFtBxOyFfnJ9tTIgRf4lgp7UGO2uDbaKseafSn7GLfJnrsxvZ9RCX5
 t4CQvzWXK338IHmcbSpSWBKiYifv49//9i6nRTJWiAgatEFbAWv/AuydyDVjDq3wwsv7BzIYGR
 5t8=
X-IronPort-AV: E=Sophos;i="5.70,516,1574092800"; d="scan'208";a="131526677"
Received: from mail-sn1nam04lp2055.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.55])
 by ob1.hgst.iphmx.com with ESMTP; 05 Mar 2020 14:13:47 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CC9QbEexSHkLrANetmHVaWnSBiI5g7e6GHQtN65LZk7c3eptQo5DyS5mBAm+w5VzVUMKa8XRb7d9t7eTGF5m/VEoXICQ+IeVoCjh2kP4r+MrS8SRgNhXBNoNcTY6cvDtzhJ3SyPPeYG7TGYVa7Ko7mnH/zu36k0dhheYGOwsdDtws3enCZfuRNQfbPKYhuYiah+zrM3UInknpS5a8gRio2wRCB0036KOfxPeArmV0qjL9v4k6Gsq8KRQbqKi49iO3qJ6r/eJ3yjhXroWc7KdXS0GnwC8dIGT+MBDoSpj/nrfZrK47yvRmhbt1n6I4ghtoT/oQft1Q+R3dVxWMBDCww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q91acTSOygu/0TRk6kUIz0NOa8qdz/9DjT3TmWD5kXk=;
 b=RLavq8HNQhyvrDQESwz8U3mAXvDG3qT9FzW49qUKntrNQXX8gEHsnij5dopXVB0KwAyW9XyxTXhMZJfrqLCYO12Z8ogepzHgkPMvBT33Xct5dfmm5+osd8zFIUPkGC0vtCvWpZZxMxfUHRBibrjMkiAoH66yAPsJwJA7yVTFq9PfrymKusXaSWGBI6JUqFDZuZv/AbVsvYOvkfRK/Wvjm81C5iDPln6gPxz3sGMpa1O0/g9dCi84jYli/M0mSKI2rbiD6/qV/m5/kJvFE7D/mqdR/xpxP03/Cn5S0sM9nLefiLoSR8ggwuAp5P6qWVP4sMuU7jKU6JdgnY7UgFRacg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q91acTSOygu/0TRk6kUIz0NOa8qdz/9DjT3TmWD5kXk=;
 b=GKHVIEpRjY16D5PhyN2IB03IrW5i+Yy0Q53dWxQIHS+gjDD1YMzpGSBaL8Y6I816JtZJYDjqXV0+6Tq4o/NNnm9gmR2m/JqxIs3RbbdO8vlzQhzU0/JuBhrHuDf8QXzNkdCXIT5FVcN5FLFGJSi3lRS5Vh2wsHr65XNRO4nLsqc=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB6006.namprd04.prod.outlook.com (2603:10b6:a03:eb::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.19; Thu, 5 Mar
 2020 06:13:45 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 06:13:45 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Thread-Topic: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Thread-Index: AQHV8lslCIJVDubGrEC0qvpduZeQ5Q==
Date: Thu, 5 Mar 2020 06:13:45 +0000
Message-ID: <BYAPR04MB5816280119C3A35ACF968DF2E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-5-damien.lemoal@wdc.com>
 <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
 <MN2PR04MB6061D77B37B5BFD3851F661F8DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
 <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
 <MN2PR04MB6061B382AF9F875B61B863978DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [2400:2411:43c0:6000:5d45:6908:9509:187]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9cca39fe-f920-43b5-469e-08d7c0cc5c8d
x-ms-traffictypediagnostic: BYAPR04MB6006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB6006D745F2EAF8FC01808202E7E20@BYAPR04MB6006.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03333C607F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(86362001)(8936002)(478600001)(52536014)(110136005)(7696005)(33656002)(54906003)(6506007)(53546011)(316002)(2906002)(186003)(71200400001)(55016002)(9686003)(5660300002)(76116006)(81166006)(81156014)(8676002)(66946007)(66476007)(66556008)(66446008)(64756008)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6006;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7iWDvJZBNR6CwHgkOUCqyPzP7fwFVuRC2HItOZ7WFDzmmtOCE+yioNdXSGFLY/m+WY4mgk9vBK3F2n4YQJ173in0oNsmqsPEMHJ9waGB7qywUJz1siE9lWIxpo2Qdhpr5bSkRv7SmTeTsIV3MWYRYpU8s12uSgFGU4q4pJu/YRtqQkjcmxlLlhHnHSRMFNJAL3eFX01MnjS8fgmKWPWI3soQ7zC5Zq4dq7KuBhtrv0VYMv5i5TIpFbjdFrzGIVhZErXo66s/iiEZkLkOFB+xWrUheAqYxsdfgDiS29iTuO7Smm8SUZxC4lc3VtJjGvWlmdE//UL3eA4YXwSjQUncyrTbMdFQIupsCWURHyFXWIv+g8St0T7QfgAcjtzreSU9hlX2ycqoSGzr5GZa+rgaeUM8kqgS8fEi4SGtQFJfrlpSubM2bsklDqd57GM2cQy/
x-ms-exchange-antispam-messagedata: HeNgDUoCqKUa7HjQGTCpuCuTqBNaNzlUQJJP4WKUFiB3DqivxBvq39h7Ip6qhX4TKN1sv5p9AGUZb0IfKhfmV1gH2d0e/9BU2YaeM5jBpa20d+IBY7ojW9CAf1qpy4irCUjv4Re9813oTq9+pIc2ykKvaXsRBA17iS7hDbbqNPjWDPLTbudBr3Tk0zZeFZ8rndLoyXINPw2JKlsQKIOoLA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cca39fe-f920-43b5-469e-08d7c0cc5c8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2020 06:13:45.3009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z4JXkA+ub545j0fyvTBfmVbf+Qf1pDfAe+0I9CBsiugBWEK3XEaZo0TySrp/WhqLDOusfMD0tQhc6encANNSAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_221351_343302_2CEF6231 
X-CRM114-Status: GOOD (  25.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

On 2020/03/05 14:37, Anup Patel wrote:=0A=
> =0A=
> =0A=
>> -----Original Message-----=0A=
>> From: Damien Le Moal=0A=
>> Sent: 05 March 2020 10:44=0A=
>> To: Anup Patel <Anup.Patel@wdc.com>; Palmer Dabbelt=0A=
>> <palmer@dabbelt.com>=0A=
>> Cc: linux-riscv@lists.infradead.org; Paul Walmsley=0A=
>> <paul.walmsley@sifive.com>=0A=
>> Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support=0A=
>>=0A=
>> On 2020/03/05 13:58, Anup Patel wrote:=0A=
>>>=0A=
>>>=0A=
>>>> -----Original Message-----=0A=
>>>> From: Palmer Dabbelt <palmer@dabbelt.com>=0A=
>>>> Sent: 05 March 2020 00:59=0A=
>>>> To: Damien Le Moal <Damien.LeMoal@wdc.com>=0A=
>>>> Cc: linux-riscv@lists.infradead.org; Paul Walmsley=0A=
>>>> <paul.walmsley@sifive.com>; Anup Patel <Anup.Patel@wdc.com>=0A=
>>>> Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support=0A=
>>>>=0A=
>>>> On Wed, 12 Feb 2020 02:34:26 PST (-0800), Damien Le Moal wrote:=0A=
>>>>> Enable a kernel builtin dtb for boards not capable of providing a=0A=
>>>>> device tree to the kernel.=0A=
>>>>=0A=
>>>> I'd prefer if we picked a mechanism that allows a single kernel=0A=
>>>> binary to be run on multiple systems.  I think there's two use cases h=
ere:=0A=
>>>=0A=
>>> I strongly support "single kernel binary for multiple systems" but=0A=
>>> it's for different purpose here.=0A=
>>>=0A=
>>>>=0A=
>>>> * Bootloaders that provide no DTB at all.=0A=
>>>> * Bootloaders that provied a DTB that, for some reason, isn't usable.=
=0A=
>>=0A=
>> Sure, but as Anup mentions below, the current use case it to not even us=
e=0A=
>> any bootloader at all for the K210 since that brings no value at all (in=
 my=0A=
>> opinion). More on this below.=0A=
>>=0A=
>>>>=0A=
>>>> Given those constraints, could we do something similar to the early=0A=
>> fixups?=0A=
>>>> I'm thinking we could build a mapping between a hardware identifier=0A=
>>>> and a DTB, then look up the DTB we want to use.  Users that want a=0A=
>>>> kernel that only runs on a single device can do so by configuring=0A=
>>>> only a single DTB, users that want a more portable kernel can select=
=0A=
>>>> a bunch -- that's essentially the same as how we're treating=0A=
>>>> everything else (for example, the=0A=
>>>> CONFIG_SOC_* stuff).=0A=
>>>=0A=
>>> There is no bootloader on Kendryte K210. The Linux RISC-V NOMMU kernel=
=0A=
>>> boots directly. The BUILTIN_DTB is only applicable to cases where=0A=
>>> there is no bootloader before kernel.=0A=
>>>=0A=
>>> The Linux RISC-V NOMMU will tend be used in cases where:=0A=
>>> 1. There is no bootloader and kernel boots directly hence we need=0A=
>>> builtin DTB feature.=0A=
>>> 2. There is very less RAM so we will have to build kernel specific to=
=0A=
>>> a particular platform with bare minimum drivers. Due to this, we will=
=0A=
>>> have separate defconfig for NOMMU platforms.=0A=
>>>=0A=
>>> I think point1 can be tackled if we enforce having bootloader (such as=
=0A=
>>> U-Boot) for NOMMU systems and drop this patch.=0A=
>>=0A=
>> But that would go against point 2 as that will use more memory... By "dr=
op=0A=
>> this patch", may be you meant to say "not use this config option" ?=0A=
> =0A=
> I meant to use U-Boot on Kendryte to launch kernel.=0A=
> =0A=
>>=0A=
>>> For point2 above, we don't have much alternatives other than reducing=
=0A=
>>> kernel binary size by disabling unwanted drivers.=0A=
>>=0A=
>> And not using a boot loader. Sean got U-boot working with Kendryte, so i=
t is=0A=
>> not that we cannot make it work. It is only that it may be less optimal =
due to=0A=
>> the memory used by the boot loader itself. Unless we can recover it if t=
he=0A=
>> kernel relocate itself over it ? Surely doable, but it does sound to me =
like an=0A=
>> overkill for this particular use case, i.e. a tiny, hyper-embedded board=
 where=0A=
>> running Linux is probably not the best choice in the first place, at lea=
st when=0A=
>> looking at real applications. The story is different for "hobbyist" leve=
l. My on-=0A=
>> going 6 DoF robotic arm project controlled with Linux on K210 is a valid=
 use=0A=
>> case after all :)=0A=
> =0A=
> Dropping BUILTIN DTB feature will be more like a Linux RISC-V policy thin=
gy.=0A=
> My suggestion was more about discouraging Linux S-mode users to use the=
=0A=
> BUILTIN DTB feature.=0A=
=0A=
Got it. For now, we could tie BUILTIN DTB config to !MMU case only. If ther=
e is=0A=
a valid use case that pops up for regular MMU/S-mode Linux, it is easy to c=
hange.=0A=
=0A=
> I agree that it is difficult to fit a proper boot-flow (having proper boo=
tloader)=0A=
> due to limited RAM. If we don't link DTB to Linux RISC-V NOMMU then some=
=0A=
> thing else need to provide it hence bootloader suggestion.=0A=
=0A=
OK. Understood and I agree.=0A=
=0A=
> =0A=
> Apart from the Linux RISC-V NOMMU use-case, the BUILTIN DTB feature can=
=0A=
> be useful in environments such as FPGAs/Palladium where proper bootloader=
=0A=
> is not available.=0A=
=0A=
OK. But we do not have to enable it for this right away, no ? So should I j=
ust=0A=
not allow BUILTIN DTB for MMU=3D=3Dtrue case for now ?=0A=
=0A=
> =0A=
> Regards,=0A=
> Anup=0A=
> =0A=
>>=0A=
>>>=0A=
>>>>=0A=
>>>> For the hardware ID, could we do something like:=0A=
>>>>=0A=
>>>> * Check for the top-level DT compatible string, on systems where we=0A=
>> have a=0A=
>>>>   provided DTB.=0A=
>>>> * Check for a matching mimpid/marchid/mvendorid tuple, maybe with=0A=
>>>> some sort of=0A=
>>>>   masking functionality if we later need one.  These are availiable vi=
a SBI=0A=
>>>>   calls, but I'd be inclined to restrict them to M-mode boot and just =
say the=0A=
>>>>   SBI must provide a device tree with at least a suitable compatible s=
tring.=0A=
>>>>=0A=
>>>> While I suppose we could put together a tool for generating these=0A=
>>>> tables, for now we could probably just stick the mappings in a table=
=0A=
>>>> for now given that there's only one of them.=0A=
>>>>=0A=
>>>> That said, I'm not sure what to do about the different Kendryte=0A=
>>>> boards -- is there any way to poke the hardware to see which is which?=
=0A=
>>>=0A=
>>> I am sure there are two three different boards out there. Don't know=0A=
>>> exact differences between these boards.=0A=
>>=0A=
>> As far as I can tell, all the boards use the exact same SoC. No differen=
ces that=0A=
>> I can detect nor aware of. What differs between the different flavors of=
=0A=
>> boards are the perypherals attached: some have WiFi, different LCDs and=
=0A=
>> different cameras. The device tree is able to describe that of course, b=
ut the=0A=
>> core dtsi part for the SoC itself seem to be OK at least for the 4 diffe=
rent=0A=
>> boards I have (Kendryte KD233, Sipeed MAIXDUINO, MAIX Go and Dan=0A=
>> Dock).=0A=
>>=0A=
>>>=0A=
>>> Regards,=0A=
>>> Anup=0A=
>>>=0A=
>>>>=0A=
>>>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>>>>> ---=0A=
>>>>>  arch/riscv/Kbuild            |  1 +=0A=
>>>>>  arch/riscv/Kconfig           | 18 ++++++++++++++++++=0A=
>>>>>  arch/riscv/boot/dts/Makefile |  4 ++++=0A=
>>>>>  arch/riscv/kernel/setup.c    |  6 ++++++=0A=
>>>>>  arch/riscv/mm/init.c         |  4 ++++=0A=
>>>>>  5 files changed, 33 insertions(+)=0A=
>>>>>=0A=
>>>>> diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild index=0A=
>>>>> d1d0aa70fdf1..988804e430e4 100644=0A=
>>>>> --- a/arch/riscv/Kbuild=0A=
>>>>> +++ b/arch/riscv/Kbuild=0A=
>>>>> @@ -1,3 +1,4 @@=0A=
>>>>>  # SPDX-License-Identifier: GPL-2.0-only=0A=
>>>>>=0A=
>>>>>  obj-y +=3D kernel/ mm/ net/=0A=
>>>>> +obj-$(CONFIG_USE_BUILTIN_DTB)	+=3D boot/dts/=0A=
>>>>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig index=0A=
>>>>> 1a3b5a5276be..28899e15f548 100644=0A=
>>>>> --- a/arch/riscv/Kconfig=0A=
>>>>> +++ b/arch/riscv/Kconfig=0A=
>>>>> @@ -355,6 +355,24 @@ config CMDLINE_FORCE=0A=
>>>>>=0A=
>>>>>  endchoice=0A=
>>>>>=0A=
>>>>> +config USE_BUILTIN_DTB=0A=
>>>>> +	bool "Use builtin DTB"=0A=
>>>>> +	help=0A=
>>>>> +	  Link a device tree blob for particular hardware into the kernel,=
=0A=
>>>>> +	  suppressing use of the DTB pointer provided by the bootloader.=0A=
>>>>> +	  This option should only be used with hardware or bootloaders that=
=0A=
>>>>> +	  are not capable of providing a DTB to the kernel, or for=0A=
>>>>> +	  experimental hardware without stable device tree bindings.=0A=
>>>>> +=0A=
>>>>> +config BUILTIN_DTB_SOURCE=0A=
>>>>> +	string "Source file for builtin DTB"=0A=
>>>>> +	default ""=0A=
>>>>> +	depends on USE_BUILTIN_DTB=0A=
>>>>> +	help=0A=
>>>>> +	  Base name (without suffix, relative to arch/riscv/boot/dts) for=
=0A=
>>>>> +	  the a DTS file that will be used to produce the DTB linked into=
=0A=
>>>>> +	  the kernel.=0A=
>>>>> +=0A=
>>>>>  endmenu=0A=
>>>>>=0A=
>>>>>  menu "Power management options"=0A=
>>>>> diff --git a/arch/riscv/boot/dts/Makefile=0A=
>>>>> b/arch/riscv/boot/dts/Makefile index dcc3ada78455..0bf2669aa12d=0A=
>>>>> 100644=0A=
>>>>> --- a/arch/riscv/boot/dts/Makefile=0A=
>>>>> +++ b/arch/riscv/boot/dts/Makefile=0A=
>>>>> @@ -1,2 +1,6 @@=0A=
>>>>>  # SPDX-License-Identifier: GPL-2.0=0A=
>>>>> +ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")=0A=
>>>>> +obj-$(CONFIG_USE_BUILTIN_DTB) +=3D $(patsubst=0A=
>>>>> +"%",%,$(CONFIG_BUILTIN_DTB_SOURCE)).dtb.o=0A=
>>>>> +else=0A=
>>>>>  subdir-y +=3D sifive=0A=
>>>>> +endif=0A=
>>>>> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c=0A=
>>>>> index 0a6d415b0a5a..3e89be9d888c 100644=0A=
>>>>> --- a/arch/riscv/kernel/setup.c=0A=
>>>>> +++ b/arch/riscv/kernel/setup.c=0A=
>>>>> @@ -68,7 +68,13 @@ void __init setup_arch(char **cmdline_p)=0A=
>>>>>=0A=
>>>>>  	setup_bootmem();=0A=
>>>>>  	paging_init();=0A=
>>>>> +=0A=
>>>>> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)=0A=
>>>>> +	unflatten_and_copy_device_tree();=0A=
>>>>> +#else=0A=
>>>>>  	unflatten_device_tree();=0A=
>>>>> +#endif=0A=
>>>>> +=0A=
>>>>>  	clint_init_boot_cpu();=0A=
>>>>>=0A=
>>>>>  #ifdef CONFIG_SWIOTLB=0A=
>>>>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c index=0A=
>>>>> 965a8cf4829c..1274e889d008 100644=0A=
>>>>> --- a/arch/riscv/mm/init.c=0A=
>>>>> +++ b/arch/riscv/mm/init.c=0A=
>>>>> @@ -480,7 +480,11 @@ static void __init setup_vm_final(void)  #else=
=0A=
>>>>> asmlinkage void __init setup_vm(uintptr_t dtb_pa)  {=0A=
>>>>> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)=0A=
>>>>> +	dtb_early_va =3D __dtb_start;=0A=
>>>>> +#else=0A=
>>>>>  	dtb_early_va =3D (void *)dtb_pa;=0A=
>>>>> +#endif=0A=
>>>>>  }=0A=
>>>>>=0A=
>>>>>  static inline void setup_vm_final(void)=0A=
>>>=0A=
>>=0A=
>>=0A=
>> --=0A=
>> Damien Le Moal=0A=
>> Western Digital Research=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

