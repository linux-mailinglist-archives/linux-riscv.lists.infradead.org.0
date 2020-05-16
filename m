Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BA51D612C
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 15:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ID9cw50GHYuWBcheOcIj1Fng4GiCJspbs+/8l92FJUc=; b=NpL5zLppVBEWtEJbsJTiUCCJX
	+832c95YlwSKVYlmNdgwXm6QlPHPlyHGU7EZyHDAlUWLGN8EVpVZy1smcmv9eIsJhsPNBTQj8SJBG
	gKmrfKu8kdolIpwRO11l+1J1t6w5yYIm7K9BoaWuOKOjZune4vU17E4fuIbEeg68peUWJvJBHk0IN
	GvcLtoSqvaI1yCJOkdw0ciiAORNlmM/oR80HJtOI9eAPmi4DiKVNPl4cQJUzR/4f3cSkoA5yfXbnI
	rLv35Kh5csWSRlzUXVcMWOA5TbcWKR8i6RnjkBmvSIO1/mjQyXbs/go1f6P/diboeJAvw1blZdl3u
	rhGCytc5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZwRZ-00058a-Ta; Sat, 16 May 2020 13:01:33 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZwRW-000585-5p
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 13:01:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589634131; x=1621170131;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=agobr2b31fEHJ/cLlMaShIiDM0SYsvF0QbF5yj/Yx0Y=;
 b=VqtpsbScpabEhtMDe/HnHb10WdlIDyh319dk8vTgkEBX9Z/VO35Edkeu
 PdEjT2o1yljMhiuIyQNIvE8MdRekmrCXLnIYsw6w2FD6OdApdXP+aZPXI
 ZGW6yaC3Bn58TJz5MsShhbU7lQb/DCFZqhkG0UI1JgpKgac5bXAA9773y
 ySOmRk99th4BXpmDqpCZCEjkzZxrLh+sZEpt/ST7NYfZMU3ybd7P+Lwrl
 UOMXobPQGdQaiPm+wZ1xfGmmm2lx8aawJln7OwAo2p/nBZmwvH+FKYLX3
 coPN1mUyaGOP1IjEM0xtt1GpOUzr8Eo8ue0wsCtWaAuEHya5Sd/4EY3I2 g==;
IronPort-SDR: tnHVD98hrf98rN8ezIbzNnxxThCzMgxibzan05FUHftMlDUXcKxQhStpBdsGuXwL8bQ0ZsRBsO
 HGFTnB6ClVVgzcdAuxf03xIqqU4vZObLcnCu+ZeRWlDPlxTv3rvd8z0wXNHnYS48w8N+Eh78MC
 9vjbXNt0pgD+iaVwNbKpvC4UDjklTW/uDgSCJonftQLkRTRrVW9udKXK1C/KovjWSoJIdl3Jbs
 nRZr1ViG/FgmCO815QJ4Kaz2cc0I17Akpy3O/JEm9WiHh9f8WvZYSsDoHm/8IrfHq9tbvifHqg
 m7Y=
X-IronPort-AV: E=Sophos;i="5.73,398,1583164800"; d="scan'208";a="240566871"
Received: from mail-mw2nam12lp2046.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.46])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2020 21:02:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M4gBeuEaUVR1ZDpS+8R4p2N1dxkAGV7wzqWCj+7zKxfR6VBsOw9d3/XdKu6nAaHSUuNJ1SpaOSBTkCnBC+512C3G0lvwh+H7cf7jTcPGdRuU0DSDsUn8DYttkFf7xpODdjFHKFPQC0wIE72YdApTR4mEq8sbKUdHXtpBI4XKA824/WiYoNhsxEq3mxXxIg6Nw1Qf1H56G8hFI9i7EWCYTGT7x5u+Vut8zrWSjaBvpgm1NvEfvAZsCKh78Xlmhi63w626ezcOX6jCO8oLQymdKSUdxAttaw6+z8MYwDIsYwz//DVBCKHHDoA0AbuFA8DHE0CXGZuNA2Uzuy41SXpkig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ID9cw50GHYuWBcheOcIj1Fng4GiCJspbs+/8l92FJUc=;
 b=caCIv2UGtC0XKNJD2PZiZl3sIdSqx3xURLg/I+s6BaMfr7S6j5ri4mfYeu7ty0V5F5WgKNLXRkLXQgh1qQSmSTWb38NKKFv1WGhBgvbMG2zHtpjt2c00lB2aPBXBEcv9rrlZ7hDigIDQntG7oeLTKy/upPHHhDH07z1YH7htmhgNWEJLn+TQTeTZv0CfnyuXWXvaeneZTlWQT1owEc/Dh4EDHQYRaXzlgEhAoEUUdCaKKFo4L9bPsp9twiW9xI2wpthf9uJfAaltFlK+p5grg2U418OyLDpjqyDoNRD9WsAMUYS0DKH/d73uQNelMP/l1ZSK6fOwu1OExIPBmPFsKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ID9cw50GHYuWBcheOcIj1Fng4GiCJspbs+/8l92FJUc=;
 b=UE8xMoz3wTRSYoJ2cLD0Gc1oY+3JaZptUNQ5Y7eW8ZCKaQtmPngpu3AgCu5BScg9L/WRKQfbHw25Hrq7slDCNWWM/GJ7+sUPU2waiwZHi/W5yf4FLfBlY9RODOQ1s5eOc59tQgn786M12timgUPWePX7/tzxJ2+0c22Z3Ws0siM=
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6969.namprd04.prod.outlook.com (2603:10b6:5:240::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Sat, 16 May
 2020 13:01:26 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2979.033; Sat, 16 May 2020
 13:01:26 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for muiltiple
 PLIC instances
Thread-Topic: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for muiltiple
 PLIC instances
Thread-Index: AQHWK0zIG2SJo4BaZ0+zBbhx696gsKiqpKoAgAAHeAA=
Date: Sat, 16 May 2020 13:01:26 +0000
Message-ID: <DM6PR04MB6201FD64C78C51A94C4776558DBA0@DM6PR04MB6201.namprd04.prod.outlook.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
 <20200516063901.18365-4-anup.patel@wdc.com>
 <577f9a16b3dddfadb7c5487ffaef31d8@kernel.org>
In-Reply-To: <577f9a16b3dddfadb7c5487ffaef31d8@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [106.51.108.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 060a9c3c-d440-4db8-342f-08d7f9993e5d
x-ms-traffictypediagnostic: DM6PR04MB6969:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR04MB69692BF7DEC70C1A7886B7388DBA0@DM6PR04MB6969.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 040513D301
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T6PCxvNpq4SWrs4Sg/CF8wwFnNy28iGoD2gH2+TCz6SmFa85rXHAvanEObuO08tChUwVRgZBsIZr/tWAVZtipmON2COxT5oRxZtbj/8yTxqpnK1nHpUWY1flEfCI4RhROEsABKcEXoCEc10bMM5tRv0sUURtsMBl3GT1sMAFtzxm9gSzftaE+lCihzhCk3S4Od042P+GUj1xpCRT73/e6Yuk1ijFkvErT2YXp/zxGPJuQmePycmfak2FH/I9P9/nEmMjFAguQ1m1i0ZQAOu6FOMMqqWi31EelIV7G41eDDc6K+CX+IARnT23XWi6Rmc48X2Ibq8REGM47biHx6LQT3JmYV8He7WknqqMFjtNutBeTM4FzWOLgQNRKhGefJDwH8fxCT1B/FtiEEwlpthwkvRlxW39i7w5fy3WKeTfrarV2FR6hw+HzuIq+NDQJMGL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(366004)(376002)(39860400002)(396003)(66556008)(6506007)(66476007)(186003)(55236004)(55016002)(26005)(316002)(5660300002)(54906003)(7696005)(71200400001)(86362001)(2906002)(76116006)(9686003)(6916009)(52536014)(66946007)(53546011)(64756008)(66446008)(33656002)(8676002)(478600001)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: PXtjWr9IILJlChDRoYNDgu649AyIRnesPFVjUjwv47Mj19BZHZHOeRIcanVsAhDjHku9fuuMd6p0Xx+wn2Rade47b09PWo0S6+C8ys0L6HXlai8+AFt6D2gUdOLJXskLHZYTl2PDG6ONVHLhuUBmgabjjSRqGpnqM1rX2/S2Tl7NApFa0GMnDMVT3eU+TQnoxv78ZKa+Kzi/R+P0jShw8PTXAUOYM3t/wAqd2CfpBqtG+vdlYT/Xx5CcUtx0aQTifR4RMpa3zTf8TyDnuqC3jjsSrYr2RDmq8CRNNiLgbfdige2cyqH4PvJfEioPPrlF2sip761JP2Fy+E3bUYtilOi6L5a2+zNMQJmYBJLA31XSbDDAPUQ1jSP6w5TV2dYIfT2eh6LHoOesMiXzO177l9QJ2QrzcNh9JaijNS6paYPfOhXcbh1wG+anpkQC8l0wSD52mvPGTvH/Qgwky5Lf8OCksv6mQpw3ok5MNHFbXBXbhddQzDT5tVnTBywk0ySB
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 060a9c3c-d440-4db8-342f-08d7f9993e5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2020 13:01:26.7073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pO7rYZC7yzFrJWHyKrbB2w+O6KM1C5LRVLE0t4Ah4/qIvosz5352N1kDOWu21W7sukvySv1hX0Lv7Pqh9RM+KA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6969
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_060130_314175_A39AD79B 
X-CRM114-Status: GOOD (  24.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
> Sent: 16 May 2020 17:59
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
> On 2020-05-16 07:39, Anup Patel wrote:
> > To distinguish interrupts from multiple PLIC instances, we use a
> > per-PLIC irq_chip instance with a different name.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 28 +++++++++++++++-------------
> >  1 file changed, 15 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c
> > b/drivers/irqchip/irq-sifive-plic.c
> > index 2d3db927a551..e42fc082ad18 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -60,6 +60,7 @@
> >  #define	PLIC_ENABLE_THRESHOLD		0
> >
> >  struct plic_priv {
> > +	struct irq_chip chip;
> >  	struct cpumask lmask;
> >  	struct irq_domain *irqdomain;
> >  	void __iomem *regs;
> > @@ -76,6 +77,7 @@ struct plic_handler {
> >  	void __iomem		*enable_base;
> >  	struct plic_priv	*priv;
> >  };
> > +static unsigned int plic_count;
> >  static bool plic_cpuhp_setup_done;
> >  static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
> >
> > @@ -164,20 +166,12 @@ static void plic_irq_eoi(struct irq_data *d)
> >  	writel(d->hwirq, handler->hart_base + CONTEXT_CLAIM);  }
> >
> > -static struct irq_chip plic_chip =3D {
> > -	.name		=3D "SiFive PLIC",
> > -	.irq_mask	=3D plic_irq_mask,
> > -	.irq_unmask	=3D plic_irq_unmask,
> > -	.irq_eoi	=3D plic_irq_eoi,
> > -#ifdef CONFIG_SMP
> > -	.irq_set_affinity =3D plic_set_affinity,
> > -#endif
> > -};
> > -
> >  static int plic_irqdomain_map(struct irq_domain *d, unsigned int irq,
> >  			      irq_hw_number_t hwirq)
> >  {
> > -	irq_domain_set_info(d, irq, hwirq, &plic_chip, d->host_data,
> > +	struct plic_priv *priv =3D d->host_data;
> > +
> > +	irq_domain_set_info(d, irq, hwirq, &priv->chip, d->host_data,
> >  			    handle_fasteoi_irq, NULL, NULL);
> >  	irq_set_noprobe(irq);
> >  	return 0;
> > @@ -294,6 +288,14 @@ static int __init plic_init(struct device_node
> > *node,
> >  	if (!priv)
> >  		return -ENOMEM;
> >
> > +	priv->chip.name =3D kasprintf(GFP_KERNEL, "PLIC%d", plic_count++);
> > +	priv->chip.irq_mask =3D plic_irq_mask,
> > +	priv->chip.irq_unmask =3D plic_irq_unmask,
> > +	priv->chip.irq_eoi =3D plic_irq_eoi,
> > +#ifdef CONFIG_SMP
> > +	priv->chip.irq_set_affinity =3D plic_set_affinity, #endif
> > +
> >  	priv->regs =3D of_iomap(node, 0);
> >  	if (WARN_ON(!priv->regs)) {
> >  		error =3D -EIO;
> > @@ -383,9 +385,9 @@ static int __init plic_init(struct device_node
> > *node,
> >  	}
> >
> >  	pr_info("interrupt-controller at 0x%llx "
> > -		"(interrupts=3D%d, contexts=3D%d, handlers=3D%d)\n",
> > +		"(interrupts=3D%d, contexts=3D%d, handlers=3D%d) (%s)\n",
> >  		(unsigned long long)iores.start, nr_irqs,
> > -		nr_contexts, nr_handlers);
> > +		nr_contexts, nr_handlers, priv->chip.name);
> >  	set_handle_irq(plic_handle_irq);
> >  	return 0;
>=20
> I really dislike this patch for multiple reasons:
>=20
> - Allocating a new struc irq_chip just for a string seems over the top,
>    specially as all the *useful* stuff stays the same.
>=20
> - Even if I hate it, /proc is API. I'm sure something, somewhere is
>    parsing this. Changing the string is likely to confuse it.

AFAIK, we don't have scripts in RISC-V world that depend on
/proc/interrupts content. May be in future such scripts will show up.

For system with multiple PLICs, we are seeing same "SiFive PLIC"
string for all PLIC interrupts in "cat /proc/interrupts". I am trying to
assign different string based on PLIC instance. This is similar to
what GICv2 driver is doing (e.g. GIC-0, GIC-1, ... in /proc/interrupts).

Is there a better way to do this ?

>=20
> - If you do this for debug purposes, then CONFIG_GENERIC_IRQ_DEBUGFS
>    is the right way to look up the information.
>=20
> - If, for reasons that are beyond me, you actually *need* this, then
>    implementing irq_print_chip in your irq_chip structure is the way
>    to go.
>=20
> But frankly, I'd rather you drop this altogether.

I just want to differentiate which interrupt belongs to which PLIC
Instance in /proc/interrupts. I can take a different approach if you
suggest.

Regards,
Anup

