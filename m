Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DE918B284
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 12:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X1JMdCzgSmxnlUslDXemgsBTKCWxeoCXEBHNe8q40zU=; b=UzePS72efDP2s17ZjzRe0wnX7
	GzJrCzWUkhb9fa0S8S1j04lqfMsBcI1C6fuLwwo9dAX9iQGtMDw5/CQxvw6O6MHf8K9M63Bqlbe3S
	E1ogmjp3KNKAm1uKQDGXXm9w738xx5uW1/guZjHuzUX2oEWHaQFyqEExUiRj3d1qMh3JnRSoztmIg
	Gn9euXKDFhE4uM/H6GQdPw+SYIVgmU/LdgPAZKlNHTCv7VjqnloCEGotYyiMJ1A8W78NCxtAwWFNa
	wetkZjZ5k8fhhVSD3yYmfBmH4KEJn8bD5nAI6eYWWj1PSP8NaR3gJ+tPdfc35ZHK4JU9pD44ZoVR6
	iwgV8r+pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEtdk-00052y-Lk; Thu, 19 Mar 2020 11:47:08 +0000
Received: from mail-eopbgr140092.outbound.protection.outlook.com
 ([40.107.14.92] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEtdR-0004pG-MB; Thu, 19 Mar 2020 11:46:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGNgbY9Ta49flkaM2nIjgTt+NYq9wLh41R5lAD9EyRj46jaCMvge+TE5MVNVpZdq4kwfQEL+3R9J2XhlKVvznxhXshMar9hld7kRpPgnYZQehkWr84VCrs2MkkUWuFN7XjFAuF8Yb3EAmv6tcT1AuxkeeftHg5fl7MVfvvDCzwTBhlgRFmT/mcZuXrIfKGmSwN0WJSDgHOrGge0GZfk5sXOs3uq1w1ngPWcuouott2Nd8li7NkcxZkFOaWN8mjoWbJdOKMP1MSeMMpEyBpqRgiU69FQk/aSjtFzZPrE3QKt99altXM5AFX67CELH47ohplqUP06CEm8U55moIvnBoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X1JMdCzgSmxnlUslDXemgsBTKCWxeoCXEBHNe8q40zU=;
 b=cXvUH43rBxWxJsyA3MT7D8Mo9qr2P0Mfy+spXSRY4npnGF8dQKPVF4O5FWGUpbsdYQlmzYhlksMv6SCDWbZb4bOZ6VlAR+KCM92CyOkbsp7M7Udcg3k/zGgbQ+dLSp9mrvSRvuXaEOoj046N5hCNNV4OGcA8A6Qn3MUclYivs6qez6y7YY4KgOVV22IgZPVlDD4p7EeKqaA0ES+szSl6LTeVcB29Kl0kDhsAkUxgi/0jo7ML/1laLl4oitwctfM6CToXE8uPuw3oYrzPtIKxYYqZoQx8WvEPhhUbiv0Dlr5XgejhA3rmc3ECUhgbK2hcwDE4jpy1+9y8WWRoVsJ2WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X1JMdCzgSmxnlUslDXemgsBTKCWxeoCXEBHNe8q40zU=;
 b=E0mc/8xaX/FcUVsqgbRpopylcTiIiw5Ht59oE3jGK0P4PXh/Ll4Fow+Ty0SpQuTWt4BnPuHaJemesI5Ajr/kEx9chxqziPZlNL06SdaBuTau7iEkHvEuDTBZhQ1CY9+QaKqaV/CXW16wyuUWE9hqwkuGo3+a/lBTjdzgdH9twbM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1SPR01MB0382.eurprd05.prod.outlook.com (20.178.81.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Thu, 19 Mar 2020 11:46:39 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2814.021; Thu, 19 Mar 2020
 11:46:39 +0000
X-Gm-Message-State: ANhLgQ3zHyD2OEhn5bggFA+fhjHDRVA0j4ZoK4Tcod3kQARymcFuqXjY
 7tmliO94qjVl2cLhxuG40iHIBp+/mgDcG/lKi/I=
X-Google-Smtp-Source: ADFU+vtIv9WWiUZDY1zK2/5Xskt2zIX9VTS8I1COHPgUfpZpdDX7VDSalNnvt8sXvRj9YOkAdKw03F1mQyy6mpu0nPY=
X-Received: by 2002:ad4:54d4:: with SMTP id j20mr2405410qvx.75.1584618039943; 
 Thu, 19 Mar 2020 04:40:39 -0700 (PDT)
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <20200317174043.GA1464607@ulmo>
 <20200317210042.ryrof3amr7fxp4w5@pengutronix.de>
 <20200318225953.GA2874972@ulmo>
In-Reply-To: <20200318225953.GA2874972@ulmo>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Thu, 19 Mar 2020 13:40:28 +0200
X-Gmail-Original-Message-ID: <CAGgjyvGd4y8M0L1sFMvQ1=gPcKfUPoR13dVS7F5WZx=333KG6g@mail.gmail.com>
Message-ID: <CAGgjyvGd4y8M0L1sFMvQ1=gPcKfUPoR13dVS7F5WZx=333KG6g@mail.gmail.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
To: Thierry Reding <thierry.reding@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: CO2PR18CA0049.namprd18.prod.outlook.com
 (2603:10b6:104:2::17) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-pl1-f172.google.com (209.85.214.172) by
 CO2PR18CA0049.namprd18.prod.outlook.com (2603:10b6:104:2::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21 via Frontend Transport; Thu, 19 Mar 2020 11:46:39 +0000
Received: by mail-pl1-f172.google.com with SMTP id w3so958793plz.5;
 Thu, 19 Mar 2020 04:46:39 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3zHyD2OEhn5bggFA+fhjHDRVA0j4ZoK4Tcod3kQARymcFuqXjY
 7tmliO94qjVl2cLhxuG40iHIBp+/mgDcG/lKi/I=
X-Google-Smtp-Source: ADFU+vtIv9WWiUZDY1zK2/5Xskt2zIX9VTS8I1COHPgUfpZpdDX7VDSalNnvt8sXvRj9YOkAdKw03F1mQyy6mpu0nPY=
X-Received: by 2002:ad4:54d4:: with SMTP id j20mr2405410qvx.75.1584618039943; 
 Thu, 19 Mar 2020 04:40:39 -0700 (PDT)
X-Gmail-Original-Message-ID: <CAGgjyvGd4y8M0L1sFMvQ1=gPcKfUPoR13dVS7F5WZx=333KG6g@mail.gmail.com>
X-Originating-IP: [209.85.214.172]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d16fd174-65b5-4826-5ae1-08d7cbfb2fc0
X-MS-TrafficTypeDiagnostic: VI1SPR01MB0382:
X-Microsoft-Antispam-PRVS: <VI1SPR01MB038234994FADDC08B7AD49A2F9F40@VI1SPR01MB0382.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39850400004)(376002)(346002)(396003)(136003)(199004)(6666004)(54906003)(8936002)(2906002)(8676002)(81156014)(66476007)(81166006)(186003)(66574012)(26005)(66556008)(66946007)(44832011)(5660300002)(53546011)(316002)(52116002)(42186006)(966005)(86362001)(9686003)(4326008)(6862004)(55446002)(450100002)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1SPR01MB0382;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F+5HjOxkcKlK8Pva+vyKzWztLAS7pPo8prOnvsDVPAN4Q7faD001APCFslDIeOYAejp/QBbgFl3g+Prk3An+tBMmPm4rBMRAW9b235lLz2/laXeXJRbwRNaJ0Pc2TuHFiXzqtcY+2+N6h+r4Wf2uGoCtfbr8cYTcP9T/bXTo4aiqg3LlQiElkK8sg87GVaAntMIHM1xOFgvTbZAP5FdfFufSK8r4Ol3gtysIoDh7btXE6l0p0saZttTSyr1Gv4JvWTdxOCSbHtXTos6W5FwnO8OxMVgvDPNkUMFJrrNU/Y4/2RRPa/F/upywSl+8lH0VlUCux1LRGBitUfvy0j2NtG0QLuB+ub0m/pSFWAARJ/RtCaPTgzO5N+Ukk4b6dS0SDQFY9V5/CW5HtbffJir9R7MacvLrM83dEAnx8ZzqdpVePZbODSBOiZep5Hoq7HXr3KDWK9wb1U65y86I/AINWe8kMHAzPUJddDdStW0KX67e2bYtV6JpilrpctueCkpWckfDFfsqCg554QA/WdJuew==
X-MS-Exchange-AntiSpam-MessageData: N2HouI0fIBc+1Twp0n8yH6R1iNUb3i0JQHqHjusZ9YpCiIVKRepfL7BtU5j4YufIk0OcEZ2T7WdZkZWO7AjzscfvF+mUxGXEXMggY2lMTrmr1ce42Do008JYxogmkKadeVvXk8DdZM8EAm92jJ9AHw==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d16fd174-65b5-4826-5ae1-08d7cbfb2fc0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 11:46:39.7627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M2DKc/uetUm16sIWJazQlH/+p9UdLAxSgCIOH8e93ShF++wlc0OqmzZqA0iRyU9UMvPjUBJOULa6J9uv1ZvrjLlUvKSRH5HIRNkYwmDuLzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1SPR01MB0382
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_044649_730071_77CAE38C 
X-CRM114-Status: GOOD (  28.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.92 listed in list.dnswl.org]
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
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 devicetree@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Tony Prisk <linux@prisktech.co.nz>, Palmer Dabbelt <palmer@dabbelt.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 1:00 AM Thierry Reding <thierry.reding@gmail.com> w=
rote:
>
> On Tue, Mar 17, 2020 at 10:00:42PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> > Hello,
> >
> > On Tue, Mar 17, 2020 at 06:40:43PM +0100, Thierry Reding wrote:
> > > On Tue, Mar 17, 2020 at 02:32:25PM +0200, Oleksandr Suvorov wrote:
> > > > The polarity enum definition PWM_POLARITY_INVERSED is misspelled.
> > > > Rename it to PWM_POLARITY_INVERTED.
> > >
> > > It isn't misspelled. "inversed" is a synonym for "inverted". Both
> > > spellings are correct.
> >
> > Some time ago I stumbled about "inversed", too. My spell checker doesn'=
t
> > know it and I checked some dictionaries and none of them knew that word=
:
> >
> > https://www.lexico.com/search?utf8=3D%E2%9C%93&filter=3Ddictionary&dict=
ionary=3Den&query=3Dinversed
> > https://de.pons.com/%C3%BCbersetzung/englisch-deutsch/inversed
> > https://dictionary.cambridge.org/spellcheck/english-german/?q=3Dinverse=
d
> >
> > https://en.wiktionary.org/wiki/inverse#Verb mentions "inverse" as a ver=
b
> > having "inversed" as past participle.
>
> Here are the first three results from a Google query:
>
>         https://www.yourdictionary.com/inversed
>         https://www.dictionary.com/browse/inversed
>         https://en.wiktionary.org/wiki/inversed
>
> > Having said this I think (independent of the question if "inversed"
> > exists) using two similar terms for the same thing just results in
> > confusion. I hit that in the past already and I like it being addressed=
.
>
> I don't know. It's pretty common to use different words for the same
> thing. They're called synonyms.
>
> > > And as you noted in the cover letter, there's a conflict between the
> > > macro defined in dt-bindings/pwm/pwm.txt. If they end up being includ=
ed
> > > in the wrong order you'll get a compile error.
> >
> > There are also other symbols that exist twice (GPIO_ACTIVE_HIGH was the
> > first to come to my mind). I'm not aware of any problems related to
> > these. What am I missing?
>
> There's currently no problem, obviously. But if for some reason the
> include files end up being included in a different order (i.e. the
> dt-bindings header is included before linux/pwm.h) then the macro will
> be evaluated and result in something like:
>
>         enum pwm_polarity {
>                 PWM_POLARITY_NORMAL,
>                 1,
>         };
>
> and that's not valid C, so will cause a build error.
>
> > > The enum was named this way on purpose to make it separate from the
> > > definition for the DT bindings.
> >
> > Then please let's make it different by picking a different prefix or
> > something like that.
>
> Again, seems to me like unnecessary churn. Feel free to propose
> something, but I recall being in the same position at the time and this
> was the best I could come up with.
>
> > > Note that DT bindings are an ABI and can
> > > never change, whereas the enum pwm_polarity is part of a Linux intern=
al
> > > API and doesn't have the same restrictions as an ABI.
> >
> > I thought only binary device trees (dtb) are supposed to be ABI.
>
> Yes, the DTB is the ABI. dt-bindings/pwm/pwm.h is used to generate DTBs,
> which basically makes it ABI as well. Yes, the symbol name may not be
> part of the ABI, but changing the symbol becomes very inconvenient
> because everyone that depends on it would have to change. Why bother?
>
> My point is that enum pwm_polarity is an API in the kernel and hence its
> easy to change or extend. But since that is not the same for the DTB, we
> need to be careful what from the internal kernel API leaks into the DTB.
> That's why they are different symbols, so that it is clear that what's
> in dt-bindings/pwm/pwm.h is the ABI.

Thierry, I see the PWM core converts the bit field "third cell" into
the polarity variable.
Now I probably understand your sight and agree that we shouldn't give
the same names to bits in bitfield (dts) and values of a variable.

But there are lots of useless "0" values of third cell of "pwms"
option in dts files.

I see 2 ways now:
- just remove all "0" "third cell" from "pwms" options in dts files. I
see this "0" confuses some people.
- convert pwm_state.polarity into pwm_state.flags and use bitfield
directly from dtb.
  It simplifies the parsing logic and makes adding new flags easier.

What do think?

>
> Thierry

--=20
Best regards
Oleksandr Suvorov

Toradex AG
Ebenaustrasse 10 | 6048 Horw | Switzerland | T: +41 41 500 48 00

