Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA681069CB
	for <lists+linux-riscv@lfdr.de>; Fri, 22 Nov 2019 11:17:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JqU8me9nmQABninZg6arKmNsw5C9BICBV4+LWlDNONI=; b=YUMeBGZd/2/BKHQj6xrNWOk2N
	cq2rg3UOTyfKLstSDY7xPQcJs+bKQKLb+/FX6faLnRPAo5qkW0LqkjhlXULgqY7Qr3NJXJe5teb2x
	3vMZdqXH/15vLuBIpLknrcmqITkR5HZz1/YG99GzQWm4DtvBYEbgF3syABInnBudK1BjNgPISHr56
	BY1R+TPgPYTIr/YH1Cce045YorCZc2yQZOnyIJH9hS4vCWTLtkX0EZk/nVkpKQwrXxv9nzlr8TLAh
	gkLacKz4AfPox1jI0qlQ1ujiXpXdEDSUC1+G/bHSuMfOUu7O4VjEgKDJAqvSfg+y4sbKVmfOnput4
	ZKc+xx22w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY60B-0003Y5-EO; Fri, 22 Nov 2019 10:17:23 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY606-0003XO-83
 for linux-riscv@lists.infradead.org; Fri, 22 Nov 2019 10:17:19 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iY5zt-00071W-8E; Fri, 22 Nov 2019 11:17:05 +0100
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v2 2/5] irqchip: sifive: Support hierarchy irq domain
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 22 Nov 2019 10:17:05 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1574233128-28114-3-git-send-email-yash.shah@sifive.com>
References: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
 <1574233128-28114-3-git-send-email-yash.shah@sifive.com>
Message-ID: <6bc97c77172ac277e0c28f68eb1ca440@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: yash.shah@sifive.com, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com,
 palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 tglx@linutronix.de, jason@lakedaemon.net, bmeng.cn@gmail.com,
 atish.patra@wdc.com, sagar.kadam@sifive.com, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, sachin.ghadi@sifive.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_021718_431224_D1106564 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 jason@lakedaemon.net, atish.patra@wdc.com,
 Sachin Ghadi <sachin.ghadi@sifive.com>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 palmer@dabbelt.com, Sagar Kadam <sagar.kadam@sifive.com>,
 linux-gpio@vger.kernel.org, "Paul
 Walmsley \( Sifive\)" <paul.walmsley@sifive.com>, tglx@linutronix.de,
 bmeng.cn@gmail.com, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019-11-20 06:59, Yash Shah wrote:
> Add support for hierarchy irq domains. This is needed as 
> pre-requisite for
> gpio-sifive driver.
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  drivers/irqchip/Kconfig           |  1 +
>  drivers/irqchip/irq-sifive-plic.c | 30 
> ++++++++++++++++++++++++++----
>  2 files changed, 27 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> index ccbb897..a398552 100644
> --- a/drivers/irqchip/Kconfig
> +++ b/drivers/irqchip/Kconfig
> @@ -488,6 +488,7 @@ endmenu
>  config SIFIVE_PLIC
>  	bool "SiFive Platform-Level Interrupt Controller"
>  	depends on RISCV
> +	select IRQ_DOMAIN_HIERARCHY
>  	help
>  	   This enables support for the PLIC chip found in SiFive (and
>  	   potentially other) RISC-V systems.  The PLIC controls devices
> diff --git a/drivers/irqchip/irq-sifive-plic.c
> b/drivers/irqchip/irq-sifive-plic.c
> index 7d0a12f..750e366 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -154,15 +154,37 @@ static struct irq_chip plic_chip = {
>  static int plic_irqdomain_map(struct irq_domain *d, unsigned int 
> irq,
>  			      irq_hw_number_t hwirq)
>  {
> -	irq_set_chip_and_handler(irq, &plic_chip, handle_fasteoi_irq);
> -	irq_set_chip_data(irq, NULL);
> +	irq_domain_set_info(d, irq, hwirq, &plic_chip, d->host_data,
> +			    handle_fasteoi_irq, NULL, NULL);
>  	irq_set_noprobe(irq);
>  	return 0;
>  }
>
> +static int plic_irq_domain_alloc(struct irq_domain *domain, unsigned
> int virq,
> +				 unsigned int nr_irqs, void *arg)
> +{
> +	int i, ret;
> +	irq_hw_number_t hwirq;
> +	unsigned int type = IRQ_TYPE_NONE;

You shouldn't need this init here. The whole point of 
irq_domain_translate_onecell
is that it either gives you a valid value, or an error.

> +	struct irq_fwspec *fwspec = arg;
> +
> +	ret = irq_domain_translate_onecell(domain, fwspec, &hwirq, &type);
> +	if (ret)
> +		return ret;
> +
> +	for (i = 0; i < nr_irqs; i++) {
> +		ret = plic_irqdomain_map(domain, virq + i, hwirq + i);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static const struct irq_domain_ops plic_irqdomain_ops = {
> -	.map		= plic_irqdomain_map,
> -	.xlate		= irq_domain_xlate_onecell,
> +	.translate	= irq_domain_translate_onecell,
> +	.alloc		= plic_irq_domain_alloc,
> +	.free		= irq_domain_free_irqs_top,
>  };
>
>  static struct irq_domain *plic_irqdomain;

Otherwise looks OK.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
