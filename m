Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553CD1AC651
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 16:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lr+ToSK/mNppvSY7Aze/38BkhDtXW9HYWseMl+TcpEc=; b=on9KL3GeP8yJuhcIcW7hDF4IZ
	SXSZXWNYru3I1ugVCwbAuIf+2zc6HRIUFBPesUoa8KeG3CDzVdc0x/TZ4A0n9e4rNnJoy9FiTWGrV
	Gy19P8tnCF9aQwNPdkKjNfOqd2amaUaxWNH0lqYInBYxmQIhzS0qmTa3U68rQ1HTWQfWSgHV9CORL
	xOpuMOvx3ix1f3kZVRkoCAdNTk8rOvV+iyp/GXtXCz8jP7zOTu0UFkAxxSvmdn6+d5rz0jR6YM7Sm
	5Y7Xm+HRLYuo9PdiDPYnDdy5w2T+anMh2ilqVdm/VAiUsHXIRVvOq05TVhnSCn+QW2a+uML6rKOb8
	3mlZoXbaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5en-0001Cu-LT; Thu, 16 Apr 2020 14:38:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5eW-0000yq-4Z; Thu, 16 Apr 2020 14:38:05 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8FBA22242;
 Thu, 16 Apr 2020 14:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587047883;
 bh=MMYlJuOL0lJfSjjO9OZrF5NfvXGQobqN9Rg04mTNFAM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UpLjGQfNJ7AhEjZREeHuVboKWCCQCByhNFkhI3WqLPo8Mlcf5oIw7jZd/2OdH9yBT
 aIZAbAKEnJu3xdtXVBzL/qPq3GoSs/S1q0m4B9Y5XFUKpQPqq24X4l78b+Pj+tLnJg
 NtrdiAaH0zhwyAYQB4MpxL0IotfCh/UB+NTCxFbM=
Received: by mail-qt1-f176.google.com with SMTP id b10so16495324qtt.9;
 Thu, 16 Apr 2020 07:38:03 -0700 (PDT)
X-Gm-Message-State: AGi0PuZRQRpdtjVxSG/WcnWoZdy9B0cECg2uyMQoTWvOfTS2/Inp0gjU
 T1Oqak5zz79+3Ymr7xU5yrb52en+pdvZHIIshQ==
X-Google-Smtp-Source: APiQypKfVD+tFYP8p52n1yv1KvQa1nwC0OwG10Vnv04PQ+j0umFoj6sJCylT4GddENC8rGvDyZyW05FDoL7hFDARgK8=
X-Received: by 2002:ac8:39e5:: with SMTP id v92mr26657152qte.224.1587047882719; 
 Thu, 16 Apr 2020 07:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200416005549.9683-1-robh@kernel.org>
 <20200416124359.GB5785@ravnborg.org>
In-Reply-To: <20200416124359.GB5785@ravnborg.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 16 Apr 2020 09:37:50 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKYTRh-cgMQSD=DHS2aud9TnLjKepqd9z0F9Wj2oe=jDg@mail.gmail.com>
Message-ID: <CAL_JsqKYTRh-cgMQSD=DHS2aud9TnLjKepqd9z0F9Wj2oe=jDg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: Clean-up schema indentation formatting
To: Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_073804_224826_895FBEB1 
X-CRM114-Status: GOOD (  29.49  )
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
 Fabio Estevam <festevam@gmail.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux LED Subsystem <linux-leds@vger.kernel.org>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Lee Jones <lee.jones@linaro.org>,
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
 Mauro Carvalho Chehab <mchehab@kernel.org>,
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

On Thu, Apr 16, 2020 at 7:44 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Rob.
>
> On Wed, Apr 15, 2020 at 07:55:48PM -0500, Rob Herring wrote:
> > Fix various inconsistencies in schema indentation. Most of these are
> > list indentation which should be 2 spaces more than the start of the
> > enclosing keyword. This doesn't matter functionally, but affects running
> > scripts which do transforms on the schema files.
>
> Are there any plans to improve the tooling so we get warnigns for this?

I've been experimenting with yamllint some. I haven't figured out how
to best integrate it in. Probably need to start with something minimal
and warning free for the tree and then add to it.

There's also yaml-format in the dtschema repo which just reads in and
writes out a yaml file using ruamel round trip yaml parser. That's
what I used here.

> Otherwise I am afraid we will see a lot of patches that gets this wrong.
>
> As a follow-up patch it would be good if example-schema.yaml
> could gain some comments about the correct indentions.

Sure, I can do that.

>
> Some comments in the following.
>
> > diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
> > index 49e0362ddc11..b388c5aa7984 100644
> > --- a/Documentation/devicetree/bindings/arm/altera.yaml
> > +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> > @@ -13,8 +13,8 @@ properties:
> >    compatible:
> >      items:
> >        - enum:
> > -        - altr,socfpga-cyclone5
> > -        - altr,socfpga-arria5
> > -        - altr,socfpga-arria10
> > +          - altr,socfpga-cyclone5
> > +          - altr,socfpga-arria5
> > +          - altr,socfpga-arria10
> >        - const: altr,socfpga
>
> So here "- enum" do not need the extra indent.
> Is it because this is not a list?

Right. Indentation is 2 more spaces than the parent keyword ignoring
any hyphen in the parent.

> > diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
> > index 66213bd95e6e..6cc74523ebfd 100644
> > --- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
> > +++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
> > @@ -25,7 +25,7 @@ select:
> >
> >  properties:
> >    compatible:
> > -   items:
> > +    items:
> >        - const: amlogic,meson-gx-ao-secure
> >        - const: syscon
>
> This is something I had expected the tooling to notice.
> I had expected the two "- const" to be indented with 4 spaces, not two.
> So there is something I do not understand.

As above, correct indenting is 2 spaces from the parent not counting
any '-' in the parent, but the '-' counts for indenting the children.

Arguably, this style is inconsistent that sometimes the '-' counts and
sometimes it doesn't. However, I think this style is better because it
distinguishes lists vs. dicts more clearly. It's easy to miss the '-'
when the indentation is the same:

- foo:
  - bar
  - baz

- foo:
    bar
    baz

Or worse:

- foo:
  - bar
    baz

Both styles are valid. It's just a tabs vs. spaces debate, and I just
picked one.


> > diff --git a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
> > index 07f39d3eee7e..f7f024910e71 100644
> > --- a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
> > +++ b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
> > @@ -17,9 +17,8 @@ properties:
> >            - nxp,lpc3230
> >            - nxp,lpc3240
> >        - items:
> > -        - enum:
> > -            - ea,ea3250
> > -            - phytec,phy3250
> > -        - const: nxp,lpc3250
> > -
> > +          - enum:
> > +              - ea,ea3250
> > +              - phytec,phy3250
> > +          - const: nxp,lpc3250
> >  ...
>
> And here "- enum" receive extra indent.
>
> I trust you know what you are doing - but I do not get it.
>
> Some pointers or examples for the correct indention would be great.

With this patch, the tree is all correct examples. :)

> I cannot review this patch as long as I do not know the rules.
>
> My request to update example-schema.yaml was one way to teach me.
> (Some people will say that is difficult/impossible to teach me,
> but thats another story:-) ).
>
>         Sam

