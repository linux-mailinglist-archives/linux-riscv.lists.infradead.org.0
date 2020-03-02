Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA551752E2
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=mziRCZ+u/mw9Q2F+KQUgcAcICXCcVkkXuDcD9zIRc6g=; b=Lq5/yt65RNAvhTR9nuUA/F/+8
	/Ho4B9i5ZNInf1dA41e9eZBcjqLmSjz3IhGL95FEfYXJckyQcIB8Qs/B9Y+55qYdQyGdNhqdUj+U8
	I1ke7CPslk9+xQROnvrXHxYM5IhGU0PtaY8pqevgUcKiu0IHNlNXqa4YW5rSVqMgrPA7oXMkNAk7y
	ZFZuu0kRX1NnuxyFTNgefpm1LPhBu7pXzqCnmBA7TSqxICEBHQU627trGP3tOhHDQxbcs5HadMgn5
	6O55JdqHQohMooohWWsNccVg+RO7N4iVrekh/w7gI9yXmmCDJmrss04RkZe8LPkm3ecmZkC9sK1Kd
	ElyPzWvfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8d31-0005pw-Rj; Mon, 02 Mar 2020 04:51:19 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8d2y-0005pb-Hg
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:51:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583124676; x=1614660676;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=1CNQtwWxUGdHpzmkk+S46BpZXRr7bUHBeli7jexztLw=;
 b=hlmwNKBsT7PN+6lSSgsIUGuUWldo9xx3WlH0EZSYX90PGNY+ekphYq0w
 2zgWGioBUIYNMtKlN69fwToflrrZ+Y+T8KaA7QySG5mgum8ufJysvxw8Y
 PrdmbpwvzamXvj6d7WKixOeOlkbcc0s+XwqFhszDEYFosRpNmzz9pHfdw
 q2J0zcix05bvvjalvGJHCMn42yg4nHxMbQCmwZ9ByOwzgNZ6RDpqPXn/E
 C3zY7gvWyza41HOx/rLgkdQMPRx38jJ29bLKN3oNskmKvIJFgwTHnmjuH
 MErsnfAlYGvjR8dEiq5dIDXruuSfpH1jDqpHRl4D72JNfZPvS9WRcuk5J A==;
IronPort-SDR: IbYougS0zLVtFCw2U0x9JgRMYL/eT5Bip84vazeFdRpygsMLK17TUEaEPFQK6rcWmK2R5cW0HM
 4Ll2TcWlC1alP2V37y1cctfqHvC2G6LLQ14+RqFn8z6/qe8VoRmibpyzIGoE92Q2fVQG/cF0c6
 JyEnmRf19tpeSJd0YJ/CJr0pms8RJM9vdKAU6dQeGs7YM0oy+O4QnF7aHyMseuybSZ5ezmN+mr
 bnat6HgRjCjRt+nM8zST1NLhR+GyzeMT9SJI2SifaMx9UVQjoXvknmU3s1s4mFWPkdGePZVWWQ
 0kQ=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="131120232"
Received: from mail-dm6nam10lp2103.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.103])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 12:51:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=byGekBZhauPqRf90ARyJ65O+67afjyU4Ot1gp8a4mioOezruO1mzSPdT8rrbDVmvN7nV77zHYKKKB0nkaY5Er+jP7yA4b9hY29D93xXxtsG1rGrV+U3RaQ1u/QyPtspJMsYKNNFO6dXMnI8AmBFq6Vs1YRRrPFFFgp2BquYlHeQOvDvbD2TN5SeWp1SXaVDCIVXLhn3DtX/SAQw+ISzSD3BaTDEIGFE6nBcAdiZz3YrusyfNwL0iIaXZxqsslwNIhDKCKwsbuKuuI68emv+EtaCBF5QTpiA+Cj35DOu0IaQO/D0Xfap/dZrwLtei33P3qD9WDutpqGuCVaCQm2/HIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mziRCZ+u/mw9Q2F+KQUgcAcICXCcVkkXuDcD9zIRc6g=;
 b=AmM3qe+HJvfObMI5dv3C3zvedPofMqLhJg/LZpaqDDaRDi4cmZ+RsvdEVymASXMyn47SsknDXnEY7J8zhmF49nl/rtTR+SGVY6TED0m2Lewyx8JXUcfceQRCZbyrPPVq6JVD81JCBR+My5HhWUfTTdclE06tecw944lh/V8O47+ndXdDNoMlr5iWhwBvhJv2/HxsxVQ0ueD3J4ShOIsLbNqAGueFuJUwdqEqNsP7PpCD42ED1qBHLScFxJUGvefOTc6VCbfZmaUWOP86S6F9A1nElK7UeJbn8Fv1bRqa4+sOtPxNU/dz1HBcLvT9rKXTSIMm5z7Pfw6uu64dcaft0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mziRCZ+u/mw9Q2F+KQUgcAcICXCcVkkXuDcD9zIRc6g=;
 b=LCvxdKQNoHVVHyzMSACebB6NTt2vN6CAe9LmGRmrZW2RSEKu7e/kl/jBcQ+S9U0EYUpU6LrnuLuFRuVmoJ1j5NAy2CUv+H7hlSZ741CwcvCofC9nwTCW51PR5MKviQ57qSBPmZ2GmM6sOqKsndJXZbOBTCwx8EzOeoCEf5sHtYA=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB5445.namprd04.prod.outlook.com (2603:10b6:a03:c7::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 04:51:05 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 04:51:05 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Topic: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Index: AQHV8Ef6GrtZHkBAPE20VvlfIfsDtA==
Date: Mon, 2 Mar 2020 04:51:04 +0000
Message-ID: <BYAPR04MB5816A2497FA764FB145D350FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <CAAhSdy2sP5L2ijtOC3wcYZVcf=0KfAobHzKC+CrAYLvmAO9cTg@mail.gmail.com>
 <BYAPR04MB581624CE07B742A7D1B1F53DE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CAAhSdy0Owsfa6wGyBnHoOONN3uc93YwXpnGto_U5OE3tTwnGYw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fd794f17-340d-4679-4320-08d7be6550a9
x-ms-traffictypediagnostic: BYAPR04MB5445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB5445501F996F0212572F799BE7E70@BYAPR04MB5445.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(199004)(189003)(9686003)(6916009)(66946007)(5660300002)(316002)(4326008)(186003)(86362001)(76116006)(7696005)(52536014)(55016002)(478600001)(81166006)(64756008)(66446008)(81156014)(66476007)(53546011)(66556008)(8676002)(26005)(6506007)(71200400001)(8936002)(2906002)(33656002)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5445;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VndbmgQVgjMA9hFT0kVnbaOf456PKpmWnTm3FobpWxAmpJ0zqFbHhJhy/9vHJQ7EpWnnhOFekOjD/l2lBIAQn1vzqcYuguf5nI85iun8bJawPOh2fD5lDmTOc3Vrp+hku/x7uTWybaNtXRXo22Wh3waRec+O/RenMi8apl38d/8zK8jw3mMypjwQUMm1h7ozhdB907rLillwyECOVh1PqKGwCJrvv8222nd8GIuGzGgvmDd+e2v6BI/Iy+FMsdtiQyl5SoY0YcOyXiqm/lXOUQtLKJW/TmmqQmg/fkaXMzM6UIg/9plAyOJkYzRFAALg+0E7ZJBI7WHOHWXaLkhmV8eQthgwnXkVek0NArjDluLCWJw+mwCv3PqJY4aRMfBkw4HHI9gF6YQR+loGonYCmPzX8kkhQub4W6xZUsGRiJik19Dhg4toQf4vwJPUgX8X
x-ms-exchange-antispam-messagedata: o3rXbWSzJEMPFaZ3httfe9vUTLahaEYO3ufPXPLgjlFsmYsu3l/y+DTawLNWmJDOTdNk1ECxDDApTGG4pbrAwAWjRTIcH38/AwyLpFaCuolgQPbqyGVeDpwmcFpOAHRm8/G9BrEp5yEfCLNW56yqgA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd794f17-340d-4679-4320-08d7be6550a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 04:51:04.8200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pg04JFpoLy2QW5ZpL5Jvc0WW3VJLG1NQIWgJwOsseXp6ICtWikue1k4qhAnigI9ix1nk7he43v2AOQ1uryHmog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_205116_636498_E2ABA9CB 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

On 2020/03/02 13:22, Anup Patel wrote:=0A=
> On Mon, Mar 2, 2020 at 9:46 AM Damien Le Moal <Damien.LeMoal@wdc.com> wro=
te:=0A=
>>=0A=
>> On 2020/03/02 13:07, Anup Patel wrote:=0A=
>> [...]=0A=
>>>> +       sram0: memory@80000000 {=0A=
>>>> +               device_type =3D "memory";=0A=
>>>> +               reg =3D <0x80000000 0x400000>;=0A=
>>>> +       };=0A=
>>>> +=0A=
>>>> +       sram1: memory@80400000 {=0A=
>>>> +               device_type =3D "memory";=0A=
>>>> +               reg =3D <0x80400000 0x200000>;=0A=
>>>> +       };=0A=
>>>> +=0A=
>>>> +       kpu_sram: memory@80600000 {=0A=
>>>> +               device_type =3D "memory";=0A=
>>>> +               reg =3D <0x80600000 0x200000>;=0A=
>>>> +       };=0A=
>>>=0A=
>>> No need to have separate DT node for each RAM bank. This can be=0A=
>>> express as single DT node as follows:=0A=
>>>=0A=
>>> sram: memory@80000000 {=0A=
>>>         device_type =3D "memory";=0A=
>>>         reg =3D <0x80000000 0x400000>,=0A=
>>>                   <0x80400000 0x200000>,=0A=
>>>                   <0x80600000 0x200000>;=0A=
>>> };=0A=
>>=0A=
>> This is to match the U-boot device tree that Sean wrote. So I would rath=
er keep=0A=
>> it like this. And strictly speaking, if one wants to add a driver for th=
e KPU,=0A=
>> having the kpu memory segment for it separate makes it easy to reference=
 it from=0A=
>> a kpu device entry. But granted, the two sram segments can be declared w=
ith a=0A=
>> single memory entry.=0A=
> =0A=
> But, that's not the preferred way of describing memory banks on the=0A=
> same machine.=0A=
> Usually, we create multiple memory DT nodes for NUMA systems.=0A=
> =0A=
> You can also refer various ARM/ARM64 DTS files.=0A=
=0A=
Oops... Sent an answer to this to the wrong email... Here it is again:=0A=
=0A=
Yes, I understand. But in the case of the K210, that last 2MB segment is re=
ally=0A=
special as by default it is not usable as regular SRAM. I think it may be b=
etter=0A=
to reflect that in the device tree. The K210 soc_early_init() call back can=
=0A=
probe for that special entry too to see if it has to be turned on for use a=
s=0A=
regular memory or not (i.e. if a kpu driver will use it).=0A=
=0A=
Since booting Linux with 6MB of memory will be even more challenging than w=
ith=0A=
8, I agree that we may never see the case of a kpu driver being used. But I=
=0A=
personally like making that special case clear in the device tree. No stron=
g=0A=
objection to your simplification though. So if you really object, I will go=
 with it.=0A=
=0A=
Cheers.=0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

