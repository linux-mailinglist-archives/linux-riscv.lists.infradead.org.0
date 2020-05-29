Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 631B11E71B7
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 02:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QI7CDCUbd5OO59gGqxpOHmDYgW2MbSqQ4kURqtenhT8=; b=NQJKM/tEX+4kEbP7axW8TGdsO
	LvkGT1umGv0eQdD6ZDBk+60VNuM4T/Foa0Gr2v83Ri7518XrbIRw5vAjAkEdC1jsgsxKmO2Ky6u6D
	OIKw9rq1heA/PkKwFHImezky2Zc/inB7FgGXmBvQvO/RhvJLtSYOE8KMMZbDphZ8RRabKrdqkGkvz
	5iQ7l010ON9dfUooXbiyC9vNFeayKuK5xj9xkjhQXMbBMKUX1xKg27GBsKaA33mto+M5Hz9I5G13K
	rph2Px9ZQe/GiKOtizVzaWHUutXQ+vm58Yuv37Ma3twGxPZk2vHPHuQG+QmGwPlrZwH7TjrBE+HxN
	7LD2VGgQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeT45-0006P2-Ct; Fri, 29 May 2020 00:40:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSxM-000691-JC
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 00:33:09 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so1237877wmj.0
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 17:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QI7CDCUbd5OO59gGqxpOHmDYgW2MbSqQ4kURqtenhT8=;
 b=KY7QUkxxkJAy9/MypVQr0cPw3LLVXtfvPShrn5e8LD5SgrqM0+9duZr3Ugyg6LVkxx
 intd2hXFaoa4Z6NWzfCZ6VeyBThOvUOQJIvOTazwlWc969YwG6phJuD4Dx/Ryu4muaYs
 lOYS5mUAuiTX4iIdKa1i63TZnmiW2wm/NTZB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QI7CDCUbd5OO59gGqxpOHmDYgW2MbSqQ4kURqtenhT8=;
 b=HIuxBCT+KART5NQcp0y1b3f12e0GjYxtj8XiMcf8c+3I0AmKoEyxaqGsvZR864vEcf
 1XhGGQaaTI6sUqK3nc3ENpM2TwWHksFAV/8PCC8z27Xb50LjbdLLjGejd2gSXwKWmHim
 d3s7NBN9RpvXRWBoNfhEC6AFBevC4Xp44gdO1ZwfDml8kKyiyr41IXBuonUQ4hM2jgM2
 q/nQ7hzBt4CB7uST4qGxcGiZNA8LgoT8DiUZowTNCW4zpcjESAJGnM4kGct0Y4j64zot
 TxG8sIfzQl0M1JHeiOPT01QVgwXbmOTZpKeXFKkX5U7xR8Uf65/0HFdTB0fbFzNA1+8J
 +Jjg==
X-Gm-Message-State: AOAM533tFDvGa5Z/spbdeumdq5L4voGQTLk4jD3j89MmCRYH/Mz5deQs
 RxcHM54j0KTVZ9OO94eSTpzH3ma6kUUUkH3LvcdR
X-Google-Smtp-Source: ABdhPJxSloc37vigWw1sS2KYBXlP/cfCpnCL/QUg9OmmggVEbx7A00NjmrfCHDBT8wvJcPx1K6nc+RlNFiEzCou/GkE=
X-Received: by 2002:a1c:9d09:: with SMTP id g9mr5646353wme.31.1590712383067;
 Thu, 28 May 2020 17:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200521133301.816665-1-anup.patel@wdc.com>
 <20200521133301.816665-6-anup.patel@wdc.com>
In-Reply-To: <20200521133301.816665-6-anup.patel@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 28 May 2020 17:32:52 -0700
Message-ID: <CAOnJCUKvPSPRwPFZg==A4jHXOursXy1=n9Pjsf-ntuqDwPRWTg@mail.gmail.com>
Subject: Re: [PATCH v5 5/6] RISC-V: Remove do_IRQ() function
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_173304_704071_10C36EF6 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
> The only thing do_IRQ() does is call handle_arch_irq function
> pointer. We can very well call handle_arch_irq function pointer
> directly from assembly and remove do_IRQ() function hence this
> patch.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/kernel/entry.S | 4 +++-
>  arch/riscv/kernel/irq.c   | 6 ------
>  2 files changed, 3 insertions(+), 7 deletions(-)
>
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index 56d071b2c0a1..cae7e6d4c7ef 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -106,7 +106,9 @@ _save_context:
>
>         /* Handle interrupts */
>         move a0, sp /* pt_regs */
> -       tail do_IRQ
> +       la a1, handle_arch_irq
> +       REG_L a1, (a1)
> +       jr a1
>  1:
>         /*
>          * Exceptions run with interrupts enabled or disabled depending on the
> diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
> index eb8777642ce6..7207fa08d78f 100644
> --- a/arch/riscv/kernel/irq.c
> +++ b/arch/riscv/kernel/irq.c
> @@ -16,12 +16,6 @@ int arch_show_interrupts(struct seq_file *p, int prec)
>         return 0;
>  }
>
> -asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
> -{
> -       if (handle_arch_irq)
> -               handle_arch_irq(regs);
> -}
> -
>  void __init init_IRQ(void)
>  {
>         irqchip_init();
> --
> 2.25.1
>
>


Reviewed-by: Atish Patra <atish.patra@wdc.com>
-- 
Regards,
Atish

