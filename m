Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A16C38E3
	for <lists+linux-riscv@lfdr.de>; Tue,  1 Oct 2019 17:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/OWLx5VhOJod6mmCjHJMRI9viLUmccj7TpRdw951qI=; b=aG4KVKdZXUx7lp
	eYPWMSGe30wvDVQkHQRqBVj9JzKGr93MR88Zh+BzN7aEQBglBiB6FCr5sfkCRZ5PLpIb+uBZlsSNt
	49QLSr6B9dRZA5598Ze1y+HCIrIalFTxHMmKhpvNxhoxSqnBDmZH4C2VmTunFldjmybT1jZYYJyty
	X3De2PZiFYsOt48vo+9Co1KplgKLsuG3PM6PzmqAp8Ph/QAFqZ237sjU0T3P/a94jOg7tRMtS6Myh
	q2QfHHRJvvnUxIWo+FCFBpd7Okgz7GaoeMld/0+Tyt2eNxXxrZUcHellkl+jZA1tTB5MDCE30ZdRU
	I2ZY7fAhSOLVYS+coLnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFK1C-0006PA-BQ; Tue, 01 Oct 2019 15:24:50 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFK0w-00069J-BY; Tue, 01 Oct 2019 15:24:36 +0000
Received: by mail-wm1-f66.google.com with SMTP id v17so3707217wml.4;
 Tue, 01 Oct 2019 08:24:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qIz20MyIeJ4YRS3q69VVUyLU1/qqd5R6Zf74yV/b9ww=;
 b=Jo2Strk3UOyLXIsdvUM36G6pAbxSbf6qgbRgkdC/iWHvWI/Q/8nuVrSVVndYYEgEuz
 UYKO1HvkdAit5nxpX+Ytn3BEvXADSYvvbLIJ58td6BOWq4Acck1EPWp6eAE7JOjrTpy8
 q2JtuPEREVOtHsP+yky3lN64xS0v4w7+ITA9z2xn1uLY+HkZgckzaBwj9aN66/41tYxR
 xQ+wCxCRSU0f6zpoPHoQZYU9YwWRFrcSExqyH565OjPB2eH2TY21AwxLobqIsH5m/+iK
 6helwP5KFxPGdrD+R7p8PoOEt/iLUmzsL+uUIlLKRP8qKXLwZXyR+5d5L7tB98CpjAeM
 evWw==
X-Gm-Message-State: APjAAAWGD3Q6Gpp9z9o2Kxc2GQ+FQzUidJW0oEslexKGk/Tw9uzsMys6
 LuuVxqDEkUfkjkBhEq/4vmc=
X-Google-Smtp-Source: APXvYqzgA01GZd24cae9Ug02bMZVgbmEoHDdIAy+uHttgtTk16j30giNWmxHikB8fPnYof+FbNzouQ==
X-Received: by 2002:a1c:60c1:: with SMTP id u184mr4104201wmb.32.1569943469278; 
 Tue, 01 Oct 2019 08:24:29 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id i1sm4699293wmb.19.2019.10.01.08.24.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 08:24:28 -0700 (PDT)
Date: Tue, 1 Oct 2019 17:24:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/8] dt-bindings: sram: Convert SRAM bindings to
 json-schema
Message-ID: <20191001152422.GA31358@pi3>
References: <20190918173141.4314-1-krzk@kernel.org>
 <20190918173141.4314-2-krzk@kernel.org>
 <20191001140003.GA31344@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001140003.GA31344@bogus>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_082434_397814_C59E4372 
X-CRM114-Status: GOOD (  26.96  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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

On Tue, Oct 01, 2019 at 09:00:03AM -0500, Rob Herring wrote:
> On Wed, Sep 18, 2019 at 07:31:35PM +0200, Krzysztof Kozlowski wrote:
> > Convert generic mmio-sram bindings to DT schema format using
> > json-schema.
> 
> I've been slow getting to this because I started on the same thing...
> 
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > 
> > ---
> > 
> > Changes since v1:
> > 1. Indent example with four spaces (more readable).
> > ---
> >  .../devicetree/bindings/sram/sram.txt         |  80 ----------
> >  .../devicetree/bindings/sram/sram.yaml        | 138 ++++++++++++++++++
> >  2 files changed, 138 insertions(+), 80 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/sram/sram.txt
> >  create mode 100644 Documentation/devicetree/bindings/sram/sram.yaml
> 
> > diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
> > new file mode 100644
> > index 000000000000..8d9d6ce494b2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sram/sram.yaml
> > @@ -0,0 +1,138 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sram/sram.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Generic on-chip SRAM
> > +
> > +maintainers:
> > +  - FIXME <who@should.it.be>
> 
> You can put me.

Sure.

> 
> > +
> > +description: |+
> > +  Simple IO memory regions to be managed by the genalloc API.
> > +
> > +  Each child of the sram node specifies a region of reserved memory. Each
> > +  child node should use a 'reg' property to specify a specific range of
> > +  reserved memory.
> > +
> > +  Following the generic-names recommended practice, node names should
> > +  reflect the purpose of the node. Unit address (@<address>) should be
> > +  appended to the name.
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^sram(@.*)?"
> > +
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - mmio-sram
> > +          - atmel,sama5d2-securam
> 
> I was trying to go down the path of putting all the compatibles for 
> various SRAM bindings here, but I ran into some issues. I need to 
> revisit as I've forgotten the exact issue.
> 
> This would need to be a 'contains' if this is going to work for others.

OK.

> 
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#address-cells":
> > +    description: Should use the same values as the root node.
> > +
> > +  "#size-cells":
> > +    description: Should use the same values as the root node.
> 
> I defined both of these to be 1 as 4GB of SRAM should be enough for a 
> while. We can debate 1 or 2 cells vs. 1, but there's no reason it has to 
> be the same as the root (unless we're failing to do address 
> translation).

That was copied from txt version. I can adjust them to 1 although this
is will more than simple conversion.

> 
> > +
> > +  ranges:
> > +    description:
> > +      Should translate from local addresses within the sram to bus addresses.
> > +
> > +  no-memory-wc:
> > +    description:
> > +      The flag indicating, that SRAM memory region has not to be remapped
> > +      as write combining. WC is used by default.
> > +    type: boolean
> > +
> > +  # TODO: additionalProperties: false
> > +
> > +patternProperties:
> > +  "^([a-z]*-)?sram@[a-f0-9]$":
> > +    type: object
> > +    description:
> > +      Each child of the sram node specifies a region of reserved memory.
> > +    properties:
> > +      reg:
> > +        description:
> > +          IO mem address range, relative to the SRAM range.
> 
> maxItems: 1

OK

> 
> > +
> > +      compatible:
> > +        $ref: /schemas/types.yaml#/definitions/string
> > +        description:
> > +          Should contain a vendor specific string in the form
> > +          <vendor>,[<device>-]<usage>
> > +
> > +      pool:
> > +        description:
> > +          Indicates that the particular reserved SRAM area is addressable
> > +          and in use by another device or devices.
> > +        type: boolean
> > +
> > +      export:
> > +        description:
> > +          Indicates that the reserved SRAM area may be accessed outside
> > +          of the kernel, e.g. by bootloader or userspace.
> > +        type: boolean
> > +
> > +      protect-exec:
> > +        description: |
> > +          Same as 'pool' above but with the additional constraint that code
> > +          will be run from the region and that the memory is maintained as
> > +          read-only, executable during code execution. NOTE: This region must
> > +          be page aligned on start and end in order to properly allow
> > +          manipulation of the page attributes.
> > +        type: boolean
> > +
> > +      label:
> > +        $ref: /schemas/types.yaml#/definitions/string
> 
> Already has a type definition.

OK

Best regards,
Krzysztof


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
