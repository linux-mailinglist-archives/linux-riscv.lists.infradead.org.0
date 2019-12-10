Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A044511896D
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Dec 2019 14:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PD9rD6bg++gMjCswMooVuJ6GHSrSEW3rhBvWYCoYFEg=; b=XGxZ3+OXAyw9MvQQTW4hud0ln
	gsnPHCE4w1OJF8Yy2m5vVazenet2QHbLuiljjlbrjgspT+60SrOOmmTC8wrAgPOoMDzFcDCf2FFnf
	m0W0nbxZ6rAJwu45rYAcLOASsJYMf9TUv5RBL9NY4L/d1YJPxGq+atTimEmxA2/ZivswhHwaA0Db8
	ohts57ybDoqUZVHar/bHQz1hb97x5948X1MuhEh2mSoEx2aGsnvWi46FF3FoHz/QZnrDY35BE2UWt
	PAX2hSt1f4y6WjTax1VrM6Et6ezRal6DowHEXamndDnZG01Fnb+5czysqQDCLSBz7Z229J0DyOLPH
	Z+uqhCuvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefSc-0000gz-9w; Tue, 10 Dec 2019 13:21:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefSY-0000gO-8J; Tue, 10 Dec 2019 13:21:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so20050381wrt.6;
 Tue, 10 Dec 2019 05:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PD9rD6bg++gMjCswMooVuJ6GHSrSEW3rhBvWYCoYFEg=;
 b=grYvPN3cIERnB3LqghBbImfPbQdfQQj9oEFeLf/acZGQbfYH4EOYEgtWTJjz/rly+1
 WFWuXoNJkvIyE+Kubj+PvKRgiEfFpczjtEhtQqvJZlCEn316NFFQuF+lks0IhfaSVbYk
 jvb5CjwV6dsDZ67zXhAXu1DZfwebNmbsV8ryAPckhN8cF1/+Jnh9m+Oxthb1hpkyM/ko
 ugA/6AHtm3XYKFDclLk46c0JQAhtWVHX/hdMMUH5ZndH027aJjGHZSVHPb1eT+AHHlM8
 U0X/zjKonF9Z3q8VH7Bwbs3Ct2F63UthGaHvfRcyBPzVZMPLK4AikpijZRBry0xNHNxc
 NIdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PD9rD6bg++gMjCswMooVuJ6GHSrSEW3rhBvWYCoYFEg=;
 b=r0p7R8USHb+/Ukn2uqxAfQg5TBtAKP6BzrAewmswxYQnDXRUeh4oYJBo1ec50d5XXH
 76jo4TdukWi96nBpWPfMECzVuvO94QMgtwCIjEqh0Qu9Lb085FGHhyTSpmwnjGL1IaWz
 JjAdiK2RCtaRzIkDqbLjNd6Oee87Tn6sbkGGFtcwhdCrN4gVv4DMqziisFbAnT8v/V/2
 Pzeri+uluBIGy3lPayes+3Yj9PIdEIJ8v7ersMft5vqHHEgEq4akGsZGBO4juKjr9XB8
 e1aIIN0vxWuIsLwOB+h+ZQkjourwD2tX6B0xOtYfuPiItnpQ560LMYqPXZnrJouehxbD
 Nkhw==
X-Gm-Message-State: APjAAAXS8qo5hpNPzykIk/zeEsUDRnwk2nBw+3XbU4kHRCWrcNIjAqCJ
 1LgjjLThYVGmaUSs4yPuEuI=
X-Google-Smtp-Source: APXvYqyNp9El3jJPA92qJwowDt0LvCr4BQ8RPG5Z45U5YRoQ7PFff1oHgeQlTzeIWm17Ll8QsfEczA==
X-Received: by 2002:adf:ea88:: with SMTP id s8mr3271577wrm.293.1575984108567; 
 Tue, 10 Dec 2019 05:21:48 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id g21sm3536295wrb.48.2019.12.10.05.21.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 05:21:47 -0800 (PST)
Date: Tue, 10 Dec 2019 14:21:46 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
Message-ID: <20191210132146.GF2703785@ulmo>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
 <20191209195749.868-8-tiny.windzz@gmail.com>
 <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="yH1ZJFh+qWm+VodA"
Content-Disposition: inline
In-Reply-To: <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052150_319846_13454699 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "pgaikwad@nvidia.com" <pgaikwad@nvidia.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "chunhui.dai@mediatek.com" <chunhui.dai@mediatek.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "palmer@sifive.com" <palmer@sifive.com>, "nsekhar@ti.com" <nsekhar@ti.com>,
 "tomasz.figa@gmail.com" <tomasz.figa@gmail.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "weiyongjun1@huawei.com" <weiyongjun1@huawei.com>,
 "s.nawrocki@samsung.com" <s.nawrocki@samsung.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "john@phrozen.org" <john@phrozen.org>, "robh@kernel.org" <robh@kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "emilio@elopez.com.ar" <emilio@elopez.com.ar>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "swinslow@gmail.com" <swinslow@gmail.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "allison@lohutok.net" <allison@lohutok.net>,
 Aisheng Dong <aisheng.dong@nxp.com>, "jcmvbkbc@gmail.com" <jcmvbkbc@gmail.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "pdeschrijver@nvidia.com" <pdeschrijver@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "t-kristo@ti.com" <t-kristo@ti.com>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wangyan.wang@mediatek.com" <wangyan.wang@mediatek.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "afaerber@suse.de" <afaerber@suse.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--yH1ZJFh+qWm+VodA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 09, 2019 at 08:44:39PM +0000, Leonard Crestez wrote:
> On 09.12.2019 21:58, Yangtao Li wrote:
> > Use devm_platform_ioremap_resource() to simplify code.
> >=20
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >   drivers/clk/imx/clk-imx8qxp-lpcg.c | 6 +-----
> >   1 file changed, 1 insertion(+), 5 deletions(-)
> >=20
> > diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-i=
mx8qxp-lpcg.c
> > index c0aff7ca6374..10ae712447c6 100644
> > --- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
> > +++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> > @@ -164,7 +164,6 @@ static int imx8qxp_lpcg_clk_probe(struct platform_d=
evice *pdev)
> >   	struct clk_hw_onecell_data *clk_data;
> >   	const struct imx8qxp_ss_lpcg *ss_lpcg;
> >   	const struct imx8qxp_lpcg_data *lpcg;
> > -	struct resource *res;
> >   	struct clk_hw **clks;
> >   	void __iomem *base;
> >   	int i;
> > @@ -173,10 +172,7 @@ static int imx8qxp_lpcg_clk_probe(struct platform_=
device *pdev)
> >   	if (!ss_lpcg)
> >   		return -ENODEV;
> >  =20
> > -	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > -	if (!res)
> > -		return -EINVAL;
> > -	base =3D devm_ioremap(dev, res->start, resource_size(res));
> > +	base =3D devm_platform_ioremap_resource(pdev, 0);
> >   	if (!base)
> >   		return -ENOMEM;
>=20
> This breaks imx8qxp-mek boot by causing most peripherals (like uart) to=
=20
> fail to probe.
>=20
> The old and new paths are not equivalent: devm_platform_ioremap_resource
> calls devm_ioremap_resource which differs from devm_ioremap by also=20
> calling devm_request_mem_region.
>=20
> This prevents other mappings in the area and imx8qxp-lpcg nodes map=20
> whole hardware "subsystems" and overlap most peripherals. For example:
>=20
>                   adma_lpcg: clock-controller@59000000 {
>                           compatible =3D "fsl,imx8qxp-lpcg-adma";
>                           reg =3D <0x59000000 0x2000000>;
>                           #clock-cells =3D <1>;
> 		};
>=20
>                  adma_lpuart0: serial@5a060000 {
> 			reg =3D <0x5a060000 0x1000>;
> 			...
> 		};

The whole point of doing a request_mem_region() is to avoid having
multiple drivers trample on each others' mappings. What you do above
doesn't look right. Why does that clock controller need access to 32
MiB of I/O memory space?

That said, there are legitimate reasons for sharing mappings across
drivers, so I agree that automated conversions like this should be done
very carefully. The difficulty is that there are cases where drivers
simply omitted that request_mem_region() by mistake and where the
conversion can be correct (and in fact an improvement), but we can't
make the assumption blindly.

Thierry

> I don't know if this issue affects any other platforms (imx8 lpcg=20
> bindings are unusual) but if you found this with an automated tool=20
> perhaps it should be adjusted?
>=20
> By my count it's the 4th time this incorrect cleanup was posted.
>=20
> Previously: https://lkml.org/lkml/2019/12/4/487
>=20
> --
> Regards,
> Leonard

--yH1ZJFh+qWm+VodA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3vm+kACgkQ3SOs138+
s6GULxAAilZa8OEmaTs15SX7kJWFjGSMuGZCPAm85TmYwx53oHvbjOuvkDgdiJVy
bHs51DNXVvFeKTKCiiZLDflAjAhtV6lFBx0mqUk6re6p6Ix/wvmGqZUSJyFOgXBs
DR33v6akOaCrtnJTEyyCvVJf1RmYd4T+MeONWbm6rfz93xzxT9DZmrU4I7VmRsxn
8onxkgYw9VjtJQBxR++NgKmCqDoVmsf5nLBQxhuvZpFADhUPwhTfdkv4ehEmPETE
WcdPQkzbQtqqjWvIMq0SDMr5wxybbQzZKb1j/R0H5umvNAAJYdxihPcMsLuXf5iX
paNWTVxUjnRzmiPUzy8dPsxBYhlazonR791Clt22p91PJ+/WceAgPW7AaBWZnHT1
U2jGi1puhPTaUIe93EUS4mgmMUOmbXFoLGBdj7tw9gla4OW8fCsQyIr23gXgCSWp
iM2eHKLajC3q1sz7nwQ/YmJcEbXzu5BUF1XLo/MyOE04wdqnVAUGnDhSW06MOZpR
/28nhqZxRMGeTSpGN4wjLGl/7zVF7U9XZVF+1mkgGBAWLeKoHZ+zznk7eRRAs3jm
G55LaB83ZpUlJcRGTb6mvTMLntmcKTdff5IyNND9S5QRAzsxnUqS3PIGARSm5erh
aM8vbqsy8rN4viYsg6b4AnC3pkXuzP9g6CymxLl8NlFMykwKJZE=
=S6GE
-----END PGP SIGNATURE-----

--yH1ZJFh+qWm+VodA--

