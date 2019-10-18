Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE906DCA18
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 17:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbRZOZm2Hxjoojuy+s4vbMLxoO4Yf+AXVAcrefwe698=; b=tJeNUdB2ssBGb5
	NvP6phnI75eJAVZcEkXkQgYmBTFbouvDT31lGZp0f2UEOw9+/IjQKJ5QhLq4313B0yN+Og6+mXF5v
	rZOiny7OmdIOci1P9THFgERtLIFBaHE28FxxPOxUSnHKmRBXN+034pi8lOPSJLXwQzwrQIWusxs7/
	JykUwDjFjhLkrnn4COiDPcc3Euw99sTvQ1r+rvay72mD35WGMpM5wUveMqg69VuDv/IbQwbwj7Qba
	Ip99oTsyKcdtNnk7g78ZDL/7EmETN9WgmyHmgRCWK7KTCQpaFI8WuIajLA/QzqbY0/yum/ELIXuIl
	prwA47WnDZMAvwz6F/Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUfO-0001OE-K9; Fri, 18 Oct 2019 15:59:50 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iLUag-0004VQ-CV; Fri, 18 Oct 2019 15:54:58 +0000
Date: Fri, 18 Oct 2019 08:54:58 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 4/8] riscv: add missing prototypes
Message-ID: <20191018155458.GB25386@infradead.org>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
 <20191018080841.26712-5-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018080841.26712-5-paul.walmsley@sifive.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 01:08:37AM -0700, Paul Walmsley wrote:
> 
> diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
> index 75576424c0f7..589e2d9fb2a6 100644
> --- a/arch/riscv/include/asm/irq.h
> +++ b/arch/riscv/include/asm/irq.h
> @@ -12,6 +12,9 @@
>  void riscv_timer_interrupt(void);
>  void riscv_software_interrupt(void);
>  
> +asmlinkage void do_IRQ(struct pt_regs *regs);

This is another __visible candidate.

> +void __init init_IRQ(void);

This one is called by the core kernel.  Please instead lift the
extern in init/main.c to include/linux/irq.h or some other suitable
header insted of working around the issue in arch code.

> index f539149d04c2..ab56435de629 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -78,6 +78,10 @@ int riscv_of_processor_hartid(struct device_node *node);
>  
>  extern void riscv_fill_hwcap(void);
>  
> +extern const struct seq_operations cpuinfo_op;

Another generic issue, Ben Dooks has started looking into it already.

> +
> +void time_init(void);

And another one that needs to be solved globally and not worked around
in the architecture.

> diff --git a/arch/riscv/include/asm/ptrace.h b/arch/riscv/include/asm/ptrace.h
> index d48d1e13973c..c851c095b674 100644
> --- a/arch/riscv/include/asm/ptrace.h
> +++ b/arch/riscv/include/asm/ptrace.h
> @@ -101,6 +101,8 @@ static inline unsigned long regs_return_value(struct pt_regs *regs)
>  	return regs->a0;
>  }
>  
> +void show_regs(struct pt_regs *regs);

Again, this needs to go into a common header, no arch code.

> +
>  #endif /* __ASSEMBLY__ */
>  
>  #endif /* _ASM_RISCV_PTRACE_H */
> diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
> index a83451d73a4e..d19dd2e2e1da 100644
> --- a/arch/riscv/include/asm/smp.h
> +++ b/arch/riscv/include/asm/smp.h
> @@ -15,6 +15,8 @@
>  struct seq_file;
>  extern unsigned long boot_cpu_hartid;
>  
> +asmlinkage void __init smp_callin(void);

One more __visible candidate.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
