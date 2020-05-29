Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86FA1E7A1A
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 12:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F5V/EU4KaMvfe7xDx5oG43tdJOhxdbZLQcwC0qMnEAs=; b=tGXpKbjngEduabiXnaBkYyMCN
	nMKooBNzKBbd+k1cysOEfDwnsqkdB9JbDWDvmqN45wY5wPZ9tMxRir6+V9ds7N2CwnhulGeilAeGi
	FOI2cJgFeaZa+zXFZbMhFnwqKfN+EaQagGAppbxHX0lqiUH7m98rr1qu2LAHD7ZYMzIrVAwEo2oQP
	hdva6f3rfY0ovvuWcLKlmKmOmvUCXaiSekgihDyVuNTwNeGjflCM5W29rXQtkaO7ACUmkyNEX7Wlk
	WVu5rsz72wALWj+g14fqdBlfkgUXHbKRg8x08wANxnCPEIUdgcf7sil2AqJaz+G0fFPkmP76+DPgf
	gpdK6sbfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jebx0-0003Fk-La; Fri, 29 May 2020 10:09:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jebwv-0003FH-HI
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 10:09:15 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB5682074D;
 Fri, 29 May 2020 10:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590746953;
 bh=itAeVzo/Yqa1NjDviVmmAVLfLBGuZAOXeQpfMQz5YJY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cQbmiY2w/Eet4sWBxzdnz4S7nTM9UredecLtvttmHXInmQrkgLFE9MiAyF0i28ogh
 eEHkPO+bf15j0UjoLzOoZSJ9Ri/YH/JcDZzsgv2nZQ/bPjxYxH2g7zsYYf0HirYaEj
 7Wqo2crI6KDTbYiYsoxs4srs5/s/m8KdZ2DW6/f0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jebwt-00GEtH-5K; Fri, 29 May 2020 11:09:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 29 May 2020 11:09:11 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <anup.patel@wdc.com>
Subject: Re: [PATCH v5 3/6] irqchip: RISC-V per-HART local interrupt
 controller driver
In-Reply-To: <20200521133301.816665-4-anup.patel@wdc.com>
References: <20200521133301.816665-1-anup.patel@wdc.com>
 <20200521133301.816665-4-anup.patel@wdc.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <140c6fa723225ff138e8b39c4f16c9c0@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: anup.patel@wdc.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, aou@eecs.berkeley.edu, daniel.lezcano@linaro.org,
 tglx@linutronix.de, jason@lakedaemon.net, atish.patra@wdc.com,
 Alistair.Francis@wdc.com, anup@brainfault.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_030913_621032_D8BC5EF9 
X-CRM114-Status: GOOD (  37.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Anup Patel <anup@brainfault.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-05-21 14:32, Anup Patel wrote:
> The RISC-V per-HART local interrupt controller manages software
> interrupts, timer interrupts, external interrupts (which are routed
> via the platform level interrupt controller) and other per-HART
> local interrupts.
> 
> This patch adds a driver for the RISC-V local interrupt controller.
> It is a major re-write over perviously submitted version.
> (Refer, https://www.spinics.net/lists/devicetree/msg241230.html)
> 
> Few advantages of this new driver over previous one are:
> 1. All local interrupts are registered as per-CPU interrupts
> 2. The RISC-V timer driver can register timer interrupt handler
>    using kernel irq subsystem without relying on arch/riscv to
>    explicitly call it's interrupt handler
> 3. The KVM RISC-V can use this driver to implement interrupt
>    handler for per-HART guest external interrupt defined by
>    the RISC-V H-Extension
> 4. In future, we can develop drivers for devices with per-HART
>    interrupts without changing arch code or this driver (example,
>    CLINT timer driver for RISC-V M-mode kernel)

Most of this is cover letter material, and doesn't belong to the 
changelog.

> 
> The RISC-V INTC driver is compliant with RISC-V Hart-Level Interrupt
> Controller DT bindings located at:
> Documentation/devicetree/bindings/interrupt-controller/riscv,cpu-intc.txt
> 
> Signed-off-by: Palmer Dabbelt <palmer@dabbelt.com>

Is Palmer the author? If so, you're missing the 'From' line at the top.
Otherwise, you're missing a Co-developed-by tag.

> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/Kconfig                     |   1 +
>  arch/riscv/include/asm/irq.h           |   2 -
>  arch/riscv/kernel/irq.c                |  33 +-----
>  arch/riscv/kernel/traps.c              |   2 -
>  drivers/irqchip/Kconfig                |  13 ++
>  drivers/irqchip/Makefile               |   1 +
>  drivers/irqchip/irq-riscv-intc.c       | 158 +++++++++++++++++++++++++
>  drivers/irqchip/irq-sifive-plic.c      |  38 +++++-
>  include/linux/cpuhotplug.h             |   1 +
>  include/linux/irqchip/irq-riscv-intc.h |  20 ++++
>  10 files changed, 229 insertions(+), 40 deletions(-)
>  create mode 100644 drivers/irqchip/irq-riscv-intc.c
>  create mode 100644 include/linux/irqchip/irq-riscv-intc.h
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
> index 000000000000..2f364e6a87f9
> --- /dev/null
> +++ b/drivers/irqchip/irq-riscv-intc.c
> @@ -0,0 +1,158 @@
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
> +#include <linux/irqchip/irq-riscv-intc.h>
> +#include <linux/irqdomain.h>
> +#include <linux/interrupt.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/smp.h>
> +
> +static struct device_node *intc_domain_node;
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
> +	csr_clear(CSR_IE, 1 << (long)d->hwirq);

It feels pretty odd to cast a shift to a signed value. In any case, this
would look better as BIT(d->hwirq), all over the place.

> +}
> +
> +static void riscv_intc_irq_unmask(struct irq_data *d)
> +{
> +	csr_set(CSR_IE, 1 << (long)d->hwirq);
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
> +	irq_set_status_flags(irq, IRQ_NOAUTOEN);

As I was recently reminded, percpu_devid implies NO_AUTOEN.
This is thus supperfluous.

> +
> +	return 0;
> +}
> +
> +static const struct irq_domain_ops riscv_intc_domain_ops = {
> +	.map	= riscv_intc_domain_map,
> +	.xlate	= irq_domain_xlate_onecell,
> +};
> +
> +/* Get the OF device node used by INTC irq domain */
> +struct device_node *riscv_of_intc_domain_node(void)
> +{
> +	return intc_domain_node;
> +}
> +EXPORT_SYMBOL_GPL(riscv_of_intc_domain_node);

Why do you need this? Why can't the timer node refer to its
interrupt-parent? The irqchip shouldn't be in the business of
working around DT issues.

At worse, use the default irqdomain if you must, but please
avoid this kind of construct.

> +
> +static int __init riscv_intc_init(struct device_node *node,
> +				  struct device_node *parent)
> +{
> +	int hartid;
> +
> +	/*
> +	 * The DT will have one INTC DT node under each CPU (or HART)
> +	 * DT node so riscv_intc_init() function will be called once
> +	 * for each INTC DT node. We only need INTC initialization for
> +	 * the INTC DT node belonging to boot CPU (or boot HART).
> +	 */
> +	hartid = riscv_of_parent_hartid(node);
> +	if (hartid < 0)
> +		return 0;
> +	if (riscv_hartid_to_cpuid(hartid) != smp_processor_id())
> +		return 0;
> +
> +	intc_domain = irq_domain_add_linear(node, BITS_PER_LONG,
> +					    &riscv_intc_domain_ops, NULL);
> +	if (!intc_domain)
> +		goto error_add_linear;
> +
> +	/*
> +	 * We save the DT node used for creating irq domain and provide
> +	 * it to other drivers using iscv_of_intc_domain_node() function.
> +	 */
> +	intc_domain_node = of_node_get(node);
> +
> +	set_handle_irq(&riscv_intc_irq);
> +
> +	cpuhp_setup_state(CPUHP_AP_IRQ_RISCV_STARTING,
> +			  "irqchip/riscv/intc:starting",
> +			  riscv_intc_cpu_starting,
> +			  riscv_intc_cpu_dying);
> +
> +	pr_info("%lu local interrupts mapped\n", (long)BITS_PER_LONG);

Signed or unsigned? Pick one.

> +	return 0;
> +
> +error_add_linear:
> +	pr_warn("unable to add IRQ domain\n");
> +	return -ENXIO;
> +}
> +
> +IRQCHIP_DECLARE(riscv, "riscv,cpu-intc", riscv_intc_init);
> diff --git a/drivers/irqchip/irq-sifive-plic.c
> b/drivers/irqchip/irq-sifive-plic.c
> index 16d31d114c30..4f9b2877aa9d 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -9,6 +9,8 @@
>  #include <linux/io.h>
>  #include <linux/irq.h>
>  #include <linux/irqchip.h>
> +#include <linux/irqchip/chained_irq.h>
> +#include <linux/irqchip/irq-riscv-intc.h>
>  #include <linux/irqdomain.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -60,6 +62,7 @@
>  #define	PLIC_ENABLE_THRESHOLD		0
> 
>  struct plic_priv {
> +	int parent_irq;
>  	struct cpumask lmask;
>  	struct irq_domain *irqdomain;
>  	void __iomem *regs;
> @@ -219,15 +222,17 @@ static const struct irq_domain_ops 
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
> @@ -237,7 +242,8 @@ static void plic_handle_irq(struct pt_regs *regs)
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
> @@ -250,7 +256,8 @@ static int plic_dying_cpu(unsigned int cpu)
>  {
>  	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> 
> -	csr_clear(CSR_IE, IE_EIE);
> +	if (handler->priv->parent_irq)
> +		disable_percpu_irq(handler->priv->parent_irq);
>  	plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
> 
>  	return 0;
> @@ -259,8 +266,10 @@ static int plic_dying_cpu(unsigned int cpu)
>  static int plic_starting_cpu(unsigned int cpu)
>  {
>  	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> +	int pirq = handler->priv->parent_irq;
> 
> -	csr_set(CSR_IE, IE_EIE);
> +	if (pirq)
> +		enable_percpu_irq(pirq, irq_get_trigger_type(pirq));
>  	plic_set_threshold(handler, PLIC_ENABLE_THRESHOLD);
> 
>  	return 0;
> @@ -273,6 +282,7 @@ static int __init plic_init(struct device_node 
> *node,
>  	u32 nr_irqs;
>  	struct plic_priv *priv;
>  	struct plic_handler *handler;
> +	struct of_phandle_args intc_args;
> 
>  	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
> @@ -354,6 +364,23 @@ static int __init plic_init(struct device_node 
> *node,
>  		nr_handlers++;
>  	}
> 
> +	/*
> +	 * We can have multiple PLIC instances so setup chained handler
> +	 * for all PLIC instances.
> +	 */
> +	intc_args.np = riscv_of_intc_domain_node();
> +	intc_args.args_count = 1;
> +	intc_args.args[0] = RV_IRQ_EXT;
> +	priv->parent_irq = irq_create_of_mapping(&intc_args);
> +	if (priv->parent_irq)
> +		irq_set_chained_handler(priv->parent_irq,
> +					 plic_handle_irq);
> +	else {

Please use braces on both sides of the 'else'.

> +		pr_err("%pOFP: intc mapping failed\n", node);
> +		error = -ENODEV;
> +		goto out_iounmap;
> +	}
> +
>  	/*
>  	 * We can have multiple PLIC instances so setup cpuhp state only
>  	 * when context handler for current/boot CPU is present.
> @@ -368,7 +395,6 @@ static int __init plic_init(struct device_node 
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
> diff --git a/include/linux/irqchip/irq-riscv-intc.h
> b/include/linux/irqchip/irq-riscv-intc.h
> new file mode 100644
> index 000000000000..b11d38353099
> --- /dev/null
> +++ b/include/linux/irqchip/irq-riscv-intc.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +#ifndef __INCLUDE_LINUX_IRQCHIP_IRQ_RISCV_INTC_H
> +#define __INCLUDE_LINUX_IRQCHIP_IRQ_RISCV_INTC_H
> +
> +struct device_node;
> +
> +#ifdef CONFIG_RISCV_INTC
> +struct device_node *riscv_of_intc_domain_node(void);
> +#else
> +static inline struct device_node *riscv_of_intc_domain_node(void)
> +{
> +	return NULL;
> +}
> +#endif
> +
> +#endif

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

