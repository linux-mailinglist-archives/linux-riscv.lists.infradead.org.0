Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D721D60FE
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 14:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M7HD3mCIWRI+x1QnOqGoK9EDg9pE7f9RogiWHhwYc9Q=; b=FwhkdUrLBdGIM8yHiMs8jYePJ
	BWDF0LUWnJ+31MApoU33ico96PsgjFiaNb8Rt0ipiTQ/UtW8Fo0WuBsckRuuJ5sp5c2C49Di3yOMB
	JtmVVYzX+DsrOIGCt3D+VQDcy/ajEcljgZiY5pUAvhwd5PE70uX4uBs5/CPLLl6BZiXdj91EJvUOJ
	sXn8dg9fGqfI1KC6tWXrDvP0BAEN7PEdzsvDOD7S18RIMgV7Uvif2cN9tagt27s3Nq+P5pspJk7YH
	aJZjXVFbGWhKjjzd6ecgju2pqVR81zu2l7X0E+cRqXIIfCN6W/cw4YD19oi17KkG/OAlmvnIAkthx
	uC3ZSfNOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZwJQ-0006rd-Rm; Sat, 16 May 2020 12:53:08 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZwJN-0006rB-8w
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 12:53:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589633585; x=1621169585;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VUurkwn0TZk68uroqiJzx0HrRwY2VAS6W4WrXVKkMto=;
 b=Qh5jqimv9dokvHItc/PS+bGfulelhSg7dHPEKYkztXxFpFEJMh6dJBOh
 wk+xJzJjK1qX9ke7Mpb3xMJuLxY4ExScOl6r9RI6I+Cr8lV9yvEDpAPkc
 mAfzSpn68r/0n43R2vQ+dX2TaZI/RCYvqkpmJTscRu5uz8levdcJgVS5A
 8mD/LoKgl3VfijTBB2hpJHlvql7WOGaPSD//ZeGfeGZ6ZzMkPxyDGxjpZ
 xZQrSWnDNHZVWqN+TfdlPNEV8WJRdPNpQ2ODJOCBFnfGmMXxv1xkPxy+6
 d9XqXw8GNzYUjOILiipJTx2iTq7G/SB5slMAy0U/UoKfmbf0EpmIvoW0T w==;
IronPort-SDR: V2QSNTXz+WtQiDzS9dYbKlngnFF0BEyg1vEC/+UjhEYAMVl5ZCkB4v8Qd4x/bMjbF6l14iljKx
 /LWqBLDdb9QKjaOS/CbjOGpVN4iVOVRGd6PLD4MjoFgG2DHktofHvWa0LeNepAB4VlCAQM8hYW
 geT/misXkgRxyV4NdPREqIFXYpAa1rnLNYgIeCpsU885KaGsw4TVdH6ce5250VtSaTrdlh1ePL
 fmwif9vExWzHrDZPXKEgFUVTeeMg2wW59eXhWBQbh2ajT54W4Anp2cHqnN8zQE4xz2zL/LbLv+
 Xe4=
X-IronPort-AV: E=Sophos;i="5.73,398,1583164800"; d="scan'208";a="246819782"
Received: from mail-mw2nam12lp2048.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.48])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2020 20:53:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S4xa8yOzF257L6i9kJfv1I8NcI1wzvXU9WVDOYxArP1j06wfm+82ax0E4Eu5TdMc5f0EDZBjiONSu8T6FIxCfsSPQkT7VwuqfchN9oV66QgMIpoL7GR1kbIgkicaFDS8OohKH5il/Jype+/H/Z3RFW+RauguKmbur4Kenv7jLYq1sC3+nRw0INbq+9KNYvoKAy+H1v6DKgJE6rZLPTNL6JuYKJSypeN4AVFrO/mQqQA5YUH9JGk9TGH5flF/QZYY29iSLuGzlXR1jEtNXF1Kp1by77V7ZXRt0mrFMTOCqIqiXWB+42DImet1H8FNYv3K8RYQ2Dtv2gGGnPvPuAnKdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M7HD3mCIWRI+x1QnOqGoK9EDg9pE7f9RogiWHhwYc9Q=;
 b=gHoSGQbV/ZcVQct/JT9Oet4yygA3Xtan3OMQSJu68F4szGMt3b4ziO07qFwqa7cUW1wOzptSZ/x+s7HNn8bA6hi2hqs81cmiCM7VQ2usipDKD+bga9cEavDyNeAsKsVKJO4GKVoDSL4u1vGhIIi0/tf8hqmV9ZuX75cDc/KH424yxAQ3uoywpEUShCiXPufvQBG2hd1IlWgGzpF0ZU6THGS6lVYk6uGTw6VRMXBztbP/YZc2VTojhNwPTvptioTTDsAkuBxH9Fewp6bkwsE+xmvMqiCRD8UIfk/A3NqKUW2a+alMuAxdYOKL7X2RN6glXBJeRFRC6oxJu4/D2c/dlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M7HD3mCIWRI+x1QnOqGoK9EDg9pE7f9RogiWHhwYc9Q=;
 b=gD0zhBs/3lTUbMBHEXkjIhm/jXnFskMrH3520pbbPSnYCJWBFGNJZmIDibfrIWnbxL9Si0ZmAtoGvqyocx+R/lpygGS+omU8KXKZzeFdQdz32LoflCzUfnRHVKXdb8bfcBaIJjLIuN0HmAshToy6Haaw0+4VR9KG55ZdzAWbEvU=
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB7051.namprd04.prod.outlook.com (2603:10b6:5:244::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Sat, 16 May
 2020 12:53:03 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2979.033; Sat, 16 May 2020
 12:53:03 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 2/4] irqchip/sifive-plic: Improve boot prints for multiple
 PLIC instances
Thread-Topic: [PATCH 2/4] irqchip/sifive-plic: Improve boot prints for
 multiple PLIC instances
Thread-Index: AQHWK0zFOMpDkXxo9EaOaVqvEbCb/KiqohAAgAAI/xA=
Date: Sat, 16 May 2020 12:53:03 +0000
Message-ID: <DM6PR04MB6201773F57F2F41B77B926808DBA0@DM6PR04MB6201.namprd04.prod.outlook.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
 <20200516063901.18365-3-anup.patel@wdc.com>
 <718b4b4fd894f74a178d3e38073ffdcc@kernel.org>
In-Reply-To: <718b4b4fd894f74a178d3e38073ffdcc@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [106.51.108.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c698a9bf-a4e1-46eb-43d6-08d7f9981259
x-ms-traffictypediagnostic: DM6PR04MB7051:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR04MB7051E826F5F176493B85D6F58DBA0@DM6PR04MB7051.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 040513D301
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9zfi3hJtw8Oa8R+b5gI3bSfchXSRdg0OrayG6yFOVbfz6NcH+q0nQvMcgg64zJLVXZS94o8HuKyi1AH2gYNftZiUx9EasgdaOXQa0+Ov1JPaVeHYhEEj8WhcHGZuu+CC8cK6l+JPidnb62Fy7+DOAeuAZ4eVSmak578ZRjEqCrBUUbzzrtM0UNkvA8wT1qxqpD5YLYMxDNewEFypGWZwKOE0utuSvIhL2GAYwq0/U1oyQGxMztl+y/gS+mhEWsi99i7BUD/s50EHelGfI52qsCdmgJhCcJ76qMUP0Q/GZ4x8GQQDv5ewzZtqFk5e9UaIaDlqCx00u/Q8L/Yh1oV5T/t6YK9VTRzEWIjL8pfvXm90zDSte5BhI4eNMO07+u6rGxIzc9HTJSj9ZXA/sQdQZh1TWGNTMe16pgYBqGwZVlolJBMsb6QapKy+ruG4jKDG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(52536014)(8936002)(5660300002)(2906002)(33656002)(7696005)(54906003)(186003)(55236004)(86362001)(6506007)(26005)(316002)(53546011)(478600001)(66556008)(66446008)(9686003)(4326008)(66946007)(8676002)(66476007)(64756008)(76116006)(71200400001)(55016002)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: oQ6uPyZWwts6tqvK1rqkBaFRGWHTX1nxhYELEm2sog0RJrg6GXnjj6LFrzze69QcXiyqtDhdVLFVImzRSxanVDV1QwlVFV0jOJIX3BSMdoP1Sb8OarN68mXFPtmzH+rGarLnxEVpR/bPwxP2k3Stv087rdvY5woyesfcCrbUM9KTyFCJ+7Hbx5ztpy9FmqOTUMmnb7Y5/GikL0ZQH6LdyNu2O4mXiypif/4p/eKcNBmNJyZ+c4bCBAcq7HLFNU2k4XJ1OAdm3z6rbr9yj/oW1ZX1221Xx7muXTxSesSJ+c6fwf+QmvatXspn/7JVdezHaYs+HJid7CVV5Lmgnt+bcSCZPa9AzbOOTecQPs6Oozk5PcKfTWvjmorAgz15bwIxsOkgdPu+JXvWGr15dBWNNj9Y+1wWlynIhZ1Il+uWBmlvIaYtDNSZIFZRC7MQ+RQFfmviM2MNm+ZcLRuOWEzKqdAIm7cB6Hf6M0YII7gItszrnh8Gcpt4dfzvoQf+akNS
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c698a9bf-a4e1-46eb-43d6-08d7f9981259
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2020 12:53:03.3890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u1Azxc0lMnI6B3nICizhlof+mjmwTQMk9XgiKwjHNCYcfOUCRTJpxZycWuD4ZiwO+Dz7NUxmEFvrODBC7AjQ0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB7051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_055305_327018_02DF5FF7 
X-CRM114-Status: GOOD (  16.35  )
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
> Sent: 16 May 2020 17:50
> To: Anup Patel <Anup.Patel@wdc.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> <paul.walmsley@sifive.com>; Thomas Gleixner <tglx@linutronix.de>; Jason
> Cooper <jason@lakedaemon.net>; Atish Patra <Atish.Patra@wdc.com>; Alistai=
r
> Francis <Alistair.Francis@wdc.com>; Anup Patel <anup@brainfault.org>; lin=
ux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH 2/4] irqchip/sifive-plic: Improve boot prints for mul=
tiple
> PLIC instances
>=20
> On 2020-05-16 07:38, Anup Patel wrote:
> > We improve PLIC banner to help distinguish multiple PLIC instances in
> > boot time prints.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 11 +++++++++--
> >  1 file changed, 9 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c
> > b/drivers/irqchip/irq-sifive-plic.c
> > index 7dc23edb3267..2d3db927a551 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -284,6 +284,11 @@ static int __init plic_init(struct device_node
> > *node,
> >  	u32 nr_irqs;
> >  	struct plic_priv *priv;
> >  	struct plic_handler *handler;
> > +	struct resource iores;
> > +
> > +	error =3D of_address_to_resource(node, 0, &iores);
> > +	if (error)
> > +		return error;
> >
> >  	priv =3D kzalloc(sizeof(*priv), GFP_KERNEL);
> >  	if (!priv)
> > @@ -377,8 +382,10 @@ static int __init plic_init(struct device_node
> > *node,
> >  		plic_cpuhp_setup_done =3D true;
> >  	}
> >
> > -	pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
> > -		nr_irqs, nr_handlers, nr_contexts);
> > +	pr_info("interrupt-controller at 0x%llx "
> > +		"(interrupts=3D%d, contexts=3D%d, handlers=3D%d)\n",
> > +		(unsigned long long)iores.start, nr_irqs,
> > +		nr_contexts, nr_handlers);
>=20
> Instead of displaying "interrupt controller at ...", why not use the exis=
ting printk
> format for OF nodes? Something along the lines of
>=20
>      pr_info("%pOF : mapped %d interrupts with %d handlers for %d context=
s\n",
>              node, nr_irqs, nr_handlers, nr_contexts);

Sure, I will go with your suggestion and use printk for OF nodes.

Regards,
Anup

