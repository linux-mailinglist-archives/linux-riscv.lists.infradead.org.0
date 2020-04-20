Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DF71B1196
	for <lists+linux-riscv@lfdr.de>; Mon, 20 Apr 2020 18:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kZuYn8kQP13hRw/Lzuw9bbE5Tamh5euycYn0ntDury4=; b=DwWza7NW5xcz2/tFmvo6LkgCz
	+YJqDkpfwYyJViZz7yL30wt82laa9mKzYGFR7oKWjJD6Copu4O9nocU/vE5LlVdu/bbr5AJyulmdg
	pHNhuUUP3mtpLnk0CIW7XFLNPXX47jkg6Yqp0yn7oCGGWxSkgcUoyMI4k4/D5vlqaG6omNkWHisnj
	JGUNm2xKucwJ6AvGyia0Mddrc1az2DUrjFLRC2g49v19cMdd4EhCwk84ZJc7tJ9wdtKrJd2T96tb2
	EI6sAYQtbfOTdgp2hCmDGke3w/61+dYxsXXSYLgD2mAyiMWIbuDUu4lSQt/oD+0m4S1j9T2ZfflRr
	vSlDeOVnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZHk-0000mI-OS; Mon, 20 Apr 2020 16:28:40 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZHD-0000Fd-T0; Mon, 20 Apr 2020 16:28:09 +0000
Received: from localhost (p54B335B8.dip0.t-ipconnect.de [84.179.53.184])
 by pokefinder.org (Postfix) with ESMTPSA id DF97D2C1F58;
 Mon, 20 Apr 2020 18:28:06 +0200 (CEST)
Date: Mon, 20 Apr 2020 18:28:06 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/2] dt-bindings: Remove cases of 'allOf' containing a
 '$ref'
Message-ID: <20200420162806.GB3721@ninjato>
References: <20200416005549.9683-1-robh@kernel.org>
 <20200416005549.9683-2-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="jq0ap7NbKX2Kqbes"
Content-Disposition: inline
In-Reply-To: <20200416005549.9683-2-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_092808_249062_149580C8 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Ulf Hansson <ulf.hansson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-remoteproc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 linux-riscv@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-rtc@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, alsa-devel@alsa-project.org,
 Maxime Ripard <mripard@kernel.org>, linux-can@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amit Kucheria <amit.kucheria@linaro.org>,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--jq0ap7NbKX2Kqbes
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2020 at 07:55:49PM -0500, Rob Herring wrote:
> json-schema versions draft7 and earlier have a weird behavior in that
> any keywords combined with a '$ref' are ignored (silently). The correct
> form was to put a '$ref' under an 'allOf'. This behavior is now changed
> in the 2019-09 json-schema spec and '$ref' can be mixed with other
> keywords. The json-schema library doesn't yet support this, but the
> tooling now does a fixup for this and either way works.
>=20
> This has been a constant source of review comments, so let's change this
> treewide so everyone copies the simpler syntax.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Same preamble for my ack as in patch 1:

Acked-by: Wolfram Sang <wsa@the-dreams.de>


--jq0ap7NbKX2Kqbes
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6dzZYACgkQFA3kzBSg
KbZHYg//W5YxCeazbDM94E6YBsxW12FqWEDS34r8khleoxdl3PUw+iNq6ZW20vVf
iukBEN6kySmVQjCoT4FHxxZSd3MuOxISlT7jpTr1qlWZAYjKBQ2hreJ53IoSwac5
KLqfatKLSIIDvnPPOrvqqVOLCD998wpaLJlfoXiIPNwnaU7j+nB0lFjsv5gA+eeN
jKUFY8cv0b3pY9aUhatVnodM421EWf9pH5K6hkhbxhtS2E/Sb+zw4v6ewUuxnMIH
rJxcdnWBUtqDh26y7ezSSLNUgU7TDYnuT3v5Zi8m7HaZ1npdGb5EJwg7Jvr5yi2k
qBeYtB5Ed9+IjPit/Y1GLJamCVdohdPxiPCzdqr5iSdH3+DsbmWJjxN7NjfJvnGu
M5wmk4m3pSEcYGy7cRZQPzv2AjHPYgqxJIxBzXpejNT1U0BJpJEKXqDAJrRGBBOR
Mb16mCEDGZZxw+m1DN6gftPiLMRFaqYgjkkdEMma9EbW2Of7y9gzdYqRU5HyaiBM
WB3yUbcoM9ySLCQHX75Xg7UsLzVw2N5SA24diMdKPGhUfEpSgZ+DtlJZ3h4o4fos
GC6i6hC0shFUcpoZM9XQs+ZhJ38/bfRxOqdy/K4Ali+0G7PZzf5/4fcyi7TvG7wc
qXAYGaxFehFemV8oQZxLxFtvQYlCom+MLAVEbzF4P/9hI9PlcZk=
=3u/Q
-----END PGP SIGNATURE-----

--jq0ap7NbKX2Kqbes--

