Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E7D1E700D
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 01:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GpXkyS7vVv9FTAH7S5+DpOFQmjUaMM+ePrWJEGENvuo=; b=t1VjjQUtEVGe0siRgYTLjToGf
	7DxvE4aEuzvYdFoUMT6nmMDS2Cx+0ScCwilm8bTnx+X9fmsomwLzsJFzJKVQkY9YfregKTz6MtX7t
	O13ehjylQ1KHxqr1oYYm1Q034qBTGVjRmqdyjD6hKk9qGNkCxqr9RFtpwEnD6Jqx2I0xLxjbPkplw
	+5de7ZAQJ9a5oUKlDsU1G+dqEF+7V8A6IFEs3m0XwRI7JfkiIK9/+M48ZsxgEMJ+rk31nmNN61zGB
	S5hHwGcmLixornQt3ZjG2OC1H1UpIf18RxX2M+VmDZ3FqxtYRJIjsQBqk83kpZEYDyWTaUGJHZcAe
	4jEK2FynQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeReg-0000SB-NS; Thu, 28 May 2020 23:09:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRed-0000RI-4O
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 23:09:40 +0000
Received: by mail-wm1-x344.google.com with SMTP id f5so1009935wmh.2
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 16:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GpXkyS7vVv9FTAH7S5+DpOFQmjUaMM+ePrWJEGENvuo=;
 b=D4whbS/UshWlAvLJxUCbzHUeSluRxsQX+qSiJdSScDGH+1JBkWXskHDWLQCEWOohQN
 dJQK6J896u99oDKZWAkWmKb7J0seMtAJMbVZYqWUZGl/4JW1DGQ08QRCBqDzEqVtd4WQ
 +6/yQMoNotw8xQ1ZiD5bXcTlej/UFrAAhwe3M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GpXkyS7vVv9FTAH7S5+DpOFQmjUaMM+ePrWJEGENvuo=;
 b=eaaSi4NQ/0s/1K+iAFEXCmY8rM+D4QkBfPdDG+zL4a9YuFVCXaFQ///v2kh5yK9Zfu
 T1GX5FGLTyN7sM+dqWqdg40776wrvd4ervEvuC8Owcyd7+nvstyZLsJHQStodFbpW976
 W166mEhhBDkH3dOGl96Q2IBg8Kd/jyQzKEaeaRxhYLdrnmovTETu2dm5Dj9Ed9wX6vYV
 Di5uDmvBCclcswVGdhkeXU+EW5iDMlrQ8qgj1R/FnNwLV70Exohv2tUK8aeAKBkPzBni
 f5FO0rH7V4gfuZkIVNZUpnwiUceCMx9pa6ZCkQQVUYQ8KpjyPWCLboPTbTeI8Pt5nmiV
 usxw==
X-Gm-Message-State: AOAM533xtUAuLVoCeGzMLf26YFhQWDq95GdMQhShtxMisAj+PNcKoRJJ
 GHxK1trec9zKxeECr9rL7n9R0JBNKQVF7Y6hZesq
X-Google-Smtp-Source: ABdhPJziYtIixceIrIWS3U3B1fj6vDkMc+6p4dpoZVeXiGvP5uccTm4Fr5yvsPFiQvuuC0xwvZBKPLWBdMJOTYLSSgA=
X-Received: by 2002:a7b:c84b:: with SMTP id c11mr5395364wml.78.1590707377649; 
 Thu, 28 May 2020 16:09:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200521133301.816665-1-anup.patel@wdc.com>
 <20200521133301.816665-3-anup.patel@wdc.com>
In-Reply-To: <20200521133301.816665-3-anup.patel@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 28 May 2020 16:09:26 -0700
Message-ID: <CAOnJCUJJcerzrUjoJ-8gt3q8uMcetp4YyXHj-qucoQmfs+LGzg@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] RISC-V: Rename and move plic_find_hart_id() to
 arch directory
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_160939_179554_957CCFD0 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
> The plic_find_hart_id() can be useful to other interrupt controller
> drivers (such as RISC-V local interrupt driver) so we rename this
> function to riscv_of_parent_hartid() and place it in arch directory
> along with riscv_of_processor_hartid().
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/include/asm/processor.h |  1 +
>  arch/riscv/kernel/cpu.c            | 16 ++++++++++++++++
>  drivers/irqchip/irq-sifive-plic.c  | 16 +---------------
>  3 files changed, 18 insertions(+), 15 deletions(-)
>
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
> index 3ddb798264f1..b1efd840003c 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -75,6 +75,7 @@ static inline void wait_for_interrupt(void)
>
>  struct device_node;
>  int riscv_of_processor_hartid(struct device_node *node);
> +int riscv_of_parent_hartid(struct device_node *node);
>
>  extern void riscv_fill_hwcap(void);
>
> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index 40a3c442ac5f..6d59e6906fdd 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -44,6 +44,22 @@ int riscv_of_processor_hartid(struct device_node *node)
>         return hart;
>  }
>
> +/*
> + * Find hart ID of the CPU DT node under which given DT node falls.
> + *
> + * To achieve this, we walk up the DT tree until we find an active
> + * RISC-V core (HART) node and extract the cpuid from it.
> + */
> +int riscv_of_parent_hartid(struct device_node *node)
> +{
> +       for (; node; node = node->parent) {
> +               if (of_device_is_compatible(node, "riscv"))
> +                       return riscv_of_processor_hartid(node);
> +       }
> +
> +       return -1;
> +}
> +
>  #ifdef CONFIG_PROC_FS
>
>  static void print_isa(struct seq_file *f, const char *isa)
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index d9c53f85a68e..16d31d114c30 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -240,20 +240,6 @@ static void plic_handle_irq(struct pt_regs *regs)
>         csr_set(CSR_IE, IE_EIE);
>  }
>
> -/*
> - * Walk up the DT tree until we find an active RISC-V core (HART) node and
> - * extract the cpuid from it.
> - */
> -static int plic_find_hart_id(struct device_node *node)
> -{
> -       for (; node; node = node->parent) {
> -               if (of_device_is_compatible(node, "riscv"))
> -                       return riscv_of_processor_hartid(node);
> -       }
> -
> -       return -1;
> -}
> -
>  static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
>  {
>         /* priority must be > threshold to trigger an interrupt */
> @@ -330,7 +316,7 @@ static int __init plic_init(struct device_node *node,
>                 if (parent.args[0] != RV_IRQ_EXT)
>                         continue;
>
> -               hartid = plic_find_hart_id(parent.np);
> +               hartid = riscv_of_parent_hartid(parent.np);
>                 if (hartid < 0) {
>                         pr_warn("failed to parse hart ID for context %d.\n", i);
>                         continue;
> --
> 2.25.1
>
>

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish

