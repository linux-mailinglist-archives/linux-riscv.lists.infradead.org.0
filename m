Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602501D62B0
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 18:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rohKtmUYb0O9UsTFnNYvKvYk6o+mUnzBcdGRik1X364=; b=cEpLxgHaKK/CxQWkAtIMG5CZ1
	wVwX2znIMMjL1kqLMHpdgcbOiVHzCa6b8RBXRyAWC+PjwM7YVgrKgO6XDPRdXQtNzgEzdRfRB7v9T
	B9+ru7OKDyO4SVSAWntAjP3G8SbuRsrtTt52UFHj5qtcyxx/jhZ/ESaKYDuWwFqtHPVkelfMrQAKs
	t1ZLEkUGEX89DB10QdzXqeAAmT/+qDPlC0OF7/Jka4KsAuXWV5clMiIH+1xHBMDRouXkbXYBe3oKV
	gJAMdUfWbhwabAamz2MnEppcY56XL2sJLKOZgH4rkGNuRG7n4b5Td+cbQu2/Re82LYxJaBYVn70Qt
	vTZmiDWtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZzpV-000535-Ux; Sat, 16 May 2020 16:38:29 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZzpO-00051B-BL
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 16:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589647102; x=1621183102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZZ8X7QrZPcXYY2w3++R8VTSAEOXxCfWxIWGI8OBYeGM=;
 b=A+r1wQQruLyEJ40w66+zPKoEkhuGzBoAo0VwZGAlTvHM06XUgNblB4hz
 wEdUpZI2vvf3iQzq9NAX6Kme2zxutS8ExAe6lP2vJGPuDUuwCr71HcwTk
 VEuFl68HkmxRPVD3Jf3SyNOwPwdgycyy0guA7RUUFUXkRAcq2ItMSNJ4w
 8gjwg5uM2exKVTmq+Hhcu84pa6LcNkdhRP097TSZSFajX+6veefW05Zjh
 Tdvbs9XjwFMSLZaZdNJbprvcggZYLm7pNAEnJwam7/ao6Wls3Vz/mWHfo
 uR3Oj1aXWzQI6q/uGIRzKU3Bd/KeaJiXYeIJ8rUc2L4UB1eCt5hITLpqK A==;
IronPort-SDR: 6Er12IrVrZH+hhePeUMlMCs9UKrdfP4AldVmOAIzn1DpQtKEWul9qlISYRSKHRgVzG5J19ew9U
 mvSDYQEUAssRGjZXYF4dSIyRzHwR7yM4N8jHCbQO8konnb+4p90ZlHpQN8rq99vU/RYdNZ2wam
 Vd+6DQUKz7IzZcjFeaR5MD/SJKyozJrVAdyTNYd2UE7OB4TYF4EgrfD92EMLycDFw0w/mx/1wx
 3rtz1Q3RHduktfMwcghsfQmcg9kfqLNrLTbrhJ2JSce79GJ/1kgCa9/5yRJaJpy1+PrfgimeWe
 NCo=
X-IronPort-AV: E=Sophos;i="5.73,398,1583164800"; d="scan'208";a="246827870"
Received: from mail-dm6nam12lp2171.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.171])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2020 00:38:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ihKSDLXObYl3VFhuKOOFLtW/eEZ8EYrq67lI/pWwIMuSzyeMGcRyMABS0dRdn+UpyrEFAMpt2Gm/4Gz2ULpty57vD/kuv3Izrl2Q3IqNsFwDBqljDNVKFKBWBu+nrgrIR2MokJC18e9xQsTZ5eCqlfyQbA5TkExzNEctRriV1xm5uynwvoZ+/nCIoV2XztYBxM8XZ/UaK5diQcOYZUZxg7ZbMG67kpIUww6GiiOXX5LpXvOVySqUS7hKWkZHREOe8xeW2N52d7ScdYKvc53/fC5Ivgva3Oaqz2gihDYT1YzOjCcg7agCuORYEuGnkmY+16Rh/gk92KjuNsBTB+/hgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rohKtmUYb0O9UsTFnNYvKvYk6o+mUnzBcdGRik1X364=;
 b=Skrw/+0RFC++yhhR9NjrDW4w7CZhrv8w/Z9iJh478BpQbiQvLSTEIETaGM7nKvnEIel4sRgfdPixOLDFabOs5KtRjKt+HYd4ID9WJAilnhxmUV4TZc5uGqmUBdE/ketmZhzTrmmpM0xx0v4xvNi/1CIdSjMR3FFmn9Wqeygn+w6kimeogpC2jo205fwacuxHiIvkpaZ8NCe+J/rqpAoIZsL70mmytnoBKLprQAM3k6W0tHXQB0TGIFboNFIfvH3BT8i2xiZpVunSqTcRFlYzie0LwFqGfGxm2QAp6uZlV9Q1nU2brWbwwN4h2Q59+clFnWe9WrDKK/7xlqsf3+nCgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rohKtmUYb0O9UsTFnNYvKvYk6o+mUnzBcdGRik1X364=;
 b=sTMrcPt5EfRoqbHWTAsgocbWAT8uzd/TAf4zj1xMvTZd0E2XT/vUhpA/NBUzU8jbWmSZ8dtH1o1fpjc9PvsrHiMAvWSWjfYK+L6SSmkVS3Nz5rcsBZfauJkKTrU4Aqd/8pqh6lhZyb3E8A0MuEImndOK83e1WaLSjNGlBu45A/g=
Received: from MN2PR04MB6207.namprd04.prod.outlook.com (2603:10b6:208:de::32)
 by MN2PR04MB5726.namprd04.prod.outlook.com (2603:10b6:208:3c::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Sat, 16 May
 2020 16:38:16 +0000
Received: from MN2PR04MB6207.namprd04.prod.outlook.com
 ([fe80::e0ef:7fce:ff0d:f580]) by MN2PR04MB6207.namprd04.prod.outlook.com
 ([fe80::e0ef:7fce:ff0d:f580%7]) with mapi id 15.20.3000.022; Sat, 16 May 2020
 16:38:16 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for muiltiple
 PLIC instances
Thread-Topic: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for muiltiple
 PLIC instances
Thread-Index: AQHWK0zIG2SJo4BaZ0+zBbhx696gsKiqpKoAgAAHeACAAAWnAIAANrhQ
Date: Sat, 16 May 2020 16:38:16 +0000
Message-ID: <MN2PR04MB62078C2854FE33CE81186FA88DBA0@MN2PR04MB6207.namprd04.prod.outlook.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
 <20200516063901.18365-4-anup.patel@wdc.com>
 <577f9a16b3dddfadb7c5487ffaef31d8@kernel.org>
 <DM6PR04MB6201FD64C78C51A94C4776558DBA0@DM6PR04MB6201.namprd04.prod.outlook.com>
 <6fbfca8f084f6cd0dc6818c4bbf58843@kernel.org>
In-Reply-To: <6fbfca8f084f6cd0dc6818c4bbf58843@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [106.51.108.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: af47ec6f-3abc-4d0d-3099-08d7f9b788bc
x-ms-traffictypediagnostic: MN2PR04MB5726:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5726D74247DDF0471AED4F468DBA0@MN2PR04MB5726.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 040513D301
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p3o3klDJUYqbMAzDphU/3wiF+6sLTs3HY/GbAk/FDcx4AIybmsNrFcH/gvlBzc5VxN33+lMJ4Lwuw2m2+dvXJ94SR3mlyz1UXwdU+nrG5w1Ujsd9VBEhkQ6bdaIY5G5FVWomwFwHJVnlC2SlG4Qygg3e7H8QUwXw+8DkdFGahHIE2hr+kmEUv3cT+j2AUiyfwyQSdmdTTNpJBMbKmwmJx3CTUj0PSAlp7Ds+N0Qgl5LgMs76qISpZdKRMmmePeNb5P+cLR9uOJeeqqVM9hEy4iPad6Ixa1KC3ds3Aqk+F8S/e+zi8pU4bOTKQZXai70Z6kgxAh62kmHiVqmKtTfQul9KccsIHMma0vU6QWZKgQAAlyJSHa1goDDl6UJiV0Gghp1J4DmgemWtwNweYUn/hBDwdoWaLrTeSpZw2jLd7q3B0803zck7f1YleL1YjvPw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR04MB6207.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(346002)(376002)(396003)(39860400002)(8676002)(66476007)(64756008)(66946007)(66556008)(2906002)(66446008)(55016002)(9686003)(478600001)(55236004)(76116006)(71200400001)(33656002)(26005)(53546011)(86362001)(316002)(52536014)(6506007)(186003)(4326008)(8936002)(6916009)(54906003)(7696005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ubHNo1qD/1LBs4NyWFf4V0+CRcgOnv9WNQaehHnGPIicdJZbVLJWqR7ILzGc5yOxFkTC5ew/2x9emlyHs4vrjyje8oK1WrFn81abDxdFd6i6LHP6zUXBUhebPHAo3zOSXim5CAY2IrA51xa4ZoZkKpjx2Ut5sXXYDMroG1or4HPrVWMe3CKY1+CSq8IIBYd4xn6yZaN9p8vH60tvrBQ3VpeipMFXHJx8Cm+eAfFCpKVa01EGl1Tq+c0RuWQ5LKpGCgTp8IlqEknXozdaF8vWseARYs7CSpA9Q+WgggxliOail9BOlXh2sNgYaqtYE4KssxvgTaejzIlms6JIadlTRpDz7+dS8Ttl3qBQrdd3K6QU9XDG1fvvV/rs2L8MFCpmcmmYP9fCJk4BC9boxzS8IkNK9cieckmqdKls0NFmb+2l8H4hsPudH4BxgESNeVtad+AHXmbwC3evatbsoC+MR1kzVckucp+e5Wt5tZ2GL2+lnqIYE1sq0FBFHIToKzak
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af47ec6f-3abc-4d0d-3099-08d7f9b788bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2020 16:38:16.3800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xt9LdQCodZzHEpK2ruJkbZN4tJH55cMX862usknbqb19rDKJZ+pG5NJkHtV41N3LMAi5P0Qd5cOOwp+GqRO9Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_093822_409540_65557A69 
X-CRM114-Status: GOOD (  29.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
> Sent: 16 May 2020 18:46
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
> On 2020-05-16 14:01, Anup Patel wrote:
> >> -----Original Message-----
> >> From: Marc Zyngier <maz@kernel.org>
> >> Sent: 16 May 2020 17:59
> >> To: Anup Patel <Anup.Patel@wdc.com>
> >> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> >> <paul.walmsley@sifive.com>; Thomas Gleixner <tglx@linutronix.de>;
> >> Jason Cooper <jason@lakedaemon.net>; Atish Patra
> >> <Atish.Patra@wdc.com>; Alistair Francis <Alistair.Francis@wdc.com>;
> >> Anup Patel <anup@brainfault.org>;
> >> linux-
> >> riscv@lists.infradead.org; linux-kernel@vger.kernel.org
> >> Subject: Re: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for
> >> muiltiple PLIC instances
> >>
> >> On 2020-05-16 07:39, Anup Patel wrote:
> >> > To distinguish interrupts from multiple PLIC instances, we use a
> >> > per-PLIC irq_chip instance with a different name.
> >> >
> >> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> >> > ---
> >> >  drivers/irqchip/irq-sifive-plic.c | 28
> >> > +++++++++++++++-------------
> >> >  1 file changed, 15 insertions(+), 13 deletions(-)
> >> >
> >> > diff --git a/drivers/irqchip/irq-sifive-plic.c
> >> > b/drivers/irqchip/irq-sifive-plic.c
> >> > index 2d3db927a551..e42fc082ad18 100644
> >> > --- a/drivers/irqchip/irq-sifive-plic.c
> >> > +++ b/drivers/irqchip/irq-sifive-plic.c
> >> > @@ -60,6 +60,7 @@
> >> >  #define	PLIC_ENABLE_THRESHOLD		0
> >> >
> >> >  struct plic_priv {
> >> > +	struct irq_chip chip;
> >> >  	struct cpumask lmask;
> >> >  	struct irq_domain *irqdomain;
> >> >  	void __iomem *regs;
> >> > @@ -76,6 +77,7 @@ struct plic_handler {
> >> >  	void __iomem		*enable_base;
> >> >  	struct plic_priv	*priv;
> >> >  };
> >> > +static unsigned int plic_count;
> >> >  static bool plic_cpuhp_setup_done;  static DEFINE_PER_CPU(struct
> >> > plic_handler, plic_handlers);
> >> >
> >> > @@ -164,20 +166,12 @@ static void plic_irq_eoi(struct irq_data *d)
> >> >  	writel(d->hwirq, handler->hart_base + CONTEXT_CLAIM);  }
> >> >
> >> > -static struct irq_chip plic_chip =3D {
> >> > -	.name		=3D "SiFive PLIC",
> >> > -	.irq_mask	=3D plic_irq_mask,
> >> > -	.irq_unmask	=3D plic_irq_unmask,
> >> > -	.irq_eoi	=3D plic_irq_eoi,
> >> > -#ifdef CONFIG_SMP
> >> > -	.irq_set_affinity =3D plic_set_affinity,
> >> > -#endif
> >> > -};
> >> > -
> >> >  static int plic_irqdomain_map(struct irq_domain *d, unsigned int ir=
q,
> >> >  			      irq_hw_number_t hwirq)
> >> >  {
> >> > -	irq_domain_set_info(d, irq, hwirq, &plic_chip, d->host_data,
> >> > +	struct plic_priv *priv =3D d->host_data;
> >> > +
> >> > +	irq_domain_set_info(d, irq, hwirq, &priv->chip, d->host_data,
> >> >  			    handle_fasteoi_irq, NULL, NULL);
> >> >  	irq_set_noprobe(irq);
> >> >  	return 0;
> >> > @@ -294,6 +288,14 @@ static int __init plic_init(struct device_node
> >> > *node,
> >> >  	if (!priv)
> >> >  		return -ENOMEM;
> >> >
> >> > +	priv->chip.name =3D kasprintf(GFP_KERNEL, "PLIC%d", plic_count++);
> >> > +	priv->chip.irq_mask =3D plic_irq_mask,
> >> > +	priv->chip.irq_unmask =3D plic_irq_unmask,
> >> > +	priv->chip.irq_eoi =3D plic_irq_eoi, #ifdef CONFIG_SMP
> >> > +	priv->chip.irq_set_affinity =3D plic_set_affinity, #endif
> >> > +
> >> >  	priv->regs =3D of_iomap(node, 0);
> >> >  	if (WARN_ON(!priv->regs)) {
> >> >  		error =3D -EIO;
> >> > @@ -383,9 +385,9 @@ static int __init plic_init(struct device_node
> >> > *node,
> >> >  	}
> >> >
> >> >  	pr_info("interrupt-controller at 0x%llx "
> >> > -		"(interrupts=3D%d, contexts=3D%d, handlers=3D%d)\n",
> >> > +		"(interrupts=3D%d, contexts=3D%d, handlers=3D%d) (%s)\n",
> >> >  		(unsigned long long)iores.start, nr_irqs,
> >> > -		nr_contexts, nr_handlers);
> >> > +		nr_contexts, nr_handlers, priv->chip.name);
> >> >  	set_handle_irq(plic_handle_irq);
> >> >  	return 0;
> >>
> >> I really dislike this patch for multiple reasons:
> >>
> >> - Allocating a new struc irq_chip just for a string seems over the
> >> top,
> >>    specially as all the *useful* stuff stays the same.
> >>
> >> - Even if I hate it, /proc is API. I'm sure something, somewhere is
> >>    parsing this. Changing the string is likely to confuse it.
> >
> > AFAIK, we don't have scripts in RISC-V world that depend on
> > /proc/interrupts content. May be in future such scripts will show up.
>=20
> How do you know that? Do you keep an exhaustive repository of all the pos=
sible
> parsers of /proc/cpuinfo (rhetorical question)?
>=20
> > For system with multiple PLICs, we are seeing same "SiFive PLIC"
> > string for all PLIC interrupts in "cat /proc/interrupts". I am trying
> > to assign different string based on PLIC instance. This is similar to
> > what GICv2 driver is doing (e.g. GIC-0, GIC-1, ... in
> > /proc/interrupts).
>=20
> Which was a *very* bad idea the first place, and I wish I could get rid o=
f it. I
> cannot, for the reason outlined above (it's ABI).
> Furthermore, in this case, the GICs are different (they are cascaded).
> In your case, they have the same position in the interrupt hierarchy.
>=20
> > Is there a better way to do this ?
> >
> >>
> >> - If you do this for debug purposes, then CONFIG_GENERIC_IRQ_DEBUGFS
> >>    is the right way to look up the information.
> >>
> >> - If, for reasons that are beyond me, you actually *need* this, then
> >>    implementing irq_print_chip in your irq_chip structure is the way
> >>    to go.
> >>
> >> But frankly, I'd rather you drop this altogether.
> >
> > I just want to differentiate which interrupt belongs to which PLIC
> > Instance in /proc/interrupts. I can take a different approach if you
> > suggest.
>=20
> I *have* given you a way to implement that in a better way. But again, I'=
d
> rather you *don't* do it for the reason I have outlined above.

I explored kernel/irq/proc.c and we can achieve what this patch does
by implementing irq_print_chip() callback of "struct irq_chip" so we
certainly don't need separate "struct irq_chip" for each PLIC instance.

I will implement irq_print_chip() callback in v2 series.

Regards,
Anup

