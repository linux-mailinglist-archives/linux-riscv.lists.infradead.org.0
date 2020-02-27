Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2066A172B1B
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 23:27:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eqLGRgpLO8JwffrByDWZdFeaqwBYoUK0KZfebKO4qk=; b=SpSOTVvslQOIyw
	gHVP6SkkKHMhAd+PmjFsX2ki3TF8hsIh+Lu4qo6ZntjtiTqPh7X1/e/v8eOY6mfwpcXBzp8MzLMWY
	a2/CMsccII8W+jIxgzpfZUf0SECocUs/1565rtxBUWew5H0fi0+aV497SeKo5GbQUrmC6rGs8Xq05
	zaVmes9zC6XWBcx0WMxbE24MjSb1sranciXVT2EOe/oewzsD7E3cfzfamPHrBIUENp0k4kEEQ/g2u
	Bx2xdfoqMUjofIGu+NfgDhIrsxyzvyrqoIYMRr+ANllWiP/0iAyL/A3smIh/WWchb8mVmVQFtZnXX
	muae3hmRl/jUWbIZjlIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Rcb-0000ky-KN; Thu, 27 Feb 2020 22:27:09 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RcQ-0000Wn-JB
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 22:27:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582842419; x=1614378419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PpzpK1MVif1xfIaQgnJ+kAB5ixaUH4Z0cn+lB5dDc0I=;
 b=j8LFku++3PQt4A8A80Mr6OHWugceoMiEYkgF8P7eD4KfpUK8HLoPFmyI
 BUtd2IBVba7h3+rFHb3xxOzozKuixRhjbDNQYSRjxeJLEwNyBGAo/+t+R
 EJ882M+cKPYYw04V9/ggeA+jI+EvgVgwH+utXvOXRCzo27Ksp87Z9pApG
 IOqHXttXQ0ugDWdx7ip48HEZwaxq+zatEIlGfMLOuQLt9xO2+tc5Ihsjb
 ERUJpDSkhWZu7U05juZMs3ZbKcmaXRi3w5srV9YJGc2VXZyAyrxeM/1fF
 52s8r5pMf2vBuU5j07IymtZ39XJz+IOg/tXRwFIxx9rxQrZRlL0spoNw+ Q==;
IronPort-SDR: U46EeVCFoYL+i6Tb+m+zzMkhsQWyW2wml9+8HJQXkyCHLAPzsT1ve8RRAZlfWOBzGI49TpKtOv
 NLIQibeAzcO9an2xwdkIye7KKLxFPlO6gL7vTL0BtV6VeQb5V7SqPJaR+RlOvB/HOIH++bBHzb
 2q4Oc1Adc3wSUFQSLxCooj8Xwoafwlydn5vwXcSEEgDL/kvIUyHKxzgtdAE5w4lLrTYwzNMhyK
 8umP2SeIFIXFIwLkN33B0YZ6ph8aVB34YHMhaILsyU1iOWrfolIIji/fwg6WuGnTMS/aTmMKKs
 49E=
X-IronPort-AV: E=Sophos;i="5.70,493,1574092800"; d="scan'208";a="132395351"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Feb 2020 06:26:52 +0800
IronPort-SDR: 6b62Pp246LktNv/gPythsVTa0biQYxrQi4A3may4xh7go10JrAiOzOCgVa5hS4cn0Uha8x7OC/
 W9sDYVneCAgTmwv3TY1NsfocdRZducpz4RQhWM9zX5IgMo/A/Zg79BWehMwc6wufbr7soXmVVK
 5MtOQjcahcqRt887ddg69BQKiv75hK7DWYDZREjIzgKA0nHw80fql+aVAzbRt5q18lWk0uN1BC
 L5Vn2uTxxZ1XasfpChofEIu78fo0plM4DuwLPgLh4qTIDPedO/2j1o0IOb7rTfaFs0VVWIdzw2
 FmBoT8O9N+C6P2JXCNReUs1F
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:18:51 -0800
IronPort-SDR: yI1YmpcZEO1nm4t58Elbub0Rx7hhTidPkVtdmm3W2lzGLdbrjJxOSZTts0SE5tGEhLfcQu1/WE
 uADZj8WGD/Ag+ND0X183JQy9XFvL8VO9oQWXufUuX5+EeyYssfD6icZoiwZdmLN8VxNkKSulV1
 U3x3fPC0pcMM0ZNYYmeUNrAFc9+xdEdxUxv/A0ePhDwg8YbwKsNYf7doZIKfCXEtKKPENFEUU5
 QQU92r/eW1+VX1yOcFgBDBQ/AZe37NaStP5H8Dw6HM06/QCEo5hgNIefDBO02u5BcmBSsF5Xas
 aaA=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Feb 2020 14:26:51 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v1 PATCH 4/5] RISC-V: Add PE/COFF header for EFI stub
Date: Thu, 27 Feb 2020 14:26:43 -0800
Message-Id: <20200227222644.9468-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200227222644.9468-1-atish.patra@wdc.com>
References: <20200227222644.9468-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_142658_724803_AC7F1AB8 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "Chang,
 Abner \(HPS SW/FW Technologist\)" <abner.chang@hpe.com>,
 Michal Simek <michal.simek@xilinx.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, daniel.schaefer@hpe.com,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Alexios Zavras <alexios.zavras@intel.com>,
 Alexander Graf <agraf@csgraf.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "leif@nuviainc.com" <leif@nuviainc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linux kernel Image can appear as an EFI application With appropriate
PE/COFF header fields in the beginning of the Image header. An EFI
application loader can directly load a Linux kernel Image and an EFI
stub residing in kernel can boot Linux kernel directly.

Add the necessary PE/COFF header.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/Kbuild     |  1 -
 arch/riscv/include/asm/sections.h | 13 ++++
 arch/riscv/kernel/Makefile        |  4 ++
 arch/riscv/kernel/efi-header.S    | 99 +++++++++++++++++++++++++++++++
 arch/riscv/kernel/head.S          | 16 +++++
 arch/riscv/kernel/image-vars.h    | 53 +++++++++++++++++
 arch/riscv/kernel/vmlinux.lds.S   | 27 +++++++--
 7 files changed, 206 insertions(+), 7 deletions(-)
 create mode 100644 arch/riscv/include/asm/sections.h
 create mode 100644 arch/riscv/kernel/efi-header.S
 create mode 100644 arch/riscv/kernel/image-vars.h

diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index 517394390106..ef797fe44934 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -24,7 +24,6 @@ generic-y += local64.h
 generic-y += mm-arch-hooks.h
 generic-y += percpu.h
 generic-y += preempt.h
-generic-y += sections.h
 generic-y += serial.h
 generic-y += shmparam.h
 generic-y += topology.h
diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
new file mode 100644
index 000000000000..3a9971b1210f
--- /dev/null
+++ b/arch/riscv/include/asm/sections.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+#ifndef __ASM_SECTIONS_H
+#define __ASM_SECTIONS_H
+
+#include <asm-generic/sections.h>
+
+extern char _start[];
+extern char _start_kernel[];
+
+#endif /* __ASM_SECTIONS_H */
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 9601ac907f70..471b1c73f77d 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -29,6 +29,10 @@ obj-y	+= cacheinfo.o
 obj-$(CONFIG_MMU) += vdso.o vdso/
 
 obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
+OBJCOPYFLAGS := --prefix-symbols=__efistub_
+$(obj)/%.stub.o: $(obj)/%.o FORCE
+	$(call if_changed,objcopy)
+
 obj-$(CONFIG_FPU)		+= fpu.o
 obj-$(CONFIG_SMP)		+= smpboot.o
 obj-$(CONFIG_SMP)		+= smp.o
diff --git a/arch/riscv/kernel/efi-header.S b/arch/riscv/kernel/efi-header.S
new file mode 100644
index 000000000000..69dde8268527
--- /dev/null
+++ b/arch/riscv/kernel/efi-header.S
@@ -0,0 +1,99 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ * Adapted from arch/arm64/kernel/efi-header.S
+ */
+
+#include <linux/pe.h>
+#include <linux/sizes.h>
+
+	.macro	__EFI_PE_HEADER
+	.long	PE_MAGIC
+coff_header:
+	.short	IMAGE_FILE_MACHINE_RISCV64		// Machine
+	.short	section_count				// NumberOfSections
+	.long	0 					// TimeDateStamp
+	.long	0					// PointerToSymbolTable
+	.long	0					// NumberOfSymbols
+	.short	section_table - optional_header		// SizeOfOptionalHeader
+	.short	IMAGE_FILE_DEBUG_STRIPPED | \
+		IMAGE_FILE_EXECUTABLE_IMAGE | \
+		IMAGE_FILE_LINE_NUMS_STRIPPED		// Characteristics
+
+optional_header:
+	.short	PE_OPT_MAGIC_PE32PLUS			// PE32+ format
+	.byte	0x02					// MajorLinkerVersion
+	.byte	0x14					// MinorLinkerVersion
+	.long	__text_end - efi_header_end		// SizeOfCode
+	.long	_end - __text_end			// SizeOfInitializedData
+	.long	0					// SizeOfUninitializedData
+	.long	__efistub_efi_entry - _start		// AddressOfEntryPoint
+	.long	efi_header_end - _start			// BaseOfCode
+
+extra_header_fields:
+	.quad	0					// ImageBase
+	.long	SZ_4K					// SectionAlignment
+	.long	PECOFF_FILE_ALIGNMENT			// FileAlignment
+	.short	0					// MajorOperatingSystemVersion
+	.short	0					// MinorOperatingSystemVersion
+	.short	LINUX_EFISTUB_MAJOR_VERSION		// MajorImageVersion
+	.short	LINUX_EFISTUB_MINOR_VERSION		// MinorImageVersion
+	.short	0					// MajorSubsystemVersion
+	.short	0					// MinorSubsystemVersion
+	.long	0					// Win32VersionValue
+
+	.long	_end - _start				// SizeOfImage
+
+	// Everything before the kernel image is considered part of the header
+	.long	efi_header_end - _start			// SizeOfHeaders
+	.long	0					// CheckSum
+	.short	IMAGE_SUBSYSTEM_EFI_APPLICATION		// Subsystem
+	.short	0					// DllCharacteristics
+	.quad	0					// SizeOfStackReserve
+	.quad	0					// SizeOfStackCommit
+	.quad	0					// SizeOfHeapReserve
+	.quad	0					// SizeOfHeapCommit
+	.long	0					// LoaderFlags
+	.long	(section_table - .) / 8			// NumberOfRvaAndSizes
+
+	.quad	0					// ExportTable
+	.quad	0					// ImportTable
+	.quad	0					// ResourceTable
+	.quad	0					// ExceptionTable
+	.quad	0					// CertificationTable
+	.quad	0					// BaseRelocationTable
+
+	// Section table
+section_table:
+	.ascii	".text\0\0\0"
+	.long	__text_end - efi_header_end		// VirtualSize
+	.long	efi_header_end - _start			// VirtualAddress
+	.long	__text_end - efi_header_end		// SizeOfRawData
+	.long	efi_header_end - _start			// PointerToRawData
+
+	.long	0					// PointerToRelocations
+	.long	0					// PointerToLineNumbers
+	.short	0					// NumberOfRelocations
+	.short	0					// NumberOfLineNumbers
+	.long	IMAGE_SCN_CNT_CODE | \
+		IMAGE_SCN_MEM_READ | \
+		IMAGE_SCN_MEM_EXECUTE			// Characteristics
+
+	.ascii	".data\0\0\0"
+	.long	__data_virt_size			// VirtualSize
+	.long	__text_end - _start			// VirtualAddress
+	.long	__data_raw_size				// SizeOfRawData
+	.long	__text_end - _start			// PointerToRawData
+
+	.long	0					// PointerToRelocations
+	.long	0					// PointerToLineNumbers
+	.short	0					// NumberOfRelocations
+	.short	0					// NumberOfLineNumbers
+	.long	IMAGE_SCN_CNT_INITIALIZED_DATA | \
+		IMAGE_SCN_MEM_READ | \
+		IMAGE_SCN_MEM_WRITE			// Characteristics
+
+	.set	section_count, (. - section_table) / 40
+
+efi_header_end:
+	.endm
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index ac5b0e0a02f6..ccec4716b053 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -13,6 +13,7 @@
 #include <asm/csr.h>
 #include <asm/hwcap.h>
 #include <asm/image.h>
+#include "efi-header.S"
 
 __HEAD
 ENTRY(_start)
@@ -22,10 +23,18 @@ ENTRY(_start)
 	 * Do not modify it without modifying the structure and all bootloaders
 	 * that expects this header format!!
 	 */
+#ifdef CONFIG_EFI
+	/*
+	 * This instruction decodes to "MZ" ASCII required by UEFI.
+	 */
+	li s4,-13
+	j _start_kernel
+#else
 	/* jump to start kernel */
 	j _start_kernel
 	/* reserved */
 	.word 0
+#endif
 	.balign 8
 #if __riscv_xlen == 64
 	/* Image load offset(2MB) from start of RAM */
@@ -43,7 +52,14 @@ ENTRY(_start)
 	.ascii RISCV_IMAGE_MAGIC
 	.balign 4
 	.ascii RISCV_IMAGE_MAGIC2
+#ifdef CONFIG_EFI
+	.word pe_head_start - _start
+pe_head_start:
+
+	__EFI_PE_HEADER
+#else
 	.word 0
+#endif
 
 .align 2
 #ifdef CONFIG_MMU
diff --git a/arch/riscv/kernel/image-vars.h b/arch/riscv/kernel/image-vars.h
new file mode 100644
index 000000000000..bd8b764f0ad9
--- /dev/null
+++ b/arch/riscv/kernel/image-vars.h
@@ -0,0 +1,53 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ * Linker script variables to be set after section resolution, as
+ * ld.lld does not like variables assigned before SECTIONS is processed.
+ * Based on arch/arm64/kerne/image-vars.h
+ */
+#ifndef __RISCV_KERNEL_IMAGE_VARS_H
+#define __RISCV_KERNEL_IMAGE_VARS_H
+
+#ifndef LINKER_SCRIPT
+#error This file should only be included in vmlinux.lds.S
+#endif
+
+#ifdef CONFIG_EFI
+
+__efistub_stext_offset = _start_kernel - _start;
+
+/*
+ * The EFI stub has its own symbol namespace prefixed by __efistub_, to
+ * isolate it from the kernel proper. The following symbols are legally
+ * accessed by the stub, so provide some aliases to make them accessible.
+ * Only include data symbols here, or text symbols of functions that are
+ * guaranteed to be safe when executed at another offset than they were
+ * linked at. The routines below are all implemented in assembler in a
+ * position independent manner
+ */
+__efistub_memcmp		= memcmp;
+__efistub_memchr		= memchr;
+__efistub_memcpy		= memcpy;
+__efistub_memmove		= memmove;
+__efistub_memset		= memset;
+__efistub_strlen		= strlen;
+__efistub_strnlen		= strnlen;
+__efistub_strcmp		= strcmp;
+__efistub_strncmp		= strncmp;
+__efistub_strrchr		= strrchr;
+
+#ifdef CONFIG_KASAN
+__efistub___memcpy		= memcpy;
+__efistub___memmove		= memmove;
+__efistub___memset		= memset;
+#endif
+
+__efistub__start		= _start;
+__efistub__start_kernel		= _start_kernel;
+__efistub__end			= _end;
+__efistub__edata		= _edata;
+__efistub_screen_info		= screen_info;
+
+#endif
+
+#endif /* __RISCV_KERNEL_IMAGE_VARS_H */
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index b32640300d07..933b9e9a4b39 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -9,6 +9,7 @@
 #include <asm/page.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
+#include "image-vars.h"
 
 #include <linux/sizes.h>
 OUTPUT_ARCH(riscv)
@@ -16,6 +17,14 @@ ENTRY(_start)
 
 jiffies = jiffies_64;
 
+PECOFF_FILE_ALIGNMENT = 0x200;
+#ifdef CONFIG_EFI
+#define PECOFF_EDATA_PADDING	\
+	.pecoff_edata_padding : { BYTE(0); . = ALIGN(PECOFF_FILE_ALIGNMENT); }
+#else
+#define PECOFF_EDATA_PADDING
+#endif
+
 SECTIONS
 {
 	/* Beginning of code and text segment */
@@ -26,12 +35,15 @@ SECTIONS
 
 	__init_begin = .;
 	INIT_TEXT_SECTION(PAGE_SIZE)
+
+	/* Start of data section */
 	INIT_DATA_SECTION(16)
 	/* we have to discard exit text and such at runtime, not link time */
 	.exit.text :
 	{
 		EXIT_TEXT
 	}
+
 	.exit.data :
 	{
 		EXIT_DATA
@@ -54,7 +66,8 @@ SECTIONS
 		_etext = .;
 	}
 
-	/* Start of data section */
+	__text_end = .;
+
 	_sdata = .;
 	RO_DATA(L1_CACHE_BYTES)
 	.srodata : {
@@ -65,19 +78,21 @@ SECTIONS
 	.sdata : {
 		__global_pointer$ = . + 0x800;
 		*(.sdata*)
-		/* End of data section */
-		_edata = .;
 		*(.sbss*)
 	}
-
-	BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
-
+	PECOFF_EDATA_PADDING
+	__data_raw_size = ABSOLUTE(. - __text_end);
+	/* End of data section */
+	_edata = .;
 	EXCEPTION_TABLE(0x10)
 
 	.rel.dyn : {
 		*(.rel.dyn*)
 	}
 
+	BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
+	__data_virt_size = ABSOLUTE(. - __text_end);
+
 	_end = .;
 
 	STABS_DEBUG
-- 
2.24.0


