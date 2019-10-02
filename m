Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B770C89BF
	for <lists+linux-riscv@lfdr.de>; Wed,  2 Oct 2019 15:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHyfNW7Fn/r1ky8HMv5+0X0ZvDl+6DSGYBGGPtjJbbM=; b=u6NPMwPTghuD78
	MefGoOeooVQIKo7t0k1mpEpDNBoMIGY3BsoGaGvbz1/TUp+AxJfebIkm3EDSwVpElIctRjJ4Nddaq
	IOVJUgpnTC+zqASXXrshhnV2MoEmGN3ErSwkdzLQwLxmlVhRHKcQf0+rebxhmmBr/cvA0gEUZMMzf
	iS1NMqojko0X6iz+0ql9+ERUbcMVIlxfdMU0a0VhOuMO2YVkB5XDpWmPN3nco84uxQiwaXE2JKflf
	lZxuVjbUU6lTo+IKPiJi6IwFthhNcAINDc1zwfh5gCXYl6YPYHiVAOsxpAPAnE8pOUgWWY4aEogDY
	BUROQ98LKxEtKhEBNsIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFel4-00012k-8t; Wed, 02 Oct 2019 13:33:34 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFekw-0000zx-3X; Wed, 02 Oct 2019 13:33:30 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: LntMiOES/WAkcJeSiLcxr3vuSUKVI1BsEXihMWkjfyHryPgDz/T1/FSw3Y9YiH8EzdMaJQejhE
 85F4huDjITvY2+EWK/VtXNHNM/fDpnqBDwFd9eUm/bCLxQwl7c4UYty2GAxACAv0V/VpBI4Rd4
 P9DX08NShfAwDTqWuUeY1GWN3tdrHW1jWoRNCzTezC+cz1x1eg9GCdVJtDdRFLDOu9CXfoLXT3
 Bpy7caSLa7dcrg72WxVU96XpmSAnnxAyo/3vkD19Ya4B0AQuuJ/b3PoPBJ0NAHwnrelU1XfGFq
 urM=
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="50128628"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Oct 2019 06:33:11 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Oct 2019 06:32:47 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 2 Oct 2019 06:32:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IPgeFWkvRGJ5QWvSM9FugyWLx73+9L6Viwx3fZqt0/Pfr5mPy3HSPze4gGASZ+0+QygZBG9Plr4oNMGbFpqfZMzXQxrf61u9TdkZqRFn6ag2YB83Qn9qlmyhCKY/Ad02ytxQEd0Pj+PcT3oSHuQI05W4pG8/M9kh2rdiPhQUeoOJvuYS1IcIL/F8yFsscs/h1Y4qA5WgJf/CJdnYRr6NKZYig0aZ2ZYGxzP6qr6thTLvFW5wHPEojH58cVL19VoghscAYesXANdq6bGMZztr9y9dEEt3qQ7sUSpQ5SM4vgGgJ3noyi89Fv1oP14AJJm2OYs/8eVVhtfdI0U4UYaPag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a1h85+A/c7G+3aM8NDuUMkKUI0SGdCgarlxD+Bi8H6A=;
 b=W5VmdlMBqg+67W8SVnYaKwj+pwCfKVXUFELBQGq5f125Qv/9rd5v4fTK6grcTjrRSaLYkL9mZBdy0RMu5rsqIXrAwckRW26FA+eNq+nY9/kHb0kROaRUAx7ulZs3ldKsV8BxqJg8F1ZPz2LMbww3us93KswN6pnFukwflg1JBSlZulFBk+PFtNDtN3NUtwscP9xKe70BWQ3r7Ww8fC2GjbVcGYIHJmOIfQmZGfNTcx7f0/sGuvJ4UaPcwQkVSDOU1fkAy1XDzULTjH8R/CwmXnfDZKEuhuZwa5JRfCbE1VH+RIrpOHjD8I6qs8wxXCmH4Sue2UXoRzM+RdpZCKgkRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a1h85+A/c7G+3aM8NDuUMkKUI0SGdCgarlxD+Bi8H6A=;
 b=tiGEr4UL4oketTH3KnwMGXBJNey9VFiDGFt95+bdlkl24DL8ZoLG3lsgAyJPNQUs+E850ajge3hfWBKhE8lstehZIGzAVL5oXSELXEt+WLxsVVzLrukL+Otg0jBwd5uP6ni+1W01v/sQDognfKIrSb5MNK/3zUvFpHKSpCz3rec=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.85) by
 DM6PR11MB3226.namprd11.prod.outlook.com (20.176.120.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.22; Wed, 2 Oct 2019 13:32:44 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22%6]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 13:32:44 +0000
From: <Claudiu.Beznea@microchip.com>
To: <robh@kernel.org>
Subject: Re: [PATCH 4/7] dt-bindings: chosen: Add clocksource and clockevent
 selection
Thread-Topic: [PATCH 4/7] dt-bindings: chosen: Add clocksource and clockevent
 selection
Thread-Index: AQHVZ96b4IKYTCqlaU2ZD1E6YcOJIQ==
Date: Wed, 2 Oct 2019 13:32:44 +0000
Message-ID: <e78e7520-213c-8075-d71e-b8db2ebdceb7@microchip.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <1568123236-767-5-git-send-email-claudiu.beznea@microchip.com>
 <20190910143231.GB14966@e107533-lin.cambridge.arm.com>
 <ab43b209-78fa-0cab-b8ea-acd4c550e689@microchip.com>
 <20190910150826.GA18308@e107533-lin.cambridge.arm.com>
 <20190910151055.GX21254@piout.net>
 <CACRpkda4mmpbPWa2nD93CvD6HWzcTUDzyyLdQxC2gNB7XiJF3w@mail.gmail.com>
 <a2aca46a-8eb9-d8a8-de42-9850a8a8f44c@microchip.com>
 <20190930143246.GA19967@bogus>
In-Reply-To: <20190930143246.GA19967@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0102CA0049.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::26) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:59::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191002163208083
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c5b47fd1-47de-4b13-94c1-08d7473d01c5
x-ms-traffictypediagnostic: DM6PR11MB3226:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3226E6E33A86436D99026FFF879C0@DM6PR11MB3226.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(346002)(376002)(39860400002)(189003)(199004)(25786009)(4326008)(64756008)(66476007)(66556008)(14444005)(316002)(2906002)(5660300002)(446003)(11346002)(52116002)(256004)(478600001)(76176011)(71190400001)(66946007)(66446008)(31686004)(6512007)(6246003)(54906003)(3846002)(7736002)(6116002)(229853002)(99286004)(6506007)(66066001)(386003)(102836004)(71200400001)(305945005)(14454004)(53546011)(36756003)(6916009)(6436002)(81156014)(26005)(486006)(81166006)(86362001)(7416002)(8936002)(186003)(476003)(7366002)(8676002)(7336002)(31696002)(2616005)(561944003)(7406005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3226;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AX/3+MrXQLrMZGdCMzz7qloA/HtezVya7Wd2Gdthc3hEhxRGyNjXPPBVOp241zUmLJoG/QGOEBSUMgbCSruaKpBOQiJBmK9ADFIpe7S8Rx3Krd8kETPJpIRin0dIY9z2QIuXWx0V4O5nIOYpaS4VWpA0PDM6SBk7DjFKQKlsgl/bW+bs1/GYIF3GSIMY/ducMo7hiBtGeIAFJYAYrrg7OxP/K6duLiQ4O+yN60smktdAbi8RYf4DzYvUHJcG8/XgiFm/EAif5yyx9fvC/ZNmRhIhCf5CEwNN9g6Qcha9ZqBLbh9PMa0GWPV6aJbTLGbwK+/0QnZiuIyHo5FFJfsxAfu+Y/TOhfQiuqyV3t93Dw4965Na9lHL12yRgtIeQOOKgH4iE2dGSY1CYx/zIxNKpfdQaJ3jMqelVmFbokv3/Ts=
Content-ID: <2405F53375D403478DD0705798481038@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c5b47fd1-47de-4b13-94c1-08d7473d01c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 13:32:44.6166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3QxSm5NnT2VN7Bk+EYcb3Vi8JjlvfCncfSxAs7KXlM2QPr2KkwhqjrCGVuRB/+06LMTmBgixsKl/QF0xDu22D718HNPitHpWDT0SOXlnEgs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3226
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_063326_248058_62BB0768 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: tmaimon77@gmail.com, linus.walleij@linaro.org, nsekhar@ti.com,
 guoren@kernel.org, linux-stm32@st-md-mailman.stormreply.com, heiko@sntech.de,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 khilman@baylibre.com, Ludovic.Desroches@microchip.com, linux-imx@nxp.com,
 u.kleine-koenig@pengutronix.de, uclinux-h8-devel@lists.sourceforge.jp,
 marc.zyngier@arm.com, s.hauer@pengutronix.de, linux-unisoc@lists.infradead.org,
 khalasa@piap.pl, tglx@linutronix.de, sbranden@broadcom.com,
 linux-kernel@vger.kernel.org, ralf@linux-mips.org, paul.burton@mips.com,
 kernel@pengutronix.de, mark.rutland@arm.com, alexandre.belloni@bootlin.com,
 jhogan@kernel.org, palmer@sifive.com, eric@anholt.net,
 thierry.reding@gmail.com, manivannan.sadhasivam@linaro.org,
 ysato@users.sourceforge.jp, zhang.lyra@gmail.com, daniel.lezcano@linaro.org,
 jonathanh@nvidia.com, bgolaszewski@baylibre.com, kgene@kernel.org,
 alexandre.torgue@st.com, linux-arm-msm@vger.kernel.org, sudeep.holla@arm.com,
 lorenzo.pieralisi@arm.com, john.stultz@linaro.org,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, baohua@kernel.org, kaloz@openwrt.org,
 sboyd@kernel.org, patrice.chotard@st.com, wahrenst@gmx.net,
 mcoquelin.stm32@gmail.com, narmstrong@baylibre.com,
 linux-tegra@vger.kernel.org, festevam@gmail.com, f.fainelli@gmail.com,
 benjaminfair@google.com, shc_work@mail.ru, krzk@kernel.org, yuenn@google.com,
 wens@csie.org, bcm-kernel-feedback-list@broadcom.com, orsonzhai@gmail.com,
 linux-snps-arc@lists.infradead.org, rjui@broadcom.com, vz@mleia.com,
 john@phrozen.org, tali.perry1@gmail.com, avifishman70@gmail.com,
 venture@google.com, lftan@altera.com, linux-oxnas@groups.io,
 shawnguo@kernel.org, afaerber@suse.de, baruch@tkos.co.il,
 maxime.ripard@bootlin.com, liviu.dudau@arm.com, linux-mips@vger.kernel.org,
 linux-riscv@lists.infradead.org, openbmc@lists.ozlabs.org,
 linux@armlinux.org.uk, agross@kernel.org, slemieux.tyco@gmail.com,
 devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 linux-mediatek@lists.infradead.org, ssantosh@kernel.org,
 matthias.bgg@gmail.com, monstr@monstr.eu, baolin.wang@linaro.org,
 vgupta@synopsys.com, Nicolas.Ferre@microchip.com, linux@prisktech.co.nz,
 nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 30.09.2019 17:32, Rob Herring wrote:
> On Wed, Sep 11, 2019 at 07:18:07AM +0000, Claudiu.Beznea@microchip.com wrote:
>>
>>
>> On 11.09.2019 03:03, Linus Walleij wrote:
>>> External E-Mail
>>>
>>>
>>> On Tue, Sep 10, 2019 at 4:11 PM Alexandre Belloni
>>> <alexandre.belloni@bootlin.com> wrote:
>>>> On 10/09/2019 16:08:26+0100, Sudeep Holla wrote:
>>>>> On Tue, Sep 10, 2019 at 02:51:50PM +0000, Claudiu.Beznea@microchip.com wrote:
>>>
>>>>> In that case, why can't we identify capability that with the compatibles
>>>>> for this timer IP ?
>>>>>
>>>>> IOW, I don't like the proposal as it's hardware limitation.
>>>>
>>>> To be clear, bot timers are exactly the same but can't be clocksource
>>>> and clockevent at the same time. Why would we have different compatibles
>>>> for the exact same IP?
>>>
>>> In that case why not just pick the first one you find as clocksource
>>> and the second one as clock event? As they all come to the
>>> same timer of init function two simple local state variables can
>>> solve that:
>>>
>>> static bool registered_clocksource;
>>> static bool registered_clockevent;
>>>
>>> probe(timer) {
>>>    if (!registered_clocksource) {
>>>        register_clocksource(timer);
>>>        registrered_clocksource = true;
>>>        return;
>>>    }
>>>    if (!registered_clockevent) {
>>>        register_clockevent(timer);
>>>        registered_clockevent = true;
>>>        return;
>>>    }
>>>    pr_info("surplus timer %p\n", timer);
>>> }
>>>
>>
>> That was also my proposal for the driver I'm sending this series for (see
>> [1]) but it has been proposed to implement a mechanism similar to this one
>> in this series (see [2] and [3]).
> 
> This comes up over and over, and the answer is still no. Either each 
> block is identical and doesn't matter which one is used for what or 
> there is some h/w difference that you should describe. 

There are no hardware differences in my case. The block just cannot work at
the same time  as clocksource and clockevent. And on SAM9X60's we want to
use it as clockevent for high resolution timers support.

> 
> If you want something that would even be considered to put into DT, 
> then define something BSD or other OS's could use too. (That's not a 
> suggestion to respin this with generalized names.)
> 
> Rob
> 
> 
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
