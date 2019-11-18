Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F80FFF5F
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 08:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVmx5M0SlIPWq/GGmNpUYk4BGlPEbwlVACHBQEClgrc=; b=DLFNDKzGsEQJF7
	JoqXI0B7EzSpTWPk/GSc1T4PIjCyLvOZTwRELVYIcAN4Q5/NghvfNkIQEIlrEzwE9cL6eh6C0skNM
	r6xyQj32owzC64lD2/8IJ1L2qwYPE7sfvH6nVMoecXaJeFjsSL11EgUWaWQBhDbrZeu0rqPQxWCfG
	Vcz/6b2eYfRWe68+gqG8awjcLUcpuqB9/N5YBXDa9SHnJlyxLrJQwvF2UT6OB8cbGu22fbKquZaLW
	BsjNT6VZulBWsvvIkZr4pASctf2Qb2Z+AWwDCizkKzOf4G725iT8hNe14qIjts+f2GG2wY7i5EfD8
	OCl1CYoHarsgCc6F37Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWbF4-0003us-Pt; Mon, 18 Nov 2019 07:14:34 +0000
Received: from mail-eopbgr820045.outbound.protection.outlook.com
 ([40.107.82.45] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWbF0-0003uN-U8
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 07:14:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g9jdCG6FypEr7RBKq1IixN/tSmm/My2D3h1wUBj1Bc0bDaG/p7eoSnUctWUeGFBYtSTObqdb6+WyYRyymXypaVHCOxvorQmzUNO+qeocLc+mW7PYOexXFtDWnGb3aSdsE09v9XxUqTzU0WHgS4sPTK/No6pwC/2N+l+OrCqghE9v8kutXFh4GhbSBU5ldUsLnBtG/Ute14tx6kJqHUxpQd0dgn8vjU+ZslgPfnvjQZcwO1B9fkLHs1+SANsh0G98IjBIY920Z+NxTOm4qOH6IqQQmFuknlEfIb2lC7PC93/U2FJZU8UyhuAiqeJcfec8ciR8E8LD9RdO9yaO+Z5vew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bz7BcH3KrKew71E5j6GlDHqVcrDDEIUcDM8g0aS0LKU=;
 b=OaUFT6Vo3R+bcxMr9DMf75CzrxJeQzHsHp7CdxAd1SLgtJbTfS3XSGfQNN7HRR8xfc2akB2tIKceOKezm9NWNy03C4g/ruYdyo8ZWb1IMApnwymIW+X3upLNq6drJG3YHvLir/YyW+RTsclSuFE/1aZt+4llxN9y5k0wyq2WMWZAIsNc82b3A5IdjM9bYzfaK5oK0VhoOz/gkXR1beVAjsSxmmKWHHylEwia07dyIsgRWlI96uNSBMEVcXkCJoVvNQ4PELLHiroXanzwZiTVTjEeJGzGjjSCZz5w1s+I6VW0ULoYfVoQTZrjU0G8KVb/ornTcDlDLcFbAa+JkPtWwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bz7BcH3KrKew71E5j6GlDHqVcrDDEIUcDM8g0aS0LKU=;
 b=erifsc6XS7U6kAEZgPq93Qo/UkxKNt6w2U+KrPIZWkhVv/BGWhcKhznqrbwZB2p5D6WMDmFK93Ly/0rlGWfDSjMfnpp9QQlKJTIc4LLw7w+DbekLD1FjTePlwXjOx7yc2OewzC2OjFBJhXM9eCGif3qwK3LkPfl8hBK7MkjF7Bg=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3304.namprd13.prod.outlook.com (10.255.155.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.15; Mon, 18 Nov 2019 07:14:27 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2474.012; Mon, 18 Nov 2019
 07:14:27 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 1/4] irqchip: sifive: Support hierarchy irq domain
Thread-Topic: [PATCH 1/4] irqchip: sifive: Support hierarchy irq domain
Thread-Index: AQHVmVJiuq127ZCTBUqmuCH0wyl5F6eHetSAgAkRSfA=
Date: Mon, 18 Nov 2019 07:14:27 +0000
Message-ID: <CH2PR13MB3368254D0684E46A2C47AE418C4D0@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
 <1573560684-48104-2-git-send-email-yash.shah@sifive.com>
 <ad0a3b419a3f5c3475d5fafcc2a037fb@www.loen.fr>
In-Reply-To: <ad0a3b419a3f5c3475d5fafcc2a037fb@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14783145-2780-4b5d-2cf8-08d76bf6f2dc
x-ms-traffictypediagnostic: CH2PR13MB3304:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB330474EB2317E3655E1C393C8C4D0@CH2PR13MB3304.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:580;
x-forefront-prvs: 0225B0D5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(366004)(346002)(39830400003)(136003)(13464003)(189003)(199004)(6506007)(33656002)(8936002)(8676002)(81166006)(53546011)(81156014)(102836004)(7696005)(76176011)(486006)(26005)(4326008)(44832011)(186003)(446003)(11346002)(476003)(229853002)(66066001)(7416002)(6916009)(6436002)(55016002)(74316002)(66446008)(64756008)(66556008)(66476007)(6116002)(3846002)(5660300002)(52536014)(9686003)(6246003)(305945005)(7736002)(107886003)(76116006)(2906002)(66946007)(54906003)(478600001)(256004)(71190400001)(71200400001)(4001150100001)(316002)(99286004)(25786009)(14454004)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3304;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XwusVMB7vjqGB6vof1yERGl8XvW5TFjKRtIuBF8dzcEKaLzpqnZUu2zDW/yPy1y5KbkIIoXjSGS1vg8nS4RQbzhceE7eaLpvAr7h7bn7mMF2pSB2NEISG2cuXNKoIe2iXGl+CkDHiEStXhnDvBuj6Kr/bOUqWovNbvtWK/FWnQOma+J/6EzDM/S1tZ+SVbg7HjRJUQ18MIaDs2FaYmOfTGTNZmk7Bw2MnTYaM2n+xhr6ciPox0I6VpVD8ODkBSmXj99OVQIVIABnBG/rSd/+ZTyiEtbv1mmLCYy8fJ6u8hSFVZL+k7HWKAb1oRBJ7O6Jo1kprulrDFIx3HWdKvDDhJtsoZcnHgONtWyyEUVOH9KMyerW5J62Z383w/So7C/U75Fj0aRcYj0nxzfhij3jSLEbngsYn/nKcnWn+AC8A9QO171do1bnMpQCGI47i5jV
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14783145-2780-4b5d-2cf8-08d76bf6f2dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2019 07:14:27.5307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tu8aHh2Y4u+6eQTDkGT+rB0XjGT7rOLTYN+eOQOMLRr6c6fgepcmrIFCs9WmH0r7zSD5DgX+nrNHzbcYqD3zGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3304
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_231431_128545_A602C048 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Marc Zyngier <maz@kernel.org>
> Sent: 12 November 2019 18:13
> To: Yash Shah <yash.shah@sifive.com>
> Cc: linus.walleij@linaro.org; bgolaszewski@baylibre.com;
> robh+dt@kernel.org; mark.rutland@arm.com; palmer@dabbelt.com; Paul
> Walmsley ( Sifive) <paul.walmsley@sifive.com>; aou@eecs.berkeley.edu;
> tglx@linutronix.de; jason@lakedaemon.net; bmeng.cn@gmail.com;
> atish.patra@wdc.com; Sagar Kadam <sagar.kadam@sifive.com>; linux-
> gpio@vger.kernel.org; devicetree@vger.kernel.org; linux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org; Sachin Ghadi
> <sachin.ghadi@sifive.com>
> Subject: Re: [PATCH 1/4] irqchip: sifive: Support hierarchy irq domain
> 
> On 2019-11-12 13:21, Yash Shah wrote:
> > Add support for hierarchy irq domains. This is needed as pre-requisite
> > for gpio-sifive driver.
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> >  drivers/irqchip/Kconfig           |  1 +
> >  drivers/irqchip/irq-sifive-plic.c | 41
> > +++++++++++++++++++++++++++++++++++----
> >  2 files changed, 38 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig index
> > ccbb897..a398552 100644
> > --- a/drivers/irqchip/Kconfig
> > +++ b/drivers/irqchip/Kconfig
> > @@ -488,6 +488,7 @@ endmenu
> >  config SIFIVE_PLIC
> >  	bool "SiFive Platform-Level Interrupt Controller"
> >  	depends on RISCV
> > +	select IRQ_DOMAIN_HIERARCHY
> >  	help
...
> >
> > +static int plic_irq_domain_translate(struct irq_domain *d,
> > +				     struct irq_fwspec *fwspec,
> > +				     unsigned long *hwirq, unsigned int *type)
> {
> > +	if (WARN_ON(fwspec->param_count < 1))
> > +		return -EINVAL;
> > +	*hwirq = fwspec->param[0];
> > +	*type = IRQ_TYPE_NONE;
> > +	return 0;
> > +}
> 
> This is actually what should be called irq_domain_translate_onecell().
> 
> Consider implementing that instead, and using it in this driver. I'm pretty sure
> other drivers could use it (I spotted irq-nvic.c).

Sure, will implement irq_domain_translate_onecell() and use that instead.
Thanks for your comments!

- Yash

> 
> >
> >  static struct irq_domain *plic_irqdomain;
> 
> Otherwise, looks OK.
> 
> Thanks,
> 
>          M.
> --
> Jazz is not dead. It just smells funny...
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
