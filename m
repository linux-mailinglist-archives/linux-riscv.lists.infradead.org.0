Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E89C17DF30
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 12:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iouomU3fha5mQRskwANgwh7TuSQV901CBUJScXX1uj0=; b=O4fT/waCDy73wztwNlItpF3j3
	4GeZE7t2r/E+vahceADiGzLLC+helV2vsvcbhZk9TSP74X7D57pwP1ZiezPFjXhwSb2tPJRL0uetH
	ahkNdL519rXiFzoaTrcG4FPXsivsS5v0yI6SAUPODk/Eu44G16Qe25Rja2CGRrW4HaOZXC+8Yg1Vf
	I6bhLWMX6VP9TFmF24yIBmKPX8ClfaaGN9YXLZHE0d7HCv8y6bzvpk+tGlfAg9z6tdfL+IcT/3s14
	6Q/iiMZHN6OPg/nQ+BPQ/Kr3AcIev2GEkri94jIRZSFDCOYadjNkTgsGIva4suB37kNTHMP3aFOH4
	EJ2p5oKhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBH3O-0001Lp-JQ; Mon, 09 Mar 2020 11:58:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBH3K-0001LR-KA
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 11:58:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id n15so10687958wrw.13
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 04:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iouomU3fha5mQRskwANgwh7TuSQV901CBUJScXX1uj0=;
 b=pJYC8nJJP+qpBuNr4ascYa7DIinBaYwRPte2DGewZ2ZK8SslwP7kjJRt9Fh2PPxjTM
 JH1SJ/KgU6nHhtfX9AXe2R+O8+RjzdyeLhzzcdYLhc6/fDVx0CySJD0avA6JO52iEReQ
 +/3JJUGB+exnvIJLaW+o21GhpmZ8pG/2YYDuI3jSj3Xfqxekrxon5JCLZQNOhAEQ2G9x
 0BGhfL+QrdJb2e0pRBPbMsoLeuK5+jFPHWeu4KFmZzlHCTGgO7COUX0ATIQMlzu9xKf7
 5JFyz15gNYegP50JifiO1parr/ayDRr+Z0vOHvuzQlxQkdKiRMlyLuH6yTCxuCz4o1Po
 35fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iouomU3fha5mQRskwANgwh7TuSQV901CBUJScXX1uj0=;
 b=HIsCQa5q8aF4kh2svUZPQcpO8DRGW60ujD6hjyJsL8oUXZX6jYhyMKiFsoNfBcWSAA
 jAN/z14zgLxzh8qjjHwj2vfkoo09ZTjsfDY400F6Ic2UijN1UAQIYj9MEj7a7+YzfI7R
 htupKmqQTlsO0HpjtuZhl0JKX8HLHq2/wyzfXqwa/Z9A5QdFuJvTlYK5UcxBRWX96BzZ
 L5lJXZvGipX06KIiyR7gRnRCc6c5pF9VBt67kTW7Ki4FMVzRrBB1ejpBezni9BC5Ys9i
 PeiQKYlR6G9v3lif/dL+iVUv1QTwHwQSGUn51AqW9q0Fdi914AfFRhvykcIhQ/8hfFX8
 UAXg==
X-Gm-Message-State: ANhLgQ170NN4KwA3eoRdYdSoQ2a3WdL4rhA8o2wIdOfo5TNl08doXPxZ
 TEy+f1TpzVK7RS2cnkr1WFxo233vkb01F305WdILkQ==
X-Google-Smtp-Source: ADFU+vtrCjWs6CQwJnmeJ39QPsyuWxgiqXU7bH5sLs75SftA1kHPkRoASnBXRxutYlNOWYcg0/qZ2O9WVMD69QNdLCw=
X-Received: by 2002:adf:ec45:: with SMTP id w5mr20444241wrn.230.1583755113268; 
 Mon, 09 Mar 2020 04:58:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200309110211.91130-1-anup.patel@wdc.com>
 <20200309110211.91130-2-anup.patel@wdc.com>
In-Reply-To: <20200309110211.91130-2-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 9 Mar 2020 17:28:19 +0530
Message-ID: <CAAhSdy0tNAX-XV9-rh+pDLV-MXQ+v1trMFp6Vq_a6yD3HecPyQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] RISC-V: self-contained IPI handling routine
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_045834_669526_A07736B0 
X-CRM114-Status: GOOD (  18.25  )
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

On Mon, Mar 9, 2020 at 4:32 PM Anup Patel <anup.patel@wdc.com> wrote:
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
> index eb878abcaaf8..1e8f44a47e14 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -121,11 +121,14 @@ static inline void clear_ipi(void)
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
> @@ -136,7 +139,7 @@ void riscv_software_interrupt(void)
>
>                 ops = xchg(pending_ipis, 0);
>                 if (ops == 0)
> -                       return;
> +                       goto done;
>
>                 if (ops & (1 << IPI_RESCHEDULE)) {
>                         stats[IPI_RESCHEDULE]++;
> @@ -158,6 +161,10 @@ void riscv_software_interrupt(void)
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
> 2.17.1
>

