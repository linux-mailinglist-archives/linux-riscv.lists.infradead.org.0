Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 127FEE9B8
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 20:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OglnoenZICfg7DIMVcTCspOZbnoxFmJFPHPbsElBivo=; b=s9boRB0G7qvkeI
	2hNGTiYR3luefKofnic8FgW1eh3hnaBJS2itcg8SFPaNw71Tz8EMU+H7TVHBH34d4d70Odbj4dZWT
	G4VlXnkwuOjfBdrIDQGsL6oOCM1dBa3kLx+zFENUnjJ7/cAUYphUbF6593Jsermi9wSjxBuwIMLAl
	iQgzcOQ+kQUc3xBKUsU5tRM7BoZalA0PFe9nIsbmUj81QaDBipgZO9LwfPbffsqmood64IM7CkOFK
	QyrpiKexKvk44bMGb8f/OJ7NYZ4Iu5TmskHRAs8RYWTNHe3svIXkmYzFAqKBddxndgfsTcoXOOPOn
	CiueifHc4Ea8bYeApZdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAhw-0000fS-5H; Mon, 29 Apr 2019 18:08:52 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAht-0000es-8N
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 18:08:50 +0000
Received: by mail-ot1-f65.google.com with SMTP id f23so9466625otl.9
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 11:08:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k8gAARN4apicDkk5HczIkkY69NduYn2gyzEh87JDG00=;
 b=Y9JhGu+T0GxI57w0Ow5Tr1H3wer3lBfG9VEVaeBgzb6tbPk2XTFVvCf2AU8O8QW7l8
 tm4q91hJqC0Zcqlv9qVHj7xHYArJmCpbZbHnGRQrvf+LeEsRRnDfHxNUnJVBjsZTTFoa
 uV/AGxVAv4u6SR4/DHneH/dQoy+50EOeHYDDqIFEO/wQFI6oU1nzz+2TFEwNQF6lPOT7
 kzJjEvuKrTy6Pp5fpjK/5c0mijTTye0+vHGm8ccxvOsc7w2JBDBbd+FggkuStrW1q3tm
 64J/N+ZIPPW0o/WIsJL649ECTWYR//VLc9iAD9KxCeAIkF/ciu74/JB3QqmCnDqiotFk
 RjaQ==
X-Gm-Message-State: APjAAAX7n6CAacGsm1stclCwMQ0RSfiaxLRX2Yc/nhnZftQcs6VUgnlE
 1+r569/f7SkTl2KM/px14A==
X-Google-Smtp-Source: APXvYqy13wDJjfHnr6l9xY4z5mnssj1zSTsBbAclybaVJHKRzHVXehef93dFsU95+qt+zSW7u7YIrQ==
X-Received: by 2002:a9d:360b:: with SMTP id w11mr13052433otb.238.1556561328209; 
 Mon, 29 Apr 2019 11:08:48 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v10sm2732527oiv.36.2019.04.29.11.08.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 11:08:47 -0700 (PDT)
Date: Mon, 29 Apr 2019 13:08:46 -0500
From: Rob Herring <robh@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 2/6] dt-bindings: riscv: sifive: add YAML documentation
 for the SiFive FU540
Message-ID: <20190429180846.GA26021@bogus>
References: <20190411084304.5072-2-paul.walmsley@sifive.com>
 <20190411084304.5072-3-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190411084304.5072-3-paul.walmsley@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_110849_299279_8FCBA68D 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Paul Walmsley <paul@pwsan.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Apr 11, 2019 at 01:43:00AM -0700, Paul Walmsley wrote:
> Add YAML DT binding documentation for the SiFive FU540 SoC.  This
> SoC is documented at:
> 
>     https://static.dev.sifive.com/FU540-C000-v1.0.pdf
> 
> Passes dt-doc-validate, as of yaml-bindings commit 4c79d42e9216.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: devicetree@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  .../devicetree/bindings/riscv/sifive.yaml     | 26 +++++++++++++++++++
>  MAINTAINERS                                   |  9 +++++++
>  2 files changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml
> 
> diff --git a/Documentation/devicetree/bindings/riscv/sifive.yaml b/Documentation/devicetree/bindings/riscv/sifive.yaml
> new file mode 100644
> index 000000000000..d2808d8d79bb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/riscv/sifive.yaml
> @@ -0,0 +1,26 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/riscv/sifive/sifive.yaml#

The path here should match the file path. IOW, drop 'sifive/'.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SiFive SoC-based boards
> +
> +maintainers:
> +  - Paul Walmsley <paul.walmsley@sifive.com>
> +  - Palmer Dabbelt <palmer@sifive.com>
> +
> +description:
> +  SiFive SoC-based boards
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    items:
> +      - enum:
> +          - sifive,freedom-unleashed-a00-fu540
> +          - sifive,freedom-unleashed-a00
> +      - const: sifive,fu540-c000
> +      - const: sifive,fu540
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3ec37f17f90e..c02bf352a8c6 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14138,6 +14138,15 @@ S:	Supported
>  K:	sifive
>  N:	sifive
>  
> +SIFIVE FU540 SYSTEM-ON-CHIP
> +M:	Paul Walmsley <paul.walmsley@sifive.com>
> +M:	Palmer Dabbelt <palmer@sifive.com>
> +L:	linux-riscv@lists.infradead.org
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/pjw/sifive.git
> +S:	Supported
> +K:	fu540
> +N:	fu540
> +
>  SILEAD TOUCHSCREEN DRIVER
>  M:	Hans de Goede <hdegoede@redhat.com>
>  L:	linux-input@vger.kernel.org
> -- 
> 2.20.1
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
