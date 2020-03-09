Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A9317DF37
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 12:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3DOoahQ1PheHlHbtOeqGWhIumotssVOAxZkAmMuoAH4=; b=DwBKYwHS4hY0IgxQHI25CKO9I
	LjOH5rrhdAFjc0xnGyCH+XkmAp/00sfBA4/ioevRnZevJM41VaH6JNTjhQuAJOOGtJsvFsgdNf3sL
	eqidfrkHCaHTCFfHXsueZ3f2xgKiyPmBCd2xeKIRLDNSW1m6mH2OKCBoxxgTj8bzo5aX9S0BoRWgT
	1Z+dhVA7g1LyvQLNp6QYzJFK2KOmppmgm2BKMOz/iEqUNucQtDdm9yvblvyz3Is15yMwS1ARTu0W3
	36hE4czMxEqDevnBcG1wGZOfnPNr6L2rQcKC61QpnLw2dRyotIybz/I0wHY/mCwLCHTrlkhoexssc
	yMHAveftQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBH4U-0001XZ-0v; Mon, 09 Mar 2020 11:59:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBH4O-0001XD-UI
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 11:59:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id z15so10745991wrl.1
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 04:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3DOoahQ1PheHlHbtOeqGWhIumotssVOAxZkAmMuoAH4=;
 b=IK7Nt0kLzMeejFpJTF5SCTmHSGV1Nu4QbomdOgQ+2J7xwaVGdZ5P0D9P6ShuTY80VJ
 8k1t7WcwGh6OUxEr2r3xfeSeDaL/UuovFnpqnLLZByfCOc3bkGWhxlEcH5ObgZqjIy1U
 C5Qqa1XVo3jVKVA6Rak8txjsiQaUjyVyrGPjrDoEQ4wzMVUQiDD1Zb4kVVkORqz6ziTz
 /YRery4g3bvDrvb6FFvFbZiAjpPeOU9e+uaGn8Dn8MEJXL1DH8OfXlhF6vtXUW+sREJx
 yO2ILNhZ71KDSl5D1/YCsgoxXdRzLl46/xYRjQhBrm1OdofMS7356aGKQhiYUxZw/YWO
 BRsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3DOoahQ1PheHlHbtOeqGWhIumotssVOAxZkAmMuoAH4=;
 b=QSvCFaEdBEcmSJy6LrRHgX3zGEpHRupyWPk6GLradk+xSVxXOgC49XLiqnwLu2H2tw
 a2R6A8YEisUAv5CsPsz+mOxH7JgEdu5c8LfJvDcFm9jWFbE9eHIJziHM/5ih2Go0ITZ7
 6xX8WWJDxUkVmXDcKhjK3dvgGSzCv0QscTfJqeVzEKSXGtmqpkEkjP40KxjRTKsNDYCP
 w4oaYFxsOBKTOPeO/QXVyj536/g+0Ue7zXpDseY46k5o7N05GWOc88+/eWONgvg7lUmt
 NVywp9Zg9VE8TB0kfZCN+2bH1ZSh5ZsXDCvt7nQ3wnd62ZN48x6rfv/eeuBG0PyyE73s
 VuBg==
X-Gm-Message-State: ANhLgQ02ve/YTYF7otAu2SATcZpZfgfcpIPqZPp1+ac4UbfWttxIuPYW
 0Ym+kaOHFoZ2sAbEHPp0voE6R5xAGm2PNGpJJ8Hgeg==
X-Google-Smtp-Source: ADFU+vu2k3XFkh2EFAUmkd9Xfnd1uVbJdQ9N9q8z0Q2zrXACWs4z0w/et24Au1O5PPYbm8Z3OpiiciiVYqdRejyguG8=
X-Received: by 2002:adf:a512:: with SMTP id i18mr20934685wrb.61.1583755179394; 
 Mon, 09 Mar 2020 04:59:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200309110211.91130-1-anup.patel@wdc.com>
 <20200309110211.91130-4-anup.patel@wdc.com>
In-Reply-To: <20200309110211.91130-4-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 9 Mar 2020 17:29:27 +0530
Message-ID: <CAAhSdy1OccjG__UXWput15cAto_RpR45oeZfS9=ajNgHVX-21g@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] irqchip: RISC-V Per-HART Local Interrupt
 Controller Driver
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_045941_106372_C2D0B6BD 
X-CRM114-Status: GOOD (  31.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Marc Zyngier <maz@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Fixed Marc's email address.

On Mon, Mar 9, 2020 at 4:33 PM Anup Patel <anup.patel@wdc.com> wrote:
>
> The RISC-V per-HART local interrupt controller manages software
> interrupts, timer interrupts, external interrupts (which are routed
> via the platform level interrupt controller) and other per-HART
> local interrupts.
>
> This patch add a driver for the RISC-V local interrupt controller.
> It is a major re-write over perviously submitted version.
> (Refer, https://www.spinics.net/lists/devicetree/msg241230.html)
>
> Few advantages of this new driver over previous one are:
> 1. It registers all local interrupts as per-CPU interrupts
> 2. The KVM RISC-V can use this driver to implement interrupt
>    handler for per-HART guest external interrupt defined by
>    the RISC-V H-Extension
> 3. In future, we can develop drivers for devices with per-HART
>    interrupts without changing arch code or this driver
>
> The RISC-V INTC driver is compliant with RISC-V Hart-Level Interrupt
> Controller DT bindings located at:
> Documentation/devicetree/bindings/interrupt-controller/riscv,cpu-intc.txt
>
> Signed-off-by: Palmer Dabbelt <palmer@dabbelt.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/Kconfig                |   1 +
>  arch/riscv/include/asm/irq.h      |   2 -
>  arch/riscv/kernel/irq.c           |  33 +------
>  arch/riscv/kernel/traps.c         |   2 -
>  drivers/irqchip/Kconfig           |  13 +++
>  drivers/irqchip/Makefile          |   1 +
>  drivers/irqchip/irq-riscv-intc.c  | 142 ++++++++++++++++++++++++++++++
>  drivers/irqchip/irq-sifive-plic.c |  26 ++++--
>  include/linux/cpuhotplug.h        |   1 +
>  9 files changed, 181 insertions(+), 40 deletions(-)
>  create mode 100644 drivers/irqchip/irq-riscv-intc.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 8027261584f7..c255ca3f454f 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -39,6 +39,7 @@ config RISCV
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
> index 16c59807da6a..dd709ef535ec 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -156,6 +156,4 @@ void trap_init(void)
>         csr_write(CSR_SCRATCH, 0);
>         /* Set the exception vector address */
>         csr_write(CSR_TVEC, &handle_exception);
> -       /* Enable interrupts */
> -       csr_write(CSR_IE, IE_SIE);
>  }
> diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> index 6d397732138d..cf7a4ce2f121 100644
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
> index eae0d78cbf22..31ba55d2b6fb 100644
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
> index 000000000000..e8f7af6dd3c2
> --- /dev/null
> +++ b/drivers/irqchip/irq-riscv-intc.c
> @@ -0,0 +1,142 @@
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
> +       csr_clear(sie, 1 << (long)d->hwirq);
> +}
> +
> +static void riscv_intc_irq_unmask(struct irq_data *d)
> +{
> +       csr_set(sie, 1 << (long)d->hwirq);
> +}
> +
> +static int riscv_intc_cpu_starting(unsigned int cpu)
> +{
> +       csr_write(sie, 1UL << RV_IRQ_SOFT);
> +       csr_write(sip, 0);
> +       return 0;
> +}
> +
> +static int riscv_intc_cpu_dying(unsigned int cpu)
> +{
> +       csr_clear(sie, 1UL << RV_IRQ_SOFT);
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
> +       irq_set_status_flags(irq, IRQ_NOAUTOEN);
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
> +       int hartid;
> +
> +       /*
> +        * RISC-V device trees have one INTC DT node under each
> +        * CPU/HART DT node so INTC init function will be called
> +        * once for each INTC DT node. We only need to do INTC
> +        * init once for the boot CPU/HART.
> +        */
> +       hartid = riscv_of_parent_hartid(node);
> +       if (hartid < 0)
> +               return 0;
> +       if (riscv_hartid_to_cpuid(hartid) != smp_processor_id())
> +               return 0;
> +
> +       intc_domain = irq_domain_add_linear(node, BITS_PER_LONG,
> +                                           &riscv_intc_domain_ops, NULL);
> +       if (!intc_domain)
> +               goto error_add_linear;
> +
> +       set_handle_irq(&riscv_intc_irq);
> +
> +       cpuhp_setup_state(CPUHP_AP_IRQ_RISCV_STARTING,
> +                         "irqchip/riscv/intc:starting",
> +                         riscv_intc_cpu_starting,
> +                         riscv_intc_cpu_dying);
> +
> +       pr_info("%lu local interrupts mapped\n", (long)BITS_PER_LONG);
> +
> +       return 0;
> +
> +error_add_linear:
> +       pr_warn("unable to add IRQ domain\n");
> +       return -ENXIO;
> +}
> +
> +IRQCHIP_DECLARE(riscv, "riscv,cpu-intc", riscv_intc_init);
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index be05d13e30e8..803db7e9ccfb 100644
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
> @@ -60,6 +61,7 @@
>  #define        PLIC_ENABLE_THRESHOLD           0
>
>  struct plic_priv {
> +       int parent_irq;
>         struct cpumask lmask;
>         struct irq_domain *irqdomain;
>         void __iomem *regs;
> @@ -215,15 +217,17 @@ static const struct irq_domain_ops plic_irqdomain_ops = {
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
> @@ -233,7 +237,8 @@ static void plic_handle_irq(struct pt_regs *regs)
>                 else
>                         generic_handle_irq(irq);
>         }
> -       csr_set(CSR_IE, IE_EIE);
> +
> +       chained_irq_exit(chip, desc);
>  }
>
>  static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
> @@ -246,7 +251,8 @@ static int plic_dying_cpu(unsigned int cpu)
>  {
>         struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
>
> -       csr_clear(CSR_IE, IE_EIE);
> +       if (handler->priv->parent_irq)
> +               disable_percpu_irq(handler->priv->parent_irq);
>         plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
>
>         return 0;
> @@ -255,8 +261,10 @@ static int plic_dying_cpu(unsigned int cpu)
>  static int plic_starting_cpu(unsigned int cpu)
>  {
>         struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> +       int pirq = handler->priv->parent_irq;
>
> -       csr_set(CSR_IE, IE_EIE);
> +       if (pirq)
> +               enable_percpu_irq(pirq, irq_get_trigger_type(pirq));
>         plic_set_threshold(handler, PLIC_ENABLE_THRESHOLD);
>
>         return 0;
> @@ -314,6 +322,13 @@ static int __init plic_init(struct device_node *node,
>                 if (parent.args[0] != RV_IRQ_EXT)
>                         continue;
>
> +               if (irq_find_host(parent.np)) {
> +                       priv->parent_irq = irq_of_parse_and_map(node, i);
> +                       if (priv->parent_irq)
> +                               irq_set_chained_handler(priv->parent_irq,
> +                                                       plic_handle_irq);
> +               }
> +
>                 hartid = riscv_of_parent_hartid(parent.np);
>                 if (hartid < 0) {
>                         pr_warn("failed to parse hart ID for context %d.\n", i);
> @@ -357,7 +372,6 @@ static int __init plic_init(struct device_node *node,
>                                   plic_starting_cpu, plic_dying_cpu);
>         pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
>                 nr_irqs, nr_handlers, nr_contexts);
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
> 2.17.1
>

