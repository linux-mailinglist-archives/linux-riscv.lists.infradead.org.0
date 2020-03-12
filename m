Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7938183AE9
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 21:53:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lju/1TCe9AsUaGI41BOC6pzxSrBaqyXz32h4pxMMaCI=; b=BIzxCyhnUIZFyS+nsFHlxhBbK
	58IvZytXrzvx5lKWThjbihIbAL8NZ5Ql8Pmd7UIKU4xXNiK0Fl8ddaQWvNtIMqCdRF1p298K1kpVu
	3tCyJbvzrc1tic1eDl+pJl91Dyqagxc09h4vCErh6gcGegeATfMxqA/taqv9cuNNZDezpZvXACScq
	oVtcjx7hRGf4Z39h7u1UBOS5PTRP5tvEP7Y4LeD5ZeDvEFMJw/0N+TJ8YxRHGyY8nHL7TnBexOe0E
	pPj0jTRDp6p1Bgjn/saOsVCFU4ZRu9L6A8+9TMGRjSAHoxqYn0cLdgNE1cqZTONirlm0xwFPua/iS
	WWpgjQAig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCUps-0006QF-ML; Thu, 12 Mar 2020 20:53:44 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCUpo-0006P5-Ak
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 20:53:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so7944737wme.5
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 13:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lju/1TCe9AsUaGI41BOC6pzxSrBaqyXz32h4pxMMaCI=;
 b=Q2OVwN9XrZCxutdnun4OYOWGi/2PCHWegCiz3DnkPfalOStLzmeb/choNFw21ZYgNs
 zCW7+Gjdblw0+xWOJEhkO7udsJpL7El9Gu/T/jhFdaawRtauDHgjoWJcSRiTkQzn92pk
 67mH1ItId8xe0L+VwiUG5keY2Rq/z9e3TGP0ZOL8GP3rLGA27sN+6tZIg7S//3jshYjP
 Li2oPANg8egkzUyGReckHOeW6z4JCgnhbM845hfuZF+fzP3qH0sf3sz3LWDiaoTXffXx
 hV2C1ax/AqxOQx07DzVQmcl0leM1k117hJucDvNuEyyX78t2kH4usQ6pA0apNl+2tRME
 b/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lju/1TCe9AsUaGI41BOC6pzxSrBaqyXz32h4pxMMaCI=;
 b=DEy/XLgv6nv+LGkLUeERUaQBLOAk3PG17pMI37j7AEdlPJC9CHQSD230Jg1SzDJqfX
 dOMUZdGChjA7TwNDboxCGk8T0ZMhRyqyXENHYS0cH9N1XLnJIlIzKTuC4+VY5qc71FcR
 IPwAlSc+dqjr2ojDGZEyDlCf4zmuh1KgdIDTsolsUcJCXZLWJ8pKReweLltE7hDcSA4r
 BWtCgOca6qQUQofSBFZzmFBi07ab5m3qUT8Nu8Aa5R6xBMZIsEOu1crg85DvhQtv3uYe
 VHdUyPBJgQNX24V7vEE/ouB4Hyo8CrH6rbpD0Xzj1ifLMDwLq7TTk9ACRSG9MB9uYXik
 ke4g==
X-Gm-Message-State: ANhLgQ2CTk3/zXRhPtXf+BqMfNrjlHu21SHWoDSgI/uiP1j845sjtqEG
 JXezTa/V13DcuBhbSWHbMR6wiCSoAuqxcOhJJtH1
X-Google-Smtp-Source: ADFU+vsfc02MpsOQdvVRuuhtzNCheQPPq85fkynjAI7CU3NDr4ZdyBqhCTjZyigRCiGebGVvSbUkEKPeNheNq6pWbw0=
X-Received: by 2002:a7b:c391:: with SMTP id s17mr5388545wmj.55.1584046417932; 
 Thu, 12 Mar 2020 13:53:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-4-damien.lemoal@wdc.com>
In-Reply-To: <20200312051107.1454880-4-damien.lemoal@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 12 Mar 2020 13:53:26 -0700
Message-ID: <CAOnJCUJ_aHi1tZ4WoMQVFctq6YMC5CbL4+XEQP0T3_zGZk8F3A@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] riscv: Add SOC early init support
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_135340_371734_1CABBC25 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 10:11 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> Add a mechanism for early SoC initialization for platforms that need
> additional hardware initialization not possible through the regular
> device tree and drivers mechanism. With this, a SoC specific
> initialization function can be called very early, before DTB parsing
> is done by parse_dtb() in Linux RISC-V kernel setup code.
>
> This can be very useful for early hardware initialization for No-MMU
> kernels booted directly in M-mode because it is quite likely that no
> other booting stage exist prior to the No-MMU kernel.
>
> Example use of a SoC early initialization is as follows:
>
> static void vendor_abc_early_init(const void *fdt)
> {
>         /*
>          * some early init code here that can use simple matches
>          * against the flat device tree file.
>          */
> }
> SOC_EARLY_INIT_DECLARE("vendor,abc", abc_early_init);
>
> This early initialization function is executed only if the flat device
> tree for the board has a 'compatible = "vendor,abc"' entry;
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/include/asm/soc.h    | 23 +++++++++++++++++++++++
>  arch/riscv/kernel/Makefile      |  1 +
>  arch/riscv/kernel/head.S        |  1 +
>  arch/riscv/kernel/soc.c         | 28 ++++++++++++++++++++++++++++
>  arch/riscv/kernel/vmlinux.lds.S |  6 ++++++
>  5 files changed, 59 insertions(+)
>  create mode 100644 arch/riscv/include/asm/soc.h
>  create mode 100644 arch/riscv/kernel/soc.c
>
> diff --git a/arch/riscv/include/asm/soc.h b/arch/riscv/include/asm/soc.h
> new file mode 100644
> index 000000000000..9b8c332cbe76
> --- /dev/null
> +++ b/arch/riscv/include/asm/soc.h
> @@ -0,0 +1,23 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +#ifndef _ASM_RISCV_SOC_H
> +#define _ASM_RISCV_SOC_H
> +
> +#include <linux/of.h>
> +#include <linux/linkage.h>
> +#include <linux/types.h>
> +
> +#define SOC_EARLY_INIT_DECLARE(compat, fn)                             \
> +       static const struct of_device_id __soc_early_init               \
> +               __used __section(__soc_early_init_table)                \
> +                = { .compatible = compat, .data = fn  }
> +

There may be some future kendryte board or some other RISC-V board
which want to use SOC_EARLY_INIT_DECLARE.
There should be a name parameter as well which allows multiple usage
of SOC_EARLY_INIT_DECLARE.

> +void soc_early_init(void);
> +
> +extern unsigned long __soc_early_init_table_start;
> +extern unsigned long __soc_early_init_table_end;
> +
> +#endif
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index 97d0c35f8b37..e4a22999dbc6 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -10,6 +10,7 @@ endif
>  extra-y += head.o
>  extra-y += vmlinux.lds
>
> +obj-y  += soc.o
>  obj-y  += cpu.o
>  obj-y  += cpufeature.o
>  obj-y  += entry.o
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 85f2073e7fe4..52ed11b4fda6 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -131,6 +131,7 @@ clear_bss_done:
>         call kasan_early_init
>  #endif
>         /* Start the kernel */
> +       call soc_early_init
>         call parse_dtb
>         tail start_kernel
>
> diff --git a/arch/riscv/kernel/soc.c b/arch/riscv/kernel/soc.c
> new file mode 100644
> index 000000000000..0b3b3dc9ad0f
> --- /dev/null
> +++ b/arch/riscv/kernel/soc.c
> @@ -0,0 +1,28 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +#include <linux/init.h>
> +#include <linux/libfdt.h>
> +#include <asm/pgtable.h>
> +#include <asm/soc.h>
> +
> +/*
> + * This is called extremly early, before parse_dtb(), to allow initializing
> + * SoC hardware before memory or any device driver initialization.
> + */
> +void __init soc_early_init(void)
> +{
> +       void (*early_fn)(const void *fdt);
> +       const struct of_device_id *s;
> +       const void *fdt = dtb_early_va;
> +
> +       for (s = (void *)&__soc_early_init_table_start;
> +            (void *)s < (void *)&__soc_early_init_table_end; s++) {
> +               if (!fdt_node_check_compatible(fdt, 0, s->compatible)) {
> +                       early_fn = s->data;
> +                       early_fn(fdt);
> +                       return;
> +               }
> +       }
> +}
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 1e0193ded420..32b160942f40 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -24,6 +24,12 @@ SECTIONS
>         HEAD_TEXT_SECTION
>         INIT_TEXT_SECTION(PAGE_SIZE)
>         INIT_DATA_SECTION(16)
> +       . = ALIGN(8);
> +       __soc_early_init_table : {
> +               __soc_early_init_table_start = .;
> +               KEEP(*(__soc_early_init_table))
> +               __soc_early_init_table_end = .;
> +       }
>         /* we have to discard exit text and such at runtime, not link time */
>         .exit.text :
>         {
> --
> 2.24.1
>
>


-- 
Regards,
Atish

