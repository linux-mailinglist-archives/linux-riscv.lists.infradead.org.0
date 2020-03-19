Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7972F18BCF5
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 17:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sZtesGT913oKiQvHC9kaYGvKKUSXGIidxFnaeOO9dEU=; b=Izdo8OEsvqTtPd1wj8MkvSorC
	w1s4fCPSL+06WoHzCDh0uONCUPWJPMC29hDgkt6oO3asAC4Rf9j/EX57e7pwN1PzGxg1Th8wBWLmD
	l8HAFLrfhJc07oJCsKt+tQT2pRYL+GxVy6N0tbR1h7QIFkc2uGIepbUddm5nZvDgHuxmBFId8dFZB
	lzoJYythJgttEzaOkJ15yLiimJVCwAM86gtsmHUZFcDw2biWw/bXKA4+L8VNCGJAzxT8BqEVKbjiV
	/5mjZytv7B9TqOK9x0s+Zzj37dQG5C0wjhsg3CWlsr1fs/Bom+RouW7Jf4fRdfE+CeZFveMFOYR6M
	CjtLrOHQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyHW-0008Th-Jb; Thu, 19 Mar 2020 16:44:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyHG-0008IJ-6R; Thu, 19 Mar 2020 16:44:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id o12so3417778wrh.11;
 Thu, 19 Mar 2020 09:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sZtesGT913oKiQvHC9kaYGvKKUSXGIidxFnaeOO9dEU=;
 b=nsCxZ6Q1PMg2037VVwvnqoqy0R9WU+NCHZUdP7BWFgmUJyd0PmKOpVbZxTJOQFKtH/
 eDOniP0sbtukZYd0i7EB6ZKmYUI8evJvTIMoJCglKhaRy5dYbndp2YQ8LnSYWddz0Un1
 7bLZXUlKkCtUat2yhz2801qyjOr2Ct0EgU/0Ps6gjga7Jx2jLR5VKJwPe5XoXk16+RiM
 fo7w3//VgVV1hIL0/0wJkhbDYeerGVv8iROttGRl87UnvL+9/vrfa2BKQboVBZ8KJRuO
 94QiSss/jtVw/3ancoBtJLMBmNSPv6jh2jneDvInNcvHejgE1mQK5OQSCkUzjcMXwdmB
 2b2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sZtesGT913oKiQvHC9kaYGvKKUSXGIidxFnaeOO9dEU=;
 b=sf/aYZK0RizYVabgr6UO08hS7OAT56vUkr5c6xsMU0tbU54jZ0bHakqfal8dL9tV8q
 sFfVnmV9Lxm+KQLvjM+E79AGMZPIYdve/xy/QgyVC0vQIz4yua9hwjEsH0gMh1Y5RN5j
 Fve+UG2feYC794HHDI5tMH9FKtemFJsxh0hNHJh69+GRPpHUaCw5fh844UwyFO4Qre/V
 C2XxgKZrP4hSTut3xb1XEYgm80Ql0N6m0Me7LfxCfJOVIlAzgFWcWjOKVdMpncJn7bJJ
 Y9NffIMAHaJz199ojEK2A1JK5STCpqEvYYPZsm9VnuEjELXoJ+cLVs5QQvfDrNmCosL/
 kxVg==
X-Gm-Message-State: ANhLgQ2wvdowpudMTlM4BopToe8Zv0SS1Pn8eMxiCcN6Ff75DulyJeAN
 adgSHYuaTiQSryjo2i6hqMA=
X-Google-Smtp-Source: ADFU+vttxad2JJRhbpsJmr1H1aKACx/N6Myr9ExBE+eDyrpFj+yqezB8CxL+5UERM9U+X0tBkytC1g==
X-Received: by 2002:adf:afcb:: with SMTP id y11mr5046452wrd.141.1584636252546; 
 Thu, 19 Mar 2020 09:44:12 -0700 (PDT)
Received: from localhost (pD9E51CDC.dip0.t-ipconnect.de. [217.229.28.220])
 by smtp.gmail.com with ESMTPSA id c4sm3848694wml.7.2020.03.19.09.44.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 09:44:11 -0700 (PDT)
Date: Thu, 19 Mar 2020 17:44:10 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
Message-ID: <20200319164410.GB3354541@ulmo>
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <20200317174043.GA1464607@ulmo>
 <20200317210042.ryrof3amr7fxp4w5@pengutronix.de>
 <20200318225953.GA2874972@ulmo>
 <CAGgjyvGd4y8M0L1sFMvQ1=gPcKfUPoR13dVS7F5WZx=333KG6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="gatW/ieO32f1wygP"
Content-Disposition: inline
In-Reply-To: <CAGgjyvGd4y8M0L1sFMvQ1=gPcKfUPoR13dVS7F5WZx=333KG6g@mail.gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_094414_242208_FF088210 
X-CRM114-Status: GOOD (  38.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Paul Cercueil <paul@crapouillou.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
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


--gatW/ieO32f1wygP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2020 at 01:40:28PM +0200, Oleksandr Suvorov wrote:
> On Thu, Mar 19, 2020 at 1:00 AM Thierry Reding <thierry.reding@gmail.com>=
 wrote:
> >
> > On Tue, Mar 17, 2020 at 10:00:42PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> > > Hello,
> > >
> > > On Tue, Mar 17, 2020 at 06:40:43PM +0100, Thierry Reding wrote:
> > > > On Tue, Mar 17, 2020 at 02:32:25PM +0200, Oleksandr Suvorov wrote:
> > > > > The polarity enum definition PWM_POLARITY_INVERSED is misspelled.
> > > > > Rename it to PWM_POLARITY_INVERTED.
> > > >
> > > > It isn't misspelled. "inversed" is a synonym for "inverted". Both
> > > > spellings are correct.
> > >
> > > Some time ago I stumbled about "inversed", too. My spell checker does=
n't
> > > know it and I checked some dictionaries and none of them knew that wo=
rd:
> > >
> > > https://www.lexico.com/search?utf8=3D%E2%9C%93&filter=3Ddictionary&di=
ctionary=3Den&query=3Dinversed
> > > https://de.pons.com/%C3%BCbersetzung/englisch-deutsch/inversed
> > > https://dictionary.cambridge.org/spellcheck/english-german/?q=3Dinver=
sed
> > >
> > > https://en.wiktionary.org/wiki/inverse#Verb mentions "inverse" as a v=
erb
> > > having "inversed" as past participle.
> >
> > Here are the first three results from a Google query:
> >
> >         https://www.yourdictionary.com/inversed
> >         https://www.dictionary.com/browse/inversed
> >         https://en.wiktionary.org/wiki/inversed
> >
> > > Having said this I think (independent of the question if "inversed"
> > > exists) using two similar terms for the same thing just results in
> > > confusion. I hit that in the past already and I like it being address=
ed.
> >
> > I don't know. It's pretty common to use different words for the same
> > thing. They're called synonyms.
> >
> > > > And as you noted in the cover letter, there's a conflict between the
> > > > macro defined in dt-bindings/pwm/pwm.txt. If they end up being incl=
uded
> > > > in the wrong order you'll get a compile error.
> > >
> > > There are also other symbols that exist twice (GPIO_ACTIVE_HIGH was t=
he
> > > first to come to my mind). I'm not aware of any problems related to
> > > these. What am I missing?
> >
> > There's currently no problem, obviously. But if for some reason the
> > include files end up being included in a different order (i.e. the
> > dt-bindings header is included before linux/pwm.h) then the macro will
> > be evaluated and result in something like:
> >
> >         enum pwm_polarity {
> >                 PWM_POLARITY_NORMAL,
> >                 1,
> >         };
> >
> > and that's not valid C, so will cause a build error.
> >
> > > > The enum was named this way on purpose to make it separate from the
> > > > definition for the DT bindings.
> > >
> > > Then please let's make it different by picking a different prefix or
> > > something like that.
> >
> > Again, seems to me like unnecessary churn. Feel free to propose
> > something, but I recall being in the same position at the time and this
> > was the best I could come up with.
> >
> > > > Note that DT bindings are an ABI and can
> > > > never change, whereas the enum pwm_polarity is part of a Linux inte=
rnal
> > > > API and doesn't have the same restrictions as an ABI.
> > >
> > > I thought only binary device trees (dtb) are supposed to be ABI.
> >
> > Yes, the DTB is the ABI. dt-bindings/pwm/pwm.h is used to generate DTBs,
> > which basically makes it ABI as well. Yes, the symbol name may not be
> > part of the ABI, but changing the symbol becomes very inconvenient
> > because everyone that depends on it would have to change. Why bother?
> >
> > My point is that enum pwm_polarity is an API in the kernel and hence its
> > easy to change or extend. But since that is not the same for the DTB, we
> > need to be careful what from the internal kernel API leaks into the DTB.
> > That's why they are different symbols, so that it is clear that what's
> > in dt-bindings/pwm/pwm.h is the ABI.
>=20
> Thierry, I see the PWM core converts the bit field "third cell" into
> the polarity variable.

Yes. And if there were other fields in that third cell, there'd be other
variables that would be derived from those.

> Now I probably understand your sight and agree that we shouldn't give
> the same names to bits in bitfield (dts) and values of a variable.
>=20
> But there are lots of useless "0" values of third cell of "pwms"
> option in dts files.

These aren't useless 0 values. 0 doesn't mean "don't care", it's a very
specific value. In this case it implies that the polarity is "normal".
That's very useful if you have a PWM controller that can set the
polarity.

> I see 2 ways now:
> - just remove all "0" "third cell" from "pwms" options in dts files. I
> see this "0" confuses some people.

Some drivers already do this by supporting 2-cell and 3-cell specifiers.
Not everyone does this and they shouldn't need to. The bindings are very
clear about what to do with that third cell and how to parse it. It's
just a matter of reading and understanding the bindings. It's not
exactly rocket science, so why do we have to jump through hoops to try
and simplify it?

> - convert pwm_state.polarity into pwm_state.flags and use bitfield
> directly from dtb.
>   It simplifies the parsing logic and makes adding new flags easier.

And then you have to go and and parsing code everywhere to deal with
these new flags. I prefer to have this parsing code in the core where
it's written once and used everywhere, instead of letting drivers deal
with flags that they might interpret wrongly.

Also remember that the third cell may be extended in the future and not
all data in in may end up being a simple flag.

Thierry

--gatW/ieO32f1wygP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5zoVoACgkQ3SOs138+
s6GF8hAAueYffxg4JcWpgobT34nhiDqMSTOKHVTV/wvgrao1j94NHjRPJGiDgro8
Tg1rglamXAo0tCFkl7O8G8T6bTb4Yw0TL8FUxzqLbdhjOlNccza7tMrKWciQpbbK
+IJE9sFMdAFlQD29X0SFHC0qJtt01uIplbBNhbZtFWyYEzBSgYS6eSgk41Ju+LRO
PipH/r6gAVcMwssL5yK5jHtoq2JRoI8FHG/SGh/Henl+ldpcKPbLPTmKnR9PZf58
sEsk7AkSkXHnENxSvHrn77SQJ0ur4LxRnFOqFzj/j2XCW0OpFNbiQnYOOo0YatZh
E08sB7uJ1g2lGwpPBir9Z0mSwJyhLSDsOZgEmSz/MCqwJFfzVOm9Q1psqzJygY6D
8METmjXAwMZ0LkXiwtV8xQlQAGhaTWTxupfSUcj4QOgacmSPuC7bX3Ed9wsztPrx
GO0e7D62wvuqRW45o5wPmoXTMO9omp7Q7mjG7yM6bjCn/XOXyvsV013lk5qj8P4A
jQKISE5GXapK7uuSOpvYZP2MHWM5ti8NqBzYdKxYzelYN9jDfP6PddXguUAkZGch
EDaFlVsvvFvSjJWymr9YnvWyVjRD/YibJDsieQoQcFI1lDgJnoKkLPXW/BzRFnnI
XwcJgzoyJm6fVY+gyOmJ45gqPM2dLbBgT5HsmbaDP44S+uVt5KY=
=SgdP
-----END PGP SIGNATURE-----

--gatW/ieO32f1wygP--

