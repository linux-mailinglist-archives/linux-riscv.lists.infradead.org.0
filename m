Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDF21E7008
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 01:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nwgj6E9D3HYNDLpG/tXHp4hKNZ51Ebu1gu1zyX/LBmg=; b=nDq25r6pp36fjtuMghMyFKKLr
	W1xCGOWUww6K7mofNZ6Whc9xsZnjWsmYP5dYe5AVsRkCjjCJfz0hqu9BwNukUNWhBmQFXKZ5dqTKk
	hZB0Vpch9hF53LZpWgOsPBqTdxSVOg06j/VfyZ68we2RqnXxl98qIGiMW+ubPT4wLc1UG4bXdglJg
	1g2jMTYQm6Zvk6+kY2CcNA32dln5BnwO/dtxtrfTgMpe3lsZsq7Qz9xehAuqsqjEC1J6Hj9WccJx6
	EN0DArRl2I1UVyxUpR7fDC0uDZoghl9X1p2CRvxk2yFpJCEPXX7SCzdAY40ORmsxL8zf5PZvqscNS
	VToRC4HZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRdo-0000BW-Nv; Thu, 28 May 2020 23:08:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRdl-0000B9-Kp
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 23:08:47 +0000
Received: by mail-wm1-x343.google.com with SMTP id r15so975145wmh.5
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 16:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nwgj6E9D3HYNDLpG/tXHp4hKNZ51Ebu1gu1zyX/LBmg=;
 b=eKBdtoMU2S5v42sEqcXy8Bcn6D3jlj+Zmc2RkpBWpuwt9pe6UCkgyQ9dviQ9CUBJ6U
 +j/FJ4/r0vEAA4ZuzSNHPOJrIeaIHWdyFazU5DVidj45KyO5GpIF2TdISzTu4QtGZWa/
 Yi8IPT0D68amZf9yrvlzQjdo2mTuu5mU/ToOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nwgj6E9D3HYNDLpG/tXHp4hKNZ51Ebu1gu1zyX/LBmg=;
 b=WJdpQxEQrXhWqHvJsNC1Dmh0pOUSY8HSoKITRPg9GNMpixn1oe3/t9rj+tZ57xexL3
 FCynRKlbqwm1N34FHGbClioQEzPb5OKFOplidADDxfds9VEa9e+CXuzap2WLpKqMpJ8/
 fsts9u5k3LEubVPWTHANyS1E8+DXb6RfCn0jyLrnAKoEewMOWfLSlt5DL8XQ5H5LYcpS
 dH5J9JaXymSak0ep0cn3JcPofVRQOYf8SI5uPZxU7ZCQJmXcXDFAh7bJCXAmrjngCPUV
 rmAqRfRuElLy9wyFcd4egpGcSa1JsP25j9ZYOHy7fisMcwkAPywz5v9n7vmTRKGoC9it
 DJ0g==
X-Gm-Message-State: AOAM533vNKhoBSGljNt+1lhcnMbbZ4nR1m0++8EyT1MlidN6GazIlwri
 rWCbeZZuyWTv3HV0FdjTOwOfgP3yXytBVxFkozew
X-Google-Smtp-Source: ABdhPJw4kaEVV34t2cEZXq+mqdaNLLx7uzsUiCPUzRX2Ss5tayR3bmdPfnfs7awSp3in1+7tmPyjkiSOscIiMuSZfgo=
X-Received: by 2002:a7b:c622:: with SMTP id p2mr5546999wmk.55.1590707322980;
 Thu, 28 May 2020 16:08:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200521133301.816665-1-anup.patel@wdc.com>
 <20200521133301.816665-2-anup.patel@wdc.com>
In-Reply-To: <20200521133301.816665-2-anup.patel@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 28 May 2020 16:08:31 -0700
Message-ID: <CAOnJCULxy6N_FwhxTFH8ym7Xnpf1sOkyLEk7-Uap-xiUwZkywQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] RISC-V: self-contained IPI handling routine
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_160845_707639_E160ACCC 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 6:34 AM Anup Patel <anup.patel@wdc.com> wrote:
>
> Currently, the IPI handling routine riscv_software_interrupt() does
> not take any argument and also does not perform irq_enter()/irq_exit().
>
> This patch makes IPI handling routine more self-contained by:
> 1. Passing "pt_regs *" argument
> 2. Explicitly doing irq_enter()/irq_exit()
> 3. Explicitly save/restore "pt_regs *" using set_irq_regs()
>
> With above changes, IPI handling routine does not depend on caller
> function to perform irq_enter()/irq_exit() and save/restore of
> "pt_regs *" hence its more self-contained. This also enables us
> to call IPI handling routine from IRQCHIP drivers.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/include/asm/irq.h |  1 -
>  arch/riscv/include/asm/smp.h |  3 +++
>  arch/riscv/kernel/irq.c      | 16 ++++++++++------
>  arch/riscv/kernel/smp.c      | 11 +++++++++--
>  4 files changed, 22 insertions(+), 9 deletions(-)
>
> diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
> index 6e1b0e0325eb..0183e15ace66 100644
> --- a/arch/riscv/include/asm/irq.h
> +++ b/arch/riscv/include/asm/irq.h
> @@ -13,7 +13,6 @@
>  #define NR_IRQS         0
>
>  void riscv_timer_interrupt(void);
> -void riscv_software_interrupt(void);
>
>  #include <asm-generic/irq.h>
>
> diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
> index f4c7cfda6b7f..40bb1c15a731 100644
> --- a/arch/riscv/include/asm/smp.h
> +++ b/arch/riscv/include/asm/smp.h
> @@ -28,6 +28,9 @@ void show_ipi_stats(struct seq_file *p, int prec);
>  /* SMP initialization hook for setup_arch */
>  void __init setup_smp(void);
>
> +/* Called from C code, this handles an IPI. */
> +void handle_IPI(struct pt_regs *regs);
> +
>  /* Hook for the generic smp_call_function_many() routine. */
>  void arch_send_call_function_ipi_mask(struct cpumask *mask);
>
> diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
> index 345c4f2eba13..bb0bfcd537e7 100644
> --- a/arch/riscv/kernel/irq.c
> +++ b/arch/riscv/kernel/irq.c
> @@ -19,12 +19,15 @@ int arch_show_interrupts(struct seq_file *p, int prec)
>
>  asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
>  {
> -       struct pt_regs *old_regs = set_irq_regs(regs);
> +       struct pt_regs *old_regs;
>
> -       irq_enter();
>         switch (regs->cause & ~CAUSE_IRQ_FLAG) {
>         case RV_IRQ_TIMER:
> +               old_regs = set_irq_regs(regs);
> +               irq_enter();
>                 riscv_timer_interrupt();
> +               irq_exit();
> +               set_irq_regs(old_regs);
>                 break;
>  #ifdef CONFIG_SMP
>         case RV_IRQ_SOFT:
> @@ -32,19 +35,20 @@ asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
>                  * We only use software interrupts to pass IPIs, so if a non-SMP
>                  * system gets one, then we don't know what to do.
>                  */
> -               riscv_software_interrupt();
> +               handle_IPI(regs);
>                 break;
>  #endif
>         case RV_IRQ_EXT:
> +               old_regs = set_irq_regs(regs);
> +               irq_enter();
>                 handle_arch_irq(regs);
> +               irq_exit();
> +               set_irq_regs(old_regs);
>                 break;
>         default:
>                 pr_alert("unexpected interrupt cause 0x%lx", regs->cause);
>                 BUG();
>         }
> -       irq_exit();
> -
> -       set_irq_regs(old_regs);
>  }
>
>  void __init init_IRQ(void)
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index a65a8fa0c22d..b1d4f452f843 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -123,11 +123,14 @@ static inline void clear_ipi(void)
>                 clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
>  }
>
> -void riscv_software_interrupt(void)
> +void handle_IPI(struct pt_regs *regs)
>  {
> +       struct pt_regs *old_regs = set_irq_regs(regs);
>         unsigned long *pending_ipis = &ipi_data[smp_processor_id()].bits;
>         unsigned long *stats = ipi_data[smp_processor_id()].stats;
>
> +       irq_enter();
> +
>         clear_ipi();
>
>         while (true) {
> @@ -138,7 +141,7 @@ void riscv_software_interrupt(void)
>
>                 ops = xchg(pending_ipis, 0);
>                 if (ops == 0)
> -                       return;
> +                       goto done;
>
>                 if (ops & (1 << IPI_RESCHEDULE)) {
>                         stats[IPI_RESCHEDULE]++;
> @@ -160,6 +163,10 @@ void riscv_software_interrupt(void)
>                 /* Order data access and bit testing. */
>                 mb();
>         }
> +
> +done:
> +       irq_exit();
> +       set_irq_regs(old_regs);
>  }
>
>  static const char * const ipi_names[] = {
> --
> 2.25.1
>
>

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish

