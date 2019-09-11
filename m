Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0560BAF692
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Sep 2019 09:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+ekuJPCKxdeoh/jwNu17jBJQC67AgmpwNuJSS+OsM4=; b=OawEs1PDUk7Pfq
	GIR51lXTb3OIzJm769+t5IIb26zmZMHMZu9ZkTS5BPrG5mkISbg4EfdHBanhUENhsr8BtKEmHEJNX
	inq+NV/WaOLHgYGoNcWm7AJvepJUvSTErLCSV0g88Lr8QP7PSa+SZ456gIJj0Tgy6dTBerE3jUwDY
	QSnBNfcc6mmr4W/b6whu2VFF889UKSnCuTvv8jhA5gwwLdZeVD7G4/iI9iGxWFA3PXF6FzDagxFv3
	Fry0ShJ4CD7E/L2gKZ/1wZ4FWEuQrH/ApozBH3lwTTH3YqFJGDrCFAc4mikEVO/uSE2STiAbGaV7y
	ANk9yFsdW+icpm4jfr9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wtV-0006t6-Ch; Wed, 11 Sep 2019 07:18:25 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wtL-0006pR-To; Wed, 11 Sep 2019 07:18:17 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: tDyXeB+HoZ+h3ViqD/Zpu4GKXs4HkWjnWvLn/JcDSzOyUJvKQWwYvYtiQj0GrIzmn+pQqjOujL
 g2SyHmmNcelsueIJKFfmNloQCX7Y/PEriJohw3B1aDvoBd8RBw5F08IUP8YyPzX9cLMX63+Kfo
 oJOjvNBEQo5YFkJKnubWMxNtTYJpYJN9PahdfjKIsKeLazv0fMk6KArzX6JdzPdvdZW3ScLHaH
 FvRocnk9DZQNmGsRMJ323eeYAZa5z3wcuIsJyTmgFKsJCiOEcZDvYhGv2I7F7qWF2Lzfw6eEJi
 +RY=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="47029903"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 00:18:11 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 00:18:09 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 00:18:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZM/RZwXqw3EqPiK3CDIti5e2IxYPHtl8awX3/JxR0pYvUUM9LdpNCdM/J68t2bTbKMQY1OuqAYsnrRmhbJ49jmilOFb6Wdq8l2deqeO/hXPz9beSHa1KUdbz7l51jZHjpFMF7N1msEwFu6bDydFZUf/2DOaUPsbS6mhjKb4GtxHKXFgpnRcNNfKuHrON4boQrt8blhHB3B75NL4R/l7VxWPNkXbcU8tvFJ8qfkWTzmcJS7ffGC+5MgHdOjn9U0HEkIEEtO7ZMlehawsaMWv3DGaoVWwXmnTJE8cUjIJ8d/SnjpKfARFbH+hm1A3ArXhw8m3UfhnqY3RYiQTyFmioEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jXrmhlEFsf3nUicVqu2SAIW6fYcx8ROEIfWqcebETa8=;
 b=Y7jfH5ViBenZU/HCrY2TBop8H96NE14WXZ8Z7eAeZYY3vYQoen+nXbIjKvJHlYA9yQ0AyCXS8ttMgPBbD65FSSey1/QN5gWv9V96vkCfG39OROE4cIA4TdHUCq54wbnrRYvbPWPlImuvZtzk1m0s4PC4g++/r3sDpoNgIyRbfYlSHVjPpP5zTf48QC/H/TrvGKMGzo1AZ/bfTRF95Z5TAf3xP9pGJxRTiHdKhORwfwHij27dJDVM4kofnJpxwH929iMB7lSm6gshOXA4d8w/AvQ3Wx1kJo4pmtHuKcHDRN2810muJ51WENWCvPwredajjN3doSQBFnO3DYJAaxSRyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jXrmhlEFsf3nUicVqu2SAIW6fYcx8ROEIfWqcebETa8=;
 b=gRzmPp42issb6ZvfqDySqWqbRS6WE4Al/o1isu2n1xBrIYVRBrHD3jHh0ZTSxxR/LwApy4t4eglE7XPZh7TBRDi7sp+UH8BH//1/6Lv7xW0z6cgO40J0POVnCXoBTlxHYPka8k9SWDBRhIlBgF3LzSUcqsUFlkMP0sIw7a+n+jY=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB2014.namprd11.prod.outlook.com (10.169.234.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Wed, 11 Sep 2019 07:18:07 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::4c34:6012:3622:68ed]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::4c34:6012:3622:68ed%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 07:18:07 +0000
From: <Claudiu.Beznea@microchip.com>
To: <linus.walleij@linaro.org>, <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 4/7] dt-bindings: chosen: Add clocksource and clockevent
 selection
Thread-Topic: [PATCH 4/7] dt-bindings: chosen: Add clocksource and clockevent
 selection
Thread-Index: AQHVZ96b4IKYTCqlaU2ZD1E6YcOJIack+WqAgAAFQYCAAJpZL4AAeTUA
Date: Wed, 11 Sep 2019 07:18:07 +0000
Message-ID: <a2aca46a-8eb9-d8a8-de42-9850a8a8f44c@microchip.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <1568123236-767-5-git-send-email-claudiu.beznea@microchip.com>
 <20190910143231.GB14966@e107533-lin.cambridge.arm.com>
 <ab43b209-78fa-0cab-b8ea-acd4c550e689@microchip.com>
 <20190910150826.GA18308@e107533-lin.cambridge.arm.com>
 <20190910151055.GX21254@piout.net>
 <CACRpkda4mmpbPWa2nD93CvD6HWzcTUDzyyLdQxC2gNB7XiJF3w@mail.gmail.com>
In-Reply-To: <CACRpkda4mmpbPWa2nD93CvD6HWzcTUDzyyLdQxC2gNB7XiJF3w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0148.eurprd08.prod.outlook.com
 (2603:10a6:800:d5::26) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190911101734863
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b652efc-f9c6-4c7d-6b4a-08d73688318e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB2014; 
x-ms-traffictypediagnostic: MWHPR11MB2014:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB20143810FBD5345966D5648087B10@MWHPR11MB2014.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(366004)(136003)(396003)(346002)(199004)(189003)(8676002)(102836004)(81166006)(6486002)(99286004)(31686004)(256004)(7736002)(476003)(11346002)(2616005)(478600001)(446003)(2906002)(81156014)(6246003)(229853002)(6512007)(52116002)(316002)(386003)(6506007)(561944003)(53546011)(31696002)(36756003)(86362001)(26005)(3846002)(54906003)(6116002)(966005)(71200400001)(14454004)(6436002)(5660300002)(4326008)(53936002)(66946007)(66476007)(66066001)(66446008)(66556008)(64756008)(6306002)(76176011)(486006)(14444005)(186003)(71190400001)(8936002)(7366002)(7406005)(7336002)(110136005)(7416002)(25786009)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB2014;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9ZYVfjP1ist2B2MggB9b6qbpc2hbX9k9Db0knP4r3h7t30+es7krnrTWempzQvSE7ivr4RaXxDbWutMp9QKtwyMCIBLB+BzmejB4HOA40AcPy4lEcFcmZoG4O9OoHMEf0bJ8QesOCkcSzajxK/h661eIJC3ihT3kA7UVQJZwrmaBXpfRALyL1ittkfeMCFlE6Fbr1OsthlxXiBolWixQN10Nd8p1yUUCOopmWGMkv/AR89BeAGIkpghGCIHz96jWArKO+1IzJKyTzis+9H2hncG4Vu5HazrUzFFRxR/WTixiDMH+p+Jfmki45flrIAkZEy/Hyr5A7m1oI6c7hxwHKQh61Xti3CXKQALaENTF1rQk6AyLa9dISE4CtMzSRt+EFctVcqa3RXnc6U3ccyFXt1r3dTwGLCL2mNANGR825ZM=
Content-ID: <91BD4C01564D5B4796147CA97CB4AEED@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b652efc-f9c6-4c7d-6b4a-08d73688318e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 07:18:07.3772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uMUT+ypfk3g/mhDa+l4TgD1Zlz+h1amT0zYbxibVM8obKls6lOW1UeKYd9eJKluN+BN+KyUspHCxfAsWOZ+cWofVvFIFbER9QO56zxzPQ1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_001816_043437_A484E761 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tmaimon77@gmail.com, nsekhar@ti.com, guoren@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, heiko@sntech.de,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 khilman@baylibre.com, Ludovic.Desroches@microchip.com, linux-imx@nxp.com,
 u.kleine-koenig@pengutronix.de, uclinux-h8-devel@lists.sourceforge.jp,
 marc.zyngier@arm.com, s.hauer@pengutronix.de, linux-unisoc@lists.infradead.org,
 khalasa@piap.pl, tglx@linutronix.de, sbranden@broadcom.com,
 linux-kernel@vger.kernel.org, ralf@linux-mips.org, paul.burton@mips.com,
 kernel@pengutronix.de, mark.rutland@arm.com, jhogan@kernel.org,
 palmer@sifive.com, eric@anholt.net, thierry.reding@gmail.com,
 manivannan.sadhasivam@linaro.org, ysato@users.sourceforge.jp,
 zhang.lyra@gmail.com, daniel.lezcano@linaro.org, jonathanh@nvidia.com,
 bgolaszewski@baylibre.com, kgene@kernel.org, alexandre.torgue@st.com,
 linux-arm-msm@vger.kernel.org, sudeep.holla@arm.com, f.fainelli@gmail.com,
 john.stultz@linaro.org, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 baohua@kernel.org, kaloz@openwrt.org, sboyd@kernel.org, patrice.chotard@st.com,
 wahrenst@gmx.net, mcoquelin.stm32@gmail.com, narmstrong@baylibre.com,
 linux-tegra@vger.kernel.org, festevam@gmail.com, lorenzo.pieralisi@arm.com,
 benjaminfair@google.com, shc_work@mail.ru, krzk@kernel.org, yuenn@google.com,
 wens@csie.org, bcm-kernel-feedback-list@broadcom.com, orsonzhai@gmail.com,
 linux-snps-arc@lists.infradead.org, rjui@broadcom.com, vz@mleia.com,
 john@phrozen.org, tali.perry1@gmail.com, avifishman70@gmail.com,
 venture@google.com, lftan@altera.com, linux-oxnas@groups.io,
 shawnguo@kernel.org, afaerber@suse.de, baruch@tkos.co.il,
 maxime.ripard@bootlin.com, liviu.dudau@arm.com, linux-mips@vger.kernel.org,
 linux-riscv@lists.infradead.org, openbmc@lists.ozlabs.org,
 linux@armlinux.org.uk, agross@kernel.org, slemieux.tyco@gmail.com,
 devicetree@vger.kernel.org, aou@eecs.berkeley.edu, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, ssantosh@kernel.org,
 matthias.bgg@gmail.com, monstr@monstr.eu, baolin.wang@linaro.org,
 vgupta@synopsys.com, Nicolas.Ferre@microchip.com, linux@prisktech.co.nz,
 nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 11.09.2019 03:03, Linus Walleij wrote:
> External E-Mail
> 
> 
> On Tue, Sep 10, 2019 at 4:11 PM Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
>> On 10/09/2019 16:08:26+0100, Sudeep Holla wrote:
>>> On Tue, Sep 10, 2019 at 02:51:50PM +0000, Claudiu.Beznea@microchip.com wrote:
> 
>>> In that case, why can't we identify capability that with the compatibles
>>> for this timer IP ?
>>>
>>> IOW, I don't like the proposal as it's hardware limitation.
>>
>> To be clear, bot timers are exactly the same but can't be clocksource
>> and clockevent at the same time. Why would we have different compatibles
>> for the exact same IP?
> 
> In that case why not just pick the first one you find as clocksource
> and the second one as clock event? As they all come to the
> same timer of init function two simple local state variables can
> solve that:
> 
> static bool registered_clocksource;
> static bool registered_clockevent;
> 
> probe(timer) {
>    if (!registered_clocksource) {
>        register_clocksource(timer);
>        registrered_clocksource = true;
>        return;
>    }
>    if (!registered_clockevent) {
>        register_clockevent(timer);
>        registered_clockevent = true;
>        return;
>    }
>    pr_info("surplus timer %p\n", timer);
> }
> 

That was also my proposal for the driver I'm sending this series for (see
[1]) but it has been proposed to implement a mechanism similar to this one
in this series (see [2] and [3]).

Thank you,
Claudiu Beznea

[1]
https://lore.kernel.org/lkml/1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com/
[2]
https://lore.kernel.org/lkml/a738fce5-1108-34d7-d255-dfcb86f51c56@linaro.org/
[3]
https://lore.kernel.org/lkml/2f831f1b-c87d-48bd-cf02-2ebb334b964c@linaro.org/

> Clocksource and clockevent are natural singletons so there is
> no need to handle more than one of each in a driver for identical
> hardware.
> 
> With the Integrator AP timer there is a real reason to select one over
> the other but as I replied to that patch it is pretty easy to just identify
> which block has this limitation by simply commenting out the IRQ
> line for it from the device tree.
> 
> Maybe there is something about this I don't understand.
> 
> Yours,
> Linus Walleij
> 
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
