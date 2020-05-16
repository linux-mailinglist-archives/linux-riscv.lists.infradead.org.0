Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1DA1D60F9
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 14:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SHY8LEUUflyYSouEudAanc+XPkJYqIUHjtMVceDzqsw=; b=E5uOwEKpTOPW/KY/XX4rxrNMo
	Ik0FrXOT8FlRRRpPYPe7LE/jdtw5PKqRr8k8xeNupgSvwBLOP8dVeQyBAJ5g9INX+K+c7mZpNVW8v
	9oVaiizdYvmATEzZuFsB5HlJjEIIXz5XaYh+gA6R7iwFNJDVTor4qLlKS5hGco+M6QvzwQBfBABdV
	HxuYhjL+c2EvGcIkj+GPq/wNStfxdKlnRPgc/piDQRALcHDWCGvi7gNpolZJEZ7uvmCdiyDthV1ew
	Yh75SEFAXCjzBCOERLeVLd4r13+WNMl+8cLJ4UrvfvxShTCu2SlAYUVjgw1gh5YCgoGtoXkyQ6ndP
	q6cqI86Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZwIg-0006kA-Fh; Sat, 16 May 2020 12:52:22 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZwIc-0006je-2X
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 12:52:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589633538; x=1621169538;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cPTsMF2JDsUO2fcKB1HTbCNyOsdDKM3gy3R51SU7/Oc=;
 b=Wi3xSwjIMC3GAk6CVGBUfZoKoV0Rk9LgdNfaZN+nBUglpii1oK5obQxp
 T99tr9HQPjawoM9LRoy69PLP9J1rpL2fKN2k7I3jZOZiBQkNqHTzA10V9
 kmMtUzZHmAGUYsLiBu+4u0DxhAciGDPNetHARDxb7vfBTJj99RomKxGCf
 L2Iqco8Je0YiaIDvw5B+MrRgffdp9E/zaIM34RcvslmV4dmPz2PiABwC6
 tusICPJ8Q2eDgB85qp9OZjZOfsQTxOZcLaFFFjYWaysw8np/LKuhuPjJy
 wp4lDZ7gnMOYFepodvvSgwi+TDMSKAbttFz9Kl2fMcWE0HWQZ8Ii2QMat g==;
IronPort-SDR: +3gwxDXWY/VUzicws+sfdqLvXNiCjfutA88PyCc/2kURXEdb/OMz+BfAr3jzp1UDYW6o+Zd3z/
 epd+ASBVt2NuA8JSaIC9CIRdhR/imW85gDqdBOnPtCO/cR3CoKnc6dGlaOerHwZAE+KUbIjp4G
 2ZCxphs3JXy/Y+QqdmSuMc7FaDxK/Ke6PPQr03hRz6f7zzMlANSXvMslLKTb0c3FwhXCnjxXxP
 v/s8bqQHPxdKxyIomjS8DK2fICKom6vrQ+4toz7O/kVK4X/sepmmSakID82/dCXY1sxbrw6lJP
 Q74=
X-IronPort-AV: E=Sophos;i="5.73,398,1583164800"; d="scan'208";a="246819766"
Received: from mail-mw2nam12lp2043.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.43])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2020 20:52:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UPBih7DKuHbOpTUA+u01vTim+sFdplyUfR97noWBpZU13ip6+pbIFfg9C+XCvuLL9Gdcf29lH1+pZ9ghfjuqaQFVn3m1pU2exhQlxtt8Suob1sHG4X66AesVIho4Y39ilu6t6bfWjQNZh9X0WsyJkaFVZY8v2mJX2T3xBqrA34UaXL2O0mVQNrbJY9azzqv5vPIYzM7yUv8jIj1YPVc9AcDm303g+eUEYoE0hWjzqDyi834J260LUJSozEac7D9ML+8oEzw/9tDpDzLXY3naU//ZeIgqGim6Gw/cjPljTkAPQhaUN7HbJiQggvDJId9jtcveUnKiqFO/EI9udhNKvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SHY8LEUUflyYSouEudAanc+XPkJYqIUHjtMVceDzqsw=;
 b=fnH8w4+aAk74ziDDrxVWVbMJEpqPZ5w8hn1GbXNiYSN6+tdXcNCS1iK1Ekte2Ui3AcfqHYWe7fyi4WKPaxN1F45UqfAhQQdEvxL5m55pbupvEYvOxAEbhoayGlDyDsjuzwUXAVZ7q9LzFDkEH2oWQT72vvPI2FM3Ln4gn8t9UqTENxhJj6ouj+nJqQyb+mr9/X2Ces0WIKQ9rrP4eOLBuIxp4isfzaODOnKSMzrvfnzPl+RYc22kM2YY061+dEhVG6ytvtEKBiVjDBkYUFJljFDjPhh1tpeLIVROYA8jt07rJH7cRkgQTWqAJVmik0cIiTNQpFKlKf9YHxUBfd1Z2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SHY8LEUUflyYSouEudAanc+XPkJYqIUHjtMVceDzqsw=;
 b=IVAMG1hqyJ4WvYCdsF6BYQ2UwKh1RqoklKHv89dYTKeKzMTPNu+dYKjO7EimXTJakk7pU9dueLmI/50E40mKwBGV0YGOamobdrppBPZi9uWaElY/ptli02jiCRKOk9w+CzneVj50a7G15ipV7HMuLaaFaGHp3lB1rNMTJliMljQ=
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB7051.namprd04.prod.outlook.com (2603:10b6:5:244::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Sat, 16 May
 2020 12:52:14 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2979.033; Sat, 16 May 2020
 12:52:14 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after current
 handler is present
Thread-Topic: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after current
 handler is present
Thread-Index: AQHWK0zCQd2Rb1y8/UKUOdOD8b1Y6qiqn7gAgAAG1IA=
Date: Sat, 16 May 2020 12:52:14 +0000
Message-ID: <DM6PR04MB62012DBAF3FAA7A264094C418DBA0@DM6PR04MB6201.namprd04.prod.outlook.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
 <20200516063901.18365-2-anup.patel@wdc.com>
 <d4e0dcceecad49e71ffe785f8950981d@kernel.org>
In-Reply-To: <d4e0dcceecad49e71ffe785f8950981d@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [106.51.108.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 996daac4-04b5-4fa6-f875-08d7f997f564
x-ms-traffictypediagnostic: DM6PR04MB7051:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR04MB7051717CB4F1C68C633549CE8DBA0@DM6PR04MB7051.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 040513D301
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fd3QKRnLju6h4nhePAOhSGoAeu4LuU+KHhsTRpJ+dk8q2OBUXiE4jx9lHZeVpb5af6MtFCDxEKi8QyGmvCmOT2S1F9ZE9yLJmgD3Ft2PaeqEAcUaqbPETrSobnsjKXuiCDts37t3ad6A4gm5zNbNitkekLg3rkjhLXpixi7M2HOZzW6giyJunRnDkVXnYdX6eDpAru4ZwaFqZFqn6Ip1ZGMZrAcYq4YcrpBfNnpVrr6N5/shdYZr5y0+lgbnTmey2kr0rvrgh3xEuPp/TTa0tFw287ObniE2DqrFrDS0U9FPKKE673uunA3IOvbZuhWPeMgJ+zh0W42TtbwwaBINZb/8DkH3h+XZy2RUPe0CN4YmWeSSxWJgMgT8dOTF8VQVncPUuAkA6W8fGEU5elqzL6oWclpgUHTCqG6Ijy2QjvbwXEZtQ/6gmLUahkqIvVi4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(52536014)(8936002)(5660300002)(2906002)(33656002)(7696005)(54906003)(186003)(55236004)(86362001)(6506007)(26005)(316002)(53546011)(478600001)(66556008)(66446008)(9686003)(4326008)(66946007)(8676002)(66476007)(64756008)(76116006)(71200400001)(55016002)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: xw36R6XrK9loL1YXrmV/ZZMlH9HzQxYHZmFtjQx7WqLq82SohyFeixYG1FCfFD0INiiIRAuKAKC9WFdn3TSQY/SjbWZuQNpTuoaJJsVAN8gQWTU/4/KJXI4/TdEwpW0LZ5SEhnc+MkBtxzGPhFFBh0k7/buThxBAwnjspjPI+HpRCnQi88DEJrzC0guqAuGbVMSjUAuDp9Bc7aHVAd5GD4YF3h+68ON/l9XH1mR2UdwVCWkMJL9/ievziCKCqUasaSHYTMcem46p01YIjSwyu3K6aYcVUk63vS7+kSLtjV1zEW8KEjLm0mntWCl2XtfMsQxNWEaTeHwKmcqLUZr78wnv2R2iQ6fyFywhcR6O2fkVW49oFE1S8qgcnnm4GP5z2K04EAW9ZP7CYhKNps/SukxRXJOdqPCzgkGMHkHYbufWAHD8JxzzG0sjwHSzcpAGYimaKu4uvBXYTTYA0aP9RiukakIPMqBetXnGzfWrJEmYJqnDEbH3OE127MyDHgf4
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 996daac4-04b5-4fa6-f875-08d7f997f564
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2020 12:52:14.8147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h9xWVtHzYt+whvSpfen/fPH8GJLcdeWs3wYeLTotRQCvBu0OwPCazY6BbSdF7UMWg0RNDDu9lJepdJIy9x5a/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB7051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_055218_153985_64ED49A5 
X-CRM114-Status: GOOD (  25.69  )
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
> Sent: 16 May 2020 17:42
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
> Hi Anup,
>=20
> On 2020-05-16 07:38, Anup Patel wrote:
> > For multiple PLIC instances, the plic_init() is called once for each
> > PLIC instance. Due to this we have two issues:
> > 1. cpuhp_setup_state() is called multiple times 2. plic_starting_cpu()
> > can crash for boot CPU if cpuhp_setup_state()
> >    is called before boot CPU PLIC handler is available.
> >
> > This patch fixes both above issues.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 14 ++++++++++++--
> >  1 file changed, 12 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c
> > b/drivers/irqchip/irq-sifive-plic.c
> > index 822e074c0600..7dc23edb3267 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -76,6 +76,7 @@ struct plic_handler {
> >  	void __iomem		*enable_base;
> >  	struct plic_priv	*priv;
> >  };
> > +static bool plic_cpuhp_setup_done;
> >  static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
> >
> >  static inline void plic_toggle(struct plic_handler *handler, @@
> > -282,6 +283,7 @@ static int __init plic_init(struct device_node *node,
> >  	int error =3D 0, nr_contexts, nr_handlers =3D 0, i;
> >  	u32 nr_irqs;
> >  	struct plic_priv *priv;
> > +	struct plic_handler *handler;
> >
> >  	priv =3D kzalloc(sizeof(*priv), GFP_KERNEL);
> >  	if (!priv)
> > @@ -310,7 +312,6 @@ static int __init plic_init(struct device_node
> > *node,
> >
> >  	for (i =3D 0; i < nr_contexts; i++) {
> >  		struct of_phandle_args parent;
> > -		struct plic_handler *handler;
> >  		irq_hw_number_t hwirq;
> >  		int cpu, hartid;
> >
> > @@ -364,9 +365,18 @@ static int __init plic_init(struct device_node
> > *node,
> >  		nr_handlers++;
> >  	}
> >
> > -	cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> > +	/*
> > +	 * We can have multiple PLIC instances so setup cpuhp state only
> > +	 * when context handler for current/boot CPU is present.
> > +	 */
> > +	handler =3D this_cpu_ptr(&plic_handlers);
> > +	if (handler->present && !plic_cpuhp_setup_done) {
>=20
> If there is no context handler for the boot CPU, the system is doomed, ri=
ght? It
> isn't able to get any interrupt, and you don't register the hotplug notif=
ier that
> could allow secondary CPUs to boot.
>=20
> So what is the point? It feels like you should just give up here.
>=20
> Also, the boot CPU is always CPU 0. So checking that you only register th=
e
> hotplug notifier from CPU 0 should be enough.

The boot CPU is not fixed in RISC-V, the logical id of the boot CPU will al=
ways
be zero but physical id (or HART id) can be something totally different.

On RISC-V NUMA system, we will have a separate PLIC in each NUMA node.

Let's say we have a system with 2 NUMA nodes, each NUMA node having
4 CPUs (or 4 HARTs).  In this case, the DTB passed to Linux will have two P=
LIC
DT nodes where each PLIC device targets only 4 CPUs (or 4 HARTs). The
plic_init() functions will setup handlers for only 4 CPUs (or 4 HARTs). In =
other
words, plic_init() for "PLIC0" will setup handler for HART id 0 to 3 and
plic_init() for "PLIC1" will setup handler for HART id 4 to 7. Now, any CPU
can be boot CPU so it is possible that CPU with HART id 4 is boot CPU and
when plic_init() is first called for "PLIC0" the handler for HART id 4 is n=
ot
setup because it will be setup later when plic_init() is called for "PLIC1"=
.
This cause plic_starting_cpu() to crash when plic_init() is called for "PLI=
C0".

I hope above example helps understanding the issue.

I encounter this issue randomly when booting Linux on QEMU RISC-V
with multiple NUMA nodes.

Regards,
Anup

>=20
> > +		cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> >  				  "irqchip/sifive/plic:starting",
> >  				  plic_starting_cpu, plic_dying_cpu);
> > +		plic_cpuhp_setup_done =3D true;
> > +	}
> > +
> >  	pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
> >  		nr_irqs, nr_handlers, nr_contexts);
> >  	set_handle_irq(plic_handle_irq);
>=20
> Thanks,
>=20
>          M.
> --
> Jazz is not dead. It just smells funny...

