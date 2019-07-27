Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0808775F1
	for <lists+linux-riscv@lfdr.de>; Sat, 27 Jul 2019 04:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JG9EJOgJJazT5uoClw/FJJFzy+2IpcJYw7mnYouEYCc=; b=hoEwK2GwdHj722
	ZWVL6y9wcJjDy27SzDU2w8xiMwwJ6MxKXTcSdOBJXuOIff1OJK5o2OPAgf14ycwlE9fpL3S09mE0b
	OaDFgPYlTlcR0p4kPtzLU59dFes6hV8KggEbtm8C9nsSRXXj4/xu2POmeXXRpul+j1ZCzxeaxIsRF
	yDapLg04TPH9+/8mY9P4eTI3SL/ER9ZpE2uE+cH2+P151rwTKcUcTAn175hY9DAkqLZDVeKvYoiVB
	rN95MvwQqsdsgqERBXwqZUW8BcYa9R5KSE9APgku3GdvPXI59cl9WZzn+mJsxbKRjHE2uSQSRYi9w
	yJdWRRH0Ym2xc6f3K46g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrCNI-00040I-7F; Sat, 27 Jul 2019 02:23:56 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrCNB-0003wR-Nl
 for linux-riscv@lists.infradead.org; Sat, 27 Jul 2019 02:23:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564194289; x=1595730289;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tf/2egYxx3sAP5LJbqmrXQoRpnllkQeClWzU/lungLA=;
 b=rwJZyNLPxan+rTHHqZeQjpi5PXfCkDLOhjeetxtOgdjVVIyeX54Ds8iu
 XS0JdIoV6aFt1IsESrtk31EjTVuVUOZjXSnBVN9Ibe/bWxckJskA7Gc23
 RtWLgUZ4aekUVUwqbFNsXrsx0p0NiSI0nvA0A9FQyH3RrnWD9jenUAAGP
 DXa8KIM5d4tnt5VFTy3myz6cThq8XmsJCp2ot4O9wf36O5ueAh8Ks56f7
 FTHLD+aUikzFY/ZbrAd8BgYYT71eh/gEgXV05LjKyJUKylOVadrmC+qz6
 ZPXsR4Nf92DdvbGGT/IUhLD/xkKvDpCJhnHQsbWL+5BzXkFlHKxilcQkm A==;
IronPort-SDR: IG08Feq1nlzISLcH+DY7KIqznRC10cnOfp7xJ5+1NzElQ6WeI0u5+zztkf4/Wjro7cCcktu7W7
 2dY9EvGknmnV1s+3EcA3s6p7U2b/D3IwOJGso1Q0qDx2jSnT7SyxEWo2BiQgQubZwhsH75zBt7
 6wo7er8h9QtEvW4w0+Izv1WoqswkY8ayKUVQacdCJrd0Jr1/N/xrJRScNy3tvssy5kTfzdoFUm
 JlSYe6kNj0oC+9mu9ncu/kPM7ikChzKTzAE3yfyye83XPe3dv1lp6PGijFJPnUJDzp6pUI00nW
 iUM=
X-IronPort-AV: E=Sophos;i="5.64,313,1559491200"; d="scan'208";a="214401934"
Received: from mail-co1nam04lp2053.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.53])
 by ob1.hgst.iphmx.com with ESMTP; 27 Jul 2019 10:24:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CSLYNaB9AZazVIGmtWU6Q2jhuPR+/l3OxbtYyCxkStQCu/xZsOjglebDAYhE5+q3IVj8Cz2b/Av76wFTysjPtmp/JVkHQDmGnTsLLe9XLn32lEOkVx6FhUPeeaWVawI0/wJnYZoIq/JZnsmmJJ40c1ArCpb3Bj+y2yboy/GHa/GsYa0pp+s6plq6p8v2z2LQal0OfsoVZ+mpeBMK05+LjqnPda35aqbRJqSXPjeCSn39PVB/p+jaq0/+K9HdGwvAfZnLPMA1ASnu/k4Pg8EyuL+3kgDxysKbGfipg3SB6LVNj9QwRYk6ZF5GSxqnnAeDej+mwLyTcR/Eh7M7VHJj5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tf/2egYxx3sAP5LJbqmrXQoRpnllkQeClWzU/lungLA=;
 b=HdJieajhprGYF/Wel+K0UdpxRBrtgicoAW1MwbT09/dU9NoQWGG/exOL2SFip/0orA6HEWLxYZmealdxFrR8fXh455oTjoGa0QDjBRkpkUsKaj6B3XXDjEaIlbu/2AFQgihSVwIXNnFOR/jqX1Me5jh/Y+9lDtqY6ijWvnCzj7LlamWsprGwOGiShCZdIkZaukDhy5FaVNHyiayzyofnkOimMDMj+DaH3ecakFkX2wZh+oVovZE8G7XBJl4KCSbs2g0Qdow2EscQ0qXsgYvd8SNivWyn9Z9tbdf6mFlkomRihrGcYg2mxa/DUowGFhp4+A/m5YVnyla97/PrOSQGqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tf/2egYxx3sAP5LJbqmrXQoRpnllkQeClWzU/lungLA=;
 b=e9dtuAZ45Fjkd4U42J/6ElreWJOcwAx6p9eCgvM3TNgITZdzXRsObKJ+5r1QCEWbE7qWy2O9b+hYRZJNckSpA4A235Jo4u5m4ptfDdgr+ncljzVxsW8LtdEP2lJt1/isWKZbIlKCvw+qvDpt4YeevZXTDuBymJQxHKRgpc0HUbM=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5741.namprd04.prod.outlook.com (20.179.21.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Sat, 27 Jul 2019 02:23:43 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2094.013; Sat, 27 Jul 2019
 02:23:43 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, Atish Patra <Atish.Patra@wdc.com>
Subject: RE: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
Thread-Topic: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
Thread-Index: AQHVQ+reRtipAV+pTkKW6PXuUKYNbKbdXtyAgAAaDYCAABM8AIAAMB9A
Date: Sat, 27 Jul 2019 02:23:42 +0000
Message-ID: <MN2PR04MB6061790AFE4E0AAA838678028DC30@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <20190726194638.8068-1-atish.patra@wdc.com>
 <20190726194638.8068-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907261346560.26670@viisi.sifive.com>
 <a8a6be2c-2dcb-fe58-2c32-e3baa357819c@wdc.com>
 <alpine.DEB.2.21.9999.1907261625220.26670@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907261625220.26670@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [106.51.23.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f897e0ed-eee7-4aa4-cad9-08d7123971ee
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5741; 
x-ms-traffictypediagnostic: MN2PR04MB5741:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR04MB5741DC0194F59E732B908DED8DC30@MN2PR04MB5741.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 01110342A5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(39860400002)(376002)(366004)(346002)(189003)(199004)(13464003)(51444003)(33656002)(74316002)(110136005)(14454004)(6636002)(54906003)(3846002)(2906002)(99286004)(71200400001)(68736007)(71190400001)(8676002)(7736002)(316002)(78486014)(66066001)(256004)(6116002)(446003)(11346002)(476003)(6506007)(7696005)(53546011)(966005)(55236004)(76116006)(76176011)(55016002)(102836004)(486006)(26005)(66476007)(66946007)(6436002)(64756008)(6246003)(4326008)(66446008)(7416002)(66556008)(9456002)(229853002)(5660300002)(52536014)(53936002)(6306002)(81166006)(86362001)(478600001)(81156014)(8936002)(25786009)(186003)(305945005)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5741;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: j1mcSrXBNZmyyybHdHfyrfw2+XRtJCtBLtiqhInTu4zeziVzoSo5ajIiqEJ54tJji69eXMjTRtmPzUBBcDcjl92zNLIMtP+zN0zdgKRUlGd7SQ/1VpqrQgCFSSxzmlrUBo1/Xfft+Bd4hDlmyGlnr7DLZjhRWSFOg4MJUHw83Obn86WD00dCMN4K9zpSsdA/DezbEuXV6Y6lHnmXXn5/C0Gf73t9LvByWQEv9QLwa7Qc7AW5QC6SPQ4ZuKjN9BoIuque8v+MP2KA/KrIjzrGD4yNpagdqD1Sw2MHcqyBMnlPH0Heeeqkdl7x8aW/T8mZUk4UeFexlEvXjVOtMtFEcSXZ/lbWTYf0QgXWoOi307UsANxFqhppAfHE7SKskq37xFHtLyVoceng4oEjjOd54ekqM6oOGMOrU/gwWUahQ9Y=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f897e0ed-eee7-4aa4-cad9-08d7123971ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2019 02:23:42.7456 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5741
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_192349_886795_B39C99A9 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Paul Walmsley <paul.walmsley@sifive.com>
> Sent: Saturday, July 27, 2019 5:00 AM
> To: Atish Patra <Atish.Patra@wdc.com>
> Cc: linux-kernel@vger.kernel.org; Alan Kao <alankao@andestech.com>;
> Albert Ou <aou@eecs.berkeley.edu>; Allison Randal <allison@lohutok.net>;
> Anup Patel <Anup.Patel@wdc.com>; Daniel Lezcano
> <daniel.lezcano@linaro.org>; Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>; Johan Hovold <johan@kernel.org>; linux-
> riscv@lists.infradead.org; Palmer Dabbelt <palmer@sifive.com>; Thomas
> Gleixner <tglx@linutronix.de>
> Subject: Re: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
> 
> On Fri, 26 Jul 2019, Atish Patra wrote:
> 
> > On 7/26/19 1:47 PM, Paul Walmsley wrote:
> > > On Fri, 26 Jul 2019, Atish Patra wrote:
> > >
> > > > As per riscv specification, ISA naming strings are case
> > > > insensitive. However, currently only lower case strings are parsed
> > > > during cpu procfs.
> > > >
> > > > Support parsing of upper case letters as well.
> > > >
> > > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > >
> > > Is there a use case that's driving this, or
> >
> > Currently, we use all lower case isa string in kvmtool. But somebody
> > can have uppercase letters in future as spec allows it.
> >
> >
> > can we just say, "use
> > > lowercase letters" and leave it at that?
> > >
> >
> > In that case, it will not comply with RISC-V spec. Is that okay ?
> 
> I think that section of the specification is mostly concerned with someone
> trying to define "f" as a different extension than "F", or something like that.
> I'm not sure that it imposes any constraint that software must accept both
> upper and lower case ISA strings.
> 
> What gives me pause here is that this winds up impacting DT schema
> validation:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Docu
> mentation/devicetree/bindings/riscv/cpus.yaml#n41

If 'f' and 'F' mean same extension as-per RISC-V spec then software should also
interpret it that way hence this patch.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
