Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F316AF683
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Sep 2019 09:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LupRwhIGDk01nVNqjqDXijdKB9ElADePlyeG6uWMHhI=; b=I54dU4VFiH7fLB
	6a3nLAVlVLWlyfVgVJbJRHeK3j5O4Gw6Mi/u7yWJ6LT1NEm6XssewfR8IOcoxJHE6jmiu9sdq3ThW
	aKfO76535Tn5Mk19xFL+X/hnCZ8c0zmQCFaw35w2AtSSw9p4jqT/4T59pmYRC8ftIiKg3atcPcXHS
	GSqWOLXO+2MXAgFdvhwt8iNDol92UHex2EHau/Rt3vfC+aTbh36ko7OsOb9hYld7PZeEPTYBZMvwG
	2MLFfcOG72L96mcWJ7V99OvksgfNonR3nak3rOQXT9jEFOFjkY2MQ1Yin6D6+Syl+AupNKOm58C50
	SzV5JG5AeCqKCfhqyjBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wpr-0005GI-2y; Wed, 11 Sep 2019 07:14:39 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wpe-0005DQ-1s; Wed, 11 Sep 2019 07:14:27 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: JDPpigGbRSWL+j+pcuOH+LurKTowc/4sbyQumW2fCQrDDaMCsinFszmlv1jnX/C+UwL8H10cGn
 +PKWtrbagGeeOti33o3j+69psh52+cnaD9WwEVXWw4JfYqEmK1S5J3gc67zQzqFFt7DuobGene
 5QUym5+80PlRuTTsKTf2+GDNpYmArmgYVRjD1Ukk5djDdQreKiy7WiyBOk7NLTCa6GWYm/FxTQ
 6pRmLculc6ZgZRhvaDMy1dU69WGMlT/VRiq3lspnHkfMDVW6rQcrdm48R64Hk8zyRo3PTno+L4
 1s0=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="48469517"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 00:14:17 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 00:14:16 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Sep 2019 00:14:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CqADawqZICRPvUz66MrTow4+KF4hmrrJadMKRGG2KcykLp/hHn4+JqKwnqIwfxtmS2lBmNb18iuTP4EYOWpILpiFJGzDIlT2Vy8+R6wtZekjo97NLRtVyJRAhGx0tDSEb4rjQzp4v+l/h/qGQ120IA/Ol/iCMWmHHECDmyKvHX1emQ+q7Y83PqbsReYbRk/jHCKeRpZIEwzAIfo2Jz/xo72bQko7u0ckqiW54CVN0ZEIMphI3CRG+OtQ68t8xjNiFPsek7CApMIShP5fcYkFuHq3MOBYFEhGE4AmJ7lyurAjBQtmI//jLYKBj+LLZSPfAgEdBYYV/0Z4JeQW0uZK3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azcDEEvcMqMNYAqGSDo/gDDUFld4AFYh9dLRkG/lT0U=;
 b=K24p5EUnM5+89Fq392N9mtQR0qLpsXZ/VCJnJHEAxvhgTB5aEql9Zd4IxvQaNAOgPJEtT6SKJpd32eHHTFxkm2lpWAbl4J7+iEQvWR/fmBTt2+p7OxKb1ibbQOExomJ2L09qElU3gqF24XTbVU2inYBRHJPvUF3ehYMQIDLRF5G17BFC6bptlocrQ+Bqwa5jI5XtaYWKxuisbGyrpJ0jJZVjd3zbhY0T9inh7XEo3NLsy3K6l/avRO14uT5WTGrvDRisHoM1wlUmVoh20lkuubNxyY63JPHZJEBTC7HjNCB4mWYZweql3M5wHY2QWwg+EFSa14VU6dLRYKuyuaMghg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azcDEEvcMqMNYAqGSDo/gDDUFld4AFYh9dLRkG/lT0U=;
 b=FCiYFQPbIy8DuN8DKeVHmNPSJ6bckDvaVpUT3XwBxLQPZxrWRcH/+MUrsOFccQXJ5VUn1jWn2qObH/kdI4GsN4KTMdpZXg/52tkZpRJ8x8wOGnhjck/E4D2Jrr1bMMrBZbZaSRQ7RwRa1oRt7EdNJjBQBC8anLzf0mmgHRzyamA=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1471.namprd11.prod.outlook.com (10.172.53.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Wed, 11 Sep 2019 07:14:12 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::4c34:6012:3622:68ed]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::4c34:6012:3622:68ed%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 07:14:12 +0000
From: <Claudiu.Beznea@microchip.com>
To: <linus.walleij@linaro.org>
Subject: Re: [PATCH 7/7] clocksource/drivers/integrator-ap: parse the chosen
 node
Thread-Topic: [PATCH 7/7] clocksource/drivers/integrator-ap: parse the chosen
 node
Thread-Index: AQHVaDJo6+m97p4pO0OlgZvpR/W4dqcmEH0A
Date: Wed, 11 Sep 2019 07:14:11 +0000
Message-ID: <9c46343e-504e-fbd9-45aa-a67416109e36@microchip.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <1568123236-767-8-git-send-email-claudiu.beznea@microchip.com>
 <CACRpkdYsCFUNAtarTQmaA2a3-HZjiVjxQ-Wr-7wJp9xrtQRKCg@mail.gmail.com>
In-Reply-To: <CACRpkdYsCFUNAtarTQmaA2a3-HZjiVjxQ-Wr-7wJp9xrtQRKCg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR03CA0065.eurprd03.prod.outlook.com
 (2603:10a6:803:50::36) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190911101342597
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 118d1a95-0d94-4552-8d57-08d73687a523
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1471; 
x-ms-traffictypediagnostic: MWHPR11MB1471:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB14719355846234D641EF079F87B10@MWHPR11MB1471.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(366004)(376002)(136003)(199004)(189003)(31696002)(6486002)(71190400001)(71200400001)(229853002)(3846002)(54906003)(6116002)(316002)(86362001)(2906002)(966005)(6916009)(6436002)(14454004)(31686004)(478600001)(66066001)(8676002)(11346002)(53936002)(446003)(4326008)(81156014)(81166006)(386003)(6506007)(25786009)(5660300002)(2616005)(6306002)(476003)(486006)(26005)(186003)(53546011)(8936002)(102836004)(6246003)(66476007)(66446008)(64756008)(7336002)(7406005)(7366002)(7416002)(66556008)(256004)(66946007)(14444005)(7736002)(52116002)(76176011)(305945005)(6512007)(36756003)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1471;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yZHDuRVbJtxDW9Vlx+3rF7LfIK62FNw7M7eqPDoSz38zIUhSEDkJPLf/6BC6uZOHK/iiaKdDlZt4xaTth+TTKcN3AZ3+ka6Az9/wNAdVjwSpSeqc6R1tpoXKaJPYPU8P8qvu+2AXEQBhT06uiPRdAKg8Uka/mjS8e55slOUTsvJAS5dcPz12RVXADuC71oU/hoiY8UPH//WycHD5yKpw0f1lT4Os+ySahdGNMHTUQnEm3INUHG3VgdLuCXVIQGvk4rEVktz9L3V6qKqXKCm246OUTsJitCD9WVLmOlJEMjYZRvUZ+SG2P7ORWwHgmlnb35cttbnPmSHbWtg4jlophNZDNBaRl2WTipJ1TIRUXIP9CtInZi0mElJFokPjF2G1nDRoH+lDjQLEPohCEz7T+hrZTPbxa666xZfqWACcOYU=
Content-ID: <561EB454363D5F43AF07179372AB2643@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 118d1a95-0d94-4552-8d57-08d73687a523
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 07:14:11.7239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G8BB5SggMN/RZAQ/x3o8i1jxF1RDGyPtrctuYyT08AB+oJoCJ4yvlUA0dPwu7C0UrLvxCN5n2PEpEcZh8RjO/N27OmIc2rZgH2E4y5KlHXw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1471
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_001426_139162_EAB90403 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
 kernel@pengutronix.de, mark.rutland@arm.com, alexandre.belloni@bootlin.com,
 jhogan@kernel.org, palmer@sifive.com, eric@anholt.net,
 thierry.reding@gmail.com, manivannan.sadhasivam@linaro.org,
 ysato@users.sourceforge.jp, zhang.lyra@gmail.com, daniel.lezcano@linaro.org,
 jonathanh@nvidia.com, bgolaszewski@baylibre.com, kgene@kernel.org,
 alexandre.torgue@st.com, linux-arm-msm@vger.kernel.org, sudeep.holla@arm.com,
 f.fainelli@gmail.com, john.stultz@linaro.org,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, baohua@kernel.org, kaloz@openwrt.org,
 sboyd@kernel.org, patrice.chotard@st.com, wahrenst@gmx.net,
 mcoquelin.stm32@gmail.com, narmstrong@baylibre.com,
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



On 11.09.2019 02:48, Linus Walleij wrote:
> External E-Mail
> 
> 
> On Tue, Sep 10, 2019 at 2:50 PM Claudiu Beznea
> <claudiu.beznea@microchip.com> wrote:
>> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
>>
>> The driver currently uses aliases to know whether the timer is the
>> clocksource or the clockevent.
> 
> OK maybe that wasn't the most elegant solution.
> 
>> Add the /chosen/linux,clocksource and
>> /chosen/linux,clockevent parsing while keeping backward compatibility.
> 
> This is not how I would solve this today.
> 
> I would simply remove/comment out the IRQ from the timer
> that cannot be used for clockevent from the device tree
> (apparently it doesn't work anyway), and make the code only
> pick a timer with a valid interrupt assigned as clock event,
> while a timer without interrupt can be used for clock source.
This could also be used but it will not be compatible with old device
trees. There are different ideas implemented in timer drivers with regards
to this issue. Some of them are registering 1st timer to work as
clocksource/clockevent and the 2nd one to work as clockevent/clocksource.
Some are using different compatibles, one for clocksource, one for
clockevent although these compatible seems to be for the same hardware type
(I can point drivers/clocksource/timer-sprd.c).

The idea with this series was, at it has been proposed in [1] to have one
single mechanism for this kind of situations.

Thank you,
Claudiu Beznea

[1]
https://lore.kernel.org/lkml/2f831f1b-c87d-48bd-cf02-2ebb334b964c@linaro.org/

> 
> This has the upside of not needing any special aliases or
> chosen things.
> 
> Yours,
> Linus Walleij
> 
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
