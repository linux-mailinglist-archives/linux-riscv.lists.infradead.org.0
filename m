Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686B718B3CA
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 13:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ct/vC+pyknaapJ/kjDeMGgchdOUlt5aZcJZO1q8mKtw=; b=NFHyQx1KGvfXAuQ+w4Ylehaz4
	eoMEw/LXfpuXSE1Uy4rrOg+zbqangF1rd7c2r4RGJe3yzuo8jSfWgocmZAccQ7Wu1QApAjzW5UiWx
	n6LHzgbaoFKCe6J+wMk9yYv+7GugiifgP8d462GAw1ZZwTanrngcVzhUEJ9slv3x1lWFAIQ0UqfNp
	VWtwiI2ifC961TnerBXY+JtKQglRScF98Q6tkZSn8OuuPdHVyfHrHM840xSCPpfDsN5n2qnjMdO85
	1Xh+jlSyQph4FqKKQLO+nIPM3PLlZA2+/zj4h7WDQm39Jaqu33HYQCc5O8hF6CKqpBA9M1LfwgmUM
	wRN+UZtqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuk5-0001Ue-Ai; Thu, 19 Mar 2020 12:57:45 +0000
Received: from mail-eopbgr30117.outbound.protection.outlook.com
 ([40.107.3.117] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEujo-0001Hr-G5; Thu, 19 Mar 2020 12:57:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8JxkgFYn6ejoYvL14Bknc/3taLDqAPVhRnHqFM9+Add67LApRwjLGLZVcspMAEXkgc+m05fx3SA4TcZY6hXyz9oyPItDowa4LT1F97c1PuzgilIxLOEo0WZ4LwkIWXlI0wPmJwuTAY2MYSi+cppVXFGNvvn6VtRzzkwqFo2oV2gjLnnSe0Ce2anlbskLRVuJlq9Dw9ikoFdWD2QWV52QoK2Gp2qxEKbKcp+KR+EF+bhu7Y7J0BPd1uwsx+ropsVDqwFVdW72+KBxKQgMdz669qz53mtprrBPVk5vM4rFeVsRvJ8P8w1A6wLKkcU2KGcmnK424XyEU4FBf0787bzYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ct/vC+pyknaapJ/kjDeMGgchdOUlt5aZcJZO1q8mKtw=;
 b=WyWChx4rwOPq+eOV0RJC/SR68bWq2r6Ab4pChpN34R67Gp0RxQ98o64zmhFWBoUn700pQY3zXc9VRb+qsz1RP7790TJBoP4tnJoQ93Rpy85B4N0cMBbaXuJpoPyhQkyVPLRUN7bifax3oqZiZ3qewjY5dLkuMgIx2oEcHp5nkdlqu99BqgnE/BPgT3AdcN9BrhQOs1gVvQgzWmqIUSCRwv3vDAURwWUYTBq8bUtdMWEnB0NzusKMWbY071sWRaqsmijtDu+8W3IYKoazGD/YMO15U2hK3z4G0gb2O1eES1gcv0akURteq9bvgQEUnbJZQ0gLq4BjUwxuZdathXHKCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ct/vC+pyknaapJ/kjDeMGgchdOUlt5aZcJZO1q8mKtw=;
 b=tU0XZSw8e4Ws6iZOGfhACAY0qOFB6LptP/wiQNm3bDY4LOdL/QsmUpuSVGfc5wxLWtX2MZxhcdXBwQnXrZoOMtwYJFlToj4VF4qWVgsGTuEeMPTbAKCbRCLJ8Y1sIUEPxA5HEQeUUFZf0E3g777xw/ytCIkXIRggsMXi5DlPnqQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB4384.eurprd05.prod.outlook.com (52.134.30.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.23; Thu, 19 Mar 2020 12:57:25 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2814.021; Thu, 19 Mar 2020
 12:57:25 +0000
X-Gm-Message-State: ANhLgQ36U2OAvPJRkdJQihBdRm4enAqHdwgWsLaNC1cRtT2agsDONohK
 DOyZgFy9v/b8JSGjaHw6pzYsvPimxRFGM0HjJgk=
X-Google-Smtp-Source: ADFU+vv7UiYjMyQD/4E12h86CR7/cYPU2WKNtIqkeDfie1uanDVnCD4QjGal5pFHF/ZOfpjDVMav8J/uvLvFUH2D2Ko=
X-Received: by 2002:ac8:554a:: with SMTP id o10mr2778015qtr.224.1584622638973; 
 Thu, 19 Mar 2020 05:57:18 -0700 (PDT)
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <20200317174043.GA1464607@ulmo>
 <20200317210042.ryrof3amr7fxp4w5@pengutronix.de>
 <20200318225953.GA2874972@ulmo>
 <CAGgjyvGd4y8M0L1sFMvQ1=gPcKfUPoR13dVS7F5WZx=333KG6g@mail.gmail.com>
 <20200319121026.3rzcxdknfyhtkryi@pengutronix.de>
In-Reply-To: <20200319121026.3rzcxdknfyhtkryi@pengutronix.de>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Thu, 19 Mar 2020 14:57:07 +0200
X-Gmail-Original-Message-ID: <CAGgjyvFebxXaKkhy-UR1-kaYWozpP67YtVf5mp4mTHFQRhsjKg@mail.gmail.com>
Message-ID: <CAGgjyvFebxXaKkhy-UR1-kaYWozpP67YtVf5mp4mTHFQRhsjKg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: MN2PR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:208:d4::40) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-qt1-f178.google.com (209.85.160.178) by
 MN2PR04CA0027.namprd04.prod.outlook.com (2603:10b6:208:d4::40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22 via Frontend Transport; Thu, 19 Mar 2020 12:57:23 +0000
Received: by mail-qt1-f178.google.com with SMTP id m33so1646914qtb.3;
 Thu, 19 Mar 2020 05:57:23 -0700 (PDT)
X-Gm-Message-State: ANhLgQ36U2OAvPJRkdJQihBdRm4enAqHdwgWsLaNC1cRtT2agsDONohK
 DOyZgFy9v/b8JSGjaHw6pzYsvPimxRFGM0HjJgk=
X-Google-Smtp-Source: ADFU+vv7UiYjMyQD/4E12h86CR7/cYPU2WKNtIqkeDfie1uanDVnCD4QjGal5pFHF/ZOfpjDVMav8J/uvLvFUH2D2Ko=
X-Received: by 2002:ac8:554a:: with SMTP id o10mr2778015qtr.224.1584622638973; 
 Thu, 19 Mar 2020 05:57:18 -0700 (PDT)
X-Gmail-Original-Message-ID: <CAGgjyvFebxXaKkhy-UR1-kaYWozpP67YtVf5mp4mTHFQRhsjKg@mail.gmail.com>
X-Originating-IP: [209.85.160.178]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 570ac88b-5d4b-40e7-6c8c-08d7cc051169
X-MS-TrafficTypeDiagnostic: VI1PR05MB4384:
X-Microsoft-Antispam-PRVS: <VI1PR05MB438482C1B40F4958951803ADF9F40@VI1PR05MB4384.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(199004)(5660300002)(6862004)(9686003)(44832011)(450100002)(4326008)(66946007)(66556008)(55446002)(55236004)(6666004)(86362001)(66476007)(498600001)(2906002)(966005)(53546011)(8676002)(81156014)(81166006)(54906003)(52116002)(42186006)(8936002)(186003)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4384;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y9CljjCgpjvMGtRFzS2W5w7qTHttXtn99OsaWB8mr+i8SU7qSjcAMvwyS5gQAQTSO/kixHx5+pFmh1PAoUOHH625JCWQFkPnyjxuU2WhMPnW5leGNOBHFPaT22+VeDIvjr2PrT7YTCLu/+96NLwNuqiMHLwm8OXYmcOjTa4GO6nYrPsRSUX9G6ZCis2Ipl3lu/Aj3lCPFRI0csUCyXb/FsrKx9HUtln2fddvP/VBJWafyYya9WsYagInyyXOEwXs/W4BW2D4KDLXSmQP+zElLU8418sC83cullqqdVE2PFFcXidH05thiLqifT0Y1RIgsqGXf1mbTk6NKGAhhA5X7ZKOijlYEmhKg7MM1iouRmqN0wIz9Ri5nD/fc2vW2/zxKgOzueiERGpNoOVarY4dAZ3P9MlyljGK7sm2yY6uGSjZacltP5Yb7zVAJyt5/yQd00FbqsABnkfQzLtUxskzasoD5/xYdP8QGklfcQbmewsJVW8RtwVsN/oZQHjDtxi1F8HJrHVMv4jfNJMsinVk+w==
X-MS-Exchange-AntiSpam-MessageData: RgUsfkaRWRO5188fdPGaQTF7TSMWcKCwuyV8jBoEu5XYtJuBoZWPmlTLYQ6gBhqKfpRngO/KahZaKPAjYtixXsOu3wvrTp1rGWTTdXQ/M7BESBHZjHi82tkUpfgoxmxE6ZaEGN7Y9whyxxBv/0w9ig==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 570ac88b-5d4b-40e7-6c8c-08d7cc051169
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 12:57:24.0735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FnKkTj2y9vq701sHy6quJ7xiaV1247AOx7DZLbzv1X3p4H68Wf4Ii9l/oVnBZ6q0N6GRYOZumamA2lWgXP3hu09w6ZDPOhXd42erhvPwuE8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4384
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_055728_569308_5B0BB3CF 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.117 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 2:11 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> Hello,
>
> [dropping Tony Prisk <linux@prisktech.co.nz> from recipients]
>
> On Thu, Mar 19, 2020 at 01:40:28PM +0200, Oleksandr Suvorov wrote:
> > Thierry, I see the PWM core converts the bit field "third cell" into
> > the polarity variable.
> > Now I probably understand your sight and agree that we shouldn't give
> > the same names to bits in bitfield (dts) and values of a variable.
> >
> > But there are lots of useless "0" values of third cell of "pwms"
> > option in dts files.
> >
> > I see 2 ways now:
> > - just remove all "0" "third cell" from "pwms" options in dts files. I
> > see this "0" confuses some people.
>
> Then you have to overwrite pwm-cells of the provider. If there are two
> PWMs used from the same provider and only one is inverted this won't
> work. (Not entirely sure I understood your suggestion.) So I don't like
> this suggestion.

Good point, agree. But we still have the unnamed "0".

What about renaming the dt-bindings macro PWM_POLARITY_INVERTED
and add the new one for the normal polarity?
Like PWM_FLAG_POLARITY_NORMAL / PWM_FLAG_POLARITY_INVERTED or
DT_PWM_POLARITY_NORMAL / DT_PWM_POLARITY_INVERTED?

Using different prefix will prevent interfering names of enum and
macros in the future
and will allow using the named nop-flag PWM_FLAG_POLARITY_NORMAL in dts.

> And also in my eyes this isn't clearer, just more complicated to use.
>
> > - convert pwm_state.polarity into pwm_state.flags and use bitfield
> >   directly from dtb.
> >   It simplifies the parsing logic and makes adding new flags easier.
>
> *shrug*, I don't care much.
>
> Best regards
> Uwe
>
> --
> Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig       =
     |
> Industrial Linux Solutions                 | https://www.pengutronix.de/ =
|



--=20
Best regards
Oleksandr Suvorov

Toradex AG
Ebenaustrasse 10 | 6048 Horw | Switzerland | T: +41 41 500 48 00

