Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C489B18BCB7
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 17:37:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NMueQiP9jz9O+z3rNtEF0OHXn/KJHT1fioATarE40G8=; b=r9mEqgASMM4/FqyGg0w4xbLMq
	SfD6PiQtQzuN3nwETKu3qxWPwQMd4Cy0erm7t4rIOEyfeTZJFOwegoUNq3eRSNOwQTVYwgGHUQofC
	0x2a0DDvyfuOGxln0SZHNlkUBRX7MKManAyOUuePPKYWp0uFUExTO8klV63/0BpxHN+W/iAS73we4
	WYh0CsBF8PacrxQtN7aDSAFg/6ogwDeFBKNd/dDNrsx8srSCN+RwisgA9s237PtZTxzjoAnOSCQ1Y
	joop/CobrLbdD2uz/foOCCdmOSJgbKUd1bkggi9jzRZF6A8/ejTFL3/iu2PwyPTlc52BuZma3o9Wq
	q///6yR7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyAc-0005GK-GR; Thu, 19 Mar 2020 16:37:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyAL-000558-0E; Thu, 19 Mar 2020 16:37:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id h4so3947839wru.2;
 Thu, 19 Mar 2020 09:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NMueQiP9jz9O+z3rNtEF0OHXn/KJHT1fioATarE40G8=;
 b=kRFKQKfEBEqihNIaveyPStDvKrgGhFdZYXEgGipYSaA/2qb6vfhLO+/QfXCyCFXgSF
 4F9OSwGjKC73SFYPFCirtCRMbpEEoDU3RUq+OjredkiZDGPLh5a47GO0D6W+wOc90ph7
 VF9FDlcb17/e3+Ta1efGon4YAfa5fgDS4iEpV+0BmBtdIA1z6lRAepOpcej3xMKWo/ux
 Vg8pKnGn9tr2cb5/j+Mc193lHK4mxDTwsK+cC3L/LI6irZpb0ZVA50uMqMMR//1l7yZB
 kun/1ogBpRNi9sP3YX7gPc3nz4ngJ4FX5E4UnQvyiQODgPw0LbfZxDr7lHa2ya6glUVd
 PhUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NMueQiP9jz9O+z3rNtEF0OHXn/KJHT1fioATarE40G8=;
 b=sjQyBVmp7llktNTJ0+X4GSKXLM3Ot0eqrNqBiv5DXvO7tInRSxtdm6l+KiDPI2y5Zv
 njPH2djSZvZ+PQbXI9p8GT5vYCIpuGG0md57APGsxPt33bYtuXBKtcnhHCSWVfDj7HPG
 E/c76VOAa9SNNFiT1piCj+JzY99AUD9hnNPpYxIGqdadqDi0EQ6Jm9NsAZrsA+SbSyBd
 2acAd/nRd7rE9uekjIJCRJZSfaUfgaK5pyAA5clxewMpiatFgzfz0fxzSDBRLSpP9+0o
 1hCjhq6vpAwHaYsxUXKYhp2l/w6+PdJY5547IBa9BhUMqOJZeXGBQ58rt7300MKWGlTK
 5+jw==
X-Gm-Message-State: ANhLgQ2T+YtRV8CD5sshGKwr2goZYS+m1M3OA3ARF07JaxxqSM0mtDQb
 /Ycbpybc/dw2cSQN4NPxDDg=
X-Google-Smtp-Source: ADFU+vtoxuuyxX+HT1GPJKiSCaAgThQGtgPWSsP45bIWCEbkNowuDDd0U3X4oTdHznURld4tZlgyhg==
X-Received: by 2002:a05:6000:d0:: with SMTP id
 q16mr5551345wrx.71.1584635822900; 
 Thu, 19 Mar 2020 09:37:02 -0700 (PDT)
Received: from localhost (pD9E51CDC.dip0.t-ipconnect.de. [217.229.28.220])
 by smtp.gmail.com with ESMTPSA id z22sm3851524wmi.1.2020.03.19.09.37.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 09:37:01 -0700 (PDT)
Date: Thu, 19 Mar 2020 17:37:00 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
Message-ID: <20200319163700.GA3354541@ulmo>
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <20200317174043.GA1464607@ulmo>
 <20200317210042.ryrof3amr7fxp4w5@pengutronix.de>
 <20200318225953.GA2874972@ulmo>
 <20200319065039.szhh5dm6v3ejwijd@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
In-Reply-To: <20200319065039.szhh5dm6v3ejwijd@pengutronix.de>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_093705_047249_9F5AB4ED 
X-CRM114-Status: GOOD (  38.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Palmer Dabbelt <palmer@dabbelt.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2020 at 07:50:39AM +0100, Uwe Kleine-K=C3=B6nig wrote:
>=20
> [Dropped Tony Prisk from recipients as the address bounces]
>=20
> Hello,
>=20
> On Wed, Mar 18, 2020 at 11:59:53PM +0100, Thierry Reding wrote:
> > On Tue, Mar 17, 2020 at 10:00:42PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> > > Hello,
> > >=20
> > > On Tue, Mar 17, 2020 at 06:40:43PM +0100, Thierry Reding wrote:
> > > > On Tue, Mar 17, 2020 at 02:32:25PM +0200, Oleksandr Suvorov wrote:
> > > > > The polarity enum definition PWM_POLARITY_INVERSED is misspelled.
> > > > > Rename it to PWM_POLARITY_INVERTED.
> > > >=20
> > > > It isn't misspelled. "inversed" is a synonym for "inverted". Both
> > > > spellings are correct.
> > >=20
> > > Some time ago I stumbled about "inversed", too. My spell checker does=
n't
> > > know it and I checked some dictionaries and none of them knew that wo=
rd:
> > >=20
> > > https://www.lexico.com/search?utf8=3D%E2%9C%93&filter=3Ddictionary&di=
ctionary=3Den&query=3Dinversed
> > > https://de.pons.com/%C3%BCbersetzung/englisch-deutsch/inversed
> > > https://dictionary.cambridge.org/spellcheck/english-german/?q=3Dinver=
sed
> > >=20
> > > https://en.wiktionary.org/wiki/inverse#Verb mentions "inverse" as a v=
erb
> > > having "inversed" as past participle.
> >=20
> > Here are the first three results from a Google query:
> >=20
> > 	https://www.yourdictionary.com/inversed
>=20
> There is something fishy. In the Verb section it says indeed, that it is
> the past participle and simple past of inverse. The entry for inverse
> however only has sections that identify this word as adjective or noun;
> not a verb.
>=20
> > 	https://www.dictionary.com/browse/inversed
>=20
> Not sure I'd count this as hint that inversed exists. The entry shown to
> me under this URL is about "inverse" and it has
>=20
> 	verb (used with object), in=C2=B7versed, in=C2=B7vers=C2=B7ing.
> 		? to invert.
>=20
> Does this mean: "Did you mean invert instead?"
>=20
> > 	https://en.wiktionary.org/wiki/inversed
>=20
> Yeah, that's the one I found, too.
>=20
> I still have the impression that "inversed" is in use because people
> don't know better and understand the intended meaning. And this results
> in leaking of this word into the references.
>=20
> > > Having said this I think (independent of the question if "inversed"
> > > exists) using two similar terms for the same thing just results in
> > > confusion. I hit that in the past already and I like it being address=
ed.
> >=20
> > I don't know. It's pretty common to use different words for the same
> > thing. They're called synonyms.
>=20
> In literature yes, I agree. In a novel it is annoying to repeat the same
> words over and over again and some variation is good. In programming
> however the goal is a different one. There the goal should be to be
> precise and consistent.

We also need to make sure that things don't break. It's a very bad idea
to have a macro with the same name as an enum value for reasons I stated
before. I think that's the most important thing here.

Also, if inversed is a synonym of inverted, we don't loose any precision
at all. All you have to remember is that you're dealing with a device
tree constant in one case and an API enumeration in the other.

So I think the current form is actually more precise, though I guess it
could be confusing if you don't care about the difference.

> > > > And as you noted in the cover letter, there's a conflict between the
> > > > macro defined in dt-bindings/pwm/pwm.txt. If they end up being incl=
uded
> > > > in the wrong order you'll get a compile error.
> > >=20
> > > There are also other symbols that exist twice (GPIO_ACTIVE_HIGH was t=
he
> > > first to come to my mind). I'm not aware of any problems related to
> > > these. What am I missing?
> >=20
> > There's currently no problem, obviously. But if for some reason the
> > include files end up being included in a different order (i.e. the
> > dt-bindings header is included before linux/pwm.h) then the macro will
> > be evaluated and result in something like:
> >=20
> > 	enum pwm_polarity {
> > 		PWM_POLARITY_NORMAL,
> > 		1,
> > 	};
> >=20
> > and that's not valid C, so will cause a build error.
>=20
> I admit I didn't look closely here and I assume you are right. If I
> understand Oleksandr right this is only an intermediate step and when
> the series is applied completely this issue is gone. Still it might be
> worth to improve the series here.

	$ gcc -o /dev/null -x c - <<- EOF
	>     #define PWM_POLARITY_INVERTED (1 << 0)
	>
	>     enum pwm_polarity {
	>         PWM_POLARITY_NORMAL,
	>         PWM_POLARITY_INVERTED,
	>     };
	> EOF
	<stdin>:1:35: error: expected identifier before =E2=80=98(=E2=80=99 token
	<stdin>:5:9: note: in expansion of macro =E2=80=98PWM_POLARITY_INVERTED=E2=
=80=99

Q.E.D.

> My original question was about similar problems with GPIO_ACTIVE_HIGH.
> Are you aware of problems there?

The problem exists there equally. We're probably not running into it
because drivers don't end up including dt-bindings/gpio/gpio.h and
include/linux/gpio/machine.h at the same time. Or they end up always
including them in the right order.

For PWM the situation is slightly more complicated because we only have
one header for the kernel API, so the likelihood of including it along
with the dt-bindings header is increased compared to GPIO.

> > > > Note that DT bindings are an ABI and can
> > > > never change, whereas the enum pwm_polarity is part of a Linux inte=
rnal
> > > > API and doesn't have the same restrictions as an ABI.
> > >=20
> > > I thought only binary device trees (dtb) are supposed to be ABI.
> >=20
> > Yes, the DTB is the ABI. dt-bindings/pwm/pwm.h is used to generate DTBs,
> > which basically makes it ABI as well.
>=20
> We disagree here. With this argument you could fix quite some things as
> ABI.

I don't understand what you're trying to say.

> > Yes, the symbol name may not be part of the ABI, but changing the
> > symbol becomes very inconvenient because everyone that depends on it
> > would have to change.
>=20
> Oleksandr adapted all in-tree users, so it only affects out-of-tree
> users. In my book this is fine.

There used to be a time when it was assumed that eventually device tree
sources would live outside of the kernel tree. Given that they are a HW
description, they really ought not to be relying on the Linux kernel
tree as a way of keeping them consistent. That's really only out of
convenience.

> > Why bother?
>=20
> To make the API more precise and consistent. That's a good goal in my
> eyes.

PWM_POLARITY_INVERTED is not part of the API. It doesn't exist for
anything other than to make the device tree more readable.

I now regret that we ever introduced this in the first place. Perhaps it
would've been better to just deal with raw numbers instead.

Thierry

--LZvS9be/3tNcYl/X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5zn6kACgkQ3SOs138+
s6G0qA//TRbmBTBaIgA8loJnEh1oNwlzPblJdiH8lXKLSVxfyTXfaFGDQcOzMyBg
DkLtpO51Rah1o+3yB/j6b8TXA9amdpD65SP2FBL2dFLyBn8K5Ot5ZWuvTapyclcz
2TI8cG1Du/xLWxMDDX+Rylj+9XTlQxu3lGssuCM56hF0VXmhyvEzD3/aLlA/MjeY
QQky3apxaRT+lnGsAzRLGbLHZufTV+OaZ9ZYZZGTlsXR1VAUsyR44TGM+290Ut6p
Ds8bLPjI3xTa6uy66MlsUcYAAo1/jCQMAS+Nr/B0XGRPJdtK2G+MY3vtTZENSvqr
VKDulCTAEGE/uP+7qZVOmxOZIhX7n1zBdwSdZS5FgjCok6QjfOUa9SlT77O4bGAM
lGaeG9h8gBYpE2wk+9Wd6V9vm8UoJXPujpsyJXRHpQa5nJhgqr/VNYCeHlYhKXuQ
ymd6V9cwXRk/0xoRKR8WnRl5ZgfZtTYDfh/dGD7CdUBcyfCFZVcYEI01iO54m5Dr
/kakaDhUXRLv+xBGk4CocrSgo92DQeFUWyb2QnoW/5yYbHEOYEsfz+pWUicxin/y
Yf9ZNfDh5MPRidZyJ5b/wy3xz2OHEkyGKGGIb2em5E5AwvDZiDXhQkjhf5hzb2fD
xgjBAa+LbbBZYCs2a4Y85i+tpsJpp72cE4Xamu4rr3Pz7URiAnw=
=VES6
-----END PGP SIGNATURE-----

--LZvS9be/3tNcYl/X--

