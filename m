Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC00172FA6
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Feb 2020 05:07:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ewepA6A5EPrkNLYzTlzcsz7dqTq31SaZvuQxYyFAbfI=; b=kqh6l40PYEMyOmjdA48J3v3IF
	eGxt05NhrOXBtWwk1LdOSnC+nCpz3D1X10RZ6KCXUvou00JzOgEJQqqXcNUy+/P/NayogRE4p8rK0
	wzFSC2Y9vQ+op54WDlkGm1dGgZjp3dZNLGAawLOKrlLkg8l/2KXevNSzvUfGrba5OcNqAGBTn3vC+
	hnMs7hr0aBNGkEN6m3hNnpzx60MgFayydwzb2dw1LjQeny5eHqsGserBI4v6H5Le0qaEvUV1YxAWH
	DNZf7EhbCbGwONMr9bVDu59ddUkmHvIJSfa3dNyn1vnpMcvMSLbVTkaDuMVocCtQSOcap3esfiK/1
	zoMFgIlrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Wvj-0005Xy-DX; Fri, 28 Feb 2020 04:07:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Wvg-0005Xd-0x
 for linux-riscv@lists.infradead.org; Fri, 28 Feb 2020 04:07:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id p18so1360534wre.9
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 20:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ewepA6A5EPrkNLYzTlzcsz7dqTq31SaZvuQxYyFAbfI=;
 b=aJXArypdb8YSjiy82VtS506SzjQLFjitXhQoSZchl/bHrgQRwdKILjDq05a0PNq8+6
 Phiyg1F3eb+ve75BcqYQcAlC022Gdk1wW9ZiTjLFtVizOewY7ZRrDfb0Oo0SJOLdnjWO
 jolB5bsi6kaB+2Ue/+4WxjLODxE/m1R23YBbyuZk0o28UFvwUDkLAYe+9D2GeVU2ZKhC
 BuOh0J9Cu45YrWoO3n4zAt9RrRfE3NVcixeED/v24P+ROCguN8nWnObzJID7Hau7tpRu
 Wsu43Wv5vMlE+0UFOr9iUcp6HmzQucL/8z/Uyy5hBFkoOfLrQwjqqwhKKVkBjKFckKrJ
 tnpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ewepA6A5EPrkNLYzTlzcsz7dqTq31SaZvuQxYyFAbfI=;
 b=bd8y44EN0xIfWumk1dusWCJWRB2J5gzxJGo5xFJtYbHsfKxlQ21dlW6SFZQCR3J+W3
 5UpEYyWPILV13yq9hTSPDa3rT0+6M2i9ygn7yyhQvb2gn/66jwgXTISYJ1owzyKT5xer
 SPmVz2Cycf2SXN+2UZkxkgGIDNfFxFNnkUnN7KeNzgyn48GfIxQ/8fks5V6lVDFvlMVp
 zRJEoX2DTGc5aHz4Pq0LBQqJCINuBHKp3lOtlIkYdTyNYdcXNgaH6JQpVQZuytkAYUhH
 7S1r5bWsAD19lT3iPtNCNHlMBIPt3Y6XjJhw9QBYH0Ubk62Xh7z3XEWsx9sAA8kHC/Sj
 By4Q==
X-Gm-Message-State: APjAAAUUlfaFFXT6G5d1r1irvJDtp1AXZSV5sOoooRW9DFD5Odaqjzpp
 Xea276cuBm1vcpfDl0U/82z1zcT3RE/TNX/QofcDng==
X-Google-Smtp-Source: APXvYqx3aSeFT0T66ZIoDOELyPe1q3VSgmUV4rr0fP138xuz86oiPEOpUVL/hE+Nn783rwfKlhUgV8lAFND7Wg6B9U8=
X-Received: by 2002:a05:6000:4a:: with SMTP id
 k10mr2330223wrx.381.1582862829307; 
 Thu, 27 Feb 2020 20:07:09 -0800 (PST)
MIME-Version: 1.0
References: <20200221232246.9176-1-atish.patra@wdc.com>
In-Reply-To: <20200221232246.9176-1-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 28 Feb 2020 09:36:57 +0530
Message-ID: <CAAhSdy3ak=XJc0t5OpMuxmZ=u-N5jtMXCBw1qt93vBMpTR6DYg@mail.gmail.com>
Subject: Re: [v2 PATCH] irqchip/sifive-plic: Add support for multiple PLICs
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_200712_094312_49F88458 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 4:53 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> Current, PLIC driver can support only 1 PLIC on the board. However,
> there can be multiple PLICs present on a two socket systems in RISC-V.
>
> Modify the driver so that each PLIC handler can have a information
> about individual PLIC registers and an irqdomain associated with it.
>
> Tested on two socket RISC-V system based on VCU118 FPGA connected via
> OmniXtend protocol.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
> This patch is rebased on top of 5.6-rc2 and following plic fix from
> hotplug series.
>
> https://lkml.org/lkml/2020/2/20/1220
>
> Changes from v1->v2:
> 1. Use irq_chip_get_data to retrieve host_data
> 2. Renamed plic_hw to plic_node_ctx
> ---
>  drivers/irqchip/irq-sifive-plic.c | 82 ++++++++++++++++++++-----------
>  1 file changed, 52 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index 7c7f37393f99..9b9b6f4def4f 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -59,7 +59,11 @@
>  #define        PLIC_DISABLE_THRESHOLD          0xf
>  #define        PLIC_ENABLE_THRESHOLD           0
>
> -static void __iomem *plic_regs;
> +struct plic_node_ctx {

I think "plic_node_ctx" is a non-trivial name. I guess much
simpler and cleaner name will be "plic_priv" because this
structure represents private data for each PLIC instance.

> +       struct cpumask lmask;
> +       struct irq_domain *irqdomain;
> +       void __iomem *regs;
> +};
>
>  struct plic_handler {
>         bool                    present;
> @@ -70,6 +74,7 @@ struct plic_handler {
>          */
>         raw_spinlock_t          enable_lock;
>         void __iomem            *enable_base;
> +       struct plic_node_ctx            *node_ctx;
>  };
>  static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
>
> @@ -88,31 +93,41 @@ static inline void plic_toggle(struct plic_handler *handler,
>  }
>
>  static inline void plic_irq_toggle(const struct cpumask *mask,
> -                                  int hwirq, int enable)
> +                                  struct irq_data *d, int enable)
>  {
>         int cpu;
> +       struct plic_node_ctx *node_ctx = irq_get_chip_data(d->irq);
>
> -       writel(enable, plic_regs + PRIORITY_BASE + hwirq * PRIORITY_PER_ID);
> +       writel(enable,
> +              node_ctx->regs + PRIORITY_BASE + d->hwirq * PRIORITY_PER_ID);
>         for_each_cpu(cpu, mask) {
>                 struct plic_handler *handler = per_cpu_ptr(&plic_handlers, cpu);
>
> -               if (handler->present)
> -                       plic_toggle(handler, hwirq, enable);
> +               if (handler->present &&
> +                   cpumask_test_cpu(cpu, &handler->node_ctx->lmask))
> +                       plic_toggle(handler, d->hwirq, enable);
>         }
>  }
>
>  static void plic_irq_unmask(struct irq_data *d)
>  {
> -       unsigned int cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
> -                                          cpu_online_mask);
> +       struct cpumask amask;
> +       unsigned int cpu;
> +       struct plic_node_ctx *node_ctx = irq_get_chip_data(d->irq);
> +
> +       cpumask_and(&amask, &node_ctx->lmask, cpu_online_mask);
> +       cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
> +                                          &amask);
>         if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
>                 return;
> -       plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
> +       plic_irq_toggle(cpumask_of(cpu), d, 1);
>  }
>
>  static void plic_irq_mask(struct irq_data *d)
>  {
> -       plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
> +       struct plic_node_ctx *node_ctx = irq_get_chip_data(d->irq);
> +
> +       plic_irq_toggle(&node_ctx->lmask, d, 0);
>  }
>
>  #ifdef CONFIG_SMP
> @@ -120,17 +135,21 @@ static int plic_set_affinity(struct irq_data *d,
>                              const struct cpumask *mask_val, bool force)
>  {
>         unsigned int cpu;
> +       struct cpumask amask;
> +       struct plic_node_ctx *node_ctx = irq_get_chip_data(d->irq);
> +
> +       cpumask_and(&amask, &node_ctx->lmask, mask_val);
>
>         if (force)
> -               cpu = cpumask_first(mask_val);
> +               cpu = cpumask_first(&amask);
>         else
> -               cpu = cpumask_any_and(mask_val, cpu_online_mask);
> +               cpu = cpumask_any_and(&amask, cpu_online_mask);
>
>         if (cpu >= nr_cpu_ids)
>                 return -EINVAL;
>
> -       plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
> -       plic_irq_toggle(cpumask_of(cpu), d->hwirq, 1);
> +       plic_irq_toggle(&node_ctx->lmask, d, 0);
> +       plic_irq_toggle(cpumask_of(cpu), d, 1);
>
>         irq_data_update_effective_affinity(d, cpumask_of(cpu));
>
> @@ -191,8 +210,6 @@ static const struct irq_domain_ops plic_irqdomain_ops = {
>         .free           = irq_domain_free_irqs_top,
>  };
>
> -static struct irq_domain *plic_irqdomain;
> -
>  /*
>   * Handling an interrupt is a two-step process: first you claim the interrupt
>   * by reading the claim register, then you complete the interrupt by writing
> @@ -209,7 +226,7 @@ static void plic_handle_irq(struct pt_regs *regs)
>
>         csr_clear(CSR_IE, IE_EIE);
>         while ((hwirq = readl(claim))) {
> -               int irq = irq_find_mapping(plic_irqdomain, hwirq);
> +               int irq = irq_find_mapping(handler->node_ctx->irqdomain, hwirq);
>
>                 if (unlikely(irq <= 0))
>                         pr_warn_ratelimited("can't find mapping for hwirq %lu\n",
> @@ -265,15 +282,17 @@ static int __init plic_init(struct device_node *node,
>  {
>         int error = 0, nr_contexts, nr_handlers = 0, i;
>         u32 nr_irqs;
> +       struct plic_node_ctx *node_ctx;
>
> -       if (plic_regs) {
> -               pr_warn("PLIC already present.\n");
> -               return -ENXIO;
> -       }
> +       node_ctx = kzalloc(sizeof(*node_ctx), GFP_KERNEL);
> +       if (!node_ctx)
> +               return -ENOMEM;
>
> -       plic_regs = of_iomap(node, 0);
> -       if (WARN_ON(!plic_regs))
> -               return -EIO;
> +       node_ctx->regs = of_iomap(node, 0);
> +       if (WARN_ON(!node_ctx->regs)) {
> +               error = -EIO;
> +               goto out_free_nctx;
> +       }
>
>         error = -EINVAL;
>         of_property_read_u32(node, "riscv,ndev", &nr_irqs);
> @@ -287,9 +306,9 @@ static int __init plic_init(struct device_node *node,
>                 goto out_iounmap;
>
>         error = -ENOMEM;
> -       plic_irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
> -                       &plic_irqdomain_ops, NULL);
> -       if (WARN_ON(!plic_irqdomain))
> +       node_ctx->irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
> +                       &plic_irqdomain_ops, node_ctx);
> +       if (WARN_ON(!node_ctx->irqdomain))
>                 goto out_iounmap;
>
>         for (i = 0; i < nr_contexts; i++) {
> @@ -334,13 +353,14 @@ static int __init plic_init(struct device_node *node,
>                         goto done;
>                 }
>
> +               cpumask_set_cpu(cpu, &node_ctx->lmask);
>                 handler->present = true;
>                 handler->hart_base =
> -                       plic_regs + CONTEXT_BASE + i * CONTEXT_PER_HART;
> +                       node_ctx->regs + CONTEXT_BASE + i * CONTEXT_PER_HART;
>                 raw_spin_lock_init(&handler->enable_lock);
>                 handler->enable_base =
> -                       plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
> -
> +                       node_ctx->regs + ENABLE_BASE + i * ENABLE_PER_HART;
> +               handler->node_ctx = node_ctx;
>  done:
>                 for (hwirq = 1; hwirq <= nr_irqs; hwirq++)
>                         plic_toggle(handler, hwirq, 0);
> @@ -356,7 +376,9 @@ static int __init plic_init(struct device_node *node,
>         return 0;
>
>  out_iounmap:
> -       iounmap(plic_regs);
> +       iounmap(node_ctx->regs);
> +out_free_nctx:
> +       kfree(node_ctx);
>         return error;
>  }
>
> --
> 2.25.0
>

Apart from above nit, looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

