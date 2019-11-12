Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CC9F8FD1
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 13:43:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f5w3spfd69kbTXIrauf3LyJhFMaObZSWq07FwV7dZc4=; b=tUCL+KvtvtXArOEC9eZuE/Fjb
	6zOHITrtXV0UcLkZN7IA+OsQo2E/cH8e93oJxFXyX3InuDgFox1e87AqX/FTcMNv7tJXGPrF2BxiZ
	3mdEu7Nz+pTjBtZT41cPJdzRl8NZQEIPhdH+n/uUPRNG0DGaCj6g+X1JoqoT1VasCe8QghmAT4f5f
	sG3IdPrsqdXK8th5L+oCqBjujuT841CuIK/weFhh4jaGU8zaTOvcxQgnmxj5KWfmTfVqyG3ITmFsL
	qhcnWjpIjRCJthQ7iFnXrPwnAsiTTC2SG8QK+kdFkczzkMJr8Bfp5wG8TUkVTD5Ptjz4iVFB27pNH
	eYj57kVCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVVd-0000SC-LO; Tue, 12 Nov 2019 12:43:01 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVVa-0000RR-1y
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 12:42:59 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iUVVR-0007EZ-3z; Tue, 12 Nov 2019 13:42:49 +0100
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH 1/4] irqchip: sifive: Support hierarchy irq domain
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 12 Nov 2019 13:52:09 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1573560684-48104-2-git-send-email-yash.shah@sifive.com>
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
 <1573560684-48104-2-git-send-email-yash.shah@sifive.com>
Message-ID: <ad0a3b419a3f5c3475d5fafcc2a037fb@www.loen.fr>
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
X-CRM114-CacheID: sfid-20191112_044258_250912_075772E8 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 2019-11-12 13:21, Yash Shah wrote:
> Add support for hierarchy irq domains. This is needed as 
> pre-requisite for
> gpio-sifive driver.
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  drivers/irqchip/Kconfig           |  1 +
>  drivers/irqchip/irq-sifive-plic.c | 41
> +++++++++++++++++++++++++++++++++++----
>  2 files changed, 38 insertions(+), 4 deletions(-)
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
> index 7d0a12f..2fa1c84 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -154,15 +154,48 @@ static struct irq_chip plic_chip = {
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
> +static int plic_irq_domain_translate(struct irq_domain *d,
> +				     struct irq_fwspec *fwspec,
> +				     unsigned long *hwirq, unsigned int *type)
> +{
> +	if (WARN_ON(fwspec->param_count < 1))
> +		return -EINVAL;
> +	*hwirq = fwspec->param[0];
> +	*type = IRQ_TYPE_NONE;
> +	return 0;
> +}

This is actually what should be called irq_domain_translate_onecell().

Consider implementing that instead, and using it in this driver. I'm
pretty sure other drivers could use it (I spotted irq-nvic.c).

> +
> +static int plic_irq_domain_alloc(struct irq_domain *domain, unsigned
> int virq,
> +				 unsigned int nr_irqs, void *arg)
> +{
> +	int i, ret;
> +	irq_hw_number_t hwirq;
> +	unsigned int type = IRQ_TYPE_NONE;
> +	struct irq_fwspec *fwspec = arg;
> +
> +	ret = plic_irq_domain_translate(domain, fwspec, &hwirq, &type);
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
> +	.translate	= plic_irq_domain_translate,
> +	.alloc		= plic_irq_domain_alloc,
> +	.free		= irq_domain_free_irqs_top,
>  };
>
>  static struct irq_domain *plic_irqdomain;

Otherwise, looks OK.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
