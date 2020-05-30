Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7812D1E9109
	for <lists+linux-riscv@lfdr.de>; Sat, 30 May 2020 14:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yM4oSKP49s4w2/Fjy+7B9waY+wAgd0gbD601EIEgVgI=; b=BoWSopvOf7sn/4AmGfYKVFayi
	KWWTj8bT5ollNR/6Cr7FHc9r5ODtJ+5utF57z9O3gF11eu5HMUM3R//GE/Jw62C65elOeXq5NZUJ9
	BmMu6kXAhcev1S1nHbvLDgljSGT8RtTDj/ffHdmbNYFYKfm9mRMUseR8Kx8XynqUQwYORMhb9VWGT
	I84PcfbcuMzQC+6x1BdcW1lwZctEfpZ3OH8gHQr5u1g7O/IRMvR5uB3TXyvrWpwcbxoOJ6OeA24BY
	QC588s+3nEgRfnWEqUuiOvRxqHD1zBh/R/yp1qqYxbLctKx7YWFTW7dMBYqhN1X0Ro1iE9SFeY9Ag
	ukykLcZOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf0BM-0004Zs-Ay; Sat, 30 May 2020 12:01:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf0BI-0004ZU-It
 for linux-riscv@lists.infradead.org; Sat, 30 May 2020 12:01:42 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D23F020723;
 Sat, 30 May 2020 12:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590840100;
 bh=XN2FXLOVTX6ziKqEiYUpLauDvM34xiH/PgeSdwapEoM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vHSB7u6bDHC3Vnx58flh8rDJh48QbPo2VWKKGjSrGxkIFQsC/XZPtp89EZ9wVYjLq
 6kPHTP878plR1vmbzyrkkYAlANka2mJNTMkWaXWwa0ZeQIEY546VZSfet/ikP8VS+7
 d/P0arJTw3FiE7APxyBlt4TXMagD/PD+K+AGy7V0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jf0BG-00GXBm-7Y; Sat, 30 May 2020 13:01:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Sat, 30 May 2020 13:01:38 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <anup.patel@wdc.com>
Subject: Re: [PATCH v6 3/6] irqchip: RISC-V per-HART local interrupt
 controller driver
In-Reply-To: <20200530100725.265481-4-anup.patel@wdc.com>
References: <20200530100725.265481-1-anup.patel@wdc.com>
 <20200530100725.265481-4-anup.patel@wdc.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <cd4a5513197b73e3b8d335f09117bb8d@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: anup.patel@wdc.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, aou@eecs.berkeley.edu, daniel.lezcano@linaro.org,
 tglx@linutronix.de, jason@lakedaemon.net, atish.patra@wdc.com,
 Alistair.Francis@wdc.com, anup@brainfault.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, palmerdabbelt@google.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_050140_667760_A56BE3D4 
X-CRM114-Status: GOOD (  34.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Anup Patel <anup@brainfault.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-05-30 11:07, Anup Patel wrote:
> The RISC-V per-HART local interrupt controller manages software
> interrupts, timer interrupts, external interrupts (which are routed
> via the platform level interrupt controller) and other per-HART
> local interrupts.
> 
> This patch adds a driver for the RISC-V local interrupt controller.

Please don't use "This patch...". Say something like:

"Add a driver driver for this component, which eventually replaces
  the RISC-V architecture code, allowing for a better split between
  arch code and drivers."

> It is a major re-write over perviously submitted version.
> (Refer, https://www.spinics.net/lists/devicetree/msg241230.html)

I'm not sure that's very useful. Again, this is better placed in the
cover letter, and can be retrived via the Link: tags.

> The driver is compliant with RISC-V Hart-Level Interrupt Controller
> DT bindings located at:
> Documentation/devicetree/bindings/interrupt-controller/riscv,cpu-intc.txt
> 
> Co-developed-by: Palmer Dabbelt <palmer@dabbelt.com>
> Signed-off-by: Palmer Dabbelt <palmer@dabbelt.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/Kconfig                |   1 +
>  arch/riscv/include/asm/irq.h      |   2 -
>  arch/riscv/kernel/irq.c           |  33 +------
>  arch/riscv/kernel/traps.c         |   2 -
>  drivers/irqchip/Kconfig           |  13 +++
>  drivers/irqchip/Makefile          |   1 +
>  drivers/irqchip/irq-riscv-intc.c  | 148 ++++++++++++++++++++++++++++++
>  drivers/irqchip/irq-sifive-plic.c |  30 ++++--
>  include/linux/cpuhotplug.h        |   1 +
>  9 files changed, 191 insertions(+), 40 deletions(-)
>  create mode 100644 drivers/irqchip/irq-riscv-intc.c
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 90a008e28f7e..822cb0e1a380 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -40,6 +40,7 @@ config RISCV
>  	select HAVE_PERF_REGS
>  	select HAVE_PERF_USER_STACK_DUMP
>  	select HAVE_SYSCALL_TRACEPOINTS
> +	select HANDLE_DOMAIN_IRQ
>  	select IRQ_DOMAIN
>  	select SPARSE_IRQ
>  	select SYSCTL_EXCEPTION_TRACE
> diff --git a/arch/riscv/include/asm/irq.h 
> b/arch/riscv/include/asm/irq.h
> index 0183e15ace66..a9e5f07a7e9c 100644
> --- a/arch/riscv/include/asm/irq.h
> +++ b/arch/riscv/include/asm/irq.h
> @@ -10,8 +10,6 @@
>  #include <linux/interrupt.h>
>  #include <linux/linkage.h>
> 
> -#define NR_IRQS         0
> -
>  void riscv_timer_interrupt(void);
> 
>  #include <asm-generic/irq.h>
> diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
> index bb0bfcd537e7..eb8777642ce6 100644
> --- a/arch/riscv/kernel/irq.c
> +++ b/arch/riscv/kernel/irq.c
> @@ -7,7 +7,6 @@
> 
>  #include <linux/interrupt.h>
>  #include <linux/irqchip.h>
> -#include <linux/irqdomain.h>
>  #include <linux/seq_file.h>
>  #include <asm/smp.h>
> 
> @@ -19,39 +18,13 @@ int arch_show_interrupts(struct seq_file *p, int 
> prec)
> 
>  asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
>  {
> -	struct pt_regs *old_regs;
> -
> -	switch (regs->cause & ~CAUSE_IRQ_FLAG) {
> -	case RV_IRQ_TIMER:
> -		old_regs = set_irq_regs(regs);
> -		irq_enter();
> -		riscv_timer_interrupt();
> -		irq_exit();
> -		set_irq_regs(old_regs);
> -		break;
> -#ifdef CONFIG_SMP
> -	case RV_IRQ_SOFT:
> -		/*
> -		 * We only use software interrupts to pass IPIs, so if a non-SMP
> -		 * system gets one, then we don't know what to do.
> -		 */
> -		handle_IPI(regs);
> -		break;
> -#endif
> -	case RV_IRQ_EXT:
> -		old_regs = set_irq_regs(regs);
> -		irq_enter();
> +	if (handle_arch_irq)
>  		handle_arch_irq(regs);
> -		irq_exit();
> -		set_irq_regs(old_regs);
> -		break;
> -	default:
> -		pr_alert("unexpected interrupt cause 0x%lx", regs->cause);
> -		BUG();
> -	}
>  }
> 
>  void __init init_IRQ(void)
>  {
>  	irqchip_init();
> +	if (!handle_arch_irq)
> +		panic("No interrupt controller found.");
>  }
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index 7f58fa53033f..f48c76aadbf3 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -178,6 +178,4 @@ void trap_init(void)
>  	csr_write(CSR_SCRATCH, 0);
>  	/* Set the exception vector address */
>  	csr_write(CSR_TVEC, &handle_exception);
> -	/* Enable interrupts */
> -	csr_write(CSR_IE, IE_SIE);
>  }
> diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> index a85aada04a64..95d6137a8117 100644
> --- a/drivers/irqchip/Kconfig
> +++ b/drivers/irqchip/Kconfig
> @@ -493,6 +493,19 @@ config TI_SCI_INTA_IRQCHIP
>  	  If you wish to use interrupt aggregator irq resources managed by 
> the
>  	  TI System Controller, say Y here. Otherwise, say N.
> 
> +config RISCV_INTC
> +	bool "RISC-V Local Interrupt Controller"
> +	depends on RISCV
> +	default y
> +	help
> +	   This enables support for the per-HART local interrupt controller
> +	   found in standard RISC-V systems.  The per-HART local interrupt
> +	   controller handles timer interrupts, software interrupts, and
> +	   hardware interrupts. Without a per-HART local interrupt 
> controller,
> +	   a RISC-V system will be unable to handle any interrupts.
> +
> +	   If you don't know what to do here, say Y.
> +
>  config SIFIVE_PLIC
>  	bool "SiFive Platform-Level Interrupt Controller"
>  	depends on RISCV
> diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> index 37bbe39bf909..b8319f045472 100644
> --- a/drivers/irqchip/Makefile
> +++ b/drivers/irqchip/Makefile
> @@ -98,6 +98,7 @@ obj-$(CONFIG_NDS32)			+= irq-ativic32.o
>  obj-$(CONFIG_QCOM_PDC)			+= qcom-pdc.o
>  obj-$(CONFIG_CSKY_MPINTC)		+= irq-csky-mpintc.o
>  obj-$(CONFIG_CSKY_APB_INTC)		+= irq-csky-apb-intc.o
> +obj-$(CONFIG_RISCV_INTC)		+= irq-riscv-intc.o
>  obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
>  obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
>  obj-$(CONFIG_IMX_INTMUX)		+= irq-imx-intmux.o
> diff --git a/drivers/irqchip/irq-riscv-intc.c 
> b/drivers/irqchip/irq-riscv-intc.c
> new file mode 100644
> index 000000000000..84e7bda3a090
> --- /dev/null
> +++ b/drivers/irqchip/irq-riscv-intc.c
> @@ -0,0 +1,148 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2012 Regents of the University of California
> + * Copyright (C) 2017-2018 SiFive
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +#define pr_fmt(fmt) "riscv-intc: " fmt
> +#include <linux/atomic.h>
> +#include <linux/bits.h>
> +#include <linux/cpu.h>
> +#include <linux/irq.h>
> +#include <linux/irqchip.h>
> +#include <linux/irqdomain.h>
> +#include <linux/interrupt.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/smp.h>
> +
> +static struct irq_domain *intc_domain;
> +
> +static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
> +{
> +	struct pt_regs *old_regs;
> +	unsigned long cause = regs->cause & ~CAUSE_IRQ_FLAG;
> +
> +	if (unlikely(cause >= BITS_PER_LONG))
> +		panic("unexpected interrupt cause");
> +
> +	switch (cause) {
> +	case RV_IRQ_TIMER:
> +		old_regs = set_irq_regs(regs);
> +		irq_enter();
> +		riscv_timer_interrupt();
> +		irq_exit();
> +		set_irq_regs(old_regs);
> +		break;
> +#ifdef CONFIG_SMP
> +	case RV_IRQ_SOFT:
> +		/*
> +		 * We only use software interrupts to pass IPIs, so if a
> +		 * non-SMP system gets one, then we don't know what to do.
> +		 */
> +		handle_IPI(regs);
> +		break;
> +#endif
> +	default:
> +		handle_domain_irq(intc_domain, cause, regs);
> +		break;
> +	}
> +}
> +
> +/*
> + * On RISC-V systems local interrupts are masked or unmasked by 
> writing
> + * the SIE (Supervisor Interrupt Enable) CSR.  As CSRs can only be 
> written
> + * on the local hart, these functions can only be called on the hart 
> that
> + * corresponds to the IRQ chip.
> + */
> +
> +static void riscv_intc_irq_mask(struct irq_data *d)
> +{
> +	csr_clear(CSR_IE, 1UL << d->hwirq);

As I mentionned earlier, BIT(d->hwirq) is the way to write this.

> +}
> +
> +static void riscv_intc_irq_unmask(struct irq_data *d)
> +{
> +	csr_set(CSR_IE, 1UL << d->hwirq);
> +}
> +
> +static int riscv_intc_cpu_starting(unsigned int cpu)
> +{
> +	csr_write(CSR_IE, 1UL << RV_IRQ_SOFT);
> +	csr_write(CSR_IP, 0);
> +	return 0;
> +}
> +
> +static int riscv_intc_cpu_dying(unsigned int cpu)
> +{
> +	csr_clear(CSR_IE, 1UL << RV_IRQ_SOFT);
> +	return 0;
> +}
> +
> +static struct irq_chip riscv_intc_chip = {
> +	.name = "RISC-V INTC",
> +	.irq_mask = riscv_intc_irq_mask,
> +	.irq_unmask = riscv_intc_irq_unmask,
> +};
> +
> +static int riscv_intc_domain_map(struct irq_domain *d, unsigned int 
> irq,
> +				 irq_hw_number_t hwirq)
> +{
> +	irq_set_percpu_devid(irq);
> +	irq_domain_set_info(d, irq, hwirq, &riscv_intc_chip, d->host_data,
> +			    handle_percpu_devid_irq, NULL, NULL);
> +
> +	return 0;
> +}
> +
> +static const struct irq_domain_ops riscv_intc_domain_ops = {
> +	.map	= riscv_intc_domain_map,
> +	.xlate	= irq_domain_xlate_onecell,
> +};
> +
> +static int __init riscv_intc_init(struct device_node *node,
> +				  struct device_node *parent)
> +{
> +	int rc, hartid;
> +
> +	hartid = riscv_of_parent_hartid(node);
> +	if (hartid < 0) {
> +		pr_warn("unable to fine hart id for %pOF\n", node);
> +		return 0;
> +	}
> +
> +	/*
> +	 * The DT will have one INTC DT node under each CPU (or HART)
> +	 * DT node so riscv_intc_init() function will be called once
> +	 * for each INTC DT node. We only need to do INTC initialization
> +	 * for the INTC DT node belonging to boot CPU (or boot HART).
> +	 */
> +	if (riscv_hartid_to_cpuid(hartid) != smp_processor_id())
> +		return 0;
> +
> +	intc_domain = irq_domain_add_linear(node, BITS_PER_LONG,
> +					    &riscv_intc_domain_ops, NULL);
> +	if (!intc_domain) {
> +		rc = -ENXIO;
> +		pr_err("unable to add IRQ domain\n");
> +		return rc;

Also written as "return -ENXIO".

> +	}
> +
> +	rc = set_handle_irq(&riscv_intc_irq);
> +	if (rc) {
> +		pr_err("failed to set irq handler\n");
> +		return rc;
> +	}
> +
> +	cpuhp_setup_state(CPUHP_AP_IRQ_RISCV_STARTING,
> +			  "irqchip/riscv/intc:starting",
> +			  riscv_intc_cpu_starting,
> +			  riscv_intc_cpu_dying);
> +
> +	pr_info("%d local interrupts mapped\n", BITS_PER_LONG);
> +
> +	return 0;
> +}
> +
> +IRQCHIP_DECLARE(riscv, "riscv,cpu-intc", riscv_intc_init);
> diff --git a/drivers/irqchip/irq-sifive-plic.c
> b/drivers/irqchip/irq-sifive-plic.c
> index 16d31d114c30..cda2e246aee3 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -9,6 +9,7 @@
>  #include <linux/io.h>
>  #include <linux/irq.h>
>  #include <linux/irqchip.h>
> +#include <linux/irqchip/chained_irq.h>
>  #include <linux/irqdomain.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -76,6 +77,7 @@ struct plic_handler {
>  	void __iomem		*enable_base;
>  	struct plic_priv	*priv;
>  };
> +static int plic_parent_irq;
>  static bool plic_cpuhp_setup_done;
>  static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
> 
> @@ -219,15 +221,17 @@ static const struct irq_domain_ops 
> plic_irqdomain_ops = {
>   * that source ID back to the same claim register.  This automatically 
> enables
>   * and disables the interrupt, so there's nothing else to do.
>   */
> -static void plic_handle_irq(struct pt_regs *regs)
> +static void plic_handle_irq(struct irq_desc *desc)
>  {
>  	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> +	struct irq_chip *chip = irq_desc_get_chip(desc);
>  	void __iomem *claim = handler->hart_base + CONTEXT_CLAIM;
>  	irq_hw_number_t hwirq;
> 
>  	WARN_ON_ONCE(!handler->present);
> 
> -	csr_clear(CSR_IE, IE_EIE);
> +	chained_irq_enter(chip, desc);
> +
>  	while ((hwirq = readl(claim))) {
>  		int irq = irq_find_mapping(handler->priv->irqdomain, hwirq);
> 
> @@ -237,7 +241,8 @@ static void plic_handle_irq(struct pt_regs *regs)
>  		else
>  			generic_handle_irq(irq);
>  	}
> -	csr_set(CSR_IE, IE_EIE);
> +
> +	chained_irq_exit(chip, desc);
>  }
> 
>  static void plic_set_threshold(struct plic_handler *handler, u32 
> threshold)
> @@ -250,7 +255,8 @@ static int plic_dying_cpu(unsigned int cpu)
>  {
>  	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> 
> -	csr_clear(CSR_IE, IE_EIE);
> +	if (plic_parent_irq)
> +		disable_percpu_irq(plic_parent_irq);

Given what is below, is that something that can happen if 
plic_parent_irq is 0?

>  	plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);

Why do you need to both disable the interrupt *and* change the priority 
threshold? It seems to be that one of them should be enough, but my 
kno9wledge of the PLIC is limited. In any case, this would deserve a 
comment.

> 
>  	return 0;
> @@ -260,7 +266,11 @@ static int plic_starting_cpu(unsigned int cpu)
>  {
>  	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> 
> -	csr_set(CSR_IE, IE_EIE);
> +	if (plic_parent_irq)
> +		enable_percpu_irq(plic_parent_irq,
> +				  irq_get_trigger_type(plic_parent_irq));
> +	else
> +		pr_warn("cpu%d: parent irq not available\n");

What does it mean to carry on if the interrupt cannot be signaled?
Shouldn't you error out instead, and leave the CPU dead?

>  	plic_set_threshold(handler, PLIC_ENABLE_THRESHOLD);
> 
>  	return 0;
> @@ -273,6 +283,7 @@ static int __init plic_init(struct device_node 
> *node,
>  	u32 nr_irqs;
>  	struct plic_priv *priv;
>  	struct plic_handler *handler;
> +	struct of_phandle_args intc_args;

Unused variable?

> 
>  	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
> @@ -328,6 +339,14 @@ static int __init plic_init(struct device_node 
> *node,
>  			continue;
>  		}
> 
> +		/* Find parent domain and register chained handler */
> +		if (!plic_parent_irq && irq_find_host(parent.np)) {
> +			plic_parent_irq = irq_of_parse_and_map(node, i);
> +			if (plic_parent_irq)
> +				irq_set_chained_handler(plic_parent_irq,
> +							plic_handle_irq);
> +		}
> +
>  		/*
>  		 * When running in M-mode we need to ignore the S-mode handler.
>  		 * Here we assume it always comes later, but that might be a
> @@ -368,7 +387,6 @@ static int __init plic_init(struct device_node 
> *node,
> 
>  	pr_info("%pOFP: mapped %d interrupts with %d handlers for"
>  		" %d contexts.\n", node, nr_irqs, nr_handlers, nr_contexts);
> -	set_handle_irq(plic_handle_irq);
>  	return 0;
> 
>  out_iounmap:
> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> index 77d70b633531..57b1f8f777d9 100644
> --- a/include/linux/cpuhotplug.h
> +++ b/include/linux/cpuhotplug.h
> @@ -102,6 +102,7 @@ enum cpuhp_state {
>  	CPUHP_AP_IRQ_ARMADA_XP_STARTING,
>  	CPUHP_AP_IRQ_BCM2836_STARTING,
>  	CPUHP_AP_IRQ_MIPS_GIC_STARTING,
> +	CPUHP_AP_IRQ_RISCV_STARTING,
>  	CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
>  	CPUHP_AP_ARM_MVEBU_COHERENCY,
>  	CPUHP_AP_MICROCODE_LOADER,

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

