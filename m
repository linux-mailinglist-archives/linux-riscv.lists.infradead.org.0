Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D45C9C86
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 12:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPdzBewoifDxGlXjIqv9eL7J5aCLSheWNxWDRVSi7U8=; b=SZb8rLgC6p7NWx
	WP7ZgppqMSC7Tu5F21HO+pTL+/KVrVGTaQiql6A6BzblY9syYtWQpRyy1Pya6cDllfnArLMqkmn7V
	upwwGgkmiVbpE2gxY1yz6n+ivhTzdnNFkLjun82IVwOdpB85s66fkM6AsC3OIlibKCWydBPG2ps8Z
	jcDJ9poeaa2SeLkx5cNjMKr6PTvSRZ9Ql8yL9mR2wUGJbFauDP7jhA+2g6W5AnlDOGZRSFvjAmJYp
	gEs0hTZceNODDbrFg0TjdTkImgwIYF0LNfNrQTu43sGG6RWiJ8c/8z90kXRGaI4KXgDEiIHdMdcTd
	daXW4ptPn4eKpzOnzvXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFyaI-0005D4-2c; Thu, 03 Oct 2019 10:43:46 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFyaC-0005A0-F4; Thu, 03 Oct 2019 10:43:42 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Kh5AeDeYqy3qrgTU4+YVPpMhCxxzB7hpqC16ge+KzRXkC0j0Bj0ul837NXkdfC9hUDJ+UtcRl8
 u2vAeewPQELKMvISXpy4NhV2u7Xs7hN1SoV+PTkr37nCXJXftE4BPNsB0L6c+Orb7h0QucDCU0
 JyWt1moq/7d0mX5owx65ZKAt5x9AdpaHEzgutpiQCcGZ0O2kgx4WcbVUhQXwIhGNBdn8YBONy3
 /+12fXqBd/METlGevr8NNE977B7mvwDVsfEBtH93LKfQ0zluSwMB0yFpNPRLp/zRdpPXd7gzdR
 CFk=
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="48625222"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Oct 2019 03:43:35 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 3 Oct 2019 03:43:17 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 3 Oct 2019 03:43:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NmBcVLKEhij8qewyyT7i4CpKzD9t0NZqIkyY9+eOFAOrZhGpQdacVveONQFcG171NiLlVnKm1yn/5+pYyXUHcfHXlHiiRkSXPtUi4VErkQ0tJDomfxu+q1iGmtV7XVjn8lYAAhsSR+Vx+DyNLk/UUOd2HpDctIgdSB/v81zPbZ3HFb9sRI4vG1H9dnZpTNm+snKSkou5sfFjmJJ54qg+bDmBs7VFh1D7VmZ5OdO2jhASG71wbeIPkoiCpQXDP1VNQocH8+fjgDBrM99xT5W9yA0exuyS+lLiCrSu4v0H79S8o+kxr5aLd9IuDR9EbYKlv6iWFvRDpwtFikVhTka/dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4z6O/TIUCmreGOqJOF86HxnnUsT7MBXi3SZECPGHZWY=;
 b=ipEsxUSmODC7eAYRu8BHncOy46qmydHd2ekcvaia5/ff2ievfAKKuDn3+FTABuch0QB5CkeH9eontv16kfrLH7XCITNaUfJFE+Zb151+W1pr+/KfhSWcZsCVYS7xtrFr3566KftZNmVJlXpWLEMRoVyuN1oNfgyS9mr67+H3L4DZKNZ17RKb9lhugoXH07hBU9P6wamrOhL3CQWhZnmWJrro8HEjZfLkzUjQENbyCNmFHck9bsOE1pcCveRD9kdqqTIgnPLSVFdUYPCmf83QXEPugTUFy2sb6vct4kCYeN7jUH3+pFSUv3ty8sCXJwHIj9oAszaOzvmIcNAHXMYSsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4z6O/TIUCmreGOqJOF86HxnnUsT7MBXi3SZECPGHZWY=;
 b=vb8BKKiiVyYfgsS4n8v6vqtYiJ+6Oa1ExfDLHe3pDxZxpwct6FkuKFhgqilSaiPxqAhQZ8Fo4At0x52LPpW9tEVk77CvPh5yc29/NYI8LLCFeBNQGcTRPrcP4GFM2iQGXO286nGyl+0hgmpiL77yjs/j/fHY/wiCEON97aYpRu0=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.85) by
 DM6PR11MB3321.namprd11.prod.outlook.com (20.176.122.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Thu, 3 Oct 2019 10:43:14 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22%6]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 10:43:14 +0000
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
Thread-Index: AQHVc8VbrLXkUp4vH02J/Sk0g3X+4Kc9pRwAgAm/1ICAAWIegA==
Date: Thu, 3 Oct 2019 10:43:14 +0000
Message-ID: <187d7020-fbe9-7984-2358-8a70faef019f@microchip.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <c3a68a08-d134-cd28-c8af-f757628e07f1@linaro.org>
 <72edc5fd-df05-cba5-5aa7-39da1709415b@microchip.com>
 <620a19d5-73b8-709d-9eec-49274ac23e51@microchip.com>
In-Reply-To: <620a19d5-73b8-709d-9eec-49274ac23e51@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0173.eurprd07.prod.outlook.com
 (2603:10a6:802:3e::21) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:59::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191003134249853
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a69bb484-2581-4090-3e6f-08d747ee7e34
x-ms-traffictypediagnostic: DM6PR11MB3321:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB33210DD9F544189800B49B2D879F0@DM6PR11MB3321.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(39860400002)(376002)(136003)(51914003)(189003)(199004)(6436002)(6116002)(76176011)(25786009)(2501003)(5660300002)(316002)(53546011)(3846002)(386003)(6506007)(110136005)(8936002)(476003)(486006)(71200400001)(81166006)(966005)(81156014)(102836004)(2171002)(71190400001)(99286004)(1191002)(52116002)(2616005)(6246003)(7336002)(14444005)(186003)(2906002)(7366002)(256004)(6306002)(6512007)(561944003)(229853002)(2201001)(26005)(14454004)(7416002)(31696002)(86362001)(6486002)(4326008)(54906003)(7736002)(64756008)(66446008)(66476007)(66556008)(66946007)(305945005)(8676002)(478600001)(446003)(36756003)(66066001)(11346002)(7406005)(31686004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3321;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5PBf28dhTyEM+9xzweuKzLQ5Hf71K1eZ/d6kOgcgTpKsRjJCItVUlQZAeGuknztE3Q/o6x8QM65SOoyfcCo8Z2+Beih+T5rCxCW2HvbE7GOQac8vkdo2sRP5SnHjNFCE3RNBLdIOsAl+hl/uaQVOSpCxsA8d0TSoWnoeqJQ8la5s8Xs5NdRtMztgqsVs+xl8l+R7Nd9/5n39dKx1FOMScLpbkQaBdomNYHIPxsvmO8cUEr/MRSYT8P5CyK6kX1TJOpdw1aacriChcEaFgodmtYjZU9PsaD52Pj3neWGWBfuPne4hASiO+Aw5OeWtoJ1KaaB3DrO3hPscVSs+mV7DWPkS8rrSmdRVlE2O0yRDGTejpczZOi/L6URBqmvHMEWDZuue5C7tmYXewfnUJX+WFRtcafraXBkrRM5wmqXQL/8XAlMCaYuv4/p8Bdpa0HMahD3ms2znwq1mwEIlvVOCVw==
Content-ID: <51816439DDB2EA498830860703402E31@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a69bb484-2581-4090-3e6f-08d747ee7e34
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 10:43:14.7902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0CMnEwf05eZLlk9enoiVzUG4uHDU/anYqc9xKhCaWxWNmd36ZMXcfz6M1182SPjNMZEmzvgm531qYuHGQL4T1UyEkDN54kgtrooQKtkZGhA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3321
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_034340_621709_02F98A79 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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



On 02.10.2019 16:35, Claudiu Beznea wrote:
> Hi Daniel,
> 
> Taking into account that Rob doesn't agree with the solution proposed in
> this series do you think there is a chance to merge this driver as is?

Sorry, I was talking here about the driver at [1].

[1] https://lore.kernel.org/lkml/1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com/

> 
> If you have other suggestion I am open to try it.
> 
> Thank you,
> Claudiu Beznea
> 
> On 26.09.2019 11:42, Claudiu Beznea wrote:
>>
>>
>> On 25.09.2019 20:19, Daniel Lezcano wrote:
>>> External E-Mail
>>>
>>>
>>> Hi Claudiu,
>>>
>>> On 10/09/2019 15:47, Claudiu Beznea wrote:
>>>> Hi,
>>>>
>>>> This series adds support to permit the selection of clocksource/clockevent
>>>> via DT.
>>>
>>> Thanks for the proposal and taking care of making some progress on this.
>>>
>>> I just wanted to let you know I've been traveling but the series is in
>>> my pipe and I did not forget it. I'll comment it next week.
>>
>> Hi Daniel,
>>
>> No problem. Thank you for letting me know.
>>
>> Claudiu
>>
>>>
>>>  -- Daniel
>>>
>>>
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
