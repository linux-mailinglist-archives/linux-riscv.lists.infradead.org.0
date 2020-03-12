Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53975183A22
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 21:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QFwikrnp95KnH4qstGZpMtFjVhkG1Jik8Eal1Y8yAlk=; b=cOfyZ1nU3V5e0hAor0pgiw7kN
	TpoMKtw1c5858/+djxmy4x7kULyU8kn1gJt8+C5kzNX8A0o6vann/Au/myrMswGx1raK+6nHXf77N
	A4B4JeIZ5auuyCSxkF8hFYJxAQnmEGU7HTzGRBg8YQ9DD3N9j5bVh5Q3zLotpN9K4WqrQpaGaFS+B
	tVjetxJQYi2lj2JVe+Zk9V5fTTaJPv5KILCcsLRuvEso6r7nHviVNcvXJnQwvZhepB74ZVSlYXx81
	yt+sDvU9WAdsSMYPcU/WPjC1beFUe2fNq0Sa+NHXTy9QqcB+E5KsmEQ815MafZvULwboDNy7Xf1KF
	MUoZgBr3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCU3U-0004ON-P6; Thu, 12 Mar 2020 20:03:44 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCU3R-0004NV-AL
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 20:03:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id s5so9170155wrg.3
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 13:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QFwikrnp95KnH4qstGZpMtFjVhkG1Jik8Eal1Y8yAlk=;
 b=VOvtVWovquSyPqY4CEdZyDVAvgqT7z6Ksm0asra71I0CERHvPvtiLjCK3E9xqrEWAU
 9V5oOgeIegrCqvFgf52wriqwwm9zsPAC3UBmacxTG7gZnMWmFk4xelKQQy9AXRvcsCob
 FtYD+NFLc8xDbdeL8jRsM/jHstPib5wRLZjRlyB/mUFYJqAStfwjs6VQXjyveCEt12VO
 JaQ19vpbmgCRuu9XsrpktIRioRygsR46atkvledwoD6W90bwV34HePvuUY3KlR33lrnP
 HBb4UHd2ToX1jG12sgZ84W22vr/GL2tcpEEEfD0jFBF2EsjhJZzkTsb7S01IzIDW7fQG
 AD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QFwikrnp95KnH4qstGZpMtFjVhkG1Jik8Eal1Y8yAlk=;
 b=R5pE54VLqHMksycwMDGcg7qoaoPCqf3502bhqbZ10XUOlJVVVpLEU3xHIDkN8TYJ9H
 P9+wzXP7P8u7zkciXfOTGUcc/DZXNK74BOr7ZpaOMzbZuMKnQ7p/j+qpJl90CaNJq9W5
 GBL1nD2JUXF8ZEVGdf63KxTndNmEui98BJWj5OrWy03n0hpaiF9AE4DfgCp0ZsnVGASk
 j2NctKOF6uzoJfg63JBshRDl9FoiPvQkg+/I5QdeiX9Zl9petraxO4fGlqs9fj4VZXcp
 Sn6z/2I5Pamka1gH6wFgJ0ZIvzdwzSgNCe9rnzGX8zSV85wZcw/kLT2KtP304ubNuQBi
 Mg7w==
X-Gm-Message-State: ANhLgQ39PeRNBi/p4XHeUGx8Q0kEiZADsE/1kBrDZlyFa+Qlek+nBtWz
 Nzyr5SBSUvfU2P9gq7KVd4cBeWlsQ0F0XKk5ro2Rc50=
X-Google-Smtp-Source: ADFU+vv4Qqm+Jd3zog2uI9YQ/eAaIlwvVs15z1Wk22X1Ef8sLYMinLmGSCInI812VIfjOqD4S0oqxrueVuCG1QXyAFU=
X-Received: by 2002:a5d:474d:: with SMTP id o13mr12475470wrs.162.1584043418309; 
 Thu, 12 Mar 2020 13:03:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-3-damien.lemoal@wdc.com>
In-Reply-To: <20200312051107.1454880-3-damien.lemoal@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 12 Mar 2020 13:03:27 -0700
Message-ID: <CAOnJCULGMDOreN61x+mUHzFR=Qiey06506Ge1R5mDHO9EKuqEA@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] riscv: Add BUILTIN_DTB support
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_130341_359771_33254B91 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
> For the NOMMU case, enable a kernel builtin dtb to allow direct kernel
> loading without a bootloader. This option also allows booting on boards
> not capable of providing a device tree to the bootloader.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/Kbuild            |  1 +
>  arch/riscv/Kconfig           | 19 +++++++++++++++++++
>  arch/riscv/boot/dts/Makefile |  4 ++++
>  arch/riscv/kernel/setup.c    |  6 ++++++
>  arch/riscv/mm/init.c         |  4 ++++
>  5 files changed, 34 insertions(+)
>
> diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild
> index d1d0aa70fdf1..988804e430e4 100644
> --- a/arch/riscv/Kbuild
> +++ b/arch/riscv/Kbuild
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>
>  obj-y += kernel/ mm/ net/
> +obj-$(CONFIG_USE_BUILTIN_DTB)  += boot/dts/
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 1a3b5a5276be..025f5ba1dd68 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -355,6 +355,25 @@ config CMDLINE_FORCE
>
>  endchoice
>
> +config USE_BUILTIN_DTB
> +       bool "Use builtin DTB"
> +       depends on !MMU
> +       help
> +         Link a device tree blob for particular hardware into the kernel,
> +         suppressing use of the DTB pointer provided by the bootloader.
> +         This option should only be used with hardware or bootloaders that
> +         are not capable of providing a DTB to the kernel, or for
> +         experimental hardware without stable device tree bindings.
> +
> +config BUILTIN_DTB_SOURCE
> +       string "Source file for builtin DTB"
> +       default ""
> +       depends on USE_BUILTIN_DTB
> +       help
> +         Base name (without suffix, relative to arch/riscv/boot/dts) for
> +         the a DTS file that will be used to produce the DTB linked into
> +         the kernel.
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
>         setup_bootmem();
>         paging_init();
> +
> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
> +       unflatten_and_copy_device_tree();
> +#else
>         unflatten_device_tree();
> +#endif
> +
>         clint_init_boot_cpu();
>
>  #ifdef CONFIG_SWIOTLB
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index fab855963c73..51f1ee0a24a6 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -480,7 +480,11 @@ static void __init setup_vm_final(void)
>  #else
>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  {
> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
> +       dtb_early_va = __dtb_start;
> +#else
>         dtb_early_va = (void *)dtb_pa;
> +#endif
>  }
>
>  static inline void setup_vm_final(void)
> --
> 2.24.1
>
>

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish

