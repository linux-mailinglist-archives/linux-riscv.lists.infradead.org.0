Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD943A866B
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 18:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CL6IMdBln08Kyhd8SL6i6EVMwUntNLmGFK6c5cBuCA8=; b=lKFZQfFCHSWTGpkIh65byaR0A
	q3UrboUWVM6LhwyxjPo2p1dXtCMOg8nnfFxN5NkHu0VwO/CcwX3ST2KCN+nFSGvuPsFjas1fcfipA
	xPwPhttRyH5nCgDsQ/4xSFwjamf3BkS4t70Gre+V7j+QL7RpSt+IAcV4VuUfZeuRVroamWGEyu9cV
	hTGXa9Xt2YSAo3iIE6B8pbcvah/P9jpVtRVc4JpqAUUZTPrK+HNPdm3PyLjLQZjB/Bh9WcXVYyiYz
	eCM93N4nTPU09pSSWFyse+sYPdZEIY34j4rxq7dtlj4R8njyTHVMch/1E+4qA8XzdhQqupqU0Bj8p
	Q1nXt9qsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XvS-0001IQ-5g; Wed, 04 Sep 2019 16:14:30 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Xv5-0000zS-9O; Wed, 04 Sep 2019 16:14:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1EyANVYB8OYlB3yXu3/GSCY+3MXUWjqGnAuH+zG2V+8=; b=oeJSTcdIDcOk3Y6i6oSHYnqaK
 mbpR6uQLQflGkucJXLK1X+2eg2NvuIzkQ2cgHhhXiK+gq+r57luFLU1d+pYjzappehwqj8iyH2FRH
 3UVBQP5H5gwc2TmttChlxUCjhqE0xghi0XAtJFdsAa7iqj1fNovs+5a+x0opvYVUoIEAo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i5Xun-0006R9-Ad; Wed, 04 Sep 2019 16:13:49 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 67FED2742B45; Wed,  4 Sep 2019 17:13:48 +0100 (BST)
Date: Wed, 4 Sep 2019 17:13:48 +0100
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH -next 25/36] spi: s3c24xx: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190904161348.GE4348@sirena.co.uk>
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-26-yuehaibing@huawei.com>
 <CAJKOXPdq4as1Oe3U+9znkvP0RA=sxUoiWVBCSbzf_wq_um2t=w@mail.gmail.com>
 <20190904143928.GB4348@sirena.co.uk>
 <CAJKOXPeRtbAvmR-=8Qa8ukGXt-cCj3ud_7y1Z4LgRpX3YCeumg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJKOXPeRtbAvmR-=8Qa8ukGXt-cCj3ud_7y1Z4LgRpX3YCeumg@mail.gmail.com>
X-Cookie: Help fight continental drift.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091407_338105_45557D34 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tmaimon77@gmail.com, palmer@sifive.com, tali.perry1@gmail.com,
 eric@anholt.net, ldewangan@nvidia.com, linux-riscv@lists.infradead.org,
 festevam@gmail.com, f.fainelli@gmail.com, benjaminfair@google.com,
 shc_work@mail.ru, khilman@baylibre.com, openbmc@lists.ozlabs.org,
 YueHaibing <yuehaibing@huawei.com>, michal.simek@xilinx.com,
 jonathanh@nvidia.com, yuenn@google.com, wens@csie.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-imx@nxp.com,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 Andi Shyti <andi@etezian.org>, rjui@broadcom.com, s.hauer@pengutronix.de,
 mripard@kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 paul.walmsley@sifive.com, matthias.bgg@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 baohua@kernel.org, sbranden@broadcom.com, yamada.masahiro@socionext.com,
 avifishman70@gmail.com, venture@google.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, thierry.reding@gmail.com, wahrenst@gmx.net,
 kernel@pengutronix.de, kgene@kernel.org, shawnguo@kernel.org
Content-Type: multipart/mixed; boundary="===============2142685649062764386=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--===============2142685649062764386==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="N1GIdlSm9i+YlY4t"
Content-Disposition: inline


--N1GIdlSm9i+YlY4t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 04, 2019 at 05:09:45PM +0200, Krzysztof Kozlowski wrote:
> On Wed, 4 Sep 2019 at 16:39, Mark Brown <broonie@kernel.org> wrote:

> > I think it's reasonable, it's giving credit to the automated system
> > they've got running coccinelle (which they do mention in their commit
> > logs).  It doesn't really hurt anyone and lets people see their system
> > is finding stuff.

> Running internally coccinelle is already credited with commit author.
> The credits are coming with "From:" field.

I guess if other people look at the same CI and send patches as well
then there's some use tying them all together.

> Otherwise for commits I send I could use:
>   From: krzk
>   ...
>   Reported-by: www.krzk.eu
>   Signed-off-by: krzk
> To me it is ridiculous.

Sure, on the other hand it doesn't really cost anyone anything if you do
that.

> Different thing is that Reported-by is for fixing bugs or issues.
> There is no bug here. There is no problem solved except making the
> code smaller. That's not what is Reported-by for.

That is true, this one isn't fixing any bug but then the line does get a
bit fuzzy all round with things like warnings and coccinelle output -
even just having the warning pop up is noise for people looking at the
output even if there's no concrete problem.  Again I don't see it as
something that's worth getting worked up over.

--N1GIdlSm9i+YlY4t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1v4rsACgkQJNaLcl1U
h9ADfQf/V7pUFkik9p4ok45W4iQXJ+1Wee9ghMi2ut+nuRzX8NRSwWYnFgK3w119
nf1YXfJsWCcs9af+DjcSoEyJWq/wegSyF/egvEd36QdqtaJJbMs/J5Kl+TEcglDA
uRJW6F/zevMcwamDE2I6UqdQjTIa2R8QG2S9yaw36Hd2b0k38lLq2Z1knHnQNbX7
6mFEqyt+sTaFjsBtlkgeUiTkMp36WsnTY7oRzGr/RKAd9ByHDmQKtPTuJl4eQTx6
zzkUK0PzNpBPqNyILAt7MYr01EyZfO3gjxnRNIH8yKl+80mkhiV2Td6DJehCuNqE
F30QD0NUhsOuqyDT26hqXFcIWtym6A==
=GPj9
-----END PGP SIGNATURE-----

--N1GIdlSm9i+YlY4t--


--===============2142685649062764386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============2142685649062764386==--

