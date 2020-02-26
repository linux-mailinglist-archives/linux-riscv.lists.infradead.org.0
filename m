Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8404116F889
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 08:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6hOqhJin6slJRTo9o/UwU4wdwwg6HMJyJHFCg7NR7vE=; b=X00HwFiugsWp7YM5yJ+1C/kla
	ItHbxjGp2KB4HmXX04kEQaLPflK0h8orCXNvPSLQfG9DL8xFi+asPfKuf6NT9+yuGYCUQmsMesCcf
	Tn9OfMu+GFEuxXjsMeRbbYRElY1nAzrcvcnu17+rLTxrXtworPBccKzLuxj66jmuzsMqy4rOayoSe
	zpoa3AF//K2K2PxOlm0Q/ydxg8I0Jw2bQBH+YQ9LSxRuamfw3eE7tLT9r/rzd74r7/WHi5bsyD+Ag
	3GjJGDrksT7wu9d1gvkKe1umtn86TMthG4ku3fkFtFNxs5ke+TLyerLrVa/7swPo5VCRXXd/J90Jm
	WBHFLC+ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6r7e-0002TQ-RZ; Wed, 26 Feb 2020 07:28:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6r7a-0002SV-DY
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 07:28:44 +0000
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0F702467D
 for <linux-riscv@lists.infradead.org>; Wed, 26 Feb 2020 07:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582702122;
 bh=Jpmvaue+x7NvgWHz2Bnrr5J65mlxuyxU4weChioHbN4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tyKKpFPJuV40kHYnBsG1WZ9ovDUbWRrfCTcxsc3sq3zMEIOuuH6oqGAcbMasK3/a4
 3dWgFPPyz9W1/RFn8pWncabUiqo5JP03yAFjMx29LcSYSA43eWH/5qodBSdMQkcGAK
 TemdHhbI9L9gVzLNp7Ckqm+t8PREINhSPg4hxjxw=
Received: by mail-wm1-f50.google.com with SMTP id q9so1753224wmj.5
 for <linux-riscv@lists.infradead.org>; Tue, 25 Feb 2020 23:28:41 -0800 (PST)
X-Gm-Message-State: APjAAAWIL3TqippskFMBjkC4BHQoqYDL28IrZEEDwRbg6694YpROdcwv
 KU1PMahi8UfHJJy1+rW0G+Ed9RAo+6iLJB7z5q9d5A==
X-Google-Smtp-Source: APXvYqxHz/cMCIa49mzKRSFHu7HetTOSInHkWucWqTWRmh2P7F5LW0LOP5J1CK2WGphjureM7ITUpY5lmLSZCUK+guo=
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr4048163wmk.68.1582702119856; 
 Tue, 25 Feb 2020 23:28:39 -0800 (PST)
MIME-Version: 1.0
References: <20200226011037.7179-1-atish.patra@wdc.com>
 <20200226011037.7179-6-atish.patra@wdc.com>
In-Reply-To: <20200226011037.7179-6-atish.patra@wdc.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 26 Feb 2020 08:28:28 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu_iAzQ6et13aACarqns8-xzQ+YSqj+m3mVGGy=ny8GJBg@mail.gmail.com>
Message-ID: <CAKv+Gu_iAzQ6et13aACarqns8-xzQ+YSqj+m3mVGGy=ny8GJBg@mail.gmail.com>
Subject: Re: [RFC PATCH 5/5] RISC-V: Add EFI stub support.
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_232842_499476_04213450 
X-CRM114-Status: GOOD (  37.69  )
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

On Wed, 26 Feb 2020 at 02:10, Atish Patra <atish.patra@wdc.com> wrote:
>
> Add a RISC-V architecture specific stub code that actually copies the
> actual kernel image to a valid address and jump to it after boot services
> are terminated. Enable UEFI related kernel configs as well for RISC-V.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/Kconfig                        |  20 ++++
>  arch/riscv/Makefile                       |   1 +
>  arch/riscv/configs/defconfig              |   1 +
>  drivers/firmware/efi/libstub/Makefile     |   8 ++
>  drivers/firmware/efi/libstub/riscv-stub.c | 135 ++++++++++++++++++++++
>  5 files changed, 165 insertions(+)
>  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 42c122170cfd..68b1d565e51d 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -372,10 +372,30 @@ config CMDLINE_FORCE
>
>  endchoice
>
> +config EFI_STUB
> +       bool
> +
> +config EFI
> +       bool "UEFI runtime support"
> +       depends on OF
> +       select LIBFDT
> +       select UCS2_STRING
> +       select EFI_PARAMS_FROM_FDT
> +       select EFI_STUB
> +       select EFI_GENERIC_ARCH_STUB
> +       default y
> +       help
> +         This option provides support for runtime services provided
> +         by UEFI firmware (such as non-volatile variables, realtime
> +          clock, and platform reset). A UEFI stub is also provided to
> +         allow the kernel to be booted as an EFI application. This
> +         is only useful on systems that have UEFI firmware.
> +
>  endmenu
>
>  menu "Power management options"
>
>  source "kernel/power/Kconfig"
> +source "drivers/firmware/Kconfig"
>
>  endmenu
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index b9009a2fbaf5..0afaa89ba9ad 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -78,6 +78,7 @@ head-y := arch/riscv/kernel/head.o
>  core-y += arch/riscv/
>
>  libs-y += arch/riscv/lib/
> +core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
>
>  PHONY += vdso_install
>  vdso_install:
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index e2ff95cb3390..0a5d3578f51e 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -125,3 +125,4 @@ CONFIG_DEBUG_BLOCK_EXT_DEVT=y
>  # CONFIG_FTRACE is not set
>  # CONFIG_RUNTIME_TESTING_MENU is not set
>  CONFIG_MEMTEST=y
> +CONFIG_EFI=y
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 2c5b76787126..38facb61745b 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -21,6 +21,8 @@ cflags-$(CONFIG_ARM64)                := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>  cflags-$(CONFIG_ARM)           := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>                                    -fno-builtin -fpic \
>                                    $(call cc-option,-mno-single-pic-base)
> +cflags-$(CONFIG_RISCV)         := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> +                                  -fpic
>
>  cflags-$(CONFIG_EFI_GENERIC_ARCH_STUB) += -I$(srctree)/scripts/dtc/libfdt
>
> @@ -55,6 +57,7 @@ lib-$(CONFIG_EFI_GENERIC_ARCH_STUB)           += efi-stub.o fdt.o string.o \
>  lib-$(CONFIG_ARM)              += arm32-stub.o
>  lib-$(CONFIG_ARM64)            += arm64-stub.o
>  lib-$(CONFIG_X86)              += x86-stub.o
> +lib-$(CONFIG_RISCV)            += riscv-stub.o
>  CFLAGS_arm32-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
>  CFLAGS_arm64-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
>
> @@ -79,6 +82,11 @@ STUBCOPY_FLAGS-$(CONFIG_ARM64)       += --prefix-alloc-sections=.init \
>                                    --prefix-symbols=__efistub_
>  STUBCOPY_RELOC-$(CONFIG_ARM64) := R_AARCH64_ABS
>
> +STUBCOPY_FLAGS-$(CONFIG_RISCV) += --prefix-alloc-sections=.init \
> +                                  --prefix-symbols=__efistub_
> +STUBCOPY_RELOC-$(CONFIG_RISCV) := R_RISCV_HI20
> +
> +
>  $(obj)/%.stub.o: $(obj)/%.o FORCE
>         $(call if_changed,stubcopy)
>
> diff --git a/drivers/firmware/efi/libstub/riscv-stub.c b/drivers/firmware/efi/libstub/riscv-stub.c
> new file mode 100644
> index 000000000000..3935b29ea93a
> --- /dev/null
> +++ b/drivers/firmware/efi/libstub/riscv-stub.c
> @@ -0,0 +1,135 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2013, 2014 Linaro Ltd;  <roy.franz@linaro.org>
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + *
> + * This file implements the EFI boot stub for the RISC-V kernel.
> + * Adapted from ARM64 version at drivers/firmware/efi/libstub/arm64-stub.c.
> + */
> +
> +#include <linux/efi.h>
> +#include <linux/libfdt.h>
> +#include <linux/libfdt_env.h>
> +#include <asm/efi.h>
> +#include <asm/sections.h>
> +
> +#include "efistub.h"
> +/*
> + * RISCV requires the kernel image to placed TEXT_OFFSET bytes beyond a 2 MB
> + * aligned base for 64 bit and 4MB for 32 bit.
> + */
> +#if IS_ENABLED(CONFIG_64BIT)

You can use #ifdef here

> +#define MIN_KIMG_ALIGN SZ_2M
> +#else
> +#define MIN_KIMG_ALIGN SZ_4M
> +#endif
> +/*
> + * TEXT_OFFSET ensures that we don't overwrite the firmware that probably sits
> + * at the beginning of the DRAM.
> + */

Ugh. Really? On an EFI system, that memory should be reserved in some
way, we shouldn't be able to stomp on it like that.

> +#define TEXT_OFFSET MIN_KIMG_ALIGN
> +
> +typedef __attribute__((noreturn)) void (*jump_kernel_func)(unsigned int,
> +                                                          unsigned long);
> +
> +efi_status_t check_platform_features(void)
> +{
> +       return EFI_SUCCESS;
> +}
> +
> +u64 get_boot_hartid_from_fdt(unsigned long fdt)

static

> +{
> +       int chosen_node, len;
> +       const fdt64_t *prop;
> +       uint64_t hartid = U64_MAX;
> +
> +       chosen_node = fdt_path_offset((void *)fdt, "/chosen");
> +       if (chosen_node < 0)
> +               return hartid;

Just return U64_MAX here

> +       prop = fdt_getprop((void *)fdt, chosen_node, "efi-boot-hartid", &len);

Please call this 'boot-hartid' not 'efi-boot-hartid' as the hartid
value is independent of whether you boot via EFI or not.

> +       if (!prop || len != sizeof(u64))
> +               return hartid;
> +

Return U64_MAX

> +       hartid = fdt64_to_cpu(*prop);
> +

and just return the swabbed value, so you can get rid of the local var.

> +       return hartid;
> +}
> +
> +/*
> + * Jump to real kernel here with following constraints.
> + * 1. MMU should be disabled.
> + * 2. a0 should contain hartid
> + * 3. a1 should DT address
> + */
> +void __noreturn efi_enter_kernel(unsigned long entrypoint, unsigned long fdt)

This prototype has changed, and now includes the size of the fdt in param 3.

> +{
> +       unsigned long kernel_entry = entrypoint + _start_kernel - _start;

stext_offset ? It has a terrible name though, and I'll probably
propose to change it at some point, for all arches. But you can still
use it here.

> +       jump_kernel_func jump_kernel = (void (*)(unsigned int, unsigned long))kernel_entry;
> +       u64 hartid = get_boot_hartid_from_fdt(fdt);
> +
> +       if (hartid == U64_MAX)
> +               /* We can not use panic or BUG at this point */
> +               __asm__ __volatile__ ("ebreak");
> +       /* Disable MMU */
> +       csr_write(CSR_SATP, 0);
> +       jump_kernel(hartid, fdt);
> +}
> +
> +efi_status_t handle_kernel_image(unsigned long *image_addr,
> +                                unsigned long *image_size,
> +                                unsigned long *reserve_addr,
> +                                unsigned long *reserve_size,
> +                                unsigned long dram_base,
> +                                efi_loaded_image_t *image)
> +{
> +       efi_status_t status;
> +       unsigned long kernel_size, kernel_memsize = 0;
> +       unsigned long preferred_offset;
> +
> +       /*
> +        * The preferred offset of the kernel Image is TEXT_OFFSET bytes beyond
> +        * a KIMG_ALIGN aligned base.
> +        */
> +       preferred_offset = round_up(dram_base, MIN_KIMG_ALIGN) + TEXT_OFFSET;
> +
> +       kernel_size = _edata - _start;
> +       kernel_memsize = kernel_size + (_end - _edata);
> +
> +       /*
> +        * Try a straight allocation at the preferred offset.
> +        * This will work around the issue where, if dram_base == 0x0,
> +        * efi_low_alloc() refuses to allocate at 0x0 (to prevent the
> +        * address of the allocation to be mistaken for a FAIL return
> +        * value or a NULL pointer). It will also ensure that, on
> +        * platforms where the [dram_base, dram_base + TEXT_OFFSET)
> +        * interval is partially occupied by the firmware (like on APM
> +        * Mustang), we can still place the kernel at the address
> +        * 'dram_base + TEXT_OFFSET'.

Better drop this entire last sentence (unless it is relevant, but then
rework it to drop the APM Mustang reference)

> +        */
> +       if (*image_addr == preferred_offset)
> +               return EFI_SUCCESS;
> +
> +       *image_addr = *reserve_addr = preferred_offset;
> +       *reserve_size = round_up(kernel_memsize, EFI_ALLOC_ALIGN);
> +
> +       status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
> +                               EFI_LOADER_DATA,
> +                               *reserve_size / EFI_PAGE_SIZE,
> +                               (efi_physical_addr_t *)reserve_addr);
> +
> +       if (status != EFI_SUCCESS) {
> +               *reserve_size = kernel_memsize + TEXT_OFFSET;
> +               status = efi_low_alloc(*reserve_size, MIN_KIMG_ALIGN,
> +                                      reserve_addr);
> +
> +               if (status != EFI_SUCCESS) {
> +                       pr_efi_err("Failed to relocate kernel\n");
> +                       *reserve_size = 0;
> +                       return status;
> +               }
> +               *image_addr = *reserve_addr + TEXT_OFFSET;
> +       }
> +       memcpy((void *)*image_addr, image->image_base, kernel_size);
> +
> +       return EFI_SUCCESS;
> +}
> --
> 2.24.0
>

