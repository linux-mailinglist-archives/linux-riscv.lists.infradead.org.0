Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969AF1009C0
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 17:53:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfTr7EtIQ0abqcvU0YivMN7xI8UIp7sf5r51/K8hgOY=; b=uSn0IEcHg9gTZj
	BVIReOilJF24IWfmBxXgevclhE6GYOwkybcGr0Kx0qh2tuuap6WlMn1104eHY+Auv3qZueF8mbd/j
	SB1VjZzkFg1G8ipLoQy0FgNnMHcZN2OolPDyb9a4XtENomCVlDAKGfZbhSUzPWhj3voraXiR6TeHn
	0wISj7Pp+xSh+rxk6wVu1kLGt6UxXFTf5o7gm5UjBp9zttiOL0Xtyy5JIjRPA/45GOWymNHLf2joq
	3Z/fW4AaLwXZgE6oHmyQcF00RSxo+EVHUTiRiX87wwgJlGwtAXYnGVJP44sJq6V0nQ5s1LVy1NrIA
	AwAHL46sGUBr30c0P1kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWkHf-0006As-8k; Mon, 18 Nov 2019 16:53:51 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWkHb-0006AD-Qv
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 16:53:49 +0000
Received: by mail-oi1-f194.google.com with SMTP id n14so15903949oie.13
 for <linux-riscv@lists.infradead.org>; Mon, 18 Nov 2019 08:53:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hqTOasQxtcpYkZR/qyY0Ns887QHHgqrNr6obLQsmNsI=;
 b=Bdpn6KwtHTeBQUSVMig9rFvGQxSjIYG3+ZKra1LwADX9eef4E0U1OV3da5GvYnY8xU
 7cZ0R8p8K4J7z6SQxGeKUcLBJReC8c6n6CM2yRjt8N0gqA1m3QKgJuzKDcKDz3A+BqpZ
 dHtM9zHZTmu1GDQox5VNFrpNKRBDMNc13hi+hGdFMfisUwzt4uwc3wturfpDBw4fTyTf
 kDbl4nnBNVptV693yDUQpy1kxJ06w9nlLUTUnnpp01+SD6J2+H0YuxQZHOyjv8O/FGg3
 HoEfAPdi0rBd14h18V9Y7t6ho56Ea+8FpKBqjCVC8dlhZqpKRj11WlR0lBr1ZSOU66wO
 Dkqg==
X-Gm-Message-State: APjAAAVByfr121+qEBgDIqYmUTimE6Ghn6Sc5rgJbRErdr53NwQ4xt77
 KTB3kEgpCVVXHGL+dC/SYw==
X-Google-Smtp-Source: APXvYqxhK6+LinJAXcIhwyYoIbpoJYerjNgZrjGX55HdjJe+rrjIeNxntyurC83Ly9lLYUCNhH+m7w==
X-Received: by 2002:aca:451:: with SMTP id 78mr21727660oie.170.1574096026456; 
 Mon, 18 Nov 2019 08:53:46 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o18sm6447650otj.38.2019.11.18.08.53.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 08:53:45 -0800 (PST)
Date: Mon, 18 Nov 2019 10:53:45 -0600
From: Rob Herring <robh@kernel.org>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH 2/4] gpio: sifive: Add DT documentation for SiFive GPIO
Message-ID: <20191118165345.GA3935@bogus>
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
 <1573560684-48104-3-git-send-email-yash.shah@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573560684-48104-3-git-send-email-yash.shah@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_085347_872794_9A93C35C 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 12:12:06PM +0000, Yash Shah wrote:
> DT documentation for GPIO controller added.
> 
> Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
> [Atish: Compatible string update]
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  .../devicetree/bindings/gpio/gpio-sifive.txt       | 33 ++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-sifive.txt

Please make this a schema. See 
Documentation/devicetree/writing-schema.rst.

> 
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-sifive.txt b/Documentation/devicetree/bindings/gpio/gpio-sifive.txt
> new file mode 100644
> index 0000000..d3416d5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/gpio-sifive.txt
> @@ -0,0 +1,33 @@
> +SiFive GPIO controller bindings
> +
> +Required properties:
> +- compatible: Should be "sifive,<chip>-gpio" and "sifive,gpio<version>".
> +  Supported compatible strings are: "sifive,fu540-c000-gpio" for the SiFive
> +  GPIO v0 as integrated onto the SiFive FU540 chip, and "sifive,gpio0" for the
> +  SiFive GPIO v0 IP block with no chip integration tweaks.
> +  Please refer to sifive-blocks-ip-versioning.txt for details.
> +- reg: Physical base address and length of the controller's registers.
> +- clocks: Should contain a clock identifier for the GPIO's parent clock.
> +- #gpio-cells : Should be 2
> +  - The first cell is the GPIO offset number.
> +  - The second cell indicates the polarity of the GPIO
> +- gpio-controller : Marks the device node as a GPIO controller.
> +- interrupt-controller: Marks the device node as an interrupt controller.
> +- #interrupt-cells : Should be 2.
> +  - The first cell is the GPIO offset number within the GPIO controller.
> +  - The second cell is the edge/level to use for interrupt generation.
> +- interrupts: Specify the interrupts, one per GPIO

How many GPIOs?

> +
> +Example:
> +
> +gpio: gpio@10060000 {
> +	compatible = "sifive,fu540-c000-gpio","sifive,gpio0";

space                                         ^

> +	interrupt-parent = <&plic>;
> +	interrupts = <7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22>;
> +	reg = <0x0 0x10060000 0x0 0x1000>;
> +	clocks = <&tlclk>;
> +	gpio-controller;
> +	#gpio-cells = <2>;
> +	interrupt-controller;
> +	#interrupt-cells = <2>;
> +};
> -- 
> 2.7.4
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
