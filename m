Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7835C1145E8
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 18:27:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Beu9Ho0H5ERuGsbF7ZjrVG0ZON0A+E7tAAYEYAdqCyk=; b=HAydnpxMYfr/PErege4si1J49
	fh3no4zuuF1bT/cHcC7mLyivXiPXy4eQbdA/LEbDqToU5iXVmRwwwtaAGJSGSrHuIvtvECVdX5S1n
	Qy6xN55srib5wr0iYlG182nWoy+xn+3vFwrx7rlkKlnPL+gmOEaTU/xJbGDJ8Y8UVedq3H1rLk6r3
	Wi9CB4ZZiHucJ+6Bai4JA61DN/sXpIQqric7CcoK7i+YhzAvN2JVph7V4FuQEEcmzzFpdvTy5QSgc
	t/uSoq6xdrUjnb0VBvnCPGwkZtKpbHhcK0undPk1pvefUKDe2KrWUwHV2+OLi8h08PzdXeutneNs/
	bUQR9cb5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icuuj-0005S5-DW; Thu, 05 Dec 2019 17:27:41 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icuuf-0005RJ-Gs
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 17:27:39 +0000
Received: by mail-ot1-f68.google.com with SMTP id a15so3328440otf.1
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 09:27:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Beu9Ho0H5ERuGsbF7ZjrVG0ZON0A+E7tAAYEYAdqCyk=;
 b=AwvM98JhalpYyvaONeMh+i8+G1xqZroBMIyKdA6e2Zozca3zLyf2shhosImMGfRry9
 +vZjwkqYCi7gbyNoR/Dd6tEuIeqAY5ziziCbdK6h3WwVp5soRAJJ4oMTt87UozfvMAnW
 YDeHeERl5qnVKlpYwplrEK07KGWlRiyxV3Cs4xWqnxgD+aUq0Lcl/eehVa6DQuVZYhWx
 67iFVG6RJkuOHWlAdVHQZX2W+/ovpXOz6FE1wKe+lhzjvWth0Yvj+E9ZEsHP4MsuVdM3
 KFMQRmH4ngmNogu8MEY9hMk4sCphi1wTHLHy/slOaF9yYgf2HPDr8MwZ61PZaHSaXtK7
 R9cg==
X-Gm-Message-State: APjAAAWVs3ke8BHb/ky2qQKmYU3RzngXJA9xVM5FItVvIdZGQgKqEiG7
 44xyW+8Cc2GU7mLHL6LCdw==
X-Google-Smtp-Source: APXvYqxb1R7cDem9EDJctkKteK+d2GKVLOTXRE+1a0UnGmCMVMgu/gG/KmmksWOK1FE9rpvhpmjXHA==
X-Received: by 2002:a05:6830:1e61:: with SMTP id
 m1mr7623640otr.68.1575566856033; 
 Thu, 05 Dec 2019 09:27:36 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n25sm3724656oic.6.2019.12.05.09.27.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 09:27:35 -0800 (PST)
Date: Thu, 5 Dec 2019 11:27:34 -0600
From: Rob Herring <robh@kernel.org>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v3 4/6] gpio: sifive: Add DT documentation for SiFive GPIO
Message-ID: <20191205172734.GA18142@bogus>
References: <1574661437-28486-1-git-send-email-yash.shah@sifive.com>
 <1574661437-28486-5-git-send-email-yash.shah@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1574661437-28486-5-git-send-email-yash.shah@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_092737_558537_2886BA30 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>, "maz@kernel.org" <maz@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 05:58:03AM +0000, Yash Shah wrote:
> DT json-schema for GPIO controller added.
> 
> Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
> [Atish: Compatible string update]
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  .../devicetree/bindings/gpio/gpio-sifive.yaml      | 69 ++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-sifive.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-sifive.yaml b/Documentation/devicetree/bindings/gpio/gpio-sifive.yaml
> new file mode 100644
> index 0000000..49214bb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/gpio-sifive.yaml

sifive,gpio.yaml would be the more standard naming.

> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings: (GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/gpio-sifive.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SiFive GPIO controller
> +
> +maintainers:
> +  - Yash Shah <yash.shah@sifive.com>
> +  - Paul Walmsley <paul.walmsley@sifive.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: sifive,fu540-c000-gpio
> +      - const: sifive,gpio0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description:
> +      interrupt mapping one per GPIO. Maximum 16 GPIOs.

What's the minimum? If not 16, you need 'minItems'.

> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +  "#interrupt-cells":
> +    const: 2
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names: true

Need to define the strings. Or drop because you don't need it when 
there's only 1.

> +
> +  "#gpio-cells":
> +    const: 2
> +
> +  gpio-controller: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-controller
> +  - "#interrupt-cells"
> +  - clocks
> +  - "#gpio-cells"
> +  - gpio-controller
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +      #include <dt-bindings/clock/sifive-fu540-prci.h>
> +      gpio@10060000 {
> +        compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
> +        interrupt-parent = <&plic>;
> +        interrupts = <7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22>;
> +        reg = <0x0 0x10060000 0x0 0x1000>;
> +        clocks = <&tlclk PRCI_CLK_TLCLK>;
> +        gpio-controller;
> +        #gpio-cells = <2>;
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +      };
> +
> +...
> -- 
> 2.7.4
> 

