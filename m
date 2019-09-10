Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA1AAEDC4
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 16:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHefuXK2fqrcQakbJjrfitkUyu6h+9gL7hzqePuitvU=; b=QVJ886wQg1oJkj
	6wbFgOrC3L7OhVE5XdT6Udgmghzvb8/GqgdWOxXJHxbSAjdIUOAhfNC3gxBD5TPaDNIbH7frgYr3+
	s/b4cTmz/nq3MAnUNg1OBAmjtTrI5R34louL/gDllhxCRF5Nkxf/RbNrc4MGdR+rpysDolsEetq+F
	11DYd3RPA92D6mlDz4GRZcplsy68zHQy4W/gZFLO41eP/6JWdbqESPIAI0s1ygUUe5W9533fL2d6/
	c+b51y8V7bpxySuhDWBqFVdGyQtXBKDIrLvrEz+0IJ0FvgPKkpmOMn0X9IvGurPvXZRB5zrkV6UVl
	nKUEFn6L60Mv2qHtDgZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hV4-00008T-CF; Tue, 10 Sep 2019 14:52:10 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hUw-0008Uu-PO; Tue, 10 Sep 2019 14:52:04 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: hj/coaYaVV+Dxo+UcLbAXPSov6Yu+Y+Lk1QpzU5dClQH1vjVfZJQzhHN2960q/Pa//EKn3xgyP
 r0DTL3N83FgMnG6Lei2UuX/GFbw9qQlL5eJX84gU9SL3q63+tfrio38/8+vIpdnvoT/EBRGG8m
 ep373QRUe9puTQCCwBh49IDHbRi8vtJbVLeCtVsSfs65NRNw0kpo/y6WHg4PKZti+C32whmnsW
 gF26qCdvNax5mFf4H5OOtkZIKjMT1eS+vO5KagRuawffR+nUUTYXwU3hUvv8iFd0IQMaIMFmr6
 g2w=
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="48523099"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Sep 2019 07:51:57 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Sep 2019 07:51:56 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 10 Sep 2019 07:51:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZtymn7lM6rryEDJ5ehHokDn6Pnv5+1NZG/aBzJH63hn7TNJJhF4SBxTkviXd09eu7I5KsipJCPwYtx5BSCXOB44gX2xv/k8gzcueAdUrAFrnBALTDAQU5ooIDiVhJRelDoPjwu2DTL+lSKNVwFDxogSmAHDtnrVgHLgfYFvxbdtQBM2Ovg+Rif7vq+eEUL7iQ5X94Wf/D+/I9KqRe0eUm/rFCrD2vtzl/9lNzBOJe5K/9EorepwUxYddQee0bULkxyKXuYz3WIUXKISxDSqDQuxsFYO52Pj8M+RAoO8EblMMG+o/E7iPY3JeT4ba0wG88jadn8lDVL80Jrfblg2Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6UY7RPL1SRCS8RQhCidWKiznvKwLpijbsqfgpQH321Q=;
 b=dvb/b6QXHlzO+SuHH6Kk2k+dkVoKFhL8p9+FEeH8oAyg/1y39p6CNPPcoi7L2Gf0zq9VemsHPPvVHliPlDQALBeknhw5ytY2GMNgLjYlAiUE9AG9KhsOH/YGYAKc62M13s89W6z21++l064eB1/RBlzr/hGHeypi++iPRlfbFzuOhLnaeQvA8BISI9+Ove5N6WhjqOoFVrYx61WtIU7DIsnaUf6P/TeoapMf7X4JJPpgWEs3XyZh52shLLxs7AoEK+QQAEIu/H1Xv5z2VhzXjmbtdsaq+SpkGvyzzc7xeGDayIap/FSCen2AptC/ZKgAxxUECkpVHZCwHP6kaQA1aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6UY7RPL1SRCS8RQhCidWKiznvKwLpijbsqfgpQH321Q=;
 b=hPNt+ru8um2uoGVoNEW0xUI6i6sNNMKnrQdatLY+2sphiSQdgCcxqae4ctl7zMt0x1UIphNBKUZVEAGCqvH+tvPayCfGVuwHEeclEGa8g31tJ1//FWqyqEBH3hLbkjEcPyvRDRai+STj2jexBKKQIhkinAdzJMr+brWHivtvW6o=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1997.namprd11.prod.outlook.com (10.169.237.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Tue, 10 Sep 2019 14:51:51 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::4c34:6012:3622:68ed]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::4c34:6012:3622:68ed%3]) with mapi id 15.20.2241.018; Tue, 10 Sep 2019
 14:51:51 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sudeep.holla@arm.com>
Subject: Re: [PATCH 4/7] dt-bindings: chosen: Add clocksource and clockevent
 selection
Thread-Topic: [PATCH 4/7] dt-bindings: chosen: Add clocksource and clockevent
 selection
Thread-Index: AQHVZ96b4IKYTCqlaU2ZD1E6YcOJIack+WqAgAAFQYA=
Date: Tue, 10 Sep 2019 14:51:50 +0000
Message-ID: <ab43b209-78fa-0cab-b8ea-acd4c550e689@microchip.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <1568123236-767-5-git-send-email-claudiu.beznea@microchip.com>
 <20190910143231.GB14966@e107533-lin.cambridge.arm.com>
In-Reply-To: <20190910143231.GB14966@e107533-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0051.eurprd04.prod.outlook.com
 (2603:10a6:802:2::22) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190910175119564
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99340154-b0d1-45b1-7033-08d735fe6971
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1997; 
x-ms-traffictypediagnostic: MWHPR11MB1997:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB199779D30BF8D5E16ADFB73287B60@MWHPR11MB1997.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01565FED4C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(366004)(346002)(136003)(396003)(189003)(199004)(64756008)(7736002)(14444005)(256004)(14454004)(316002)(66556008)(66476007)(6916009)(54906003)(6436002)(5660300002)(6486002)(71190400001)(71200400001)(66946007)(4326008)(476003)(446003)(11346002)(86362001)(2616005)(81156014)(31696002)(486006)(52116002)(8676002)(26005)(66066001)(6512007)(6306002)(53936002)(66446008)(53546011)(6506007)(386003)(186003)(102836004)(76176011)(6246003)(25786009)(6116002)(3846002)(31686004)(305945005)(81166006)(7416002)(7366002)(7406005)(7336002)(2906002)(478600001)(966005)(229853002)(8936002)(99286004)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1997;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6HJvO1mYEeSrMm/QQCaomr3gkSmOgErwWRK7r+DuJBNAenKswgg0Wfj4hHZZxMnrw5AYnNnBTT02FiFDB4mRqQIMvBxIemG9CxljUqleAKaJ9tqrH+vHfaDry39OKN5blKRWKEH2HJ35oT55R1P3XXF+dRAWn+yKYpLNCY39hE07es8onJTkP7AUr+8nG+A1Hd+CAMvdUwrYwj5uud3nkUHqE7qsGTWedv+cGHgsI8VAiBq32xFFPCfVDRXpf/3spIH/DKXZ4aCgXgZoDT0tNrOwxzBFc5eK8J+6A60K/k6EcXEAatc+qoLKTEXm2EJik+xRtdHF9GqKZpbHPQiHDCzk8Tw6oWzX9TRYVLKjTLmkR+JeQs+QVQSYXHDv/kiPVZk5yV44hSLSqURSUSZqGK7/v1O2ww9UbWzEyTsDCKM=
Content-ID: <51C9C1F64856FD429E7E3EB16F23D5E7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 99340154-b0d1-45b1-7033-08d735fe6971
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2019 14:51:50.4921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zfwm0bNn+9NaG7jBfnA1hbn3oNCSNZYGb/g/PyNmSonp1w6yheMpRfH80FjbFacz0q6doRVdRLozABPYL+kx8aBEF+n9Hnpi9Y2qhCNBgdo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1997
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_075202_897790_0BE0A607 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
 alexandre.torgue@st.com, linux-arm-msm@vger.kernel.org, f.fainelli@gmail.com,
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



On 10.09.2019 17:32, Sudeep Holla wrote:
> External E-Mail
> 
> 
> On Tue, Sep 10, 2019 at 04:47:13PM +0300, Claudiu Beznea wrote:
>> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
>>
>> Some timer drivers may behave either as clocksource or clockevent
>> or both. Until now, in case of platforms with multiple hardware
>> resources of the same type, the drivers were chosing the first
>> registered hardware resource as clocksource/clockevent and the
>> next one as clockevent/clocksource. Other were using different
>> compatibles (one for each functionality, although its about the
>> same hardware). Add DT bindings to be able to choose the
>> functionality of a timer.
>>
> 
> Is the piece of hardware not capable of serving as both clocksource
> and clockevent or is it just the platform choice ?

In my case, the hardware is not capable of serving at the same time
a clocksource device and a clockevent device.

First, I published v1 for a hardware device having this behavior at
[1] requesting 1st probed hardware device to work as clocksource and
the 2nd one to work as clockevent. The discussion at [1] ended up with
the idea of having a mechanism to specify which hardware device behaves
as clocksource and which one behaves as clockevent.

Thank you,
Claudiu Beznea

[1] https://lore.kernel.org/lkml/1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com/

> 
> --
> Regards,
> Sudeep
> 
> 
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
