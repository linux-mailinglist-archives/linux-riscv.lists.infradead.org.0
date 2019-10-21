Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B522DDE743
	for <lists+linux-riscv@lfdr.de>; Mon, 21 Oct 2019 10:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HRc7sMez/EHCcqwaQxNUEkGHGpVXhSqsQFwzq87Xio=; b=mLI6ddmjXOPUAi
	dR0ss5A/mXsxRfgzPUjJox2Kw1d+t6JBFV/hIyPX1jUzSqEE5wve+3UOhMF2cNNDI3m5O2HcZOkAL
	ISaBZE59zIyGQPCA9qk8Mxb2FIwoPJko0fPsxA4f78tFHHYQv1tiz/Cm5eecTOKSQFkJXEZ8lXU45
	LjFL9FU/6MTUb0+M7St6bYHj5AuaFUMVxjNrT0uLkwwZ5M0Skbv6kmPhoeWVBr99EnoHZ3SGPo0li
	p27pyXhhJWlFjQKvFiQ9BoG75qQVkzguF1pFF9OI51XKfRAKWD6yevOHktPeHqe3LbStfdBe7scMx
	+UKiBoeY/U70bBMdAtig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTWF-0002an-4A; Mon, 21 Oct 2019 08:58:27 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTW8-0002W1-Dp; Mon, 21 Oct 2019 08:58:21 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: WEj1RSGINlH0YP7nNoiViAPn5fKFEykpOmUAsfeXVHQ0ptRTq9IpWZydSiG1TTXVqc+rNAMCa/
 9g8VAxylPb52ieSRnXN023ATEiHh15sJrP9LRA/gLvEfORXrjE8Ff4VovtElpoPzXALRS2RyKR
 UTafdxNN4tSsDQl7Ysd8k345wN1/xMrGFno4nYmeH6fMCcZlPmhuetz3JpZ4FubkklDDCD3lVe
 zYQdyHnncGWMnn7IPVTn7h96BeUeQdnMwgkzIWrgvfPEvPUdaJJ7hA0PLu/s3eaa9nqXhHUS7P
 E08=
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="54996746"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Oct 2019 01:58:14 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Oct 2019 01:58:12 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Oct 2019 01:58:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UVxpEboKD5DSydpkrO0hbX/rigOqbuO5TP6ccH+2DzAFCGEaO5ljvmIbi9Fu1Jo53ItQGCCUz5JSZV0Ib8u+NlWkjfyUTQRz9t+msHA2hqkhmlrnoU/llKTMp+J9SJ+ZgRJjGykn8azB+YrdH+4kTKKyfGfzUechUffjngE7m6GKtCAcr4UuKMYxCNF2kOHu7a+yK9ZPpXo3uI/J0xAw0YaYa/T60PdL8t9AK3IQ3NI5Ax3EKBENOAl+VH1MlCj1x+40F+v54pSuUilkCE8DCECziiuPx3wMEkoB8qTE4Loe1fakmb5ZZ8eRWzgHYA6sEzgnVL60z8dhtwcWREy3Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wpk8sLUcO1HMbgN1/NAq9gdAZbl2KgQ3dc/W6Au6XM0=;
 b=LKmKWGJmAsZaXX3+cpB4qWFxtZdyXFdbJIeIlMIJl2zf+7l+TJ+C+bznjNHBWur1PnqY45GpcCpwBopzStdU7c7QJH9dEa83PsmlFcC/M4oaqnE5FyAq8fixilRSKb3BT9NL/NTbf+G2JHP7j2hFIpdXvpW8cfPNDmwe8ZrQMUlCp0Hl8RJ+LT6967I00ajrJbDHX0hwscoSTwIKPVikxcVrUfCDL833NXmHBlfYkX1SG8Wc/TCfV2bJ3Yqk8DncLuNNi7+N/VtWLtVkM7uxlcJeskQnrMPq1p1nRX2xR+yCws9cpSY1TZVOTQQH5NYsiRDxQcV1M08RBe51lpMbdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wpk8sLUcO1HMbgN1/NAq9gdAZbl2KgQ3dc/W6Au6XM0=;
 b=pxr9UaNpSC7Br5tgOLkO3zHprkIgLGONPrpbtdj2C45CdFZnAwPkknwXUKT0HqMmb+e3UMmEqtFsLITRZH0xhOJsj8EO8rgfFo4QfBQlL7+Vj7eg4qD7WLXp0CE7N/zFiOa3VmQiyRqkS5e3hANOIFZlhDOIHBhKiQw1IvecwNA=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.85) by
 DM6PR11MB4234.namprd11.prod.outlook.com (52.132.249.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Mon, 21 Oct 2019 08:58:11 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22%6]) with mapi id 15.20.2347.029; Mon, 21 Oct 2019
 08:58:11 +0000
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
Thread-Index: AQHVc8VbrLXkUp4vH02J/Sk0g3X+4A==
Date: Mon, 21 Oct 2019 08:58:10 +0000
Message-ID: <215a1cd3-b1a8-5171-d70c-8d8081038e7f@microchip.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <c3a68a08-d134-cd28-c8af-f757628e07f1@linaro.org>
 <72edc5fd-df05-cba5-5aa7-39da1709415b@microchip.com>
 <620a19d5-73b8-709d-9eec-49274ac23e51@microchip.com>
 <187d7020-fbe9-7984-2358-8a70faef019f@microchip.com>
 <14df6e5d-19ef-4ebc-fd11-9953bc3fc44e@linaro.org>
 <7071b6fa-f7ed-c879-4a43-44100dbe6121@microchip.com>
 <8e9f709f-2ded-c666-26e0-9235d6107c34@linaro.org>
In-Reply-To: <8e9f709f-2ded-c666-26e0-9235d6107c34@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0421.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::25) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:59::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191021115748754
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3810ac50-35e2-4d42-7e6a-08d75604cc1f
x-ms-traffictypediagnostic: DM6PR11MB4234:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB42347F81DD4DE1159ECD573287690@DM6PR11MB4234.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(39860400002)(136003)(376002)(346002)(189003)(199004)(1191002)(36756003)(316002)(478600001)(5660300002)(14444005)(256004)(8676002)(2501003)(31686004)(6486002)(31696002)(229853002)(66066001)(102836004)(81156014)(6512007)(81166006)(6436002)(3846002)(52116002)(4326008)(99286004)(7406005)(2906002)(7336002)(6116002)(7366002)(2201001)(7416002)(110136005)(66446008)(66556008)(66946007)(66476007)(76176011)(6246003)(54906003)(86362001)(8936002)(71190400001)(71200400001)(25786009)(14454004)(11346002)(2616005)(446003)(476003)(386003)(6506007)(53546011)(7736002)(486006)(186003)(26005)(64756008)(2171002)(305945005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4234;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BrURRVHxFOouoiEdT0XbRFhNbwLrjgICSsKdC1OVvjMDSPo2aviQut/pZmL6HMZKpmcEV97WzzAl7rTGFjlLCOoePFDwzRYPak3rKuYeuLRsIRO3gW7ayTGeDDucDl9w/XQG+vAup3pdj1PQJVZunDjh+4/+TGPP1DhTC625LXkUP0XrUptDb5rCpri00nNsoRpPSGdIW8UzSrhqXeuyLBkTLoQISGV1uyRV+PdI+rOyUI6WmRgMRXO95grqzacoGYQqRGoX0iDlhpbXvbHva803pt9flPrVjd+V6dLrjm6+EAa4L23DAe1MqTf/qDrY0EZh8GCP7PDr96MqIH38pXDhJAuFssZzo1l3wxv9mk8flNfDWzNGn3D8ylRo4lbZA8QDzObqbkeIU/74rIXVUclo14lTM2XsZITYDK8IbroE/uSqDKFwTk6tbmCdUad5
Content-ID: <60F94980C60DF447B0B88B0D90F5A4BE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3810ac50-35e2-4d42-7e6a-08d75604cc1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 08:58:10.4876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XTVZQGsCKvIe/8hNUSvF0owHehWJYzdiVDOMD3guyXcrA6p8GMydRkwxoWKIu99kzwLS+96zH72X1Ru6hK3krIEC608LEOoTiq4/TfVr4Bs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_015820_532263_B8F2727C 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

Hi Daniel,

On 18.10.2019 23:24, Daniel Lezcano wrote:
> Hi Claudiu,
> 
> On 15/10/2019 11:23, Claudiu.Beznea@microchip.com wrote:
> 
> [ ... ]
> 
>> The timer clock source could be divided by MR.PRES + 1.
>>
>> So, I used the clock-frequency DT binding to let user choose the timer's
>> frequency. Based on the value provided via this DT binding the best clock
>> source and prescaler is chosen via mchp_pit64b_pres_prepare() function.
> 
> I'm willing to take the driver but I doubt the purpose of the
> clock-frequency is to let the user choose the frequency.
> 

I found this approach in the following already integrated drivers:
drivers/clocksource/armv7m_systick.c
drivers/clocksource/bcm2835_timer.c
drivers/clocksource/bcm_kona_timer.c
drivers/clocksource/mips-gic-timer.c
drivers/clocksource/mps2-timer.c
drivers/clocksource/timer-qcom.c
drivers/clocksource/arm_arch_timer.c

Looking through the documentation of these, most of them document this DT
property as the frequency of the clock that drivers the timer, but none of
them seems to have some IP internal dividers so that the timer to tick at
different frequency than the clock that feeds the IP. From the
documentation of the above drivers;
drivers/clocksource/armv7m_systick.c
	- clock-frequency : The rate in HZ in input of the ARM SysTick

drivers/clocksource/bcm2835_timer.c
	- clock-frequency : The frequency of the clock that drives the counter, in
Hz.
drivers/clocksource/bcm_kona_timer.c
	- clock-frequency: frequency that the clock operates

drivers/clocksource/mips-gic-timer.c
	clock-frequency : Clock frequency at which the GIC timers operate.
drivers/clocksource/mps2-timer.c
	- clock-frequency : The rate in HZ in input of the ARM MPS2 timer

drivers/clocksource/timer-qcom.c
	- clock-frequency : The frequency of the debug timer and the general
purpose
                    timer(s) in Hz in that order.


This is why I also chose this DT bindings.

If you want I can stick to a fixed frequency hard coded in the driver.
Please let me know if this would be OK for you.

Thank you,
Claudiu Beznea

> 
> [ ... ]
> 
> 
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
