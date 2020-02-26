Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC54E16F84E
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 08:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XpfdBuwzLsKBPxLM34vm85m2xFsEFz6JbsiLzWPC4Lc=; b=MavQXyqHZ9aiJKvFf6HZYibpX
	To/Pcz0syT6hTwhRU7k3QGKDB3mD8gS+wsfxdnoiVyZ2tnU6nYj1J5KeyHTBfoUtC9/z+UYYM/Jae
	cvWk/JY2eo8/mv0FwakSPFM/GH72Qpj6yNmfd1vKHl36M+q6F//DS5a0UQO5uuOlDOvRFjAFTvY1U
	7wT4o/rPyvEp1n7mAPwt4czBAzIxkVx0wLqtUCIoPIfu3O8XhoWtXiOPUHM/k0Vg/hIIhEUWnAryU
	aLqXdPPuaU/PVj0TjhhzBkb3vSEJXrg+dfqzvloqhmrSa/mYfqR9VVkNZ+x3p4dAsA1DpkY5oxNKm
	k05MWLa7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6qk4-0000LG-4m; Wed, 26 Feb 2020 07:04:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6qk0-0000Ka-7U
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 07:04:22 +0000
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D82FA2467B
 for <linux-riscv@lists.infradead.org>; Wed, 26 Feb 2020 07:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582700659;
 bh=2Mn2rh2UnmkLwubpFpFIFXU5YjtRyl4XRJrdW3Zv9eg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tjIqbhWsUsTz4+iaFuaG3Q3kZPeya2RNPgdfY9noKlzPMqR70kquicHQLOlKKBWSh
 eYRTl6fWrrUsdHkTvGZghxaIlHSgAmwwb0d/CUZ3po4ElqkuoNAYxicPT4hSPsXM3e
 nYG0nVkZhDRwP3wJsVw62bE3cGetKKrWbXVlDqHg=
Received: by mail-wr1-f43.google.com with SMTP id t3so1562804wru.7
 for <linux-riscv@lists.infradead.org>; Tue, 25 Feb 2020 23:04:18 -0800 (PST)
X-Gm-Message-State: APjAAAW8gUPtxQ/i7bC/4xdlL504Wc4V36ctpH0Yaqd731Tz259Gsivu
 FJS5qsefC5jAD4pgFjh2ZNo494LgeNrf3/F0dQ8nyA==
X-Google-Smtp-Source: APXvYqxa555rzHIoZ0rL1iFd+0wW3hZMB+8tKwX5N+47RWMS2ZNV5aiZqsLpbDwxvKr3L1l/1SoAEfvpxFPPGEc0+z4=
X-Received: by 2002:a05:6000:110b:: with SMTP id
 z11mr3726058wrw.252.1582700657097; 
 Tue, 25 Feb 2020 23:04:17 -0800 (PST)
MIME-Version: 1.0
References: <20200226011037.7179-1-atish.patra@wdc.com>
 <20200226011037.7179-2-atish.patra@wdc.com>
In-Reply-To: <20200226011037.7179-2-atish.patra@wdc.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 26 Feb 2020 08:04:06 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu-Dk4hOobKhOEn1Wpbc4Ta2F5anZQ4rRmjpkPfT2g1L3w@mail.gmail.com>
Message-ID: <CAKv+Gu-Dk4hOobKhOEn1Wpbc4Ta2F5anZQ4rRmjpkPfT2g1L3w@mail.gmail.com>
Subject: Re: [RFC PATCH 1/5] efi: Move arm-stub to a common file
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_230420_313985_1FD6FD72 
X-CRM114-Status: GOOD (  26.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "Chang,
 Abner \(HPS SW/FW Technologist\)" <abner.chang@hpe.com>,
 Michal Simek <michal.simek@xilinx.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, "Schaefer,
 Daniel \(DualStudy\)" <daniel.schaefer@hpe.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Alexios Zavras <alexios.zavras@intel.com>,
 Alexander Graf <agraf@csgraf.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "leif@nuviainc.com" <leif@nuviainc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Atish,

On Wed, 26 Feb 2020 at 02:10, Atish Patra <atish.patra@wdc.com> wrote:
>
> Most of the arm-stub code is written in an architecture independent manner.
> As a result, RISC-V can reuse most of the arm-stub code.
>
> Rename the arm-stub.c to efi-stub.c so that ARM, ARM64 and RISC-V can use it.
> This patch doesn't introduce any functional changes.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/arm/Kconfig                                     |  2 +-
>  arch/arm64/Kconfig                                   |  2 +-
>  drivers/firmware/efi/Kconfig                         |  6 +++---
>  drivers/firmware/efi/libstub/Makefile                | 12 ++++++------
>  .../firmware/efi/libstub/{arm-stub.c => efi-stub.c}  |  7 ++++++-
>  5 files changed, 17 insertions(+), 12 deletions(-)
>  rename drivers/firmware/efi/libstub/{arm-stub.c => efi-stub.c} (98%)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 97864aabc2a6..9931fea06076 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -1955,7 +1955,7 @@ config EFI
>         select UCS2_STRING
>         select EFI_PARAMS_FROM_FDT
>         select EFI_STUB
> -       select EFI_ARMSTUB
> +       select EFI_GENERIC_ARCH_STUB
>         select EFI_RUNTIME_WRAPPERS
>         ---help---
>           This option provides support for runtime services provided
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 0b30e884e088..ae776d8ef2f9 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1720,7 +1720,7 @@ config EFI
>         select EFI_PARAMS_FROM_FDT
>         select EFI_RUNTIME_WRAPPERS
>         select EFI_STUB
> -       select EFI_ARMSTUB
> +       select EFI_GENERIC_ARCH_STUB
>         default y
>         help
>           This option provides support for runtime services provided
> diff --git a/drivers/firmware/efi/Kconfig b/drivers/firmware/efi/Kconfig
> index ecc83e2f032c..1bcedb7812da 100644
> --- a/drivers/firmware/efi/Kconfig
> +++ b/drivers/firmware/efi/Kconfig
> @@ -106,12 +106,12 @@ config EFI_PARAMS_FROM_FDT
>  config EFI_RUNTIME_WRAPPERS
>         bool
>
> -config EFI_ARMSTUB
> +config EFI_GENERIC_ARCH_STUB

Let's call it EFI_GENERIC_STUB

>         bool
>
> -config EFI_ARMSTUB_DTB_LOADER
> +config EFI_STUB_DTB_LOADER
>         bool "Enable the DTB loader"
> -       depends on EFI_ARMSTUB
> +       depends on EFI_GENERIC_ARCH_STUB

Do you actually need the DTB loader? I feel adding this for ARM was a
mistake, so you may want to make this depend on !RISCV while you're at
it.

>         default y
>         help
>           Select this config option to add support for the dtb= command
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 4d6246c6f651..2c5b76787126 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -22,7 +22,7 @@ cflags-$(CONFIG_ARM)          := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>                                    -fno-builtin -fpic \
>                                    $(call cc-option,-mno-single-pic-base)
>
> -cflags-$(CONFIG_EFI_ARMSTUB)   += -I$(srctree)/scripts/dtc/libfdt
> +cflags-$(CONFIG_EFI_GENERIC_ARCH_STUB) += -I$(srctree)/scripts/dtc/libfdt
>
>  KBUILD_CFLAGS                  := $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>                                    -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
> @@ -44,13 +44,13 @@ lib-y                               := efi-stub-helper.o gop.o secureboot.o tpm.o \
>                                    skip_spaces.o lib-cmdline.o lib-ctype.o
>
>  # include the stub's generic dependencies from lib/ when building for ARM/arm64
> -arm-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
> +efi-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
>
>  $(obj)/lib-%.o: $(srctree)/lib/%.c FORCE
>         $(call if_changed_rule,cc_o_c)
>
> -lib-$(CONFIG_EFI_ARMSTUB)      += arm-stub.o fdt.o string.o \
> -                                  $(patsubst %.c,lib-%.o,$(arm-deps-y))
> +lib-$(CONFIG_EFI_GENERIC_ARCH_STUB)            += efi-stub.o fdt.o string.o \
> +                                  $(patsubst %.c,lib-%.o,$(efi-deps-y))
>
>  lib-$(CONFIG_ARM)              += arm32-stub.o
>  lib-$(CONFIG_ARM64)            += arm64-stub.o
> @@ -72,8 +72,8 @@ CFLAGS_arm64-stub.o           := -DTEXT_OFFSET=$(TEXT_OFFSET)
>  # a verification pass to see if any absolute relocations exist in any of the
>  # object files.
>  #
> -extra-$(CONFIG_EFI_ARMSTUB)    := $(lib-y)
> -lib-$(CONFIG_EFI_ARMSTUB)      := $(patsubst %.o,%.stub.o,$(lib-y))
> +extra-$(CONFIG_EFI_GENERIC_ARCH_STUB)  := $(lib-y)
> +lib-$(CONFIG_EFI_GENERIC_ARCH_STUB)    := $(patsubst %.o,%.stub.o,$(lib-y))
>
>  STUBCOPY_FLAGS-$(CONFIG_ARM64) += --prefix-alloc-sections=.init \
>                                    --prefix-symbols=__efistub_
> diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/efi-stub.c
> similarity index 98%
> rename from drivers/firmware/efi/libstub/arm-stub.c
> rename to drivers/firmware/efi/libstub/efi-stub.c
> index 13559c7e6643..b87c3f70430c 100644
> --- a/drivers/firmware/efi/libstub/arm-stub.c
> +++ b/drivers/firmware/efi/libstub/efi-stub.c
> @@ -15,6 +15,7 @@
>
>  #include "efistub.h"
>
> +#if IS_ENABLED(CONFIG_ARM64) || IS_ENABLED(CONFIG_ARM)
>  /*
>   * This is the base address at which to start allocating virtual memory ranges
>   * for UEFI Runtime Services. This is in the low TTBR0 range so that we can use
> @@ -27,6 +28,10 @@
>   * entire footprint of the UEFI runtime services memory regions)
>   */
>  #define EFI_RT_VIRTUAL_BASE    SZ_512M
> +#else
> +#define EFI_RT_VIRTUAL_BASE    SZ_2G
> +#endif
> +

Can we drop this hunk for now? It should be part of your runtime
services series.

>  #define EFI_RT_VIRTUAL_SIZE    SZ_512M
>
>  #ifdef CONFIG_ARM64
> @@ -243,7 +248,7 @@ efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t *sys_table_arg)
>          * 'dtb=' unless UEFI Secure Boot is disabled.  We assume that secure
>          * boot is enabled if we can't determine its state.
>          */
> -       if (!IS_ENABLED(CONFIG_EFI_ARMSTUB_DTB_LOADER) ||
> +       if (!IS_ENABLED(CONFIG_EFI_STUB_DTB_LOADER) ||
>              secure_boot != efi_secureboot_mode_disabled) {
>                 if (strstr(cmdline_ptr, "dtb="))
>                         pr_efi("Ignoring DTB from command line.\n");
> --
> 2.24.0
>

