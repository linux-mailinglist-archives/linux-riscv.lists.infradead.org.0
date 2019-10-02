Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBC5C89CF
	for <lists+linux-riscv@lfdr.de>; Wed,  2 Oct 2019 15:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dR4C0c2prmUlTXSB1MdhC+e1G/onT9DCcuZ9MTLyF2o=; b=dqyUgMlisfmH8Q
	FeQySmxjSEtGxx4dPgT6wRjqkKIWI1E7BHC9djUA7JiiordjBxpMXhF2ejYjSweFYcr595QOOWOZ0
	F6v1fJ4MP5HdaO6Xt4Je7YoIa2IMcjBHBruz1DEipFaJjDwXDNoSKQqJFL1A+VELi6YFCCx2KY5Kq
	+0NRhI7I/TsUK9347u4olIGxbc4qkSW23RtuZs60hePZdqulk6r8dcOXPHtSjsXcfdEqu8XEcL7Q0
	QeNeH/vr7LsOGWdJ+xpz25w5IdQNisZZ92m85ZWyzYxuP93YcZs2iUC7F03Z/Lz4rgaW73Cr+J3d/
	FQpsgBrd1l/j+bsTtmyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFenQ-0002md-Tj; Wed, 02 Oct 2019 13:36:00 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFenK-0002iD-1G; Wed, 02 Oct 2019 13:35:55 +0000
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
IronPort-SDR: 4wJW8Z6pIw5pIUF5ER/InVYiXNlL/seNb69CH0Th+zlLPa0ShU8pnnPDakymNpoBG9viha+SFc
 cG5iDUGBMmGcPcm1bgipavHUex2T/z/vFq406jYcJWF0acTV7J2Y0bjvcHRSGhQTMh+EQD0rUV
 zh140DlLht4jdmYHm/hOX2Vi3jVcWleoDlq7R+9vXBvfDQs/x1lMOIWIaC/hskF2WPSRNFp4U5
 eGA5/2RFBuY8TKKrVE+dHpdkZkcA4Vj/lZHKj0rpPs/7lAR09+ZfHo9vWnrXMs2eu+SWG6PRyp
 QM8=
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="50129074"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Oct 2019 06:35:51 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Oct 2019 06:35:51 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 2 Oct 2019 06:35:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5iFVnEgr0wI+S84W5RERWGPGWDRI0Ah/ZzcjHWfhsJked8FWEbgPULZTQOqcWeGp027VpuiNK7/mKslxJL0dvnifZIK0q0Z/KjU29BlICGACRb9v091Yy1hGp/aGkXByfOEKcUKuGivnMo1m4zYgbFfUnAnDH83Q/ZFBEcRlMDeDHsRgbq0kdvdm5cafhZuxicL2B1o8RZR604BIa1sHQzO71XwUf5EnGTs4GUlU3/uqWr8I4ylCsRJTYL8z8EzGrWnzibl4q++6cSsEcgBxVnpIaE+s+gj0cNKnD5nAE9pT/7VoEffC3HI4gd00WSAA49zyvLy4hl3kDhGie+Xiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5FMHeUvg4V35rtNI89bSKaamLcyISpEcbJjLY1o2vEg=;
 b=EkmV5w/xNuPDIeFZdlGtaSDORY4O28KnMkGABYDsx7oPTkEpG0IMTDzy8odKxR/iOzZd23AS/gQaGrRpUX9mCxDvA2utU/3hqrx2//Vt7/k/cqpP7sEz25//IAvaK6OdyIvNs9hwwxJIzAfB7O69xOzTVAwpCsKUuHHe1KklTIN5qWvFddWgROuYNqMsK571zDlwTLKh0o3duJskAsQJ8y/NOqBZu5Pq+/rM7voCHS5ZhUVmLJQPDycRZ3F87fSFgrIN0C+aDdoEA+DJ0dlXSFRartRXHyCBJSY/0/ETXFm5z/OR3VY652seHV+S9qFlMFChiv8sQ/ufuRAUxYiM/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5FMHeUvg4V35rtNI89bSKaamLcyISpEcbJjLY1o2vEg=;
 b=eE3Mcf1zkc5R4SVTUCCioGIwELmrDm60GckGF+3JFM1u2GcuRlaVeM+YZxR0F91zF+H4XFj/uAgWI+sjejgtBFX4K1IynM52ZV+2Trry6l+OhWXoA04A21ZtzmbjX+xIY8QKc4Jp1Wp4BtmtHVGpVsT+FFanxSalxsyqzLP93EE=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.85) by
 DM6PR11MB3867.namprd11.prod.outlook.com (10.255.61.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.22; Wed, 2 Oct 2019 13:35:47 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22%6]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 13:35:47 +0000
From: <Claudiu.Beznea@microchip.com>
To: <daniel.lezcano@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>, 
 <linux@armlinux.org.uk>, <nsekhar@ti.com>, <bgolaszewski@baylibre.com>,
 <monstr@monstr.eu>, <john@phrozen.org>, <ralf@linux-mips.org>,
 <paul.burton@mips.com>, <jhogan@kernel.org>, <lftan@altera.com>,
 <tglx@linutronix.de>, <vgupta@synopsys.com>, <marc.zyngier@arm.com>,
 <patrice.chotard@st.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <f.fainelli@gmail.com>, <rjui@broadcom.com>, <sbranden@broadcom.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <linus.walleij@linaro.org>,
 <shc_work@mail.ru>, <kgene@kernel.org>, <krzk@kernel.org>,
 <ysato@users.sourceforge.jp>, <liviu.dudau@arm.com>, <sudeep.holla@arm.com>,
 <lorenzo.pieralisi@arm.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>, 
 <kernel@pengutronix.de>, <festevam@gmail.com>, <linux-imx@nxp.com>,
 <baohua@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <baruch@tkos.co.il>, <u.kleine-koenig@pengutronix.de>, <guoren@kernel.org>,
 <kaloz@openwrt.org>, <khalasa@piap.pl>, <ssantosh@kernel.org>,
 <vz@mleia.com>, <slemieux.tyco@gmail.com>, <khilman@baylibre.com>,
 <avifishman70@gmail.com>, <tmaimon77@gmail.com>, <tali.perry1@gmail.com>,
 <venture@google.com>, <yuenn@google.com>, <benjaminfair@google.com>,
 <afaerber@suse.de>, <manivannan.sadhasivam@linaro.org>,
 <narmstrong@baylibre.com>, <agross@kernel.org>, <palmer@sifive.com>,
 <aou@eecs.berkeley.edu>, <heiko@sntech.de>, <orsonzhai@gmail.com>,
 <baolin.wang@linaro.org>, <zhang.lyra@gmail.com>,
 <maxime.ripard@bootlin.com>, <wens@csie.org>, <thierry.reding@gmail.com>,
 <jonathanh@nvidia.com>, <linux@prisktech.co.nz>, <john.stultz@linaro.org>,
 <sboyd@kernel.org>, <matthias.bgg@gmail.com>
Subject: Re: [PATCH 0/7] add support for clocksource/clockevent DT selection
Thread-Topic: [PATCH 0/7] add support for clocksource/clockevent DT selection
Thread-Index: AQHVc8VbrLXkUp4vH02J/Sk0g3X+4Kc9pRwAgAm/1IA=
Date: Wed, 2 Oct 2019 13:35:47 +0000
Message-ID: <620a19d5-73b8-709d-9eec-49274ac23e51@microchip.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <c3a68a08-d134-cd28-c8af-f757628e07f1@linaro.org>
 <72edc5fd-df05-cba5-5aa7-39da1709415b@microchip.com>
In-Reply-To: <72edc5fd-df05-cba5-5aa7-39da1709415b@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0095.eurprd04.prod.outlook.com
 (2603:10a6:803:64::30) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:59::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191002163523538
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc8c7090-0dc1-40c4-0494-08d7473d6ec1
x-ms-traffictypediagnostic: DM6PR11MB3867:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB386774FD333FC5FA3D48D789879C0@DM6PR11MB3867.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(346002)(39860400002)(396003)(376002)(189003)(199004)(51914003)(7416002)(6116002)(6486002)(7736002)(2501003)(110136005)(31696002)(3846002)(66066001)(86362001)(52116002)(305945005)(99286004)(2906002)(4326008)(71190400001)(5660300002)(316002)(71200400001)(6246003)(6436002)(31686004)(4744005)(8676002)(186003)(2171002)(6512007)(102836004)(256004)(1191002)(7366002)(66476007)(7406005)(7336002)(64756008)(66556008)(66946007)(14454004)(486006)(36756003)(478600001)(26005)(561944003)(476003)(2201001)(6506007)(8936002)(386003)(2616005)(53546011)(229853002)(81156014)(81166006)(11346002)(14444005)(76176011)(54906003)(25786009)(446003)(66446008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3867;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jnq35Go1SdxUfLeV5q7JGdvdeI1+IDZRRiDqjq3AXlZiDtlTJzLbLr8etS7DJIJyFwgevBab4PbGIOR+8SDpnSmpLJm9Wl2VdYmucf8/AXrM5wlVSCC1twYujkjq7VGbNmmd3aUX2spK3yU9KMnBKc2SPJHTcVPJmK+hN1kAJQACrDOEOkiO4JSF8EuTlhSn30RJNteOKfgMQwGtIRlVwWA4B2jAhMQjajd45SChJbDEjEEBQDZa2Gss8t0AxaG6rLHVwb0PwqJaqdPl+f4O2JamhktKsqCdoHshwlOeUOtk6p2BwMYgx4iqTAkfCpzZz1sDlHzJYpBKiHPaVgfxHtMaRX8HWWlntMRcKaZ8pIp/pGa5RUwEcAED0UXDmPrQwMWL2pq6TeHaB3dA2KgHYPzInO0pAiiWXroGUKWt8QA=
Content-ID: <DE320C98F40CBC4891F6ABBA6ED802E1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cc8c7090-0dc1-40c4-0494-08d7473d6ec1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 13:35:47.4953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uM7thGsCAHUYVrFTXDZRkjiPPWhO9D+fJViyd9P5Mert1IPyRm9jhVvgj7sQYDZQ7+QS6o72Qapr5vZMCv+mYyI4pE4gaUo6Brx1EpXdqw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_063554_153555_59D01AF7 
X-CRM114-Status: GOOD (  11.85  )
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, openbmc@lists.ozlabs.org, linux-oxnas@groups.io,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-unisoc@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-tegra@vger.kernel.org, nios2-dev@lists.rocketboards.org,
 linux-riscv@lists.infradead.org, linux-snps-arc@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Daniel,

Taking into account that Rob doesn't agree with the solution proposed in
this series do you think there is a chance to merge this driver as is?

If you have other suggestion I am open to try it.

Thank you,
Claudiu Beznea

On 26.09.2019 11:42, Claudiu Beznea wrote:
> 
> 
> On 25.09.2019 20:19, Daniel Lezcano wrote:
>> External E-Mail
>>
>>
>> Hi Claudiu,
>>
>> On 10/09/2019 15:47, Claudiu Beznea wrote:
>>> Hi,
>>>
>>> This series adds support to permit the selection of clocksource/clockevent
>>> via DT.
>>
>> Thanks for the proposal and taking care of making some progress on this.
>>
>> I just wanted to let you know I've been traveling but the series is in
>> my pipe and I did not forget it. I'll comment it next week.
> 
> Hi Daniel,
> 
> No problem. Thank you for letting me know.
> 
> Claudiu
> 
>>
>>  -- Daniel
>>
>>
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
