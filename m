Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189011D60C2
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 14:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4F70quAOqagfCET9IQpTgXiCjnVWgkO7ftrBYUA0ynw=; b=mLg41YF5FgwB/pJr+Wt7Fvj4k
	4VjbnsOxnTAMm0t68Pd/uMyjOhViYyT0D5q2IY4g3zIgzXJlJnyiCywd4Bdryt/rs3trMq5NhEQLt
	wWJrna0kJJgMyjtCrj9wU/IMb/5RSVa02d53EWUSJ1My9MNoXOIRspd5XcnGLQS/52YcD8UazxJhc
	3DOTmQewoL+L7zpBFl6eN/cHKMPFNC/EALNXE3RjZfcVIA5NlPfUgWfuAaEsyJSLtY4d0GBRW38C+
	lGN8J8rGIgBKe0UMNwoLRpvV4zOqVO0hyIwB/KxDYDSAemIwGpFnSCmnHzQwYLLI4LHJzfLdgMPkU
	XTJDKrLXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZvnZ-0003af-1c; Sat, 16 May 2020 12:20:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZvnU-0002es-JX
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 12:20:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16BC220671;
 Sat, 16 May 2020 12:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589631608;
 bh=nw2Sia0XA65XHVWMqYVds6MhO4JKpPbeVteRggM9X6Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RywIqY9jUZ2i9yasZQmuX628UFtHs7uWrk2dHNRY7bBgka+03jIOAUDSmRRafYAPK
 cCry4nzPCL41GXZXcFgtU6XraqcDI1tHZeIFnTeA4VeVvokttXskYNiffcEWLDkcn5
 M21QP3h9D/SdqZbs40nwJX0FvS9bNAXUvWfp7QlQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jZvnS-00Co8e-GD; Sat, 16 May 2020 13:20:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Sat, 16 May 2020 13:20:06 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <anup.patel@wdc.com>
Subject: Re: [PATCH 2/4] irqchip/sifive-plic: Improve boot prints for multiple
 PLIC instances
In-Reply-To: <20200516063901.18365-3-anup.patel@wdc.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
 <20200516063901.18365-3-anup.patel@wdc.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <718b4b4fd894f74a178d3e38073ffdcc@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: anup.patel@wdc.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, tglx@linutronix.de, jason@lakedaemon.net,
 atish.patra@wdc.com, Alistair.Francis@wdc.com, anup@brainfault.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_052008_681530_AAC26DB0 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup@brainfault.org>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-05-16 07:38, Anup Patel wrote:
> We improve PLIC banner to help distinguish multiple PLIC instances
> in boot time prints.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  drivers/irqchip/irq-sifive-plic.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-sifive-plic.c
> b/drivers/irqchip/irq-sifive-plic.c
> index 7dc23edb3267..2d3db927a551 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -284,6 +284,11 @@ static int __init plic_init(struct device_node 
> *node,
>  	u32 nr_irqs;
>  	struct plic_priv *priv;
>  	struct plic_handler *handler;
> +	struct resource iores;
> +
> +	error = of_address_to_resource(node, 0, &iores);
> +	if (error)
> +		return error;
> 
>  	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
> @@ -377,8 +382,10 @@ static int __init plic_init(struct device_node 
> *node,
>  		plic_cpuhp_setup_done = true;
>  	}
> 
> -	pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
> -		nr_irqs, nr_handlers, nr_contexts);
> +	pr_info("interrupt-controller at 0x%llx "
> +		"(interrupts=%d, contexts=%d, handlers=%d)\n",
> +		(unsigned long long)iores.start, nr_irqs,
> +		nr_contexts, nr_handlers);

Instead of displaying "interrupt controller at ...", why not use the
existing printk format for OF nodes? Something along the lines of

     pr_info("%pOF : mapped %d interrupts with %d handlers for %d 
contexts\n",
             node, nr_irqs, nr_handlers, nr_contexts);

>  	set_handle_irq(plic_handle_irq);
>  	return 0;

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

