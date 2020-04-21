Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E0B1B30E6
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 22:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=BxubbJ7gHEHEErz2kjhl0p7BCwZJc2DnYIOnoeRrZKo=; b=PXs/z0cUIB8bZD
	N914W+qBI7jQq8LRO5EJ160QY+fx9bOjD0GsMmiEJ2meamq37xPaR/TVZ6zxm/cWyuRXyZyLmuwDY
	1YgehSaTHz/frS2tqZHhW8suYev/oB7TfMyfC+LVx5MRP8CrUU9f8AyrJllB+aCB0uPnImGjF8niC
	Wr8ZXV8eCXAURQLW173ClhI3qsthtnEvKZlS/jz+TAMYGGPG1esZsQsP+FV5ylZitN6e2HePexxFA
	Md0GB1NAnr+ja6wtzROfZCfJdOoGrWNbDe5szKYcnO9sZrkngeEXdfAf2CJE01XqI5G6to0Hlhrxm
	cLE4xWCyuoF3S0ZI5Eww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQz5s-0004Gy-I4; Tue, 21 Apr 2020 20:02:08 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQz5o-0004G2-Bj
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 20:02:06 +0000
Received: by mail-pj1-x1041.google.com with SMTP id hi11so1828897pjb.3
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 13:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=BxubbJ7gHEHEErz2kjhl0p7BCwZJc2DnYIOnoeRrZKo=;
 b=Groa9PCd4S1i1J0FgENaZ3ni8r65k96Qc7Y5JPLMOACsEg3cU09VwFovCH1mIcyZYc
 TeJLuU8NimtQM+xV3yDwRnhK4jydyzHYoyRvkPCrBh5TLMQk/KKjN+NK7dxfRKYKI31t
 nDIJgztqgBwC83EQVT+3sFXXCBuyR4hdFAp6P8jGcpyzAcWV00QKTLtPXUhI2SHpju9l
 8lEFPZoMM5NsYQDjghmD8TIY6nFXpxB2A4pY9HoU84ObkaPy4EYwPnBd7ptRxdf4gP8q
 xksS7VgLOKKUk2jndDQ70T1nt/B+d6eDlRFYNBJ0Ex3KqXKm7+cDvMh4CiqIInNZ9Ayr
 H2gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=BxubbJ7gHEHEErz2kjhl0p7BCwZJc2DnYIOnoeRrZKo=;
 b=G8Tv8Js4UF6LZs67LVZQTYaxVb45hiHIDSZAQd/nAhXDyMLpJ5XJfrcvTSwABj5U1o
 7wLH4HQ9LmABCdReG81rxY1YT8sI/NO3HcVbZFBZRW/ig8RuqEG4J7bJQNMY33855HDv
 cj76SgEdiVHxco28P8mzFZTaM++MPWkzTwH8tZQsdalRw5uRoR0acfxaQZ6D9Ty79RBg
 hLMUcyv5TxY+snHPSC2eC6AqG71EZHdgDge6maIkh64ONV4kbJnLPJQORU+KfBAKvulI
 xlQpK3xa0loMYgj6BmKC2VUN/th2Y3J1UgDecU8aFi/JLVNrb6KENwn5uuOKVxPHx4tB
 RgRQ==
X-Gm-Message-State: AGi0PuZHHpo2dBopVTr/R0q7P+000ZH7ME3h+mTZyJ9CunfCAv+xFyfZ
 106FWV5gHc7ehtrsCl8OIzBpvw==
X-Google-Smtp-Source: APiQypIRcAAuqsYoYKxkjzVouMy24lRUu+Wnce7eqf9+b7NwS4FFhJNREw6yqaj/51RU+3xK9YmzPw==
X-Received: by 2002:a17:902:a513:: with SMTP id
 s19mr23840089plq.84.1587499322909; 
 Tue, 21 Apr 2020 13:02:02 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id o1sm3186009pjs.39.2020.04.21.13.02.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 13:02:02 -0700 (PDT)
Date: Tue, 21 Apr 2020 13:02:02 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 13:01:35 PDT (-0700)
Subject: Re: [v4 PATCH 2/3] RISC-V: Add PE/COFF header for EFI stub
In-Reply-To: <20200421033336.9663-3-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-fc4c31fb-8f50-4aa9-82e1-6f2e9d08ac8f@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_130204_404924_3A88D5E7 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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

[I just saw there's a v4, so I'm moving over here]

On Mon, 20 Apr 2020 20:33:35 PDT (-0700), Atish Patra wrote:
> Linux kernel Image can appear as an EFI application With appropriate
> PE/COFF header fields in the beginning of the Image header. An EFI
> application loader can directly load a Linux kernel Image and an EFI
> stub residing in kernel can boot Linux kernel directly.
>
> Add the necessary PE/COFF header.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sections.h | 13 ++++
>  arch/riscv/kernel/Makefile        |  4 ++
>  arch/riscv/kernel/efi-header.S    | 99 +++++++++++++++++++++++++++++++
>  arch/riscv/kernel/head.S          | 16 +++++
>  arch/riscv/kernel/image-vars.h    | 53 +++++++++++++++++
>  arch/riscv/kernel/vmlinux.lds.S   | 20 ++++++-
>  6 files changed, 203 insertions(+), 2 deletions(-)
>  create mode 100644 arch/riscv/include/asm/sections.h
>  create mode 100644 arch/riscv/kernel/efi-header.S
>  create mode 100644 arch/riscv/kernel/image-vars.h
>
> diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
> new file mode 100644
> index 000000000000..3a9971b1210f
> --- /dev/null
> +++ b/arch/riscv/include/asm/sections.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +#ifndef __ASM_SECTIONS_H
> +#define __ASM_SECTIONS_H
> +
> +#include <asm-generic/sections.h>
> +
> +extern char _start[];
> +extern char _start_kernel[];
> +
> +#endif /* __ASM_SECTIONS_H */
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index 86c83081044f..86ca755f8a9f 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -32,6 +32,10 @@ obj-y	+= patch.o
>  obj-$(CONFIG_MMU) += vdso.o vdso/
>
>  obj-$(CONFIG_RISCV_M_MODE)	+= clint.o traps_misaligned.o
> +OBJCOPYFLAGS := --prefix-symbols=__efistub_
> +$(obj)/%.stub.o: $(obj)/%.o FORCE
> +	$(call if_changed,objcopy)
> +
>  obj-$(CONFIG_FPU)		+= fpu.o
>  obj-$(CONFIG_SMP)		+= smpboot.o
>  obj-$(CONFIG_SMP)		+= smp.o
> diff --git a/arch/riscv/kernel/efi-header.S b/arch/riscv/kernel/efi-header.S
> new file mode 100644
> index 000000000000..69dde8268527
> --- /dev/null
> +++ b/arch/riscv/kernel/efi-header.S
> @@ -0,0 +1,99 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + * Adapted from arch/arm64/kernel/efi-header.S
> + */
> +
> +#include <linux/pe.h>
> +#include <linux/sizes.h>
> +
> +	.macro	__EFI_PE_HEADER
> +	.long	PE_MAGIC
> +coff_header:
> +	.short	IMAGE_FILE_MACHINE_RISCV64		// Machine
> +	.short	section_count				// NumberOfSections
> +	.long	0 					// TimeDateStamp
> +	.long	0					// PointerToSymbolTable
> +	.long	0					// NumberOfSymbols
> +	.short	section_table - optional_header		// SizeOfOptionalHeader
> +	.short	IMAGE_FILE_DEBUG_STRIPPED | \
> +		IMAGE_FILE_EXECUTABLE_IMAGE | \
> +		IMAGE_FILE_LINE_NUMS_STRIPPED		// Characteristics
> +
> +optional_header:
> +	.short	PE_OPT_MAGIC_PE32PLUS			// PE32+ format
> +	.byte	0x02					// MajorLinkerVersion
> +	.byte	0x14					// MinorLinkerVersion
> +	.long	__text_end - efi_header_end		// SizeOfCode
> +	.long	_end - __text_end			// SizeOfInitializedData
> +	.long	0					// SizeOfUninitializedData
> +	.long	__efistub_efi_entry - _start		// AddressOfEntryPoint
> +	.long	efi_header_end - _start			// BaseOfCode
> +
> +extra_header_fields:
> +	.quad	0					// ImageBase
> +	.long	SZ_4K					// SectionAlignment
> +	.long	PECOFF_FILE_ALIGNMENT			// FileAlignment
> +	.short	0					// MajorOperatingSystemVersion
> +	.short	0					// MinorOperatingSystemVersion
> +	.short	LINUX_EFISTUB_MAJOR_VERSION		// MajorImageVersion
> +	.short	LINUX_EFISTUB_MINOR_VERSION		// MinorImageVersion
> +	.short	0					// MajorSubsystemVersion
> +	.short	0					// MinorSubsystemVersion
> +	.long	0					// Win32VersionValue
> +
> +	.long	_end - _start				// SizeOfImage
> +
> +	// Everything before the kernel image is considered part of the header
> +	.long	efi_header_end - _start			// SizeOfHeaders
> +	.long	0					// CheckSum
> +	.short	IMAGE_SUBSYSTEM_EFI_APPLICATION		// Subsystem
> +	.short	0					// DllCharacteristics
> +	.quad	0					// SizeOfStackReserve
> +	.quad	0					// SizeOfStackCommit
> +	.quad	0					// SizeOfHeapReserve
> +	.quad	0					// SizeOfHeapCommit
> +	.long	0					// LoaderFlags
> +	.long	(section_table - .) / 8			// NumberOfRvaAndSizes
> +
> +	.quad	0					// ExportTable
> +	.quad	0					// ImportTable
> +	.quad	0					// ResourceTable
> +	.quad	0					// ExceptionTable
> +	.quad	0					// CertificationTable
> +	.quad	0					// BaseRelocationTable
> +
> +	// Section table
> +section_table:
> +	.ascii	".text\0\0\0"
> +	.long	__text_end - efi_header_end		// VirtualSize
> +	.long	efi_header_end - _start			// VirtualAddress
> +	.long	__text_end - efi_header_end		// SizeOfRawData
> +	.long	efi_header_end - _start			// PointerToRawData
> +
> +	.long	0					// PointerToRelocations
> +	.long	0					// PointerToLineNumbers
> +	.short	0					// NumberOfRelocations
> +	.short	0					// NumberOfLineNumbers
> +	.long	IMAGE_SCN_CNT_CODE | \
> +		IMAGE_SCN_MEM_READ | \
> +		IMAGE_SCN_MEM_EXECUTE			// Characteristics
> +
> +	.ascii	".data\0\0\0"
> +	.long	__data_virt_size			// VirtualSize
> +	.long	__text_end - _start			// VirtualAddress
> +	.long	__data_raw_size				// SizeOfRawData
> +	.long	__text_end - _start			// PointerToRawData
> +
> +	.long	0					// PointerToRelocations
> +	.long	0					// PointerToLineNumbers
> +	.short	0					// NumberOfRelocations
> +	.short	0					// NumberOfLineNumbers
> +	.long	IMAGE_SCN_CNT_INITIALIZED_DATA | \
> +		IMAGE_SCN_MEM_READ | \
> +		IMAGE_SCN_MEM_WRITE			// Characteristics
> +
> +	.set	section_count, (. - section_table) / 40
> +
> +efi_header_end:
> +	.endm
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 98a406474e7d..ddd613dac9d6 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -13,6 +13,7 @@
>  #include <asm/csr.h>
>  #include <asm/hwcap.h>
>  #include <asm/image.h>
> +#include "efi-header.S"
>
>  __HEAD
>  ENTRY(_start)
> @@ -22,10 +23,18 @@ ENTRY(_start)
>  	 * Do not modify it without modifying the structure and all bootloaders
>  	 * that expects this header format!!
>  	 */
> +#ifdef CONFIG_EFI
> +	/*
> +	 * This instruction decodes to "MZ" ASCII required by UEFI.
> +	 */
> +	li s4,-13

This needs to be a c.li in order to encode as "MZ".  It'd be cleaner to
explicitly write it that way rather that having the assembler transparently
compress it, but we definately need to have Kconfig make EFI select ISA_C.

> +	j _start_kernel
> +#else
>  	/* jump to start kernel */
>  	j _start_kernel
>  	/* reserved */
>  	.word 0
> +#endif
>  	.balign 8
>  #if __riscv_xlen == 64
>  	/* Image load offset(2MB) from start of RAM */
> @@ -43,7 +52,14 @@ ENTRY(_start)
>  	.ascii RISCV_IMAGE_MAGIC
>  	.balign 4
>  	.ascii RISCV_IMAGE_MAGIC2
> +#ifdef CONFIG_EFI
> +	.word pe_head_start - _start
> +pe_head_start:
> +
> +	__EFI_PE_HEADER
> +#else
>  	.word 0
> +#endif
>
>  .align 2
>  #ifdef CONFIG_MMU
> diff --git a/arch/riscv/kernel/image-vars.h b/arch/riscv/kernel/image-vars.h
> new file mode 100644
> index 000000000000..bd8b764f0ad9
> --- /dev/null
> +++ b/arch/riscv/kernel/image-vars.h
> @@ -0,0 +1,53 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + * Linker script variables to be set after section resolution, as
> + * ld.lld does not like variables assigned before SECTIONS is processed.
> + * Based on arch/arm64/kerne/image-vars.h
> + */
> +#ifndef __RISCV_KERNEL_IMAGE_VARS_H
> +#define __RISCV_KERNEL_IMAGE_VARS_H
> +
> +#ifndef LINKER_SCRIPT
> +#error This file should only be included in vmlinux.lds.S
> +#endif
> +
> +#ifdef CONFIG_EFI
> +
> +__efistub_stext_offset = _start_kernel - _start;
> +
> +/*
> + * The EFI stub has its own symbol namespace prefixed by __efistub_, to
> + * isolate it from the kernel proper. The following symbols are legally
> + * accessed by the stub, so provide some aliases to make them accessible.
> + * Only include data symbols here, or text symbols of functions that are
> + * guaranteed to be safe when executed at another offset than they were
> + * linked at. The routines below are all implemented in assembler in a
> + * position independent manner
> + */
> +__efistub_memcmp		= memcmp;
> +__efistub_memchr		= memchr;
> +__efistub_memcpy		= memcpy;
> +__efistub_memmove		= memmove;
> +__efistub_memset		= memset;
> +__efistub_strlen		= strlen;
> +__efistub_strnlen		= strnlen;
> +__efistub_strcmp		= strcmp;
> +__efistub_strncmp		= strncmp;
> +__efistub_strrchr		= strrchr;
> +
> +#ifdef CONFIG_KASAN
> +__efistub___memcpy		= memcpy;
> +__efistub___memmove		= memmove;
> +__efistub___memset		= memset;
> +#endif
> +
> +__efistub__start		= _start;
> +__efistub__start_kernel		= _start_kernel;
> +__efistub__end			= _end;
> +__efistub__edata		= _edata;
> +__efistub_screen_info		= screen_info;
> +
> +#endif
> +
> +#endif /* __RISCV_KERNEL_IMAGE_VARS_H */
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 0339b6bbe11a..20ebf7e8c215 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -10,6 +10,7 @@
>  #include <asm/cache.h>
>  #include <asm/thread_info.h>
>  #include <asm/set_memory.h>
> +#include "image-vars.h"
>
>  #include <linux/sizes.h>
>  OUTPUT_ARCH(riscv)
> @@ -17,6 +18,14 @@ ENTRY(_start)
>
>  jiffies = jiffies_64;
>
> +PECOFF_FILE_ALIGNMENT = 0x200;
> +#ifdef CONFIG_EFI
> +#define PECOFF_EDATA_PADDING	\
> +	.pecoff_edata_padding : { BYTE(0); . = ALIGN(PECOFF_FILE_ALIGNMENT); }
> +#else
> +#define PECOFF_EDATA_PADDING
> +#endif
> +
>  SECTIONS
>  {
>  	/* Beginning of code and text segment */
> @@ -62,6 +71,8 @@ SECTIONS
>  		_etext = .;
>  	}
>
> +	__text_end = .;
> +
>  	/* Start of data section */
>  	_sdata = .;
>  	RO_DATA(SECTION_ALIGN)
> @@ -78,9 +89,12 @@ SECTIONS
>  	.sdata : {
>  		__global_pointer$ = . + 0x800;
>  		*(.sdata*)
> -		/* End of data section */
> -		_edata = .;
>  	}
> +	PECOFF_EDATA_PADDING
> +	__data_raw_size = ABSOLUTE(. - __text_end);
> +
> +	/* End of data section */
> +	_edata = .;
>
>  	BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
>
> @@ -88,6 +102,8 @@ SECTIONS
>  		*(.rel.dyn*)
>  	}
>
> +	__data_virt_size = ABSOLUTE(. - __text_end);
> +
>  	_end = .;
>
>  	STABS_DEBUG

