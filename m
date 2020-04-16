Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D301AC1AE
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 14:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i00iunJPTOXoKsGN1iQMZeNem/NqLF7VgRTwwvKVaig=; b=sEd0oYXUjh3KFbS97R2dgIiba
	09HKosOsf2QKKDrPbuqL0Y4n5z1wmeAMVAVPXbhUdXgYMSP75J/67T3OjkK7LMCus6mpxu5zZOl9L
	AfjE4f6IR/8qVL+i4EfWDKZfTtNCTnUN+kI1UAy/Lm38H2S2nc69F7d3NvIcz06+5761TWacag/BD
	PuVtRiY907y/pFyQXAUMLpLbHl+AQRw7kMYIlSv4MDWZONrFHILvUIA2g1i3LhX4hnp8VfNemGpmx
	VNjsPGzRoZbqYUqhBgDZKkHGt8tbslH2Y5o6AsA9w9g+K/xrZDTYLFZVT197sTuRaQ6qdzNk0q5kp
	pzrfUgcCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3uU-0004nf-IF; Thu, 16 Apr 2020 12:46:26 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3uH-0001QC-SB; Thu, 16 Apr 2020 12:46:15 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 924AA80487;
 Thu, 16 Apr 2020 14:44:00 +0200 (CEST)
Date: Thu, 16 Apr 2020 14:43:59 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: Clean-up schema indentation formatting
Message-ID: <20200416124359.GB5785@ravnborg.org>
References: <20200416005549.9683-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200416005549.9683-1-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=xJWM5Xtqm7-vkBAKM1YA:9 a=bxeknKLoBf6BnO7k:21 a=StjP_oZuoJ7ca4eH:21
 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_054614_277690_CB7108E0 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-remoteproc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-rtc@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, alsa-devel@alsa-project.org,
 Maxime Ripard <mripard@kernel.org>, linux-can@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amit Kucheria <amit.kucheria@linaro.org>,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Rob.

On Wed, Apr 15, 2020 at 07:55:48PM -0500, Rob Herring wrote:
> Fix various inconsistencies in schema indentation. Most of these are
> list indentation which should be 2 spaces more than the start of the
> enclosing keyword. This doesn't matter functionally, but affects running
> scripts which do transforms on the schema files.

Are there any plans to improve the tooling so we get warnigns for this?
Otherwise I am afraid we will see a lot of patches that gets this wrong.

As a follow-up patch it would be good if example-schema.yaml
could gain some comments about the correct indentions.

Some comments in the following.

> diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
> index 49e0362ddc11..b388c5aa7984 100644
> --- a/Documentation/devicetree/bindings/arm/altera.yaml
> +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> @@ -13,8 +13,8 @@ properties:
>    compatible:
>      items:
>        - enum:
> -        - altr,socfpga-cyclone5
> -        - altr,socfpga-arria5
> -        - altr,socfpga-arria10
> +          - altr,socfpga-cyclone5
> +          - altr,socfpga-arria5
> +          - altr,socfpga-arria10
>        - const: altr,socfpga

So here "- enum" do not need the extra indent.
Is it because this is not a list?

>  ...
> diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
> index 66213bd95e6e..6cc74523ebfd 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
> @@ -25,7 +25,7 @@ select:
> 
>  properties:
>    compatible:
> -   items:
> +    items:
>        - const: amlogic,meson-gx-ao-secure
>        - const: syscon

This is something I had expected the tooling to notice.
I had expected the two "- const" to be indented with 4 spaces, not two.
So there is something I do not understand.


> diff --git a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
> index 07f39d3eee7e..f7f024910e71 100644
> --- a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
> +++ b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
> @@ -17,9 +17,8 @@ properties:
>            - nxp,lpc3230
>            - nxp,lpc3240
>        - items:
> -        - enum:
> -            - ea,ea3250
> -            - phytec,phy3250
> -        - const: nxp,lpc3250
> -
> +          - enum:
> +              - ea,ea3250
> +              - phytec,phy3250
> +          - const: nxp,lpc3250
>  ...

And here "- enum" receive extra indent.

I trust you know what you are doing - but I do not get it.

Some pointers or examples for the correct indention would be great.
I cannot review this patch as long as I do not know the rules.

My request to update example-schema.yaml was one way to teach me.
(Some people will say that is difficult/impossible to teach me,
but thats another story:-) ).

	Sam

