Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B8A17526B
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 04:58:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pJLzA8UN60zjvjRWqNStFdHw5KSo6dZSEiSpIHaT61o=; b=jWc5sRBGKTKgDlnC0SZ5Xc9+f
	Hn9WMfKk1aJ+gTKwIilnCHpFTVbHdiU+oRp7PCC7I0MnauP5zaYFpEDiFNE8QaRD/aqDAoq8nE7bA
	7QiiTny9PuHCWhr+sdrNz8aVeVeY8VjRmpO8SSyAyCiNeIZ48N6wA6helzeseiQG5LxYNaqcOoNus
	chKO7oycXl9XyWFK9YnhR7xmoKhwQCLqwmIm8z5ef8Voca/uBUIR/vVoSh1ZY2e/83oIvLOLOe1er
	DVSmxu7bKetNIvejDgG505LGfiIbB2rnRIG38YeOCXVCGA2nPkrXCb/yynGKCSMgAgGEblYtHm5k+
	PYQ9EmDJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cE8-00048c-9Z; Mon, 02 Mar 2020 03:58:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cE5-000487-6v
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 03:58:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id f15so9508352wml.3
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 19:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pJLzA8UN60zjvjRWqNStFdHw5KSo6dZSEiSpIHaT61o=;
 b=DSS865X0PUzVK6Bmm99GNkhc8b3xGx09H6s0ymDXxCxdrZVpnAKKSKU5IpAQUJxvT5
 mkLnd4j2xp/llMCcLjtzCZ3GQHR+Dref/ATy4G+zS8Z0RLo0WmRyhtsVfqOu68/3xzGb
 j0P6y5NzSeFcK0mxQidsL7hW7vjBuq+LWuKZfVMdK8pTh/9d6PIQJCmElhM+jA2pl9C9
 R1VhlpR9egku8nD5nWicmwY5ymOwqFlX4tF53VMQ25bfffrLPdMY4nZXx32yCqiawnu6
 T4OnRLSFdqClLAwUhUIdxeuSTbh5wlT8G9LH+ebR32/KbDNWIpx0DLwQO+jVOI5Z8Ai7
 oxdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pJLzA8UN60zjvjRWqNStFdHw5KSo6dZSEiSpIHaT61o=;
 b=KRWWfIhI3r38Sk0TaHnqEO8/s0j12OAc3mwEjBEc0M7KrE8UJoOyhT/a4JaWXd5aWW
 llaP9wKSFpCFHWXrBQhT8e+d7IM/fHTOFk0lHO5olpJD8y+G4Lkxesx4BUJ6KchfATPm
 o8EGX4beVGnu4fC396jwiqhCMAz0HmzoIivuEqa/lzhzYxI67FVHb/ef0ABRYGS/49nl
 gGLiM8sVF9Ihn9/fj6uopTB57MLDpilyvjiNcUzWGpwrp3LfAiaz7wr/K83pimEP0CfI
 d994YGxcRKYmfsKgX2r45+ucCE0HHiZBUHFDljEpnEQWM/KytN8blwhvDIDyEikDVKKV
 7r2Q==
X-Gm-Message-State: APjAAAVj4du9JCr9DMqzz4hMtdrwEsjagSY95E1XI/SlRfqlZUNft5lO
 iGItxQ5GWyVTTm1tSatS3yT9AzvntzKA0hNZHkjZwsHNYDU=
X-Google-Smtp-Source: APXvYqzBLG8fP40LiuKf5UZvn2nzoQVNXuiuHxGE6BVvWRV3uNlbX+PuBo/+py/NWPHukVyN6S9fqxmFSO5CcGmv2hM=
X-Received: by 2002:a05:600c:285:: with SMTP id
 5mr16969735wmk.120.1583121518601; 
 Sun, 01 Mar 2020 19:58:38 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-5-damien.lemoal@wdc.com>
In-Reply-To: <20200212103432.660256-5-damien.lemoal@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 2 Mar 2020 09:28:27 +0530
Message-ID: <CAAhSdy0M5z7CejCcZWpx+F_zvCi7CC-wZXdxStubE5WtJMdqew@mail.gmail.com>
Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_195841_254903_1192DD70 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:05 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> Enable a kernel builtin dtb for boards not capable of providing a
> device tree to the kernel.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>

This is a good feature addition for Linux RISC-V kernel.

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

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
> +obj-$(CONFIG_USE_BUILTIN_DTB)  += boot/dts/
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 1a3b5a5276be..28899e15f548 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -355,6 +355,24 @@ config CMDLINE_FORCE
>
>  endchoice
>
> +config USE_BUILTIN_DTB
> +       bool "Use builtin DTB"
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
> index 965a8cf4829c..1274e889d008 100644
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

