Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DD51E95CD
	for <lists+linux-riscv@lfdr.de>; Sun, 31 May 2020 07:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QThQvDUlQW0P0vH1dKGf+0hnFJHp3cD5XqUyNgteAO4=; b=GL1wr08vQCq4xjHjLhMoXJNOp
	U5GSdsBLw+/WqsNwBllEOegnSrs52U+4MaBNXYh++ZMmdZ3ZHzdDYcDXjn/cbxLCJakNceNjsM1ym
	Q9A9okkMhK6A/0nDDanrLBVwJGz7VxW2dj27+mjVVEJ8KPbXkrQo2OSCI3yiLvBlZTeWmqbGIFsdl
	PxWctp/Y67nqgLaWO5lxaAAle6xCprHNyo8t07+bwgRb9gmbRhg2tNWBzmHb7M08rTwZ6pYmIYB/F
	GkHUoRHH2i39XzTQ9Gr1rs0mSANkUPEmdUiM8sMKF/oIqeJ3Nvz5CMxd7E+S5WRR2fguqH+sMut/R
	v6y4Pn2bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfGej-0003fy-1b; Sun, 31 May 2020 05:37:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfGed-0003ej-KJ
 for linux-riscv@lists.infradead.org; Sun, 31 May 2020 05:37:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so8200726wro.1
 for <linux-riscv@lists.infradead.org>; Sat, 30 May 2020 22:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QThQvDUlQW0P0vH1dKGf+0hnFJHp3cD5XqUyNgteAO4=;
 b=i6XPZdFQATX1/51w087LeS5cPlPAAfScgXjSjzTax5W8TKdkkFOoTKQlM8HcW2/Ems
 QMpMqxL2KmY4gNfiNA/RaePz9XfAJMMmwmpeJyjfL/QW1HkpdWYbr26a7bweCbclwYeb
 gW9rftOGyUalJndrjlVW7y0XbiQpu9CvwEJwdaO41Meb+byPqOtXXrK6ss61ePNWV0eU
 2gjBVPHMqr05R0Dzj1/Tl+dMOI01sKb92/UashyGwMkwYIiK6Wguyrf7ubbmxGtsJEcD
 vNgbB5Okx8V6hvHS+VJBBNVWWLZptMkWrjbT3Ozu1L0Z0HjYbkFw4wMDv5XjIzWsmL8Z
 7kVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QThQvDUlQW0P0vH1dKGf+0hnFJHp3cD5XqUyNgteAO4=;
 b=NP6u6N26BkaN0FHEN3V2j3RGBObW433QMwzqeC+Imo9uQ8pY6sxU2e9zBIsWjWOjXo
 vk7rcqwbGViUYmsLkMLZ/RZHhHwOsz/gIyxmEnCb+Vt5Hf0IimwCfwGJX+qn3YNbySV1
 K46re7YNh8+5eboLpswnZU+RJaYNMK/WFZksnWbL/tng6uFC/dZCfDnXRyzAct5hHWpc
 MfnfH3/dOX8Qe4FgXjy56bmlFBGz1UhaOHr8Gc5mWDgWdhEzlomKYalh9Hz3Au1ySW9+
 mShXrm/7syfJyJMnCZixCBqXKowev36lruuh4Sfpo1u3RzdnhcqEaDm170gd/Hs2CuSS
 sdrg==
X-Gm-Message-State: AOAM533wt/ZdsyNUkuLVZ9+fhCLjuzvTg5Gad/7Y3XagKPF8Wl6OltLT
 LaKg2AGuISEzs9Dq/1LOGhGI8Rv9DFG+ldyagZHPJA==
X-Google-Smtp-Source: ABdhPJw8Ox4OLKbyQluf/O3Vx3AShA/R2/ISA2ZfNzljZ6n1BJZPFeahaFbGisW3d4pq34VKSP+boemLzMEFfdqY5QY=
X-Received: by 2002:a5d:4484:: with SMTP id j4mr15738747wrq.325.1590903418081; 
 Sat, 30 May 2020 22:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200530100725.265481-1-anup.patel@wdc.com>
 <20200530100725.265481-4-anup.patel@wdc.com>
 <cd4a5513197b73e3b8d335f09117bb8d@kernel.org>
In-Reply-To: <cd4a5513197b73e3b8d335f09117bb8d@kernel.org>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 31 May 2020 11:06:45 +0530
Message-ID: <CAAhSdy3cnZwnjpqWkixmZ5-fi=GK1cSUsjah=P3Yp5hjv382hg@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] irqchip: RISC-V per-HART local interrupt
 controller driver
To: Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_223703_778034_81F161D8 
X-CRM114-Status: GOOD (  34.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup.patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, May 30, 2020 at 5:31 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-05-30 11:07, Anup Patel wrote:
> > The RISC-V per-HART local interrupt controller manages software
> > interrupts, timer interrupts, external interrupts (which are routed
> > via the platform level interrupt controller) and other per-HART
> > local interrupts.
> >
> > This patch adds a driver for the RISC-V local interrupt controller.
>
> Please don't use "This patch...". Say something like:
>
> "Add a driver driver for this component, which eventually replaces
>   the RISC-V architecture code, allowing for a better split between
>   arch code and drivers."

Okay, will update.

>
> > It is a major re-write over perviously submitted version.
> > (Refer, https://www.spinics.net/lists/devicetree/msg241230.html)
>
> I'm not sure that's very useful. Again, this is better placed in the
> cover letter, and can be retrived via the Link: tags.

Okay, will update.

>
> > The driver is compliant with RISC-V Hart-Level Interrupt Controller
> > DT bindings located at:
> > Documentation/devicetree/bindings/interrupt-controller/riscv,cpu-intc.txt
> >
> > Co-developed-by: Palmer Dabbelt <palmer@dabbelt.com>
> > Signed-off-by: Palmer Dabbelt <palmer@dabbelt.com>
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
> > ---
> >  arch/riscv/Kconfig                |   1 +
> >  arch/riscv/include/asm/irq.h      |   2 -
> >  arch/riscv/kernel/irq.c           |  33 +------
> >  arch/riscv/kernel/traps.c         |   2 -
> >  drivers/irqchip/Kconfig           |  13 +++
> >  drivers/irqchip/Makefile          |   1 +
> >  drivers/irqchip/irq-riscv-intc.c  | 148 ++++++++++++++++++++++++++++++
> >  drivers/irqchip/irq-sifive-plic.c |  30 ++++--
> >  include/linux/cpuhotplug.h        |   1 +
> >  9 files changed, 191 insertions(+), 40 deletions(-)
> >  create mode 100644 drivers/irqchip/irq-riscv-intc.c
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index 90a008e28f7e..822cb0e1a380 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -40,6 +40,7 @@ config RISCV
> >       select HAVE_PERF_REGS
> >       select HAVE_PERF_USER_STACK_DUMP
> >       select HAVE_SYSCALL_TRACEPOINTS
> > +     select HANDLE_DOMAIN_IRQ
> >       select IRQ_DOMAIN
> >       select SPARSE_IRQ
> >       select SYSCTL_EXCEPTION_TRACE
> > diff --git a/arch/riscv/include/asm/irq.h
> > b/arch/riscv/include/asm/irq.h
> > index 0183e15ace66..a9e5f07a7e9c 100644
> > --- a/arch/riscv/include/asm/irq.h
> > +++ b/arch/riscv/include/asm/irq.h
> > @@ -10,8 +10,6 @@
> >  #include <linux/interrupt.h>
> >  #include <linux/linkage.h>
> >
> > -#define NR_IRQS         0
> > -
> >  void riscv_timer_interrupt(void);
> >
> >  #include <asm-generic/irq.h>
> > diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
> > index bb0bfcd537e7..eb8777642ce6 100644
> > --- a/arch/riscv/kernel/irq.c
> > +++ b/arch/riscv/kernel/irq.c
> > @@ -7,7 +7,6 @@
> >
> >  #include <linux/interrupt.h>
> >  #include <linux/irqchip.h>
> > -#include <linux/irqdomain.h>
> >  #include <linux/seq_file.h>
> >  #include <asm/smp.h>
> >
> > @@ -19,39 +18,13 @@ int arch_show_interrupts(struct seq_file *p, int
> > prec)
> >
> >  asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
> >  {
> > -     struct pt_regs *old_regs;
> > -
> > -     switch (regs->cause & ~CAUSE_IRQ_FLAG) {
> > -     case RV_IRQ_TIMER:
> > -             old_regs = set_irq_regs(regs);
> > -             irq_enter();
> > -             riscv_timer_interrupt();
> > -             irq_exit();
> > -             set_irq_regs(old_regs);
> > -             break;
> > -#ifdef CONFIG_SMP
> > -     case RV_IRQ_SOFT:
> > -             /*
> > -              * We only use software interrupts to pass IPIs, so if a non-SMP
> > -              * system gets one, then we don't know what to do.
> > -              */
> > -             handle_IPI(regs);
> > -             break;
> > -#endif
> > -     case RV_IRQ_EXT:
> > -             old_regs = set_irq_regs(regs);
> > -             irq_enter();
> > +     if (handle_arch_irq)
> >               handle_arch_irq(regs);
> > -             irq_exit();
> > -             set_irq_regs(old_regs);
> > -             break;
> > -     default:
> > -             pr_alert("unexpected interrupt cause 0x%lx", regs->cause);
> > -             BUG();
> > -     }
> >  }
> >
> >  void __init init_IRQ(void)
> >  {
> >       irqchip_init();
> > +     if (!handle_arch_irq)
> > +             panic("No interrupt controller found.");
> >  }
> > diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> > index 7f58fa53033f..f48c76aadbf3 100644
> > --- a/arch/riscv/kernel/traps.c
> > +++ b/arch/riscv/kernel/traps.c
> > @@ -178,6 +178,4 @@ void trap_init(void)
> >       csr_write(CSR_SCRATCH, 0);
> >       /* Set the exception vector address */
> >       csr_write(CSR_TVEC, &handle_exception);
> > -     /* Enable interrupts */
> > -     csr_write(CSR_IE, IE_SIE);
> >  }
> > diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> > index a85aada04a64..95d6137a8117 100644
> > --- a/drivers/irqchip/Kconfig
> > +++ b/drivers/irqchip/Kconfig
> > @@ -493,6 +493,19 @@ config TI_SCI_INTA_IRQCHIP
> >         If you wish to use interrupt aggregator irq resources managed by
> > the
> >         TI System Controller, say Y here. Otherwise, say N.
> >
> > +config RISCV_INTC
> > +     bool "RISC-V Local Interrupt Controller"
> > +     depends on RISCV
> > +     default y
> > +     help
> > +        This enables support for the per-HART local interrupt controller
> > +        found in standard RISC-V systems.  The per-HART local interrupt
> > +        controller handles timer interrupts, software interrupts, and
> > +        hardware interrupts. Without a per-HART local interrupt
> > controller,
> > +        a RISC-V system will be unable to handle any interrupts.
> > +
> > +        If you don't know what to do here, say Y.
> > +
> >  config SIFIVE_PLIC
> >       bool "SiFive Platform-Level Interrupt Controller"
> >       depends on RISCV
> > diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> > index 37bbe39bf909..b8319f045472 100644
> > --- a/drivers/irqchip/Makefile
> > +++ b/drivers/irqchip/Makefile
> > @@ -98,6 +98,7 @@ obj-$(CONFIG_NDS32)                 += irq-ativic32.o
> >  obj-$(CONFIG_QCOM_PDC)                       += qcom-pdc.o
> >  obj-$(CONFIG_CSKY_MPINTC)            += irq-csky-mpintc.o
> >  obj-$(CONFIG_CSKY_APB_INTC)          += irq-csky-apb-intc.o
> > +obj-$(CONFIG_RISCV_INTC)             += irq-riscv-intc.o
> >  obj-$(CONFIG_SIFIVE_PLIC)            += irq-sifive-plic.o
> >  obj-$(CONFIG_IMX_IRQSTEER)           += irq-imx-irqsteer.o
> >  obj-$(CONFIG_IMX_INTMUX)             += irq-imx-intmux.o
> > diff --git a/drivers/irqchip/irq-riscv-intc.c
> > b/drivers/irqchip/irq-riscv-intc.c
> > new file mode 100644
> > index 000000000000..84e7bda3a090
> > --- /dev/null
> > +++ b/drivers/irqchip/irq-riscv-intc.c
> > @@ -0,0 +1,148 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2012 Regents of the University of California
> > + * Copyright (C) 2017-2018 SiFive
> > + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> > + */
> > +
> > +#define pr_fmt(fmt) "riscv-intc: " fmt
> > +#include <linux/atomic.h>
> > +#include <linux/bits.h>
> > +#include <linux/cpu.h>
> > +#include <linux/irq.h>
> > +#include <linux/irqchip.h>
> > +#include <linux/irqdomain.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/smp.h>
> > +
> > +static struct irq_domain *intc_domain;
> > +
> > +static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
> > +{
> > +     struct pt_regs *old_regs;
> > +     unsigned long cause = regs->cause & ~CAUSE_IRQ_FLAG;
> > +
> > +     if (unlikely(cause >= BITS_PER_LONG))
> > +             panic("unexpected interrupt cause");
> > +
> > +     switch (cause) {
> > +     case RV_IRQ_TIMER:
> > +             old_regs = set_irq_regs(regs);
> > +             irq_enter();
> > +             riscv_timer_interrupt();
> > +             irq_exit();
> > +             set_irq_regs(old_regs);
> > +             break;
> > +#ifdef CONFIG_SMP
> > +     case RV_IRQ_SOFT:
> > +             /*
> > +              * We only use software interrupts to pass IPIs, so if a
> > +              * non-SMP system gets one, then we don't know what to do.
> > +              */
> > +             handle_IPI(regs);
> > +             break;
> > +#endif
> > +     default:
> > +             handle_domain_irq(intc_domain, cause, regs);
> > +             break;
> > +     }
> > +}
> > +
> > +/*
> > + * On RISC-V systems local interrupts are masked or unmasked by
> > writing
> > + * the SIE (Supervisor Interrupt Enable) CSR.  As CSRs can only be
> > written
> > + * on the local hart, these functions can only be called on the hart
> > that
> > + * corresponds to the IRQ chip.
> > + */
> > +
> > +static void riscv_intc_irq_mask(struct irq_data *d)
> > +{
> > +     csr_clear(CSR_IE, 1UL << d->hwirq);
>
> As I mentionned earlier, BIT(d->hwirq) is the way to write this.

Okay, will update here and below as well.

>
> > +}
> > +
> > +static void riscv_intc_irq_unmask(struct irq_data *d)
> > +{
> > +     csr_set(CSR_IE, 1UL << d->hwirq);
> > +}
> > +
> > +static int riscv_intc_cpu_starting(unsigned int cpu)
> > +{
> > +     csr_write(CSR_IE, 1UL << RV_IRQ_SOFT);
> > +     csr_write(CSR_IP, 0);
> > +     return 0;
> > +}
> > +
> > +static int riscv_intc_cpu_dying(unsigned int cpu)
> > +{
> > +     csr_clear(CSR_IE, 1UL << RV_IRQ_SOFT);
> > +     return 0;
> > +}
> > +
> > +static struct irq_chip riscv_intc_chip = {
> > +     .name = "RISC-V INTC",
> > +     .irq_mask = riscv_intc_irq_mask,
> > +     .irq_unmask = riscv_intc_irq_unmask,
> > +};
> > +
> > +static int riscv_intc_domain_map(struct irq_domain *d, unsigned int
> > irq,
> > +                              irq_hw_number_t hwirq)
> > +{
> > +     irq_set_percpu_devid(irq);
> > +     irq_domain_set_info(d, irq, hwirq, &riscv_intc_chip, d->host_data,
> > +                         handle_percpu_devid_irq, NULL, NULL);
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct irq_domain_ops riscv_intc_domain_ops = {
> > +     .map    = riscv_intc_domain_map,
> > +     .xlate  = irq_domain_xlate_onecell,
> > +};
> > +
> > +static int __init riscv_intc_init(struct device_node *node,
> > +                               struct device_node *parent)
> > +{
> > +     int rc, hartid;
> > +
> > +     hartid = riscv_of_parent_hartid(node);
> > +     if (hartid < 0) {
> > +             pr_warn("unable to fine hart id for %pOF\n", node);
> > +             return 0;
> > +     }
> > +
> > +     /*
> > +      * The DT will have one INTC DT node under each CPU (or HART)
> > +      * DT node so riscv_intc_init() function will be called once
> > +      * for each INTC DT node. We only need to do INTC initialization
> > +      * for the INTC DT node belonging to boot CPU (or boot HART).
> > +      */
> > +     if (riscv_hartid_to_cpuid(hartid) != smp_processor_id())
> > +             return 0;
> > +
> > +     intc_domain = irq_domain_add_linear(node, BITS_PER_LONG,
> > +                                         &riscv_intc_domain_ops, NULL);
> > +     if (!intc_domain) {
> > +             rc = -ENXIO;
> > +             pr_err("unable to add IRQ domain\n");
> > +             return rc;
>
> Also written as "return -ENXIO".

Okay, will update.

>
> > +     }
> > +
> > +     rc = set_handle_irq(&riscv_intc_irq);
> > +     if (rc) {
> > +             pr_err("failed to set irq handler\n");
> > +             return rc;
> > +     }
> > +
> > +     cpuhp_setup_state(CPUHP_AP_IRQ_RISCV_STARTING,
> > +                       "irqchip/riscv/intc:starting",
> > +                       riscv_intc_cpu_starting,
> > +                       riscv_intc_cpu_dying);
> > +
> > +     pr_info("%d local interrupts mapped\n", BITS_PER_LONG);
> > +
> > +     return 0;
> > +}
> > +
> > +IRQCHIP_DECLARE(riscv, "riscv,cpu-intc", riscv_intc_init);
> > diff --git a/drivers/irqchip/irq-sifive-plic.c
> > b/drivers/irqchip/irq-sifive-plic.c
> > index 16d31d114c30..cda2e246aee3 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -9,6 +9,7 @@
> >  #include <linux/io.h>
> >  #include <linux/irq.h>
> >  #include <linux/irqchip.h>
> > +#include <linux/irqchip/chained_irq.h>
> >  #include <linux/irqdomain.h>
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> > @@ -76,6 +77,7 @@ struct plic_handler {
> >       void __iomem            *enable_base;
> >       struct plic_priv        *priv;
> >  };
> > +static int plic_parent_irq;
> >  static bool plic_cpuhp_setup_done;
> >  static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
> >
> > @@ -219,15 +221,17 @@ static const struct irq_domain_ops
> > plic_irqdomain_ops = {
> >   * that source ID back to the same claim register.  This automatically
> > enables
> >   * and disables the interrupt, so there's nothing else to do.
> >   */
> > -static void plic_handle_irq(struct pt_regs *regs)
> > +static void plic_handle_irq(struct irq_desc *desc)
> >  {
> >       struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> > +     struct irq_chip *chip = irq_desc_get_chip(desc);
> >       void __iomem *claim = handler->hart_base + CONTEXT_CLAIM;
> >       irq_hw_number_t hwirq;
> >
> >       WARN_ON_ONCE(!handler->present);
> >
> > -     csr_clear(CSR_IE, IE_EIE);
> > +     chained_irq_enter(chip, desc);
> > +
> >       while ((hwirq = readl(claim))) {
> >               int irq = irq_find_mapping(handler->priv->irqdomain, hwirq);
> >
> > @@ -237,7 +241,8 @@ static void plic_handle_irq(struct pt_regs *regs)
> >               else
> >                       generic_handle_irq(irq);
> >       }
> > -     csr_set(CSR_IE, IE_EIE);
> > +
> > +     chained_irq_exit(chip, desc);
> >  }
> >
> >  static void plic_set_threshold(struct plic_handler *handler, u32
> > threshold)
> > @@ -250,7 +255,8 @@ static int plic_dying_cpu(unsigned int cpu)
> >  {
> >       struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> >
> > -     csr_clear(CSR_IE, IE_EIE);
> > +     if (plic_parent_irq)
> > +             disable_percpu_irq(plic_parent_irq);
>
> Given what is below, is that something that can happen if
> plic_parent_irq is 0?

For multiple PLIC instances, the plic_init() will be called once for each
PLIC instance. The "interrupts-extended" property of one of the PLIC DT
node must point to boot CPU INTC DT node for plic_parent_irq to be found.

The plic_parent_irq can be 0 only if none of PLIC DT nodes point to
boot CPU INTC DT node.

>
> >       plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
>
> Why do you need to both disable the interrupt *and* change the priority
> threshold? It seems to be that one of them should be enough, but my
> kno9wledge of the PLIC is limited. In any case, this would deserve a
> comment.

Okay, I will test and remove "disable the interrupt" part from plic_dying_cpu().

>
> >
> >       return 0;
> > @@ -260,7 +266,11 @@ static int plic_starting_cpu(unsigned int cpu)
> >  {
> >       struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> >
> > -     csr_set(CSR_IE, IE_EIE);
> > +     if (plic_parent_irq)
> > +             enable_percpu_irq(plic_parent_irq,
> > +                               irq_get_trigger_type(plic_parent_irq));
> > +     else
> > +             pr_warn("cpu%d: parent irq not available\n");
>
> What does it mean to carry on if the interrupt cannot be signaled?
> Shouldn't you error out instead, and leave the CPU dead?

The CPU is not dead if we cannot enable RISC-V INTC external
interrupt because the Timer and IPIs interrupts are always through
RISC-V INTC. The PLIC external interrupt not present for a CPU
only means that that CPU cannot receive peripherial interrupts.

On a sane RISC-V system, if PLIC is present then all CPUs should
be able to get RISC-V INTC external interrupt. Base on this rationale,
I have put a warning for plic_parent_irq == 0.

>
> >       plic_set_threshold(handler, PLIC_ENABLE_THRESHOLD);
> >
> >       return 0;
> > @@ -273,6 +283,7 @@ static int __init plic_init(struct device_node
> > *node,
> >       u32 nr_irqs;
> >       struct plic_priv *priv;
> >       struct plic_handler *handler;
> > +     struct of_phandle_args intc_args;
>
> Unused variable?

Okay, will update.

>
> >
> >       priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> >       if (!priv)
> > @@ -328,6 +339,14 @@ static int __init plic_init(struct device_node
> > *node,
> >                       continue;
> >               }
> >
> > +             /* Find parent domain and register chained handler */
> > +             if (!plic_parent_irq && irq_find_host(parent.np)) {
> > +                     plic_parent_irq = irq_of_parse_and_map(node, i);
> > +                     if (plic_parent_irq)
> > +                             irq_set_chained_handler(plic_parent_irq,
> > +                                                     plic_handle_irq);
> > +             }
> > +
> >               /*
> >                * When running in M-mode we need to ignore the S-mode handler.
> >                * Here we assume it always comes later, but that might be a
> > @@ -368,7 +387,6 @@ static int __init plic_init(struct device_node
> > *node,
> >
> >       pr_info("%pOFP: mapped %d interrupts with %d handlers for"
> >               " %d contexts.\n", node, nr_irqs, nr_handlers, nr_contexts);
> > -     set_handle_irq(plic_handle_irq);
> >       return 0;
> >
> >  out_iounmap:
> > diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> > index 77d70b633531..57b1f8f777d9 100644
> > --- a/include/linux/cpuhotplug.h
> > +++ b/include/linux/cpuhotplug.h
> > @@ -102,6 +102,7 @@ enum cpuhp_state {
> >       CPUHP_AP_IRQ_ARMADA_XP_STARTING,
> >       CPUHP_AP_IRQ_BCM2836_STARTING,
> >       CPUHP_AP_IRQ_MIPS_GIC_STARTING,
> > +     CPUHP_AP_IRQ_RISCV_STARTING,
> >       CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> >       CPUHP_AP_ARM_MVEBU_COHERENCY,
> >       CPUHP_AP_MICROCODE_LOADER,
>
> Thanks,
>
>          M.
> --
> Jazz is not dead. It just smells funny...

Regards,
Anup

