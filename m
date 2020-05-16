Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CB71D62A1
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 18:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TT2DrQTL0OiqTtbnDMDu0LZA+YYhjTRvd4lAfAoXj0o=; b=W3L8gAwaV98q/+d5zHqOFv0TZ
	60f99SkVEjgtDCELhjMBeEqpSjdrK6Iq1UiEUln4tlUV/MGRMIyRCa4IachQ3hyyxEATXWdVUn1l2
	9IvhOqYXGo6Zq8DBe3W5m9fk8tHxPc7FxE3+uVCTQRyJc4ygMrPYizKy5UX9CCu8UdD6dzjE/KdHO
	GZ9AFTmTZ03U+wVSDQ63Fzhb+Mpnu31MW8n5dgYLlF7WlKBQqCVxOoOcJGnz34VQwA354NICtfbiA
	2WoMBZe437mRIxH0916BcPY3eczkCFOCtUsQPiUl6h8q5nU1lAGv9D+BDO3kW2YTgs7wCzpocjGy4
	ypEwz/ulg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZzgR-0007ld-0M; Sat, 16 May 2020 16:29:07 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZzgN-0007kq-QR
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 16:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589646545; x=1621182545;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5zw3VxyMpC6zD648FB3a21N8+zQDugcioy5nX95MOWc=;
 b=Tq8kqrcphEn8bmjuV7+xePpcO28y05T/Oq/Dqyppcx4hyfvCoqo4RIyy
 /aDU7BKzHGr1fro2JFAni9xTGIIq0lv0Ijv3m55BeNDHNPLHMhiovLDqD
 LmwxdiWG26DzWIDMcXitT+Kgjw8YA5nDpUrmECVWluVBa+c/aQitIn+Tx
 cEyDtzzL4ex6jbP18Abua8570pGqGL0uMZm6TKmy30TrI4QSttqNAQu/G
 i0vhw9yEOnmuMEWOsyfN54Ar+SJvAa4rTJqzIfigu+ZSpq1o+xSxdABkp
 9jXmDVFeS/4twMLzrZXaHv60eBbkBMJ8fgY3FavMslC7omaAlJTHKKefp Q==;
IronPort-SDR: xaFDZLHm1ps/Zifq5Y4MSB9tbFzrfVIX0U+M4lVpwiAM5ihq87sh6nHL6CLsOg1d+haCELCXKO
 yLOCiDDFMvbEZkAyhPT0arGrF4fcfvQTRyr3RQGfQiQVioLxUovO0yiN+WN7WA2eZubBQIsygH
 tvdMKwsscDOvsPtDXXYDbwPOsZ8COCzqw2MiTuXMfhfgCQqWHU+zFPmXP4T+BLqNCkPo/s8Trf
 f7wzTpe+t3zJHtUj5xLM8NVYdMtuxJ4oO51v/Vhsj6EDFrNgzLJvpgtY7so6yPiVc5e35cAfNy
 8iA=
X-IronPort-AV: E=Sophos;i="5.73,398,1583164800"; d="scan'208";a="138190562"
Received: from mail-co1nam11lp2172.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.172])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2020 00:28:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m5xEP7Irhk1AmFPGJ+ETiuxcDmExbl1n9rmVzEeaOMZSSABvmlqsCq0UyRx0/UV+qi2QTImCUKqGSMIPqydj0RuwNaTkms3jN5U8pRI3dZKYH8LHgugjeR3pdvUR+9+1rSbIxorh2VppxMBZ+5hNo1Guo2Lt9XML2ciCblnTM1Y33OMw2EPKkuK/qVn/ZU9r+nUWQFYLAj1I2xj4WVxGPdduRUIi3Dmsiui5M3HSUEeMTQCrUkueGPjox11viWRkvuEWK8fJaHho12aEJxhoCG0cWOXG6ErTiGoFkWyXNQpVEtGhbfupajpke93Mgnk6SX5S3K8J/oXV8QU2L7Iq+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TT2DrQTL0OiqTtbnDMDu0LZA+YYhjTRvd4lAfAoXj0o=;
 b=lUT6VO1mD0ZfGT5L8lFe0HiHbRxgm6KkvbngKh2itgnR4NmfJ7NRVPcS6+7eOxM2hqzeYTQ5++HBa8J7gMW5+uBzs7S8SrmyPTPHd7GJr5UW2JK2puFLuVD+KQSxjJtbvmRQva/yJXpVGYs1sr2gc3Inb3EntrqNom5I09GveLz5X8wovQ4noF/j93TdHRqgRR4KWck4A1Pi/NULCxmUXV07wcXVpJ5KzL9ANAbMGgjw36YNzmlKBlyVrY360BysPa1Kmc8dALjmecZtTWUlLmP9oudT8i6toNVsIcTtNoUAn0FpGD6KnXOLkXsGlxhAyl3KY+FpuySXVbkMxBWnzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TT2DrQTL0OiqTtbnDMDu0LZA+YYhjTRvd4lAfAoXj0o=;
 b=qQXIJ5bmZJ8jLC4hwEQTs6h0zELJi41lc2vihcP7mP0b1jFwOQGNf6rUKJEACGdYsEhfHlOJyeb88s2uHFGNggrhDZ8yZNgW0vdv+NEPVMmTiqZHQvsXK7VxLTOCr/fOlyPq2nKFuvCmZ4P0BSu5Syj4Z2dxLzEYm6VBP3EXhwU=
Received: from MN2PR04MB6207.namprd04.prod.outlook.com (2603:10b6:208:de::32)
 by MN2PR04MB7136.namprd04.prod.outlook.com (2603:10b6:208:1eb::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Sat, 16 May
 2020 16:28:56 +0000
Received: from MN2PR04MB6207.namprd04.prod.outlook.com
 ([fe80::e0ef:7fce:ff0d:f580]) by MN2PR04MB6207.namprd04.prod.outlook.com
 ([fe80::e0ef:7fce:ff0d:f580%7]) with mapi id 15.20.3000.022; Sat, 16 May 2020
 16:28:56 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after current
 handler is present
Thread-Topic: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after current
 handler is present
Thread-Index: AQHWK0zCQd2Rb1y8/UKUOdOD8b1Y6qiqn7gAgAAG1ICAAA9DAIAALzWQ
Date: Sat, 16 May 2020 16:28:56 +0000
Message-ID: <MN2PR04MB6207F08A89A9116D83BDAA2F8DBA0@MN2PR04MB6207.namprd04.prod.outlook.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
 <20200516063901.18365-2-anup.patel@wdc.com>
 <d4e0dcceecad49e71ffe785f8950981d@kernel.org>
 <DM6PR04MB62012DBAF3FAA7A264094C418DBA0@DM6PR04MB6201.namprd04.prod.outlook.com>
 <0be23fcd363998ddd527eceb308f592c@kernel.org>
In-Reply-To: <0be23fcd363998ddd527eceb308f592c@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [106.51.108.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: abb20d03-9d68-4103-abe8-08d7f9b63ae0
x-ms-traffictypediagnostic: MN2PR04MB7136:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB713650B7D9EC81A8004F59D78DBA0@MN2PR04MB7136.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 040513D301
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YUSQM3QQvqzIqfUs/D5gTBbG5lLvg+KMs4mORgKZ/1/V56Ut9Sar63uBH5DuNaE+4iCweapv94AnZrlBR38ccgAFRanNindPtSasfHtbeKdt+DqRgLmY5oxDR5ecxdVsURkvCsLrcW8D4RP1XCtnur9wTELbGgjoRRTK8es7IEVZgheiNiR5k+PNF5EY01dWsQIP1mq+d7qABAfyqQuN0hN6Fp+QNMienhW+As7GE9zZ7lrZipNeDVjR1s8jLDzjvU+1OjA2FGQVcq4UB5tERPG67YPVwTJXMBiOXo6BSA43r9eJBLmZ3CfLiAkekDdBIS7+BYcRywPEytYkqQsFBkOWxM15kWmfUVru7u31mEmKuimXA0HvZQA1gKKQ5Se2L5CCp35mdTpEBn743vXp2nrS/Vbn+/1NqjZ1jiH3HVTNvfQL6Je7ZLdpX7LJKfW1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR04MB6207.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(366004)(376002)(396003)(39860400002)(4326008)(64756008)(71200400001)(54906003)(26005)(186003)(55236004)(53546011)(7696005)(316002)(478600001)(6506007)(76116006)(8676002)(8936002)(66446008)(66946007)(66476007)(6916009)(66556008)(9686003)(52536014)(86362001)(33656002)(2906002)(55016002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 56bitYnKzXuZkDZiqnfBhgRUuvJYNIVq8ir01Jx/nFaJQ8B8cVB4AiOn3huP7U3mZ/c+tTrnm4Z4rrVzmOZDkN8bnJzoYlanJ0IlP0INq0PElQwYsjF7cdKN1tw+l0bp9YY4hUzMxT2R4zn3azZn/X+RYD2TKTOT/lhgr7ER4j5aAENTvc+pmYPWSrtdYD7m6A+3nZCSOtuG7/9ltWfckvPxPC4rH0UO28/x45OamoJGpCTv+g86GJQl0aszdUUs2I9VVDQmTs9RaHyzabl6eXn+AGmI87/DgAxs7dioHj3EuoOnqUuKAOqbH9uid5oJUIzTdixh/b9l4zbhJZ78Guawa852/118R+jWq9MQuW/kQPaGteMBiBCUTmcBRV/UJJn9olrMorgF6k71YoY0mAnfAjA6l+HZ7fg3Y8VV1uXjuhzkDkAgD3qJlPjJzsue99w8vn6rTeQHje9wm5YR/ypSHElYF5YVstI9T8+qG5TL0fL78P8SZoG1xrnKumKB
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abb20d03-9d68-4103-abe8-08d7f9b63ae0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2020 16:28:56.2301 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ug36WYj0jE8HiRjallIN15Rxw/LaQ5FWjI8z2ivBPzaKzF+lrpm3DzIbyh72GXCe4B2WKSbxBM1EoW6zDYCHyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_092903_925757_FF4C6C79 
X-CRM114-Status: GOOD (  32.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> Sent: 16 May 2020 19:01
> To: Anup Patel <Anup.Patel@wdc.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> <paul.walmsley@sifive.com>; Thomas Gleixner <tglx@linutronix.de>; Jason
> Cooper <jason@lakedaemon.net>; Atish Patra <Atish.Patra@wdc.com>; Alistai=
r
> Francis <Alistair.Francis@wdc.com>; Anup Patel <anup@brainfault.org>; lin=
ux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after curr=
ent
> handler is present
>=20
> On 2020-05-16 13:52, Anup Patel wrote:
> >> -----Original Message-----
> >> From: Marc Zyngier <maz@kernel.org>
> >> Sent: 16 May 2020 17:42
> >> To: Anup Patel <Anup.Patel@wdc.com>
> >> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> >> <paul.walmsley@sifive.com>; Thomas Gleixner <tglx@linutronix.de>;
> >> Jason Cooper <jason@lakedaemon.net>; Atish Patra
> >> <Atish.Patra@wdc.com>; Alistair Francis <Alistair.Francis@wdc.com>;
> >> Anup Patel <anup@brainfault.org>;
> >> linux-
> >> riscv@lists.infradead.org; linux-kernel@vger.kernel.org
> >> Subject: Re: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after
> >> current handler is present
> >>
> >> Hi Anup,
> >>
> >> On 2020-05-16 07:38, Anup Patel wrote:
> >> > For multiple PLIC instances, the plic_init() is called once for
> >> > each PLIC instance. Due to this we have two issues:
> >> > 1. cpuhp_setup_state() is called multiple times 2.
> >> > plic_starting_cpu() can crash for boot CPU if cpuhp_setup_state()
> >> >    is called before boot CPU PLIC handler is available.
> >> >
> >> > This patch fixes both above issues.
> >> >
> >> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> >> > ---
> >> >  drivers/irqchip/irq-sifive-plic.c | 14 ++++++++++++--
> >> >  1 file changed, 12 insertions(+), 2 deletions(-)
> >> >
> >> > diff --git a/drivers/irqchip/irq-sifive-plic.c
> >> > b/drivers/irqchip/irq-sifive-plic.c
> >> > index 822e074c0600..7dc23edb3267 100644
> >> > --- a/drivers/irqchip/irq-sifive-plic.c
> >> > +++ b/drivers/irqchip/irq-sifive-plic.c
> >> > @@ -76,6 +76,7 @@ struct plic_handler {
> >> >  	void __iomem		*enable_base;
> >> >  	struct plic_priv	*priv;
> >> >  };
> >> > +static bool plic_cpuhp_setup_done;
> >> >  static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
> >> >
> >> >  static inline void plic_toggle(struct plic_handler *handler, @@
> >> > -282,6 +283,7 @@ static int __init plic_init(struct device_node *nod=
e,
> >> >  	int error =3D 0, nr_contexts, nr_handlers =3D 0, i;
> >> >  	u32 nr_irqs;
> >> >  	struct plic_priv *priv;
> >> > +	struct plic_handler *handler;
> >> >
> >> >  	priv =3D kzalloc(sizeof(*priv), GFP_KERNEL);
> >> >  	if (!priv)
> >> > @@ -310,7 +312,6 @@ static int __init plic_init(struct device_node
> >> > *node,
> >> >
> >> >  	for (i =3D 0; i < nr_contexts; i++) {
> >> >  		struct of_phandle_args parent;
> >> > -		struct plic_handler *handler;
> >> >  		irq_hw_number_t hwirq;
> >> >  		int cpu, hartid;
> >> >
> >> > @@ -364,9 +365,18 @@ static int __init plic_init(struct device_node
> >> > *node,
> >> >  		nr_handlers++;
> >> >  	}
> >> >
> >> > -	cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> >> > +	/*
> >> > +	 * We can have multiple PLIC instances so setup cpuhp state only
> >> > +	 * when context handler for current/boot CPU is present.
> >> > +	 */
> >> > +	handler =3D this_cpu_ptr(&plic_handlers);
> >> > +	if (handler->present && !plic_cpuhp_setup_done) {
> >>
> >> If there is no context handler for the boot CPU, the system is
> >> doomed, right? It isn't able to get any interrupt, and you don't
> >> register the hotplug notifier that could allow secondary CPUs to
> >> boot.
> >>
> >> So what is the point? It feels like you should just give up here.
> >>
> >> Also, the boot CPU is always CPU 0. So checking that you only
> >> register the hotplug notifier from CPU 0 should be enough.
> >
> > The boot CPU is not fixed in RISC-V, the logical id of the boot CPU
> > will always be zero but physical id (or HART id) can be something
> > totally different.
>=20
> So on riscv, smp_processor_id() can return a non-zero value on the the bo=
ot
> CPU? Interesting... :-/

On RISC-V, smp_processor_id() returns logical id (which is the order in
Which CPUs are brought up).

We have special function cpuid_to_hartid_map() in asm/smp.h which
helps us convert logical id to HART id.

The HART id in RISC-V world is like to MPIDR of ARM world.

>=20
> >
> > On RISC-V NUMA system, we will have a separate PLIC in each NUMA node.
> >
> > Let's say we have a system with 2 NUMA nodes, each NUMA node having
> > 4 CPUs (or 4 HARTs).  In this case, the DTB passed to Linux will have
> > two PLIC DT nodes where each PLIC device targets only 4 CPUs (or 4
> > HARTs). The
> > plic_init() functions will setup handlers for only 4 CPUs (or 4 HARTs).
> > In other
> > words, plic_init() for "PLIC0" will setup handler for HART id 0 to 3
> > and
> > plic_init() for "PLIC1" will setup handler for HART id 4 to 7. Now,
> > any CPU can be boot CPU so it is possible that CPU with HART id 4 is
> > boot CPU and when plic_init() is first called for "PLIC0" the handler
> > for HART id 4 is not setup because it will be setup later when
> > plic_init() is called for "PLIC1".
> > This cause plic_starting_cpu() to crash when plic_init() is called for
> > "PLIC0".
> >
> > I hope above example helps understanding the issue.
>=20
> It does, thanks. This pseudo NUMA thing really is a terrible hack...
>=20
> >
> > I encounter this issue randomly when booting Linux on QEMU RISC-V with
> > multiple NUMA nodes.
>=20
> Then why don't you defer the probing of the PLIC you can't initialize fro=
m this
> CPU? If you're on CPU4-7, only initialize the PLIC that matters to you, a=
nd not
> the the others. It would certainly make a lot more sense, and be more rob=
ust.

Okay, I will try -EPROBE defer approach for v2.

Thanks,
Anup

