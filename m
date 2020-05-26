Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA481A10D2
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 17:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXgMJBusfo86+CUHUlPhtFlA/KYheQWetqFPrWl5jYQ=; b=Gt5IgggXQGMqxj
	GKIzwKFbKZ5maKMkJUwMKYFTLluMX75pjM6UAz/CdDrGh5F992cgxktB3zcciRo/+AHC24mAMMh59
	ebIcxy4rGVMbW+tGhhUyl7KbxPU+XKQaFNFequOvsqKK5z3Xfnt3sBJsIDO8gTUq+ll5vNFYXqHcY
	hepZmNVvV6zQ0vZUihTe2uR8byRLYhYhJbY0q3VTnTvJtC11Ah+ufInNA7qSoi9hgdbCAkandC7Zy
	9vpnqg6lrZzawKKv0mfn9ikBIArC47LnIPCAeQjTKdwzE4FXo05HtNT4Fmjf9ZJ9xNBdtf0aHIvw3
	CP4M8EI+KWfPLMu4OMFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLqct-0005dk-CA; Tue, 07 Apr 2020 15:58:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLqcq-0005dD-9O
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 15:58:57 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A1C92072A;
 Tue,  7 Apr 2020 15:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586275135;
 bh=ltIOImB02Z71XhE+ab4AZjqWho6FXnB/SdX/vjB8BxA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dmp90ubmZP2czndVvQXWl03wmMM9mO/JPcATNHy2z9xFFl+W4sASxc89XShQvJ65d
 4xBUn2UodHNybm6HuKbb4TjlB2WCP09XP22hvEsQ/aWcT7vXtKseuW/MtYicFijNS1
 GJpAlD3EXfNGs7i9RmNFzytbek/t01G3FwTWAehI=
Date: Wed, 8 Apr 2020 00:58:50 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v4 2/9] riscv: introduce interfaces to patch kernel code
Message-Id: <20200408005850.5e1a7666013f080ff60020e2@kernel.org>
In-Reply-To: <a491ce48973a0b4f0eed3fe4e97d6a07cb6d6ae8.1586265122.git.zong.li@sifive.com>
References: <cover.1586265122.git.zong.li@sifive.com>
 <a491ce48973a0b4f0eed3fe4e97d6a07cb6d6ae8.1586265122.git.zong.li@sifive.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_085856_365254_2663C7B4 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu, palmer@dabbelt.com,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Zong,

On Tue,  7 Apr 2020 22:46:47 +0800
Zong Li <zong.li@sifive.com> wrote:

> On strict kernel memory permission, we couldn't patch code without
> writable permission. Preserve two holes in fixmap area, so we can map
> the kernel code temporarily to fixmap area, then patch the instructions.
> 
> We need two pages here because we support the compressed instruction, so
> the instruction might be align to 2 bytes. When patching the 32-bit
> length instruction which is 2 bytes alignment, it will across two pages.
> 
> Introduce two interfaces to patch kernel code:
> riscv_patch_text_nosync:
>  - patch code without synchronization, it's caller's responsibility to
>    synchronize all CPUs if needed.
> riscv_patch_text:
>  - patch code and always synchronize with stop_machine()
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
> ---
>  arch/riscv/include/asm/fixmap.h |   2 +
>  arch/riscv/include/asm/patch.h  |  12 ++++
>  arch/riscv/kernel/Makefile      |   4 +-
>  arch/riscv/kernel/patch.c       | 120 ++++++++++++++++++++++++++++++++
>  4 files changed, 137 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/include/asm/patch.h
>  create mode 100644 arch/riscv/kernel/patch.c
> 
> diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
> index 42d2c42f3cc9..2368d49eb4ef 100644
> --- a/arch/riscv/include/asm/fixmap.h
> +++ b/arch/riscv/include/asm/fixmap.h
> @@ -27,6 +27,8 @@ enum fixed_addresses {
>  	FIX_FDT = FIX_FDT_END + FIX_FDT_SIZE / PAGE_SIZE - 1,
>  	FIX_PTE,
>  	FIX_PMD,
> +	FIX_TEXT_POKE1,
> +	FIX_TEXT_POKE0,
>  	FIX_EARLYCON_MEM_BASE,
>  	__end_of_fixed_addresses
>  };
> diff --git a/arch/riscv/include/asm/patch.h b/arch/riscv/include/asm/patch.h
> new file mode 100644
> index 000000000000..9a7d7346001e
> --- /dev/null
> +++ b/arch/riscv/include/asm/patch.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2020 SiFive
> + */
> +
> +#ifndef _ASM_RISCV_PATCH_H
> +#define _ASM_RISCV_PATCH_H
> +
> +int patch_text_nosync(void *addr, const void *insns, size_t len);
> +int patch_text(void *addr, u32 insn);
> +
> +#endif /* _ASM_RISCV_PATCH_H */
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index f40205cb9a22..d189bd3d8501 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -4,7 +4,8 @@
>  #
>  
>  ifdef CONFIG_FTRACE
> -CFLAGS_REMOVE_ftrace.o = -pg
> +CFLAGS_REMOVE_ftrace.o	= -pg
> +CFLAGS_REMOVE_patch.o	= -pg
>  endif
>  
>  extra-y += head.o
> @@ -26,6 +27,7 @@ obj-y	+= traps.o
>  obj-y	+= riscv_ksyms.o
>  obj-y	+= stacktrace.o
>  obj-y	+= cacheinfo.o
> +obj-y	+= patch.o
>  obj-$(CONFIG_MMU) += vdso.o vdso/
>  
>  obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
> diff --git a/arch/riscv/kernel/patch.c b/arch/riscv/kernel/patch.c
> new file mode 100644
> index 000000000000..5b4f0d37097f
> --- /dev/null
> +++ b/arch/riscv/kernel/patch.c
> @@ -0,0 +1,120 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2020 SiFive
> + */
> +
> +#include <linux/spinlock.h>
> +#include <linux/mm.h>
> +#include <linux/uaccess.h>
> +#include <linux/stop_machine.h>
> +#include <asm/kprobes.h>
> +#include <asm/cacheflush.h>
> +#include <asm/fixmap.h>
> +
> +struct patch_insn_patch {
> +	void *addr;
> +	u32 insn;
> +	atomic_t cpu_count;
> +};
> +
> +#ifdef CONFIG_MMU
> +static void *patch_map(void *addr, int fixmap)
> +{
> +	uintptr_t uintaddr = (uintptr_t) addr;
> +	struct page *page;
> +
> +	if (core_kernel_text(uintaddr))
> +		page = phys_to_page(__pa_symbol(addr));
> +	else if (IS_ENABLED(CONFIG_STRICT_MODULE_RWX))
> +		page = vmalloc_to_page(addr);
> +	else
> +		return addr;
> +
> +	BUG_ON(!page);
> +
> +	return (void *)set_fixmap_offset(fixmap, page_to_phys(page) +
> +					 (uintaddr & ~PAGE_MASK));
> +}
> +NOKPROBE_SYMBOL(patch_map);
> +
> +static void patch_unmap(int fixmap)
> +{
> +	clear_fixmap(fixmap);
> +}
> +NOKPROBE_SYMBOL(patch_unmap);
> +

Please leave a comment here about text_mutex,

> +static int patch_insn_write(void *addr, const void *insn, size_t len)
> +{
> +	void *waddr = addr;
> +	bool across_pages = (((uintptr_t) addr & ~PAGE_MASK) + len) > PAGE_SIZE;
> +	int ret;

Or use lockdep_assert_held(&text_mutex); here so that user can easily
understand they have to lock the text_mutex before calling this.

Thank you,

> +
> +	if (across_pages)
> +		patch_map(addr + len, FIX_TEXT_POKE1);
> +
> +	waddr = patch_map(addr, FIX_TEXT_POKE0);
> +
> +	ret = probe_kernel_write(waddr, insn, len);
> +
> +	patch_unmap(FIX_TEXT_POKE0);
> +
> +	if (across_pages)
> +		patch_unmap(FIX_TEXT_POKE1);
> +
> +	return ret;
> +}
> +NOKPROBE_SYMBOL(patch_insn_write);
> +#else
> +static int patch_insn_write(void *addr, const void *insn, size_t len)
> +{
> +	return probe_kernel_write(addr, insn, len);
> +}
> +NOKPROBE_SYMBOL(patch_insn_write);
> +#endif /* CONFIG_MMU */
> +
> +int patch_text_nosync(void *addr, const void *insns, size_t len)
> +{
> +	u32 *tp = addr;
> +	int ret;
> +
> +	ret = patch_insn_write(tp, insns, len);
> +
> +	if (!ret)
> +		flush_icache_range((uintptr_t) tp, (uintptr_t) tp + len);
> +
> +	return ret;
> +}
> +NOKPROBE_SYMBOL(patch_text_nosync);
> +
> +static int patch_text_cb(void *data)
> +{
> +	struct patch_insn_patch *patch = data;
> +	int ret = 0;
> +
> +	if (atomic_inc_return(&patch->cpu_count) == 1) {
> +		ret =
> +		    patch_text_nosync(patch->addr, &patch->insn,
> +					    GET_INSN_LENGTH(patch->insn));
> +		atomic_inc(&patch->cpu_count);
> +	} else {
> +		while (atomic_read(&patch->cpu_count) <= num_online_cpus())
> +			cpu_relax();
> +		smp_mb();
> +	}
> +
> +	return ret;
> +}
> +NOKPROBE_SYMBOL(patch_text_cb);
> +
> +int patch_text(void *addr, u32 insn)
> +{
> +	struct patch_insn_patch patch = {
> +		.addr = addr,
> +		.insn = insn,
> +		.cpu_count = ATOMIC_INIT(0),
> +	};
> +
> +	return stop_machine_cpuslocked(patch_text_cb,
> +				       &patch, cpu_online_mask);
> +}
> +NOKPROBE_SYMBOL(patch_text);
> -- 
> 2.26.0
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

