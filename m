Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC08104DD1
	for <lists+linux-riscv@lfdr.de>; Thu, 21 Nov 2019 09:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlRT8SFLMTbywUgWQQArOwW8Tr5t4DNCgIfOKLgEc8U=; b=K1KEtGRZUJfP0H
	vykZQV/ATBAKIuTA56FgPYjzmYLaiWD0MMievxb6JjWmD+zo8Unap6Dj3UKJ7ZqLqxFTo25pBqKxg
	4WYoVGVEsqQjKtUeaKa//c2h82y+5g+i/64KggHqdHfE2orVVUL5K0OxHOdIxAhQdemzguAoKk/8F
	QwkKARvHFlU/cX109qQcEmW7wEIXih4LOULh1g3GV/vWveI/zsY/HPwRvEvIO9has4MFWdE393Odg
	pfD0hR9zFKFUoAlvHxKcVdN7HFJ8wNviTXOIq5JQca3BjE35538wEQK8jd/Jpg48u+ShlyVDt9XJ/
	5A/ZUfj+BE8O4D25R4NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXhnM-0008TD-Kx; Thu, 21 Nov 2019 08:26:32 +0000
Received: from mail-eopbgr790052.outbound.protection.outlook.com
 ([40.107.79.52] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXhnI-0008SC-8n
 for linux-riscv@lists.infradead.org; Thu, 21 Nov 2019 08:26:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CML7GUZk99wddAzTZgJK0AaDnNwvapOsIHhdhQFxSLOZ8yxALndivk+YIXO4pnhV3CbIzXcDCB9XFcNEX8CDIia+9Pxh/G3fwFCdG1KatuhpSsf3cbjgNRqtNU8Nc+EgrQ6plPIm0g5HACmsN9GnXEL60i+fxjhKqyS7bls71G5i5NhmW2aEVhsxf4mDtxaWNi+K/+cp4JhpqoPmOOeKY2gavalM2yjJwWwbWz4Vrbl9Ny0W9WlYrRTVVQzNqGuJ+nyYDrUBNOMWYKuC8jtOUeWp4iMSMtbA9qVTHB/ISr1ZJprG4jF0ht1M+puTCYWbqolzVAXpiZQsB6k72MplNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lU9cWMIPiYHwVyQUUrfkQYj1anBgZAlTDlv6URNbx+U=;
 b=Lk4+5eVZ9ITSwnsoj/dG+twZWL11pxc0gzdXtnyu5p4RfRQzmOcnxIGZrwO23jPBuWcq8IaRR1Qq3KdqBazdvLYNvIOV7lWGukOV3cMsu0ayen3EY1XYsClUcRQkzhy7Z9abUscVmgPjRmIEnvWiNOihBb//wQ0BNbEret9FZv+Xz8UShvH9NCS7+cCXguDS11SZlLfRjYCVLlT7HEl63UkVdP6JUXzIpjKSy6+E90MWJo+6iiJDNkQo+ryczIvPZ40Da7wgi+57syVGQY83bB9L4M4R+t9ec7nro6pllv5zeN9W5iCnTcdl5hDvUw6qNi274r69aTAkx+q9zkYTZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lU9cWMIPiYHwVyQUUrfkQYj1anBgZAlTDlv6URNbx+U=;
 b=tK7wnDUNLL4B2fVPf0VYXdRyqZh9wAYb7E9FAoOyNxjIgv7AinVc6g708Xlmm+5GBECGHEDlrdSXFpzCRYLwi4jCQiqG3lhjkLKr4AqEzsdB4PSqdx1IrBq91lVERT3bFYjJtxoyDndYEnn4VWILnNvwE95NQcACqLgOH8u0mVs=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3622.namprd13.prod.outlook.com (20.180.4.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.7; Thu, 21 Nov 2019 08:26:24 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2474.018; Thu, 21 Nov 2019
 08:26:24 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Andreas Schwab <schwab@suse.de>
Subject: RE: [PATCH v2 5/5] riscv: dts: Add DT support for SiFive FU540 GPIO
 driver
Thread-Topic: [PATCH v2 5/5] riscv: dts: Add DT support for SiFive FU540 GPIO
 driver
Thread-Index: AQHVn3AcQeUBZ0Ytu0eVtL/jFebGtqeTxthcgAGEqlA=
Date: Thu, 21 Nov 2019 08:26:23 +0000
Message-ID: <CH2PR13MB3368B53AE4978141B463A1418C4E0@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
 <1574233128-28114-6-git-send-email-yash.shah@sifive.com>
 <mvmlfsaoqp3.fsf@suse.de>
In-Reply-To: <mvmlfsaoqp3.fsf@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1cd3682b-b9cc-4e31-b7e6-08d76e5c7ee0
x-ms-traffictypediagnostic: CH2PR13MB3622:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3622C5A58B9702FFDD43C1EA8C4E0@CH2PR13MB3622.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0228DDDDD7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(39850400004)(346002)(376002)(366004)(396003)(136003)(13464003)(199004)(189003)(446003)(102836004)(6436002)(478600001)(53546011)(6506007)(14454004)(11346002)(66446008)(66476007)(64756008)(66946007)(9686003)(66066001)(55016002)(26005)(4326008)(66556008)(44832011)(186003)(107886003)(3846002)(6246003)(229853002)(6116002)(8676002)(7736002)(8936002)(6916009)(33656002)(99286004)(2906002)(81156014)(81166006)(7416002)(305945005)(54906003)(256004)(316002)(25786009)(76176011)(5660300002)(71190400001)(71200400001)(7696005)(76116006)(52536014)(74316002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3622;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w3GIV36VhljK/osjGAy0eLVPUX4q63abjzJSkhTor5azxJ7q5t/uriAXIScmKoZtSJry/fJgjvzcvjznSm1+KYuEanPCdVzVqXEv+oUVlmHRhGFH8asrBVM5y+lL/W+G6WP/VQtEN1K0lri1pbKEFXV7geQthOYUujefzBKrRK4VuesZyPh4xAluEyB/1WoK63RTKNdPye2sPrDHJGpDwTCWQtvzLrtGAjjawcQsVM0+7vyQRVkOYkX4in71sW31+9VxaOAxnidTgJEYZxu1ed5pXSwUCYOHRAnuNAQvTbA3RDh2SgE6f5k3BhTj+tZs5OtENwd0GDrr566MQp6e8fI0AEFm6445uagQmcCRY3acc08d9nJ+eA3cJttkVFBZZUZMlIy9THPQQl9FKDZaA+T3Q5ODcDKbjS0rHhbGLFip7Xfbpmo+7R4fIVdUopzt
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cd3682b-b9cc-4e31-b7e6-08d76e5c7ee0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2019 08:26:23.9288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: arigcGFqJ2BvWXXIZxmyo/FsleuY2vE+DqFKZXvynEAi3SNrSoLGikLaQOMtbnneeBCsBjaG2yeQCC/gBSyDZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_002628_396048_73829190 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "maz@kernel.org" <maz@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Andreas Schwab <schwab@suse.de>
> Sent: 20 November 2019 14:44
> To: Yash Shah <yash.shah@sifive.com>
> Cc: linus.walleij@linaro.org; bgolaszewski@baylibre.com;
> robh+dt@kernel.org; mark.rutland@arm.com; palmer@dabbelt.com; Paul
> Walmsley ( Sifive) <paul.walmsley@sifive.com>;
> devicetree@vger.kernel.org; aou@eecs.berkeley.edu;
> jason@lakedaemon.net; linux-gpio@vger.kernel.org; maz@kernel.org; linux-
> kernel@vger.kernel.org; atish.patra@wdc.com; Sagar Kadam
> <sagar.kadam@sifive.com>; tglx@linutronix.de; bmeng.cn@gmail.com;
> linux-riscv@lists.infradead.org; Sachin Ghadi <sachin.ghadi@sifive.com>
> Subject: Re: [PATCH v2 5/5] riscv: dts: Add DT support for SiFive FU540 GPIO
> driver
> 
> On Nov 20 2019, Yash Shah wrote:
> 
> > diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > index 88cfcb9..609198c 100644
> > --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > @@ -94,3 +94,7 @@
> >  &pwm1 {
> >  	status = "okay";
> >  };
> > +
> > +&gpio {
> > +	status = "okay";
> > +};
> 
> How about adding a gpio-restart?

I am planning to add it in a separate patch.

- Yash


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
