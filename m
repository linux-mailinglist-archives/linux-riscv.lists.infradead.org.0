Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8A4FFFCF
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 08:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0enV0D8UhVJ/1flFPGQXcxr69Iwf5Kn7NmcOjXAMbhc=; b=T0sw1+i2dJYYoG
	e9xo8F91TFwdxqiEtM89XIJZdnKepu0GwqFzzi1VLH1U7f0/zPK9B492EkvC7mP1bSdGcchXpBW0X
	YpUkcLsPAClUpkACvN0fmhdBcPHEiYOfYZT+J53P0DbS+YiKFYojYCJXnDMcPXdljf2SD3zFjgN1I
	sMVmQvbgRRuGFLtzZvty2B4ltARd5AuJwpLh1arEh70z3WUT2C7mUM63znT4rGIDFmYhMRvov969q
	VawovrEN8pKnpGh51l51CBQC1W4wEuRXJrtF4NohCCcQlY+h/TMWxDsgkEIzD1bhyIH5wj1Dv4jbK
	K4yNTAn5V7mHRx7WCDPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWboG-0006xA-R0; Mon, 18 Nov 2019 07:50:56 +0000
Received: from mail-eopbgr800081.outbound.protection.outlook.com
 ([40.107.80.81] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWboC-0006w3-5m
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 07:50:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IpAibOMlo7EEscnED5tRpAs8Sx9E8lKOeapqOkdIE/v6wg4X1GBP2tiWOGqxfvytJoEt3fJng3r5eg88nrhn/O92f8u03JPGXQ/lE5UhvbKVeMOLAuMmbAjCQuMul5TNrwaPuqKP1FqaBGUpANbwwi5TZoY2lDYMVseI4J2zzmf6xziN3mAc11uvJi7tG9BLtiGSqHEChhiyZeXwI8Pv/4yjT1CzDxIAK1vQO9xARSbhxzIXukoCXlOY0sDF57tArRVEWnuSRjMr3TELdu+lkoq3xMhLOiih3CYlbbhkU3feJRCrlka4Jv44x2YRzMRa3eoGfp8xL+4AepSByhro6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3EOPxIJkiz0vUXdV0duYpOM6sD9HCm0NTTrHR7UMpK0=;
 b=h5wYGfeYzTbMZZDboMEzJQZZXTFs0n8cendDfRLv5sGt82ikJG4uoFFZ9kq1AWczPc9K72PY59Y2yUye6x3Yz0TQNtvrGZGUqiXvhAD8KS6D+NOsNflDO9DGYmL2FeGo9GkAKgZ9mX6+Vu9iH/gB+VAG2I/u/yk/z++eC3w6Z0qB6nPWNfWt5+nyOO273ABmfTb9+ZXsSJZzBHUqo6w2DUIMNqLw7eciFKymiSz+fzV9TnOUCsFitC8vjjmZGDJsHaUPIrMjZAH1ItS02TMf7/FwVAAfXZJibPfHLCPUGF1Oazl1W9yOUFFHcLwfasumK49HMDr/YbuiLFeRp8vqYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3EOPxIJkiz0vUXdV0duYpOM6sD9HCm0NTTrHR7UMpK0=;
 b=AbHKXxVyJJXKNx3uOcy6rmwEQV/R8hVkJXIu0bv1zsHvTwra0fqPxsR5D8Qx3YmA/1FFGhVqTWNHEH3IInfic4LVKXxfilVHhvUr0Y4kAmMqlBU2y+iwzNPYlto81uCCbiYauO/VmoSaPuCxPniZGdFZJRSW5PfOUgymgfez7Ec=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3591.namprd13.prod.outlook.com (52.132.244.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.9; Mon, 18 Nov 2019 07:50:49 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2474.012; Mon, 18 Nov 2019
 07:50:49 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 3/4] gpio: sifive: Add GPIO driver for SiFive SoCs
Thread-Topic: [PATCH 3/4] gpio: sifive: Add GPIO driver for SiFive SoCs
Thread-Index: AQHVmVJqQXFGHo/64k2Vkr22HauCBaeHfxOAgAkN8OA=
Date: Mon, 18 Nov 2019 07:50:48 +0000
Message-ID: <CH2PR13MB3368302564103DC1EC8907D68C4D0@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
 <1573560684-48104-4-git-send-email-yash.shah@sifive.com>
 <d82620dd33bdd6bb4d34e49600a506d1@www.loen.fr>
In-Reply-To: <d82620dd33bdd6bb4d34e49600a506d1@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac3fbad0-f9c1-4624-5976-08d76bfc0712
x-ms-traffictypediagnostic: CH2PR13MB3591:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3591CBB752FE039A438937BF8C4D0@CH2PR13MB3591.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0225B0D5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(346002)(39840400004)(396003)(136003)(366004)(376002)(13464003)(199004)(189003)(26005)(6506007)(186003)(55016002)(9686003)(6436002)(102836004)(33656002)(81156014)(486006)(44832011)(14454004)(6246003)(81166006)(8936002)(25786009)(11346002)(229853002)(76176011)(7696005)(8676002)(476003)(6916009)(76116006)(446003)(107886003)(66946007)(4326008)(66476007)(66556008)(64756008)(66446008)(6116002)(3846002)(66066001)(4001150100001)(53546011)(2906002)(54906003)(316002)(305945005)(71190400001)(52536014)(74316002)(478600001)(71200400001)(256004)(5660300002)(7736002)(99286004)(86362001)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3591;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WJkYap20R0uHot8uumffsd3UfTWqP+M5rhSNCEU/xAXV1JVN+HpE5MHqH8W05oRVWMBJhNERympMHKTpoO7vlzyXV6ftDL9EozT325REJo/OXMrhCJihwfMQeZzgUTwxL6ClZbYNeYllTayL0Sy0FK9BRYV25z05PBCzSKqFkyUMidKLcteOaSKH1O+KGjAwK1P7S89NQmeyqdcf0wWIMrcZMnjgdHsrs72OeKN00kqyLFP2tbh/Pzr9v4Bf98KMpUGIhNv3KnYh0rOoNfkyUuvkRhdQOzhhm6xpDduHv0UVOaeCNuP2lVaKazi1j2LIfeHUvoIc1T9Rf58oKis8rrlXkkUi2xkklcagE4pyByGnhKGVKXO3a7VWl3hSQ4QW2N1gq8s/7OqkALR53aPoW3qlPHTkRoWgAFBpmrxmjBxzWfzeyomjQqGAqS8kGIuD
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac3fbad0-f9c1-4624-5976-08d76bfc0712
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2019 07:50:48.9419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jrOtzAVrdtJKSOWMHHV7yVecFNthirnvKBXLuQOnei6F+MPHg/hPB6D+NLlLIqmFUtvtjpCLBdzq1BVxJF/6Qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_235052_254666_13966CAD 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.80.81 listed in wl.mailspike.net]
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
> Sent: 12 November 2019 18:28
> To: Yash Shah <yash.shah@sifive.com>
> Cc: linus.walleij@linaro.org; bgolaszewski@baylibre.com;
> robh+dt@kernel.org; mark.rutland@arm.com; palmer@dabbelt.com; Paul
> Walmsley ( Sifive) <paul.walmsley@sifive.com>; aou@eecs.berkeley.edu;
> tglx@linutronix.de; jason@lakedaemon.net; bmeng.cn@gmail.com;
> atish.patra@wdc.com; Sagar Kadam <sagar.kadam@sifive.com>; linux-
> gpio@vger.kernel.org; devicetree@vger.kernel.org; linux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org; Sachin Ghadi
> <sachin.ghadi@sifive.com>
> Subject: Re: [PATCH 3/4] gpio: sifive: Add GPIO driver for SiFive SoCs
> 
> On 2019-11-12 13:21, Yash Shah wrote:
> > Adds the GPIO driver for SiFive RISC-V SoCs.
> >
> > Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
> > [Atish: Various fixes and code cleanup]
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> 
> [...]
> 
> > +static int sifive_gpio_child_to_parent_hwirq(struct gpio_chip *gc,
> > +					     unsigned int child,
> > +					     unsigned int child_type,
> > +					     unsigned int *parent,
> > +					     unsigned int *parent_type)
> > +{
> > +	/* All these interrupts are level high in the CPU */
> > +	*parent_type = IRQ_TYPE_LEVEL_HIGH;
> 
> It is bizare that you enforce LEVEL_HIGH here, while setting it to NONE in the
> PLIC driver. These things should be consistent.

Will change this to IRQ_TYPE_NONE.

> 
> > +	*parent = child + 7;
> 
> Irk, magic numbers...

This is the offset for GPIO IRQs. Will add a macro for this.
Thanks for your comments!

- Yash

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
