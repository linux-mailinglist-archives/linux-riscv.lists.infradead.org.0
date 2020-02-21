Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74739166F86
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 07:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9NPzj0GacQ93xagAlNK8LgngBMkJMj6Y7tJEVRY8XPM=; b=WRB7yxdX8rVZ5fWdvJwRomlR6
	Ne/W00YQbDTxw7CIu371eIOEdOFikmwLNe6tZDaObbKCHKL1CtkwINVNokmsG6fNZYhdBS8dDM4Va
	W+rk8rQ2UqMSGn0uIKb3Kqlq8/0D8/hZYzTMybMRch5nb/dmZox+PRHL41hWXBsR+/eXHjA0UM6Bc
	LGIJ/ClWEJRl3zrMU5eyF7smv54p0t31Cqp/DBHfLCPR8MYZzQAYqmua6LhXskZM6sqc06QAcwOjY
	WkeUUcjAp402GR5p84yShfVDnqBTWd6HrOs+okE1/aGFzxDocJLfMKPnSh5VeKVanOggPSFqBwFv0
	yzVGhcZUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j51Zy-0004LR-2C; Fri, 21 Feb 2020 06:14:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j51Zt-0004Kd-KX
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 06:14:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id a9so432367wmj.3
 for <linux-riscv@lists.infradead.org>; Thu, 20 Feb 2020 22:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9NPzj0GacQ93xagAlNK8LgngBMkJMj6Y7tJEVRY8XPM=;
 b=IFrjxLAfYapdU82d5FN6Qpsf+Ekh+12KMYjkVEpMNW7/82DoOy8WVlYlz+Rzqoo34M
 JaoqTfkCCsbEeHTvN9kVq97rWd2e2Eygj+xOjfwThwCc/oD0gaqh7d+LTvjjKTjK000G
 07hI03SrOmtad3wAPZaSYI+Mll+T+Of2cb7W7o/cZKBwVc6byUMAdIZocZ/FFIj1h+b5
 UU/JAVH66iBb5kU+SjOB8BHk0vBXOZ2q2IN9PX4SSejcWucMniJO25FshU0UDI/u/QcC
 /MC/vrICzX4QuZc21dWcDs0hYHqKHSeNXxreulhqmbWe1g+axscyL9sWWuWceHf/Lsfs
 NKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9NPzj0GacQ93xagAlNK8LgngBMkJMj6Y7tJEVRY8XPM=;
 b=Jo2lslldS8jseFnChv9hgorElxL1wexmnMeEVafbtAQxTlpDLuyUZmvxLxTxk8+H7f
 7K0D6GB58bvRSiBzFyDJ3juwrFFjA3fwAWU0V3cJKIYOzmDNdgT7KriVDf6y3CTQ84HX
 6g6s1VPWi5yBreBm8ydDd7iqXHUovMmxdaqsEnjoJdQU6fpxmUZ107uYetSOFpH9uYlX
 NzIOOo0nUCh7cgYR/sjrpKhafxGGi1Y17BkfqlgUAwwaPpO6Qor9RTexEX9VTJEVIOkV
 +EmuOkoq2YvhE1671URdjqnD/ferhcwNsl0FNkcuLNbTnV222HBSsY7uLt6mEe8DgMYt
 yJJw==
X-Gm-Message-State: APjAAAWwrDW/KuBYjyOI5RJmYc+4BVqXH6WFQ1XJHnWHbIxfPqvIKg5q
 3c1RZKBiIV4NrxBag9LAj8fH3YT71D7osLpRdOz1Wg==
X-Google-Smtp-Source: APXvYqz794x7M6ev4Ic+y22CYFH8oQAHpmcAHV37yjJe2Y9WTIKEB7WDPYuI8qFGk3AqjZnn1Zj5VoRdj+Y+lC3GDB4=
X-Received: by 2002:a05:600c:285:: with SMTP id
 5mr1535010wmk.120.1582265658118; 
 Thu, 20 Feb 2020 22:14:18 -0800 (PST)
MIME-Version: 1.0
References: <20200221004413.12869-1-atish.patra@wdc.com>
 <20200221004413.12869-13-atish.patra@wdc.com>
In-Reply-To: <20200221004413.12869-13-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 21 Feb 2020 11:44:06 +0530
Message-ID: <CAAhSdy2nY1LStqDJPU10CN2d=p5XQzkE2RjXdkXoAoumhyO5-A@mail.gmail.com>
Subject: Re: [PATCH v9 12/12] irqchip/sifive-plic: Initialize the plic handler
 when cpu comes online
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_221421_677332_E11A6259 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Vincent Chen <vincent.chen@sifive.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>,
 Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 6:14 AM Atish Patra <atish.patra@wdc.com> wrote:
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
>  arch/riscv/kernel/traps.c         |  2 +-
>  drivers/irqchip/irq-sifive-plic.c | 38 +++++++++++++++++++++++++++----
>  include/linux/cpuhotplug.h        |  1 +
>  3 files changed, 36 insertions(+), 5 deletions(-)
>
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index 8e13ad45ccaa..16c59807da6a 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -157,5 +157,5 @@ void trap_init(void)
>         /* Set the exception vector address */
>         csr_write(CSR_TVEC, &handle_exception);
>         /* Enable interrupts */
> -       csr_write(CSR_IE, IE_SIE | IE_EIE);
> +       csr_write(CSR_IE, IE_SIE);
>  }
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index aa4af886e43a..7c7f37393f99 100644
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
> @@ -55,6 +56,9 @@
>  #define     CONTEXT_THRESHOLD          0x00
>  #define     CONTEXT_CLAIM              0x04
>
> +#define        PLIC_DISABLE_THRESHOLD          0xf
> +#define        PLIC_ENABLE_THRESHOLD           0
> +
>  static void __iomem *plic_regs;
>
>  struct plic_handler {
> @@ -230,6 +234,32 @@ static int plic_find_hart_id(struct device_node *node)
>         return -1;
>  }
>
> +static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
> +{
> +       /* priority must be > threshold to trigger an interrupt */
> +       writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
> +}
> +
> +static int plic_dying_cpu(unsigned int cpu)
> +{
> +       struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> +
> +       csr_clear(CSR_IE, IE_EIE);
> +       plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
> +
> +       return 0;
> +}
> +
> +static int plic_starting_cpu(unsigned int cpu)
> +{
> +       struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> +
> +       csr_set(CSR_IE, IE_EIE);
> +       plic_set_threshold(handler, PLIC_ENABLE_THRESHOLD);
> +
> +       return 0;
> +}
> +
>  static int __init plic_init(struct device_node *node,
>                 struct device_node *parent)
>  {
> @@ -267,7 +297,6 @@ static int __init plic_init(struct device_node *node,
>                 struct plic_handler *handler;
>                 irq_hw_number_t hwirq;
>                 int cpu, hartid;
> -               u32 threshold = 0;
>
>                 if (of_irq_parse_one(node, i, &parent)) {
>                         pr_err("failed to parse parent for context %d.\n", i);
> @@ -301,7 +330,7 @@ static int __init plic_init(struct device_node *node,
>                 handler = per_cpu_ptr(&plic_handlers, cpu);
>                 if (handler->present) {
>                         pr_warn("handler already present for context %d.\n", i);
> -                       threshold = 0xffffffff;
> +                       plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
>                         goto done;
>                 }
>
> @@ -313,13 +342,14 @@ static int __init plic_init(struct device_node *node,
>                         plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
>
>  done:
> -               /* priority must be > threshold to trigger an interrupt */
> -               writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
>                 for (hwirq = 1; hwirq <= nr_irqs; hwirq++)
>                         plic_toggle(handler, hwirq, 0);
>                 nr_handlers++;
>         }
>
> +       cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> +                                 "irqchip/sifive/plic:starting",
> +                                 plic_starting_cpu, plic_dying_cpu);
>         pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
>                 nr_irqs, nr_handlers, nr_contexts);
>         set_handle_irq(plic_handle_irq);
> diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> index d37c17e68268..77d70b633531 100644
> --- a/include/linux/cpuhotplug.h
> +++ b/include/linux/cpuhotplug.h
> @@ -102,6 +102,7 @@ enum cpuhp_state {
>         CPUHP_AP_IRQ_ARMADA_XP_STARTING,
>         CPUHP_AP_IRQ_BCM2836_STARTING,
>         CPUHP_AP_IRQ_MIPS_GIC_STARTING,
> +       CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
>         CPUHP_AP_ARM_MVEBU_COHERENCY,
>         CPUHP_AP_MICROCODE_LOADER,
>         CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING,
> --
> 2.25.0
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

I will rebase my RISC-V local interrupt controller driver patches
upon this patch series.

Regards,
Anup

