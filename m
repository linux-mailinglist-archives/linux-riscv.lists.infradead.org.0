Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 631221A6E4D
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 23:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFV1Wv1laDc/uxBzvjywezF/XDILsc38dvlbeld2/N0=; b=WvZb0dbIZWw4JO
	SEFTsDOO5BPBH4T6Ulq15xB6/2Ld/QFRB1apLeEZumPJ5YkrvZ25DBHiDfOsRlGPJtgMKWepX63mm
	RWqGfYHdOMQNq3pOlkATBS7A/AcnVfQBKHekm2sH9SHgX3El8BRmN+AY2nfYNvlAOaf/1rRJfv412
	MsBn6bwW0y1DyjlqFRuBhm6RfL+hQKCXx6w8UrVIB70HpuAPxrkXIPXsuwUTZkXCGPpSYxMldQM9U
	9VACevlzVf2BCDsJiHjR730ji0FNpniUvr4+zo1uRXbCKwPX18S0ET+cIYLaRa8LWfwIpAKJEyUu2
	j2I2Z8UkfC/0suiE/Lpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO6f7-0003Mg-IF; Mon, 13 Apr 2020 21:30:37 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO6eP-0000NS-7n; Mon, 13 Apr 2020 21:29:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586813394; x=1618349394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0f2ExrBOHSi6JWzrG2+CPU/JStpL/wqXhkbpv3XY90M=;
 b=Bb9GmEBJQOPBNCJtuVHxK3wZyG+k6zheDyLNd4C7umALPEDn9QGjz+7L
 VcNO1mkriE6q6uILZlZUOvrljqdCQYHN16zaF/2lHkjz7VE1f1DFDX3q2
 vwhVtKzFE1thvrHvRP9C3qmkb2Pfq8DWvGU3LZ/vLJgs1O4YQp80pdQxA
 /F0YEg5DqeY/K9Mhpm7G77UebahJeoied27RM7ILfO1VaQggKS0jJuCim
 C6nUynOccHqG9GGYa4dCnkYnqVfItLNm2iTD+CxCarToWy+PLNsIPC9lt
 SqLI74P1Nmxd9XUdMG+fWrp9wdxE+iI307csXhklqbBhx+3/MF/fYTSby Q==;
IronPort-SDR: jxkVbaGQgw+1NDEq8dd3o9AC42aR6aRwLmqSH+pISbjsYyoITpawvC2eMW+euxA7FTV/mD9qZA
 R9oDYlVzoVECw9WVz1NwuXWoWO1wDOLmP53TXBVUwLlR1uNtRsrxoO/eDw/mZYUTLdxHiIPSTi
 31oQijWRoCwoVtxhIaJAP101FL9JUJTIUMXHEJa2dZZ+SHcWjCmQ8RNzRdRR3J/aJ6pEmABj0Y
 s6S+eFvKvVW73VuPiKEdKHsLTnDEkPODkVfiko7Zr4wVGvzdG6qyojR9T6oxZWaXu8sEYCy+8B
 gTY=
X-IronPort-AV: E=Sophos;i="5.72,380,1580745600"; d="scan'208";a="136683332"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2020 05:29:32 +0800
IronPort-SDR: mPP8eogtU34Vk5BT6DJmnuBK67ZFk+oXgUxFpcJ+fM6sh7h/m+PDTNjg/wjCAlKV7XNR+8fZsu
 bJs/An/CQX/7THvcd+jO2fntl8qoN43qZCYKiRY1rtcn4upzCkGTqD6Cn9TXlzSr/Y+CA4QHUb
 0vSJclEbvjcXUzazzByfoyOf+ksQqyKqh9ySlejSvZ6m/QKLjBMp6g6qT6TgW8Z8BeKDCLK/97
 jWlwCry8fgdR6hL6n4wP/FkB16rR4yH4L4mq07EVKXOX8Y3zUA9QUD7H3/IV5oZpJFjF50kPDI
 zCSSU6EktnXunh2FPc4Qb216
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 14:20:03 -0700
IronPort-SDR: HUSqYi5vSgglAB48tTHXiwXFEgGzTWu3xQT+gNZyviZvsIWsIl1ManBsmjK4ODlmAAKSnUSQBX
 hPDdajhF35I1QInTkpa3Ac8Wq0rhLhW8seTLPNql7GQ146e8b2vx0z2Jui44bhns3BMTAuDjki
 Q/fp9GfGLieHsPCPGOTmdoTr3eVMtsrp3a8vYA2V9BPATnUKUKnn3r7/W6PjpzuSalyEopt+W4
 0ofmyQIRC5f/xIiPTuAaa5zHT5qFtFbLNH7gppKhYlhweK9b7tSopYGN6YikYTiu0/eGi9xkGp
 Noo=
WDCIronportException: Internal
Received: from 9dg4l72.ad.shared (HELO jedi-01.hgst.com) ([10.86.55.26])
 by uls-op-cesaip01.wdc.com with ESMTP; 13 Apr 2020 14:29:32 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v2 PATCH 5/5] RISC-V: Add EFI stub support.
Date: Mon, 13 Apr 2020 14:29:07 -0700
Message-Id: <20200413212907.29244-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200413212907.29244-1-atish.patra@wdc.com>
References: <20200413212907.29244-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_142953_327784_DF37C691 
X-CRM114-Status: GOOD (  27.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add a RISC-V architecture specific stub code that actually copies the
actual kernel image to a valid address and jump to it after boot services
are terminated. Enable UEFI related kernel configs as well for RISC-V.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig                        |  20 ++++
 arch/riscv/Makefile                       |   1 +
 arch/riscv/configs/defconfig              |   1 +
 arch/riscv/include/asm/efi.h              |  45 ++++++++
 drivers/firmware/efi/Kconfig              |   2 +-
 drivers/firmware/efi/libstub/Makefile     |   8 ++
 drivers/firmware/efi/libstub/riscv-stub.c | 131 ++++++++++++++++++++++
 7 files changed, 207 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/efi.h
 create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index f39e326a7a42..eb4f41c8f3ce 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -379,10 +379,30 @@ config CMDLINE_FORCE
 
 endchoice
 
+config EFI_STUB
+	bool
+
+config EFI
+	bool "UEFI runtime support"
+	depends on OF
+	select LIBFDT
+	select UCS2_STRING
+	select EFI_PARAMS_FROM_FDT
+	select EFI_STUB
+	select EFI_GENERIC_STUB
+	default y
+	help
+	  This option provides support for runtime services provided
+	  by UEFI firmware (such as non-volatile variables, realtime
+          clock, and platform reset). A UEFI stub is also provided to
+	  allow the kernel to be booted as an EFI application. This
+	  is only useful on systems that have UEFI firmware.
+
 endmenu
 
 menu "Power management options"
 
 source "kernel/power/Kconfig"
+source "drivers/firmware/Kconfig"
 
 endmenu
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index fb6e37db836d..079435804d6d 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -80,6 +80,7 @@ head-y := arch/riscv/kernel/head.o
 core-y += arch/riscv/
 
 libs-y += arch/riscv/lib/
+core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
 
 PHONY += vdso_install
 vdso_install:
diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 4da4886246a4..ae69e12d306a 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -129,3 +129,4 @@ CONFIG_DEBUG_BLOCK_EXT_DEVT=y
 # CONFIG_RUNTIME_TESTING_MENU is not set
 CONFIG_MEMTEST=y
 # CONFIG_SYSFS_SYSCALL is not set
+CONFIG_EFI=y
diff --git a/arch/riscv/include/asm/efi.h b/arch/riscv/include/asm/efi.h
new file mode 100644
index 000000000000..ba0a6d35cc15
--- /dev/null
+++ b/arch/riscv/include/asm/efi.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ * Based on arch/arm64/include/asm/efi.h
+ */
+#ifndef _ASM_EFI_H
+#define _ASM_EFI_H
+
+#include <asm/io.h>
+#include <asm/mmu_context.h>
+#include <asm/ptrace.h>
+#include <asm/tlbflush.h>
+
+#define VA_BITS_MIN 39
+
+/* on RISC-V, the FDT may be located anywhere in system RAM */
+static inline unsigned long efi_get_max_fdt_addr(unsigned long dram_base)
+{
+	return ULONG_MAX;
+}
+
+/* Load initrd at enough distance from DRAM start */
+static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
+						    unsigned long image_addr)
+{
+	return dram_base + SZ_256M;
+}
+
+#define efi_bs_call(func, ...)	efi_system_table()->boottime->func(__VA_ARGS__)
+#define efi_rt_call(func, ...)	efi_system_table()->runtime->func(__VA_ARGS__)
+#define efi_is_native()		(true)
+
+#define efi_table_attr(inst, attr)	(inst->attr)
+
+#define efi_call_proto(inst, func, ...) inst->func(inst, ##__VA_ARGS__)
+
+#define alloc_screen_info(x...)		(&screen_info)
+extern char stext_offset[];
+
+static inline void free_screen_info(struct screen_info *si)
+{
+}
+#define EFI_ALLOC_ALIGN		SZ_64K
+
+#endif /* _ASM_EFI_H */
diff --git a/drivers/firmware/efi/Kconfig b/drivers/firmware/efi/Kconfig
index 2a2b2b96a1dc..fcdc789d3f87 100644
--- a/drivers/firmware/efi/Kconfig
+++ b/drivers/firmware/efi/Kconfig
@@ -111,7 +111,7 @@ config EFI_GENERIC_STUB
 
 config EFI_ARMSTUB_DTB_LOADER
 	bool "Enable the DTB loader"
-	depends on EFI_GENERIC_STUB
+	depends on EFI_GENERIC_STUB && !RISCV
 	default y
 	help
 	  Select this config option to add support for the dtb= command
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index d590504541f6..b1db3a793c43 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -22,6 +22,8 @@ cflags-$(CONFIG_ARM64)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
+cflags-$(CONFIG_RISCV)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
+				   -fpic
 
 cflags-$(CONFIG_EFI_GENERIC_STUB)	+= -I$(srctree)/scripts/dtc/libfdt
 
@@ -56,6 +58,7 @@ lib-$(CONFIG_EFI_GENERIC_STUB)		+= efi-stub.o fdt.o string.o \
 lib-$(CONFIG_ARM)		+= arm32-stub.o
 lib-$(CONFIG_ARM64)		+= arm64-stub.o
 lib-$(CONFIG_X86)		+= x86-stub.o
+lib-$(CONFIG_RISCV)		+= riscv-stub.o
 CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 
@@ -80,6 +83,11 @@ STUBCOPY_FLAGS-$(CONFIG_ARM64)	+= --prefix-alloc-sections=.init \
 				   --prefix-symbols=__efistub_
 STUBCOPY_RELOC-$(CONFIG_ARM64)	:= R_AARCH64_ABS
 
+STUBCOPY_FLAGS-$(CONFIG_RISCV)	+= --prefix-alloc-sections=.init \
+				   --prefix-symbols=__efistub_
+STUBCOPY_RELOC-$(CONFIG_RISCV)	:= R_RISCV_HI20
+
+
 $(obj)/%.stub.o: $(obj)/%.o FORCE
 	$(call if_changed,stubcopy)
 
diff --git a/drivers/firmware/efi/libstub/riscv-stub.c b/drivers/firmware/efi/libstub/riscv-stub.c
new file mode 100644
index 000000000000..acb69eae187a
--- /dev/null
+++ b/drivers/firmware/efi/libstub/riscv-stub.c
@@ -0,0 +1,131 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2013, 2014 Linaro Ltd;  <roy.franz@linaro.org>
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ *
+ * This file implements the EFI boot stub for the RISC-V kernel.
+ * Adapted from ARM64 version at drivers/firmware/efi/libstub/arm64-stub.c.
+ */
+
+#include <linux/efi.h>
+#include <linux/libfdt.h>
+#include <linux/libfdt_env.h>
+#include <asm/efi.h>
+#include <asm/sections.h>
+
+#include "efistub.h"
+/*
+ * RISCV requires the kernel image to placed TEXT_OFFSET bytes beyond a 2 MB
+ * aligned base for 64 bit and 4MB for 32 bit.
+ */
+#ifdef CONFIG_64BIT
+#define MIN_KIMG_ALIGN	SZ_2M
+#else
+#define MIN_KIMG_ALIGN	SZ_4M
+#endif
+/*
+ * TEXT_OFFSET ensures that we don't overwrite the firmware that probably sits
+ * at the beginning of the DRAM.
+ */
+#define TEXT_OFFSET MIN_KIMG_ALIGN
+
+typedef __attribute__((noreturn)) void (*jump_kernel_func)(unsigned int,
+							   unsigned long);
+efi_status_t check_platform_features(void)
+{
+	return EFI_SUCCESS;
+}
+
+static u32 get_boot_hartid_from_fdt(unsigned long fdt)
+{
+	int chosen_node, len;
+	const fdt32_t *prop;
+
+	chosen_node = fdt_path_offset((void *)fdt, "/chosen");
+	if (chosen_node < 0)
+		return U32_MAX;
+	prop = fdt_getprop((void *)fdt, chosen_node, "boot-hartid", &len);
+	if (!prop || len != sizeof(u32))
+		return U32_MAX;
+
+	return fdt32_to_cpu(*prop);
+}
+
+/*
+ * Jump to real kernel here with following constraints.
+ * 1. MMU should be disabled.
+ * 2. a0 should contain hartid
+ * 3. a1 should DT address
+ */
+void __noreturn efi_enter_kernel(unsigned long entrypoint, unsigned long fdt,
+				 unsigned long fdt_size)
+{
+	unsigned long kernel_entry = entrypoint + (unsigned long)stext_offset;
+	jump_kernel_func jump_kernel = (void (*)(unsigned int, unsigned long))kernel_entry;
+	u32 hartid = get_boot_hartid_from_fdt(fdt);
+
+	if (hartid == U32_MAX)
+		/* We can not use panic or BUG at this point */
+		__asm__ __volatile__ ("ebreak");
+	/* Disable MMU */
+	csr_write(CSR_SATP, 0);
+	jump_kernel(hartid, fdt);
+}
+
+efi_status_t handle_kernel_image(unsigned long *image_addr,
+				 unsigned long *image_size,
+				 unsigned long *reserve_addr,
+				 unsigned long *reserve_size,
+				 unsigned long dram_base,
+				 efi_loaded_image_t *image)
+{
+	efi_status_t status;
+	unsigned long kernel_size, kernel_memsize = 0;
+	unsigned long preferred_offset;
+
+	/*
+	 * The preferred offset of the kernel Image is TEXT_OFFSET bytes beyond
+	 * a KIMG_ALIGN aligned base.
+	 */
+	preferred_offset = round_up(dram_base, MIN_KIMG_ALIGN) + TEXT_OFFSET;
+
+	kernel_size = _edata - _start;
+	kernel_memsize = kernel_size + (_end - _edata);
+
+	/*
+	 * Try a straight allocation at the preferred offset. It will also
+	 * ensure that, on platforms where the [dram_base, dram_base + TEXT_OFFSET)
+	 * interval is partially occupied by the firmware we can still place
+	 * the kernel at the address 'dram_base + TEXT_OFFSET'. If the straight
+	 * allocation fails, efi_low_alloc tries allocate memory from the lowest
+	 * available LOADER_DATA mapped memory as long as address and size meet
+	 * the alignment constraints.
+	 */
+	if (*image_addr == preferred_offset)
+		return EFI_SUCCESS;
+
+	*image_addr = *reserve_addr = preferred_offset;
+	*reserve_size = round_up(kernel_memsize, EFI_ALLOC_ALIGN);
+
+	status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
+				EFI_LOADER_DATA,
+				*reserve_size / EFI_PAGE_SIZE,
+				(efi_physical_addr_t *)reserve_addr);
+
+	if (status != EFI_SUCCESS) {
+		pr_efi("straight allocation failed do a low alloc\n");
+		*reserve_size = kernel_memsize + TEXT_OFFSET;
+		status = efi_low_alloc(*reserve_size, MIN_KIMG_ALIGN,
+				       reserve_addr);
+
+		if (status != EFI_SUCCESS) {
+			pr_efi_err("Failed to relocate kernel\n");
+			*reserve_size = 0;
+			return status;
+		}
+		*image_addr = *reserve_addr + TEXT_OFFSET;
+	}
+	memcpy((void *)*image_addr, image->image_base, kernel_size);
+
+	return EFI_SUCCESS;
+}
-- 
2.24.0


