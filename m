Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C10CB8008
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 19:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8lmrPIk3fL4almrPaBxAP5rCzouUcDLeWiyXs8lInU=; b=Wz7grPXwPIxqns
	wW9klgyMvyFmBIVYvMLDF+kskWwHJfFJmPVqqqevaej0IxoiTl4/MmKRxIqxTKvmErbkprM8GnH5O
	qgFn73KJjmFzroSekkxYZVp3+1LGGvnBtwhNdmsZ4+FqF62/yjER1JbkpTRiIaGsx5sOScsJV/22w
	5Q/5xTyq/ou0Ybnv3SCf+lrbElvqS62zFWTB8QHULfG2aMcAhYKsyMPZby6YiJzYtu/sd4fWYAPLe
	DJDSGzqNGsnbEmQVJec0QzBsZvNWKqRUxicuVliZaKGQkN1R/Q7ltWobMCj8eqmL2fbNnwueqqsml
	/5ymwbo7M6y0yFkj6Njg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB0HX-0002Lt-Of; Thu, 19 Sep 2019 17:31:51 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iB0HO-0002Lj-CC; Thu, 19 Sep 2019 17:31:42 +0000
Date: Thu, 19 Sep 2019 10:31:42 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: resolve most warnings from sparse
Message-ID: <20190919173142.GA26224@infradead.org>
References: <alpine.DEB.2.21.9999.1909190125400.13510@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1909190125400.13510@viisi.sifive.com>
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

On Thu, Sep 19, 2019 at 01:26:38AM -0700, Paul Walmsley wrote:
> 
> Resolve most of the warnings emitted by sparse.  The objective here is
> to keep arch/riscv as clean as possible with regards to sparse warnings,
> and to maintain this bar for subsequent patches.

I think this patch does just way to many different things and needs
to be split up into one patch per issue / code module.

> --- /dev/null
> +++ b/arch/riscv/include/asm/entry.h

For example adding this file should be a patch on its own.  It can
also move to arch/riscv/kernel/ instead of polluting the <asm/*.h>
namespace.  That being said I'm not sure I like this and the
head.h patches.  Just adding a header for entry points used from
aseembly only seems rather pointless, I wonder if there is a way
to just shut up sparse on them.  Same for most of head.h.

> @@ -61,6 +61,9 @@
>  
>  #define PAGE_TABLE		__pgprot(_PAGE_TABLE)
>  
> +extern pgd_t swapper_pg_dir[];
> +extern pgd_t trampoline_pg_dir[];
> +extern pgd_t early_pg_dir[];
>  extern pgd_t swapper_pg_dir[];

This seems to add a duplicate definition of swapper_pg_dir.

> +extern asmlinkage void __init smp_callin(void);

No nee for the extern.

> index 905372d7eeb8..d0d980d99019 100644
> --- a/arch/riscv/include/asm/thread_info.h
> +++ b/arch/riscv/include/asm/thread_info.h
> @@ -58,6 +58,8 @@ struct thread_info {
>  	.addr_limit	= KERNEL_DS,		\
>  }
>  
> +extern int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src);

This really needs to move to a header outside of arch/.  Also no need
for the extern and as-is this adds a line > 80 chars.

> +#ifdef CONFIG_PROFILING
>  /* Unsupported */
>  int setup_profiling_timer(unsigned int multiplier)
>  {
>  	return -EINVAL;
>  }
> +#endif

Yikes.  All architectures either just return 0 or -EINVAL here,
and the caller has a spurious extern for it.  Please just remove
this arch hook and add a Kconfig variable that the few architectures
currently returning 0 select insted.

> +static void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,

This adds an > 80 char line.

> -pmd_t early_pmd[PTRS_PER_PMD * NUM_EARLY_PMDS] __initdata __aligned(PAGE_SIZE);
> +static pmd_t early_pmd[PTRS_PER_PMD * NUM_EARLY_PMDS] __initdata __aligned(PAGE_SIZE);

Another one.

> --- a/arch/riscv/mm/sifive_l2_cache.c
> +++ b/arch/riscv/mm/sifive_l2_cache.c
> @@ -142,7 +142,7 @@ static irqreturn_t l2_int_handler(int irq, void *device)
>  	return IRQ_HANDLED;
>  }
>  
> -int __init sifive_l2_init(void)
> +static int __init sifive_l2_init(void)
>  {
>  	struct device_node *np;
>  	struct resource res;

And this needs to be applied after this file moves to the right place
and isn't completely bogusly built into every RISC-V kernel.  Not all
the world is a SiFive..

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
