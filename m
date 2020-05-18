Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7791D7369
	for <lists+linux-riscv@lfdr.de>; Mon, 18 May 2020 11:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yT1VkS78usXsgTgfQiq4RDkmgg3AqCarBuZedNqBenE=; b=rcj5ibQc/5LxPliCL8jFc34P6
	dZm34WTzeg/a+tbV8co4dKA7V0dgGjdr+fISVJqJc8mX8M68KoZnuqoMd9ItxzX2SX7q9V2UVBVw7
	dq523vfig0pNrGGbRB/CkFImpnIvCfBDUSmTrgHY45JN/dMpyf1DJy+7BQNXLt7aCSOaUEq3Abf4s
	bgeURU6GSfqqC1MxEsI2yezXseQrOgIL0DtFKnwLXsQvup6yjJMO9ekAADu4Ljcdpfx7jdUZWALAD
	6Uni8lPaJ0/iAExjQYsV6u1mfKHpk32/wd1wqS0NPyuN0YBZyRrFF2bhCleRnYov280R8EfFwhQ/u
	nk4/T0WrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabdu-00072m-9e; Mon, 18 May 2020 09:01:02 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabdq-00071g-4a
 for linux-riscv@lists.infradead.org; Mon, 18 May 2020 09:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589792458; x=1621328458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yT1VkS78usXsgTgfQiq4RDkmgg3AqCarBuZedNqBenE=;
 b=QFz0XjS+CB4BfA66DgGe/9Oek+tmO0oELaNDikz2z7gQwy2TUpRcGgtX
 VH3q4s9XCsWUdzvlIZPBGVEL6n30kSkaIWUCf9R1jouixgtr/NhrBQl3x
 3jDZBt7vOcIwkYI+AtuvVrR/Uufvc7Z8qLBLQgMqvmQHf7FsHJTKOHHtZ
 pRePNBoafbGzpOgqIGtAz98XvT+mzTDB/j/1ppAMta8M8qWRkqFuRIBwd
 oTZ3Ese6Vc6NHjaOzo9B/rNa64iPHqgWNtnUhb1idtRaB6gBRoMeVnKko
 1aRgM3q9grGHOT9CDmTkq2w4YOIUBT3dqEpf8rHBriERADbI4UyVYUDT4 w==;
IronPort-SDR: mDYInK/grllTwUtmQTHgYoyV12V3TZv0c2N7g15VZUx2PkG0P5/SMpKIofNzZGwXEoAoqwc+Xz
 KDOKxsE7WUHbx1ASJCTAc1XOpVHbLRx501UaR3gqM3uC+z4rN8JyDTUx0icBUHWeBQKd1N40Qy
 y9/SVIeeXmsirNoHFRLY4eT0QGKT2GPlAW+DhUZ/MlbdVsLRbspdncQM7oqXXSvsM9dAwPSBkL
 LjRkDpqGM9JbL6zbrHR+6hsb577Dr76D95oB/F+7NIDzmG9o0Vm+VLNXVly0BdiGSDv9X4XTCL
 AGk=
X-IronPort-AV: E=Sophos;i="5.73,406,1583164800"; d="scan'208";a="138264827"
Received: from mail-co1nam11lp2174.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.174])
 by ob1.hgst.iphmx.com with ESMTP; 18 May 2020 17:00:54 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jbnA6xxcnBi8M3N9BRZE52tclbQ187DG4R4GMXkgIl8EsKPWLHKm4B1dLnxuAczAaMnT5mEyF43lBJt30DcRVet/884GHGb5F1C7BfSpuBneCo/qJoVjmvHCVDape8+4/kQFXtPiRdQdVYlJF24rCchYe/RXNTlpOY4ouA3n5WOGLy6G/KSIa2fttjnG6n2EXqCclDC9D9Xzj97LRFNSfZGgm9t/VQ3iYDs7B43JIqWCywplj/GB5JTkSEF99IeO4JBjLcScpqdqhjCfR48hhUcJmAtqrp6QK4c7JR/tJaAb/LSTdmi68CFGwPcnBPKBkKwEaZRJJ134Y1EFVxw00g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yT1VkS78usXsgTgfQiq4RDkmgg3AqCarBuZedNqBenE=;
 b=hNGxyMaMsibqphBH/qxPKGQAr7MIsqmswp61ateNM/tdl8WFa63hLAhlgs0ohS46B5J8ek848Gj/P7al9FppQBTOe9qJ48TxQvp2xCFWC6rJtnvsE640HPZ+bxHqJQAUSEjlqMpldtULwAhRqyL9mw3oDbC5ZlkkcoRY9PUB/qgp0PXBKq8F5Rz9z3wgyz9nNuW99LaZXTrI5NInjxAnOu6w3XdeAk4ENzXfxyd2n8IIslLd5jJk/XMP5v4S7tJ3I998HxPVd+QrN/dMvxpzywZPZUnxc5b6FIKk5sQByGwhHZ0bZnM+upBjIg2LwRkVI0EOQwHgzIv2HDa9yRY30w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yT1VkS78usXsgTgfQiq4RDkmgg3AqCarBuZedNqBenE=;
 b=HgRw0oMiw2MUuanDAHLnUerxSU7o8GDL7VKcXBVstfJHqfAE3DmPp1ps+IAodj/X2EirC77XhFYpqDVAueXFkVJ+I/aQciaKsORJlKpjenlRSfOdibJHhq3LWJr+eOjkZrQNURqOr1goy+Fum3R2KvOkW89Cg4IdnvBE47t5bWQ=
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6234.namprd04.prod.outlook.com (2603:10b6:5:124::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Mon, 18 May
 2020 09:00:52 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 09:00:51 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for muiltiple
 PLIC instances
Thread-Topic: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for muiltiple
 PLIC instances
Thread-Index: AQHWK0zIG2SJo4BaZ0+zBbhx696gsKiqpKoAgAAHeACAAAWnAIAANrhQgAKZmgCAAAtfsA==
Date: Mon, 18 May 2020 09:00:51 +0000
Message-ID: <DM6PR04MB62010CC19FEAEE738F2BC00E8DB80@DM6PR04MB6201.namprd04.prod.outlook.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
 <20200516063901.18365-4-anup.patel@wdc.com>
 <577f9a16b3dddfadb7c5487ffaef31d8@kernel.org>
 <DM6PR04MB6201FD64C78C51A94C4776558DBA0@DM6PR04MB6201.namprd04.prod.outlook.com>
 <6fbfca8f084f6cd0dc6818c4bbf58843@kernel.org>
 <MN2PR04MB62078C2854FE33CE81186FA88DBA0@MN2PR04MB6207.namprd04.prod.outlook.com>
 <5bc4010161af7bef8e3c30e08888ec82@kernel.org>
In-Reply-To: <5bc4010161af7bef8e3c30e08888ec82@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [106.51.27.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 28caa290-5a4d-4e1b-c9cc-08d7fb09f750
x-ms-traffictypediagnostic: DM6PR04MB6234:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR04MB623484CF0F5683AA1DD98DFD8DB80@DM6PR04MB6234.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U09WBjQxuSOT7r+nR2iGR6pJLs2d1Czhbo6maoBZjnrj3gdGqlO+QA32cCSXjp8VeYuBXT1fvKaEAATN6CsupJSJIRFo1LSU/8s1C+84Tm/U1/dch7xMoC9QStwfZ9Z3HuBPO8bIIy43NT1eOcOW3idiKtTqbQMoo6CIfgfLfuUFwE3f7S8pBv+t59kgjKkmFKy1w51UVqL4L+iKvN1oa8byceXY7qPgsZLgGsftHrJaeoGKlSHPL2BOEcO519pH/ith+RIuih69X9iJAnANMZzdarq7drisamZYjz/BLiSoF7DXaMdNC/E0Zsq8Yg8WGJTo1btVJCUttOSPN84cyahKfj60CFFk7exEtmQyx2vM86PhWdjyfs7avIHnwGZGQHm+kmuOkIaIVZqjEN9b9m9YqPqebRGtrA2zoPGDIZ3gNegG87iPMWgOgrek2Rxw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(346002)(376002)(71200400001)(55016002)(26005)(9686003)(6506007)(53546011)(55236004)(8676002)(76116006)(66946007)(33656002)(66476007)(66556008)(66446008)(478600001)(2906002)(64756008)(186003)(4326008)(52536014)(86362001)(5660300002)(316002)(8936002)(6916009)(54906003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: oN43dqi3tCvkqz04+SdqBSMzRRzgb6YpOTBMXCPpPKWPZrAFtw8H6oSxn7yLLDd+n4xpxSrEFFzp+JSU1i2MyYMotMoyP69YZfNETmcCYhcSGZopJGimVOBWKSDH4ujotjXroHh/4Fez2jBRhR302iMLCWPxt+mMYFDeiVyBBIJm3CV6Fz+H+W8GkPiTEi/WFsu71PSi/uvJvq01yjXGV31e4TUGsRQaMN9LvtLTJy8HFYltOOdtAEeL8kU9e/7QOCRfnibXPOhfILbxr0hZsRcPelYsIwwzaQOnyKlf4b+OQb0836H80JnifqB7X4k8BswiIQZVG1ge9+snGdsoxpvu3Y1A+siBQWYeFWO05gV7ghACzu1+6kVJh5ZUnpvdFWgKH7oZ4E/xTbQIX1B8JemCO6H1dSZBzGj3P43uDvZezj8bX82UoFmQn/1s76a+Sfr1cDCdNa7jijHt9K1D0ObfOWyltTGpPiaCk1R3kmA=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28caa290-5a4d-4e1b-c9cc-08d7fb09f750
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 09:00:51.7319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W5xbbuGbHWvdwc70iMC/PfCi+E2jCX8Xa/VTbrU9win3WwuEKjZtHVesWe8MdzkASqXqZlzqeXoldbUdfxtXZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_020058_218119_EA8FED41 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Marc Zyngier <maz@kernel.org>
> Sent: 18 May 2020 13:45
> To: Anup Patel <Anup.Patel@wdc.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> <paul.walmsley@sifive.com>; Thomas Gleixner <tglx@linutronix.de>; Jason
> Cooper <jason@lakedaemon.net>; Atish Patra <Atish.Patra@wdc.com>; Alistai=
r
> Francis <Alistair.Francis@wdc.com>; Anup Patel <anup@brainfault.org>; lin=
ux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for muilt=
iple PLIC
> instances
>=20
> On 2020-05-16 17:38, Anup Patel wrote:
> >> -----Original Message-----
> >> From: Marc Zyngier <maz@kernel.org>
>=20
> [...]
>=20
> >> I *have* given you a way to implement that in a better way. But
> >> again, I'd rather you *don't* do it for the reason I have outlined
> >> above.
> >
> > I explored kernel/irq/proc.c and we can achieve what this patch does
> > by implementing irq_print_chip() callback of "struct irq_chip" so we
> > certainly don't need separate "struct irq_chip" for each PLIC instance.
> >
> > I will implement irq_print_chip() callback in v2 series.
>=20
> You still haven't explained *why* you need to have this change.
> As it stands, I'm not prepared to take it.
>=20

This is only for differentiating interrupts of multiple PLIC instance
In /proc/interrupts.

I will drop this patch since (like you mentioned) contents of
/proc/interrupts is considered an ABI and this patch breaks it.

For now, we can infer the PLIC instance for interrupt X based
on contents of /proc/irq/X/node (i.e. interrupt NUMA node id).

Thanks,
Anup

