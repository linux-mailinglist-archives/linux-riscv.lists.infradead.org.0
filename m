Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25729132472
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Jan 2020 12:05:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ptBtaLfSefXKIlF4+ATcVDfD9CqQtKSIYDSRdZx4Dts=; b=HETPySwjMRg8X9bz9FtBXSGM3
	iuGd1nAHxT6eF2FTePkcBNz8LtmX7U9DQNO56B5V99Od0cCZcHY+QSGkJkQ9PUUSKyV0i61L0d/nV
	03EixBPT8qmNFcMqnhDlWW6nTrSd3jKNzUnhlcnfwqFhCXrJSsf3UV40TlDp7+puryz+QRXZt5/ug
	/6thIivG8iS+4CgMetUDFv4e3F6CVj9u0rTC7FBrtQOEUKBimr/63xdDJ7kH/keyDi0Kwz1+VcYR3
	B05kZ35NErGxl8fjA6d61js5T//XWlbGKj6jR6b3MJQ1GVGQA3ZOA19ko2ILL4rsgL84UfKClZY1P
	qaMxEMjzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomfg-0002CZ-7C; Tue, 07 Jan 2020 11:05:12 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomeb-0001k9-0u; Tue, 07 Jan 2020 11:04:27 +0000
Received: by mail-ed1-f66.google.com with SMTP id f8so6455391edv.2;
 Tue, 07 Jan 2020 03:04:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ptBtaLfSefXKIlF4+ATcVDfD9CqQtKSIYDSRdZx4Dts=;
 b=BwJVVduBH3q5Qid9RMG1kwAuBOHtUdNILi2maNtcgQ/OQjX1rDriFARyJRvLvE5Usq
 OAszbfkYwNctlu2FUMjzcODdNzi4/lFPWIuoM3Wflj0bKf1Jryp0yQY6mf6P2qTXy1uY
 CEVHMZrW8oowdBqjRY6nO8crthkphvfsxdAyLXTjgeuP5nU07pRogFbUPqgJRLs1cCfP
 AX1w1xrv1PW6tECFnzTyR2AiCNuVH66E+KUpCOy8To306eFKKRmOFtPdRlRxxRCWYpvR
 jy3ZoKNhF4mgx8bdzy6CYYZncD+AjaeEcHiXXjhUZe9VaL6tY2qjtj++jstfYZ4XBlxr
 +a6A==
X-Gm-Message-State: APjAAAXOAvR0iEtdRQgyNfMnIDG+zFYrRG0eqxYCwSZ3mDYGWREHNjRX
 f9e4ETjRi7y2MBuWLJug+88=
X-Google-Smtp-Source: APXvYqzKoAnAzDFoVmt8WsrTLEo61oVGbLtxhYn9w1G9R8M+n/U0qKkIJnksdqHSF0YmF+wOzkLZyQ==
X-Received: by 2002:a17:906:c4d:: with SMTP id
 t13mr112159727ejf.198.1578395042449; 
 Tue, 07 Jan 2020 03:04:02 -0800 (PST)
Received: from pi3 ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id x8sm7492342eds.88.2020.01.07.03.04.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 03:04:01 -0800 (PST)
Date: Tue, 7 Jan 2020 12:03:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Message-ID: <20200107110359.GA32423@pi3>
References: <20191230172113.17222-1-krzk@kernel.org>
 <20191230172113.17222-2-krzk@kernel.org>
 <20200107072645.ko247bwhh3ibdu73@pengutronix.de>
 <20200107082539.GA31827@pi3>
 <20200107104234.wq74fska3szrg4ii@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200107104234.wq74fska3szrg4ii@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_030424_657276_6201ADA7 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-pwm@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 kernel@pengutronix.de, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-riscv@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 11:42:34AM +0100, Uwe Kleine-K=C3=B6nig wrote:
> > I guess other solution would be to add stubs for few clk functions...
> >=20
> > > Also HAS_IOMEM is a typical requirement, but I tested with an ARCH=3D=
um
> > > config (which does't have HAS_IOMEM) and they all compile fine.
> >=20
> > Because of !HAS_IOMEM, since some time ARCH=3Dum does not support
> > COMPILE_TEST. Therefore HAS_IOMEM dependency is not needed for compile
> > testing (and for regular build it is selected by ARCH).
>=20
> Hehe, I didn't notice because for testing I just dropped the "depends on
> ..." lines in Kconfig instead of adding "|| COMPILE_TEST" :-) Still they
> compile fine on UML.
>=20
> Ah, since bc083a64b6c0 ("init/Kconfig: make COMPILE_TEST depend on
> !UML") =3D=3D v4.8-rc1~52^2~83 COMPILE_TEST cannot be enabled on UML, but
> later 1bcbfbfdeb00 ("um: add dummy ioremap and iounmap functions")
> =3D=3D v4.13-rc1~8^2~6 UM got a dummy implementation. So maybe we could
> revert bc083a64b6c0 today? (And if not, a comment about why near the
> "depends on !UML" in init/Kconfig would be great.)
>=20
> Orthogonal to that, I wonder if depending on HAS_IOMEM is right even
> though the compile testers won't notice it missing. Or should HAS_IOMEM
> be dropped?

I think yes, it can be dropped, but this would require:
1. Fixing any dependencies on HAS_IOMEM, e.g.:
    WARNING: unmet direct dependencies detected for MFD_SYSCON
      Depends on [n]: HAS_IOMEM [=3Dn]
      Selected by [y]:
      - PHY_DA8XX_USB [=3Dy] && (ARCH_DAVINCI_DA8XX || COMPILE_TEST [=3Dy])

2. Checking if all of stubs are implemented (not only IOMEM but maybe
   DMA as well). Also 1bcbfbfdeb00 brought only few stubs. Still we
   need devm_ioremap_resource() and others.

Quick test shows mentioned "unmet direct dependencies" and:
    phy-pxa-usb.c:(.text+0x2f5): undefined reference to `devm_ioremap_resou=
rce'
    dma-iommu.c:(.text+0x179): undefined reference to `dma_pgprot'

>=20
> > > > @@ -318,7 +319,7 @@ config PWM_MEDIATEK
> > > > =20
> > > >  config PWM_MXS
> > > >  	tristate "Freescale MXS PWM support"
> > > > -	depends on ARCH_MXS && OF
> > > > +	depends on (ARCH_MXS && OF) || COMPILE_TEST
> > > >  	select STMP_DEVICE
> > > >  	help
> > > >  	  Generic PWM framework driver for Freescale MXS.
> > > > @@ -328,7 +329,8 @@ config PWM_MXS
> > > > =20
> > > >  config PWM_OMAP_DMTIMER
> > > >  	tristate "OMAP Dual-Mode Timer PWM support"
> > > > -	depends on OF && ARCH_OMAP && OMAP_DM_TIMER
> > > > +	depends on (ARCH_OMAP && OMAP_DM_TIMER) || COMPILE_TEST
> > > > +	depends on OF
> > >=20
> > > I'm surprised that OF isn't required for PWM_MXS but is is for
> > > PWM_OMAP_DMTIMER. pwm-mxs compiles without CONFIG_OF, didn't test
> > > pwm-omap-dmtimer.
> >=20
> > Since some time !OF has all necessary stubs so OF is actually needed
> > only for binding, not compiling.
>=20
> That doesn't explain why you handle PWM_MXS and PWM_OMAP_DMTIMER
> differently though.

You're right, I missed this. None of them require OF for building so
separate "depends on OF" makes sense only for readability of this.  Let
me send v2 to make it similar to PWM_MXS.


Best regards,
Krzysztof


