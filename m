Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CC118A8D2
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 00:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FhuQwfPEL0hTgcoNyTMHnKuBvWWB7/uRwTo4pXti+54=; b=Hub/NRN1eRyExbGgeYaVb53r7
	5vgaRsaV7mhaZksvH5QwYZz1cLfWfTjsh15gldbN3Mn+fpD0banNTjpwbyN6/iYNNJQWOp5RlgT9M
	s4C74og8YVGGG+jCxDoU/u2V+6oMC1gJpDd3+UoQo9aOgc6NuUjj4SE/ejXnLnNkJSAt7vW6m6DyU
	e1u/a39PHWt72Zk65o+uKeNpxhqoaf9XeawwxSN1ylFnNrgcs/ne8XnZQLQC6pygLpP9cYI3NLPDK
	20J7hBlqj4O80A+L7DaDN6Y01ZxMEGo4qimO1JYFd3L02Jh94siPeq/7OP6Y3bt13E2mE94SgGDLx
	jLqt0Uokw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhff-0007cf-9E; Wed, 18 Mar 2020 23:00:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhfK-00068Z-4b; Wed, 18 Mar 2020 22:59:59 +0000
Received: by mail-wm1-x343.google.com with SMTP id 11so50315wmo.2;
 Wed, 18 Mar 2020 15:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FhuQwfPEL0hTgcoNyTMHnKuBvWWB7/uRwTo4pXti+54=;
 b=RtTb+Z6QgPX6eEk3FcD1grGQYUCvruM8UTymlZC+u2AS/kHOQJyaFhItAwOgTYJ4Iq
 2mlLnLpKFkKYxeEa6ik/FHG5WgomIPKzWJCpXWwx/WMbz3DLkEucM3dI8iUjjZ0VxU05
 SiEE+A9lLPeHd144Ji0pRRBVEzBKNYNjbsvNsWibxVIzRwfFqOwaODGCw/eACtav54NZ
 9UMX0klApRPIBsexNFl7f7xe+WV9lBonnFHUzPBm7JTP08qHOF/GK4CdbGsdYJhHw1zD
 GuzJeFFGYqihD8KEpnv+SZAwgYDSNxNDFxq2citLe9Gsg4AM87C11YTFIMYYpjtY7dke
 jltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FhuQwfPEL0hTgcoNyTMHnKuBvWWB7/uRwTo4pXti+54=;
 b=ocyx0lXRhEAeiVFfZS/6XtHrnKPkTZLrFTaPfzpv+BixANoAFmxm+j0qCMpmUd6oDT
 ZBbUjsKUBJiv+KEQ1VDUP/vv/M1hwrL12VNqiiDRy6Rqsp7QFYZwrj3X1HH0XnsBEX63
 e5IXnRF5h5Qwm2N0damWsUaPL6VC6GI88n91pCOegnW0RHjXDursN8o3XJPH8uXTxPLk
 FwEdmTgTZAsjo0zvSWisJz0x18P3yYxUQUVxxB6PybGDtBehk3fmdcAXsRVJTpjUPYUx
 Kcmufpkyo0lk8LdB2OfgpAdqKKS+R/ekT0KeDAGntvYIrlpANBbF2TIRtPa4mhvSQwFE
 t9UA==
X-Gm-Message-State: ANhLgQ3aAY+G5E6E/Wbi1GYYvkE3Jq4No5WBqrLjHnSYN9Nodte4Q1xc
 64GS5BX/bVVmF8Hz3cKhneE=
X-Google-Smtp-Source: ADFU+vu7WgNjakSl0C5AyVxj/dSWix5Gir8iXHudP3rtR2SXhkPxNUW8q0N0umVfG+eC8fRj1pA40A==
X-Received: by 2002:a1c:b60b:: with SMTP id g11mr7888357wmf.175.1584572395964; 
 Wed, 18 Mar 2020 15:59:55 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id q72sm353382wme.31.2020.03.18.15.59.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 15:59:54 -0700 (PDT)
Date: Wed, 18 Mar 2020 23:59:53 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
Message-ID: <20200318225953.GA2874972@ulmo>
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <20200317174043.GA1464607@ulmo>
 <20200317210042.ryrof3amr7fxp4w5@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="ReaqsoxgOBHFXBhH"
Content-Disposition: inline
In-Reply-To: <20200317210042.ryrof3amr7fxp4w5@pengutronix.de>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_155958_215008_270C4284 
X-CRM114-Status: GOOD (  27.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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


--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 17, 2020 at 10:00:42PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> Hello,
>=20
> On Tue, Mar 17, 2020 at 06:40:43PM +0100, Thierry Reding wrote:
> > On Tue, Mar 17, 2020 at 02:32:25PM +0200, Oleksandr Suvorov wrote:
> > > The polarity enum definition PWM_POLARITY_INVERSED is misspelled.
> > > Rename it to PWM_POLARITY_INVERTED.
> >=20
> > It isn't misspelled. "inversed" is a synonym for "inverted". Both
> > spellings are correct.
>=20
> Some time ago I stumbled about "inversed", too. My spell checker doesn't
> know it and I checked some dictionaries and none of them knew that word:
>=20
> https://www.lexico.com/search?utf8=3D%E2%9C%93&filter=3Ddictionary&dictio=
nary=3Den&query=3Dinversed
> https://de.pons.com/%C3%BCbersetzung/englisch-deutsch/inversed
> https://dictionary.cambridge.org/spellcheck/english-german/?q=3Dinversed
>=20
> https://en.wiktionary.org/wiki/inverse#Verb mentions "inverse" as a verb
> having "inversed" as past participle.

Here are the first three results from a Google query:

	https://www.yourdictionary.com/inversed
	https://www.dictionary.com/browse/inversed
	https://en.wiktionary.org/wiki/inversed

> Having said this I think (independent of the question if "inversed"
> exists) using two similar terms for the same thing just results in
> confusion. I hit that in the past already and I like it being addressed.

I don't know. It's pretty common to use different words for the same
thing. They're called synonyms.

> > And as you noted in the cover letter, there's a conflict between the
> > macro defined in dt-bindings/pwm/pwm.txt. If they end up being included
> > in the wrong order you'll get a compile error.
>=20
> There are also other symbols that exist twice (GPIO_ACTIVE_HIGH was the
> first to come to my mind). I'm not aware of any problems related to
> these. What am I missing?

There's currently no problem, obviously. But if for some reason the
include files end up being included in a different order (i.e. the
dt-bindings header is included before linux/pwm.h) then the macro will
be evaluated and result in something like:

	enum pwm_polarity {
		PWM_POLARITY_NORMAL,
		1,
	};

and that's not valid C, so will cause a build error.

> > The enum was named this way on purpose to make it separate from the
> > definition for the DT bindings.
>=20
> Then please let's make it different by picking a different prefix or
> something like that.

Again, seems to me like unnecessary churn. Feel free to propose
something, but I recall being in the same position at the time and this
was the best I could come up with.

> > Note that DT bindings are an ABI and can
> > never change, whereas the enum pwm_polarity is part of a Linux internal
> > API and doesn't have the same restrictions as an ABI.
>=20
> I thought only binary device trees (dtb) are supposed to be ABI.

Yes, the DTB is the ABI. dt-bindings/pwm/pwm.h is used to generate DTBs,
which basically makes it ABI as well. Yes, the symbol name may not be
part of the ABI, but changing the symbol becomes very inconvenient
because everyone that depends on it would have to change. Why bother?

My point is that enum pwm_polarity is an API in the kernel and hence its
easy to change or extend. But since that is not the same for the DTB, we
need to be careful what from the internal kernel API leaks into the DTB.
That's why they are different symbols, so that it is clear that what's
in dt-bindings/pwm/pwm.h is the ABI.

Thierry

--ReaqsoxgOBHFXBhH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5yp+UACgkQ3SOs138+
s6FO/BAApA+hyvKBdtCzUbodbVNOnFlAivhVCo+N5zGSec6fjuALlAnGB/kYeWlt
XpSwooECx8G2j+mO9LmKjQi4ZmZxFGhO790xo3Q4CHNE+c/DNU0iP3cTXlJYhrAm
fBpMAsDBwuyrcJCuavVIDuM0okLAQ2XlmZFFT3WNCuC7NmmwkvVr0lJeg1/9lIsp
mivS6EuLEwXH0H03avpu3+o6+RAIKdO7jKegMHGQNWnBNg1bj+dCMvnKrxAKEjby
27HuFhm4cMsd5DQQE2RlB7iWZD1aLpk/S7n98LvGti8PiXAtfVzPjUhIXFrvJXi/
3A7ZwL7jHyaCmMMD3BJHa3/f3SlJMPU31ABixFS4R1t8LyLW4yw47jvZeznRqy8m
4EkQcdl5EQ4bdDyVOgyWTJTjuPLqahDFFjZGapLbvpM6nj9FTAX+PTDhAvi+QQ4F
XYkRpbO23Vw9bkE5hHNnD1lYMUgBE0WYTYZVgxEhVbV8Tte3qvnidjlEiNdVFznM
uYBZv0Ks0r5LAWq2EAwy6JlfzbfdP42dlj5ZRgqNqhTbybFhtwpZ1qhE/XfG0k4L
gfJt9ZXUHn81TWBrKoUC3YNbjJtTF2cl7l2JKft6+S3W93CV50lTzycJp/iy3srI
qigCThG2YlpsInS8ZEfww4p47i5+Uje0uHDaoT07uEukyjNAYkQ=
=Nsfz
-----END PGP SIGNATURE-----

--ReaqsoxgOBHFXBhH--

