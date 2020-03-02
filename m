Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A35175291
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:16:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=aMfhNI+sNuQ2z2qCN7dNHfFCD3glnWqYTxMyQFIl+PU=; b=UR5Jb3JfJbdul7wFeRWTRSP/9
	1r2SlkSqISnQlDMZtyxr74ch7rsVs8hXaYZNRwnrRCIUKe0M2jMz/j4jHpPMLsAohtYgI8BUlfEq7
	q4ZvJrVljcmgfaLyQPB0aiyMpKGFioTUj8YRLA3Q0xEorTZJdikyqQ04k8MRTGeAIHpS4m5tmbA6H
	cL32Bd9jzvq6ZTI8zdyQz3R9RoCNYcvSjCpAhA+ba7nO4I44M3/Ei3UooI8fGAyZFdKlp5V1NbM0c
	UTdzOljadwuCSnZwRXgUqdKD3HytBZN9Kn/tifGj0q4VMjiRTU8v5Ljih/a8NJt2j4HmNV8MzBktD
	nt9cvWrow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cUz-00025f-JF; Mon, 02 Mar 2020 04:16:09 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cUw-00025D-SP
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583122567; x=1614658567;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=rpMQXG+M43weF8fcLimIF++4mIhqoEdZV3lcADtnHdc=;
 b=e46mn1OMvuxgBNjYDDlaAm+sK8XqwjwT8oqIqYyjVR2CvA38zi1lG8g0
 J1g27MAYVyprIFA0ZsXnwucjPaeZKhO4vkXX3RICnDEmJ24cwf3SSRRqb
 h3+b5J6eKAiOj9lV0tsHM01e6P8Oey0WJ06PYgp1MvNKmY7savJVBHUyv
 t9nuKoWigH/+wt/PNsl0beyleQxDzZIrcIgou5Rrw55uyHsm0znvuClRk
 y/oyP3DbdeSoa140lNk0Pw4iU7DRU7x54lQC1DiRZOV6D3Snm0RrhOGGR
 rHIw5qIZ7QgYONuZEeFsfUF3iaeQ2isYT0agG/bH2JrO7/StL5JpVrUj2 w==;
IronPort-SDR: T0RHlVwAR8VWwzZSe/dEBmATMx2S53GaQE4qJC3Gb55b/3IBbQ0aVgsigURS9sLnUQ5owOuv8G
 rppBaTqiOP3FU/bR+sbWjpu8kQgpRIxb4f4MCBN5WT1S1YGyRvYbGQHcl15KCQS0Qpzz7Nrtbh
 8EdIED2uWK+q+JsssZxaEowIbF7omgVsJFaBioHcyba5UnC/n/lCNAL1fddtv8lkh3tYj4qxYY
 Jbw5uyqXZIyCsJVyiWSzQxALCnKgyj5/mUh9zABIOobZLTEK/Fo23krojC7JSzYmN9W74QwRNa
 8+w=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="131636932"
Received: from mail-bn7nam10lp2108.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.108])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 12:16:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZQfDbv4ZPNF+u6XylqR4ZzyFgNcTDo+DxqNBfk99ICzXDqUFHG3tXbm8I/SkzQOcDom9z1JR2O+nb9zupXc8isXbfOCuq18cjFm2jCYjUNHjNWuyoONhJ0fye8digMJDqPi0fKlNV9cxNgJ+BHF6YwfpM6WBbcQD/3NjtAV0wiPVNy8D3GHrHuyi+Yz6LsdcIVU+uCx3CmhiJZcHdt0ZJmJOimUYJrp2dnY1OkeE6aCXIz+x9iHv2cETswxmf3yQzhxUHKhsRogXQmwDv2U92zbFg/CWn4xcGpTstH1FW695L0tOUhMZ0/uyyXLIy+YqTuczjbrNcO8HNTW6cI9kJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aMfhNI+sNuQ2z2qCN7dNHfFCD3glnWqYTxMyQFIl+PU=;
 b=Xzyn/hmim8QOHq2Ovkk6RkUuqGvcGmg6Bw5dKq9ti4v5EhOBDaNEeazBb18BRZO/ce01+Z0fh40pjP9vBpKiX0O4CS+P0Nymumd+Uh8VF6QjuogtGCxx5331mfZL3R0WLwTcBtI7p86oZaitrP2INPaejJUCoutUloy0Ph3iKUuUyLsFEvXryCYpPmTy9ArRnDvc/3TrL7B2FcMtZkhfQsvc6k/Ltr/iC5L9n2Pgyw17ZsQlIObyhOBN3NLBy8edD05INRc9D8NOqZXAqbL5Fw/iHew3XrLUQ6AJYBv6G+mUx/xKN0N3kvA92EuwB4NuZZE0aXDmxJpkp6NucUipYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aMfhNI+sNuQ2z2qCN7dNHfFCD3glnWqYTxMyQFIl+PU=;
 b=z1HdJ1Ndipu4gbLSqHg/1PkhKP66C1mdoFlwBUXUqMdw/p6EqssXK3IYqe4V0jL/mqHiZBzfDEgTRchXStKM5UOqsdPwyoD9X7XgCGVrhXOkUIWuaRGQOqsV4fv2FGrsH1wByEYUpnJ7YyKq5kxV4O2Y3tzGNdCnNcUQlPTEmns=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB5976.namprd04.prod.outlook.com (2603:10b6:a03:f2::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 04:15:59 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 04:15:59 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Topic: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Index: AQHV8Ef6GrtZHkBAPE20VvlfIfsDtA==
Date: Mon, 2 Mar 2020 04:15:58 +0000
Message-ID: <BYAPR04MB581624CE07B742A7D1B1F53DE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <CAAhSdy2sP5L2ijtOC3wcYZVcf=0KfAobHzKC+CrAYLvmAO9cTg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f151e3aa-c7e6-4da7-d17c-08d7be60695f
x-ms-traffictypediagnostic: BYAPR04MB5976:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB597674A0F5DDDBA5E70C9510E7E70@BYAPR04MB5976.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(136003)(346002)(366004)(39860400002)(189003)(199004)(316002)(478600001)(66476007)(66556008)(64756008)(66446008)(66946007)(86362001)(4744005)(54906003)(8936002)(26005)(2906002)(4326008)(81156014)(81166006)(8676002)(6506007)(6916009)(186003)(53546011)(7696005)(55016002)(9686003)(52536014)(33656002)(5660300002)(71200400001)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5976;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wB+IGMWNnOroglytK+XGUG9qsumpB0ePGoQ9OJoS/BZR7vDboSyoPS8GFjpGGT8/mu4QtH1BOVUA6hABPumCDozdfvw1zqZEZJ/IeVxoEGmobc3OUjpZvQ88JDCpHIgHaWeqnWOuKHAyZ1lJj7MlA3KRsnFep89TaNZ0E8Sx2fI9FnMg2OGftbXSxBrO8Nb7p9JvQxS1cE5f37IvhBEOHxoSffn716Bp6kYP9yrfypmURnlZIuDVx7mNuRBn5qKnO0y243nA0lYQKLuePxuIhivBOqajsSQ3Qp9uj5L1vZkO3l0VnagbtKmiWdOnU+JVB1wXnZ/cUcT1gofNTEqyHkqNFjQSRBKHDZz0pCjCPm1tpDT7paqGdEnQnTrgR9KI/XcSqlIUq4TgnxdGIE98M0lKpHretLQI7Qnmr/syuVda0piyV/dHJBT96UUU+YSz
x-ms-exchange-antispam-messagedata: Bgrk8WW80mN0C2iDVYoV/Q/0sBYBDGFXXz/4ILeK+e+bJZnQYZV1QnoJcfoYcXDGmPjRUcyl9qqLk23ztC5bS79QOXl1ExvVsmmufg73s/wuVjITFdi7k0Ni+EFmhko9dPEMqMtQZfolVslrrmYb3Q==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f151e3aa-c7e6-4da7-d17c-08d7be60695f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 04:15:58.8710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qYdBzPVSGmHU2hgOye6ZyXaEnQe6xjdW0LLcpijmuc4mdH5Z/SBJWhVqCJbpxEphU3XTNvo1Xw4xTTSfJnmAGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5976
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_201606_932699_BFBAC68B 
X-CRM114-Status: GOOD (  10.24  )
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

On 2020/03/02 13:07, Anup Patel wrote:=0A=
[...]=0A=
>> +       sram0: memory@80000000 {=0A=
>> +               device_type =3D "memory";=0A=
>> +               reg =3D <0x80000000 0x400000>;=0A=
>> +       };=0A=
>> +=0A=
>> +       sram1: memory@80400000 {=0A=
>> +               device_type =3D "memory";=0A=
>> +               reg =3D <0x80400000 0x200000>;=0A=
>> +       };=0A=
>> +=0A=
>> +       kpu_sram: memory@80600000 {=0A=
>> +               device_type =3D "memory";=0A=
>> +               reg =3D <0x80600000 0x200000>;=0A=
>> +       };=0A=
> =0A=
> No need to have separate DT node for each RAM bank. This can be=0A=
> express as single DT node as follows:=0A=
> =0A=
> sram: memory@80000000 {=0A=
>         device_type =3D "memory";=0A=
>         reg =3D <0x80000000 0x400000>,=0A=
>                   <0x80400000 0x200000>,=0A=
>                   <0x80600000 0x200000>;=0A=
> };=0A=
=0A=
This is to match the U-boot device tree that Sean wrote. So I would rather =
keep=0A=
it like this. And strictly speaking, if one wants to add a driver for the K=
PU,=0A=
having the kpu memory segment for it separate makes it easy to reference it=
 from=0A=
a kpu device entry. But granted, the two sram segments can be declared with=
 a=0A=
single memory entry.=0A=
=0A=
=0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

