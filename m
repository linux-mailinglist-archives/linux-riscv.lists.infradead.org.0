Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAE713215A
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Jan 2020 09:26:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vT2NN+xI4BcelZZCoGioMbTizcdEYSLI6ni70MbnF8c=; b=HbR4F7+KL90F6g8iQsKJGLHRS
	nOQVujglbr3w0icCSWNrgLQqCWHXq4yVyFbkfg7f62BtFST6Iuehr8n+u/fjBlfx2YEkivWo381o4
	Kwokr9fnIwZMhcRB+dgWFmvwmwnn7IS9PWzcFBRL+SVjzEKiQUDrSfOxaL+pbdeZa+HcHRYbGSLpM
	6hQf5CdqfvUHzxvm5YgvS7bc6cDRkk5aKI8cqZXhuYBl9WZI+qrk6CFL/IqSgdZ1zwVSWqOlEjlBT
	ju84/3dZEK2Y8wILt6jcps0xlpBBl0cNnJtTOQ/RsChjELsKOCYdJJTWebAbEIpCx4LJj/vc5EILi
	Y10jbHSiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokBi-0001kw-OU; Tue, 07 Jan 2020 08:26:06 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokBM-0001RW-I4; Tue, 07 Jan 2020 08:25:45 +0000
Received: by mail-ed1-f65.google.com with SMTP id t17so49684279eds.6;
 Tue, 07 Jan 2020 00:25:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vT2NN+xI4BcelZZCoGioMbTizcdEYSLI6ni70MbnF8c=;
 b=H5ntgANnQ3LJlZqRj0AvDM8Pfvr1d9jl/CQ24bjSzWIIGmBmCdpDNrPpvNPw8vULyW
 nmkvUE7KzTT94hnmvHVdu+FcA++X/GZjPLZpfMlfeAsmCWhIWLndg2C/FM/tLv/8wy/9
 2kcW8rThD7+BiViGFjObJLaAliZ2RmjEVOhWnEH/CsOd1kSMHBMAAtTR8wR1OHciyx/0
 a86vrjonbzwXSAHojFzGPs7LyK/xia4xR/CD6RulUSnRVnbtjF0x7QXoT0mlJW7+PlB1
 +icv1L99aVEPiJTIxdI4Y+ln077w0Levqc0LMIi5MGYk4C5x3dncZbXS+fPJAZ0ZQZQd
 oAZQ==
X-Gm-Message-State: APjAAAUC6jh8b1TDV8/J8Ar0MJ4Yl4qJtwSbuHlssjW8x6rCqbwpwL4P
 n2jDfHFeLuoKyxnEmy8wImE=
X-Google-Smtp-Source: APXvYqwRuI+Pu22h1HAS8nBuWY+NEdeOj5ioRnCb8N42vbhDOOIZ7fM0eRKg8UY44R4kju5amCGT3w==
X-Received: by 2002:a05:6402:221c:: with SMTP id
 cq28mr63552685edb.110.1578385542439; 
 Tue, 07 Jan 2020 00:25:42 -0800 (PST)
Received: from pi3 ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id ba29sm7398179edb.47.2020.01.07.00.25.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 00:25:41 -0800 (PST)
Date: Tue, 7 Jan 2020 09:25:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Message-ID: <20200107082539.GA31827@pi3>
References: <20191230172113.17222-1-krzk@kernel.org>
 <20191230172113.17222-2-krzk@kernel.org>
 <20200107072645.ko247bwhh3ibdu73@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200107072645.ko247bwhh3ibdu73@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_002544_602970_0997F922 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: linux-pwm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 08:26:45AM +0100, Uwe Kleine-K=C3=B6nig wrote:
> Hello Krzysztof,
>=20
> On Mon, Dec 30, 2019 at 06:21:13PM +0100, Krzysztof Kozlowski wrote:
> > Some of the PWM drivers can be compile tested to increase build
> > coverage.
> >=20
> > The Meson PWM driver requires COMMON_CLK dependency.
>=20
> I'm surprised that there are not more that need this. Is HAVE_CLK not
> enough?

Nope. E.g. for alpha architecture, HAVE_CLK is not set and without
COMMON_CLK:

drivers/pwm/pwm-meson.o: In function `meson_pwm_init_channels':
(.text+0x244): undefined reference to `devm_clk_register'

I guess other solution would be to add stubs for few clk functions...

> Also HAS_IOMEM is a typical requirement, but I tested with an ARCH=3Dum
> config (which does't have HAS_IOMEM) and they all compile fine.

Because of !HAS_IOMEM, since some time ARCH=3Dum does not support
COMPILE_TEST. Therefore HAS_IOMEM dependency is not needed for compile
testing (and for regular build it is selected by ARCH).

>=20
> > @@ -318,7 +319,7 @@ config PWM_MEDIATEK
> > =20
> >  config PWM_MXS
> >  	tristate "Freescale MXS PWM support"
> > -	depends on ARCH_MXS && OF
> > +	depends on (ARCH_MXS && OF) || COMPILE_TEST
> >  	select STMP_DEVICE
> >  	help
> >  	  Generic PWM framework driver for Freescale MXS.
> > @@ -328,7 +329,8 @@ config PWM_MXS
> > =20
> >  config PWM_OMAP_DMTIMER
> >  	tristate "OMAP Dual-Mode Timer PWM support"
> > -	depends on OF && ARCH_OMAP && OMAP_DM_TIMER
> > +	depends on (ARCH_OMAP && OMAP_DM_TIMER) || COMPILE_TEST
> > +	depends on OF
>=20
> I'm surprised that OF isn't required for PWM_MXS but is is for
> PWM_OMAP_DMTIMER. pwm-mxs compiles without CONFIG_OF, didn't test
> pwm-omap-dmtimer.

Since some time !OF has all necessary stubs so OF is actually needed
only for binding, not compiling.

Best regards,
Krzysztof


