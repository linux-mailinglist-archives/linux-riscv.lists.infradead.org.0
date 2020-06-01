Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D08F1EB01D
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 22:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bN+ei3A73nSgvkKipUqEDD3pmm932kw8MOu+a41Ji6M=; b=qXnOZd4TUUZac+wiSMGVwvsfw
	WU1EqRiGaPPaJOjPVc5xwSNgEW/yOdoxCexNiX21Gwj8nyhqayAN5oJTS6QZcJWR0Bx2SHgVM3HRH
	sLCYsZqQMsAILjjD526WdewFf0pFAATwmDgvmMe6nJboAMMPv2qv9VvDoxkG2tc+D+GqGYhOnQH4m
	5LGIhZiLlx65FQ3HqQHzgWrFYLsXOEUHnYa6P1913W+356R44Va6L3aN9pfFzvjMEz2De8sAi+MDI
	CAkbsNuBaRKCtEfnL6H3j7hnLIVLs0/1R4yWjVWUPlHcwBj592Pxu6ZcgrBvrN7Fxh9n/kcLVVCJw
	nhHAO/ytw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfquJ-0004RB-EM; Mon, 01 Jun 2020 20:19:39 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfquE-0004QT-KL
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 20:19:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so1076967wrn.11
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 13:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bN+ei3A73nSgvkKipUqEDD3pmm932kw8MOu+a41Ji6M=;
 b=q12zjIrg7pKSUCK6oytgGgeQZGSS5kZvcXXd49uaXHm+i0PEKVA330ZcdSGynAaP/c
 mwe8sC290rls7BaJjlujEjGc7uB2wG8NyH0Ijp5/Ccl+vRle5ypN1qTwoR3OHzw72/Dz
 MKNdExiFLtPXAwVe9n0Hh+HqKxyEj+E4h6LMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bN+ei3A73nSgvkKipUqEDD3pmm932kw8MOu+a41Ji6M=;
 b=fO6UyPjJrgVe5/ZBWQNhbgAEdaJWPagrr8KbJ0kqu2o/RdScYYV/lDi/okM0AE3Gtg
 2KplvR8c+cCOwXDZKTSb7s/YBWiYQkdnpvPtH/VYWOdZKLQO4ir32ay6KhfybDCy89LV
 PiXlNKNdyrFLt0/cZmt6vZkBJ3TPUbV3E22ISOlrwP85v98+MSMZQp2dxCIo+8t+mA85
 admc1nzlLfNA/gAlgGdnNeOyGhuic6u4eeAxWlyEq5M6j1mX6e1+uNRHYFhNVEqXGUsq
 JpyKH2MrKU5pIujuEqRXzwOUuPUuU7vbjJNCEssb9AHnSX2xg3VEPEGJKf85dSZLVV6h
 E0hA==
X-Gm-Message-State: AOAM5329MJuGVzu0htOVZuhbVBTV5UdDqqxuTrqcmNfcnNmdkr2YFmrX
 d2tW0lF6QO/N/y6qDH00nj1ScAMtsTUoeRUGmPgL
X-Google-Smtp-Source: ABdhPJwKL50LIsNtlbv037vFJ3j8PTtVuH/O6SHKhL8bqrheYjloLyCU7Z8ui+XsJaOhl0GEjti+/qWgW06LsB6uWJc=
X-Received: by 2002:a05:6000:10c3:: with SMTP id
 b3mr24904704wrx.53.1591042772542; 
 Mon, 01 Jun 2020 13:19:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200601091543.943678-1-anup.patel@wdc.com>
 <20200601091543.943678-4-anup.patel@wdc.com>
In-Reply-To: <20200601091543.943678-4-anup.patel@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Mon, 1 Jun 2020 13:19:21 -0700
Message-ID: <CAOnJCUKOje6Yd6FenAfjAABZNCpDH2YNyc=QbaV-gfy-+kzubw@mail.gmail.com>
Subject: Re: [PATCH v7 3/6] irqchip: RISC-V per-HART local interrupt
 controller driver
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_131934_695619_5B406310 
X-CRM114-Status: GOOD (  30.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 2:16 AM Anup Patel <anup.patel@wdc.com> wrote:
>
> The RISC-V per-HART local interrupt controller manages software
> interrupts, timer interrupts, external interrupts (which are routed
> via the platform level interrupt controller) and other per-HART
> local interrupts.
>
> We add a driver for the RISC-V local interrupt controller, which
> eventually replaces the RISC-V architecture code, allowing for a
> better split between arch code and drivers.
>
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
>  drivers/irqchip/irq-riscv-intc.c  | 146 ++++++++++++++++++++++++++++++
>  drivers/irqchip/irq-sifive-plic.c |  30 ++++--
>  include/linux/cpuhotplug.h        |   1 +
>  9 files changed, 188 insertions(+), 41 deletions(-)
>  create mode 100644 drivers/irqchip/irq-riscv-intc.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 90a008e28f7e..822cb0e1a380 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -40,6 +40,7 @@ config RISCV
>         select HAVE_PERF_REGS
>         select HAVE_PERF_USER_STACK_DUMP
>         select HAVE_SYSCALL_TRACEPOINTS
> +       select HANDLE_DOMAIN_IRQ
>         select IRQ_DOMAIN
>         select SPARSE_IRQ
>         select SYSCTL_EXCEPTION_TRACE
> diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
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
> @@ -19,39 +18,13 @@ int arch_show_interrupts(struct seq_file *p, int prec)
>
>  asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
>  {
> -       struct pt_regs *old_regs;
> -
> -       switch (regs->cause & ~CAUSE_IRQ_FLAG) {
> -       case RV_IRQ_TIMER:
> -               old_regs = set_irq_regs(regs);
> -               irq_enter();
> -               riscv_timer_interrupt();
> -               irq_exit();
> -               set_irq_regs(old_regs);
> -               break;
> -#ifdef CONFIG_SMP
> -       case RV_IRQ_SOFT:
> -               /*
> -                * We only use software interrupts to pass IPIs, so if a non-SMP
> -                * system gets one, then we don't know what to do.
> -                */
> -               handle_IPI(regs);
> -               break;
> -#endif
> -       case RV_IRQ_EXT:
> -               old_regs = set_irq_regs(regs);
> -               irq_enter();
> +       if (handle_arch_irq)
>                 handle_arch_irq(regs);
> -               irq_exit();
> -               set_irq_regs(old_regs);
> -               break;
> -       default:
> -               pr_alert("unexpected interrupt cause 0x%lx", regs->cause);
> -               BUG();
> -       }
>  }
>
>  void __init init_IRQ(void)
>  {
>         irqchip_init();
> +       if (!handle_arch_irq)
> +               panic("No interrupt controller found.");
>  }
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index 7f58fa53033f..f48c76aadbf3 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -178,6 +178,4 @@ void trap_init(void)
>         csr_write(CSR_SCRATCH, 0);
>         /* Set the exception vector address */
>         csr_write(CSR_TVEC, &handle_exception);
> -       /* Enable interrupts */
> -       csr_write(CSR_IE, IE_SIE);
>  }
> diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> index a85aada04a64..95d6137a8117 100644
> --- a/drivers/irqchip/Kconfig
> +++ b/drivers/irqchip/Kconfig
> @@ -493,6 +493,19 @@ config TI_SCI_INTA_IRQCHIP
>           If you wish to use interrupt aggregator irq resources managed by the
>           TI System Controller, say Y here. Otherwise, say N.
>
> +config RISCV_INTC
> +       bool "RISC-V Local Interrupt Controller"
> +       depends on RISCV
> +       default y
> +       help
> +          This enables support for the per-HART local interrupt controller
> +          found in standard RISC-V systems.  The per-HART local interrupt
> +          controller handles timer interrupts, software interrupts, and
> +          hardware interrupts. Without a per-HART local interrupt controller,
> +          a RISC-V system will be unable to handle any interrupts.
> +
> +          If you don't know what to do here, say Y.
> +
>  config SIFIVE_PLIC
>         bool "SiFive Platform-Level Interrupt Controller"
>         depends on RISCV
> diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> index 37bbe39bf909..b8319f045472 100644
> --- a/drivers/irqchip/Makefile
> +++ b/drivers/irqchip/Makefile
> @@ -98,6 +98,7 @@ obj-$(CONFIG_NDS32)                   += irq-ativic32.o
>  obj-$(CONFIG_QCOM_PDC)                 += qcom-pdc.o
>  obj-$(CONFIG_CSKY_MPINTC)              += irq-csky-mpintc.o
>  obj-$(CONFIG_CSKY_APB_INTC)            += irq-csky-apb-intc.o
> +obj-$(CONFIG_RISCV_INTC)               += irq-riscv-intc.o
>  obj-$(CONFIG_SIFIVE_PLIC)              += irq-sifive-plic.o
>  obj-$(CONFIG_IMX_IRQSTEER)             += irq-imx-irqsteer.o
>  obj-$(CONFIG_IMX_INTMUX)               += irq-imx-intmux.o
> diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
> new file mode 100644
> index 000000000000..a80fb1731c50
> --- /dev/null
> +++ b/drivers/irqchip/irq-riscv-intc.c
> @@ -0,0 +1,146 @@
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
> +       struct pt_regs *old_regs;
> +       unsigned long cause = regs->cause & ~CAUSE_IRQ_FLAG;
> +
> +       if (unlikely(cause >= BITS_PER_LONG))
> +               panic("unexpected interrupt cause");
> +
> +       switch (cause) {
> +       case RV_IRQ_TIMER:
> +               old_regs = set_irq_regs(regs);
> +               irq_enter();
> +               riscv_timer_interrupt();
> +               irq_exit();
> +               set_irq_regs(old_regs);
> +               break;
> +#ifdef CONFIG_SMP
> +       case RV_IRQ_SOFT:
> +               /*
> +                * We only use software interrupts to pass IPIs, so if a
> +                * non-SMP system gets one, then we don't know what to do.
> +                */
> +               handle_IPI(regs);
> +               break;
> +#endif
> +       default:
> +               handle_domain_irq(intc_domain, cause, regs);
> +               break;
> +       }
> +}
> +
> +/*
> + * On RISC-V systems local interrupts are masked or unmasked by writing
> + * the SIE (Supervisor Interrupt Enable) CSR.  As CSRs can only be written
> + * on the local hart, these functions can only be called on the hart that
> + * corresponds to the IRQ chip.
> + */
> +
> +static void riscv_intc_irq_mask(struct irq_data *d)
> +{
> +       csr_clear(CSR_IE, BIT(d->hwirq));
> +}
> +
> +static void riscv_intc_irq_unmask(struct irq_data *d)
> +{
> +       csr_set(CSR_IE, BIT(d->hwirq));
> +}
> +
> +static int riscv_intc_cpu_starting(unsigned int cpu)
> +{
> +       csr_set(CSR_IE, BIT(RV_IRQ_SOFT));
> +       return 0;
> +}
> +
> +static int riscv_intc_cpu_dying(unsigned int cpu)
> +{
> +       csr_clear(CSR_IE, BIT(RV_IRQ_SOFT));
> +       return 0;
> +}
> +
> +static struct irq_chip riscv_intc_chip = {
> +       .name = "RISC-V INTC",
> +       .irq_mask = riscv_intc_irq_mask,
> +       .irq_unmask = riscv_intc_irq_unmask,
> +};
> +
> +static int riscv_intc_domain_map(struct irq_domain *d, unsigned int irq,
> +                                irq_hw_number_t hwirq)
> +{
> +       irq_set_percpu_devid(irq);
> +       irq_domain_set_info(d, irq, hwirq, &riscv_intc_chip, d->host_data,
> +                           handle_percpu_devid_irq, NULL, NULL);
> +
> +       return 0;
> +}
> +
> +static const struct irq_domain_ops riscv_intc_domain_ops = {
> +       .map    = riscv_intc_domain_map,
> +       .xlate  = irq_domain_xlate_onecell,
> +};
> +
> +static int __init riscv_intc_init(struct device_node *node,
> +                                 struct device_node *parent)
> +{
> +       int rc, hartid;
> +
> +       hartid = riscv_of_parent_hartid(node);
> +       if (hartid < 0) {
> +               pr_warn("unable to fine hart id for %pOF\n", node);

/s/fine/find

> +               return 0;
> +       }
> +
> +       /*
> +        * The DT will have one INTC DT node under each CPU (or HART)
> +        * DT node so riscv_intc_init() function will be called once
> +        * for each INTC DT node. We only need to do INTC initialization
> +        * for the INTC DT node belonging to boot CPU (or boot HART).
> +        */
> +       if (riscv_hartid_to_cpuid(hartid) != smp_processor_id())
> +               return 0;
> +
> +       intc_domain = irq_domain_add_linear(node, BITS_PER_LONG,
> +                                           &riscv_intc_domain_ops, NULL);
> +       if (!intc_domain) {
> +               pr_err("unable to add IRQ domain\n");
> +               return -ENXIO;
> +       }
> +
> +       rc = set_handle_irq(&riscv_intc_irq);
> +       if (rc) {
> +               pr_err("failed to set irq handler\n");
> +               return rc;
> +       }
> +
> +       cpuhp_setup_state(CPUHP_AP_IRQ_RISCV_STARTING,
> +                         "irqchip/riscv/intc:starting",
> +                         riscv_intc_cpu_starting,
> +                         riscv_intc_cpu_dying);
> +
> +       pr_info("%d local interrupts mapped\n", BITS_PER_LONG);
> +
> +       return 0;
> +}
> +
> +IRQCHIP_DECLARE(riscv, "riscv,cpu-intc", riscv_intc_init);
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index 16d31d114c30..14a54e444e6a 100644
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
>         void __iomem            *enable_base;
>         struct plic_priv        *priv;
>  };
> +static int plic_parent_irq;
>  static bool plic_cpuhp_setup_done;
>  static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
>
> @@ -219,15 +221,17 @@ static const struct irq_domain_ops plic_irqdomain_ops = {
>   * that source ID back to the same claim register.  This automatically enables
>   * and disables the interrupt, so there's nothing else to do.
>   */
> -static void plic_handle_irq(struct pt_regs *regs)
> +static void plic_handle_irq(struct irq_desc *desc)
>  {
>         struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> +       struct irq_chip *chip = irq_desc_get_chip(desc);
>         void __iomem *claim = handler->hart_base + CONTEXT_CLAIM;
>         irq_hw_number_t hwirq;
>
>         WARN_ON_ONCE(!handler->present);
>
> -       csr_clear(CSR_IE, IE_EIE);
> +       chained_irq_enter(chip, desc);
> +
>         while ((hwirq = readl(claim))) {
>                 int irq = irq_find_mapping(handler->priv->irqdomain, hwirq);
>
> @@ -237,7 +241,8 @@ static void plic_handle_irq(struct pt_regs *regs)
>                 else
>                         generic_handle_irq(irq);
>         }
> -       csr_set(CSR_IE, IE_EIE);
> +
> +       chained_irq_exit(chip, desc);
>  }
>
>  static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
> @@ -250,8 +255,8 @@ static int plic_dying_cpu(unsigned int cpu)
>  {
>         struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
>
> -       csr_clear(CSR_IE, IE_EIE);
> -       plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
> +       if (plic_parent_irq)
> +               disable_percpu_irq(plic_parent_irq);
>
>         return 0;
>  }
> @@ -260,7 +265,11 @@ static int plic_starting_cpu(unsigned int cpu)
>  {
>         struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
>
> -       csr_set(CSR_IE, IE_EIE);
> +       if (plic_parent_irq)
> +               enable_percpu_irq(plic_parent_irq,
> +                                 irq_get_trigger_type(plic_parent_irq));
> +       else
> +               pr_warn("cpu%d: parent irq not available\n", cpu);
>         plic_set_threshold(handler, PLIC_ENABLE_THRESHOLD);
>
>         return 0;
> @@ -328,6 +337,14 @@ static int __init plic_init(struct device_node *node,
>                         continue;
>                 }
>
> +               /* Find parent domain and register chained handler */
> +               if (!plic_parent_irq && irq_find_host(parent.np)) {
> +                       plic_parent_irq = irq_of_parse_and_map(node, i);
> +                       if (plic_parent_irq)
> +                               irq_set_chained_handler(plic_parent_irq,
> +                                                       plic_handle_irq);
> +               }
> +

local interrupt controller driver is the parent irq domain and must be
called first for boot
cpu before plic_init() is called for boot cpu. This happens because
local cpu interrupt
controllers are always defined inside the cpu node and it is parsed
first before the plic node
which is defined under "/soc".

Is my understanding correct ?

>                 /*
>                  * When running in M-mode we need to ignore the S-mode handler.
>                  * Here we assume it always comes later, but that might be a
> @@ -368,7 +385,6 @@ static int __init plic_init(struct device_node *node,
>
>         pr_info("%pOFP: mapped %d interrupts with %d handlers for"
>                 " %d contexts.\n", node, nr_irqs, nr_handlers, nr_contexts);
> -       set_handle_irq(plic_handle_irq);
>         return 0;
>
>  out_iounmap:
> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> index 77d70b633531..57b1f8f777d9 100644
> --- a/include/linux/cpuhotplug.h
> +++ b/include/linux/cpuhotplug.h
> @@ -102,6 +102,7 @@ enum cpuhp_state {
>         CPUHP_AP_IRQ_ARMADA_XP_STARTING,
>         CPUHP_AP_IRQ_BCM2836_STARTING,
>         CPUHP_AP_IRQ_MIPS_GIC_STARTING,
> +       CPUHP_AP_IRQ_RISCV_STARTING,
>         CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
>         CPUHP_AP_ARM_MVEBU_COHERENCY,
>         CPUHP_AP_MICROCODE_LOADER,
> --
> 2.25.1
>
>

Otherwise, LGTM.
Reviewed-by: Atish Patra <atish.patra@wdc.com>
-- 
Regards,
Atish

