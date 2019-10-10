Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF300D30F4
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 20:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKLYpKA/FplCvX7U/shEUVRbnlqTIjypNO3VCEewrHg=; b=HFw59W9Th0ORMB
	+uwB/k/ZU1y05Jovm0rGL4RdLYeeG6hcv+ndvkhC/4Po5vOO3WAc7eyA893RSFZ0Fr3p6935US50r
	ducnQcQu6ebhNgFkIux/0HQGy+6SyrhI2AM8Vr7I25zr/THYcjddT0U6JzExFp6A2XzqK/NaJzid3
	h+LJgWwJMo0jV4v7ixW71vcmP1KEdiTr32hPoIdNOfZp/6Q/YqLiK3V/690VrIvi/hI5rnI9/hGI1
	4KQKyO23lZ/qWpJ8Cq6ibqflNwtMrV6Q6fqVyhylKXT99xFyQSv522d0avu8gY32c9tq1zvrkkBGP
	w7t2+pIArAmXHLkKe/hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIdaU-0002ga-C4; Thu, 10 Oct 2019 18:54:58 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIda7-0002Nr-Ks; Thu, 10 Oct 2019 18:54:37 +0000
Received: by mail-ot1-f67.google.com with SMTP id z6so5833252otb.2;
 Thu, 10 Oct 2019 11:54:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o+zin2bL1A/EltcDjtt8OSEY4VLYK08n8Dj1hQ6Wf2k=;
 b=nxafwnwjiwC0h3WJqamIpYCmQ8EnyjkZSrAKZbPMQREviRYqLXLtMR4iS3ycWZU95e
 zjnTroaAY0R1gjOt61F0zCkJImfGpSzoKPvAJ966+TaRH2KDL8YgL4J9Vc90LZJgUdxO
 4QBXwnlzFP5iG5U4J3BjLqDiAOo72a1ZK+mSYkEog13Ak3N1hoiIrO72omGglwJFbCwe
 1ex6JbVv6fyeYl+inxkb3idX1MhxNNQuh2mDGS+NNHsVrCmNg6KghY45ViWRtrlcWRUJ
 I9Tv0hMI4KKjg/Y1d05ricP+r5WKjVO2PIowCsdLTc/C4z6NAjLKeKZDhJ+lBvSPp4z5
 /w0A==
X-Gm-Message-State: APjAAAWD5kicquEJPH1hIRaeors0dStN1BcnLe9HRZgd6LNjhK5kwNBv
 Pu5UIVg5HVSfsF9gj/REVQ==
X-Google-Smtp-Source: APXvYqxQEXGO9Uc01zKUGpeB8t0R+xv3eN1jyvC9TPfe47vyIsyRP58qHhRhPLQG1SNW3RGl2mO7pw==
X-Received: by 2002:a9d:73d8:: with SMTP id m24mr8810042otk.227.1570733674052; 
 Thu, 10 Oct 2019 11:54:34 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r19sm1846829ota.79.2019.10.10.11.54.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 11:54:33 -0700 (PDT)
Date: Thu, 10 Oct 2019 13:54:32 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: pwm: Convert PWM bindings to
 json-schema
Message-ID: <20191010185432.GA17457@bogus>
References: <20191002164047.14499-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002164047.14499-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_115435_683580_BCE7D178 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
 linux-pwm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 06:40:46PM +0200, Krzysztof Kozlowski wrote:
> Convert generic PWM bindings to DT schema format using json-schema.  The
> consumer bindings are split to separate file.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Change also pwm-sprd.txt
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Change pattern for pwm nodes,
> 3. Remove $ref from #cells.
> ---


> diff --git a/Documentation/devicetree/bindings/pwm/pwm-consumers.yaml b/Documentation/devicetree/bindings/pwm/pwm-consumers.yaml
> new file mode 100644
> index 000000000000..39c844fe6338
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/pwm-consumers.yaml
> @@ -0,0 +1,76 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/pwm-consumers.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Specifying PWM information for devices
> +
> +maintainers:
> +  - Thierry Reding <thierry.reding@gmail.com>
> +
> +description: |
> +  PWM properties should be named "pwms". The exact meaning of each pwms
> +  property must be documented in the device tree binding for each device.
> +  An optional property "pwm-names" may contain a list of strings to label
> +  each of the PWM devices listed in the "pwms" property. If no "pwm-names"
> +  property is given, the name of the user node will be used as fallback.
> +
> +  Drivers for devices that use more than a single PWM device can use the
> +  "pwm-names" property to map the name of the PWM device requested by the
> +  pwm_get() call to an index into the list given by the "pwms" property.
> +
> +properties:
> +  pwms:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: |
> +      Phandle to PWM controller node and pwm-specifier (controller specific).
> +      pwm-specifier typically encodes the chip-relative PWM number and the PWM
> +      period in nanoseconds.
> +      Optionally, the pwm-specifier can encode a number of flags (defined in
> +      <dt-bindings/pwm/pwm.h>) in a third cell:
> +        - PWM_POLARITY_INVERTED: invert the PWM signal polarity
> +
> +  pwm-names:
> +    $ref: /schemas/types.yaml#/definitions/string-array
> +    description:
> +      A list of strings to label each of the PWM devices listed in the "pwms"
> +      property. If no "pwm-names" property is given, the name of the user node
> +      will be used as fallback.
> +
> +required:
> +  - pwms

This schema is never applied because it has no 'select' which is only 
automatic for $nodename or compatible. You could include this from other 
schemas, but why? Any consumer still has to list these properties to 
define their specific constraints.

We already have a schema in dtschema for consumer side. It's just 
missing descriptions which needs relicensing from this.

> +
> +dependencies:
> +  pwm-names: [ pwms ]

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
