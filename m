Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7455813436F
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Jan 2020 14:07:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8s6MBY17dmKuqB1spd1Y2svCKY1mGBybzjzWrguhdKw=; b=NjPG/fkQkUTWdT1knyLpiyc6m
	ZigfiDf92NmHPTA5x6dVIY8+Cb/0quz7QJVu2/2yx72iYVF3DVKRGZ4T4TXacWtzhLDqFU307DAjG
	ulfccEhLXP2jdqCB/RW2UtFaL0YLoUsM9grek7lSWuHeQPBiotQtjBXJtQOqNlY3ue2Ggf4eq1S/n
	jL4Lr83F5e3qmRRmZPkWOE1YrGh4GhYin9ta1om1vcKGzhrtfxCaCi8I378w1MZSwNrNpk9KrwJf5
	7WRADz4sfAHlk7uKpF4LMYDbFO3lM8ynQknm/8FgzWy7CZGtZw0QySL9A1gbCv04R2zTAafsx/Aa+
	WOGZEu9Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipB3l-0006e0-ET; Wed, 08 Jan 2020 13:07:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAxE-0008AT-KT; Wed, 08 Jan 2020 13:00:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id b6so3340358wrq.0;
 Wed, 08 Jan 2020 05:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8s6MBY17dmKuqB1spd1Y2svCKY1mGBybzjzWrguhdKw=;
 b=gE1Ze7d22HE5Q5vnTBA9TJ3sklMoxYoqc4qi5fHipRECxI0AbbTe7yOGYletjJPSmG
 +ni93Xnu1tzfiZFnXRrNN7/9U4sSHQNRhWB3u0H5/5LgIBx8y6JZ2dvG6K9UzFfeIs+t
 ucmWMwc34F1bCjWif80BBpDX+NigheLltnGLMjReolPZ5SDW/DH4dUm+wUq5r/jUmJ7s
 e2m0AP/4myXBS3YYO7G6r3U33CARN3WLrhMxJEK0ZB3mfe/XXCblny9ZEPEACVa0kLmj
 3U+hwLGgcCpRcrE4b/ohDwhGIOeoYtr9t3UJp9qpLX3nPDKIaslKdYClYnIKHOhib/Rq
 UFDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8s6MBY17dmKuqB1spd1Y2svCKY1mGBybzjzWrguhdKw=;
 b=rslTwfNAAYU4y25qpeu0whfxi8ZJLu2S+0Oi1mggdCmB4U8P+nBN727NMAgqyl9buS
 DHhtElSmB6fRdlRwV5/EKmQZQhSaHfHDW0QLaH5YRWA6S1v7x7bM+dM18KhvL3GcPsTa
 fZIlFK+e5QnaryTrwZVOUbC4f4BD/sFjzmrNxRIpXivMv0vuS5TvAXf07zePu+k6SEfk
 o6lPSxHj7mI5KwZAUBY82BG8TQMlKsTI6AbDi10UKiIqri47tKOYJIEEotNF7oGVEbsl
 vpXx8t0oCozd02hkr5RU1jsd3b6pJrSY2/H6uFOHYnljnY6V3J+XKp7a7piwlntuePTu
 3Y3A==
X-Gm-Message-State: APjAAAV2AVOXjdxmERxlMl0GgOBJSFXB+scqZgtqdwxsW3SUhD3SVhTJ
 BaR08QXQ1Xh5Xy+T3HKvTn8=
X-Google-Smtp-Source: APXvYqyiUk9DjLJLQC9p0jB9yqPCOOzRwx8SecHw6EXXSg6lP6Y/JDhW00O/AZmFm6lHLnBCa9UkDg==
X-Received: by 2002:a05:6000:cf:: with SMTP id
 q15mr4321652wrx.393.1578488454567; 
 Wed, 08 Jan 2020 05:00:54 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id x7sm3931711wrq.41.2020.01.08.05.00.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 05:00:53 -0800 (PST)
Date: Wed, 8 Jan 2020 14:00:52 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 1/2] pwm: Fix minor Kconfig whitespace issues
Message-ID: <20200108130052.GF1993114@ulmo>
References: <20191230172113.17222-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="+jhVVhN62yS6hEJ8"
Content-Disposition: inline
In-Reply-To: <20191230172113.17222-1-krzk@kernel.org>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_050056_675232_801B406D 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--+jhVVhN62yS6hEJ8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 30, 2019 at 06:21:12PM +0100, Krzysztof Kozlowski wrote:
> Remove double whitespace after "config" keyword.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  drivers/pwm/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks.

Thierry

--+jhVVhN62yS6hEJ8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4V0oQACgkQ3SOs138+
s6GW+RAAqt7l9DVUT1XZy2TgE7UeLRkeCbnVtYRqr1q4kqqjW1uRyRc2gbd6Q15a
Orl53tUGiuE+Fr/t+UpQSLOmsc93zRIqkhbyMdfyTXJRGhzU5UCx2BuBDkelvmZ/
ZcTgvi8IkXRVh7SJx6E2i956iFXifCQQKd/pbS3oPZbUCeRPJuhCTgmfD7NAKvCR
YsaDo4MWHuuulx05CCLeZ+g915YEGXCV5nKr5RdY9/uf1ifS1waeUZK8+C+uwAy6
17J7Ee4+27mydyVzsutgTLAWfnNf3wcwDzbYaR61G4dKZXHWZBlzjq1hAlyfLrfI
Ue9fAv71KPfLULXpotqvoVkzKeTzW5SSnbtsi22wLJfmu5RI2ZCS2gXdRN0Z5f8y
9M59CBmSSOvoQ7b/nBbOCxxlUqZTXGjnlJCXqrqGmomCMQvKZIJBNBILlFoQDDtZ
wCVV+XXEHq3j4qvgsjgkAHLGyxkjmryg6fOFe9mqCGwk1huV5NYbI4aP1xiSCmTt
00wLZMd67PnKuPv1GAgvRW+BLif97N1U7g2OP5ewhYXPj7cd1DVQHsgwbKnKkz1H
UWG3gn+7n3KcstFfKsgS3X8fhKQ2+HalnX9hBfeORhPef5cCtIURILtOU/sS/pvZ
f30UWoLal+Aylqbsc01nUJmxg27i/m0q4+v7waQmAJlE0L+1c6o=
=p5N4
-----END PGP SIGNATURE-----

--+jhVVhN62yS6hEJ8--

