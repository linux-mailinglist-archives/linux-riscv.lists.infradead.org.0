Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE1FD310F
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 20:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVtHCnTRW6EIRusPddhvw6WHhRvMr52+chtlYUypVqE=; b=VRtnZZYqhLvMGM
	7dQUU3Afu7KHd4McMY3EOjon3rdSswou1YT4Q8/IVD8HDSijcfkCLsxUgvwC+hqnJHrNIAOB3VE7w
	GIjxgJ/MMPgafxREHth58MHuEfAA5w+QBonvotS5hlp4JEMn8i11IvRQpFEUSyWQAk97AcgW8QZdR
	cAoxQnGzC5COzmgwWYKu48+clndk827LPuO76tslMmR6mIm3ejUxneozbUOTWu5qjyj0ApS/hx04F
	Pdbj1V72LG4OaLkPJvroMlnQ/q5ejYbmCt8I4zWFToPGEF7I94u5buZKd4pvwErh/IOs7T3gUo98e
	VArqb7GSSaGX/ODkv81Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIdeR-0004od-EW; Thu, 10 Oct 2019 18:59:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIde7-0004Yh-5i; Thu, 10 Oct 2019 18:58:44 +0000
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16C3421A4A;
 Thu, 10 Oct 2019 18:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570733922;
 bh=C3qJQMyjD9A/GMvJ52P6U8GDKE7BNVgB4aq0nJUK3Tc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=x9hnp5Xo4bB1M1JWF8/BAZab4UX1ziPUvnFgk/cPG/ZALiC2ezbfWSIK9WfrWnqxU
 Be8N6AeS7oihMOahkrPHOI0whlDuASFXutW+vuKo6b1R/NAzZ/WsV5JfutdIEk6dPX
 j9KYoQjQg6HQBC03nBIRN41NzOebPx9rSvB/Ja9M=
Received: by mail-qt1-f172.google.com with SMTP id l51so9980029qtc.4;
 Thu, 10 Oct 2019 11:58:42 -0700 (PDT)
X-Gm-Message-State: APjAAAVetRWIqqbGQNzHRFkNnBBSHasQoKdoD23L9/7wdTiWpZH5d60u
 PqVYP9TPE64RqnunwTRNlULJV4eXpU2mn/tB/w==
X-Google-Smtp-Source: APXvYqzB5TzRKwoOcFcNVQukkGMmMU2iFIhyKCekwRBNJHWn3GTHP/CmHznLTqw+AnmCr8x0PiE1VBXV/9mGgldc2YU=
X-Received: by 2002:ad4:5044:: with SMTP id m4mr12009044qvq.85.1570733921147; 
 Thu, 10 Oct 2019 11:58:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191002164047.14499-1-krzk@kernel.org>
 <20191002164047.14499-2-krzk@kernel.org>
In-Reply-To: <20191002164047.14499-2-krzk@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 10 Oct 2019 13:58:30 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Fa1+epSvDpSx4NdzOUohoJR+qR3-xyMTTw4LaOK7AbQ@mail.gmail.com>
Message-ID: <CAL_Jsq+Fa1+epSvDpSx4NdzOUohoJR+qR3-xyMTTw4LaOK7AbQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: pwm: Convert Samsung PWM bindings to
 json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_115843_236255_9E885257 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-clk <linux-clk@vger.kernel.org>,
 Linux LED Subsystem <linux-leds@vger.kernel.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 11:41 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Convert Samsung PWM (S3C, S5P and Exynos SoCs) bindings to DT schema
> format using json-schema.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v2:
> 1. Add additionalProperties: false.
>
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Fix samsung,pwm-outputs after review,
> 3. Remove double-quotes from clock names.
> ---
>  .../devicetree/bindings/pwm/pwm-samsung.txt   |  51 --------
>  .../devicetree/bindings/pwm/pwm-samsung.yaml  | 109 ++++++++++++++++++
>  2 files changed, 109 insertions(+), 51 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-samsung.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-samsung.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
