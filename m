Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6711581E1
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Feb 2020 18:59:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:In-Reply-To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=pCOOvs7wgP9Kvj4DJOrAWEYZ2o8fXqpYVG+BiTgHmVc=; b=WLLSEZy7iYDUk6
	Jo3YWoywqoSp7D/N3952ors88B98deL/y5ZiDoGIBgHPkPQrvIR4Nlqo1aXX3OkDgrEORxMhJu4YS
	FDWAoH82Pv2v6flddNv6mozYbyMPZh1csduA6HyLA2/lM1Z5CVYDVf93RcryOnuDwv6R2dn7rc0/E
	qWLI1HmGzbDkXBi8+Zpwl1mGvvXcfbGY2KX+O9X2QOlRY4Fkn16fNlVtzxePF6u0MIGkoYwRvBS3n
	zxmu2Kad/0EGv1Q4IDM8f9bOoT/pbM6CwQ+6NV7Rbg0NqXqQQqjeHRQLC4qcuTKe8dOPvWW56vHrs
	2/KWgPSFmxa7RXDXsLrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1DLN-0001Xh-78; Mon, 10 Feb 2020 17:59:37 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DLK-0001W7-Kz
 for linux-riscv@lists.infradead.org; Mon, 10 Feb 2020 17:59:35 +0000
Received: by mail-pj1-x1044.google.com with SMTP id e9so66603pjr.4
 for <linux-riscv@lists.infradead.org>; Mon, 10 Feb 2020 09:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=pCOOvs7wgP9Kvj4DJOrAWEYZ2o8fXqpYVG+BiTgHmVc=;
 b=tHwli6sFHuojuCLon0/ryBewWROo+uN/yAbgmkGqIZJwRPwdmOdkYmng+ZvxsWshbl
 l6w0lKjgiDnA/24zxy5knJ7PId2iOUUUUEmLt0CbOBZ2/wuBqK/KLXjqgbQavyCPNoKL
 VkBPLORv4g4y6amBeTKwSxSkgTLGMS5gfvwcIH1PD0nVXmVg2CP/y3EpeMzGpv8nKjDA
 AIYFitsGZqHcHUQtcAjGvONsQu04Fre4sYAZQTK3B+h95lcT0GJSBrSxv+0thd/OKw7+
 xDnKk4C0Msz914E775JW3VP4y2f3cWfZgMUyWySGjAcY+NWRNiN7yBxVNxasWwN0sK2D
 RYYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=pCOOvs7wgP9Kvj4DJOrAWEYZ2o8fXqpYVG+BiTgHmVc=;
 b=dYQIZdaldZNkQFEbKLWXrih9JQi87gTywPCazhRsmwc0to5OPeOpT49s6iw3ckNaP7
 Si/ZpvlFB1EokJGtsD9x+weVPkzmXxJl9+Lbt7wyJFAPY2pAf/FvdMu4KZ215dF5cpLD
 kBXIB449xTVeCRYFk/U8lbc/Q10YwhgH+hqvyMzp9w3AuORfr/H2BAYijR27Vm1lwcw/
 eqL/KgBqBZ6Q4kofWlzY8VuKyhmURbda3PMS8pxYOpwqd5BQ+3m+H1lRsTpxswOHaRV3
 xquIEX5PzkaBHeVOjOhxXWI8TX6X7EY7xBCa3eKpLOY0QX8KZxmeOESoJ9DNYO/G8uda
 vYKw==
X-Gm-Message-State: APjAAAUT/SoRk5OwZ+5TFzw6KAbzBd+E/5qbaLiY8jvyGWFhSWSn6Srt
 jZBii4QNoXMd2GNwpUW9GfymaQ==
X-Google-Smtp-Source: APXvYqxAGmn4pRH4Znxw5xSkc/iSQ1uQ/8XO5AmkDzcftwKPqsBPYgIQRIhjSDhHSj++pUTaroWIGw==
X-Received: by 2002:a17:90a:fb45:: with SMTP id
 iq5mr237107pjb.93.1581357570204; 
 Mon, 10 Feb 2020 09:59:30 -0800 (PST)
Received: from localhost (pat_11.qualcomm.com. [192.35.156.11])
 by smtp.gmail.com with ESMTPSA id g13sm979000pfo.169.2020.02.10.09.59.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 09:59:28 -0800 (PST)
Date: Mon, 10 Feb 2020 09:59:28 -0800 (PST)
X-Google-Original-Date: Mon, 10 Feb 2020 06:57:59 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH] gpio/sifive: fix static checker warning
In-Reply-To: <1580189061-14091-1-git-send-email-yash.shah@sifive.com>
To: yash.shah@sifive.com
Message-ID: <mhng-5d97135c-42fa-437e-93e4-339b97d0123b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_095934_711480_8FD877DA 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Zyngier <maz@kernel.org>, Atish Patra <Atish.Patra@wdc.com>,
 wesley@sifive.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, yash.shah@sifive.com, sachin.ghadi@sifive.com,
 linux-gpio@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 27 Jan 2020 21:24:21 PST (-0800), yash.shah@sifive.com wrote:
> Typcasting "irq_state" leads to the below static checker warning:
> The fix is to declare "irq_state" as unsigned long instead of u32.
>
> 	drivers/gpio/gpio-sifive.c:97 sifive_gpio_irq_enable()
> 	warn: passing casted pointer '&chip->irq_state' to
> 	'assign_bit()' 32 vs 64.
>
> Fixes: 96868dce644d ("gpio/sifive: Add GPIO driver for SiFive SoCs")
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  drivers/gpio/gpio-sifive.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
> index 147a1bd..c54dd08 100644
> --- a/drivers/gpio/gpio-sifive.c
> +++ b/drivers/gpio/gpio-sifive.c
> @@ -35,7 +35,7 @@ struct sifive_gpio {
>  	void __iomem		*base;
>  	struct gpio_chip	gc;
>  	struct regmap		*regs;
> -	u32			irq_state;
> +	unsigned long		irq_state;
>  	unsigned int		trigger[SIFIVE_GPIO_MAX];
>  	unsigned int		irq_parent[SIFIVE_GPIO_MAX];
>  };
> @@ -94,7 +94,7 @@ static void sifive_gpio_irq_enable(struct irq_data *d)
>  	spin_unlock_irqrestore(&gc->bgpio_lock, flags);
>
>  	/* Enable interrupts */
> -	assign_bit(offset, (unsigned long *)&chip->irq_state, 1);
> +	assign_bit(offset, &chip->irq_state, 1);
>  	sifive_gpio_set_ie(chip, offset);
>  }
>
> @@ -104,7 +104,7 @@ static void sifive_gpio_irq_disable(struct irq_data *d)
>  	struct sifive_gpio *chip = gpiochip_get_data(gc);
>  	int offset = irqd_to_hwirq(d) % SIFIVE_GPIO_MAX;
>
> -	assign_bit(offset, (unsigned long *)&chip->irq_state, 0);
> +	assign_bit(offset, &chip->irq_state, 0);
>  	sifive_gpio_set_ie(chip, offset);
>  	irq_chip_disable_parent(d);
>  }

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

I'm assuming this is going to go in via some other tree (as I don't even have
gpio-sifive.c yet), but LMK if you want it via the RISC-V tree.

Thanks!

