Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAF1189B62
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 12:54:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lP8agbcq2AYAILADyUgk5nJ/czwsxA8ATaSe+V6FyBs=; b=rRO6bFPzyeVdE0IgLogkxi978
	Z86pYdA6X9opOYAd65yH1RMrw7aZVEXFPIJ+4Pwwy96M8mXqlKtuUAlEqzpUpMKDIrn5K/cmRVjOY
	lt7Q24yLYxzYVX949YR80syeKGODt5Ys6ylO6bcxvCNiG5D8+HqyIofa5qnVEkLFNYgXMsbd5xiiK
	DU0ErGVX3p+AM9wljqXYk/WBzGlPWnsy9vD1P8WrFXltkrxe3OvLQ5wI1Xdd5GLIa3baYgMQmNPYN
	EdNV5+zjWYtTSc/OCB34JABKb4WcYZ0Yc/TyORzFZxXX2rqszY9d7HhRYiNydgAD5kdEIBw9as9Mp
	M3UnPKTHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXGw-0007d7-CZ; Wed, 18 Mar 2020 11:54:06 +0000
Received: from mail-eopbgr70129.outbound.protection.outlook.com
 ([40.107.7.129] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXGC-0006pl-NI; Wed, 18 Mar 2020 11:53:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dtzs2GW7vy0UmZRmF+m72Fpo4YleF9VH/w+g52Ued9FukFS2RmJIYi+MHnDyOFCD6ME27sKc8eaUUVLyC7IN2oGZ5qoe7h2rB7jMDulrsWTLEBmxthue2D4qazrjKxKq1zcDUVe5ETbIzhzYuiqEErj5K41VdaK2QpeV8qvCQMI9cMU7ovbPoAMHjNgsGCZ2h2gpT1da/kqWYWLCwv+MIaX7A/KKqV8yKpUqWlkBD6U7B1a8+cwk/zpxNPusCT+0D5KSumtr9IYJfFCTpUCsg4miBRyYx4vnHh+yq2n/1mxablP6G1eocVX25hLz/trvMgSQ5HTX85JS1z3/fcEzNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lP8agbcq2AYAILADyUgk5nJ/czwsxA8ATaSe+V6FyBs=;
 b=BNZiGUHM1VYccOLplqeqjFdv9LGeVzXOaJ5ZQN1tz80pYeWdJYqMP7lG0qAtXZmt6KoRcAGJQ81NNKdkQEYvnnPaOwzpQCRNz2b8pcSACK9uZZQArJQI/7XjBUr09SQrL7Wua9H676/tZTjNkj+oxqkvwhVhuJi+4tybgbITEYhCkXCCb/dX+kX2313Pkw15DD76S6E5pnDG378ETKXe6TmZGlTBrSU3/YPPHyXf4SAy55mQ/8cRWzjw/DLsDauowhOpP5FB/w5gUJrHecvclx764TRgM5oTBcOB+G4Jq4Nn8UFrBHHzAWFQFHQ6ezW5cvhSIGIxXcHQi5HchEi3kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lP8agbcq2AYAILADyUgk5nJ/czwsxA8ATaSe+V6FyBs=;
 b=raY6hGar69e12FrP/DIAVhCgnGos7uAR2lTW4uDkqcWc/mgg4e2cr3ZnjZXXAKaFGShfWzoVMH7P4dK2yxgyxSEOq9lF5sBH2+BgKOegmuEBACHawoTcAlCnIfXB/rZ2boE6fCJklSeCyPn8mOGKr1Y7N+grjcDUhLflPnZj+gM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB5456.eurprd05.prod.outlook.com (20.177.201.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Wed, 18 Mar 2020 11:53:16 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2814.021; Wed, 18 Mar 2020
 11:53:16 +0000
X-Gm-Message-State: ANhLgQ3k/yH4oRhxZ5LnJMKIrp3699GUzrkm2GcF+QNZ7p6c9OlWFnF0
 rt3N5Dc5A0bJhw4DkqwZ5TRePU2ZoDStZ9NMP1s=
X-Google-Smtp-Source: ADFU+vuIN9vi3EnzahwoHqBu0uZg9qdX6KincFfsWht2IbWF+j4fV2L42M4aXtG7Pv38JtpTaFmsRwkNpHNmxW/8YWA=
X-Received: by 2002:a37:4fd4:: with SMTP id d203mr3613801qkb.249.1584532071685; 
 Wed, 18 Mar 2020 04:47:51 -0700 (PDT)
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <20200317174043.GA1464607@ulmo>
In-Reply-To: <20200317174043.GA1464607@ulmo>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Wed, 18 Mar 2020 13:47:40 +0200
X-Gmail-Original-Message-ID: <CAGgjyvGDTD=ZgEjU540HLApQXCoM1a8bk_-eQbS44sge+GpeAg@mail.gmail.com>
Message-ID: <CAGgjyvGDTD=ZgEjU540HLApQXCoM1a8bk_-eQbS44sge+GpeAg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
To: Thierry Reding <thierry.reding@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MN2PR16CA0064.namprd16.prod.outlook.com
 (2603:10b6:208:234::33) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-qt1-f175.google.com (209.85.160.175) by
 MN2PR16CA0064.namprd16.prod.outlook.com (2603:10b6:208:234::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21 via Frontend
 Transport; Wed, 18 Mar 2020 11:53:15 +0000
Received: by mail-qt1-f175.google.com with SMTP id z8so16934014qto.12;
 Wed, 18 Mar 2020 04:53:15 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3k/yH4oRhxZ5LnJMKIrp3699GUzrkm2GcF+QNZ7p6c9OlWFnF0
 rt3N5Dc5A0bJhw4DkqwZ5TRePU2ZoDStZ9NMP1s=
X-Google-Smtp-Source: ADFU+vuIN9vi3EnzahwoHqBu0uZg9qdX6KincFfsWht2IbWF+j4fV2L42M4aXtG7Pv38JtpTaFmsRwkNpHNmxW/8YWA=
X-Received: by 2002:a37:4fd4:: with SMTP id
 d203mr3613801qkb.249.1584532071685; Wed, 18 Mar 2020 04:47:51 -0700 (PDT)
X-Gmail-Original-Message-ID: <CAGgjyvGDTD=ZgEjU540HLApQXCoM1a8bk_-eQbS44sge+GpeAg@mail.gmail.com>
X-Originating-IP: [209.85.160.175]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aad552e2-1dec-4d8f-aab6-08d7cb32f17b
X-MS-TrafficTypeDiagnostic: VI1PR05MB5456:
X-Microsoft-Antispam-PRVS: <VI1PR05MB545678DD6EDA9D3BA9E04BF9F9F70@VI1PR05MB5456.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 03468CBA43
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(39850400004)(376002)(396003)(346002)(199004)(66556008)(66476007)(26005)(52116002)(42186006)(478600001)(54906003)(66946007)(53546011)(2906002)(55236004)(6666004)(81156014)(9686003)(55446002)(450100002)(5660300002)(186003)(8936002)(316002)(44832011)(8676002)(4326008)(6862004)(81166006)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5456;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: acF67KKwhF3KUaL0msz+cdXq1x0VSn6OCAssSb4Levcd+1jOP3+Ymn0jscm3VqQdBkmko2nYvXNFmRWTL+aM7Nk0a1SlST2Z5h3YPP/hdP6jsZd/M+lBaXI0UjMRfr3NwKmeq6tIa0AJ/LWOQY3FfoBOEWevPPUtCMjxmCvILf4mGh1IkpKz+N3qkccTowAsvH15FzH0Sx//Gv0x+DO8Q2DDuNBda88Kk/NALgLqivNXPbZSuA9DowzhTX49Z0GPwK+jz3T7yIY50OqWJUxB4FwlDdoZSDIRcq9Q1Ck6cm1OOdcTYD/28qur68/Viiubrx7JycaNS4gewuYooYsObJi3R/xdkz34JQ/QQxGP2x9MbkAtVye78zZ0X0oEBqBLakO6TpBnZP8RU/LzhfBlD3G2w50Jopb+lFZo4Nlm8v5r2PQpOPgvodwsBRrnAjRt
X-MS-Exchange-AntiSpam-MessageData: s95irvv0uP4QK4Cns697H0ZBHq1kXuHSH+Q6r/4LHWf/57y1jXLsLN06LrViJVZPNWqia4nb30i3qRU7uerPhaR2JdRcKD9ZHJcTnfyl23QZemJ4XbvdMiYUyb1BzCtMms3CZa7QT8lIOKthuUsqfg==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aad552e2-1dec-4d8f-aab6-08d7cb32f17b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2020 11:53:16.0089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lMFQJGCK2KoxTqEGrjBAuaQ5kUVbaKklBCjCmsUOcvowxvIO1pG50bZBnOxEPNXEPsd5ogiGbMKy2lT6H05YlMwaEIAGbaez3rYuXI4/G+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5456
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_045320_768598_EFC73CBE 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Mar 17, 2020 at 7:41 PM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> On Tue, Mar 17, 2020 at 02:32:25PM +0200, Oleksandr Suvorov wrote:
> > The polarity enum definition PWM_POLARITY_INVERSED is misspelled.
> > Rename it to PWM_POLARITY_INVERTED.
>
> It isn't misspelled. "inversed" is a synonym for "inverted". Both
> spellings are correct.

> And as you noted in the cover letter, there's a conflict between the
> macro defined in dt-bindings/pwm/pwm.txt. If they end up being included
> in the wrong order you'll get a compile error.

This patch is a part of the patchset, which in result removes enum at all,
so there will be no definition conflict.

> The enum was named this way on purpose to make it separate from the
> definition for the DT bindings. Note that DT bindings are an ABI and can
> never change, whereas the enum pwm_polarity is part of a Linux internal
> API and doesn't have the same restrictions as an ABI.

AFAIU, DTS files are not a part of ABI.

I understand that enums are better than macros for some reasons.
However, I think it is dangerous to use duplicate definitions in
different places when values of these definitions use in the same
code.
So, given that the enum cannot be used in DT, I left only macros.

You personally wrote that the enum pwm_polarity can change, so the
desynchronization I quite possible.

> As far as I'm concerned this is completely unnecessary churn that's
> potentially going to come back and bite us, so I see no reason to accept
> this.


>
> Thierry
--
Best regards
Oleksandr Suvorov

Toradex AG
Ebenaustrasse 10 | 6048 Horw | Switzerland | T: +41 41 500 48 00

