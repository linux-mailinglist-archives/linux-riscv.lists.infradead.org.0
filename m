Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053941B30F2
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 22:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=6kF4p52p1ybubZnJvTo0PlRTDf0IqwPux1Z+sjlWQy0=; b=kkRC1QaHOdpxmm
	Zp851spePk7q8zcyAKEuFCaWF92geRGKa1G/rDU7Dxh112k0XNny3rVcmnWsLdt/e94kNy1q3EkEJ
	s6xq8os4oradYkr6S0dfgZMq+zYSkbHg6Phj7UiqP89VtlA1kbgW28LaYbXPJ0pnvJfRV1BBaYU3k
	0bK1tDe/LBTvH/KNpDoA+V/zJP/Mq0tYEtoKu0uidpygKbRqZzElMAS63jl70rYKpefHEZt3njc6H
	uR6Ibyba1aRq8i5O70wCyxoJemZfL9GjNOxJbbzdz2e8I3JBmvnGhjDfgyxwIOSSBslnm6tCFijHP
	TIHA4dWEIuw2NdFQLAZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQzCA-0008Sf-3y; Tue, 21 Apr 2020 20:08:38 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQzC4-0008RX-LS
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 20:08:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id o185so6756825pgo.3
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 13:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=6kF4p52p1ybubZnJvTo0PlRTDf0IqwPux1Z+sjlWQy0=;
 b=123Ks98fBL2usWs4gLQHWQapNV5cUJB94QLxNuoGsGPJE/Ac5OGFjJV4y9ThZNWawr
 SINUJ9xDcT/yeImAqBhFtie6c3QewCC+Mso0ter42gaQEnio249Mcq40iAiB5W9fjdI9
 QJI/jOU6XROf9UCNuMEGvM6sD51iBNNkGinGzwG5Cq3XKP6zkKK4nu6zaVuiziuq8+17
 T1TkWkBMzatpBlNwFqaOt7omYNM+GI4QO7noS/zm2uO/U8oBqZGBTWCnBy9uLcufU/fV
 rjF0moPvI+ITSO24MoPvKuw31OHjbQL7iz3xn/0wZzlbggcwQySNaoVIoyxTuQ6wEvYV
 UWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=6kF4p52p1ybubZnJvTo0PlRTDf0IqwPux1Z+sjlWQy0=;
 b=hrxiW2ufp+EzUi+xCJiuY6RV7FjDGto6Xdo3LKdDOvmnJm9itfx/V1NiZgJjMKhmnh
 w5/Vw1f+BxMJkWfeQom7jkWkuqxYc/X79AMPCiimdL2+740x+9ouMnDnpC1zRyxxGbhG
 JxmgPHQLrtSKZqJGCgo4B0cm7pGlAOixgtRK8SApzklUg5HhOL2smV1OBKCemTOPCkCR
 H2uZjsrvavklgQhcgaZwZkYv7ZJDEMqzYhuVrL/oSRK4YfPnaGKKfyUIfxLP7nlemFh1
 lXgSpRmu0MH1AcJQ8tPhAAH3FvGRLVXBIDB9ddUmU26t9P6EJqzbEMWFdjMmjcP8S8EY
 qkSg==
X-Gm-Message-State: AGi0PuZ52jmZTSjneeBt1hHPxFOXm4aMhfTKSYdZohRaHEm4ggZm0tSy
 WAgxhyHdoQ551k7tH0+xw/iyQ0Xk/DO5MA==
X-Google-Smtp-Source: APiQypLc+RFKzhlcT+yNvaiIQEAqcgzRD1N2l4iw9mkJiVSh1/1ihKmVCdhjlZ2AH4Ql83E3dznixw==
X-Received: by 2002:aa7:90d6:: with SMTP id k22mr11471175pfk.57.1587499711307; 
 Tue, 21 Apr 2020 13:08:31 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id o99sm3253836pjo.8.2020.04.21.13.08.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 13:08:30 -0700 (PDT)
Date: Tue, 21 Apr 2020 13:08:30 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 13:08:27 PDT (-0700)
Subject: Re: [v4 PATCH 3/3] RISC-V: Add EFI stub support.
In-Reply-To: <20200421033336.9663-4-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-eeb13dd6-b358-491a-909c-30b1725f95c7@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_130832_707596_7035B535 
X-CRM114-Status: GOOD (  32.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: linux-efi@vger.kernel.org, xypron.glpk@gmx.de, masahiroy@kernel.org,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 linux-riscv@lists.infradead.org, ardb@kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 20:33:36 PDT (-0700), Atish Patra wrote:
> Add a RISC-V architecture specific stub code that actually copies the
> actual kernel image to a valid address and jump to it after boot services
> are terminated. Enable UEFI related kernel configs as well for RISC-V.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/Kconfig                        |  20 ++++
>  arch/riscv/Makefile                       |   1 +
>  arch/riscv/configs/defconfig              |   1 +
>  arch/riscv/include/asm/efi.h              |  44 +++++++++
>  drivers/firmware/efi/Kconfig              |   2 +-
>  drivers/firmware/efi/libstub/Makefile     |  10 ++
>  drivers/firmware/efi/libstub/riscv-stub.c | 106 ++++++++++++++++++++++
>  7 files changed, 183 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/include/asm/efi.h
>  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index f39e326a7a42..eb4f41c8f3ce 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -379,10 +379,30 @@ config CMDLINE_FORCE
>
>  endchoice
>
> +config EFI_STUB
> +	bool
> +
> +config EFI
> +	bool "UEFI runtime support"
> +	depends on OF
> +	select LIBFDT
> +	select UCS2_STRING
> +	select EFI_PARAMS_FROM_FDT
> +	select EFI_STUB
> +	select EFI_GENERIC_STUB

So I guess just "select RISCV_ISA_C" would be sufficient to make this work, but
I still feel flike an explicit "c.li" is saner.

> +	default y
> +	help
> +	  This option provides support for runtime services provided
> +	  by UEFI firmware (such as non-volatile variables, realtime
> +          clock, and platform reset). A UEFI stub is also provided to
> +	  allow the kernel to be booted as an EFI application. This
> +	  is only useful on systems that have UEFI firmware.
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
> index fb6e37db836d..079435804d6d 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -80,6 +80,7 @@ head-y := arch/riscv/kernel/head.o
>  core-y += arch/riscv/
>
>  libs-y += arch/riscv/lib/
> +core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
>
>  PHONY += vdso_install
>  vdso_install:
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 4da4886246a4..ae69e12d306a 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -129,3 +129,4 @@ CONFIG_DEBUG_BLOCK_EXT_DEVT=y
>  # CONFIG_RUNTIME_TESTING_MENU is not set
>  CONFIG_MEMTEST=y
>  # CONFIG_SYSFS_SYSCALL is not set
> +CONFIG_EFI=y
> diff --git a/arch/riscv/include/asm/efi.h b/arch/riscv/include/asm/efi.h
> new file mode 100644
> index 000000000000..62d7d5eafed8
> --- /dev/null
> +++ b/arch/riscv/include/asm/efi.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + * Based on arch/arm64/include/asm/efi.h
> + */
> +#ifndef _ASM_EFI_H
> +#define _ASM_EFI_H
> +
> +#include <asm/io.h>
> +#include <asm/mmu_context.h>
> +#include <asm/ptrace.h>
> +#include <asm/tlbflush.h>
> +
> +#define VA_BITS_MIN 39

I don't see this actually being used, but if it's releant to some macro that
I'm missing then EFI support should depend on rv64.

> +
> +/* on RISC-V, the FDT may be located anywhere in system RAM */
> +static inline unsigned long efi_get_max_fdt_addr(unsigned long dram_base)
> +{
> +	return ULONG_MAX;
> +}
> +
> +/* Load initrd at enough distance from DRAM start */
> +static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
> +						    unsigned long image_addr)
> +{
> +	return dram_base + SZ_256M;
> +}
> +
> +#define efi_bs_call(func, ...)	efi_system_table()->boottime->func(__VA_ARGS__)
> +#define efi_rt_call(func, ...)	efi_system_table()->runtime->func(__VA_ARGS__)
> +#define efi_is_native()		(true)
> +
> +#define efi_table_attr(inst, attr)	(inst->attr)
> +
> +#define efi_call_proto(inst, func, ...) inst->func(inst, ##__VA_ARGS__)
> +
> +#define alloc_screen_info(x...)		(&screen_info)
> +extern char stext_offset[];
> +
> +static inline void free_screen_info(struct screen_info *si)
> +{
> +}
> +
> +#endif /* _ASM_EFI_H */
> diff --git a/drivers/firmware/efi/Kconfig b/drivers/firmware/efi/Kconfig
> index 2a2b2b96a1dc..fcdc789d3f87 100644
> --- a/drivers/firmware/efi/Kconfig
> +++ b/drivers/firmware/efi/Kconfig
> @@ -111,7 +111,7 @@ config EFI_GENERIC_STUB
>
>  config EFI_ARMSTUB_DTB_LOADER
>  	bool "Enable the DTB loader"
> -	depends on EFI_GENERIC_STUB
> +	depends on EFI_GENERIC_STUB && !RISCV
>  	default y
>  	help
>  	  Select this config option to add support for the dtb= command
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 0f57293d777e..eb365c55c0fe 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -22,6 +22,8 @@ cflags-$(CONFIG_ARM64)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>  cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>  				   -fno-builtin -fpic \
>  				   $(call cc-option,-mno-single-pic-base)
> +cflags-$(CONFIG_RISCV)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> +				   -fpic
>
>  cflags-$(CONFIG_EFI_GENERIC_STUB) += -I$(srctree)/scripts/dtc/libfdt
>
> @@ -57,6 +59,7 @@ lib-$(CONFIG_EFI_GENERIC_STUB)	+= efi-stub.o fdt.o string.o \
>  lib-$(CONFIG_ARM)		+= arm32-stub.o
>  lib-$(CONFIG_ARM64)		+= arm64-stub.o
>  lib-$(CONFIG_X86)		+= x86-stub.o
> +lib-$(CONFIG_RISCV)		+= riscv-stub.o
>  CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
>  CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
>
> @@ -100,6 +103,13 @@ STUBCOPY_FLAGS-$(CONFIG_X86)	+= --rename-section .bss=.bss.efistub,load,alloc
>  STUBCOPY_RELOC-$(CONFIG_X86_32)	:= R_386_32
>  STUBCOPY_RELOC-$(CONFIG_X86_64)	:= R_X86_64_64
>
> +# For RISC-V, we don't need anything special other than arm64. Keep all the
> +# symbols in .init section and make sure that no absolute symbols references
> +# doesn't exist.
> +STUBCOPY_FLAGS-$(CONFIG_RISCV)	+= --prefix-alloc-sections=.init \
> +				   --prefix-symbols=__efistub_
> +STUBCOPY_RELOC-$(CONFIG_RISCV)	:= R_RISCV_HI20
> +
>  $(obj)/%.stub.o: $(obj)/%.o FORCE
>  	$(call if_changed,stubcopy)
>
> diff --git a/drivers/firmware/efi/libstub/riscv-stub.c b/drivers/firmware/efi/libstub/riscv-stub.c
> new file mode 100644
> index 000000000000..bd1d6fed8754
> --- /dev/null
> +++ b/drivers/firmware/efi/libstub/riscv-stub.c
> @@ -0,0 +1,106 @@
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
> + * RISC-V requires the kernel image to placed 2 MB aligned base for 64 bit and
> + * 4MB for 32 bit.
> + */
> +#ifdef CONFIG_64BIT
> +#define MIN_KIMG_ALIGN	SZ_2M
> +#else
> +#define MIN_KIMG_ALIGN	SZ_4M
> +#endif
> +
> +typedef __attribute__((noreturn)) void (*jump_kernel_func)(unsigned int,
> +							   unsigned long);
> +efi_status_t check_platform_features(void)
> +{
> +	return EFI_SUCCESS;
> +}
> +
> +static u32 get_boot_hartid_from_fdt(unsigned long fdt)
> +{
> +	int chosen_node, len;
> +	const fdt32_t *prop;
> +
> +	chosen_node = fdt_path_offset((void *)fdt, "/chosen");
> +	if (chosen_node < 0)
> +		return U32_MAX;
> +	prop = fdt_getprop((void *)fdt, chosen_node, "boot-hartid", &len);
> +	if (!prop || len != sizeof(u32))
> +		return U32_MAX;
> +
> +	return fdt32_to_cpu(*prop);
> +}
> +
> +/*
> + * Jump to real kernel here with following constraints.
> + * 1. MMU should be disabled.
> + * 2. a0 should contain hartid
> + * 3. a1 should DT address
> + */
> +void __noreturn efi_enter_kernel(unsigned long entrypoint, unsigned long fdt,
> +				 unsigned long fdt_size)
> +{
> +	unsigned long kernel_entry = entrypoint + (unsigned long)stext_offset;
> +	jump_kernel_func jump_kernel = (jump_kernel_func) kernel_entry;
> +	u32 hartid = get_boot_hartid_from_fdt(fdt);
> +
> +	if (hartid == U32_MAX)
> +		/* We can not use panic or BUG at this point */
> +		__asm__ __volatile__ ("ebreak");
> +	/* Disable MMU */
> +	csr_write(CSR_SATP, 0);
> +	jump_kernel(hartid, fdt);
> +}
> +
> +efi_status_t handle_kernel_image(unsigned long *image_addr,
> +				 unsigned long *image_size,
> +				 unsigned long *reserve_addr,
> +				 unsigned long *reserve_size,
> +				 unsigned long dram_base,
> +				 efi_loaded_image_t *image)
> +{
> +	efi_status_t status;
> +	unsigned long kernel_size = 0;
> +	unsigned long preferred_addr;
> +
> +	kernel_size = _edata - _start;
> +	*reserve_size = kernel_size + (_end - _edata);
> +	*image_addr = (unsigned long)_start;
> +
> +	/*
> +	 * RISC-V kernel maps PAGE_OFFSET virtual address to the same physical
> +	 * address where kernel is booted. That's why kernel should boot from
> +	 * as low as possible to avoid wastage of memory. Currently, dram_base
> +	 * is occupied by the firmware. So the preferred address for kernel to
> +	 * boot is next aligned address. If preferred address is not available,
> +	 * relocate_kernel will fall back to efi_low_alloc_above to allocate
> +	 * lowest possible memory region as long as the address and size meets
> +	 * the alignment constraints.
> +	 */
> +	preferred_addr = round_up(dram_base, MIN_KIMG_ALIGN) + MIN_KIMG_ALIGN;
> +	status = efi_relocate_kernel(image_addr, kernel_size, *reserve_size,
> +				     preferred_addr, MIN_KIMG_ALIGN, dram_base);
> +
> +	if (status != EFI_SUCCESS) {
> +		pr_efi_err("Failed to relocate kernel\n");
> +		*reserve_size = 0;
> +		return status;
> +	}
> +
> +	return EFI_SUCCESS;
> +}

