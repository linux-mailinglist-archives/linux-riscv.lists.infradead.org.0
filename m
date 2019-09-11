Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC4BAF62D
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Sep 2019 08:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZfKOwfzd38Get143JxIyOyNLJl7WZxYo14w7w1RK6g=; b=XqH2EGO/nw+Wz0
	NgK7/N7ywjiaU3MP3HlI6jhm4Bxc4ryIiILwvtrbKFhlzpMFQaceJCR1X0loo9IgYRsSB4E0TElmN
	v1Vab9rZtVPp0DiVl5nJbJ4Fn1Gj5LFWp2m8dDp5HmhM62LS5rW9ocQzmSB5XXrwxnHhWRxzAsDyx
	QYP3gKCWFnINr8QTn7RXQsjBeK0Ml6fCAjKJQAGyssHs/7A/EFXeYBYXgAwhi6H5YabMVRk8pvPPm
	o+6zVU1zFjRo7GxRK2G28uLlGEsRTv2bsbUBUwGEcmZsi43eXGa14QSJ/EIEokexkzOYDB7G4jSb6
	3M8QXdGgs+ux70LOXulA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wUz-00077H-Fa; Wed, 11 Sep 2019 06:53:05 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wUn-00073j-R0; Wed, 11 Sep 2019 06:52:55 +0000
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
IronPort-SDR: BfXTGQWWn0vjXd94PPBj+sVXOY7LTMa2BOHYb9kqF90xMGcBUfAiggTl70fPg5AACdnViW+5tT
 mC0HNh3mquLOewoSGpr6pfOIvNZCr86cnU7AcqkjE/7VlrSVB1H7IYVU2powWLil9EpNSUN6lD
 3rHkzvKXip/PmYLKPmnsYRAJ+DoG6cmYxeA9zoFDIgQdhq1pnnHjGArd0CO+8hMm8xkTAZq97b
 AMQAzRCoJo1vWGcztNSum660dtiMnwZ06Mgsj4P7ceIDDW3MTmA1AmQ+buNDvYoGYcIlN1a18x
 fGw=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="47026797"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Sep 2019 23:52:50 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Sep 2019 23:52:39 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 10 Sep 2019 23:52:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iMgiyBBoA2ADWBwvNws3u6bcsXSg5NtG87PoPRYna/WS2tW/tZUQMNiQe/uO0gqyRXg9yFE3BP6ScpHZZqjjYmfRzaQyji++a+T6OO8lm0umcrvPQIyn4UFY6wLbpaHFjEQMlQ8zYDP0Wm3CfeD6RBcpV+drRRGxdGRMKC7FGbRXy3lGQlKhGI3rtTqQiVPibabJo3nJWHLhXRYMTWUntPukoiTtxuMSvA0+1emZJPbkywPCTyYhvnDxMuH0gsNSoid9l/dI+734nnzgkXlGBhwbw2q6KVmnAIzb7Jj/uvakwORXrlfPJHT0YIm1j2KMcy2H0mrzZybkEhRktIn9DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p1aPIAkRYuUSIqXxXGXMU/N7qlfWfdc/txSlmnIFK00=;
 b=JeYnCJAPGSOJ58OOKD0T6uJP+xPhVxpwGEaIJddtbwOKLX+W11HiS4qsyoE5/p/yqnR4pexplDM6pfTLYM/fvLoyUb/KlLKmxGp3gzBVcelga2kmxcZUVnr7pNA1y1ImvEw/GPoV70gvX7N+g03iSHnJWUeZrs2iqpY5WVUIzpvdD1eOmROKrloiEEfgYoXPvvIrD95eemQupAJIC6A0hCQhmgTltyMbjH/1jTNV0QAx9TnbM2eYHONmf23GBqGDyVs8Gjb7mRO/ZyyKmQeuag9fifo3RfkSL0xcsR0cUpToaH+SEU2tfQ3zvB+aGVxfKyZk5Pfmod9qEQbXAuNqCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p1aPIAkRYuUSIqXxXGXMU/N7qlfWfdc/txSlmnIFK00=;
 b=vkEnGukVuyNpcMVwT0jaUrdKJBbyFTil/D+LXDfD2aW49LJVrEhKdPbajZ1b2u5VuaEV3GWXVRYmpOtf1B/CahK02c0ZZVEAf6YQFkjDPy703EKcyCrOhsM9dZ4W9MRZY3BGH03Ph5r5M12Iz4DYVibHFIeZK7joeCa2+eiiP6Y=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1247.namprd11.prod.outlook.com (10.169.237.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Wed, 11 Sep 2019 06:52:37 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::4c34:6012:3622:68ed]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::4c34:6012:3622:68ed%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 06:52:37 +0000
From: <Claudiu.Beznea@microchip.com>
To: <john.stultz@linaro.org>
Subject: Re: [PATCH 0/7] add support for clocksource/clockevent DT selection
Thread-Topic: [PATCH 0/7] add support for clocksource/clockevent DT selection
Thread-Index: AQHVaG1srLXkUp4vH02J/Sk0g3X+4A==
Date: Wed, 11 Sep 2019 06:52:36 +0000
Message-ID: <cb451591-88ad-f1b3-b654-cea86ae11cac@microchip.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <CALAqxLWLStTqGx5DAvUKOYupdgK-doOxRF5Z_Us=L5vnFaa=7w@mail.gmail.com>
In-Reply-To: <CALAqxLWLStTqGx5DAvUKOYupdgK-doOxRF5Z_Us=L5vnFaa=7w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0901CA0097.eurprd09.prod.outlook.com
 (2603:10a6:800:7e::23) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190911095205902
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56979c86-17b8-40cd-341e-08d73684a132
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1247; 
x-ms-traffictypediagnostic: MWHPR11MB1247:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB12477FE55EFE83052E85BBE487B10@MWHPR11MB1247.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(376002)(136003)(366004)(199004)(189003)(71190400001)(71200400001)(14444005)(256004)(7736002)(966005)(305945005)(31686004)(7366002)(7406005)(8676002)(7416002)(81156014)(6436002)(81166006)(7336002)(6306002)(6512007)(6916009)(53936002)(2906002)(3846002)(6116002)(66556008)(6246003)(229853002)(4326008)(6486002)(25786009)(31696002)(478600001)(14454004)(86362001)(66446008)(64756008)(66476007)(66946007)(8936002)(99286004)(26005)(36756003)(66066001)(5660300002)(2616005)(476003)(486006)(11346002)(316002)(446003)(76176011)(54906003)(6506007)(386003)(186003)(102836004)(53546011)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1247;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SrX0aYDnktOiXXKYNwNT++cFX7Q2djULMPh8xNBqOIxY5eJ0VP8s0VBHZmCF6rxRRdp4IqoyCGjEmnAnVquMtc+jq3jn56uy47iG9HSYjKooK8kDI5YoxFe/DY9fg60B6aHankc3S1vhABBKbiESxevGEVEjTVpoXSCmqByM3+98x7RS4uuPbT1tuGD+fJwL4HtkEtAoWhP3aiQ+k3Ub13qQVj9EUESNl43bMNCnovq7k2LSPxEeUPFXiCY+2WH/txA7xA7G8tTFh13tT5gU++foImLwpk3+8lF/YBrNXa7rnLpS669Su4Tuxe2yZBifsVsS8Xu4TNvik4xyjMyV0hCgU4sZBDTFt+akUApxhPTOiXwnOUfpBliU73hxIxV/HdL4bqynmEpSGE7aU2gpMrziBuLjzBUIIzlFyCMwXa8=
Content-ID: <C5F237E5FF12BA4F89A78E016541450F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 56979c86-17b8-40cd-341e-08d73684a132
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 06:52:36.6488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4sje3exn5bbKVCIi/swcKuY8wLGcrKnJhHwRnhTSYPpouScBZ46Sj+NJfUDkbsH9m+CQ+xr0Nm3kxiW1gWyWAYZIiJrlOkDVFfDxjd2qJi4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1247
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_235253_886002_1C8A55BF 
X-CRM114-Status: GOOD (  16.28  )
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
 f.fainelli@gmail.com, linux-rpi-kernel@lists.infradead.org,
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



On 10.09.2019 19:05, John Stultz wrote:
> External E-Mail
> 
> 
> On Tue, Sep 10, 2019 at 6:47 AM Claudiu Beznea
> <claudiu.beznea@microchip.com> wrote:
>>
>> This series adds support to permit the selection of clocksource/clockevent
>> via DT.
> 
> Sorry about this, but could you try to include more of a rational for
> *why* this would be useful in your cover-letter/commit messages?
> 

Sorry for not being to clear in the cover letter.

The case I am trying to solve here is as follows:
The timer hardware for which I publish a driver at [1] cannot work at the
same time as a clocksource and clockevent. On some of our platforms we have
more than one such a timer. So we could use one hardware resource as
clocksource and one as clockevent but not one for both.
Due to this, I proposed in the driver at [1] to have 1st probed hardware to
work as clocksource and the 2nd one to work as clockevent.
There are also other timer drivers that uses this approach. While working
on this series I noticed that there are others that are using even
different compatibles (although it looks to be related to the same hardware).

Due to this Daniel proposed to have an unified mechanism for this scenario,
see [2], (something like what I proposed in this series), such that to have
a determinism b/w the function that the hardware resources would behave
(either clocksource or clockevent or both).

The description I gave in cover letter was not the best one. Because,
actually, at this time, the clocksource/clockevent of the system would not
be the one pointed by DT bindings, these DT bindings would chose only the
function that a timer would have. Because if more than one
clocksource/clockevent would be registered in a system the rating field of
struct clocksource/struct clockevent would be the one that would decide the
chosen clocksource/clockevent.

[1]
https://lore.kernel.org/lkml/1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com/
[2]
https://lore.kernel.org/lkml/2f831f1b-c87d-48bd-cf02-2ebb334b964c@linaro.org/

> I'm not sure I understand the limitation that requires such an option
> to be added to the dts.
> 
> thanks
> -john
> 
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
