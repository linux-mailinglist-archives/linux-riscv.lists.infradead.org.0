Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7731E7219
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 03:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=54DCvOoLnizb5obZMAZVVx9Mv/OX4h8r+9BZvz/kgMQ=; b=RioewQ+m1IUuWi
	EDih2CXEhw7qcDbG2IoZ9LUZfFC/Ll3b27qBlS4kc/0OuOFAVOy3Okc82ET/E4qs/KURNNiDRSHRm
	cU2dPGlhT9JVE1vbtS0+r2Xfu8rCNgLdESTytkTy491Ql7bAvNUhv4B79B420wirqHreK5IILo5W2
	n431tXUPhLZ2iPILDkcHPUcevSPLLWIfIS9qhajoT4rVKB8PTNbtcxOhgS0QHcIpD6B++t4ypa4Wx
	EUB6ToTqnDBFlw7XO92XxUQpkg+0sD+zH2iLHgFbc2+8ymCzUuFEKqNlu0znvJzFJOHgF/2TJCLCE
	IMiDcaJKFicU2iEnWhiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeTxe-0007bo-2Q; Fri, 29 May 2020 01:37:26 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeTxa-0007ay-AR
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 01:37:23 +0000
Received: by mail-pl1-x643.google.com with SMTP id i17so340561pli.13
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 18:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=54DCvOoLnizb5obZMAZVVx9Mv/OX4h8r+9BZvz/kgMQ=;
 b=U2si59PcIwQdRP0198eEg3UKKcFQdWu8G73ty3feD5zJQpYCYj5PLyrOUg0YGSDynP
 P8AsxWwvi5pS1/nJJtZ0mqi7TWudIvpOoyQnIRoPvx5KddTY8p6bdLagjsYzylno5x8Y
 zmrLZkQ4MBXMesRFgXzD25d3j0ErwigZPva0SYRkW17R55/DEhlcLbjPGIjgfyXzMCKs
 0SkWYT3MNGHYZ4sygKUKr44YZ0dqysBAcJ4nuTAe7g75P3rQ0QUte6/AU765BBBOp2s/
 sUm3CKglPkD1sI6ldoRIut3RumVNfaq2qaDohHBkswKy0g7WG029y1e+ReK3/aoV5fHp
 TsFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=54DCvOoLnizb5obZMAZVVx9Mv/OX4h8r+9BZvz/kgMQ=;
 b=q4JTrzqnuerxJnM7hTK5Vcnb8iMVjAjaCvdE8zqRV+oDeGGv5a78IyDgeSjyijCXtp
 jpm58YXhxNCq6EClpFvIjOS9Nw6pijS8FbuNkJ4qKtvWiHqTl2RDfAG/K33Suay0NJZ1
 aCEXHhiUsTAubMDFY02Nf3yTFLZ1CfmzG61LiSJaw2m47nSbK0iPzdhM17wSbP8piBSB
 ny4lt25QJKKbzzS6hx82OL5DB1wfC3vW9KUbk2KY24NNUAbR3O4dR2i6YbT7Y1yZxvqe
 uiwHg3c9udEgizvqpSnZRJj/C+keluQcY/3sWqXJ3zaeGuPowqdREjwn9q8V1nvedsxa
 Vs0g==
X-Gm-Message-State: AOAM530OFKhskmLA0oo+uDLciTWv+XdJBjogeZlGyvWQwARL4EjPyjA9
 RJu4ujXW0vV5R2NEa7sw/em5Cg==
X-Google-Smtp-Source: ABdhPJxlWIJRdZOM13t5KHV4l2LKIM6WzweKTrtfFnHnk2Innr77blSbNP+HyURHeOuLSfvcYJZMBQ==
X-Received: by 2002:a17:90a:ad86:: with SMTP id
 s6mr4592794pjq.193.1590716240544; 
 Thu, 28 May 2020 18:37:20 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id w73sm5969863pfd.113.2020.05.28.18.37.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 18:37:19 -0700 (PDT)
Date: Thu, 28 May 2020 18:37:19 -0700 (PDT)
X-Google-Original-Date: Thu, 28 May 2020 18:28:08 PDT (-0700)
Subject: Re: [PATCH v5 2/6] RISC-V: Rename and move plic_find_hart_id() to
 arch directory
In-Reply-To: <20200521133301.816665-3-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-6df8942f-32e6-4334-82c4-1721e571ab1b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_183722_355957_733E258D 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aou@eecs.berkeley.edu, jason@lakedaemon.net, Marc Zyngier <maz@kernel.org>,
 anup@brainfault.org, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 06:32:57 PDT (-0700), Anup Patel wrote:
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
>  	return hart;
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
> +	for (; node; node = node->parent) {
> +		if (of_device_is_compatible(node, "riscv"))
> +			return riscv_of_processor_hartid(node);
> +	}
> +
> +	return -1;
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
>  	csr_set(CSR_IE, IE_EIE);
>  }
>
> -/*
> - * Walk up the DT tree until we find an active RISC-V core (HART) node and
> - * extract the cpuid from it.
> - */
> -static int plic_find_hart_id(struct device_node *node)
> -{
> -	for (; node; node = node->parent) {
> -		if (of_device_is_compatible(node, "riscv"))
> -			return riscv_of_processor_hartid(node);
> -	}
> -
> -	return -1;
> -}
> -
>  static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
>  {
>  	/* priority must be > threshold to trigger an interrupt */
> @@ -330,7 +316,7 @@ static int __init plic_init(struct device_node *node,
>  		if (parent.args[0] != RV_IRQ_EXT)
>  			continue;
>
> -		hartid = plic_find_hart_id(parent.np);
> +		hartid = riscv_of_parent_hartid(parent.np);
>  		if (hartid < 0) {
>  			pr_warn("failed to parse hart ID for context %d.\n", i);
>  			continue;

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

