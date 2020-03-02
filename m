Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C29B1752F6
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 06:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=yCrpPnnR1czyjDkj5OcU4H7BZwDT7PPPhzcknTyZY28=; b=MfyB2alJzpyCfDmRq77nhJkL/
	fVhUhX40B403XhEkLsLmTqaG8wcoefb32LoV6TBYxN1UeDoKXliUU9d0m1GF5U7//JtghU6HNThYH
	YX0TSgDwD8Y462T1KnKTP2HKq1qc8xWaooZ3FGPtEH8/v4KGa5yV7hSsfFgdcar2I2aeA7wHLrrL8
	8r5ssLEQ6dHNHKL2ovNkuSgbNwHOATfQrEEJAQYcwa5dNonsqqsHXKipMtQASkEOnHVOi1+i8kluQ
	TxsvdWTfaf9upqyv+sdnPRAQIhFNQuCQTfH4jVaHXyI19zVD+DeEPmahVIZpwFVFJ2WRQzYbEoBEj
	Xv/pAx3cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8dJw-0003FP-Nm; Mon, 02 Mar 2020 05:08:48 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8dJt-0003F5-J0
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 05:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583125725; x=1614661725;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=BxgDN5dXGBEzhIFUkK/MvT+K4AqL11bKek+cBLXVHZg=;
 b=MdEfEl3NmfaccVmvn6Y4ZTXzgPg/xu2qTAJeJFLOKED4/hyolQQKU327
 k7RlgB0aRbKmD1Zsk0Wh4jVsv4VHGZ4tMjxWyYQ/apqDLWVbynJrQZTLG
 Slc2k0K2bhWyyGUdS3fifKqeu+1eVAJ5Bn8zHJKt9EeqxQ/T54sW1JbVo
 a7wGdEndYWwR9uNxIlJGw/E9y3gd5Z6i5+3DlPZ0lzDi+qCID+jRtZurp
 U0fMSOBTdvyFXFtnby7pmDFOah9V05sb1SsR8fKax8ieVdrMNCSNmISy+
 mBMQPVM+XJaHoIHFZE/aieYWaHaISYXF0BaFZvrzn2y9VxdNs4nW/oMgv Q==;
IronPort-SDR: 3k3R5K05/B0VnBvTbSzQRZDs6BMnOXBtTUfF93hYidMZU9su5Y4OLWDkI2kpo6oi8EK9b02juD
 j5LxZl2SudhgLyrozfBRUrU/NOk8SqLUT3+0KwYhXIkn4zBDkwsttI9FSDvx4LM1le92ThooCX
 G0XLvECtSSdsXxpuczlPEuLtNdFIeLHkmgsaYfxzsKRod0UOS6Z3aMRl1MQmkDtrMu2fgLdBLA
 ne4ysgAfc1TiE1pdgHVxmJfftg8S6YutTetpYFMZ7LIA6aJ2Kgw0Lb4fY+Yqb6p/DK6gCKSMFt
 gXU=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="131639353"
Received: from mail-bn8nam12lp2168.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.168])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 13:08:44 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AoVA7MGhJzNgGtFe/9inC1LbV1HdeikZ7sBhzAP2KPInCcExkzl98LSmTV/zHbGk8JNGtu9MG393CHLkR9oHAeBmNdRRMjGEma8rHMsHLsKpo0NKdteBe+9Wx4olcgQusR0hVuvzSn/UYMwMYEszziaO3IWfxb0mcCyXcoI9eocdXo8RlLTeYe0xz5WG18fh7L/1Odze/B4tNDu02IvpjdUK90fb1Wrv52tBODYkb6uIHgsmtT9JF4Ckz+fT//YOB9SPMOD0PUUj3SocUW9CoRJ2qSermRJr3j/28m4nsfPH0Ml/ZV1031KUSXYkrP5clrbuWSUuT/W7Yeu+J39uzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yCrpPnnR1czyjDkj5OcU4H7BZwDT7PPPhzcknTyZY28=;
 b=l2zCEWQ3UjKQ6JOWsO/wgprknJ/dNuMR0MZFWQMwZxo2Uf2sfa17XZb+kFcQP9PojL9gzHyBVKfABKOQIlt1EvvqLs4CNfmAsaN3M2F1psT3RZpPfXWg30mSuN9EC8Pyv+eTM84fp0nU4NvZleHJ1F4Y2Vrtd8+K1o4/p5jgCuK+uW0BU8kpO/82b/q8T1Qk3xOXSQsAazXx1txoukEMRa+VSej812V0dxOf6W5qScDJOMNtrBP0Bw3JHsPj58c3ZmqNFhrp8No0umV1mYoqoPwAgv6ew2o/PNp6NneDFRoZTNwXuLB1LnQVFohe6BFqn6TMVcrZtp0v5B6+2tRbZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yCrpPnnR1czyjDkj5OcU4H7BZwDT7PPPhzcknTyZY28=;
 b=w532yEnX+JRf1IxkWRAY+0qZ8dN1xqmodOx6L7rGml579zjmpItX7jhN3eKatfT7WKrQBLLEGkWUQRYPXFF0dbrBvT+bUxqaXmJtbqQwAERL3dFIwrSdN9Oimpt4q6B24UBV6rTQ+R0PUtXuOoAeqD5DeU7MzhtA1sYO0x5LstA=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB4598.namprd04.prod.outlook.com (2603:10b6:a03:55::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Mon, 2 Mar
 2020 05:08:43 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 05:08:43 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Topic: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Index: AQHV8Ef6GrtZHkBAPE20VvlfIfsDtA==
Date: Mon, 2 Mar 2020 05:08:42 +0000
Message-ID: <BYAPR04MB58160D1A2B74D22332E498C1E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <CAAhSdy2sP5L2ijtOC3wcYZVcf=0KfAobHzKC+CrAYLvmAO9cTg@mail.gmail.com>
 <BYAPR04MB581624CE07B742A7D1B1F53DE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CAAhSdy0Owsfa6wGyBnHoOONN3uc93YwXpnGto_U5OE3tTwnGYw@mail.gmail.com>
 <BYAPR04MB5816A2497FA764FB145D350FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CAAhSdy2eGOifb6Ov6hfy=-QsjvFCKgZqqX1tiq1Z=wFrLpz9CA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0c511602-8597-42e9-d649-08d7be67c74e
x-ms-traffictypediagnostic: BYAPR04MB4598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB4598E597E3CD84CE3E11C58EE7E70@BYAPR04MB4598.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(376002)(39860400002)(346002)(396003)(189003)(199004)(478600001)(4326008)(8936002)(26005)(55016002)(9686003)(53546011)(8676002)(81166006)(81156014)(7696005)(71200400001)(6506007)(186003)(86362001)(54906003)(316002)(66946007)(66476007)(64756008)(66556008)(76116006)(66446008)(33656002)(2906002)(5660300002)(6916009)(52536014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4598;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9F5UvrQGM/Mg3u8AhdT5jBQmiYp14Z53FkQskLalWkCVu62L0c6EyVOa/UdbyrTgRwDq72s78qmDJvEPZcCPyuKShhICpDZG5aLjqkF1XFabNqU+RJN1ncC1FVIUeQWi9EHpgTzbQLCTEajs7a8tp2S8mPUn0Hy5bS1t3JQB5NiKnrjyoZINwawovnG7cHkYZRzqyiI6AYGj4O4V2irKf5Y8Ayi2lBE75lZtdh2GInnIfhU6b5wB3HohwPdQL/Zj7XEJpajuGVGQ+G2+IFfF0DO4rkKZMevIXIYJkL1H9l7KD30uB1MR++ydi9Zxa8MSlw0pe/cTSutXgqnDX0O38Y2QzKLhIOzaHyLZHf7Gpd7pmN8IZUWsozrGg+VhWB6ZuuxyxPc9S89h6xP2pCxHh5VYotwWC3ZyTggfrgnW+Hnf4dGZy/pI4mcCmy2IttZV
x-ms-exchange-antispam-messagedata: zj+JElrVE+Jbu4c17rtJb6t8MN8WiJEt430v4fo8ybCHjOjP9gK4Pm8G7BgYIxp95psT9Leu9m2+QJOxa2UJYeTEPJwYfCy2VVw42MCMxBvLQzvYX4hYCmjqtuBiK+O0ANWUJM7lXNBOmInJiY3HXQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c511602-8597-42e9-d649-08d7be67c74e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 05:08:42.9456 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w92RvB1EjDq4owgHNC0IwUDLEuoOR1X9nKxH5rrIsmEuiHCtNrIGlYE6eiDIXgYr4nQ5XbSwO5lIHa3P1OSbjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_210845_669772_AAB1C821 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/03/02 14:05, Anup Patel wrote:=0A=
> On Mon, Mar 2, 2020 at 10:21 AM Damien Le Moal <Damien.LeMoal@wdc.com> wr=
ote:=0A=
>>=0A=
>> On 2020/03/02 13:22, Anup Patel wrote:=0A=
>>> On Mon, Mar 2, 2020 at 9:46 AM Damien Le Moal <Damien.LeMoal@wdc.com> w=
rote:=0A=
>>>>=0A=
>>>> On 2020/03/02 13:07, Anup Patel wrote:=0A=
>>>> [...]=0A=
>>>>>> +       sram0: memory@80000000 {=0A=
>>>>>> +               device_type =3D "memory";=0A=
>>>>>> +               reg =3D <0x80000000 0x400000>;=0A=
>>>>>> +       };=0A=
>>>>>> +=0A=
>>>>>> +       sram1: memory@80400000 {=0A=
>>>>>> +               device_type =3D "memory";=0A=
>>>>>> +               reg =3D <0x80400000 0x200000>;=0A=
>>>>>> +       };=0A=
>>>>>> +=0A=
>>>>>> +       kpu_sram: memory@80600000 {=0A=
>>>>>> +               device_type =3D "memory";=0A=
>>>>>> +               reg =3D <0x80600000 0x200000>;=0A=
>>>>>> +       };=0A=
>>>>>=0A=
>>>>> No need to have separate DT node for each RAM bank. This can be=0A=
>>>>> express as single DT node as follows:=0A=
>>>>>=0A=
>>>>> sram: memory@80000000 {=0A=
>>>>>         device_type =3D "memory";=0A=
>>>>>         reg =3D <0x80000000 0x400000>,=0A=
>>>>>                   <0x80400000 0x200000>,=0A=
>>>>>                   <0x80600000 0x200000>;=0A=
>>>>> };=0A=
>>>>=0A=
>>>> This is to match the U-boot device tree that Sean wrote. So I would ra=
ther keep=0A=
>>>> it like this. And strictly speaking, if one wants to add a driver for =
the KPU,=0A=
>>>> having the kpu memory segment for it separate makes it easy to referen=
ce it from=0A=
>>>> a kpu device entry. But granted, the two sram segments can be declared=
 with a=0A=
>>>> single memory entry.=0A=
>>>=0A=
>>> But, that's not the preferred way of describing memory banks on the=0A=
>>> same machine.=0A=
>>> Usually, we create multiple memory DT nodes for NUMA systems.=0A=
>>>=0A=
>>> You can also refer various ARM/ARM64 DTS files.=0A=
>>=0A=
>> Oops... Sent an answer to this to the wrong email... Here it is again:=
=0A=
>>=0A=
>> Yes, I understand. But in the case of the K210, that last 2MB segment is=
 really=0A=
>> special as by default it is not usable as regular SRAM. I think it may b=
e better=0A=
>> to reflect that in the device tree. The K210 soc_early_init() call back =
can=0A=
>> probe for that special entry too to see if it has to be turned on for us=
e as=0A=
>> regular memory or not (i.e. if a kpu driver will use it).=0A=
>>=0A=
>> Since booting Linux with 6MB of memory will be even more challenging tha=
n with=0A=
>> 8, I agree that we may never see the case of a kpu driver being used. Bu=
t I=0A=
>> personally like making that special case clear in the device tree. No st=
rong=0A=
>> objection to your simplification though. So if you really object, I will=
 go with it.=0A=
>>=0A=
> =0A=
> I understand that it is helping you to distinguish last 2MB segment but t=
his is=0A=
> also possible using with single memory DT node as follows:=0A=
> =0A=
> sram: memory@80000000 {=0A=
>         device_type =3D "memory";=0A=
>         reg =3D <0x80000000 0x400000>,=0A=
>                   <0x80400000 0x200000>,=0A=
>                   <0x80600000 0x200000>;=0A=
>         reg-names =3D "sram0", "sram1", "kpu_sram";=0A=
> };=0A=
=0A=
Nice trick. I did not know about it. Will use that then !=0A=
> =0A=
> The K210 soc_early_init() can do the following:=0A=
> 1. Find memory DT node having device_type =3D "memory"=0A=
> 2. Find bank number for "kpu_sram" based on "reg-names DT property=0A=
> 3. Get based address of KPU SRAM from "reg" property based on bank=0A=
> number found in step2 above.=0A=
> =0A=
> The reg-names is a standard DT property used to distinguish multiple=0A=
> memory regions of device. Same can be used to distinguish multiple=0A=
> banks of memory DT node.=0A=
> =0A=
> I am not adamant on having single memory DT node but just wanted=0A=
> to let you know that this is not a preferred way for non-NUMA system.=0A=
=0A=
Understood. Will use your proposed syntax.=0A=
=0A=
> =0A=
> Regards,=0A=
> Anup=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

