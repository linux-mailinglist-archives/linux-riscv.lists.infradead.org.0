Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28AAB9476
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Sep 2019 17:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9N6J4YDXs4E446R+k973EF7yL+my1qMdILKJmJTlQw=; b=rWt1dmcRL5950W
	n4wtyh4LiDWoLwKuTg4Dgli7b+pJhRZFiN/zSJJp3YDmSvGkq5n/8QxUr5+HHorJmMoQwrcZcAARG
	LwF9ryZ/owtsSFLbj2poORC3ErSplKaatpLOEwpk+Na9+Kr1r/5Fc3gW3+FTkhQMLzsNS7BnjHT37
	ifx6iKbkaiW4Q3teEcRsrAnO1VdKfHapvKoodHUcnnTsgi95WCYafdzVc3AlhyuSywMs1gwvQvOuM
	c1KHTaTRhrugYpAeVoa7EYSYHdvh3AdefEKHujLl+A3kM0yp8MQBwOOH7bffaMewyxZpOfBJ0CMxj
	qcyjRgn6aS11pww5oqOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBLBk-0003YN-8u; Fri, 20 Sep 2019 15:51:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBLBX-0003MJ-9u; Fri, 20 Sep 2019 15:51:05 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5A352184C;
 Fri, 20 Sep 2019 15:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568994662;
 bh=Gk8b96/zmrgvgnCdppmwZEWWClB9i1dZv17q7MLhgfc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OZM0VO15KguCMz8L73yAu9wwfmIvWTtRKsRWtXbjJFKVXMMLe2p8bfBQAQkCKcL2U
 ZC9RtUZrL5eJL0Hk2B8lfXus6Mb7THpBP0h7NAF9u+kkBEJeVMK5UCXfPgFFwcMQVI
 OoR623SUjj3mRa2R4ehGSSj+mTawpcia4HoOgbSk=
Received: by mail-qt1-f179.google.com with SMTP id r5so9245213qtd.0;
 Fri, 20 Sep 2019 08:51:02 -0700 (PDT)
X-Gm-Message-State: APjAAAUvkwO1I8vCAVFpEX9p0ppmt7LhI5/1mA6ceg9NijZiguUCtgL9
 L0A2p1JaDQ1Co0dM5TjPpS0ghxCUQCtJCYsv/A==
X-Google-Smtp-Source: APXvYqwMIrqIhbU+PH2zwmKFyZZ7p9gmNZDVfDvJtsMY/FngbKyrGtmiBbkzWBc5h/SVux0vE5Rh9MaGgWH9K6YJIV0=
X-Received: by 2002:ac8:444f:: with SMTP id m15mr4046894qtn.110.1568994661811; 
 Fri, 20 Sep 2019 08:51:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190918173141.4314-1-krzk@kernel.org>
 <20190918173141.4314-8-krzk@kernel.org>
In-Reply-To: <20190918173141.4314-8-krzk@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 20 Sep 2019 10:50:50 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+0ikCageBv3TSwx0tp=ZDkrFwpFVt2gJHWsFe2f-K2pA@mail.gmail.com>
Message-ID: <CAL_Jsq+0ikCageBv3TSwx0tp=ZDkrFwpFVt2gJHWsFe2f-K2pA@mail.gmail.com>
Subject: Re: [PATCH v2 8/8] dt-bindings: pwm: Convert Samsung PWM bindings to
 json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_085103_387705_B9B73A56 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-riscv@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux LED Subsystem <linux-leds@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-clk <linux-clk@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Guenter Roeck <linux@roeck-us.net>,
 devicetree@vger.kernel.org, LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Matt Mackall <mpm@selenic.com>,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 12:32 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Convert Samsung PWM (S3C, S5P and Exynos SoCs) bindings to DT schema
> format using json-schema.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Fix samsung,pwm-outputs after review,
> 3. Remove double-quotes from clock names.
> ---
>  .../devicetree/bindings/pwm/pwm-samsung.txt   |  51 ---------
>  .../devicetree/bindings/pwm/pwm-samsung.yaml  | 107 ++++++++++++++++++
>  2 files changed, 107 insertions(+), 51 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-samsung.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
>
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.txt b/Documentation/devicetree/bindings/pwm/pwm-samsung.txt
> deleted file mode 100644
> index 5538de9c2007..000000000000
> --- a/Documentation/devicetree/bindings/pwm/pwm-samsung.txt
> +++ /dev/null
> @@ -1,51 +0,0 @@
> -* Samsung PWM timers
> -
> -Samsung SoCs contain PWM timer blocks which can be used for system clock source
> -and clock event timers, as well as to drive SoC outputs with PWM signal. Each
> -PWM timer block provides 5 PWM channels (not all of them can drive physical
> -outputs - see SoC and board manual).
> -
> -Be aware that the clocksource driver supports only uniprocessor systems.
> -
> -Required properties:
> -- compatible : should be one of following:
> -    samsung,s3c2410-pwm - for 16-bit timers present on S3C24xx SoCs
> -    samsung,s3c6400-pwm - for 32-bit timers present on S3C64xx SoCs
> -    samsung,s5p6440-pwm - for 32-bit timers present on S5P64x0 SoCs
> -    samsung,s5pc100-pwm - for 32-bit timers present on S5PC100, S5PV210,
> -                         Exynos4210 rev0 SoCs
> -    samsung,exynos4210-pwm - for 32-bit timers present on Exynos4210,
> -                          Exynos4x12, Exynos5250 and Exynos5420 SoCs
> -- reg: base address and size of register area
> -- interrupts: list of timer interrupts (one interrupt per timer, starting at
> -  timer 0)
> -- clock-names: should contain all following required clock names:
> -    - "timers" - PWM base clock used to generate PWM signals,
> -  and any subset of following optional clock names:
> -    - "pwm-tclk0" - first external PWM clock source,
> -    - "pwm-tclk1" - second external PWM clock source.
> -  Note that not all IP variants allow using all external clock sources.
> -  Refer to SoC documentation to learn which clock source configurations
> -  are available.
> -- clocks: should contain clock specifiers of all clocks, which input names
> -  have been specified in clock-names property, in same order.
> -- #pwm-cells: should be 3. See pwm.txt in this directory for a description of
> -  the cells format. The only third cell flag supported by this binding is
> -  PWM_POLARITY_INVERTED.
> -
> -Optional properties:
> -- samsung,pwm-outputs: list of PWM channels used as PWM outputs on particular
> -    platform - an array of up to 5 elements being indices of PWM channels
> -    (from 0 to 4), the order does not matter.
> -
> -Example:
> -       pwm@7f006000 {
> -               compatible = "samsung,s3c6400-pwm";
> -               reg = <0x7f006000 0x1000>;
> -               interrupt-parent = <&vic0>;
> -               interrupts = <23>, <24>, <25>, <27>, <28>;
> -               clocks = <&clock 67>;
> -               clock-names = "timers";
> -               samsung,pwm-outputs = <0>, <1>;
> -               #pwm-cells = <3>;
> -       }
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
> new file mode 100644
> index 000000000000..06d11faabff6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
> @@ -0,0 +1,107 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/pwm-samsung.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung SoC PWM timers
> +
> +maintainers:
> +  - Thierry Reding <thierry.reding@gmail.com>
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +description: |+
> +  Samsung SoCs contain PWM timer blocks which can be used for system clock source
> +  and clock event timers, as well as to drive SoC outputs with PWM signal. Each
> +  PWM timer block provides 5 PWM channels (not all of them can drive physical
> +  outputs - see SoC and board manual).
> +
> +  Be aware that the clocksource driver supports only uniprocessor systems.
> +
> +allOf:
> +  - $ref: pwm.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - samsung,s3c2410-pwm             # 16-bit, S3C24xx
> +      - samsung,s3c6400-pwm             # 32-bit, S3C64xx
> +      - samsung,s5p6440-pwm             # 32-bit, S5P64x0
> +      - samsung,s5pc100-pwm             # 32-bit, S5PC100, S5PV210, Exynos4210 rev0 SoCs
> +      - samsung,exynos4210-pwm          # 32-bit, Exynos
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3
> +
> +  clock-names:
> +    description: |
> +      Should contain all following required clock names:
> +      - "timers" - PWM base clock used to generate PWM signals,
> +      and any subset of following optional clock names:
> +      - "pwm-tclk0" - first external PWM clock source,
> +      - "pwm-tclk1" - second external PWM clock source.
> +      Note that not all IP variants allow using all external clock sources.
> +      Refer to SoC documentation to learn which clock source configurations
> +      are available.
> +    oneOf:
> +      - items:
> +        - const: timers
> +      - items:
> +        - const: timers
> +        - const: pwm-tclk0
> +      - items:
> +        - const: timers
> +        - const: pwm-tclk1
> +      - items:
> +        - const: timers
> +        - const: pwm-tclk0
> +        - const: pwm-tclk1
> +
> +  interrupts:
> +    description:
> +      One interrupt per timer, starting at timer 0.
> +    minItems: 1
> +    maxItems: 5
> +
> +  "#pwm-cells":
> +    description:
> +      The only third cell flag supported by this binding
> +      is PWM_POLARITY_INVERTED.
> +    const: 3
> +
> +  samsung,pwm-outputs:
> +    description:
> +      A list of PWM channels used as PWM outputs on particular platform.
> +      It is an array of up to 5 elements being indices of PWM channels
> +      (from 0 to 4), the order does not matter.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +      - uniqueItems: true
> +      - items:
> +          minimum: 0
> +          maximum: 4
> +
> +required:
> +  - clocks
> +  - clock-names
> +  - compatible
> +  - interrupts
> +  - "#pwm-cells"
> +  - reg

additionalProperties: false

should work here. And in the rng binding too.

Rob

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
