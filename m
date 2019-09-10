Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3713BAEDEB
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 16:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1Y7n9f/sgfBiqBtasjXGRGYphvCtN2Xx492FxCFgtE=; b=IAiRwOBJ2B3tAo
	9LZ67sQCJ9TI88dhSp/xl8NphRk9KXQO2xFs8P5ZY4yeDavVhvC1LrUC9DDFITAVZi7ZgMF/yop9a
	TsbpX0XKZMfwU09wEf877NBJZO+0Y5yD0Le15pdLz460LOHeKhtBxO7hZ3DCJ1z3JcQVKsyem3HtU
	GmtjpxaH1yWn6hbOIWrSIXD+EcpNQb/F3L/OMaL+cS5ggi054LERBqwtBr1WZd6ZRgetgZvZWN+mg
	mL88MNTYVZ3IZw0fgazxAJckHXmP4lCyOqYnwVSeuQZei2hNAO/ifK5FOMLhh+GJoTpW1vhRAemgp
	uhlUA4WABwdq4feXsiNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7haM-0002CR-0a; Tue, 10 Sep 2019 14:57:38 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7haF-00028D-0s; Tue, 10 Sep 2019 14:57:32 +0000
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
IronPort-SDR: v2qMH69ETwIz/1G1doX4G8iLXSyi/NMv9dN9RUSGxd2UnXU8tl0kZoR4DhVgb3p0V/yo/qT9GI
 SaiCJhMaWC5P7VXjBkI3xLT2+UT409EoABBl+Fqp7JYGBWmnWR/X5Py/UFtd1hYo9owj+J3Ym2
 DHo23jM/E9IDye9djmfODkWZdfgfgEit0f4tjdgz4qo9CeyotO9vbPTSoW3VL+VK0n6xA0IcY8
 MO5hBh9wtadNmsb6qhjEYRVdKnrm/8ehnDuhn+E+3HPTOSATNXRM1NlHy3bOSUdd7ShEU8BsMH
 oYo=
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="48367936"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Sep 2019 07:57:27 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Sep 2019 07:57:27 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 10 Sep 2019 07:57:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cc9PT0LlyqCCDhim2pFbCG/YdewREOECqqUnI++BwFDI8ZaKW3kLIdRIag/CioqezuSipiY41x3W4biHLoC3aG5Q6YvN8BCHjyRvuJCh4OFM9AI9FjtHzTD7Hz00ad/kKhNrVDu6Ap2Gotu+0u3Nq3/PtAB6+1FSvCzc+QI2XMqVtp28immogPk/XXqSOrRc3cHJDRGjTV8e9ObC9DLUS4CRRLFI3PJYMuOz1ltca5Lntudk/ARsW01iiH2SYgn8JHCvSs4lsTEWSpFM7IViHAZr5ceYcO+ToQUakEDgrB2+GQvxQVOC9Ut8Xh/Lqj6yLFSs0ygMjwtJEeQJiCHOqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CSkguHT7LQG3W69z/7aNxgKgGrtU96GNkGe7CG7tnVM=;
 b=PlTAwHcWxvN/UswZzP2q6A/KaTkkdSAtBYE2CgWnfI468O0nLKt6V5Wzp/cR8DpDqRcHg+l9DSjk4zkDmyMr81C6GWWAhtmT7q4xPx29x4bInDafApYTAzLHMy5pFTebsodG4mFCzKkMa5afkyXcUGVdLbKCP/xNy0TYozka6pClG5QTw4WrIkoSTuO2S5Cm0ebbZQH3N7IAGLFX2hL2rcr1LfTIiH1h7vCgadOR9QfGn1aypYuq5P8zIe/ViS81obayg1xrwgOaI4/5kmerEE3OW8kf3xiagdOrnieX/Oi8jqEMks0wSFeqxE7hsTC2u9QMExGVbuzDKwjHT9M16w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CSkguHT7LQG3W69z/7aNxgKgGrtU96GNkGe7CG7tnVM=;
 b=AqTIYaa7MHnBSQhjO3wO/7J/UcPnUS6lG4WuP8B8ZOraW1L0DxDJiiMhLNNsABgqeexLn/MPBdyWkXF7ssErWKRO7zTSouqUhRgUBJm4jdlZd6a7vtYsY+KEbt0QCnucZz6JkuW/UcpxjC8EZd6y8nAU/eEvVClrYGl/TaC5omk=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1920.namprd11.prod.outlook.com (10.175.49.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Tue, 10 Sep 2019 14:57:23 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::4c34:6012:3622:68ed]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::4c34:6012:3622:68ed%3]) with mapi id 15.20.2241.018; Tue, 10 Sep 2019
 14:57:23 +0000
From: <Claudiu.Beznea@microchip.com>
To: <maz@kernel.org>
Subject: Re: [PATCH 2/7] clocksource: change timer registration macros
Thread-Topic: [PATCH 2/7] clocksource: change timer registration macros
Thread-Index: AQHVZ9551k/uL5+Fk0mrLT7QWelTu6ck/hCAgAACJYA=
Date: Tue, 10 Sep 2019 14:57:23 +0000
Message-ID: <b0ff3339-4016-0979-d971-9d30e05e1db3@microchip.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <1568123236-767-3-git-send-email-claudiu.beznea@microchip.com>
 <86k1agryu2.wl-maz@kernel.org>
In-Reply-To: <86k1agryu2.wl-maz@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0902CA0050.eurprd09.prod.outlook.com
 (2603:10a6:802:1::39) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190910175649835
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f38fda6-98f9-40da-b47d-08d735ff2d44
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1920; 
x-ms-traffictypediagnostic: MWHPR11MB1920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1920B9A3E697DE106A20DD6B87B60@MWHPR11MB1920.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01565FED4C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(366004)(136003)(189003)(199004)(26005)(229853002)(5660300002)(4326008)(6512007)(8676002)(64756008)(8936002)(81166006)(81156014)(66066001)(7416002)(7336002)(7406005)(7366002)(7736002)(305945005)(66946007)(66476007)(66556008)(6916009)(71200400001)(561944003)(36756003)(256004)(14444005)(71190400001)(52116002)(86362001)(386003)(6506007)(53546011)(53936002)(6116002)(6486002)(6246003)(99286004)(31686004)(102836004)(186003)(66446008)(6436002)(3846002)(478600001)(2616005)(25786009)(316002)(54906003)(476003)(486006)(2906002)(31696002)(76176011)(446003)(11346002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1920;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: chowY3luOksYtH9KK50HtA/+/F7iszH1bAesXDJklzh4nwQY7GgOF4fz+6rOVRzLkEblWyI6CKgjW7wqP7OR3Hc/2DPNuvsBA0w0D/z8WiBYQIWBkfZPb4EiH0GLZpB5dEP/7IF4nUKbQgav+SQFrvAKaNPQwJ+mpnqGlAIWq1VF5e0/o4YETeuyD7TTj6byhVJ4s6CftK1/pCARXZBBO/C7j1uiXZiy7PEytrxnSDLUAkGqrIDhxP/x/0BXzt5Hpb88l4sDYj+MPtNR1d9tKcCvS7qQ5ESe31u8u1EwxK0QntLXegIBNeVuchb9ydtBzUR6OdrGB8FGvV4BaIqVJ0gRoqt7LdslqJnBZhxMfbs0q1A2x4LsVsyluIO6pkXZuDYl2CtnVee5ucqplE/qwLUZrqnUICmZOqvQgGoYB+0=
Content-ID: <5CC15C8274802D449C3F3BE5E146EC8D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f38fda6-98f9-40da-b47d-08d735ff2d44
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2019 14:57:23.1685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WT74DFwCgi2KrC/GdjzBzayuCmhykHxmIzgZD5ay+92KR24/5HwfoS8GaLLwM0JCeK/TW7gmPnWW1OEsmN3HMC/hj/oiQ9ubpDw2HzGERv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_075731_106924_22BF1947 
X-CRM114-Status: GOOD (  10.47  )
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
Cc: tmaimon77@gmail.com, linus.walleij@linaro.org, nsekhar@ti.com,
 guoren@kernel.org, linux-stm32@st-md-mailman.stormreply.com, heiko@sntech.de,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 khilman@baylibre.com, Ludovic.Desroches@microchip.com, linux-imx@nxp.com,
 u.kleine-koenig@pengutronix.de, uclinux-h8-devel@lists.sourceforge.jp,
 s.hauer@pengutronix.de, linux-unisoc@lists.infradead.org, khalasa@piap.pl,
 tglx@linutronix.de, sbranden@broadcom.com, linux-kernel@vger.kernel.org,
 ralf@linux-mips.org, paul.burton@mips.com, kernel@pengutronix.de,
 mark.rutland@arm.com, alexandre.belloni@bootlin.com, jhogan@kernel.org,
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



On 10.09.2019 17:49, Marc Zyngier wrote:
> External E-Mail
> 
> 
> [crazy Cc list, not sure it'll go anywhere]

It is what get_maintainer.pl script returned to.

> 
> On Tue, 10 Sep 2019 14:47:11 +0100,
> Claudiu Beznea <claudiu.beznea@microchip.com> wrote:
>>
>> Change timer registration macros (TIMER_OF_DECLARE() and
>> CLOCKSOURCE_OF_DECLARE()) by adding a new argument. This new argument
>> is a pointer to an object of type struct timer_of and is used in
>> timer_probe(). Based on the flags filled in the struct timer_of object
>> the probing process will parse different DT bindings. Later on the
>> drivers will use the result of this parsing. Even at the moment only
>> few drivers are using this functionality there are other that could
>> be converted to use it.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Why don't you introduce a new registration macro that does what you
> want instead of creating this unnecessary churn all over the place?
>

I though it would be good to keep only one interface for all drivers.
I'll keep in mind your proposal for next version.

Thank you,
Claudiu Beznea
 
> 	M.
> 
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
