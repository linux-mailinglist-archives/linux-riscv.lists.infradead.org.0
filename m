Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E111DE019
	for <lists+linux-riscv@lfdr.de>; Fri, 22 May 2020 08:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BdlhqyJ951xgsvD5BLBHy8K0oY2CiBKgpcw7Bfgw0og=; b=jHammMdMOzRueECX86F/ZOY3P
	F2FbA8lHwoDiYDd80cLq4bnVdo+7GgW1xULnjJSE48UG6zUmJcxkwCL82RHi71t9wCLnbFZ9KqpGq
	08VnGdgI8pkS9Jz6osEwqRjyfVN1a1fd2FPx6mCWQRhAzR69ZIjtjuw5gghBmBTPbI6AdStUKnIOu
	DDzmRtEz+bIfLWtVFw+8YSgKgpbrFU3/OU/vN4pOkke1lw7ZeldgwFNTSmWd8inba5mK3iVG4Psfq
	flBXggQaxod/7y6BZE9Oju4atiUqKOeIrddmo265fGir3zfXZ5hKSesBd96eLaiqwxmU3sLrbjFK3
	4VtxAh2xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc1S5-00089j-DT; Fri, 22 May 2020 06:46:41 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc1S1-00088y-Mj
 for linux-riscv@lists.infradead.org; Fri, 22 May 2020 06:46:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so1850861wmj.0
 for <linux-riscv@lists.infradead.org>; Thu, 21 May 2020 23:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BdlhqyJ951xgsvD5BLBHy8K0oY2CiBKgpcw7Bfgw0og=;
 b=MMALL3hdVhUKe9RSDOjWQFf8Rj16jm9NnaDZwZSTAIl5sqs1rfb8ZlWZc+mksI4LjS
 YbK0eqASO6GJdnMPtQ5kw5DxjfG1V8V6misIPJraMRq6XAak7Sp7PpOXLmnLQX3YpalD
 /n7t3ILmEcLLWGr5ub+o8UpM85BjaDmcBby+A0LnpXJy96kcsLIG9Vu5AGZAAgOagoih
 LsVmGmmxp3vWCshshBJJBO209oiWdvVCaR9QMuFLeXs01cISosV176UzwqN8Rt6QYJ4o
 lB7KQbGW4yDAXO/d3jT+3nquplZ+z0UZY3ixTLgWO8wjJs0k1wVyEb9PBGgA1ZXR1YYq
 WBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BdlhqyJ951xgsvD5BLBHy8K0oY2CiBKgpcw7Bfgw0og=;
 b=k03qU4j7/22ngD6rnTAVYj6BgM/2ERSVE15FNVHqn71EIrjnASnraeYMPhK5BNthJO
 c6ZVrUQkG7EzUuTo4qXMy6E4gTnbfcKbRvXVJXy86G5cvZm8/n/+i0A/NI9iW9YrohVh
 trvPp3olQJs6E2YrDZiW6ievpdJC3FZmpVa/LUhgY6TqMOxptrNLzDBLkeW2kPvAYXZ4
 QtXTqBu9qpMYnthFqaeQa9COLi2GTGEsx4P5UWZ3WNPTrRA2iizFTsgFNmwIMjVw8JqU
 sr+2d4QYwfE+IOc4SGw8B84MyQBLlA54odRFhsm25RpE4yBhywnGuDUwW/GPku6fK7Ez
 bLvw==
X-Gm-Message-State: AOAM530Ou7pWPzsayQYXfJQfkqvOEPLh70moXpgT8SSFV3jDmGSra69a
 RPOANaXnqBlpTPPGJ0YY9SIuB05ggiEbKb3vDch3aE/r
X-Google-Smtp-Source: ABdhPJxKUECvmXh3jDWmvCzFehb3e/WIuTSnRSQEBDoErxJ4L97sPaekwvTZTGb89pkgft+zbMU7QBtOLH7SUqOkdB8=
X-Received: by 2002:a7b:c0d1:: with SMTP id s17mr11498344wmh.157.1590129996226; 
 Thu, 21 May 2020 23:46:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200518091441.94843-3-anup.patel@wdc.com>
 <mhng-06a48d36-b37c-481f-97aa-8fc0b1f9795e@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-06a48d36-b37c-481f-97aa-8fc0b1f9795e@palmerdabbelt-glaptop1>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 22 May 2020 12:16:24 +0530
Message-ID: <CAAhSdy1NmtRW+LGJ013xAe9AwroUPcujqC2yLcNY+5ZtvGpCUQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] irqchip/sifive-plic: Setup cpuhp once after boot
 CPU handler is present
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_234637_744746_F2D00E52 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 3:36 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Mon, 18 May 2020 02:14:40 PDT (-0700), Anup Patel wrote:
> > For multiple PLIC instances, the plic_init() is called once for each
> > PLIC instance. Due to this we have two issues:
> > 1. cpuhp_setup_state() is called multiple times
> > 2. plic_starting_cpu() can crash for boot CPU if cpuhp_setup_state()
> >    is called before boot CPU PLIC handler is available.
> >
> > This patch fixes both above issues.
> >
> > Fixes: f1ad1133b18f ("irqchip/sifive-plic: Add support for multiple PLICs")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 14 ++++++++++++--
> >  1 file changed, 12 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> > index 9f7f8ce88c00..6c54abf5cc5e 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -76,6 +76,7 @@ struct plic_handler {
> >       void __iomem            *enable_base;
> >       struct plic_priv        *priv;
> >  };
> > +static bool plic_cpuhp_setup_done;
> >  static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
> >
> >  static inline void plic_toggle(struct plic_handler *handler,
> > @@ -285,6 +286,7 @@ static int __init plic_init(struct device_node *node,
> >       int error = 0, nr_contexts, nr_handlers = 0, i;
> >       u32 nr_irqs;
> >       struct plic_priv *priv;
> > +     struct plic_handler *handler;
> >
> >       priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> >       if (!priv)
> > @@ -313,7 +315,6 @@ static int __init plic_init(struct device_node *node,
> >
> >       for (i = 0; i < nr_contexts; i++) {
> >               struct of_phandle_args parent;
> > -             struct plic_handler *handler;
> >               irq_hw_number_t hwirq;
> >               int cpu, hartid;
> >
> > @@ -367,9 +368,18 @@ static int __init plic_init(struct device_node *node,
> >               nr_handlers++;
> >       }
> >
> > -     cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> > +     /*
> > +      * We can have multiple PLIC instances so setup cpuhp state only
> > +      * when context handler for current/boot CPU is present.
> > +      */
> > +     handler = this_cpu_ptr(&plic_handlers);
> > +     if (handler->present && !plic_cpuhp_setup_done) {
> > +             cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> >                                 "irqchip/sifive/plic:starting",
> >                                 plic_starting_cpu, plic_dying_cpu);
> > +             plic_cpuhp_setup_done = true;
>
> So presumably something else is preventing multiple plic_init() calls from
> executing at the same time?  Assuming that's the case

AFAIK, interrupt controller and timer probing happens sequentially on
boot CPU before all secondary CPUs are brought-up.

>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
> > +     }
> > +
> >       pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
> >               nr_irqs, nr_handlers, nr_contexts);
> >       set_handle_irq(plic_handle_irq);

Thanks,
Anup

