Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3BD1AC432
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 15:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lAG6zzq1Sqen9mJhj5pG0jXwK1qfgmptfKCYtqRavfc=; b=MlGkFxIwOkhTlULKM81rctHDe
	wJSmukOd+thfczgQxeGTyaWeI8Cyto41U3KmjWYl+yRKX59uH9TI6Z062sR8jSbA6pWxYI8d+EheZ
	GCXgj5RJ/726QPKj+NaobdvoDxacgDDO7VyHtjjM5/odbg++nM8953cm+FkE/KwK77W7ovcQXi0Ec
	2zmjyweIMXA977KgiimOY0RXafSsHFsYbLuHQOL4P4NrKdnj8czJj7leOnDi77RN4UonAgWeBf8z2
	eyfD/dTFUzLKGJ5AWRG/RbkIipc2Pef/maChGSI7+adWLMtKA/rXAFfQU4/t2y3U24AfQEuuPm3Bw
	59Vl583AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4zn-0004GN-7K; Thu, 16 Apr 2020 13:55:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4zP-0003oy-5Y; Thu, 16 Apr 2020 13:55:36 +0000
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
 [209.85.219.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 154502223D;
 Thu, 16 Apr 2020 13:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587045334;
 bh=lAG6zzq1Sqen9mJhj5pG0jXwK1qfgmptfKCYtqRavfc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OJtBap6gxkn7B64p6YI3gTyfG+37GXhLma2wex7puLnTvEPVIckcw2EWyHIlGxpbU
 axCPq/uLuHBCHTtrTyk9e9F01ZRfk1h5UwSfOVyg7KnEYG4Mh0g9CUMFFZUUhlg6Dn
 cKIhtKmwFJOdPx1PSLWhEzhafdvl/OQ5lWzBbqUw=
Received: by mail-qv1-f47.google.com with SMTP id v38so2014045qvf.6;
 Thu, 16 Apr 2020 06:55:34 -0700 (PDT)
X-Gm-Message-State: AGi0PuYFwvssOWpHc8m6aID+tOwNfBf9HGPkSKSBbHrXzdixY4ZGxfV8
 m+4yPY3FQFdOV4f/p1Dp095G4Y1QL9yuAm0i9Q==
X-Google-Smtp-Source: APiQypJP5/uECHnZPqCD8aDFNOvB3C1OTKaRvvNdGUWUD6LvJ9HnhAL59x+YqONzfmAtrwzd6yqnrOF4qnSJIJfw8nM=
X-Received: by 2002:a05:6214:a8a:: with SMTP id
 ev10mr9484527qvb.20.1587045333124; 
 Thu, 16 Apr 2020 06:55:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200416005549.9683-1-robh@kernel.org>
 <20200416005549.9683-2-robh@kernel.org>
 <d93f90bbcc99967ed5ba458ba99d7e73de12e3b2.camel@perches.com>
In-Reply-To: <d93f90bbcc99967ed5ba458ba99d7e73de12e3b2.camel@perches.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 16 Apr 2020 08:55:21 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLcJrFow_+-o2CxoPRCv4U-ELb2FHSbUgG=Mzt8PFn_CA@mail.gmail.com>
Message-ID: <CAL_JsqLcJrFow_+-o2CxoPRCv4U-ELb2FHSbUgG=Mzt8PFn_CA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: Remove cases of 'allOf' containing a
 '$ref'
To: Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_065535_289106_9B456E80 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Lunn <andrew@lunn.ch>, Ulf Hansson <ulf.hansson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Linux PWM List <linux-pwm@vger.kernel.org>,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux LED Subsystem <linux-leds@vger.kernel.org>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Linux Input <linux-input@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Maxime Ripard <mripard@kernel.org>,
 linux-can@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux HWMON List <linux-hwmon@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 linux-spi <linux-spi@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 netdev <netdev@vger.kernel.org>, Jonathan Cameron <jic23@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 1:52 AM Joe Perches <joe@perches.com> wrote:
>
> On Wed, 2020-04-15 at 19:55 -0500, Rob Herring wrote:
> > json-schema versions draft7 and earlier have a weird behavior in that
> > any keywords combined with a '$ref' are ignored (silently). The correct
> > form was to put a '$ref' under an 'allOf'. This behavior is now changed
> > in the 2019-09 json-schema spec and '$ref' can be mixed with other
> > keywords. The json-schema library doesn't yet support this, but the
> > tooling now does a fixup for this and either way works.
> >
> > This has been a constant source of review comments, so let's change this
> > treewide so everyone copies the simpler syntax.
>
> This is a large change.
>
> Was this done manually or by some script?

Scripted with python ruamel yaml, but then I had to filter out all the
re-formatting (hence the first patch to cut down some of that).

> If it was done manually, how likely is it there are defects
> in the conversion?

Either way, the schemas still have to pass the meta-schema checks.

Rob

