Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6B822925
	for <lists+linux-riscv@lfdr.de>; Sun, 19 May 2019 23:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eWp1M6kCw25ISQPL+5nRVRG5iJ9uVrZL9jeSjRCwAro=; b=MNjg8jj5EMCPygKIQeQnSCGpN
	9FwUd1jbUOO/SPhb3PzBK3/MrDYlN2eaa/qxHW2IcXJTM6CMv70DVWAnuGxq80ioH2ARivepeLHzX
	p8NvqzZnv2giZtLXi0+0YSDANaU09fvkcoiysuRqDYJbMawh0fo21K/MpEUGvg1R6WKqo4PBt6zsG
	496QV8U10/RGg5fUCsfCZ6p4ZZxLyRxnbkhxiMlm218KcV3BnND2sGaqZchU1PtapUTXQTY1yscZn
	XWY2RXoittwhHGMVFavFio04MFkig4ZtRlKHsaWYmLCSJvKbVFtQSXj9B4imV6ngCLlfxMTb1E3ty
	u1WFKirLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSTJO-0002l9-Cj; Sun, 19 May 2019 21:25:42 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSTJK-0002kK-Rb
 for linux-riscv@lists.infradead.org; Sun, 19 May 2019 21:25:40 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 715DB80378; Sun, 19 May 2019 23:25:18 +0200 (CEST)
Date: Sun, 19 May 2019 23:25:28 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2] clk: sifive: restrict Kconfig scope for the FU540
 PRCI driver
Message-ID: <20190519212527.GD31403@amd>
References: <20190513213001.23956-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
In-Reply-To: <20190513213001.23956-1-paul.walmsley@sifive.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_142539_047237_641A765B 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Paul Walmsley <paul@pwsan.com>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6733192306771890243=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============6733192306771890243==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZARJHfwaSJQLOEUz"
Content-Disposition: inline


--ZARJHfwaSJQLOEUz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon 2019-05-13 14:30:04, Paul Walmsley wrote:
> Restrict Kconfig scope for SiFive clock and reset IP block drivers
> such that they won't appear on most configurations that are unlikely
> to support them.  This is based on a suggestion from Pavel Machek
> <pavel@ucw.cz>.  Ideally this should be dependent on
> CONFIG_ARCH_SIFIVE, but since that Kconfig directive does not yet
> exist, add dependencies on RISCV or COMPILE_TEST for now.
>=20
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Reported-by: Pavel Machek <pavel@ucw.cz>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>

Thanks for doing this.

Acked-by: Pavel Machek <pavel@ucw.cz>
									Pavel

> ---
> This second version incorporates non-functional changes requested
> by Stephen Boyd <sboyd@kernel.org>.
>=20
>  drivers/clk/sifive/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/clk/sifive/Kconfig b/drivers/clk/sifive/Kconfig
> index 8db4a3eb4782..f3b4eb9cb0f5 100644
> --- a/drivers/clk/sifive/Kconfig
> +++ b/drivers/clk/sifive/Kconfig
> @@ -2,6 +2,7 @@
> =20
>  menuconfig CLK_SIFIVE
>  	bool "SiFive SoC driver support"
> +	depends on RISCV || COMPILE_TEST
>  	help
>  	  SoC drivers for SiFive Linux-capable SoCs.
> =20

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--ZARJHfwaSJQLOEUz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzhyccACgkQMOfwapXb+vKL9ACgxM0+9bKh/scPwPJjoynP4CP5
Pz4An3RLsy9e7OUJOOEqqejLViJVsWKX
=v+he
-----END PGP SIGNATURE-----

--ZARJHfwaSJQLOEUz--


--===============6733192306771890243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============6733192306771890243==--

