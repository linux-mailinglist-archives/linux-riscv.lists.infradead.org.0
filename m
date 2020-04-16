Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 340D21AB9E4
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 09:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sN+2N7h74bCeaKXl4/0R/hwo2RkIOyMHe1dWZ3JENdA=; b=Sj0pC5K4gEfU9Sn9/HoUI1wjr
	9pnGNg5gsJS91SI9QdN0R5RmCmBEFhNGCuZlB/z0Bjy26P/7FWosFs0RKm9e1CCoueWDBbvm7Xqwk
	+Egg3r+3z87cVnIxF0GIKfX0SvY7936qOdNx1PmCO7lujoRXiBhzBrNED8hlsgDWDYDTRzG8YJiKU
	zm3py1dbhQEo3KGbKy/gzfa614gq5xJRDomvQZAQf4q6byWW54O8PzLNapY5qvF5qsU2kTXAlX0ZG
	tbwllkq24zvsQgOUqSxsQhDUiWwp6S6J0EsiV0ADsiODSDGVsxan2TbPmiKSbxGmqVocyhP3WqKgl
	dUtoK85LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOywd-0002v7-2t; Thu, 16 Apr 2020 07:28:19 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOywG-0002br-Jp; Thu, 16 Apr 2020 07:28:05 +0000
Received: from localhost (p54B33393.dip0.t-ipconnect.de [84.179.51.147])
 by pokefinder.org (Postfix) with ESMTPSA id E4E0B2C1FDE;
 Thu, 16 Apr 2020 09:27:55 +0200 (CEST)
Date: Thu, 16 Apr 2020 09:27:54 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: Clean-up schema indentation formatting
Message-ID: <20200416072754.GB1023@kunai>
References: <20200416005549.9683-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="PmA2V3Z32TCmWXqI"
Content-Disposition: inline
In-Reply-To: <20200416005549.9683-1-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_002756_957964_A47A7BB6 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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


--PmA2V3Z32TCmWXqI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2020 at 07:55:48PM -0500, Rob Herring wrote:
> Fix various inconsistencies in schema indentation. Most of these are
> list indentation which should be 2 spaces more than the start of the
> enclosing keyword. This doesn't matter functionally, but affects running
> scripts which do transforms on the schema files.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Wolfram Sang <wsa@the-dreams.de> # for I2C


--PmA2V3Z32TCmWXqI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6YCPoACgkQFA3kzBSg
KbYO9w/+I4SkxzsKIBEPYPlNhQjpS6257EsfctnShX5MtTXuuVlEM9PKrWOlHqUv
VPZp1gNSi0U/GchhYvzhAQ0yia0RzJoIb9lP8a+B/i2n77CDCgIRyWBqSA/dX2Ts
FqwsTUS4HND9WJve1vPA6xRF0GlFYSCgXTHGgqxWNOdZHkTjIog1Pm+3C6pk+CbX
eKDEHPFiVzkgUvkspatPeh/+nVLQSJ1CA0V0Qstqqu6+c2ciLJxYnh3cstsjThRS
u+Hp1Tj1TGmJtiHEoDYpNbUuGxu8dE+iHMeM4EnePh2KraRRQ+o35bx0QdhhzcU2
2AZf2VMtoqV5XgcyRM6B05wxjD5XQWSEcRPaA4KSiR2G3tFi+WYiVRHI8Pekbgzl
0HPDsprCCwqNPUVqeqcyMOlYPYpOCIcCz17nZKd0ZDv9SphmwAXjvc2KNHg3lnVi
U7BU6i+P4fM8P7Lx496uw1CjUOKtLdM74WYDliTT3timGh1ZYB9l2AC8yTJqBQDY
zRnBeFyItoXVtZbkAQgoGOTuIn6ZUY+ZzUquour0XK2PGJuxxArp0rFcEFAAeccC
/iHPV6k2vWKT/r/wRa5qjwZZrvi0N98xyWX89B0rfqjVasG6DqrTcEnfY/0g8JOo
S0O569k351VYcMrKIrtqc6RsnSOAwPpJskVLGf4j5KhQ1waxcTg=
=JRiG
-----END PGP SIGNATURE-----

--PmA2V3Z32TCmWXqI--

