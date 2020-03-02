Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE351752CB
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:48:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=QV7U56nUT/jkoKEVx2iXFgOEFNlGEQiXJXzSb51/0JU=; b=MeVNZMzRme/ky8ryB064pgH0M
	pvBUQc30tYCw6nqo0yO7Nec7PEuHJQK1cxyT1E0x7kaa648/dNtvnvHfygu19GwyxBi4HgPzpwHQV
	4Jyn+tSuvSl0xMMEuiEKrPYOb0EmymJ89Rfi0il/0Z4/sC4NHQCIB+dpdq6gE+46eXNv/+gHa7Eae
	I3y6jv1ByegazszAm59uApN8LiVFc0I0YvK1TfUPcJtZupvFwtHIXgEchQ6Puh1hqHTcYSzStHQSD
	S29o+2PBngI6OBQ27ADMluorxj+Zzg5SpKXueRZRcILwM38nOG1xtmSmTPpb1xhzEL+nSqY1DHAMH
	WOecegyyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8d0O-0003tJ-4V; Mon, 02 Mar 2020 04:48:36 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8d0K-0003sq-W7
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583124513; x=1614660513;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=QV7U56nUT/jkoKEVx2iXFgOEFNlGEQiXJXzSb51/0JU=;
 b=in+nYZHeaMx6JA/6troOVIJkW0n2bcgGN1SsSQYGmdMj5liFwxMHcX2y
 nH+M5wn4PIo53+6eOYBTVn2WQnWhWsvsViuY1Q4h2s6OodQUbAuQokLqO
 J46GQu/226md7XSGgfXeyh8Tuo5z+Ng64u0k0aF7VmApywllLBOsO/Ppy
 pdBKDPy8vEQVt7/+maTkkAHPdVwOd6YzltY3Ll2qOlZ4LVrpNOACco8v7
 WmSCyhSU5uZDwIAETfYwfzo0tGiUS6tkKfxpfPn3eF7iY1zRDqCEbpa8g
 wxP+4du1IE5fp2qwEOHlwKC51paAS9Wx2ZerrYKkua3vv2I6rCs1kv5es g==;
IronPort-SDR: O/CLqkm8wfn+Xo36VUwwT/Fg35gX0sKrj9jmm7N24QZnQabYguzk3M6GoBfcMCDtNNksAuIJTR
 6EijgikV7yny9sNOrSzqrEUlEQprsnfVZ/0tiyA6u7sdWqQ4otgcSo0iEgwe64PqK5UFvJvvUv
 p7tOzizPK2W1tK2bHvvLFLdUqETLWXjlm2YJF8Z/dQbrFGtBsD8WresPBFkyYsdUfNBkDv27fb
 drKbTM+30X/Y2P9HKqIa0vKLhGIXz0IcvscF6J19b2XBXH52LvCSFUgeqWTDSU7eEPMAzCx6Vg
 9RU=
X-IronPort-AV: E=Sophos;i="5.70,506,1574092800"; d="scan'208";a="135528755"
Received: from mail-dm6nam10lp2105.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.105])
 by ob1.hgst.iphmx.com with ESMTP; 02 Mar 2020 12:48:30 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eUTyPD4o5Cf3eH6QRU8+mqSpXrhO0oiRmRScZW82Wkr3GSwYTHbeyQXmGM3KQO+uWjS+YsDMb4E6QFyUqqEFxWqudy2qhANTtsbSiVN3dyiRIKs3DfvzrN9eQXz0MeewEmHOFVP52kUJFC9GTOvCczb8up3NS9y5EzXpa5WMiH1jdLl8BRNnsiXBwcvkN3UxppdiiwjsFCifPDYwaEU60vcQHeMXza6sIAH0q+OtNmkP2O6YZdh3z6CWog7XCR8o/WiBO8EF84xUcYWvzd5c5pILiR02ZHwarLV04LA9Vr6LDNU7zlG33oo7r8LWMOgDljVcHzt8FU5xL1Cwofprmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QV7U56nUT/jkoKEVx2iXFgOEFNlGEQiXJXzSb51/0JU=;
 b=P6hGdstWRuhWvk4s+kypjdISWkC9XJq8ww6uCedaI5wcknVldsYnsLtnQ8PqkN+x8dEcRPp1slTjzSWR9P8mUffAflIkva6YjsE6k9not2ZdQ/vm0pbilvJw+thLEXcdCGNr6KPWUWE+PdAJ/uOvzOsKMFbjFhpRiQBqD6MwA4dRtidk+uiYsVXI7MfaewGKLNz/Et9MRQgG6UaKswCuJMVM31ABRVxWUUbjEQqHydY6W5IUrMtKVfOmCF9zSI8Nh/2acmOh3jZd6wr1POcC5WuojyxbR1dFT8FCv2uwYMo9dUVDXx4JsKSfSfm3ZYPAxXloKRG6tDoltKyxaeP15g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QV7U56nUT/jkoKEVx2iXFgOEFNlGEQiXJXzSb51/0JU=;
 b=i+H8VO4YkSM8FUEq0VD6GvpvivBn/XjYm9tyc/P+KfuGdhAJKdpWHx8I15D0ftHm6tADQBB6qtFPkY8OipzqBHJI0R6wcw54MFeLBYHWm7o7oyaJESywKknK6bgzCHe3PVK/RgdRtGDngFumNyaMmI2d2XSySyC2zFV2Fhd/Aj4=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (2603:10b6:a03:10e::16)
 by BYAPR04MB5445.namprd04.prod.outlook.com (2603:10b6:a03:c7::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 04:48:28 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::6daf:1b7c:1a61:8cb2%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 04:48:28 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Anup Patel <anup@brainfault.org>, Sean Anderson <seanga2@gmail.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Topic: [PATCH 00/10] Kendryte k210 SoC boards support
Thread-Index: AQHV7nY646/VURUiUEOLVfw+FTteGg==
Date: Mon, 2 Mar 2020 04:48:27 +0000
Message-ID: <BYAPR04MB5816CE3D4606B81DFCA1D627E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <CAAhSdy3+WU31NtXyrYmfSRhhD2k1Rv8tk2pLe+ESYTpj=+LnGA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 229e919a-2cc6-48d4-53d3-08d7be64f31c
x-ms-traffictypediagnostic: BYAPR04MB5445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB54453AFFDF94072735D8F8F7E7E70@BYAPR04MB5445.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(199004)(189003)(9686003)(66946007)(5660300002)(316002)(4326008)(186003)(86362001)(76116006)(7696005)(52536014)(55016002)(478600001)(81166006)(64756008)(66446008)(81156014)(66476007)(53546011)(66556008)(8676002)(26005)(6506007)(71200400001)(110136005)(8936002)(2906002)(33656002)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5445;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YGI8SwYNf/Y/LiIZFIQnikTBiDpIFak5mWor7zSc1ZH7Ygcmqv+4mzYtpBTf9sAJfRcJj86RwgDgyJYHVkiiOj/wh/ITL/BRIAPNLOKDjGaStUvD2cO9LXROn5QfDVelCnx+m/DXUSQkuMwm/O8Il+O6JIyVWcpD+z4WTAcXcYCa/r+0c7hvFUKDJX+0zSfp5L23eM1irS9tzhtkhHCIWHNrvtbK4EJNHu8MrSf5yH2HeKC9NpYqePPvg/7xtjotacAyKjdCBWRVBRQQofruN0FZF5/sUJjhiMO0Cr8M6NLFCJHrmtSUWn/JUT9JBJjmcIXAcVCWIWZ0hNJqoVo+HCzXaokAWm8VJPNyibtUd5jXHGXY0KoAuXDa/ZFoy+vUw9wSUKBSg9kw/nW0bhdI3c1GccSNdTXmvvWVH44ujz8vpbSXtuQv8Muat3U1cUvS
x-ms-exchange-antispam-messagedata: KeQ7zi8BboFx80IlS6t2abwof3YJpZMrkeddUv6/IZM8z1rF7RN15953mvolua/jdUjktEg9diyS11p7ku8R/cAmccznjmanrYsvNmy9FbXmjk41++nRFuVJ0q19FJGgNCnGzL6z2Fa4rGqxTSIC1Q==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 229e919a-2cc6-48d4-53d3-08d7be64f31c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 04:48:27.7613 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H2wvW8MtrIr5cDwYiIqAMqzgBzk65c9mNLeyVFyMdAQUwHQQjZO04tKq3EGAe9WmIIp+0vGte4owfO7086/DJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_204833_071888_820A2683 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/03/02 13:17, Anup Patel wrote:=0A=
> On Mon, Mar 2, 2020 at 9:23 AM Sean Anderson <seanga2@gmail.com> wrote:=
=0A=
>>=0A=
>> On 3/1/20 10:01 PM, Damien Le Moal wrote:=0A=
>>> On 2020/02/29 5:32, Sean Anderson wrote:=0A=
>>>> Hi,=0A=
>>>>=0A=
>>>> When booting from U-Boot I get an OOM. Perhaps this is related to the=
=0A=
>>>> second cpu not coming up?=0A=
>>>=0A=
>>> Unlikely. It looks like your user space needs 2MB per shell (order 9=0A=
>>> allocation). Since you have only 5.5MB free, that may explain the alloc=
ation=0A=
>>> failure (if init is forking another shell especially).=0A=
>>=0A=
>> This should be before init comes up; when comparing this to your syslog=
=0A=
>> output there are several more messages before init gets started.=0A=
>>=0A=
>>> For the second core not coming up, an IPI needs to be sent to the non-b=
oot core=0A=
>>> to wake it up. A Kendryte thing. U-boot should probably do it before ju=
mping to=0A=
>>> the kernel. I thought I had that in the kernel though. Will check again=
.=0A=
>>=0A=
>> I think it's a RISC-V thing. I should have U-Boot set up to start linux=
=0A=
>> on both cores, but something may be misconfigured on that end.=0A=
> =0A=
> You have to booti or bootm on U-Boot M-mode to make all CPUs jump to=0A=
> Linux NOMMU.=0A=
> =0A=
> Based on you log, it seems the second CPU is still spinning in U-Boot=0A=
> M-mode and when Linux NOMMU tries to touch memory where second=0A=
> CPU is spinning everything gets corrupted.=0A=
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
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

