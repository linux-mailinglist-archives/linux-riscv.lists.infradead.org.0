Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A089E1AE8EB
	for <lists+linux-riscv@lfdr.de>; Sat, 18 Apr 2020 02:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=GRok5Woa9WWOsNs1jcpZ9KNNS24Ffo2MvgJ7rPIOg/U=; b=tQhYjUghR9wiyP
	NGGnXnd0z5wl1Az+ktJDsJr+cJz91s3OMTzXVxmw0KIMQ2lX9plbJyyx3+jPGGVC7I4U27juJCXTy
	rfBXabF4AiqJdEAEIcHkT2Wqq6DkcYrPPK8JLUleEzok05B1ebxox5SqiLDa6F9Z1z5EWKJab5xnY
	wvVBQmf1AvRDbO5dzzMCcRvmNMJMTJ5rLQ+mvcJZr9B4JiCNqGga1Swrhsv7gk9fROdh6+7WUOl4d
	jYqAkLwS2k73yTrsE4a6xT2mKZtwaXabJjHv5dGoVmJivLqm50e4k0jm40V8bc+2O6nb6W3CpWJcV
	5BERdCNCwhLPGwuhgUeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPbG0-0006PA-Ss; Sat, 18 Apr 2020 00:22:52 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPbFv-0006Mw-NG
 for linux-riscv@lists.infradead.org; Sat, 18 Apr 2020 00:22:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id b8so1833169pfp.8
 for <linux-riscv@lists.infradead.org>; Fri, 17 Apr 2020 17:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=GRok5Woa9WWOsNs1jcpZ9KNNS24Ffo2MvgJ7rPIOg/U=;
 b=bgvlSUsamFDSr1amHP4tvPiHp4UOtDUQu1tL/hyFR8UFW5R6UfOQ2U2VSeLqYijz6n
 ybiFv2JXJC8I5Evx876gQhFYHDZSunxgwkuecl+z0eI3qCHeO3KdYVN6LqyBv/FoHRXm
 2nMZY6cS5te+FGI8olA1/aVmtA9F+EF7SOzwI8mde4/RfWWJrxi/AiJkvyJcwCzHWGlv
 NOiWfP83rb8QVFkGbQoi4596HFnmBsVnSKF2i4mbufCHlsy8HZz1ql0w8skSQtasFP2X
 UWOBoMAi6HSO63EwH/3HeL+lUEc//knS5cZRkTx00FbX41bGhyFacOK/BDR51nC40hd0
 ffHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=GRok5Woa9WWOsNs1jcpZ9KNNS24Ffo2MvgJ7rPIOg/U=;
 b=aFEFBn6Ynfs8LaQgHd0NfMpHdViLJypoFW0VJg+OoJ1nXiuwrMnsKK78QlIgyhaMZ+
 ql/lW0+bKHXA8Y4mXfZ4bU2RN+Wo1yJOvHP0mM+lTgdkXWau4jAji8aaQMHNlJuYD0tS
 vd19rh4lNd0qUK8durUzWxfB6fewGjpEdZZubG0RrbLl2WOYmVnFnokJzj8LAWnZdhZb
 BxvdT6fKjVMCsZxxkbMTu5q2M/zkFm9pJ5TZLSA5qP3Ub+DoixeX16Ia6wRQP50L3PbK
 ODniziFFQVDMpTiKz/ZydK4F3CItGFfIKbxByMLJ6uySsCv1ZXZxptnX3/8YpCuPjk/6
 G8xg==
X-Gm-Message-State: AGi0PubPsqLbwTJAg1lKOjIw+d6/XPSvUCgleBj/FJzZPV3joUgMauEY
 VC85xyW85Rhl7cdzOJpNa9A7fg==
X-Google-Smtp-Source: APiQypLg8Xuh0Ps6p4qjMvXlFtS3kij0d8bmmGWxKhwyCoHtkq5F5OjDWuaNJBfKCap3dizlcnLxsw==
X-Received: by 2002:a65:46c4:: with SMTP id n4mr3522023pgr.430.1587169366749; 
 Fri, 17 Apr 2020 17:22:46 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id s10sm20349668pfd.124.2020.04.17.17.22.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 17:22:46 -0700 (PDT)
Date: Fri, 17 Apr 2020 17:22:46 -0700 (PDT)
X-Google-Original-Date: Fri, 17 Apr 2020 17:07:13 PDT (-0700)
Subject: Re: [PATCH v5 2/9] riscv: introduce interfaces to patch kernel code
In-Reply-To: <6f145470ffdf83b303ecd83db4f6e06477b61220.1586332296.git.zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-ad7c6b28-b8d0-4913-b28e-77f6df0555c6@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_172247_753988_D22867F2 
X-CRM114-Status: GOOD (  21.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org, mhiramat@kernel.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 08 Apr 2020 00:56:57 PDT (-0700), zong.li@sifive.com wrote:
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
>  arch/riscv/include/asm/patch.h  |  12 +++
>  arch/riscv/kernel/Makefile      |   4 +-
>  arch/riscv/kernel/patch.c       | 128 ++++++++++++++++++++++++++++++++
>  4 files changed, 145 insertions(+), 1 deletion(-)
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
> index 000000000000..f16466123947
> --- /dev/null
> +++ b/arch/riscv/kernel/patch.c
> @@ -0,0 +1,128 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2020 SiFive
> + */
> +
> +#include <linux/mm.h>
> +#include <linux/memory.h>
> +#include <linux/uaccess.h>
> +#include <linux/spinlock.h>
> +#include <linux/stop_machine.h>
> +#include <asm/fixmap.h>
> +#include <asm/kprobes.h>
> +#include <asm/cacheflush.h>
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
> +static int patch_insn_write(void *addr, const void *insn, size_t len)
> +{
> +	void *waddr = addr;
> +	bool across_pages = (((uintptr_t) addr & ~PAGE_MASK) + len) > PAGE_SIZE;
> +	int ret;
> +
> +	/*
> +	 * Before reaching here, it was expected to lock the text_mutex
> +	 * already, so we don't need to give another lock here and could
> +	 * ensure that it was safe between each cores.
> +	 */
> +	lockdep_assert_held(&text_mutex);
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

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

