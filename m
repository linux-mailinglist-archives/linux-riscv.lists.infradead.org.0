Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E42C3691
	for <lists+linux-riscv@lfdr.de>; Tue,  1 Oct 2019 16:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZUCifuYpoqE4bOMQk/a/scJkUuvCBmYnisbm1K3O+k=; b=LlibgRscwp6hmM
	22GI1er8dTUin4OFgGaPyx1UFO6Mw66ky2la9oPc/3yU8M6grnQRchAMI0ZVPTa+QupEAWFOXuG29
	4XC2OIx3gwIvZDB7ww7B+EwUUHOntDxhavJzT2PiK6jXRhyNWS+2dOYPYAVlev8FwA2q83wZIQu/z
	ayhJNo+VlNiXYXEwr5eyV160Mdwm/nhNTHiqO2lBnIwUrSWa9QsmW9elvJInGPOz8UeHnmPWBXKLY
	X9McdajB3PfMl12/NlMOh+Zn+ACU2PEK1THO7D1L5j44twdC0ZdcFtnrkORnBd7ddfVqg9TCkNGob
	WKRxk3ofDjNa/dz5ft6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIhc-0007FV-PL; Tue, 01 Oct 2019 14:00:32 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIhE-0005hV-NM; Tue, 01 Oct 2019 14:00:10 +0000
Received: by mail-ot1-f67.google.com with SMTP id 41so11583743oti.12;
 Tue, 01 Oct 2019 07:00:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JZBM1FPFDAl5uESgEP9tPsFTn7qdNx8IBtQzRJpA2CU=;
 b=aer6VLjy8+Mr+vQ6cQvBMdfgqgu9nPxjI/HVtzbNs17eS4WQIrx7VhKmV+379e7uGZ
 upbO7DFwGhnzp85mQGVTVjjCE02L+Pxngrijdyv1OQg87Yz+uz9OKArRCQfhlX+1p5KB
 9pwyGIJ1QrJZ0SSQipFejRg7tD5/f/qmr5DQotiMqz2URN9FbcI6bCKZBTcDoxcqxAKj
 4yUAeCbwNIcA2mBIygnmdIEslCpAW8Lbsrusy0YtjHMKe9fBre8D6Hmn7EbNqdNqcjPI
 BjCsoFfxEwvBbOnrTbhQtfId6uZIuA9eA1VrYGKtBKWLXoUEG7DnTDtAj4Zq3KfmdnKq
 0xQw==
X-Gm-Message-State: APjAAAULyc1f2eHQAGxbnrFdYy2+xGHaM1baQH+T9SEqFLftKVST9bpN
 6cBZ3DQsnCaTVIzscKUXQQ==
X-Google-Smtp-Source: APXvYqyny3jSQCJcTq07B8NFgeh+CqrPZ/jllExOJcitfcVJnCPPhlC7KQB0zTngJlFTUtwdcVIBqg==
X-Received: by 2002:a9d:4041:: with SMTP id o1mr4924805oti.61.1569938405253;
 Tue, 01 Oct 2019 07:00:05 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m25sm5045457oie.39.2019.10.01.07.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 07:00:04 -0700 (PDT)
Date: Tue, 1 Oct 2019 09:00:03 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 2/8] dt-bindings: sram: Convert SRAM bindings to
 json-schema
Message-ID: <20191001140003.GA31344@bogus>
References: <20190918173141.4314-1-krzk@kernel.org>
 <20190918173141.4314-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918173141.4314-2-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_070008_766327_055E1956 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-leds@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, Matt Mackall <mpm@selenic.com>,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 07:31:35PM +0200, Krzysztof Kozlowski wrote:
> Convert generic mmio-sram bindings to DT schema format using
> json-schema.

I've been slow getting to this because I started on the same thing...

> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable).
> ---
>  .../devicetree/bindings/sram/sram.txt         |  80 ----------
>  .../devicetree/bindings/sram/sram.yaml        | 138 ++++++++++++++++++
>  2 files changed, 138 insertions(+), 80 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/sram.txt
>  create mode 100644 Documentation/devicetree/bindings/sram/sram.yaml

> diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
> new file mode 100644
> index 000000000000..8d9d6ce494b2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sram/sram.yaml
> @@ -0,0 +1,138 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sram/sram.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic on-chip SRAM
> +
> +maintainers:
> +  - FIXME <who@should.it.be>

You can put me.

> +
> +description: |+
> +  Simple IO memory regions to be managed by the genalloc API.
> +
> +  Each child of the sram node specifies a region of reserved memory. Each
> +  child node should use a 'reg' property to specify a specific range of
> +  reserved memory.
> +
> +  Following the generic-names recommended practice, node names should
> +  reflect the purpose of the node. Unit address (@<address>) should be
> +  appended to the name.
> +
> +properties:
> +  $nodename:
> +    pattern: "^sram(@.*)?"
> +
> +  compatible:
> +    items:
> +      - enum:
> +          - mmio-sram
> +          - atmel,sama5d2-securam

I was trying to go down the path of putting all the compatibles for 
various SRAM bindings here, but I ran into some issues. I need to 
revisit as I've forgotten the exact issue.

This would need to be a 'contains' if this is going to work for others.

> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    description: Should use the same values as the root node.
> +
> +  "#size-cells":
> +    description: Should use the same values as the root node.

I defined both of these to be 1 as 4GB of SRAM should be enough for a 
while. We can debate 1 or 2 cells vs. 1, but there's no reason it has to 
be the same as the root (unless we're failing to do address 
translation).

> +
> +  ranges:
> +    description:
> +      Should translate from local addresses within the sram to bus addresses.
> +
> +  no-memory-wc:
> +    description:
> +      The flag indicating, that SRAM memory region has not to be remapped
> +      as write combining. WC is used by default.
> +    type: boolean
> +
> +  # TODO: additionalProperties: false
> +
> +patternProperties:
> +  "^([a-z]*-)?sram@[a-f0-9]$":
> +    type: object
> +    description:
> +      Each child of the sram node specifies a region of reserved memory.
> +    properties:
> +      reg:
> +        description:
> +          IO mem address range, relative to the SRAM range.

maxItems: 1

> +
> +      compatible:
> +        $ref: /schemas/types.yaml#/definitions/string
> +        description:
> +          Should contain a vendor specific string in the form
> +          <vendor>,[<device>-]<usage>
> +
> +      pool:
> +        description:
> +          Indicates that the particular reserved SRAM area is addressable
> +          and in use by another device or devices.
> +        type: boolean
> +
> +      export:
> +        description:
> +          Indicates that the reserved SRAM area may be accessed outside
> +          of the kernel, e.g. by bootloader or userspace.
> +        type: boolean
> +
> +      protect-exec:
> +        description: |
> +          Same as 'pool' above but with the additional constraint that code
> +          will be run from the region and that the memory is maintained as
> +          read-only, executable during code execution. NOTE: This region must
> +          be page aligned on start and end in order to properly allow
> +          manipulation of the page attributes.
> +        type: boolean
> +
> +      label:
> +        $ref: /schemas/types.yaml#/definitions/string

Already has a type definition.

> +        description:
> +          The name for the reserved partition, if omitted, the label is taken
> +          from the node name excluding the unit address.
> +
> +      clocks:
> +        description:
> +          A list of phandle and clock specifier pair that controls the
> +          single SRAM clock.
> +
> +      # TODO: additionalProperties: false
> +
> +    required:
> +      - reg
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
> +
> +examples:
> +  - |
> +    sram: sram@5c000000 {
> +        compatible = "mmio-sram";
> +        reg = <0x5c000000 0x40000>; /* 256 KiB SRAM at address 0x5c000000 */
> +
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges = <0 0x5c000000 0x40000>;
> +
> +        smp-sram@100 {
> +            compatible = "socvendor,smp-sram";
> +            reg = <0x100 0x50>;
> +        };
> +
> +        device-sram@1000 {
> +            reg = <0x1000 0x1000>;
> +            pool;
> +        };
> +
> +        exported@20000 {
> +            reg = <0x20000 0x20000>;
> +            export;
> +        };
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
