Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E369A188FF8
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Mar 2020 22:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VeAHv1Hp+boT+ICggf029a0q01HLDy5MKOkH0V5mYTA=; b=kHUlr+lsZPfh2grku7s1gn2td
	c/0O65DZ2y7cubSBRSgXLl2N4bdh1TfoJCogaBk0fC7KyTR2vpThs0tS1es6RrWbzb+eyuHRcHFK1
	CSSz4eK5vEldlHtVpH38yBXEVtDyZj9GRQAZecfK1YVxws0h3iVidTluqqHA+ip2D97PZEuEDdhQ2
	JNwj9VSFG57+KCN1YmP5pwsoWq9EkCdw0olOqkTiPek8kq5HNR0pHtQIZAdSY3PvMUMH8vJgdlYrE
	1vNGbYQCAIaSNFAdPbUlSvUZ6KB/tnM9EyY5k+4KiUREhpga+75xbPV9nO9hIsVKLcyiTDo2nVyb/
	dRkWmtsFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJLN-0007lc-Fx; Tue, 17 Mar 2020 21:01:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJL8-0007Yd-Hu
 for linux-riscv@lists.infradead.org; Tue, 17 Mar 2020 21:01:32 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jEJKW-00039f-Bg; Tue, 17 Mar 2020 22:00:52 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jEJKM-0003eU-V8; Tue, 17 Mar 2020 22:00:42 +0100
Date: Tue, 17 Mar 2020 22:00:42 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
Message-ID: <20200317210042.ryrof3amr7fxp4w5@pengutronix.de>
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <20200317174043.GA1464607@ulmo>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200317174043.GA1464607@ulmo>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_140130_606438_F19EAD39 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
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
 Paul Cercueil <paul@crapouillou.net>, Igor Opaniuk <igor.opaniuk@toradex.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Tony Prisk <linux@prisktech.co.nz>, Palmer Dabbelt <palmer@dabbelt.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello,

On Tue, Mar 17, 2020 at 06:40:43PM +0100, Thierry Reding wrote:
> On Tue, Mar 17, 2020 at 02:32:25PM +0200, Oleksandr Suvorov wrote:
> > The polarity enum definition PWM_POLARITY_INVERSED is misspelled.
> > Rename it to PWM_POLARITY_INVERTED.
> 
> It isn't misspelled. "inversed" is a synonym for "inverted". Both
> spellings are correct.

Some time ago I stumbled about "inversed", too. My spell checker doesn't
know it and I checked some dictionaries and none of them knew that word:

https://www.lexico.com/search?utf8=%E2%9C%93&filter=dictionary&dictionary=en&query=inversed
https://de.pons.com/%C3%BCbersetzung/englisch-deutsch/inversed
https://dictionary.cambridge.org/spellcheck/english-german/?q=inversed

https://en.wiktionary.org/wiki/inverse#Verb mentions "inverse" as a verb
having "inversed" as past participle.

Having said this I think (independent of the question if "inversed"
exists) using two similar terms for the same thing just results in
confusion. I hit that in the past already and I like it being addressed.

> And as you noted in the cover letter, there's a conflict between the
> macro defined in dt-bindings/pwm/pwm.txt. If they end up being included
> in the wrong order you'll get a compile error.

There are also other symbols that exist twice (GPIO_ACTIVE_HIGH was the
first to come to my mind). I'm not aware of any problems related to
these. What am I missing?
 
> The enum was named this way on purpose to make it separate from the
> definition for the DT bindings.

Then please let's make it different by picking a different prefix or
something like that.

> Note that DT bindings are an ABI and can
> never change, whereas the enum pwm_polarity is part of a Linux internal
> API and doesn't have the same restrictions as an ABI.

I thought only binary device trees (dtb) are supposed to be ABI.

Best regards
Uwe

-- 
Pengutronix e.K.                           | Uwe Kleine-König            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

