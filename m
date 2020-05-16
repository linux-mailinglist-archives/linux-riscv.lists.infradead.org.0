Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817331D6139
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 15:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0nl2o3XBklWmR5LxkwfLXuKPYbOoZTJv9OGDQCfxEjI=; b=griOvxJKCcGMdNHvS7QI65dwL
	l8SbML11B1554cOgDyoAg1ya5NGQmkMzgOgmCQWS+xSCit8EOSDD/sdC+7wRLCGTLaRUQc8tvFZY8
	6BcTTd0iYBD4pyYUfH7EAV3cpG/+vykaEfxPw3d9dUWa+/kwAUqO21OnuovEkLxe9ryJlrOOn7vQ8
	TBxH48nyiMsJ0db9ANZA3mSif5q0UFQKaV4DtEy9wAPO7QwmLD4UbH8Wl1l7R6i347AKzJdslEhGf
	xXZvVpq7EzGyh2QW4MmdD+/RXPRK1BH9XA4UNziXEnfTF5ENv+imn2UvcsDwNGH1CBycRbquBnNwP
	MkcWHWTQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZwg1-0005gG-KD; Sat, 16 May 2020 13:16:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZwfx-0005fq-AY
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 13:16:26 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E45520727;
 Sat, 16 May 2020 13:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589634984;
 bh=C14vxvov6HGxmSsHUWr0zAt9J6Vf/M86i7cQcIUctU8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JESFpGmV/3BOQ98QT7/spdCpsIychyOBJQUKypKaqWAEq+Avnky+Jh8kXP3rRaUG7
 EaImIWyyNZnWiqgiiQGI2S6a82PETfdfMeLUCYGfeF0Oj8GPS4hM8rxx1MSw1dp3eN
 hdbNCq4VvQGV4rs4NX3cVVxDy3kot+66sjFlv0jo=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jZwfu-00Cp2p-Mf; Sat, 16 May 2020 14:16:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Sat, 16 May 2020 14:16:22 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for muiltiple
 PLIC instances
In-Reply-To: <DM6PR04MB6201FD64C78C51A94C4776558DBA0@DM6PR04MB6201.namprd04.prod.outlook.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
 <20200516063901.18365-4-anup.patel@wdc.com>
 <577f9a16b3dddfadb7c5487ffaef31d8@kernel.org>
 <DM6PR04MB6201FD64C78C51A94C4776558DBA0@DM6PR04MB6201.namprd04.prod.outlook.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <6fbfca8f084f6cd0dc6818c4bbf58843@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: Anup.Patel@wdc.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, tglx@linutronix.de, jason@lakedaemon.net,
 Atish.Patra@wdc.com, Alistair.Francis@wdc.com, anup@brainfault.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_061625_411690_C5D03137 
X-CRM114-Status: GOOD (  22.75  )
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
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-05-16 14:01, Anup Patel wrote:
>> -----Original Message-----
>> From: Marc Zyngier <maz@kernel.org>
>> Sent: 16 May 2020 17:59
>> To: Anup Patel <Anup.Patel@wdc.com>
>> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
>> <paul.walmsley@sifive.com>; Thomas Gleixner <tglx@linutronix.de>; 
>> Jason
>> Cooper <jason@lakedaemon.net>; Atish Patra <Atish.Patra@wdc.com>; 
>> Alistair
>> Francis <Alistair.Francis@wdc.com>; Anup Patel <anup@brainfault.org>; 
>> linux-
>> riscv@lists.infradead.org; linux-kernel@vger.kernel.org
>> Subject: Re: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for 
>> muiltiple PLIC
>> instances
>> 
>> On 2020-05-16 07:39, Anup Patel wrote:
>> > To distinguish interrupts from multiple PLIC instances, we use a
>> > per-PLIC irq_chip instance with a different name.
>> >
>> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
>> > ---
>> >  drivers/irqchip/irq-sifive-plic.c | 28 +++++++++++++++-------------
>> >  1 file changed, 15 insertions(+), 13 deletions(-)
>> >
>> > diff --git a/drivers/irqchip/irq-sifive-plic.c
>> > b/drivers/irqchip/irq-sifive-plic.c
>> > index 2d3db927a551..e42fc082ad18 100644
>> > --- a/drivers/irqchip/irq-sifive-plic.c
>> > +++ b/drivers/irqchip/irq-sifive-plic.c
>> > @@ -60,6 +60,7 @@
>> >  #define	PLIC_ENABLE_THRESHOLD		0
>> >
>> >  struct plic_priv {
>> > +	struct irq_chip chip;
>> >  	struct cpumask lmask;
>> >  	struct irq_domain *irqdomain;
>> >  	void __iomem *regs;
>> > @@ -76,6 +77,7 @@ struct plic_handler {
>> >  	void __iomem		*enable_base;
>> >  	struct plic_priv	*priv;
>> >  };
>> > +static unsigned int plic_count;
>> >  static bool plic_cpuhp_setup_done;
>> >  static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
>> >
>> > @@ -164,20 +166,12 @@ static void plic_irq_eoi(struct irq_data *d)
>> >  	writel(d->hwirq, handler->hart_base + CONTEXT_CLAIM);  }
>> >
>> > -static struct irq_chip plic_chip = {
>> > -	.name		= "SiFive PLIC",
>> > -	.irq_mask	= plic_irq_mask,
>> > -	.irq_unmask	= plic_irq_unmask,
>> > -	.irq_eoi	= plic_irq_eoi,
>> > -#ifdef CONFIG_SMP
>> > -	.irq_set_affinity = plic_set_affinity,
>> > -#endif
>> > -};
>> > -
>> >  static int plic_irqdomain_map(struct irq_domain *d, unsigned int irq,
>> >  			      irq_hw_number_t hwirq)
>> >  {
>> > -	irq_domain_set_info(d, irq, hwirq, &plic_chip, d->host_data,
>> > +	struct plic_priv *priv = d->host_data;
>> > +
>> > +	irq_domain_set_info(d, irq, hwirq, &priv->chip, d->host_data,
>> >  			    handle_fasteoi_irq, NULL, NULL);
>> >  	irq_set_noprobe(irq);
>> >  	return 0;
>> > @@ -294,6 +288,14 @@ static int __init plic_init(struct device_node
>> > *node,
>> >  	if (!priv)
>> >  		return -ENOMEM;
>> >
>> > +	priv->chip.name = kasprintf(GFP_KERNEL, "PLIC%d", plic_count++);
>> > +	priv->chip.irq_mask = plic_irq_mask,
>> > +	priv->chip.irq_unmask = plic_irq_unmask,
>> > +	priv->chip.irq_eoi = plic_irq_eoi,
>> > +#ifdef CONFIG_SMP
>> > +	priv->chip.irq_set_affinity = plic_set_affinity, #endif
>> > +
>> >  	priv->regs = of_iomap(node, 0);
>> >  	if (WARN_ON(!priv->regs)) {
>> >  		error = -EIO;
>> > @@ -383,9 +385,9 @@ static int __init plic_init(struct device_node
>> > *node,
>> >  	}
>> >
>> >  	pr_info("interrupt-controller at 0x%llx "
>> > -		"(interrupts=%d, contexts=%d, handlers=%d)\n",
>> > +		"(interrupts=%d, contexts=%d, handlers=%d) (%s)\n",
>> >  		(unsigned long long)iores.start, nr_irqs,
>> > -		nr_contexts, nr_handlers);
>> > +		nr_contexts, nr_handlers, priv->chip.name);
>> >  	set_handle_irq(plic_handle_irq);
>> >  	return 0;
>> 
>> I really dislike this patch for multiple reasons:
>> 
>> - Allocating a new struc irq_chip just for a string seems over the 
>> top,
>>    specially as all the *useful* stuff stays the same.
>> 
>> - Even if I hate it, /proc is API. I'm sure something, somewhere is
>>    parsing this. Changing the string is likely to confuse it.
> 
> AFAIK, we don't have scripts in RISC-V world that depend on
> /proc/interrupts content. May be in future such scripts will show up.

How do you know that? Do you keep an exhaustive repository of all
the possible parsers of /proc/cpuinfo (rhetorical question)?

> For system with multiple PLICs, we are seeing same "SiFive PLIC"
> string for all PLIC interrupts in "cat /proc/interrupts". I am trying 
> to
> assign different string based on PLIC instance. This is similar to
> what GICv2 driver is doing (e.g. GIC-0, GIC-1, ... in 
> /proc/interrupts).

Which was a *very* bad idea the first place, and I wish I could get
rid of it. I cannot, for the reason outlined above (it's ABI).
Furthermore, in this case, the GICs are different (they are cascaded).
In your case, they have the same position in the interrupt hierarchy.

> Is there a better way to do this ?
> 
>> 
>> - If you do this for debug purposes, then CONFIG_GENERIC_IRQ_DEBUGFS
>>    is the right way to look up the information.
>> 
>> - If, for reasons that are beyond me, you actually *need* this, then
>>    implementing irq_print_chip in your irq_chip structure is the way
>>    to go.
>> 
>> But frankly, I'd rather you drop this altogether.
> 
> I just want to differentiate which interrupt belongs to which PLIC
> Instance in /proc/interrupts. I can take a different approach if you
> suggest.

I *have* given you a way to implement that in a better way. But again,
I'd rather you *don't* do it for the reason I have outlined above.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

