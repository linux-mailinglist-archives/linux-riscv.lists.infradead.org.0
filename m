Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AD4179907
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 20:29:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=4HJasQx0ByrxsRkbP7oDkaf842Jtpf5Q9SrAvFpAFjQ=; b=S2fVFLDzz0K6px
	XOEOk7rJbFhDAyBsj0bcl33LCPfdWRnqCYebuIAlO7OtNmBI9cKukRWEVlZX5i8gQm1OLT9nsfQIk
	zcVF2NwySDfKO8M9w5tn4lU2pL3Z0z8KFfiee/IMz6zw1QU0nDx+QNMak08DNZlYBS5lAZfKo0ks7
	CAKgBejn2zq67mvK9rkEfJ0JVuBLoGkFlh648Fd34VCOF3B8r1cLizVjQWCDwe/XswMeYAL2BWTSu
	61LaHM4aZxvE0EJWirznm0RJtkTVRz+tfxiPUuufnZ4yj9J+SCIyjD1sblxikrzK9GWznb5q/02AX
	s1FBf1nbVaH23FW0RMXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ZhZ-0004Q6-HW; Wed, 04 Mar 2020 19:29:05 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ZhU-0004Lx-GU
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 19:29:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id l7so1457119pff.6
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 11:28:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=4HJasQx0ByrxsRkbP7oDkaf842Jtpf5Q9SrAvFpAFjQ=;
 b=ZvIM/b9ESxZduDR6WTjFP4DupvEykEYccLUx5SkMyl0wHfOyKSfm1OPSadalUumrM8
 X3e7ypfJsH9u7Rk2+8LcyfDaDuH6IM4rDSVRhgQwdMg+fDbiudth0kdbWe3v6hSnqy5N
 VfoFoqmeaEYv57lIbdXXN7bSQ9QTvEMOu0KmZTSLLpyXlTDRFlHE36OZlKzOn932jIy/
 3y+pR/tnDP+usM08dVNsMTg19Sx3p6+sRXURE+MrBgOmEgY/DKLI2SKJq9bPRQfiz7Fk
 gOs7QB5Ycxuvm8Z0lYhFSY1PIfAxgxWitH2wgOfKmkbOfDmxg/v/gzk+UrLleUjf90PF
 2mZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=4HJasQx0ByrxsRkbP7oDkaf842Jtpf5Q9SrAvFpAFjQ=;
 b=eNBnoRkkVA8Pgwzk3D0qTnt5e+G3fraI7QAJATntMqDNwiHFZYolDUxE+4uU5Zm4bV
 FR8nFoUdPAOIhzFADe4jXuyxz6vbl3U9xYmZ440mE4UAlX8liPqPiYes7FVCkhtIh5zJ
 CYCsjmTN33KmuVu11B4SclKOq8BfdRFqAcSs+mwp1/OloSXCljd2vYjMbybX08dsWbLi
 45dZTh+6CdUZM5gjvh7kLLPwldTiyOZDTsaIY/uAG86pmb0Sf4kFEZgb9R9w1cM6l2LE
 Hv9BHI063tYwGXZmjQN1WcatbrL7BuMzQU0gGnPLCbnaFfKzCPZ5Y3AbhgJ5Q3x44XgP
 U1Mw==
X-Gm-Message-State: ANhLgQ2ax0L+RybtO1x4Epe7Rkt5RxdT7IUPAKXOojOhDP+Sdhr5+041
 TZ3ew6HqkbTxRtXmB2o5SkjtJPNCGI4=
X-Google-Smtp-Source: ADFU+vv9ytx7csgodR5sSfy9bODYO+loqbhLB77l1berBdhKS96AyscZj1H2rypb17sc5xyLeImi/g==
X-Received: by 2002:a63:5d56:: with SMTP id o22mr3882084pgm.255.1583350137244; 
 Wed, 04 Mar 2020 11:28:57 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id s21sm20527091pfm.186.2020.03.04.11.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 11:28:56 -0800 (PST)
Date: Wed, 04 Mar 2020 11:28:56 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 11:28:31 PST (-0800)
Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
In-Reply-To: <20200212103432.660256-5-damien.lemoal@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_112900_547128_18340BBD 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

On Wed, 12 Feb 2020 02:34:26 PST (-0800), Damien Le Moal wrote:
> Enable a kernel builtin dtb for boards not capable of providing a
> device tree to the kernel.

I'd prefer if we picked a mechanism that allows a single kernel binary to be
run on multiple systems.  I think there's two use cases here:

* Bootloaders that provide no DTB at all.
* Bootloaders that provied a DTB that, for some reason, isn't usable.

Given those constraints, could we do something similar to the early fixups?
I'm thinking we could build a mapping between a hardware identifier and a DTB,
then look up the DTB we want to use.  Users that want a kernel that only runs
on a single device can do so by configuring only a single DTB, users that want
a more portable kernel can select a bunch -- that's essentially the same as how
we're treating everything else (for example, the CONFIG_SOC_* stuff).

For the hardware ID, could we do something like:

* Check for the top-level DT compatible string, on systems where we have a
  provided DTB.
* Check for a matching mimpid/marchid/mvendorid tuple, maybe with some sort of
  masking functionality if we later need one.  These are availiable via SBI
  calls, but I'd be inclined to restrict them to M-mode boot and just say the
  SBI must provide a device tree with at least a suitable compatible string.

While I suppose we could put together a tool for generating these tables, for
now we could probably just stick the mappings in a table for now given that
there's only one of them.

That said, I'm not sure what to do about the different Kendryte boards -- is
there any way to poke the hardware to see which is which?

> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/Kbuild            |  1 +
>  arch/riscv/Kconfig           | 18 ++++++++++++++++++
>  arch/riscv/boot/dts/Makefile |  4 ++++
>  arch/riscv/kernel/setup.c    |  6 ++++++
>  arch/riscv/mm/init.c         |  4 ++++
>  5 files changed, 33 insertions(+)
>
> diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild
> index d1d0aa70fdf1..988804e430e4 100644
> --- a/arch/riscv/Kbuild
> +++ b/arch/riscv/Kbuild
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>
>  obj-y += kernel/ mm/ net/
> +obj-$(CONFIG_USE_BUILTIN_DTB)	+= boot/dts/
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 1a3b5a5276be..28899e15f548 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -355,6 +355,24 @@ config CMDLINE_FORCE
>
>  endchoice
>
> +config USE_BUILTIN_DTB
> +	bool "Use builtin DTB"
> +	help
> +	  Link a device tree blob for particular hardware into the kernel,
> +	  suppressing use of the DTB pointer provided by the bootloader.
> +	  This option should only be used with hardware or bootloaders that
> +	  are not capable of providing a DTB to the kernel, or for
> +	  experimental hardware without stable device tree bindings.
> +
> +config BUILTIN_DTB_SOURCE
> +	string "Source file for builtin DTB"
> +	default ""
> +	depends on USE_BUILTIN_DTB
> +	help
> +	  Base name (without suffix, relative to arch/riscv/boot/dts) for
> +	  the a DTS file that will be used to produce the DTB linked into
> +	  the kernel.
> +
>  endmenu
>
>  menu "Power management options"
> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
> index dcc3ada78455..0bf2669aa12d 100644
> --- a/arch/riscv/boot/dts/Makefile
> +++ b/arch/riscv/boot/dts/Makefile
> @@ -1,2 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
> +ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")
> +obj-$(CONFIG_USE_BUILTIN_DTB) += $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_SOURCE)).dtb.o
> +else
>  subdir-y += sifive
> +endif
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index 0a6d415b0a5a..3e89be9d888c 100644
> --- a/arch/riscv/kernel/setup.c
> +++ b/arch/riscv/kernel/setup.c
> @@ -68,7 +68,13 @@ void __init setup_arch(char **cmdline_p)
>
>  	setup_bootmem();
>  	paging_init();
> +
> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
> +	unflatten_and_copy_device_tree();
> +#else
>  	unflatten_device_tree();
> +#endif
> +
>  	clint_init_boot_cpu();
>
>  #ifdef CONFIG_SWIOTLB
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 965a8cf4829c..1274e889d008 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -480,7 +480,11 @@ static void __init setup_vm_final(void)
>  #else
>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  {
> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
> +	dtb_early_va = __dtb_start;
> +#else
>  	dtb_early_va = (void *)dtb_pa;
> +#endif
>  }
>
>  static inline void setup_vm_final(void)

