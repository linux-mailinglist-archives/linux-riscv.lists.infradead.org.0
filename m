Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D988D1D667F
	for <lists+linux-riscv@lfdr.de>; Sun, 17 May 2020 10:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mh1hbiMDtLGBOvgrKxYTjZ6tXWRmPvPKi+0/3uCMyOc=; b=YO3m3V0Klt8oKrpgvRdTFf5oq
	wTYLTe8HeiO3MEScu8twzVr2OMwLkNsA5W8thHHMl599rQf7X/KEL4+b5aQHIeH6z4kpbOEQpVhl/
	eOWAT2zXYQjYmo1qXqNT2gjnbULegIH3xbBc0VhS5kHR5qlsDmZejFJzgm6LarpZ4bJi9ynwRG+NH
	OOUP9l/5Zxhy1UwiS85QmHC5Cgg5U4z0Smp29htSkxeRFWlHDf0mu1Vip+g6YRUttvh+Qj/qSvDfW
	6ccNcqLuwVpkTQ9mqC90ZQvUpr8qkx22nw/UaZnAEoHSj8z1wg1C/sav2eEljE4JIl/QTADH9Cbfk
	Fi6nBq+/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaEGF-0001hx-8H; Sun, 17 May 2020 08:03:03 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaEGA-0001gZ-Ex
 for linux-riscv@lists.infradead.org; Sun, 17 May 2020 08:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589702593; x=1621238593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OdgFXgmM0YveC/7etuGo1hnVVN2s1ZFz333T9wssTEc=;
 b=flE7Cp9k0foczwP9r+3W//sRoroDPp5Wd56Zh4A+IKlaiLPwAN99kK4+
 V4T4kBwusA6oybOXYcE6A4Clz+VoPiNJ9L9tZCfYmJH6MBui5WVvIjkN4
 I4UqnnTVscYUC4Jz1HWYONa2I7ZRpRDHTznZY8yE8Esr5x2qdVo2Mjf6j
 k6Y/+QlXI/FCxASNfYODX9/9BFZS/bW3rvqty3w9ZYxpjXYFa0ORGnNE3
 K2HdrSjNYMESMy4sdoNAlMpSlzxnd67C0nhZpN53A4mGpO3aNxXt0OOoN
 8Aj+cmkgamynyVvXOPdw9yfZSSZNtZpk/kQ9fwTT4TJXcEYRNHTrUDIwU w==;
IronPort-SDR: e+Xn8ap2ywkvRx4HevN6x6kNVYNXElyZ1+ockUeOwyn0u7TNWFPSs4QSpCfzrCP//Ht3BIXzU+
 2oVk4a9GZj4JmUQGeW2bwquUgW7dNn86BKc8uOWCf0R65xUx9R7WsjvSuWfTG2CjD4XvRVZgbd
 qgTUjxXjPXmLe3h694oD5OvWi5qRozDoDYrPwVXMdtyZ+yzKuf3CnrxcrSSEwVJToR8yC9IQIV
 /X/oxDQcxlxnxEnyvT0BZTrVEcgQdKMCbUa+c1ek+8vzRtyz22HVUWFdfgBIRTC3By6lLMb3o1
 +FQ=
X-IronPort-AV: E=Sophos;i="5.73,402,1583164800"; d="scan'208";a="240604154"
Received: from mail-mw2nam10lp2101.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.101])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2020 16:02:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m8JNkwMEeUiLS2z2oA37FGWLe/xe+lyXAKoGczQTctpvBw74AHl3aqhqT/IO5LILKerBnL8p+Ni3ebhkDrkvowjfv+8OFM/tAUr9rEG8vlGK2EgWNdkYhNuW+tQrjlT9RxgMI78NHSItih6XIJrITeLI9XppnOrYUfS7fkMDYN1AThiB0EUbrHz7GBxSRzK7gbN8pd752R/tcNbwzYZedHwxsIkZopR0i9rTwt1Pm6f8PsfhWnZ5jZBEQey9gbSZUfQJDJrl7TVjBIiabFXC7Y7rorTj7NhT/T0qxZq+68fQeIj8khgZ9J875qEnGq8J2SpnJ0uyXCdkz5Aj/+Fg8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mh1hbiMDtLGBOvgrKxYTjZ6tXWRmPvPKi+0/3uCMyOc=;
 b=K1ni6Xi5jVnHBYzPAptH2rDRQ5+gpBB4mk9hVLNjecVEjBNGDT98Z8lbhBbeWNBkW5YcNLEIRZrFVi4htZlOK5i/Wx4SseTQInMUbdxd7QOvJsRcLtieLxX6rIz+HTJBht8n+KJo6NSNR0v99rzOIa8RhH2pMCXiVyyX9GOsSwmQ7qK+MwI1EAhFbntPoCSAIV5icJ2PsYFpAdhTA6AYHGaWICVBlQxRrilnuapM4IAK8wcJmEKKAfookSQ0KXGSRgow+XpZ/IU8hho2e31N3Pec0W3zChGy6PMWBnHnWfi6daxW2hhBBHSfduivxZ/tDqB5wml2r7HnnBXxTI3EYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mh1hbiMDtLGBOvgrKxYTjZ6tXWRmPvPKi+0/3uCMyOc=;
 b=ODl0Qy0U4gCkoO/qlz5TFWi9Vz2+mFL7fEW9aMarLvc6jMWLm5Yt13O0E8fjBEA1GVVcqv0p9OcEVpL7IVxKJ9Xatx27SG8UFeYbpg3sBrGez80FYIQBKr5webNl+C3ulUL3CR1uJABTDYZN+gEA+z4yTgp4TNfaVuUpYgYxXS0=
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4985.namprd04.prod.outlook.com (2603:10b6:5:fe::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Sun, 17 May
 2020 08:02:44 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.022; Sun, 17 May 2020
 08:02:44 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Anup Patel <Anup.Patel@wdc.com>, Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after current
 handler is present
Thread-Topic: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after current
 handler is present
Thread-Index: AQHWK0zCQd2Rb1y8/UKUOdOD8b1Y6qiqn7gAgAAG1ICAAA9DAIAALzWQgAEDL9A=
Date: Sun, 17 May 2020 08:02:44 +0000
Message-ID: <DM6PR04MB62010371C9AD801B775F029C8DBB0@DM6PR04MB6201.namprd04.prod.outlook.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
 <20200516063901.18365-2-anup.patel@wdc.com>
 <d4e0dcceecad49e71ffe785f8950981d@kernel.org>
 <DM6PR04MB62012DBAF3FAA7A264094C418DBA0@DM6PR04MB6201.namprd04.prod.outlook.com>
 <0be23fcd363998ddd527eceb308f592c@kernel.org>
 <MN2PR04MB6207F08A89A9116D83BDAA2F8DBA0@MN2PR04MB6207.namprd04.prod.outlook.com>
In-Reply-To: <MN2PR04MB6207F08A89A9116D83BDAA2F8DBA0@MN2PR04MB6207.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: wdc.com; dkim=none (message not signed)
 header.d=none;wdc.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [49.207.61.140]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 30b997b2-44fb-4ad0-daad-08d7fa38ae72
x-ms-traffictypediagnostic: DM6PR04MB4985:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR04MB49858DC42D21C21E734ADF188DBB0@DM6PR04MB4985.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 040655413E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KDM9uCqseWpPHiPCia7ZVMELNWyKCZZoOnyGPjhfVk94cPmmQYzC6Cxw0nr5ypbDV7QnmPaRhJbyWX4BWZDsv5UDHPIj5gsC0fYEk1fuB8m6NHQRM1slWW/bqeR704u8iSgD97OjHnC/9YtlGbrhRY8iQrIGUvTx/AaxbL0WA3YYWirLWB1v/fJADOjyodpZFZc1c9fmXnvRIFN+4iOHTJODQHzd65hHom7sVx56C/c+OcmF1kFh1J4rgn5SKIAtM2O+tx8aAk5//8l55i/Qz0ipi54XfR4iyNoe8DljUUoovUngOlkxmy/hM1Ixu15u4GiELtGdqIdEhcVx+rjlGtkSUCRGJpZbTdBAKF0raGGKlsImbF0ckqDCqYYMDLS1B230TIUwcbhMacP5m+NF28FBP1PIdIhnEn8Ir6AuiagtS5hVGWuiyP2DueGEJNg9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(39860400002)(396003)(366004)(376002)(110136005)(54906003)(478600001)(316002)(8676002)(8936002)(33656002)(7696005)(186003)(71200400001)(52536014)(4326008)(26005)(66946007)(66556008)(2906002)(76116006)(66476007)(86362001)(64756008)(55016002)(66446008)(9686003)(6506007)(53546011)(55236004)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Qvc1x2hxVPWAcZskkHtxmEhlgpcFz+MysoyVoMJXeOQLh5A7a5R0G3Hazvh0BmLw+uzAFN6wYSbsCNLJmybP/PY/FyMjP10mxeHpF0KKWTLam4MpJTLW0yK0aqUogq14znm8TuRUMrE2d6DR10TZO6TUp7qQYtRU9wp3k8kc3UuCHigxU82nXv0UrOHLBJF9tNlWFhQdjN9dXaaDukA4f7w7DcEwixw2hGDSe3gIEYRzUBxlNyhTM8D3KXYSVrSHsNXrqd2WEbKi7az9RdnpnivZdcONUrdWWzSAFGf/JknN344/bhjRKX27QGUmGS+iY3bcmD+0qa2qWaMZcp6TVweyBWZAPMxqJr8XDxiINg1WSnEabvJKswpe0gf+O/mlWESEo8rbF9lGwkIFbmFrSTElEBnhqrBOXiTYLMSNm3nje6BrUXCrXV51kwNDRjmNepv0pDhn0FBp+LtBIbVvzTVwR2gDMjHTZr22HgdtxRs=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b997b2-44fb-4ad0-daad-08d7fa38ae72
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2020 08:02:44.6750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rZkHmtXHsXtfW8ybit6gcNd1UnJHH0/znZUbCTnsQ3dDuazebbc40to+q01OZWK49jACZrY3+9KwNYCdf+8W5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4985
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_010258_634639_1414BE40 
X-CRM114-Status: GOOD (  35.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
> From: linux-kernel-owner@vger.kernel.org <linux-kernel-
> owner@vger.kernel.org> On Behalf Of Anup Patel
> Sent: 16 May 2020 21:59
> To: Marc Zyngier <maz@kernel.org>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> <paul.walmsley@sifive.com>; Thomas Gleixner <tglx@linutronix.de>; Jason
> Cooper <jason@lakedaemon.net>; Atish Patra <Atish.Patra@wdc.com>; Alistai=
r
> Francis <Alistair.Francis@wdc.com>; Anup Patel <anup@brainfault.org>; lin=
ux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: RE: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after curr=
ent
> handler is present
>=20
>=20
>=20
> > -----Original Message-----
> > From: Marc Zyngier <maz@kernel.org>
> > Sent: 16 May 2020 19:01
> > To: Anup Patel <Anup.Patel@wdc.com>
> > Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> > <paul.walmsley@sifive.com>; Thomas Gleixner <tglx@linutronix.de>;
> > Jason Cooper <jason@lakedaemon.net>; Atish Patra
> > <Atish.Patra@wdc.com>; Alistair Francis <Alistair.Francis@wdc.com>;
> > Anup Patel <anup@brainfault.org>; linux- riscv@lists.infradead.org;
> > linux-kernel@vger.kernel.org
> > Subject: Re: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after
> > current handler is present
> >
> > On 2020-05-16 13:52, Anup Patel wrote:
> > >> -----Original Message-----
> > >> From: Marc Zyngier <maz@kernel.org>
> > >> Sent: 16 May 2020 17:42
> > >> To: Anup Patel <Anup.Patel@wdc.com>
> > >> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> > >> <paul.walmsley@sifive.com>; Thomas Gleixner <tglx@linutronix.de>;
> > >> Jason Cooper <jason@lakedaemon.net>; Atish Patra
> > >> <Atish.Patra@wdc.com>; Alistair Francis <Alistair.Francis@wdc.com>;
> > >> Anup Patel <anup@brainfault.org>;
> > >> linux-
> > >> riscv@lists.infradead.org; linux-kernel@vger.kernel.org
> > >> Subject: Re: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once
> > >> after current handler is present
> > >>
> > >> Hi Anup,
> > >>
> > >> On 2020-05-16 07:38, Anup Patel wrote:
> > >> > For multiple PLIC instances, the plic_init() is called once for
> > >> > each PLIC instance. Due to this we have two issues:
> > >> > 1. cpuhp_setup_state() is called multiple times 2.
> > >> > plic_starting_cpu() can crash for boot CPU if cpuhp_setup_state()
> > >> >    is called before boot CPU PLIC handler is available.
> > >> >
> > >> > This patch fixes both above issues.
> > >> >
> > >> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > >> > ---
> > >> >  drivers/irqchip/irq-sifive-plic.c | 14 ++++++++++++--
> > >> >  1 file changed, 12 insertions(+), 2 deletions(-)
> > >> >
> > >> > diff --git a/drivers/irqchip/irq-sifive-plic.c
> > >> > b/drivers/irqchip/irq-sifive-plic.c
> > >> > index 822e074c0600..7dc23edb3267 100644
> > >> > --- a/drivers/irqchip/irq-sifive-plic.c
> > >> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > >> > @@ -76,6 +76,7 @@ struct plic_handler {
> > >> >  	void __iomem		*enable_base;
> > >> >  	struct plic_priv	*priv;
> > >> >  };
> > >> > +static bool plic_cpuhp_setup_done;
> > >> >  static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
> > >> >
> > >> >  static inline void plic_toggle(struct plic_handler *handler, @@
> > >> > -282,6 +283,7 @@ static int __init plic_init(struct device_node *n=
ode,
> > >> >  	int error =3D 0, nr_contexts, nr_handlers =3D 0, i;
> > >> >  	u32 nr_irqs;
> > >> >  	struct plic_priv *priv;
> > >> > +	struct plic_handler *handler;
> > >> >
> > >> >  	priv =3D kzalloc(sizeof(*priv), GFP_KERNEL);
> > >> >  	if (!priv)
> > >> > @@ -310,7 +312,6 @@ static int __init plic_init(struct
> > >> > device_node *node,
> > >> >
> > >> >  	for (i =3D 0; i < nr_contexts; i++) {
> > >> >  		struct of_phandle_args parent;
> > >> > -		struct plic_handler *handler;
> > >> >  		irq_hw_number_t hwirq;
> > >> >  		int cpu, hartid;
> > >> >
> > >> > @@ -364,9 +365,18 @@ static int __init plic_init(struct
> > >> > device_node *node,
> > >> >  		nr_handlers++;
> > >> >  	}
> > >> >
> > >> > -	cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> > >> > +	/*
> > >> > +	 * We can have multiple PLIC instances so setup cpuhp state
> only
> > >> > +	 * when context handler for current/boot CPU is present.
> > >> > +	 */
> > >> > +	handler =3D this_cpu_ptr(&plic_handlers);
> > >> > +	if (handler->present && !plic_cpuhp_setup_done) {
> > >>
> > >> If there is no context handler for the boot CPU, the system is
> > >> doomed, right? It isn't able to get any interrupt, and you don't
> > >> register the hotplug notifier that could allow secondary CPUs to
> > >> boot.
> > >>
> > >> So what is the point? It feels like you should just give up here.
> > >>
> > >> Also, the boot CPU is always CPU 0. So checking that you only
> > >> register the hotplug notifier from CPU 0 should be enough.
> > >
> > > The boot CPU is not fixed in RISC-V, the logical id of the boot CPU
> > > will always be zero but physical id (or HART id) can be something
> > > totally different.
> >
> > So on riscv, smp_processor_id() can return a non-zero value on the the
> > boot CPU? Interesting... :-/
>=20
> On RISC-V, smp_processor_id() returns logical id (which is the order in W=
hich
> CPUs are brought up).
>=20
> We have special function cpuid_to_hartid_map() in asm/smp.h which helps u=
s
> convert logical id to HART id.
>=20
> The HART id in RISC-V world is like to MPIDR of ARM world.
>=20
> >
> > >
> > > On RISC-V NUMA system, we will have a separate PLIC in each NUMA node=
.
> > >
> > > Let's say we have a system with 2 NUMA nodes, each NUMA node having
> > > 4 CPUs (or 4 HARTs).  In this case, the DTB passed to Linux will
> > > have two PLIC DT nodes where each PLIC device targets only 4 CPUs
> > > (or 4 HARTs). The
> > > plic_init() functions will setup handlers for only 4 CPUs (or 4 HARTs=
).
> > > In other
> > > words, plic_init() for "PLIC0" will setup handler for HART id 0 to 3
> > > and
> > > plic_init() for "PLIC1" will setup handler for HART id 4 to 7. Now,
> > > any CPU can be boot CPU so it is possible that CPU with HART id 4 is
> > > boot CPU and when plic_init() is first called for "PLIC0" the
> > > handler for HART id 4 is not setup because it will be setup later
> > > when
> > > plic_init() is called for "PLIC1".
> > > This cause plic_starting_cpu() to crash when plic_init() is called
> > > for "PLIC0".
> > >
> > > I hope above example helps understanding the issue.
> >
> > It does, thanks. This pseudo NUMA thing really is a terrible hack...
> >
> > >
> > > I encounter this issue randomly when booting Linux on QEMU RISC-V
> > > with multiple NUMA nodes.
> >
> > Then why don't you defer the probing of the PLIC you can't initialize
> > from this CPU? If you're on CPU4-7, only initialize the PLIC that
> > matters to you, and not the the others. It would certainly make a lot m=
ore
> sense, and be more robust.
>=20
> Okay, I will try -EPROBE defer approach for v2.

I tried -EPROBE_DEFER for PLIC instances not targeting boot CPU. It
works fine for boot CPU but now it fails for secondary CPUs because
PLIC probe is deferred after secondary CPU bringup.

This can be further explained by previous example.

Let's say we have a system with 2 NUMA nodes, each NUMA node
having 4 CPUs (or 4 HARTs).  In this case, the DTB passed to Linux will
have two PLIC DT nodes where each PLIC device targets only 4 CPUs (or
4 HARTs). The plic_init() for "PLIC0" will setup handler for HART id 0 to 3
and plic_init() for "PLIC1" will setup handler for HART id 4 to 7. Now, any
CPU can be boot CPU so let's assume CPU with HART id 5 is the boot CPU.
The plic_init() is first called for "PLIC0" which does not target boot CPU
(HART id 5) so we defer "PLIC0" probe.  Next, plic_init() is called for "PL=
IC1"
which succeeds and we get handler for CPUs with HART id 4 to 7 (including
boot CPU). Later, Linux brings-up secondary CPUs starting with HART id 0
which fails because plic_starting_cpu() crashes for HART id 0 as the "PLIC0=
"
probe is deferred (i.e. not yet done).

The real reason why -EPROBE_DEFER did not work in this case is that
Linux irq subsystem defers probe after secondary CPU bringup.

I will keep the current approach for v2 series unless you have other
suggestion.

Regards,
Anup

