Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FA51B9024
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 14:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=15N0AMALEEQtdmDZbhxqjR5vrw9NC2Tzc+/LVSacRkg=; b=XujyVGagKB2wHPTADeRXXDsXN
	FjyBDM1kNv4F2bTwAfkTIeVQQEDdyPi8cHjCEjSz+6xWca3NTdoCyzYpH/duZszpZ56st9vkjANv3
	WH40ucaDu5t9TZiXAXkPWjYMiOwH6Bo2B3jFMtpdH9Zv7qxJt9GqPv6znvqCqq4uJyoHhwvMhonaS
	o+TxeOG+7SZql2YUnOMcnlldIt317rgj34zr6lcrS2dmrwPvilHVVvS11eZruA+qAEQyL++gOcJZJ
	IOC8c3YrqFOWpnZcDqZ2NlZ4ybFYJ4LbWVYxksW0SHoPzh8tzc6l9dnA8r/5lXJ/V65O47V2Ym0Ec
	z8RwNUcdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSggg-00025M-R5; Sun, 26 Apr 2020 12:47:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSggb-0001xb-Ir
 for linux-riscv@lists.infradead.org; Sun, 26 Apr 2020 12:47:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id z6so17168903wml.2
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 05:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=15N0AMALEEQtdmDZbhxqjR5vrw9NC2Tzc+/LVSacRkg=;
 b=qWKvpQKhhsmD797vQVIN5JK4iKB9E8RGZuUIyQ6XkQkftoQ7V64AYQ0Y5llUdLW0Qs
 +cA4patiUjfaLpKEhdJ0qkFAT1iNG5amjHaM2p3X+CXATyx0QjToiLiOkqu0GNEWHTKR
 7W5MsH42/tj28f3o//avZg+pNlHwz/OkANqFmP/HUSAjDb80ei8R0clBZ7u4dxgrU5Lj
 iAazhoYzVMM8WPQCsMKA9GKTQVvphaHeM68WFxUKeYP5LkwtDDYc3Zkzq81w49576Wq1
 m1F6ZCEI2cpILiOAYkrMeJLtWj2GDHrSmpGTs/SxgHutzkQA64tTLBMSXeO6gC0g6QET
 wmNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=15N0AMALEEQtdmDZbhxqjR5vrw9NC2Tzc+/LVSacRkg=;
 b=pOdCtT4gLF+rma3ArXRkIFpE+U5rJp7t0ZgBiWB7d5c+EEY05q2caTOhiWkIhhL350
 Mv2RcjgNAKrSI1Sid54jwe+HA/O/mUvKS59aBMwubC/8/JZ0kLrhrhKfhQdDaiK8dt1h
 KyqXkekCw7muf9/4AOMAJQJkfQbaVox63Vx/Os6aBMAqEkD9xAGZIHOMYSLldLjs8mZh
 hrSv2/+qFbsg/UAXNf+dixmc5R0kIT/+pAG9igK+na67OGtirRMTk30Wq7WmPRGEo8Xd
 qux4TJ/9NLCSFg9XzkWAMWv5tihkG3LqlYUEcA1phNgtibepZQ/hckqoUOSyRh1zyN7g
 r4Tw==
X-Gm-Message-State: AGi0Pub/Yhf3cdPpMMeqpRO8cE9FWc4s4UzB/JRkR6xjZDlEpf+qHD8X
 1oPvwgkuDguF10LOP2+o0J1M7/eCdCKYarIffJ3fgg==
X-Google-Smtp-Source: APiQypKHFGfELiOhf2nbbLO9DxHSjZooeTDd/7cXifOp4XF9bEFMbHSX/tnL2qyQCzjUGhLPItH1Pfc42y1pTTx69QE=
X-Received: by 2002:a1c:4144:: with SMTP id o65mr21894889wma.78.1587905223357; 
 Sun, 26 Apr 2020 05:47:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200426110740.123638-1-zong.li@sifive.com>
In-Reply-To: <20200426110740.123638-1-zong.li@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 26 Apr 2020 18:16:52 +0530
Message-ID: <CAAhSdy3FCdzLV-nH03T=PBxB2tdZXhRrugcC2NcoA=22qpv+Lw@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: allow many cores to handle IRQs
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_054705_868562_1E95DCD4 
X-CRM114-Status: GOOD (  18.11  )
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
Cc: David Abdurachmanov <david.abdurachmanov@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 4:37 PM Zong Li <zong.li@sifive.com> wrote:
>
> Currently, driver forces the IRQs to be handled by only one core. This
> patch provides the way to enable others cores to handle IRQs if needed,
> so users could decide how many cores they wanted on default by boot
> argument.
>
> Use 'irqaffinity' boot argument to determine affinity. If there is no
> irqaffinity in dts or kernel configuration, use irq default affinity,
> so all harts would try to claim IRQ.
>
> For example, add irqaffinity=0 in chosen node to set irq affinity to
> hart 0. It also supports more than one harts to handle irq, such as set
> irqaffinity=0,3,4.
>
> You can change IRQ affinity from user-space using procfs. For example,
> you can make CPU0 and CPU2 serve IRQ together by the following command:
>
> echo 4 > /proc/irq/<x>/smp_affinity
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  drivers/irqchip/irq-sifive-plic.c | 21 +++++++--------------
>  1 file changed, 7 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index d0a71febdadc..bc1440d54185 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -111,15 +111,12 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
>  static void plic_irq_unmask(struct irq_data *d)
>  {
>         struct cpumask amask;
> -       unsigned int cpu;
>         struct plic_priv *priv = irq_get_chip_data(d->irq);
>
>         cpumask_and(&amask, &priv->lmask, cpu_online_mask);
> -       cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
> -                                          &amask);
> -       if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
> -               return;
> -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> +       cpumask_and(&amask, &amask, irq_data_get_affinity_mask(d));
> +
> +       plic_irq_toggle(&amask, d, 1);
>  }
>
>  static void plic_irq_mask(struct irq_data *d)
> @@ -133,24 +130,20 @@ static void plic_irq_mask(struct irq_data *d)
>  static int plic_set_affinity(struct irq_data *d,
>                              const struct cpumask *mask_val, bool force)
>  {
> -       unsigned int cpu;
>         struct cpumask amask;
>         struct plic_priv *priv = irq_get_chip_data(d->irq);
>
>         cpumask_and(&amask, &priv->lmask, mask_val);
>
>         if (force)
> -               cpu = cpumask_first(&amask);
> +               cpumask_copy(&amask, mask_val);
>         else
> -               cpu = cpumask_any_and(&amask, cpu_online_mask);
> -
> -       if (cpu >= nr_cpu_ids)
> -               return -EINVAL;
> +               cpumask_and(&amask, &amask, cpu_online_mask);
>
>         plic_irq_toggle(&priv->lmask, d, 0);
> -       plic_irq_toggle(cpumask_of(cpu), d, 1);
> +       plic_irq_toggle(&amask, d, 1);
>
> -       irq_data_update_effective_affinity(d, cpumask_of(cpu));
> +       irq_data_update_effective_affinity(d, &amask);
>
>         return IRQ_SET_MASK_OK_DONE;
>  }
> --
> 2.26.1
>

I strongly oppose (NACK) this patch due to performance reasons.

In PLIC, if we enable an IRQ X for N CPUs then when IRQ X occurs:
1) All N CPUs will take interrupt
2) All N CPUs will try to read PLIC CLAIM register
3) Only one of the CPUs will see IRQ X using the CLAIM register
but other N - 1 CPUs will see no interrupt and return back to what
they were doing. In other words, N - 1 CPUs will just waste CPU
every time IRQ X occurs.

Example1, one Application doing heavy network traffic will
degrade performance of other applications because with every
network RX/TX interrupt N-1 CPUs will waste CPU trying to
process network interrupt.

Example1, one Application doing heavy MMC/SD traffic will
degrade performance of other applications because with every
SPI read/write interrupt N-1 CPUs will waste CPU trying to
process it.

In fact, the current PLIC approach is actually a performance
optimization. This implementation also works fine with in-kernel
load-balancer and user space load balancer.

Regards,
Anup

