Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC171AB855
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 08:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eYZf6ks0Ag4vWkdY+FBeNSBOYxZkZ9RWoI7L/wXDw/Q=; b=RjgxvjyLOmX2elud1eylkhn44
	XW2U6AW016vms/Uwwxo8Sdn3LJYYSUP6KQiwfBabHGNECrUpA0GZ6suYY0TWEiLyTRMjoakI+P1Sd
	H+pPMyYNAdx4pCuKl7jCqe45YHolYREFvf30S6IOrbhcK5pB9UqRaBvlrMiF1bVVjlBmd7+vpWioX
	/cmHx8VyIf9CKk/L7l+DwIz5v3QHWGQ8HVO2vfHhZXn0i6QQGp2VUutaQQobzpvt4dEkDn/7Ruy3b
	yHqLK/FKchjBbeNTY62T29LM+vtYqGX9QQFcDeF5t8pnvXMBf6xUC/wf+IBszPgiRPEex6ZkzGBMN
	AtEZ78SDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOyFa-00086s-3N; Thu, 16 Apr 2020 06:43:50 +0000
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOyFO-0007ys-Lw; Thu, 16 Apr 2020 06:43:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id C15CD717;
 Thu, 16 Apr 2020 02:43:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 16 Apr 2020 02:43:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=eYZf6ks0Ag4vWkdY+FBeNSBOYxZ
 kZ9RWoI7L/wXDw/Q=; b=pG92PCpDKEaySEE6b3KK5owRlyOg6omtcBJRh6H2P9g
 A4+dSJ8ZhNWYumPEo8RSeGX3Y1ofqBKY5EwBKyaQ4uWCzw59hiXAUOxV0z1366xq
 iuHHZUldbuzXYDjsaxnBz0RsGbyN9Oo/wuSRdS/D5gtGdR/DOID4nUO++5rp07K7
 LG4gEmPTqHamlJRrP5V34H6lR2pNC4zXGMW/GSE2CyOUmLq5FhAQ7reYixyNSF9S
 Sk3l1mb29qIgPDMYY0/5m7I+DShBoF71j+C3gAVSuV2Nq12oir1/bimsDQytaFI9
 rw3mdDAsOxKY1bvJX6PjvfGpx+6c3IrKClpgJXpZ0wA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=eYZf6k
 s0Ag4vWkdY+FBeNSBOYxZkZ9RWoI7L/wXDw/Q=; b=Ybg5/gOxzIy3RezsVgMA1k
 TNS1SpWdG/vSznxDhwvoLrldOuulzJrzOesiyd4OdIPHp7Pvdeido6VN49AZFJjX
 vpbJjlQnZcrl0XVEenAR8HUbxv1iPLz1X4h7y0gO3Y8YvGQ+Gxco5vWU8dTZpAOa
 BZauQ/RaI9M2F28kXPygdaAyXtkuoiRko9nhnLAnG7Fj/vpriF3MX/GnDqw3vD54
 E2nE7ygWUQnJK7D2pMU5A92RDAXmSDVWG2auXATUw58gux8Zcplt8XXxS8uZEPyq
 dwoVwWzcbh8nau5x1J4Tli8kmRSzPV5DdHht5f7hGV1AlT9ldV7F13ym9Jw80idw
 ==
X-ME-Sender: <xms:lv6XXlbZsjXCgRSobpV_OahNA0F2bAh_xQnNz30ENtpJCk6C2O5pKw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeeggdduudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:lv6XXtpOixejZqr7iO1LBzaErDc2trud85HnQReIvup6Nj_ECC1-ug>
 <xmx:lv6XXtQpwDnG3Phz4jTAefVSpE0PDruqeQW4tMGm8dv07y5H0bXPXQ>
 <xmx:lv6XXhnZDnOcsLKYGPwKo5ewvcFCHv464DpLD_f1alqPkiWElJ017g>
 <xmx:lv6XXk2v6et9oVVZCGJreRdM-Z9u-aFhl26_bHzMhmr4x9e7prVi_X54wQY>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D7E56306005F;
 Thu, 16 Apr 2020 02:43:33 -0400 (EDT)
Date: Thu, 16 Apr 2020 08:43:32 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/2] dt-bindings: Remove cases of 'allOf' containing a
 '$ref'
Message-ID: <20200416064332.cbtmgnbwjityninz@gilmour.lan>
References: <20200416005549.9683-1-robh@kernel.org>
 <20200416005549.9683-2-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="wl56qmwukpbi7dfb"
Content-Disposition: inline
In-Reply-To: <20200416005549.9683-2-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_234338_757406_E42BAB3D 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Heiko Stuebner <heiko@sntech.de>, Sam Ravnborg <sam@ravnborg.org>,
 linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-remoteproc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 linux-riscv@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-rtc@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, alsa-devel@alsa-project.org,
 linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amit Kucheria <amit.kucheria@linaro.org>,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--wl56qmwukpbi7dfb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 15, 2020 at 07:55:49PM -0500, Rob Herring wrote:
> json-schema versions draft7 and earlier have a weird behavior in that
> any keywords combined with a '$ref' are ignored (silently). The correct
> form was to put a '$ref' under an 'allOf'. This behavior is now changed
> in the 2019-09 json-schema spec and '$ref' can be mixed with other
> keywords. The json-schema library doesn't yet support this, but the
> tooling now does a fixup for this and either way works.
>
> This has been a constant source of review comments, so let's change this
> treewide so everyone copies the simpler syntax.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

For allwinner,
Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--wl56qmwukpbi7dfb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpf+lAAKCRDj7w1vZxhR
xfXZAP9GMb4mpNd2CMjZwk5BxMrLzEIpKJTiQ4orqceXOWVHrwEA79RK8mnQLFzA
6mFAQXdPtJjk58zdTQSSSDo30M+OtQk=
=foV0
-----END PGP SIGNATURE-----

--wl56qmwukpbi7dfb--

