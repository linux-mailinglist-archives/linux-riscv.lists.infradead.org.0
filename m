Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612F3AF6FB
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Sep 2019 09:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaYw0VxhJn9mRa8mScbEFM0dyq7EOEmRjr0PEp7/ybY=; b=dZOTwQJESjgjJ5
	VO0YCTWIK0SoFIfIUiQuNQ3qJKg2uOkcBx44EwjBeyGpCEQMZ84rmdHOF96ICzD3HpbznVYy34ow5
	/u5rOEWGSoTiZlRmnhQ5FTdrotJKpdGKLqk4RKT6jPU5uKIj3efrX5onztK94ZxAO/hiD2yZC/Swt
	wzd0pN6cqa5CKOMd8BZL9+UMsI2SCl4YK/7wAcTeb3om2utXlDRkwtl+cL9pFpOU3pmBaUjF0Fl/D
	2diHQz1D2AYX+k1zs3QhLZ9d/zt/AndER24qdriMNa93CitJ+LqBi6gDwwQ8rlqWqQPSCu0EAXp/p
	6L7DzO/i6tIh0YuyyQ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7x9Z-0003YB-Sb; Wed, 11 Sep 2019 07:35:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7x99-0003TS-27
 for linux-riscv@lists.infradead.org; Wed, 11 Sep 2019 07:34:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id q18so2154371wmq.3
 for <linux-riscv@lists.infradead.org>; Wed, 11 Sep 2019 00:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ntQnlZ165aoTq9A7WDI2toA4HdgPISzpICPAyGRYlc4=;
 b=DMMbzJxxUXHFi6Z63lgJ1y7Sb/XAkiZLWF0D1+uoabJCHSepnQp4es4L6JW2eVagzh
 72rCnxWkdINIZffgA6FJDDv1cZsc+xCJ96gjFDGsnFT/hoLUjJPTrbgYaJd7PokhtWnH
 OTfaJl12/d5r/1ERItxyTyhsgX31+DwTKVVyoNiRpdAo1kVz31c2aiTgxAUBVDnpjMAV
 DjtgPgaTKqzDjK8Ac7atghJQxxGqy9uZA+Mg+e9bu/zTWhUlugNecrmiCFU/k80GDkh6
 fuT2Iwj60ftMrfIVjjBd2usNbSjEkk428eJwTjzYtZ3c+FGD6oRv2oFmwmg93VzpK1Sh
 ca5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ntQnlZ165aoTq9A7WDI2toA4HdgPISzpICPAyGRYlc4=;
 b=PxIDRxwGluD9aSSoq6C3OVDa3Hlo0Ed/CR0HZXrVtN6+Xfrg0Exv57pa071lbtqTRN
 V5v9NYNfaCGPe01dXdkMm/l//gqHP0Di1Nmxh7obpIyl2XwKiXst05iBcfSoZSUNFWd4
 kPT5q1XbCL2DPuhxQPlbxERlHYTY8oYe6/81OfkWdZfKXLtNESZy5snjNBUxHquIbb53
 Jds2KthQ+qFc5KWgDedxxrSdVMR1Rjzgc4LYyT6lUDT2NSpveYDjb9pJHOxBWPRagPOz
 BxJW8xfeopY8nKGaUe2BOlykO0Y5jQg4l2pjsAz1iqQz1qymgcF4WIYYuTjF9kOt5zd3
 WbEw==
X-Gm-Message-State: APjAAAX2RAmU9V5K4Mwp0/Jh9/2Pi6lrH79GuXVL2/2xsSfBsi/mU55o
 52HIkSopJl7WjosfPjkXhKPpNw==
X-Google-Smtp-Source: APXvYqxxDvRVKQaWLplVyw8RxLikPJkEefVhJ7vX1GPMo2oDLkeZWy4Fj5QkFLqrwRhYintC8OnwBA==
X-Received: by 2002:a1c:ca02:: with SMTP id a2mr2835861wmg.127.1568187271380; 
 Wed, 11 Sep 2019 00:34:31 -0700 (PDT)
Received: from [192.168.1.62] (176-150-251-154.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id
 d193sm3518079wmd.0.2019.09.11.00.34.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 00:34:30 -0700 (PDT)
Subject: Re: [PATCH 4/7] dt-bindings: chosen: Add clocksource and clockevent
 selection
To: Claudiu Beznea <claudiu.beznea@microchip.com>, daniel.lezcano@linaro.org, 
 robh+dt@kernel.org, mark.rutland@arm.com, linux@armlinux.org.uk,
 nsekhar@ti.com, bgolaszewski@baylibre.com, monstr@monstr.eu,
 john@phrozen.org, ralf@linux-mips.org, paul.burton@mips.com,
 jhogan@kernel.org, lftan@altera.com, tglx@linutronix.de,
 vgupta@synopsys.com, marc.zyngier@arm.com, patrice.chotard@st.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, eric@anholt.net,
 wahrenst@gmx.net, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linus.walleij@linaro.org, shc_work@mail.ru, kgene@kernel.org,
 krzk@kernel.org, ysato@users.sourceforge.jp, liviu.dudau@arm.com,
 sudeep.holla@arm.com, lorenzo.pieralisi@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, baohua@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 baruch@tkos.co.il, u.kleine-koenig@pengutronix.de, guoren@kernel.org,
 kaloz@openwrt.org, khalasa@piap.pl, ssantosh@kernel.org, vz@mleia.com,
 slemieux.tyco@gmail.com, khilman@baylibre.com, avifishman70@gmail.com,
 tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com, afaerber@suse.de,
 manivannan.sadhasivam@linaro.org, agross@kernel.org, palmer@sifive.com,
 aou@eecs.berkeley.edu, heiko@sntech.de, orsonzhai@gmail.com,
 baolin.wang@linaro.org, zhang.lyra@gmail.com, maxime.ripard@bootlin.com,
 wens@csie.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 linux@prisktech.co.nz, john.stultz@linaro.org, sboyd@kernel.org,
 matthias.bgg@gmail.com
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <1568123236-767-5-git-send-email-claudiu.beznea@microchip.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <81da473f-54d7-2a00-61ec-9351cdfcaaf3@baylibre.com>
Date: Wed, 11 Sep 2019 09:34:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568123236-767-5-git-send-email-claudiu.beznea@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_003435_732248_A709EF90 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, openbmc@lists.ozlabs.org, linux-oxnas@groups.io,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-unisoc@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-tegra@vger.kernel.org, nios2-dev@lists.rocketboards.org,
 linux-riscv@lists.infradead.org, linux-snps-arc@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On 10/09/2019 15:47, Claudiu Beznea wrote:
> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> Some timer drivers may behave either as clocksource or clockevent
> or both. Until now, in case of platforms with multiple hardware
> resources of the same type, the drivers were chosing the first
> registered hardware resource as clocksource/clockevent and the
> next one as clockevent/clocksource. Other were using different
> compatibles (one for each functionality, although its about the
> same hardware). Add DT bindings to be able to choose the
> functionality of a timer.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/chosen.txt | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> index 45e79172a646..aad3034cdbdf 100644
> --- a/Documentation/devicetree/bindings/chosen.txt
> +++ b/Documentation/devicetree/bindings/chosen.txt
> @@ -135,3 +135,23 @@ e.g.
>  		linux,initrd-end = <0x82800000>;
>  	};
>  };
> +
> +linux,clocksource and linux,clockevent
> +--------------------------------------
> +
> +Those nodes have a timer property. This property is a phandle to the timer to be
> +chosen as the clocksource or clockevent. This is only useful when the platform
> +has multiple identical timers and it is not possible to let linux make the
> +correct choice.
> +
> +/ {
> +	chosen {
> +		linux,clocksource {
> +			timer = <&timer0>;
> +		};
> +
> +		linux,clockevent {
> +			timer = <&timer1>;
> +		};
> +	};
> +};
> 

Why not in aliases ?

aliases {
    clocksource0 = &timer0;
    clockevent0 = &timer1;
};

since we can have multiple of each, we should not limit ourselves to 1 clkevent
and 1 clksource.

In the aliases case, each driver would expose both capabilities, and the core would select
what to enable.

Neil

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
