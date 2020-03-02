Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5571752E8
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:54:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=XStlgsjAqewTxRcw/TYAj1HNqfx+IiczfAXlyjX9CxY=; b=l1qCkmrxIgPYtVflPVur0BKwv
	B9uSRrW5fNYczz3XDWDF28a+9zLPYY7cQ40jCOAI8W8GHdPc8hRQOg+f9a4h+4XZdBwBW89z7VCau
	J7gbbLZfhaSjqZ0Hi+xSnLIhy5hBUp1NYTsgZoXdDddq0yGxw52rpE617Oiud+/dVauP4Rfj6K3/e
	YWUKy65VX8IAGXXjXJeArg8aoQSQEaLfxNMNQi+61bFGvoOy7z7qXFDecZjpuPQqB9OQQf8D0h1v5
	2SkZwvOLfJoV6GrgDY+9dRHkFdmLptAK+x7NJRREYnHr1d/dl/hDqOThdZ18Ej/0tSnUR99Uc78Vl
	HrZ6WDAwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8d5u-00062J-Rd; Mon, 02 Mar 2020 04:54:18 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8d5r-000620-BR
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:54:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583124855; x=1614660855;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=vYNP1IFj6GxT93d8DVLnQGkLuJivh13MW5Bae6Xwk8I=;
 b=VKblvMekLp9ZkVdzM8LHG316EmFP4/ed3evdf+4Qv0VuPbu9xuoECFVs
 F1ZLzFJFJKo5ffKoDNeirypSD72ELBVG5oUeUaemRvvwQFARMiTxWAA6x
 QfkDrXAAhOEZTyeW3SaSm7l8zIgGrGtuDS8+3NLUp/bdDRekxezEI7t3P
 4Jr6rU9uQ75G8bYrhxTJVRgMYfg3aPSuvGwUbuFr/ZaWxjFuGyWc1oOg+
 qE5dzI+DtY61hB1XB9eIUKtCNBZhbI0WtqF1NNokx+Y3a0C+zhOmywUHk
 NDGx4rAFrhJkuX9zfDdd2mo7aHc51HgTFCIhD3LdiE5XcdnCPRP4h2cq5 g==;
IronPort-SDR: eNqGwe9wLD9xuyimX09mOnZx6rtc9YrDeJdzuUY2bbWFPGLV8zKOc7/5W7THqm6Urt83TU3p04
 Jnj0rKJ+3XPX+iKVB0tthax2RMaVeWdm+hEVfjCFNmP/IYvOmzEJEeybpKtCwc9TOpDYGVc/wy
 HVz8tYpbuTWKr5VVEayNZQZj/9pbXKAEcqIMHx6gHUeb4hbUbEEbzV0w4OFswvwfffgsFXBE3N
 x+xfhxFWjf/kMd6clMhluPKy3zoq4yhN024jbe38aBGX+MXAKyQX0fEyew2IlvtJUuRmakVSs0
 hkA=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="131638471"
Received: from mail-bn7nam10lp2102.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.102])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 12:54:14 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aYQBbxBLTSY2MXZ4RkjvUsyXjZYi4pY4t8Ss7VDtoEhvB3o5wGjFausPZQNIBDTO7QT2vhrzQrnY4ApovPP8eoAjtSH7dCEIjDScJsRP/RsjiEdoehxae/nhedpUlrExpblSqSXSICzKgOe4Sx9+X9jDohKD0yoJ09HA+1ZjbRD9/Rq9myPBIxQn1i9nmtIXV+yhppl0GI5WyxpcKaaI9Sl8XJWxHRAXzKRZmYCQy+HHUGHzLGXQRIx+YePWQhHemOeoM2ITDNnr7T9g9HTozuAtQmLoGC0MXxMAjZIs2tYjc15GYRiAm0+a53Q3pZhiCEK1Uw5dzxru5pswBSDsRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XStlgsjAqewTxRcw/TYAj1HNqfx+IiczfAXlyjX9CxY=;
 b=Qk+REBuN/ieuZr1n//jrTepgv4IhY0LUEv3nIL2/+nyXcvXvhRNA5/1GFdVM5XGfBYGcn6mP/RSgEIBi26Th3nir1VdUAXC1QDYEHRVbqb3+hh5AwiTZBwQYQhaW+MOetTI6aRpLgtrgsH4lMOXuidqinw9Xs+d6/pg4DUcE76352WW8h/MSnxCFp175U2QxlwC4gA5tR9FTpRNdb7pd3fmOj6EjjUmEGCsuztRiBb3QHOuWU5AV6xs8nH2FqLN/xemkXQGPnJWsMKSnBxT19xQJanEL6wZma/YGmORDZUOQjrDCrDipml6ah8B0xaju57NjIkNHWl+8IOdEsr9wuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XStlgsjAqewTxRcw/TYAj1HNqfx+IiczfAXlyjX9CxY=;
 b=FuVT+nbch6xuz70RuCP2GEU1E9+hI6xfONXr4Ac9U5nA0pbF9FmWW9hOYqODyx4DnKW2vSHeSCwEb1f5plSNywM/JE8YE2VD1OtQe44f7k/mny0Dm/BrEwrp3Fx+Bt4m8U5P7QN0VKeWoauawjwxsCGw6RJLLhsNLD4dXuZzpgI=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB5445.namprd04.prod.outlook.com (2603:10b6:a03:c7::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 04:54:12 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 04:54:12 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Sean Anderson <seanga2@gmail.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Topic: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Index: AQHV7nY646/VURUiUEOLVfw+FTteGg==
Date: Mon, 2 Mar 2020 04:54:12 +0000
Message-ID: <BYAPR04MB58166098B0A1ED8888BD446FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <BYAPR04MB5816207C9B451E1C663B1986E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <d5851a09-6ffa-884d-ffcb-b30a2377f2f5@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 90ae6a3a-3401-41d1-5a32-08d7be65c049
x-ms-traffictypediagnostic: BYAPR04MB5445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB5445ACA650F02446ABC08EDCE7E70@BYAPR04MB5445.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(39860400002)(366004)(396003)(136003)(189003)(199004)(81166006)(478600001)(55016002)(66476007)(53546011)(66556008)(8676002)(26005)(81156014)(64756008)(66446008)(52536014)(76116006)(7696005)(6506007)(2906002)(33656002)(8936002)(86362001)(54906003)(110136005)(71200400001)(186003)(5660300002)(316002)(66946007)(9686003)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5445;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZBVWY5XLHkgNibGI0JViLOnkqhgYjRGnWh1W+FOTjkCMQ6fpuRUWKDidTTsfTmwrB1+o3tkzdkAsZOvDIAT6gtFBklwXSHuBca5UnZL09pOQzvLFIKYhx2lD+CpoDM0Sw5z8xBXUn+CyT3bVgNIqXjC4Z746fKTTrOfAKbl+4gd48jy9YsmZLQ2M+hP6Fc4IxyzBrnUFUcW0BCXoNk2reLlIuwWRWkOSuqJ/DROcY8weZCCdJOBntiAuNzb9w/RnLW+PBtj5euXCN5eOugqsmsJSXeaXCxqrBam/rxdlmlvCaA6594XoLEuHJ2usX5tnnUWom/067MVJn7EExWQ4/Gzq0lVEp/YN/XWay3iAd4v3YiOD+6vNvYrl/5Y7TaKI0yNqmQ1THwwFSyYotUFTCOo5SlGy6u0v06O0WOWiJtKAIwobUDd41DYmIdeYJxYF
x-ms-exchange-antispam-messagedata: 73PYLKYd3c8KGgosFtz51geeMViQTfBjdiwEYOFd4L+OeSkAsOlYiJXFiAJLICs+ijpDLMtiYOsUcLq0ycAr9YoPSJtIxn+62tRh6ZNC9Ko7eX/TdedBTTDOZOI70+ANHsyDUVlBhqOhzHE7TmFOXA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90ae6a3a-3401-41d1-5a32-08d7be65c049
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 04:54:12.0802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HGljRF2cGmCkwnJMZuS+iB6sHp99RoK7QP7m6Nrc1a3UkiasxY+41IkX86Fi/oKD0G03xVtv9bxo0DVBnsaD7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_205415_405283_405EBDC3 
X-CRM114-Status: GOOD (  19.08  )
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/03/02 13:18, Sean Anderson wrote:=0A=
> On 3/1/20 11:11 PM, Damien Le Moal wrote:=0A=
>> On 2020/03/02 12:53, Sean Anderson wrote:=0A=
>>> On 3/1/20 10:01 PM, Damien Le Moal wrote:=0A=
>>>> On 2020/02/29 5:32, Sean Anderson wrote:=0A=
>>>>> Hi,=0A=
>>>>>=0A=
>>>>> When booting from U-Boot I get an OOM. Perhaps this is related to the=
=0A=
>>>>> second cpu not coming up?=0A=
>>>>=0A=
>>>> Unlikely. It looks like your user space needs 2MB per shell (order 9=
=0A=
>>>> allocation). Since you have only 5.5MB free, that may explain the allo=
cation=0A=
>>>> failure (if init is forking another shell especially).=0A=
>>>=0A=
>>> This should be before init comes up; when comparing this to your syslog=
=0A=
>>> output there are several more messages before init gets started.=0A=
>>=0A=
>> Ah, yes. Your log shows:=0A=
>> [    1.899086] Mem-Info:=0A=
>> [    1.901072] active_anon:0 inactive_anon:0 isolated_anon:0=0A=
>> [    1.901072]  active_file:0 inactive_file:0 isolated_file:0=0A=
>> [    1.901072]  unevictable:705 dirty:0 writeback:0 unstable:0=0A=
>> [    1.901072]  slab_reclaimable:0 slab_unreclaimable:215=0A=
>> [    1.901072]  mapped:0 shmem:0 pagetables:0 bounce:0=0A=
>> [    1.901072]  free:417 free_pcp:0 free_cma:0=0A=
>>=0A=
>> so only 417 free pages, but awapper is asking for 512 pages allocation..=
. Weird.=0A=
>> Did you use the k210 default config ? Something using too much memory fo=
r the=0A=
>> board has been added to the config I think.=0A=
> =0A=
> I am using the default config. I thought it might be the initramfs=0A=
> taking too much space on decompression, but I got the same problem when=
=0A=
> using an uncompressed initramfs.=0A=
=0A=
Yes, that must be it. How big is your initramfs ? I generally do not see an=
y=0A=
problem with 500-600KB initramfs. For bigger ones, I do see the OOM problem=
=0A=
often too. But most of the time, the OOM triggers more if the busybox execu=
table=0A=
is too big and there are too many shell levels.=0A=
=0A=
>>>> For the second core not coming up, an IPI needs to be sent to the non-=
boot core=0A=
>>>> to wake it up. A Kendryte thing. U-boot should probably do it before j=
umping to=0A=
>>>> the kernel. I thought I had that in the kernel though. Will check agai=
n.=0A=
>>>=0A=
>>> I think it's a RISC-V thing. I should have U-Boot set up to start linux=
=0A=
>>> on both cores, but something may be misconfigured on that end.=0A=
>>=0A=
>> May be. I would need to check the specs again :)=0A=
>> I think that normally, the rom boot stage is normally bringing up all co=
res ?=0A=
>> And the kendryte one does not ? Hence the need to explicitly do it for d=
irect=0A=
>> boot (in the kernel) or in u-boot ?=0A=
> =0A=
> The Kendryte rom brings up all the cores. However, that means that all=0A=
> cores are executing the same code at the same time. So (in U-Boot) there=
=0A=
> is a "hart lottery", which picks a hart to do booting from. All the=0A=
> other harts instead jump to a loop where they wait for an IPI to tell=0A=
> them what to execute. This same process also happened in the Kendryte=0A=
> ROM, and will happen again when Linux comes up. The problem could be=0A=
> related to my usage of the "go" command vs the full bootm process... I=0A=
> will check to see if I have the same problem if I boot directly to=0A=
> Linux.=0A=
> =0A=
> --Sean=0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

