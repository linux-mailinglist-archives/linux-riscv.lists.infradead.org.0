Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D54B2260
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Sep 2019 16:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39hD19CXbr9EsvRByUxV4HSlysWNEWK/wdW9w0MwvzM=; b=TKYpWlQy9WAL40
	gnB6L5etplQjwO8Xot8nUcnzBu1plxq4sGYHWpuIOkq0Eojnb1tjP9reXqeBKoiUvfFJtZzezgX3m
	Jv0pqBZ/tBCk6XnZS0Unl/Chk8w080oy4kqUwCQ8Hq5brpn3vG2sutUOhGcC3GFViII/L9WVKDWy0
	dFdxJmhzU5QZJOSye7akITemhlV9FBWoT/DWjmw7lA6yXpeWVo4lYAkazDCCRP29cE+0wTljbuQmp
	wULFDucJ2CN+viiyn8YKvfgn9sj+6/9umh1xiA7FxbyiKJ7nm6YcPfX85/LpT9v4gLeEUZo94ZRLi
	gKJwzavKOWBS9nuyU7DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mk5-0005A2-TS; Fri, 13 Sep 2019 14:40:10 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mgX-0002ay-6i
 for linux-riscv@lists.infradead.org; Fri, 13 Sep 2019 14:36:31 +0000
Received: by mail-ot1-f66.google.com with SMTP id 41so25882856oti.12
 for <linux-riscv@lists.infradead.org>; Fri, 13 Sep 2019 07:36:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=6mdxbSnWKNEAwVfvLxB2FfniJx8A4oxY0hM22xopaEM=;
 b=a9ZrJtjYTB0Egfzffw9dAtMjN7uqxE6Uyd131/x2Tss20jyaU3mzaS3UWn7vlfs9+o
 oWyNuD3bDYsgiuSCVGMUdqLbxFr6YDGL45acO2Pgeevow+onIpZ7ZdVdtzQPQZagTsOb
 R+dwq9zXRK4EKym7v4Jw/1tO67Q3OfptS4G1pP7Nqye1XpBPRhLwn6PqTJ3HvKP2tUFT
 2TIzbYG1VJJ4NrsbMUI42B1f0I6n9oArWMAV3pEE6h62h7Nt7ASu+a4nfRRim5FX6XsQ
 nGKJojk0HrrsLTf6cgYK7YrLdRDoZuLg4eTthJX1nv2mlh9MR1ygjCtwsomXw0+McV2K
 a4Ig==
X-Gm-Message-State: APjAAAX7REMQz4ZQUKkXjxW1gUVNyuIsAk3jGTXTsk3vt8osh5DCmYok
 tk0KKMM99On9QdS5P5KGbg==
X-Google-Smtp-Source: APXvYqzn+6nvNXJy1guR0eNWhQFcmEFwvOR5OJ3M+fz3f5Pzd7rqZacnsC89vhMVWQUfRbYFCcPn+Q==
X-Received: by 2002:a05:6830:2306:: with SMTP id
 u6mr16025354ote.0.1568385388075; 
 Fri, 13 Sep 2019 07:36:28 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v6sm913853oie.4.2019.09.13.07.36.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 07:36:27 -0700 (PDT)
Message-ID: <5d7ba96b.1c69fb81.edf8e.655e@mx.google.com>
Date: Fri, 13 Sep 2019 15:36:26 +0100
From: Rob Herring <robh@kernel.org>
To: Pragnesh Patel <pragnesh.patel@sifive.com>
Subject: Re: [PATCH] spi: dt-bindings: Convert spi-sifive binding to
 json-schema
References: <1568098996-4180-1-git-send-email-pragnesh.patel@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568098996-4180-1-git-send-email-pragnesh.patel@sifive.com>
X-Mutt-References: <1568098996-4180-1-git-send-email-pragnesh.patel@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073629_667110_B0E33D94 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 palmer@sifive.com, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 12:32:51PM +0530, Pragnesh Patel wrote:
> Convert the spi-sifive binding to DT schema format.
> 
> Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
> ---
>  .../devicetree/bindings/spi/spi-sifive.txt         | 37 ----------
>  .../devicetree/bindings/spi/spi-sifive.yaml        | 86 ++++++++++++++++++++++
>  2 files changed, 86 insertions(+), 37 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-sifive.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/spi-sifive.yaml


> diff --git a/Documentation/devicetree/bindings/spi/spi-sifive.yaml b/Documentation/devicetree/bindings/spi/spi-sifive.yaml
> new file mode 100644
> index 0000000..368f5d5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/spi-sifive.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/spi-sifive.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SiFive SPI controller
> +
> +maintainers:
> +  - Pragnesh Patel <pragnesh.patel@sifive.com>
> +  - Paul Walmsley  <paul.walmsley@sifive.com>
> +  - Palmer Dabbelt <palmer@sifive.com>
> +
> +allOf:
> +  - $ref: "spi-controller.yaml#"
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: sifive,fu540-c000-spi
> +      - const: sifive,spi0
> +
> +    description:
> +      Should be "sifive,<chip>-spi" and "sifive,spi<version>".
> +      Supported compatible strings are -
> +      "sifive,fu540-c000-spi" for the SiFive SPI v0 as integrated
> +      onto the SiFive FU540 chip, and "sifive,spi0" for the SiFive
> +      SPI v0 IP block with no chip integration tweaks.
> +      Please refer to sifive-blocks-ip-versioning.txt for details
> +
> +      SPI RTL that corresponds to the IP block version numbers can be found here -
> +      https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/spi
> +
> +  reg:
> +    maxItems: 1
> +
> +    description:
> +      Physical base address and size of SPI registers map
> +      A second (optional) range can indicate memory mapped flash
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +    description:
> +      Must reference the frequency given to the controller
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0

These 2 are covered by spi-controller.yaml, so you can drop them.

> +
> +  sifive,fifo-depth:
> +    description:
> +      Depth of hardware queues; defaults to 8

default: 8

What are valid values?

> +    $ref: "/schemas/types.yaml#/definitions/uint32"

Will need to be under 'allOf' with the above constraints.

> +
> +  sifive,max-bits-per-word:
> +    description:
> +      Maximum bits per word; defaults to 8
> +    $ref: "/schemas/types.yaml#/definitions/uint32"

Same comments here.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +examples:
> +  - |
> +    spi: spi@10040000 {
> +      compatible = "sifive,fu540-c000-spi", "sifive,spi0";
> +      reg = <0x0 0x10040000 0x0 0x1000 0x0 0x20000000 0x0 0x10000000>;
> +      interrupt-parent = <&plic>;
> +      interrupts = <51>;
> +      clocks = <&tlclk>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      sifive,fifo-depth = <8>;
> +      sifive,max-bits-per-word = <8>;
> +    };
> +
> +...
> -- 
> 2.7.4
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
