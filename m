Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BEA16F4C0
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 02:11:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cqQX5S3OrJ6hZeNvpYpKN6qBFieh/g6VkybpdS3ETk=; b=GGs047uHApqfSq
	bwEttqBV/8HBmxOLW/FLhAfwwUNDg/UPZv6R4FNIkPccF+xmM+7lWZayM+Ng5pXtTNaWVVjoOxmoT
	Itmtu4oUi8gKK0DR4JI2ErR60gxUa8gZmSxwFfRr1EtWiCF4SzEPW7sdGDv45/7FqCJWg7yAJRXYI
	ywvFmXs/87yNCJvUNDjLC7PtFPbDK16aTuBDVduW9x1tbG4tct48HfUeq7G+GKH0blbxSRdY5CCCn
	BW7MmaHaeZhx6Jviz/eT1RLux7gwX4Z/7hkilAX99rYtYOyO6pS9QNqo2RkKBMF1meqbTqSk5iZ3X
	xSIZBD+3b5dbPzXvVRTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lEF-0006xx-Mx; Wed, 26 Feb 2020 01:11:11 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lE5-0006kU-DE
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 01:11:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582679468; x=1614215468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3yBGQvttdSEAFKGRSdgFuVU+yRuthKwHXID+s1ezdFQ=;
 b=pg3J6Ve+f41T2NxOEpn1loG+/kpJZUa75b2HryITPOBf/Ee982iPELHp
 rAEp2AVezOIGIvk348/3wAiObvKzBnMAhSCUjeKvxZX4494A2vhB21wLT
 p+cHOZsi67C/sPwputU5cbpIoI8vMWdl2hJStYUXPIk0VJKZhSLw9P4fu
 e8pjUGXq4Ehbhy3Y9ydwQ8G1hB3EKehuEDxFFqN4tQVoPJ0U3sLGsJXnC
 tZcTqGn2KcFDtkI9wB3b0CIJPeKBtduX/X/YBwTbFUQRpEHZRdaYTprM9
 8NisZhdFYPRTUOBb5fevMjShMVt8zoEbMRpSkvFVMur3DMXaGt8JBU9b7 A==;
IronPort-SDR: O9jTK4idtseY4JeWw8GXdXJA6VHlY+bxSx4oGk8UHn7lvVKcWt6U0E5S2uAHvFs8StXqm9GUIU
 jseHbHiZWzQHJoUCRqZts8wMnVd/Z/5A3NBU97GTg9zvvaGGFyquio4srRyinVKK13fQn+L72j
 3lForAXXbOyWn7UvOATunVmDFcjKsgDYljjroGiQkpSFJWPnsKS3Op5aes6Y5AtgOlxpsayyjw
 p8+VOZ70BQK4sPJNS9wcj00r2zF5YOoQYlOU5QNP5BL9vIg2jkw3CSyAnKx25lwzdS8Ymq4yf+
 xBs=
X-IronPort-AV: E=Sophos;i="5.70,486,1574092800"; d="scan'208";a="232649071"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 26 Feb 2020 09:10:52 +0800
IronPort-SDR: MrjmroW7G8NMLAKuHst7msac58rWLATiTv3Qrpoo9GsyDFOC5cu0pZwrN/+IsKSbpoB7p+v71S
 e76EpyhV6bDYzkOpC6e1P0P1qvFuZ/oeDWzEyMWVMWHaoe2N98rPwVi87ure//WY3kfbRrdhZ9
 c2dUbEnQiL6kWbLODeMNMMWb4JjtqvVTGYv6Fpabd7aD3km2q+sJOzwcuV9DrFZXhCyAXzbKVg
 Jv40NPwoVB2YCN04z6Bw9nHCHTVFaJhKHO9I2dSC33hNgOzTXH2BYIFkyfVdUwE1ZtQTqfT1qR
 npDDj0ImmQG4JouretmroUG4
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:03:17 -0800
IronPort-SDR: og7j/OS81BFwUHnTHE1ytOuD7vKsDQ6dQbZdtqDkt8OGAhTEaFY3MZ2yuRis4PjdVmSwSlbGtG
 m24pUTAfdX+tM3DOy+9ABWRpCLoKzRW2cBDWiPRwEoESJiaEd9YpzdFF5kpG0a3ViwstkPBRHd
 rsO1qCZJr0D4w/bVquxARsw9vcUPuiG0FfB6Hg+HDe+97EqpXb5f4mMuzHvUSwl/Bhbc/Ya46A
 QBqDtUl0e0OhNZKeGGi+AeVWe9iNL/42V7qjUJfgYXs/40zm3O7X9qe6mUfVTx+mkq9s10017a
 3QU=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 25 Feb 2020 17:10:49 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 4/5] RISC-V: Add PE/COFF header for EFI stub
Date: Tue, 25 Feb 2020 17:10:36 -0800
Message-Id: <20200226011037.7179-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200226011037.7179-1-atish.patra@wdc.com>
References: <20200226011037.7179-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_171101_557026_208DC86E 
X-CRM114-Status: GOOD (  24.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/riscv/include/asm/Kbuild     |   1 -
 arch/riscv/include/asm/sections.h |  13 ++++
 arch/riscv/kernel/Makefile        |   4 ++
 arch/riscv/kernel/efi-header.S    | 107 ++++++++++++++++++++++++++++++
 arch/riscv/kernel/head.S          |  15 +++++
 arch/riscv/kernel/image-vars.h    |  52 +++++++++++++++
 arch/riscv/kernel/vmlinux.lds.S   |  27 ++++++--
 7 files changed, 212 insertions(+), 7 deletions(-)
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
index 000000000000..af959e748d93
--- /dev/null
+++ b/arch/riscv/kernel/efi-header.S
@@ -0,0 +1,107 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
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
+	.short	0					// MajorImageVersion
+	.short	0					// MinorImageVersion
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
+	/*
+	 * EFI will load .text onwards at the 4k section alignment
+	 * described in the PE/COFF header. To ensure that instruction
+	 * sequences using an adrp and a :lo12: immediate will function
+	 * correctly at this alignment, we must ensure that .text is
+	 * placed at a 4k boundary in the Image to begin with.
+	 */
+	.align 12
+efi_header_end:
+	.endm
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index ac5b0e0a02f6..835dc76de285 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -13,6 +13,7 @@
 #include <asm/csr.h>
 #include <asm/hwcap.h>
 #include <asm/image.h>
+#include "efi-header.S"
 
 __HEAD
 ENTRY(_start)
@@ -22,10 +23,17 @@ ENTRY(_start)
 	 * Do not modify it without modifying the structure and all bootloaders
 	 * that expects this header format!!
 	 */
+#ifdef CONFIG_EFI
+	/*
+	 * This instruction decodes to "MZ" ASCII required by UEFI.
+	 */
+	li s4,-13
+#else
 	/* jump to start kernel */
 	j _start_kernel
 	/* reserved */
 	.word 0
+#endif
 	.balign 8
 #if __riscv_xlen == 64
 	/* Image load offset(2MB) from start of RAM */
@@ -43,7 +51,14 @@ ENTRY(_start)
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
index 000000000000..57abb85065e9
--- /dev/null
+++ b/arch/riscv/kernel/image-vars.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
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


