Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BABDD1AE96E
	for <lists+linux-riscv@lfdr.de>; Sat, 18 Apr 2020 05:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cc6dPOKfGjGc1r9wBtzxlndIE5Gtel5BHaiZJdDMh8g=; b=b3DB0U00qg1t0JwufBjlUTEqU
	sPsurDyQ8z1MVbaJSskbVRD10iJqZ2onrMhgSxLTxrlgp4TTyhhwAE2ak2v7D2utI87720GC7sF2F
	RoQ9a1A3dPBZl+TNAoCS6/3H7h+56I4tlZJuJj2APyR8cTbSQ+gZk9Y2eCL9tFZVXR5i+byEkjsw1
	g+DvIvmxmi052quMVihFWjBswqLpRZfXGlwMYAWDK4xHBqsdtvt2AHHe+/0Vt14Vd055x2gN5x/zw
	JWHtobuXRaV5F0lM5E3N+4np2tUhDTmFTjEg+8a4oyRhlhQRLQEKxZCk2zEpYR37ONoz7hb63qS4p
	TEXDj+HCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPdlN-0002Hf-Rz; Sat, 18 Apr 2020 03:03:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPdlJ-0002Gh-0v
 for linux-riscv@lists.infradead.org; Sat, 18 Apr 2020 03:03:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id f13so5144455wrm.13
 for <linux-riscv@lists.infradead.org>; Fri, 17 Apr 2020 20:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Cc6dPOKfGjGc1r9wBtzxlndIE5Gtel5BHaiZJdDMh8g=;
 b=DI07qc34JrRYUwx2/j2KyDRxGbbePX0i1nFSPDAdGeo71Jt9xhZ2CaOiP2WHLVsGF/
 +xmjoStayS0rRQsaaox8u/KqlT30vqjRqoizdl+DUh8LY2sjIlPdQNxTrzU+tCkZJtq0
 j0kMwJ6lJMm9o1ukf57g9igbXo1h86OHMOdSUzyi1plPFbp0udZuwTVvLBV6bwbYsgSY
 vPakwFyL1OERa2mSSJOTuUDl+OOCom8WrPWtIdcMbuI2F4p5tgJbaQLM8wm5UAeVeuHD
 ucNjjJNXdffZtlMChSRzWyE2b8wtgue07ODEltZIGFG1Rx8XrSIOzBiDW1arHRG4UMYQ
 50hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cc6dPOKfGjGc1r9wBtzxlndIE5Gtel5BHaiZJdDMh8g=;
 b=aTcXXLoDgVhdDFQTkI9bqmUikqktaPRukP/yu+7jpP/lBt/SQNO3NMChRNTjSpS06L
 cxf9LJ+Bm1/+ccEX3URgMsKxgOJxNx+jHRlA0758V70wunO1a3N0bVTAPQd/vIQtACu9
 Ot2TFpldIbMpc1ONWdirvX+07EV/MVKbzni6Ig2I3Ho0M3rBFCUXflPWNMYHizoy51fp
 8mQNqt95KtVKr8UAvSqNfbMEBRRkgWri1vKiGnUiF9iHbJ9Yg2tZ5ffyjrhHvQbzVYun
 bGKXvpL1IWv6aPp5YhOr3921QF46INu8YhJVxNZJf+A6RHVWKVIo1NHIpLnYk0iZR579
 FDWw==
X-Gm-Message-State: AGi0Pubf5wO+PI+OFexWzgM24MwU9EBGQwAh8N1asB5MkKLMO4mHkyOP
 O5wTyIlCOyHI3B/VP3yPiG7/pB0QXTmec1+4p3dH
X-Google-Smtp-Source: APiQypJZpGIcTdTcAmCbMwWA43uDwlzkxXnjBBuBETiNA9FKcB4sB2Bl1ulIkKpGgWUROepnqSaCp7kT6UF4kiN02jQ=
X-Received: by 2002:a5d:4443:: with SMTP id x3mr6757506wrr.162.1587178994550; 
 Fri, 17 Apr 2020 20:03:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200415195422.19866-1-atish.patra@wdc.com>
 <20200415195422.19866-6-atish.patra@wdc.com>
 <CAMj1kXFRqTYr7_M_j6oN1-xnQ6V4uCYK49yAbjvrf1BB823Cng@mail.gmail.com>
In-Reply-To: <CAMj1kXFRqTYr7_M_j6oN1-xnQ6V4uCYK49yAbjvrf1BB823Cng@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Fri, 17 Apr 2020 20:03:03 -0700
Message-ID: <CAOnJCUK3fqsR93ewYMUkanh+x1EJN_3QwkFjSDDZZr2MjzpnUQ@mail.gmail.com>
Subject: Re: [v3 PATCH 5/5] RISC-V: Add EFI stub support.
To: Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_200321_274236_F390B1C7 
X-CRM114-Status: GOOD (  36.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv <linux-riscv@lists.infradead.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 12:41 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Wed, 15 Apr 2020 at 21:54, Atish Patra <atish.patra@wdc.com> wrote:
> >
> > Add a RISC-V architecture specific stub code that actually copies the
> > actual kernel image to a valid address and jump to it after boot services
> > are terminated. Enable UEFI related kernel configs as well for RISC-V.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/Kconfig                        |  20 ++++
> >  arch/riscv/Makefile                       |   1 +
> >  arch/riscv/configs/defconfig              |   1 +
> >  arch/riscv/include/asm/efi.h              |  44 +++++++++
> >  drivers/firmware/efi/Kconfig              |   2 +-
> >  drivers/firmware/efi/libstub/Makefile     |   7 ++
> >  drivers/firmware/efi/libstub/riscv-stub.c | 111 ++++++++++++++++++++++
> >  7 files changed, 185 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/riscv/include/asm/efi.h
> >  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index f39e326a7a42..eb4f41c8f3ce 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -379,10 +379,30 @@ config CMDLINE_FORCE
> >
> >  endchoice
> >
> > +config EFI_STUB
> > +       bool
> > +
> > +config EFI
> > +       bool "UEFI runtime support"
> > +       depends on OF
> > +       select LIBFDT
> > +       select UCS2_STRING
> > +       select EFI_PARAMS_FROM_FDT
> > +       select EFI_STUB
> > +       select EFI_GENERIC_STUB
> > +       default y
> > +       help
> > +         This option provides support for runtime services provided
> > +         by UEFI firmware (such as non-volatile variables, realtime
> > +          clock, and platform reset). A UEFI stub is also provided to
> > +         allow the kernel to be booted as an EFI application. This
> > +         is only useful on systems that have UEFI firmware.
> > +
> >  endmenu
> >
> >  menu "Power management options"
> >
> >  source "kernel/power/Kconfig"
> > +source "drivers/firmware/Kconfig"
> >
> >  endmenu
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index fb6e37db836d..079435804d6d 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -80,6 +80,7 @@ head-y := arch/riscv/kernel/head.o
> >  core-y += arch/riscv/
> >
> >  libs-y += arch/riscv/lib/
> > +core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
> >
> >  PHONY += vdso_install
> >  vdso_install:
> > diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> > index 4da4886246a4..ae69e12d306a 100644
> > --- a/arch/riscv/configs/defconfig
> > +++ b/arch/riscv/configs/defconfig
> > @@ -129,3 +129,4 @@ CONFIG_DEBUG_BLOCK_EXT_DEVT=y
> >  # CONFIG_RUNTIME_TESTING_MENU is not set
> >  CONFIG_MEMTEST=y
> >  # CONFIG_SYSFS_SYSCALL is not set
> > +CONFIG_EFI=y
> > diff --git a/arch/riscv/include/asm/efi.h b/arch/riscv/include/asm/efi.h
> > new file mode 100644
> > index 000000000000..62d7d5eafed8
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/efi.h
> > @@ -0,0 +1,44 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> > + * Based on arch/arm64/include/asm/efi.h
> > + */
> > +#ifndef _ASM_EFI_H
> > +#define _ASM_EFI_H
> > +
> > +#include <asm/io.h>
> > +#include <asm/mmu_context.h>
> > +#include <asm/ptrace.h>
> > +#include <asm/tlbflush.h>
> > +
> > +#define VA_BITS_MIN 39
> > +
> > +/* on RISC-V, the FDT may be located anywhere in system RAM */
> > +static inline unsigned long efi_get_max_fdt_addr(unsigned long dram_base)
> > +{
> > +       return ULONG_MAX;
> > +}
> > +
> > +/* Load initrd at enough distance from DRAM start */
> > +static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
> > +                                                   unsigned long image_addr)
> > +{
> > +       return dram_base + SZ_256M;
> > +}
> > +
> > +#define efi_bs_call(func, ...) efi_system_table()->boottime->func(__VA_ARGS__)
> > +#define efi_rt_call(func, ...) efi_system_table()->runtime->func(__VA_ARGS__)
> > +#define efi_is_native()                (true)
> > +
> > +#define efi_table_attr(inst, attr)     (inst->attr)
> > +
> > +#define efi_call_proto(inst, func, ...) inst->func(inst, ##__VA_ARGS__)
> > +
> > +#define alloc_screen_info(x...)                (&screen_info)
> > +extern char stext_offset[];
> > +
> > +static inline void free_screen_info(struct screen_info *si)
> > +{
> > +}
> > +
> > +#endif /* _ASM_EFI_H */
> > diff --git a/drivers/firmware/efi/Kconfig b/drivers/firmware/efi/Kconfig
> > index 2a2b2b96a1dc..fcdc789d3f87 100644
> > --- a/drivers/firmware/efi/Kconfig
> > +++ b/drivers/firmware/efi/Kconfig
> > @@ -111,7 +111,7 @@ config EFI_GENERIC_STUB
> >
> >  config EFI_ARMSTUB_DTB_LOADER
> >         bool "Enable the DTB loader"
> > -       depends on EFI_GENERIC_STUB
> > +       depends on EFI_GENERIC_STUB && !RISCV
> >         default y
> >         help
> >           Select this config option to add support for the dtb= command
> > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > index 2b4e09bf987c..7d46b70b51f2 100644
> > --- a/drivers/firmware/efi/libstub/Makefile
> > +++ b/drivers/firmware/efi/libstub/Makefile
> > @@ -22,6 +22,8 @@ cflags-$(CONFIG_ARM64)                := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> >  cflags-$(CONFIG_ARM)           := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> >                                    -fno-builtin -fpic \
> >                                    $(call cc-option,-mno-single-pic-base)
> > +cflags-$(CONFIG_RISCV)         := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> > +                                  -fpic
> >
> >  cflags-$(CONFIG_EFI_GENERIC_STUB)      += -I$(srctree)/scripts/dtc/libfdt
> >
> > @@ -57,6 +59,7 @@ lib-$(CONFIG_EFI_GENERIC_STUB)                += efi-stub.o fdt.o string.o \
> >  lib-$(CONFIG_ARM)              += arm32-stub.o
> >  lib-$(CONFIG_ARM64)            += arm64-stub.o
> >  lib-$(CONFIG_X86)              += x86-stub.o
> > +lib-$(CONFIG_RISCV)            += riscv-stub.o
> >  CFLAGS_arm32-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
> >  CFLAGS_arm64-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
> >
> > @@ -81,6 +84,10 @@ STUBCOPY_FLAGS-$(CONFIG_ARM64)       += --prefix-alloc-sections=.init \
> >                                    --prefix-symbols=__efistub_
> >  STUBCOPY_RELOC-$(CONFIG_ARM64) := R_AARCH64_ABS
> >
> > +STUBCOPY_FLAGS-$(CONFIG_RISCV) += --prefix-alloc-sections=.init \
> > +                                  --prefix-symbols=__efistub_
> > +STUBCOPY_RELOC-$(CONFIG_RISCV) := R_RISCV_HI20
> > +
> >  $(obj)/%.stub.o: $(obj)/%.o FORCE
> >         $(call if_changed,stubcopy)
> >
> > diff --git a/drivers/firmware/efi/libstub/riscv-stub.c b/drivers/firmware/efi/libstub/riscv-stub.c
> > new file mode 100644
> > index 000000000000..69d13e0ebaea
> > --- /dev/null
> > +++ b/drivers/firmware/efi/libstub/riscv-stub.c
> > @@ -0,0 +1,111 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2013, 2014 Linaro Ltd;  <roy.franz@linaro.org>
> > + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> > + *
> > + * This file implements the EFI boot stub for the RISC-V kernel.
> > + * Adapted from ARM64 version at drivers/firmware/efi/libstub/arm64-stub.c.
> > + */
> > +
> > +#include <linux/efi.h>
> > +#include <linux/libfdt.h>
> > +#include <linux/libfdt_env.h>
> > +#include <asm/efi.h>
> > +#include <asm/sections.h>
> > +
> > +#include "efistub.h"
> > +/*
> > + * RISCV requires the kernel image to placed TEXT_OFFSET bytes beyond a 2 MB
> > + * aligned base for 64 bit and 4MB for 32 bit.
> > + */

Fixed the comment.

> > +#ifdef CONFIG_64BIT
> > +#define MIN_KIMG_ALIGN SZ_2M
> > +#else
> > +#define MIN_KIMG_ALIGN SZ_4M
> > +#endif
> > +
> > +typedef __attribute__((noreturn)) void (*jump_kernel_func)(unsigned int,
> > +                                                          unsigned long);
> > +efi_status_t check_platform_features(void)
> > +{
> > +       return EFI_SUCCESS;
> > +}
> > +
> > +static u32 get_boot_hartid_from_fdt(unsigned long fdt)
> > +{
> > +       int chosen_node, len;
> > +       const fdt32_t *prop;
> > +
> > +       chosen_node = fdt_path_offset((void *)fdt, "/chosen");
> > +       if (chosen_node < 0)
> > +               return U32_MAX;
> > +       prop = fdt_getprop((void *)fdt, chosen_node, "boot-hartid", &len);
> > +       if (!prop || len != sizeof(u32))
> > +               return U32_MAX;
> > +
> > +       return fdt32_to_cpu(*prop);
> > +}
> > +
> > +/*
> > + * Jump to real kernel here with following constraints.
> > + * 1. MMU should be disabled.
> > + * 2. a0 should contain hartid
> > + * 3. a1 should DT address
> > + */
> > +void __noreturn efi_enter_kernel(unsigned long entrypoint, unsigned long fdt,
> > +                                unsigned long fdt_size)
> > +{
> > +       unsigned long kernel_entry = entrypoint + (unsigned long)stext_offset;
> > +       jump_kernel_func jump_kernel = (jump_kernel_func) kernel_entry;
> > +       u32 hartid = get_boot_hartid_from_fdt(fdt);
> > +
> > +       if (hartid == U32_MAX)
> > +               /* We can not use panic or BUG at this point */
> > +               __asm__ __volatile__ ("ebreak");
> > +       /* Disable MMU */
> > +       csr_write(CSR_SATP, 0);
> > +       jump_kernel(hartid, fdt);
> > +}
> > +
> > +efi_status_t handle_kernel_image(unsigned long *image_addr,
> > +                                unsigned long *image_size,
> > +                                unsigned long *reserve_addr,
> > +                                unsigned long *reserve_size,
> > +                                unsigned long dram_base,
> > +                                efi_loaded_image_t *image)
> > +{
> > +       efi_status_t status;
> > +       unsigned long kernel_size, kernel_memsize = 0;
> > +       unsigned long max_alloc_address;
> > +
> > +       if (image->image_base != _start)
> > +               pr_efi_err("FIRMWARE BUG: efi_loaded_image_t::image_base has bogus value\n");
> > +
>
> I don't think you need this.
>

Sure. I will remove it. I guess ARM64 code has the error print for
legacy loader code ?

> > +       kernel_size = _edata - _start;
> > +       kernel_memsize = kernel_size + (_end - _edata);
> > +       max_alloc_address = round_up(dram_base, MIN_KIMG_ALIGN) +
> > +                           kernel_memsize;
> > +
>
> You said the kernel could be anywhere in memory, as long as it is
> aligned correctly, right?

Sorry I was wrong about this. RISC-V kernel maps PAGE_OFFSET virtual
address to the
physical address <xyz> where it is booted. That means memory between
dram start and and <xyz> address
will be unusable.

I also realized that the above computing max_address as above also
won't work for the following reason.
efi_allocate_pages_aligned actually ALIGN_DOWN the max_address. Thus,
efi won't find enough
free memory in this case if the max_address is computed from the dram_base.

Is there an implicit requirement for efi_allocate_pages_aligned or
efi_low_alloc_above should be tried in case of failure?

> In that case, you don't need this, you can simply pass ULONG_MAX as
> the max address.
>
As RISC-V should allocate memory as low as possible to avoid memory
wastage, I think the following should work.

efi_low_alloc_above(*reserve_size, MIN_KIMG_ALIGN, reserve_addr, dram_base);

If this looks okay to you, efi_low_alloc_above should be moved back to
mem.c from relocate.c.
Should I do it in a separate patch or the original patch should be
modified so that efi_low_alloc_above was never moved to relocate.c

> > +       if (IS_ALIGNED((u64)_start, MIN_KIMG_ALIGN)) {
> > +               /*
> > +                * Just execute from wherever we were loaded by the
> > +                * UEFI PE/COFF loader if the alignment is suitable.
> > +                */
> > +               *image_addr = (u64)_start;
>
> Change these casts to (unsigned long), as reported by the robot.
>
Done.

> So you no longer need the placement to be TEXT_OFFSET bytes past a
> MIN_KIMG_ALIGN aligned boundary, right?
>

Nope. EFI memory marked the firmware area as reserved. So EFI memory
allocator will make sure that
it never allocates memory from that region.

> > +               *reserve_size = 0;
> > +               return EFI_SUCCESS;
> > +       }
> > +       status = efi_allocate_pages_aligned(*reserve_size, reserve_addr,
> > +                                           max_alloc_address, MIN_KIMG_ALIGN);
> > +
> > +       if (status != EFI_SUCCESS) {
> > +               pr_efi_err("Failed to relocate kernel\n");
> > +               *reserve_size = 0;
> > +               return status;
> > +       }
> > +       *image_addr = *reserve_addr;
> > +
> > +       memcpy((void *)*image_addr, _start, kernel_size);
> > +
> > +       return EFI_SUCCESS;
> > +}
> > --
> > 2.24.0
> >
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



--
Regards,
Atish

