Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AFB1149A0
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 00:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:In-Reply-To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=UaCKQZiD0d5nTkej3tKWw6jNxfWpLT5zIEUWWqdRKpA=; b=QLTX4HKMyMTDYl
	G5WTey5rzmTDHIRZUHkVQy0XmaE8UmDi0MnebRTurYeIA+7V6sAQtMx7ktVyQNaE5MmIDqCzOW4U7
	Mjo8q+qkY/uH9pZRkg+Zliq2XifemVR740NmVHKAdLa7aigeXumOhDkHA/oWSgcm9gpDjFgT/D9wP
	MxaWJ5tcZpE+Jy/T5AGZkqPzQLscFYrvo+dF3AD8PelTDYOZDWgI8+j8PzvrFnJZicazC3GnJK+Ha
	8QrYTcUzIBKT8HNxwSBKO/3LYGToFq0IQl6D5HFz8KX3CGXaSwsm/Lph3J1UheBC2kEn//OV7aF+o
	gnm6SGHtVvP7J1j7SO/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id09b-0000va-IO; Thu, 05 Dec 2019 23:03:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id09X-0000qR-R6
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 23:03:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id a33so2078188pgm.5
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 15:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=UaCKQZiD0d5nTkej3tKWw6jNxfWpLT5zIEUWWqdRKpA=;
 b=LDDuXijm67qxXxgWoaRdOgJdwZNAAacMOLmfr7YmKSYNoqjibWm0chc2O/a9cDfd6E
 5kYZHFZ3Mlr/dC4r5W/DmXgwhFH2g14YcP28Q/fy3+cg0SHj/OVoHjMidQXhpn6Wc+L+
 VteybtQS9bhRET8sF2AD6f+s6F+amurrNH0J1RCd+awf5Jta45X5kBgLOUIn6yLlC9A8
 JW1REukHA4rx67RVSS/gSr9Q2ylApBsdHv4xirE287iqpzSZJKDxmntu0AOyHNgi87yR
 jJ6KAvFYt12BMdOgEvf5AWYIYr3w0A5lc64q0FjVUp8qwafoT2h48pdJYDqCboWjZkE1
 1f8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=UaCKQZiD0d5nTkej3tKWw6jNxfWpLT5zIEUWWqdRKpA=;
 b=YA/0yeB2D6AmGbFlzvPc9Rs5P6I5sSNL5OHMhKrMU3RID/NHvJgph4Bg1bxfKacHkq
 DB5T8WwVXX0FHCFZ3xr2QMZh3Ahw2rNBNUzGsLRYvB+Is7sce39G+ZTaQh6tdMHGh0xB
 0vV1WlyB1Lhy/lxD8LD4k7wAgQPB2SYCbndCW9LI6/keXV+ef3rpMM/yqB+fn0p/yAED
 b+S42sqVWKz+LOfDiW1ZQX/jS/tXmIN0HJgNoR4brcIFLiK4z7EQRI8xyzOY8d5loT+e
 7bAVn/RqfeIlDZSBtkoqIOnZFCgrMl3lxvkeTBUvc8KVZGsaU+pCR8XdIaGXI7AvVdqT
 giRw==
X-Gm-Message-State: APjAAAUt/TNHU+5SzuG/Pewrcm8JulzamP6U2whYK1QEK8koQ7E1BtuO
 uQkmgJoT9z7Jq+ROzNL+LsVJ9Rxboyw=
X-Google-Smtp-Source: APXvYqxE4Tc1/1L7Sw0XQXwXkvkcrBAsfTkOmdmawlmE1yFHWH8R58ddCHm4r8TFNKRGj3/CotqmQg==
X-Received: by 2002:a63:f961:: with SMTP id q33mr96229pgk.350.1575586996212;
 Thu, 05 Dec 2019 15:03:16 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id k190sm12628177pga.73.2019.12.05.15.03.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 15:03:15 -0800 (PST)
Date: Thu, 05 Dec 2019 15:03:15 -0800 (PST)
X-Google-Original-Date: Thu, 05 Dec 2019 15:03:01 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v2 2/2] riscv: Set SHMLBA according to cache geometry
In-Reply-To: <20191126224446.15145-3-consult-mg@gstardust.com>
To: consult-mg@gstardust.com
Message-ID: <mhng-344205d1-f6ce-45d3-a420-77c00ab0f4ad@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_150319_882757_EF4D52DC 
X-CRM114-Status: GOOD (  25.96  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-riscv@lists.infradead.org, consult-mg@gstardust.com,
 aou@eecs.berkeley.edu, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019 14:44:46 PST (-0800), consult-mg@gstardust.com wrote:
> Set SHMLBA to the maximum cache "span" (line size * number of sets) of
> all CPU L1 instruction and data caches (L2 and up are rarely VIPT).
> This avoids VIPT cache aliasing with minimal alignment constraints.
>
> If the device tree does not provide cache parameters, use a conservative
> default of 16 KB:  only large enough to avoid aliasing in most VIPT caches.
>
> Signed-off-by: Marc Gauthier <consult-mg@gstardust.com>
> ---
>  arch/riscv/include/asm/Kbuild     |  1 -
>  arch/riscv/include/asm/shmparam.h | 12 +++++++
>  arch/riscv/kernel/cacheinfo.c     | 52 +++++++++++++++++++++++++++++++
>  3 files changed, 64 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/include/asm/shmparam.h
>
> diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
> index 16970f246860..3905765807af 100644
> --- a/arch/riscv/include/asm/Kbuild
> +++ b/arch/riscv/include/asm/Kbuild
> @@ -27,7 +27,6 @@ generic-y += percpu.h
>  generic-y += preempt.h
>  generic-y += sections.h
>  generic-y += serial.h
> -generic-y += shmparam.h
>  generic-y += topology.h
>  generic-y += trace_clock.h
>  generic-y += unaligned.h
> diff --git a/arch/riscv/include/asm/shmparam.h b/arch/riscv/include/asm/shmparam.h
> new file mode 100644
> index 000000000000..9b6a98153648
> --- /dev/null
> +++ b/arch/riscv/include/asm/shmparam.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_RISCV_SHMPARAM_H
> +#define _ASM_RISCV_SHMPARAM_H
> +
> +/*
> + * Minimum alignment of shared memory segments as a function of cache geometry.
> + */
> +#define	SHMLBA	arch_shmlba()

I'd prefer if we inline the memoization, which would avoid the cost of a
function call in the general case.  You can also avoid that 0 test by
initializing the variable to PAGE_SIZE and the filling it out in our early init
code -- maybe setup_vm()?  That's what SPARC is doing.

> +
> +long arch_shmlba(void);
> +
> +#endif /* _ASM_RISCV_SHMPARAM_H */
> diff --git a/arch/riscv/kernel/cacheinfo.c b/arch/riscv/kernel/cacheinfo.c
> index 4c90c07d8c39..1bc7df8577d6 100644
> --- a/arch/riscv/kernel/cacheinfo.c
> +++ b/arch/riscv/kernel/cacheinfo.c
> @@ -1,12 +1,61 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (C) 2017 SiFive
> + * Copyright (C) 2019 Aril Inc
>   */
>
>  #include <linux/cacheinfo.h>
>  #include <linux/cpu.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/mm.h>
> +
> +static long shmlba;
> +
> +
> +/*
> + * Assuming  cache size = line size * #sets * N  for N-way associative caches,
> + * return the max cache "span" == (line size * #sets) == (cache size / N)
> + * across all L1 caches, or 0 if cache parameters are not available.
> + * VIPT caches with span > min page size are susceptible to aliasing.
> + */
> +static long get_max_cache_span(void)
> +{
> +	struct cpu_cacheinfo *this_cpu_ci;
> +	struct cacheinfo *this_leaf;
> +	long span, max_span = 0;
> +	int cpu, leaf;
> +
> +	for_each_possible_cpu(cpu) {
> +		this_cpu_ci = get_cpu_cacheinfo(cpu);
> +		this_leaf = this_cpu_ci->info_list;
> +		for (leaf = 0; leaf < this_cpu_ci->num_leaves; leaf++) {
> +			if (this_leaf->level > 1)
> +				break;
> +			span = this_leaf->coherency_line_size *
> +			       this_leaf->number_of_sets;
> +			if (span > max_span)
> +				max_span = span;
> +			this_leaf++;
> +		}
> +	}
> +	return max_span;
> +}
> +
> +/*
> + * Align shared mappings to the maximum cache "span" to avoid aliasing
> + * in VIPT caches, for performance.
> + * The returned SHMLBA value is always a power-of-two multiple of PAGE_SIZE.
> + */
> +long arch_shmlba(void)
> +{
> +	if (shmlba == 0) {
> +		long max_span = get_max_cache_span();
> +
> +		shmlba = max_span ? PAGE_ALIGN(max_span) : 4 * PAGE_SIZE;

I'd prefer to avoid sneaking in a default 4*PAGE_SIZE here, just default to
PAGE_SIZE and rely on systems with this behavior specifying the correct tuning
value in the device tree.  This avoids changing the behavior for existing
systems, which is a slight regression as the alignment uses more memory.  It's
not a big deal, but on systems that don't require alignment for high
performance there's no reason to just throw away memory -- particularly as we
have some RISC-V systems with pretty limited memory (I'm thinking of the
Kendryte boards, though I don't know how SHMLBA interacts with NOMMU so it
might not matter).

> +	}
> +	return shmlba;
> +}
>
>  static void ci_leaf_init(struct cacheinfo *this_leaf,
>  			 struct device_node *node,
> @@ -93,6 +142,9 @@ static int __populate_cache_leaves(unsigned int cpu)
>  	}
>  	of_node_put(np);
>
> +	/* Force recalculating SHMLBA if cache parameters are updated. */
> +	shmlba = 0;
> +
>  	return 0;
>  }

