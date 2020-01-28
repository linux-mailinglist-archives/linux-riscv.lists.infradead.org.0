Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7294314B4C6
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 14:21:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gl5V0cknPwN3AphuKXaYtx6WX76Z7z1/xGGIE+hSiME=; b=In4ldb3d4hSKkKsUiCdi9F1/g
	GHMTDw7hAhNo1LppgUqn61uleVwq6+wY7z/8mdTSBkSZ+Vw6T7obLJJr7Y+A+KvO6NZI9svuWXBbV
	RfgZg39QmWYh1XBFkumBemMa4Tv4d9sLH4YOnntgAI5WLnPF7Avo/wXZaBoLVmUGT0LVMGqerhIQW
	f0mIZi8cGwuTHRqjh77QpCCoeZaZrVhuXhyTvTy3Xpz2yttBxD3eOmEIhfLrQgKhbozj8ZyQmcUDd
	zL5iBrDsnlxRUpV9Nz08gWPEgWkiy/sg+i76uiDZ4CUQqt8Z91eD3R2PVAsV5wnrSEy+RUAS6DSom
	5NDyhKhXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwQni-0002q3-0N; Tue, 28 Jan 2020 13:21:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQnf-0002pg-Ht
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 13:21:04 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 722502467B;
 Tue, 28 Jan 2020 13:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580217662;
 bh=6yMPyzyzgayEIhWQisn5URP1nsUaexkHHx5nPCWZHxE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=m/qnAjAWjKa7ujJV4+9bpIdnM8mieHm/wpjVEvkvRm9L3PYJnE5/FmP+1SvRPtqBR
 Tr6tDlVON4RnWc0Q/zVwJ2TH8GGOHQ0Z/AQT2Zyb7H/gS7g2HcGKX1gUmwAPkHvQTu
 b8olEF31GK411fPrGLjVPuPn58DV+ShN/oweXQ50=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iwQnc-001ofc-Hp; Tue, 28 Jan 2020 13:21:00 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue, 28 Jan 2020 13:21:00 +0000
From: Marc Zyngier <maz@kernel.org>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH] gpio/sifive: fix static checker warning
In-Reply-To: <1580189061-14091-1-git-send-email-yash.shah@sifive.com>
References: <1580189061-14091-1-git-send-email-yash.shah@sifive.com>
Message-ID: <ecb0e9404a3f6256a7ba1fe48b5a1471@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yash.shah@sifive.com, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, palmer@dabbelt.com, paul.walmsley@sifive.com,
 wesley@sifive.com, atish.patra@wdc.com, linux-gpio@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 sachin.ghadi@sifive.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_052103_632242_A40E8359 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: atish.patra@wdc.com, wesley@sifive.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, palmer@dabbelt.com,
 sachin.ghadi@sifive.com, linux-gpio@vger.kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-01-28 05:24, Yash Shah wrote:
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
> @@ -94,7 +94,7 @@ static void sifive_gpio_irq_enable(struct irq_data 
> *d)
>  	spin_unlock_irqrestore(&gc->bgpio_lock, flags);
> 
>  	/* Enable interrupts */
> -	assign_bit(offset, (unsigned long *)&chip->irq_state, 1);
> +	assign_bit(offset, &chip->irq_state, 1);
>  	sifive_gpio_set_ie(chip, offset);
>  }
> 
> @@ -104,7 +104,7 @@ static void sifive_gpio_irq_disable(struct irq_data 
> *d)
>  	struct sifive_gpio *chip = gpiochip_get_data(gc);
>  	int offset = irqd_to_hwirq(d) % SIFIVE_GPIO_MAX;
> 
> -	assign_bit(offset, (unsigned long *)&chip->irq_state, 0);
> +	assign_bit(offset, &chip->irq_state, 0);
>  	sifive_gpio_set_ie(chip, offset);
>  	irq_chip_disable_parent(d);
>  }

Yup, nice one. Should have spotted it.

Reviewed-by: Marc Zyngier <maz@kernel.org>

Linus, do you want me to queue this via the irqchip tree (given that
it is where the original bug came from)? Or would you rather take it?

         M.
-- 
Jazz is not dead. It just smells funny...

