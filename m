Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BF615A058
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 06:10:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wF5Xa3xZXNzgn21SJKWAvWiwP+pxClkAhr89+lwhg6k=; b=GSLK+wIBVxteg6B70ga8IyKeh
	gLuDD7/wUJ3KpdDhm086YvXg1us/3ki3YDuhYw87FUnCNKm9dQlHVuyzZuvHHgalD5qjVnLXtpNjA
	g01hrahD8KTeSfx54WviwUHtFx6Ra7bMi8BegD9+2fquB9KmdxwYgRaRkWbCEwc589kuWIeIi6XlJ
	TYTMn7DtfSmQLWd62V8xJruf9IFQmsnUb19oUFocbAgwIBpZp3xaaZDFu44g2p9Dyh3jtfW45dLv2
	ry0oFgfNrktR7htawDz/5Ldt6xQM/SeVKwunPE0nhYYUFN5R7eNvQ1V3kdx91SZXnDEPyssToETKl
	cFuPHwa3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1kHw-0007CR-9a; Wed, 12 Feb 2020 05:10:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1kHt-0007Bx-GX
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 05:10:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id z7so530166wrl.13
 for <linux-riscv@lists.infradead.org>; Tue, 11 Feb 2020 21:10:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wF5Xa3xZXNzgn21SJKWAvWiwP+pxClkAhr89+lwhg6k=;
 b=AxIDPaJ60LIWZnzVnREbiTaxymYYk8wssYrGNUN+6GfYGAc1ZQLVaPxpZlf8vm3qu5
 REdelHOMVmlNv6jvRHk26iwxeVf7amCIUYuTjHfCpOdavb1ldQO7+T3xfZAAXrcELsQl
 egl6C5AoQCHXALkzwSKUt6pUMNUav4cUC6DOh5xVyxzSI5TZMKn0u4qzETfJZQeJkpHj
 RnGd/1HT8pUDdWx5f3V+zEuYVrXP+zhq0kAS/OLc/YMalvYQePL52Tzwqz/NUNNlsJcW
 f3/2mTSniXS3ZbMiBiZBkwBHhsLbh7Hez7JPWIgWJvRvho8zBQIuinSuhcK3vKRP61N2
 xUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wF5Xa3xZXNzgn21SJKWAvWiwP+pxClkAhr89+lwhg6k=;
 b=Xx+M/kd9AEw6SKouvu38JZusL8f42ckjewkpgd9o6+YCIGROhVwMXJywn4k8E7grYH
 ZZqHcTNLdXTBpbV7pU6xQqDEMXK3GFPJ1KapMEQ07IK6Gi83Cmbabql7LyjMSxqryO8D
 hk3ecNylIPUw6wKamAMPzYEGMNI9V1OQkXonBrSaHtEdEiEw1QaSG9euo2lOAELZZUBq
 MR1kOnyQjSGceGGBS832LScmKIvV7+rRpzI2P/jH3fVC+8UZiP7o9WekB8jurz/kb/5R
 SH49u8BglH35W+kuIo3gaBRQmux6uhWroT8Am5LbzIKE/bQQCzonrZqcJrDnW9luyORH
 3o0A==
X-Gm-Message-State: APjAAAUYWcsxMqcr4/qpiNoMwdM4dlPMFzvLMcQqU2R7VRsIKNoOjT4Z
 Oh1p9XQ6wrqskdI2L0N7tEDrGT54j9+7I6UcNg02WA==
X-Google-Smtp-Source: APXvYqwd6UAjI2x7FRjOvOMVy286Xf7J5JUhekZ9tzx7ZzSgqBmWgbcFbg7mpYNZX6Ukik4GfvUBn94tOi73gvJLGPM=
X-Received: by 2002:a5d:538e:: with SMTP id d14mr13404204wrv.358.1581484211357; 
 Tue, 11 Feb 2020 21:10:11 -0800 (PST)
MIME-Version: 1.0
References: <20200212014822.28684-1-atish.patra@wdc.com>
 <20200212014822.28684-11-atish.patra@wdc.com>
In-Reply-To: <20200212014822.28684-11-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 12 Feb 2020 10:40:00 +0530
Message-ID: <CAAhSdy2kMgB4esz0atf92teR9j3x9a_aJcsjBB6ExcA-C78Fng@mail.gmail.com>
Subject: Re: [PATCH v8 10/11] irqchip/sifive-plic: Initialize the plic handler
 when cpu comes online
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_211013_551582_AF0D9D44 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Vincent Chen <vincent.chen@sifive.com>,
 Mao Han <han_mao@c-sky.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 7:21 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> Currently, plic threshold and priority are only initialized once in the
> beginning. However, threshold can be set to disabled if cpu is marked
> offline with cpu hotplug feature. This will not allow to change the
> irq affinity to a cpu that just came online.
>
> Add plic specific cpu hotplug callback and initialize the per cpu handler
> when cpu comes online.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  drivers/irqchip/irq-sifive-plic.c | 34 ++++++++++++++++++++++++-------
>  include/linux/cpuhotplug.h        |  1 +
>  2 files changed, 28 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index 0aca5807a119..9b564b19f4bf 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -4,6 +4,7 @@
>   * Copyright (C) 2018 Christoph Hellwig
>   */
>  #define pr_fmt(fmt) "plic: " fmt
> +#include <linux/cpu.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/irq.h>
> @@ -55,6 +56,8 @@
>  #define     CONTEXT_THRESHOLD          0x00
>  #define     CONTEXT_CLAIM              0x04
>
> +#define        PLIC_DISABLE_THRESHOLD          0xffffffff
> +
>  static void __iomem *plic_regs;
>
>  struct plic_handler {
> @@ -208,6 +211,26 @@ static int plic_find_hart_id(struct device_node *node)
>         return -1;
>  }
>
> +static void plic_handler_init(struct plic_handler *handler, u32 threshold)
> +{
> +       irq_hw_number_t hwirq;
> +
> +       /* priority must be > threshold to trigger an interrupt */
> +       writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
> +       for (hwirq = 1; hwirq < plic_irqdomain->hwirq_max; hwirq++)
> +               plic_toggle(handler, hwirq, 0);

Ensuring that all IRQs are disabled is only required at boot-time. For run-time,
CPU hotplug, I am sure Linux irq subsystem will migrate-and-disable IRQs
routed to given CPU when the CPU does down.

Further, we should also ensure that all IRQs are disabled for PLIC contexts
not used by S-mode Linux kernel.

Based on the above rationale, the loop to disable all IRQs should still be
part of plic_init().

> +}
> +
> +static int plic_starting_cpu(unsigned int cpu)
> +{
> +       u32 threshold = 0;
> +       struct plic_handler *handler = per_cpu_ptr(&plic_handlers, cpu);
> +
> +       plic_handler_init(handler, threshold);
> +
> +       return 0;
> +}
> +

Addition to PLIC context threshold programming, the plic_starting_cpu()
should also set IE_EIE bit in CSR_IE instead of doing it in trap_init()
function of arch/riscv/kernel.trap.c

You can also define plic_stoping_cpu() which does the reverse of what
plic_starting_cpu() is doing.


>  static int __init plic_init(struct device_node *node,
>                 struct device_node *parent)
>  {
> @@ -243,9 +266,7 @@ static int __init plic_init(struct device_node *node,
>         for (i = 0; i < nr_contexts; i++) {
>                 struct of_phandle_args parent;
>                 struct plic_handler *handler;
> -               irq_hw_number_t hwirq;
>                 int cpu, hartid;
> -               u32 threshold = 0;
>
>                 if (of_irq_parse_one(node, i, &parent)) {
>                         pr_err("failed to parse parent for context %d.\n", i);
> @@ -279,7 +300,7 @@ static int __init plic_init(struct device_node *node,
>                 handler = per_cpu_ptr(&plic_handlers, cpu);
>                 if (handler->present) {
>                         pr_warn("handler already present for context %d.\n", i);
> -                       threshold = 0xffffffff;
> +                       plic_handler_init(handler, PLIC_DISABLE_THRESHOLD);
>                         goto done;
>                 }
>
> @@ -291,13 +312,12 @@ static int __init plic_init(struct device_node *node,
>                         plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
>
>  done:
> -               /* priority must be > threshold to trigger an interrupt */
> -               writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
> -               for (hwirq = 1; hwirq <= nr_irqs; hwirq++)
> -                       plic_toggle(handler, hwirq, 0);
>                 nr_handlers++;
>         }
>
> +       cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> +                                 "irqchip/sifive/plic:starting",
> +                                 plic_starting_cpu, NULL);
>         pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
>                 nr_irqs, nr_handlers, nr_contexts);
>         set_handle_irq(plic_handle_irq);
> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> index e51ee772b9f5..5360e03db08c 100644
> --- a/include/linux/cpuhotplug.h
> +++ b/include/linux/cpuhotplug.h
> @@ -100,6 +100,7 @@ enum cpuhp_state {
>         CPUHP_AP_IRQ_ARMADA_XP_STARTING,
>         CPUHP_AP_IRQ_BCM2836_STARTING,
>         CPUHP_AP_IRQ_MIPS_GIC_STARTING,
> +       CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
>         CPUHP_AP_ARM_MVEBU_COHERENCY,
>         CPUHP_AP_MICROCODE_LOADER,
>         CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING,
> --
> 2.24.0
>

Regards,
Anup

