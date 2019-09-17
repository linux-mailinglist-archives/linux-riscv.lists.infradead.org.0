Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F80BB500E
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 16:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SMbnT9abLM1mvqBg4he9yG6fex8cqU5PTs4lgnG91xs=; b=SutpGp5Ny20qzeJ2NX+FV1RqS
	IJq9HXIScngW0HI4+1NSmDw54+3cp4fIHpKfF6JNavUQc+MRXFPw8aXwnYMaO0I3jHUpxKgBp2SjK
	AkQs7HAJ1aWoLVlBjKiCI+9Q1/w/uSpwkiJMMjk80OdxfKvrvAEB601zaGxzrNultQlUVpZg0RsL8
	u1A8pEa6ABXqWrt9kqVfIIJzwLgNmPEH7JWzxZm0JKlZH81NurMx4e3wGt1qns1jmXaI+Tql0vgbw
	dqb8lLw1q7kr0AgjuzsydsUBAA4EfOFWk7zMAnQ0NgALchdvt2Swj3jxwMuJdPaa243moTDZZsPha
	j/R9CnDQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAECR-0004LA-2E; Tue, 17 Sep 2019 14:11:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAECN-0004Kn-BN
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 14:11:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id r5so3284424wrm.12
 for <linux-riscv@lists.infradead.org>; Tue, 17 Sep 2019 07:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Z6VrYNesVKMXJ+ulzIbEsB6YF+R/fyaC0hYVzmRgjEU=;
 b=TYmeD0Xlf52MIkWG8R8WIJ7lZz9MwhhLj+MT1AJ8zWHj9x1B+ORaEdI11YZB1cV/KP
 Q43MgenEWbllJFTHX/xauVLsvP2zqxkJXxjK+m3iYnul8QTD6Xq/RpNrgbQmHMGK3Bly
 fWs/YCjsvy55FV7DMdlA5l1TE1Rbj7CChd/0uBsSxBPiGV5viVDgTK4R5EjIIFlGlSnC
 Jsw9uCVAS8CNYfk9RbRdwon/Ssof/GXNeYwZIsMrfJ8I6HYeGN2EGVZZ/OKflbvY3m/E
 Fqq2RpyO7FDMAqnU06Zb/PtQ5hcexCpnLCllq2OwkwCH3DUuLA4ya2v36P7TncDMrKfj
 hXyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Z6VrYNesVKMXJ+ulzIbEsB6YF+R/fyaC0hYVzmRgjEU=;
 b=tuoBqWz+rl6gq/E0O0E1+pWCI41pLh/xuEpns6KblXDWmcZYFmSdvis/a7vxHF7e1r
 22gRnpfRcM0OntEjNl+3ozGOe+y28+8sVPI473GMaEp7vZ3ce7Vq3WX6rK4/P3ab8IDc
 tRAgZuy9tHR3YeWZU3n1a+EgTXd9MFmK4UZeeHxllmRYgKuCyrxdlfBuXWoSjAv7Dpsn
 1JNlXvv4IZeBrf5kjdr+yXbZ1pgrCKcAZeOPrt5tKfbktOnbU+NWbgFn1jmEB5BZSncw
 4IhHCB7ibOqTIZih9xNAed3x/GhR30rLa96hUj3mT6sfAZtFvpOVGnF7Bdi+xQuyjBGa
 SjcQ==
X-Gm-Message-State: APjAAAUvSJe46hQlrQsQEl7HX5b72otvZhhACn5gMt5q7JJuRoY7UPeF
 +jTctmOi5R3i6bcdXBakR3bNNA==
X-Google-Smtp-Source: APXvYqybEIGjc3b1spUt+GGCetbHRNtPijTdAl9qvfY4a2Gv0hS2ZMdtaN0aUZ9iyLtr+zebc9MUzA==
X-Received: by 2002:adf:fc0e:: with SMTP id i14mr3303400wrr.302.1568729477864; 
 Tue, 17 Sep 2019 07:11:17 -0700 (PDT)
Received: from localhost ([195.200.173.126])
 by smtp.gmail.com with ESMTPSA id r18sm3800225wme.48.2019.09.17.07.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 07:11:17 -0700 (PDT)
Date: Tue, 17 Sep 2019 07:11:16 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Aurabindo Jayamohanan <mail@aurabindo.in>
Subject: Re: [PATCH] spi: sifive: check return value for
 platform_get_resource()
In-Reply-To: <ij_UksEXUomr_L7KQam02lHBryAppgwKDjG90VbVcRRUeXlKU8TAiBWc3aU8vt20Wvlwt_6NDgz5fuMSwwP1mm-1eP6GYWoR1Kbr0y0ElRk=@aurabindo.in>
Message-ID: <alpine.DEB.2.21.9999.1909170709070.8198@viisi.sifive.com>
References: <20190917085627.4562-1-mail@aurabindo.in>
 <CAMz4kuJczzjTPSohQ=kbZ0Pr7U_9-hzXk-jPgKk79PENOM1-dA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1909170514130.11980@viisi.sifive.com>
 <ij_UksEXUomr_L7KQam02lHBryAppgwKDjG90VbVcRRUeXlKU8TAiBWc3aU8vt20Wvlwt_6NDgz5fuMSwwP1mm-1eP6GYWoR1Kbr0y0ElRk=@aurabindo.in>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1565122568-1568729476=:8198"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_071119_447388_09932AB7 
X-CRM114-Status: GOOD (  21.01  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: aurabindo.in]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Baolin Wang <baolin.wang@linaro.org>,
 "palmer@sifive.com" <palmer@sifive.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1565122568-1568729476=:8198
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

Aurobindo,=20

On Tue, 17 Sep 2019, Aurabindo Jayamohanan wrote:

> =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original =
Message =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
> On Tuesday, September 17, 2019 5:45 PM, Paul Walmsley <paul.walmsley@sifi=
ve.com> wrote:
>=20
> > On Tue, 17 Sep 2019, Baolin Wang wrote:
> >
> > > On Tue, 17 Sep 2019 at 17:12, Aurabindo Jayamohanan mail@aurabindo.in=
 wrote:
> > >
> > > > platform_get_resource() may return NULL. If it is so, return -ENXIO
> > > >
> > > > Signed-off-by: Aurabindo Jayamohanan mail@aurabindo.in
> > > >
> > > > -------------------------------------------------------
> > > >
> > > > drivers/spi/spi-sifive.c | 6 ++++++
> > > > 1 file changed, 6 insertions(+)
> > > > diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
> > > > index 93ec2c6cdbfd..67485067a694 100644
> > > > --- a/drivers/spi/spi-sifive.c
> > > > +++ b/drivers/spi/spi-sifive.c
> > > > @@ -308,6 +308,12 @@ static int sifive_spi_probe(struct platform_de=
vice *pdev)
> > > > platform_set_drvdata(pdev, master);
> > > >
> > > >         res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > >
> > > >
> > > > -         if (!res) {
> > > >
> > > >
> > > > -                 dev_err(&pdev->dev, "no IOMEM resource found\\n")=
;
> > > >
> > > >
> > > > -                 ret =3D -ENXIO;
> > > >
> > > >
> > > > -                 goto put_master;
> > > >
> > > >
> > > > -         }
> > > >
> > > >
> > >
> > > Seems unnecessary, the devm_ioremap_resource() already validated if
> > > the resource is available.
> >
> > Just doublechecked lib/devres.c and I agree with you.
> >
> > Aurobindo, is this a patch for a real problem that you've encountered?
> >
> > -   Paul
>=20
> Geert is right. I was just breezing through the source and found it odd s=
ince
> I noticed other instances checking for return value. Apparently none of t=
hose
> use the managed api.
>=20
> If you didnt already do Geert's suggestion,

Mark Brown is the maintainer, so he'd be the one to apply anything=20
touching these drivers.

> here is a patch:

Could you please send this as a separate E-mail?

> ____
>=20
> spi: sifive: use device managed api to get plaform resource

"platform resource"

>=20
> calls to devm_ioremap_resource() preceeded by platform_get_resource()

"Calls"

"preceded"

> may be replaced by devm_platform_ioremap_resource().

Please explain why.  In this case "removing boilerplate from the code"=20
seems like a reasonable explanation.

>=20
> Signed-off-by: Aurabindo Jayamohanan <mail@aurabindo.in>
> ---
>  drivers/spi/spi-sifive.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
> index 93ec2c6cdbfd..c0925aa98aad 100644
> --- a/drivers/spi/spi-sifive.c
> +++ b/drivers/spi/spi-sifive.c
> @@ -292,7 +292,6 @@ sifive_spi_transfer_one(struct spi_master *master, st=
ruct spi_device *device,
>  static int sifive_spi_probe(struct platform_device *pdev)
>  {
>  =09struct sifive_spi *spi;
> -=09struct resource *res;
>  =09int ret, irq, num_cs;
>  =09u32 cs_bits, max_bits_per_word;
>  =09struct spi_master *master;
> @@ -307,8 +306,7 @@ static int sifive_spi_probe(struct platform_device *p=
dev)
>  =09init_completion(&spi->done);
>  =09platform_set_drvdata(pdev, master);
>=20
> -=09res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -=09spi->regs =3D devm_ioremap_resource(&pdev->dev, res);
> +=09spi->regs =3D devm_platform_ioremap_resource(pdev, 0);
>  =09if (IS_ERR(spi->regs)) {
>  =09=09ret =3D PTR_ERR(spi->regs);
>  =09=09goto put_master;
> --
> 2.23.0
>=20


- Paul
--8323329-1565122568-1568729476=:8198
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--8323329-1565122568-1568729476=:8198--

