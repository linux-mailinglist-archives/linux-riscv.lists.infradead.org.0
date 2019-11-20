Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0822B1037B8
	for <lists+linux-riscv@lfdr.de>; Wed, 20 Nov 2019 11:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mWokpabRINsgJiub24UtyFv31ZfwdN1Er0kLVg7V8Jc=; b=pR1AyMgUclbsbPJcfVRGl2Lyn
	fZRiQ+AtmGX+J0D6oomCh32R1Q1b9sGCDA3yHKmY5hAObr4Wp1wmjc5to7Vwwp6FyFBQHLqZ1o5sa
	PQ1CBSARDBrFgVDPDGMkBhOy02oxalhgkNYrsljWd5F0o3im8mWVx4Dkm4iXx03IshFqE+tdG2BZc
	jE+rRrpR8zOxawbS4cJe8TxeVLEscXzFjaycUIng8KWWH8NnLM9KwCO5iH/NfCOH/wSYpT8T7u1Aw
	/IaBwoulB3NTpcGrogs94A2ulMQlBKKZhfbVgqcxCn2R+ZaGx4KCLkjd/Sa2lkgcbeVMj6e8KDm7a
	uaotSDxTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXNO9-0001uT-Lc; Wed, 20 Nov 2019 10:39:09 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXNO6-0001tx-5F
 for linux-riscv@lists.infradead.org; Wed, 20 Nov 2019 10:39:07 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXNNz-0001Zl-U1; Wed, 20 Nov 2019 11:38:59 +0100
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v2 1/5] genirq: introduce =?UTF-8?Q?irq=5Fdomain=5Ftra?=
 =?UTF-8?Q?nslate=5Fonecell?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 10:38:59 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1574233128-28114-2-git-send-email-yash.shah@sifive.com>
References: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
 <1574233128-28114-2-git-send-email-yash.shah@sifive.com>
Message-ID: <5ec51559d8b4cd3b8e80943788b52926@www.loen.fr>
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
X-CRM114-CacheID: sfid-20191120_023906_344475_882B53A0 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On 2019-11-20 06:59, Yash Shah wrote:
> Add a new function irq_domain_translate_onecell() that is to be used 
> as
> the translate function in struct irq_domain_ops for the v2 IRQ API.
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  include/linux/irqdomain.h |  5 +++++
>  kernel/irq/irqdomain.c    | 20 ++++++++++++++++++++
>  2 files changed, 25 insertions(+)
>
> diff --git a/include/linux/irqdomain.h b/include/linux/irqdomain.h
> index 583e7ab..cad9eb8 100644
> --- a/include/linux/irqdomain.h
> +++ b/include/linux/irqdomain.h
> @@ -426,6 +426,11 @@ int irq_domain_translate_twocell(struct 
> irq_domain *d,
>  				 unsigned long *out_hwirq,
>  				 unsigned int *out_type);
>
> +int irq_domain_translate_onecell(struct irq_domain *d,
> +				 struct irq_fwspec *fwspec,
> +				 unsigned long *out_hwirq,
> +				 unsigned int *out_type);
> +
>  /* IPI functions */
>  int irq_reserve_ipi(struct irq_domain *domain, const struct cpumask 
> *dest);
>  int irq_destroy_ipi(unsigned int irq, const struct cpumask *dest);
> diff --git a/kernel/irq/irqdomain.c b/kernel/irq/irqdomain.c
> index 132672b..6972a48 100644
> --- a/kernel/irq/irqdomain.c
> +++ b/kernel/irq/irqdomain.c
> @@ -987,6 +987,26 @@ const struct irq_domain_ops 
> irq_domain_simple_ops = {
>  EXPORT_SYMBOL_GPL(irq_domain_simple_ops);
>
>  /**
> + * irq_domain_translate_onecell() - Generic translate for direct one 
> cell
> + * bindings
> + *
> + * Device Tree IRQ specifier translation function which works with 
> one cell

nit: the whole point of the 'new' translate function is that they are
firmware-agnostic. Just drop the DT reference here.

> + * bindings where the cell values map directly to the hwirq number.
> + */
> +int irq_domain_translate_onecell(struct irq_domain *d,
> +				 struct irq_fwspec *fwspec,
> +				 unsigned long *out_hwirq,
> +				 unsigned int *out_type)
> +{
> +	if (WARN_ON(fwspec->param_count < 1))
> +		return -EINVAL;
> +	*out_hwirq = fwspec->param[0];
> +	*out_type = IRQ_TYPE_NONE;
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(irq_domain_translate_onecell);
> +
> +/**
>   * irq_domain_translate_twocell() - Generic translate for direct two 
> cell
>   * bindings
>   *

Can you please also update (potentially in a separate patch) the 
potential
users of this? I mentioned the nvic driver last time...

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
