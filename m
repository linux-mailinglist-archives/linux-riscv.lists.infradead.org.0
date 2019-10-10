Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAE0D335C
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 23:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROOpkmTv3w3cr9qE8hRjtyOYE/RocpbOoGlxmZ91jxo=; b=QSkvDV291a7XdK
	cMhFckE2tSanSrPyQh7jnhTlp0qkMiA/dDa+OQUaclVfTdKIYgxdNVYQH46x9e4uu0M2vSpWEm0Ez
	KsTsizEGZB3EdigohN1tEvlzg+ujjpZme/gjT/zArBZ+ScM3akUwtrIWAUggdGjSaFjvFhqIKtERy
	pxt4bpRVXwdDKRdj1MTTwqNpx13/wQZNrdABY+NqVD/F9ZHa0EJfXIIeHIN8fw1S8iFlnHgZFFdKt
	oSQK8Ydi9U0KYJZNVWC6rQMjMg4x+mv6Gg36e6ke4WnQVwkh9FhaOjnaVBc1u1DL4HUgoOPp0QRyq
	v0uWKujDcmPt/wuQFwUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfv9-0005AM-U2; Thu, 10 Oct 2019 21:24:27 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfuW-0004os-GX; Thu, 10 Oct 2019 21:23:49 +0000
Received: by mail-ot1-f67.google.com with SMTP id c10so6182351otd.9;
 Thu, 10 Oct 2019 14:23:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8fsaLFcYDAROH9HBoKC5Vafqp1MCH4HA/pJSglSZ4co=;
 b=Ikr8y4tahww0r7NdaMKm/bIUoy82koYjlEOmrlzoedKPc6BJKfHyXmhNjoDypSueb+
 MRYwi/haqAjrfx0e5+YXUH+XrfVjFBaYS/Tpm2NnFzw0lsiBmKS+UfHB2CeQ+ZdbEEbx
 VDcYQJ+UX4TqwSn/qH47+iYYTy9UBa2bE5so/umDIjBk99Lv0+VOqdax8PAMu+Tpkw+9
 XoC1wJYcaZFOtbD0f7zKEB+I49AgbEgQNxueI9MHB3rUicQjVwWI4YM7razd83rzCcu6
 M93Q/0BzqFAUcSWoZbLk5MsgluQqnZxKo5VNZQQnz69HRFTT/vFZ15CnJJFsk0oVfYXt
 cqVw==
X-Gm-Message-State: APjAAAXq3Ux7zOa1CU9BSCp9sfW0ilMU8T3vOGgx/d/XDekWcrLLpnTJ
 hbUmQRSKpBzPcCFQIlF0rg==
X-Google-Smtp-Source: APXvYqyIyxVe/QML8xBJW19srjEWY1fzMm01BIPfEyxogOHEBtnRrO0q0z3M7piA63qkH2laitZG7g==
X-Received: by 2002:a05:6830:13d8:: with SMTP id
 e24mr9348918otq.42.1570742627232; 
 Thu, 10 Oct 2019 14:23:47 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v132sm2027358oif.34.2019.10.10.14.23.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 14:23:46 -0700 (PDT)
Date: Thu, 10 Oct 2019 16:23:46 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 4/8] dt-bindings: memory-controllers: Convert Samsung
 Exynos SROM bindings to json-schema
Message-ID: <20191010212346.GA7896@bogus>
References: <20190918173141.4314-1-krzk@kernel.org>
 <20190918173141.4314-4-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918173141.4314-4-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_142348_549724_71DB2627 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-leds@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
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

On Wed, 18 Sep 2019 19:31:37 +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos SROM controller bindings to DT schema format
> using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Split examples into two,
> 3. Fix pattern for subnode name,
> 4. Remove checks for #address-cells-ranges-#size-cells,
> 5. Add "additionalProperties" so the wrongly named subnodes would be
>    matched.
> ---
>  .../memory-controllers/exynos-srom.txt        |  79 -----------
>  .../memory-controllers/exynos-srom.yaml       | 128 ++++++++++++++++++
>  2 files changed, 128 insertions(+), 79 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/exynos-srom.txt
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
