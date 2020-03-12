Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7316E1839D0
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 20:50:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+UY82/DVd3i7NdUMSKJVr8Je0G6LdA3Ml9SBPsppXPA=; b=JF7+ID1JqRpQ5IZLrrYZdq2dB
	TRclnW1CpP9pXXHQ2MN1HS9DmOgAyX/qQVlk5SVUpEKg1EPgSF/QaeW3xzHbSlPQSqL4AZriDJBut
	ZRqSyAye0TRFBE34OWc8Nxba4LNdXJcvPOR99K+iAGGO9qIYwhPoGA9soXa4/Y0H/9qiz7dAmAP52
	l8Tt5KYSgYYv2pxof510aLU6Z7FR/OZwH8uO/jEX4YGcva3lCMWw/upy/G76816JGsvIk9YXWKqyW
	z3gPKoYcb07XhAR/tnR4bPs5YJe3KINhLeiIY7BBTLWkD3FRUx7MQfuaJhPSrbeoSvWjVW0p+Gq1S
	IYAKjySxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCTr0-0000Cm-3C; Thu, 12 Mar 2020 19:50:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCTqw-0000CH-7I
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 19:50:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id x11so4325950wrv.5
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 12:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+UY82/DVd3i7NdUMSKJVr8Je0G6LdA3Ml9SBPsppXPA=;
 b=LD7QEzOR1Napw0ehQOtI2REj9UV0MCBbe2P/OnSwi+yxjCgoPogVHWs/NoWgeGjdgt
 9dAPgK4a8Go5TguLJlQYWdkgOtMZ8npvBgunfhmDBfLuQYuwwQ05q+myxYI5S8MgnMwx
 y97FJ//Xb8tQvyLv6lC/37U7Mw2jNlIEBTGzlzcLzAJYraKbMa5AzL7EksmWb5dkD09t
 22Vk61dgHjgiFRy+WNIdK12+75lGEC4qOLX6PgcZJiViqgLCCC+xNs3XpiJp/Dj/xKhi
 PT85WvUFBlpQSgjz/0zBHjpshwltYwx5QqtVyl/bLKpJGSSWR1Z8DKFheOej1oGLV+3A
 7FFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+UY82/DVd3i7NdUMSKJVr8Je0G6LdA3Ml9SBPsppXPA=;
 b=hLDwqA6nzuEa9mmywJp2egqC2A3ZK8R0AkGcMXEwPkfZQACDDJjIFRljXCaWJaIKT2
 LGUiXeRUygfUmlvDBNNLWTetoohj8bBLeN6+bSZ21Y+zKoq4dD4KqWPqJYGYu+EUo/yz
 NpEMwtiPM+Sc+gnMUlpqBf+CoDeDdhMr+RW4/DZt2IVyzjDT365+CREQM1kSaP6KFfDp
 dxGm4zUfqaZoraBdSnVrEjYBgUrwIatZpIJvZddJPcOqKSQpiCUsWlwd6rzC2cW13hGY
 6ghsi+WAqDq+YtM4v9XrbZgfmB9u/EbNBvPxx8cwc1xZNF/vFhzeoeiZ84cc31bazee1
 SyTQ==
X-Gm-Message-State: ANhLgQ2uoiwUgV9z00WcgBx6QgBpI1yq4HzeBfRuvMeQ+45xPg03XIbt
 l48WfdJHr5vDvYR5bZvlGyGNRAwV1zFdCr8hLy/C/Is=
X-Google-Smtp-Source: ADFU+vvlTPRZpLO1RYHYYdqyYoz67KxRAejWICGPb3HGMTFJAVoIfmhQeuEjDwFkQzaye62NbCLyLQo+yvSfzFhCG+I=
X-Received: by 2002:adf:f584:: with SMTP id f4mr13223492wro.77.1584042644624; 
 Thu, 12 Mar 2020 12:50:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-4-damien.lemoal@wdc.com>
In-Reply-To: <20200312051107.1454880-4-damien.lemoal@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 12 Mar 2020 12:50:33 -0700
Message-ID: <CAOnJCUK4bTRXHRPihwPaGozov5EoJ0ye5JSHRSmP6EXAijS_VQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] riscv: Add SOC early init support
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_125046_269154_05861F16 
X-CRM114-Status: GOOD (  21.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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


Reviewed-by: Atish Patra <atish.patra@wdc.com>
-- 
Regards,
Atish

