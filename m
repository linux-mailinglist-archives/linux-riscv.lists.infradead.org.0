Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B5F179906
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 20:29:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=4ra5UgqwbSCiIcEGnfUX8x8JvxIVeajjNajxy5pm7Nc=; b=uXQ7bxM+r1Ph4v
	IwIniBjPCfbADbWymD5vHJ+jw1vNFeuaJJbf7GTOEbq5QE+pFTei6e8dnIZhT1CCWnnxemZeOgl6F
	lE3WGP+XNmflgZDoPjhrOBNlAe17B0cVzLDesTMZRl0o9qcslUOYhyp3smjOCU21Ol0eyJAvmFn5M
	AZKfMVT6htmxLzikB6mZ1DhzIi145LkAkyXOdcu7EZWxYCxpO9306SrRvam3uf/2A46QKxrQHaIFO
	t5Dy4aFKXAqvbHIt1safP9sFUPg8hYlmrUyMKKDZ6YeheJDlzcR/8PhHPfgl2ZhFI/nJNaPftymwN
	eL/nPtlA8G4XBOoQbEMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ZhV-0004MS-L5; Wed, 04 Mar 2020 19:29:01 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ZhR-0004LW-Vf
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 19:28:59 +0000
Received: by mail-pl1-x643.google.com with SMTP id g12so1463877plo.3
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 11:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=4ra5UgqwbSCiIcEGnfUX8x8JvxIVeajjNajxy5pm7Nc=;
 b=d0nNwsM6TWZ9xP8Eh/qtjR5eU4OordoP6NYo3CogeIYBIYCQDVGr+iDy/XLhSh7xYi
 YBBM4NQ0QEdlW0w08UaMIPZgNCYVWPer/BqfHOJsNFXEMHWaEV+UBDcW8NTLUJee+1AO
 fiTM+9TgEhiePnoSZtQuFHfgIHI86rDiH2d5iQL77yClj9uYOMdgdeqnysfLzUjhKpbg
 JrBxJjbE5Ie+nYLfB7rmHvpHjEMYndgsjghRRYy8liY0B0xvw93UWgPqTTwoCAMP8Cx/
 jJWjPVvIJiKJArBrnVJyvZ6i+4lZYlboezcb768IFJwv0Vo79BNX0+XGvDezZ2Ny0Dcu
 13uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=4ra5UgqwbSCiIcEGnfUX8x8JvxIVeajjNajxy5pm7Nc=;
 b=cRVEzSFjpz7Sfh8vciDW+O04ZadqA6tclXF9OAU6xt8MzKTIBf6N5ZfpYo5H0jT/VU
 1cvhq8gesyj+sDhvYv0/8DR4APn6slvAd8AqEsExNK6a3cCP7EIBwBlcAHT9Zm4TcAKl
 nONbCKAI0/dO2p8KufoV/4bOxJZCD6Rbu8pg+PmpH5dxdYBwLr7c0zR9rgWuOAgXReA9
 S0qkUp8T7lWUO+XB7iFrlcS37Gc7KyArOpd5dCbntIEUIjHqQzzysr+RIvvH+o+Ou/Gs
 kjPySW5K+k5XG1PMyulkVNUzF1SrVK0OOLqlnMyqru/9Slf+ME9ZmYIjax5Wrcqz7LvQ
 QiVw==
X-Gm-Message-State: ANhLgQ0gdB34MdT0MpJ/8eSXUwIjUG/NOynE34tXdYKd99lUXC4TbeSP
 QRQ1P4kUH1TqTYeokW4LGtcard0JPGA=
X-Google-Smtp-Source: ADFU+vs6QhckXFKen/HG/EQttJIwTYLriL5mmFpwktEx1HOQZi6nf4/dcnhAOz2d51ILXpWid075LQ==
X-Received: by 2002:a17:902:8c8b:: with SMTP id
 t11mr4063553plo.319.1583350135796; 
 Wed, 04 Mar 2020 11:28:55 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id k1sm26814680pgt.70.2020.03.04.11.28.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 11:28:55 -0800 (PST)
Date: Wed, 04 Mar 2020 11:28:55 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 11:17:56 PST (-0800)
Subject: Re: [PATCH 05/10] riscv: Add SOC early init support
In-Reply-To: <20200212103432.660256-6-damien.lemoal@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-1db20381-4aaf-421f-a0ab-cca73f76b359@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_112858_017195_BF60C2EC 
X-CRM114-Status: GOOD (  24.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Anup Patel <Anup.Patel@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 12 Feb 2020 02:34:27 PST (-0800), Damien Le Moal wrote:
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
> 	/*
> 	 * some early init code here that can use simple matches
> 	 * against the flat device tree file.
> 	 */
> }
> SOC_EARLY_INIT_DECLARE("vendor,abc", abc_early_init);
>
> This early initialization function is executed only if the flat device
> tree for the board has a 'compatible = "vendor,abc"' entry;
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
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
> +#define SOC_EARLY_INIT_DECLARE(compat, fn)				\
> +	static const struct of_device_id __soc_early_init		\
> +		__used __section(__soc_early_init_table)		\
> +		 = { .compatible = compat, .data = fn  }
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
> +obj-y	+= soc.o
>  obj-y	+= cpu.o
>  obj-y	+= cpufeature.o
>  obj-y	+= entry.o
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 271860fc2c3f..a7768d6165d4 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -125,6 +125,7 @@ clear_bss_done:
>  	call kasan_early_init
>  #endif
>  	/* Start the kernel */
> +	call soc_early_init
>  	call parse_dtb
>  	tail start_kernel
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
> +	void (*early_fn)(const void *fdt);
> +	const struct of_device_id *s;
> +	const void *fdt = dtb_early_va;
> +
> +	for (s = (void *)&__soc_early_init_table_start;
> +	     (void *)s < (void *)&__soc_early_init_table_end; s++) {
> +		if (!fdt_node_check_compatible(fdt, 0, s->compatible)) {
> +			early_fn = s->data;
> +			early_fn(fdt);
> +			return;
> +		}
> +	}
> +}
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 1e0193ded420..32b160942f40 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -24,6 +24,12 @@ SECTIONS
>  	HEAD_TEXT_SECTION
>  	INIT_TEXT_SECTION(PAGE_SIZE)
>  	INIT_DATA_SECTION(16)
> +	. = ALIGN(8);
> +	__soc_early_init_table : {
> +		__soc_early_init_table_start = .;
> +		KEEP(*(__soc_early_init_table))
> +		__soc_early_init_table_end = .;
> +	}
>  	/* we have to discard exit text and such at runtime, not link time */
>  	.exit.text :
>  	{

I suppose my only worry here is that __init isn't going to be sufficient for
these sorts of fixups on all systems so we'll need something more special, but
that's just speculation so let's cross that bridge when we come to it.

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks!

