Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4667A5842
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Sep 2019 15:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ygn4un69Ey6UNNaiYq/AdjV6j9ZWB5glVVnsj40qQOE=; b=j2rc5xg2YWRcN7
	pppNJKcQsI/lAPJ7jnIxxYQo8p+x+KaO/XuRfXQhUX/uP/O46utag46MdEVgzqEn2sayvzBrS+EWb
	OxrGe0k1dLe8d47zwo+NlpH3mt+b7lTIXKlYsUz12zQ3goJapGPSUft3FjJtrqCeeSHWRDGd19pBr
	E+w8a6g6m3wWpn5i8ioCPIMyTmyNzsA4AywAIZ11H/CKrWY4KTEmaPFaHPbyMm3kMhb6fOiUsM0XB
	+JMnjK/YcxWvj0YpILWoKQF1BYXcZRfXbFJF/LSuUzqYLBLUuTXjsRCtb9c8XNI5HfxWdbDT2j5nb
	ibemVaugQPurdD8XdQww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mbK-0006Hd-0Z; Mon, 02 Sep 2019 13:42:34 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mY6-0001d7-Ro
 for linux-riscv@lists.infradead.org; Mon, 02 Sep 2019 13:39:16 +0000
Received: by mail-wm1-f66.google.com with SMTP id y135so9913222wmc.1
 for <linux-riscv@lists.infradead.org>; Mon, 02 Sep 2019 06:39:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ngzz2+0c/jv3SRVMmnFYIH53w6JSEj4AGmcVRCCY2d0=;
 b=pL8Z4WNvR1zWAhPJ4O7iCRgzh6xf0vddW9Y0MCBhHRn6dpeE/OiX8YXupFT+qiFWGs
 8LIlpyNQhU96VOytrKYl79E6dDn4p8TbPMWoK+FScaTNwnUrMoH47b8UZIZ6bABUBukj
 DcMQNm5bIpBr+6mAurC6NbyJG/3yZeYPuHlBsSmpBqec1R65hwm3VaNcDvZjzfnKFToI
 Lj1IhqemFU0cmLuaEn7YfTc8DGQJlHgse9R9uY/8h8HX5HIEytgX083NUroZX9g1rQ2K
 pRgzxkAEnz8c3JxPmxdV6p/OoO9FiGuosnAa9KtNfcIECrfOcXyeVF+qUGVV0mMsWAEa
 keGQ==
X-Gm-Message-State: APjAAAVvI/D/S+02fcwRpslPIYHue5i5Kt2/R6JcQGoNF6dUPeI11IxK
 tqUJTp+R6zQ1f1tgGPTWZYq9Roq0AQ==
X-Google-Smtp-Source: APXvYqw1xeIt9IrWtmGbP4r+M7qtMVUSdcA2xRPxZ8mz4CDhRECunDIbi/BMLIMgry30fnWUNBjcwg==
X-Received: by 2002:a7b:cb51:: with SMTP id v17mr34925999wmj.118.1567431553507; 
 Mon, 02 Sep 2019 06:39:13 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id z21sm2865531wmf.30.2019.09.02.06.39.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:13 -0700 (PDT)
Message-ID: <5d6d1b81.1c69fb81.7eabb.cabd@mx.google.com>
Date: Mon, 02 Sep 2019 14:39:12 +0100
From: Rob Herring <robh@kernel.org>
To: Pragnesh Patel <pragnesh.patel@sifive.com>
Subject: Re: [PATCH] dt-bindings: serial: Convert riscv,sifive-serial to
 json-schema
References: <1567321765-3738-1-git-send-email-pragnesh.patel@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567321765-3738-1-git-send-email-pragnesh.patel@sifive.com>
X-Mutt-References: <1567321765-3738-1-git-send-email-pragnesh.patel@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063915_272130_B4F21A0E 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, palmer@sifive.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Sep 01, 2019 at 12:39:21PM +0530, Pragnesh Patel wrote:
> Convert the riscv,sifive-serial binding to DT schema using json-schema.
> 
> Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
> ---
>  .../devicetree/bindings/serial/sifive-serial.txt   | 33 ------------
>  .../devicetree/bindings/serial/sifive-serial.yaml  | 62 ++++++++++++++++++++++
>  2 files changed, 62 insertions(+), 33 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/serial/sifive-serial.txt
>  create mode 100644 Documentation/devicetree/bindings/serial/sifive-serial.yaml
> 
> diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.txt b/Documentation/devicetree/bindings/serial/sifive-serial.txt
> deleted file mode 100644
> index c86b1e5..0000000
> --- a/Documentation/devicetree/bindings/serial/sifive-serial.txt
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -SiFive asynchronous serial interface (UART)
> -
> -Required properties:
> -
> -- compatible: should be something similar to
> -	      "sifive,<chip>-uart" for the UART as integrated
> -	      on a particular chip, and "sifive,uart<version>" for the
> -	      general UART IP block programming model.	Supported
> -	      compatible strings as of the date of this writing are:
> -	      "sifive,fu540-c000-uart" for the SiFive UART v0 as
> -	      integrated onto the SiFive FU540 chip, or "sifive,uart0"
> -	      for the SiFive UART v0 IP block with no chip integration
> -	      tweaks (if any)
> -- reg: address and length of the register space
> -- interrupts: Should contain the UART interrupt identifier
> -- clocks: Should contain a clock identifier for the UART's parent clock
> -
> -
> -UART HDL that corresponds to the IP block version numbers can be found
> -here:
> -
> -https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/uart
> -
> -
> -Example:
> -
> -uart0: serial@10010000 {
> -	compatible = "sifive,fu540-c000-uart", "sifive,uart0";
> -	interrupt-parent = <&plic0>;
> -	interrupts = <80>;
> -	reg = <0x0 0x10010000 0x0 0x1000>;
> -	clocks = <&prci PRCI_CLK_TLCLK>;
> -};
> diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.yaml b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
> new file mode 100644
> index 0000000..56fa935
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/serial/sifive-serial.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SiFive asynchronous serial interface (UART)
> +
> +maintainers:
> +  - Pragnesh Patel <pragnesh.patel@sifive.com>
> +  - Paul Walmsley  <paul.walmsley@sifive.com>
> +  - Palmer Dabbelt <palmer@sifive.com>
> +
> +allOf:
> +  - $ref: /schemas/serial.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - sifive,fu540-c000-uart
> +      - sifive,uart0

This is wrong and should have warned if you tested this on 5.3.

items:
  - const: sifive,fu540-c000-uart
  - const: sifive,uart0


> +
> +    description:
> +      Should be something similar to "sifive,<chip>-uart"
> +      for the UART as integrated on a particular chip,
> +      and "sifive,uart<version>" for the general UART IP
> +      block programming model.
> +
> +      UART HDL that corresponds to the IP block version
> +      numbers can be found here -
> +
> +      https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/uart
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +      #include <dt-bindings/clock/sifive-fu540-prci.h>
> +      serial@10010000 {
> +        compatible = "sifive,fu540-c000-uart", "sifive,uart0";
> +        interrupt-parent = <&plic0>;
> +        interrupts = <80>;
> +        reg = <0x0 0x10010000 0x0 0x1000>;
> +        clocks = <&prci PRCI_CLK_TLCLK>;
> +      };
> +
> +...
> -- 
> 2.7.4
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
