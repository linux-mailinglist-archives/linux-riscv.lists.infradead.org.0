Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF1317DF3F
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 13:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XB8GNe6/v7EQn1hDBocDW32S0oBZB3GFkZAZ+BQoKuQ=; b=fnM4f8cAKOj8X3yGA9ujy8X2R
	tNmK7R/o8LFs8IkhlWsOUR02OymKojMT/T4qwCvGZcUqgNI+9zdy57DZ7s5dF/dhBTPLtwdB+75aS
	KdRuFACBj7pSnfhzB8AxG7p7fY9yAK7GoCdWM1NCzWjCk4zRYeeODujwaA45YmZXo6t+l9uOqXISI
	bIjkp076CNwpbcPKyb51sBqF9vGBlSqrZCOHGMgho8iAhewPqO2qgXaD5NQeSRIN9RJPGe96/Cbv2
	mY6WcozlciSouXoGRVcSymu5wYaybZT+UnERKEDJveQfU/MP0gQPwwwn43kk5ZIan/vtVgrAdkvk8
	hj2KFUPAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBH5c-000302-6p; Mon, 09 Mar 2020 12:00:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBH5Y-0002zT-KR
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 12:00:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so10753767wro.2
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 05:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XB8GNe6/v7EQn1hDBocDW32S0oBZB3GFkZAZ+BQoKuQ=;
 b=GIFufCwRBHYqYm6ZosJpdHi0QYnmtcPhKd/fkJOwlVTOKyQfn2epXhcKTh2cH0DzSK
 DoVEbszPfmXyrx+zeQnsKgNh/KxLeWw9ur8GxOsDye9MtH4bLfcQoTlyS7kAVmnNBxHy
 TbWlwgEddpv+jDE5dHca8Ymbpgxs9E1fy53Pb1T/kaMJKcAvZZ6ngvtfNnq7+i64BYhg
 dqqCNoQ6w12FNF/d+IceyM74kVMyGJ0FVCuWkn42Rn8OnJqKVS8LECJSv6lutdgWUh6S
 ghFxENqIL5/tjNMLC4rtY1/ZNwAg4dmNrQEhckPujGBgRN1YVth+HrqtcxcpjzXu7KG4
 d1MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XB8GNe6/v7EQn1hDBocDW32S0oBZB3GFkZAZ+BQoKuQ=;
 b=NpCGyiZKcxmxgH5FEP0+AASJjRcw2LzuOJ7EebvBt4VthUgQKSe/w0RcqrIyj9JeSm
 cH7XzD/KWCsOY2Dza3asgi1MY7sR2G1CE6nUdyxJtnlXf7qo37puppeS0tnvjMTpvaUk
 zs4cOOZ0s++JT9OPy6esuWlGmxncmy9zL+mb2cf5FdOncDWnTxcxHrOIKAzCtLd6Dzid
 VW3h5eqlYhWmQDuP9yBVePr13gaRaiaSpxi/Hgcr0QGJ77GIFsNqstrvhfxGgnkfK7dX
 92qjtRyWUwpSZdEiWR8THKe11L1XMLYXQnXLfAnG/YU7uCIoPsi/wqoNFDr1t2hTXzyl
 ONbw==
X-Gm-Message-State: ANhLgQ1lT+pqiB642VQZjET3QkMINz3c+t5iMnsEoxXUF4oq6eitQZ/A
 dpgWNjtzT+T64+R4mAmKHXcpbXgfGFC4Ryjnphhuceky
X-Google-Smtp-Source: ADFU+vt7I1yKlPHTHMtEOhumNiODgbHFpFxK/YWSYzY0A4G7ewobR9tMGoTyGv4Qn6oMW731JhqPaNfW/gRfEr279sk=
X-Received: by 2002:adf:ec45:: with SMTP id w5mr20454127wrn.230.1583755250950; 
 Mon, 09 Mar 2020 05:00:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200309110211.91130-1-anup.patel@wdc.com>
 <20200309110211.91130-6-anup.patel@wdc.com>
In-Reply-To: <20200309110211.91130-6-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 9 Mar 2020 17:30:39 +0530
Message-ID: <CAAhSdy0t__RvDFkBkjEsaPma5j4_pOH9TvT4AFw3yuH2M6_PHA@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] RISC-V: Remove do_IRQ() function
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_050052_673780_10A3AE43 
X-CRM114-Status: GOOD (  12.67  )
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Fixed Marc's email address.

On Mon, Mar 9, 2020 at 4:33 PM Anup Patel <anup.patel@wdc.com> wrote:
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
> index 208702d8c18e..238f0ca070db 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -183,7 +183,9 @@ ENTRY(handle_exception)
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
> 2.17.1
>

