Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4824F172B1C
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 23:27:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggWGTaC1SCeCSg6PWii0oTVf4CzKtQoqv/jbfZTud6c=; b=eNyOZ5gCZBMo+w
	htZ2sLxWhVvywgjKVPaA+ISKxk7ftXdrfwp7lUbVU+4cc3p1o+kgMEuyUrgkEs6Trk2UwdxhrTLER
	reu6GoYFtVmm0tquqBsz01SZJawehqquaaFJ9NVM0DGIbPiJ+8EyZ87mf5vtaDgM4J/gnb9QKViE2
	+B//Nt2sYKablmYAJb7bhH7Jr3wktvfdydTjY4BbvVAZ3mgssJCTVN9QcNIbCzAWWm+UI+zHeK/2g
	TKquSGKqq54m/251zT7laRpZ1wWcZYIXR3mXDYoCf0Ts5JPwV+i1w7nM6+eA0a3jQjSDzbmmCTrOw
	mkx7SfsrYLJbjCKX1dRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Rcd-0000og-8M; Thu, 27 Feb 2020 22:27:11 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RcQ-0000YS-LW
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 22:27:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582842419; x=1614378419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lp215JCY61GERcBhD51PJFsT/l8XetQSivt+pIE2ejw=;
 b=QsMnahygoAZwNqlbHn/jVXgZTn4bE63ntu2KjC3vttFLLX9Av5i50XUE
 AjsYtqgTCwDhm0BWOqneHygH5b18ZlaMu8PuEcaUyYWQbrnHsaZvdGdgw
 AyF42c/DsCsdegFtJ3M1vvYPWi7nStzep1EhnrcG7+r2Z6Qo8oAJG0Oz0
 0GTMIRQSrqWIcgkIaLeI4XwohBPVXY5ywHI23XvsX5lvJqnovNERrX2O0
 t7Ggcblr/vYT2WYy/zChfyqVmE5LTUbBCV2rzeFl7c1VR2H5twqYk1VYB
 sJG4zKyTfOYhf12UAOhwikTe8bRxFW9EZYLG6udVPtMuboyqRPf1cjJ1g g==;
IronPort-SDR: qm3o7h1ERgweZnC/emP/qphP4Tzwzf4/Rx+M6/BtUYoLWo1UH5GyIcQvDubyIyV+N8QwRUFdIV
 HumbM+QUXE489Z/s9K2NjtfHrN8/J5YnJgasL22CJ1mZjHnYSrBLsDAUEtnUgzY1Ppk9dge3XC
 QSNwb8Q8iVduNSHVyB0v2uuc9nPIrVXnlV53AAA5yWy1fmJLwondKkdCYooCV7NXTwh4ulH8XR
 4noxgdIns2+aIxqMKDrW29wcpV59lcDhwlFzCMdAJSkSKTp3O9hhOxeGZeSriou8GvDEx9Jauh
 esg=
X-IronPort-AV: E=Sophos;i="5.70,493,1574092800"; d="scan'208";a="132395359"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Feb 2020 06:26:53 +0800
IronPort-SDR: 9rbYQ1sCTJvhGoHCqecmQeYuq30aRAlN2JiODo4GSfW2fzp5ppvWqZJ2sw6pEwuBHXmsXjn4d0
 O/EGWTkdNKIKuPk2camrM3UpIFHo/MOhfepFob1xUOkEkMkWxSHrneFyZ3H9j0oTftIWugEMY5
 lp+HBYvpyUklsuOlnedKvIt5sFX008+K0JRnw0Jq0BM6Qv7Nj9CNc1uJj5ULvjVQc/V66UGFs3
 4gDZAhyP0cfWZ+MOIaAYZK9xOC242ZLSY6hIeU03jl/oMixYm/SR4GJ1BOLUHom+gxRYDKBup5
 bwSBjH3OAB3tVxMAH+CIqzvr
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:18:52 -0800
IronPort-SDR: TFgo6kyhBYlcxQfAS9cp3EBSyPhWTUfAdB7VZqdAfcXz+qbuzONOfSTxJJ6/8yc0QU8P3ZRL61
 AI/Ke0or8g1kTcTIb4PRIyemqBGbmc0I8ZA3EBfQT5YFmLea8+f0t2xM09t7VsnG6WZrYgRXJl
 hkNrKRE2FhT5ybfveJj5lBNBTyM0TdHRIT2W1sO+c8mKp1W5w5X1r3+xkBsLVchXEHU6id7foa
 J/yHIou09Cdt+pp0EAKWmFu/4JGd0BPaRsKxCDq5GkA1pa5FJla8qQSe6FJHRYSeJ1NkYYkYuq
 OEA=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Feb 2020 14:26:51 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v1 PATCH 5/5] RISC-V: Add EFI stub support.
Date: Thu, 27 Feb 2020 14:26:44 -0800
Message-Id: <20200227222644.9468-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200227222644.9468-1-atish.patra@wdc.com>
References: <20200227222644.9468-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_142658_772563_E2E3906B 
X-CRM114-Status: GOOD (  31.22  )
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

Add a RISC-V architecture specific stub code that actually copies the
actual kernel image to a valid address and jump to it after boot services
are terminated. Enable UEFI related kernel configs as well for RISC-V.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig                        |  20 ++++
 arch/riscv/Makefile                       |   1 +
 arch/riscv/configs/defconfig              |   1 +
 arch/riscv/include/asm/efi.h              |  59 ++++++++++
 drivers/firmware/efi/Kconfig              |   2 +-
 drivers/firmware/efi/libstub/Makefile     |   8 ++
 drivers/firmware/efi/libstub/riscv-stub.c | 131 ++++++++++++++++++++++
 7 files changed, 221 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/efi.h
 create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 42c122170cfd..5a49a8117b17 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -372,10 +372,30 @@ config CMDLINE_FORCE
 
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
index b9009a2fbaf5..0afaa89ba9ad 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -78,6 +78,7 @@ head-y := arch/riscv/kernel/head.o
 core-y += arch/riscv/
 
 libs-y += arch/riscv/lib/
+core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
 
 PHONY += vdso_install
 vdso_install:
diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index e2ff95cb3390..0a5d3578f51e 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -125,3 +125,4 @@ CONFIG_DEBUG_BLOCK_EXT_DEVT=y
 # CONFIG_FTRACE is not set
 # CONFIG_RUNTIME_TESTING_MENU is not set
 CONFIG_MEMTEST=y
+CONFIG_EFI=y
diff --git a/arch/riscv/include/asm/efi.h b/arch/riscv/include/asm/efi.h
new file mode 100644
index 000000000000..b3d788bdcb54
--- /dev/null
+++ b/arch/riscv/include/asm/efi.h
@@ -0,0 +1,59 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
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
+/*
+ * AArch64 requires the DTB to be 8-byte aligned in the first 512MiB from
+ * start of kernel and may not cross a 2MiB boundary. We set alignment to
+ * 2MiB so we know it won't cross a 2MiB boundary.
+ */
+#define EFI_FDT_ALIGN	SZ_2M   /* used by allocate_new_fdt_and_exit_boot() */
+
+/* on arm64, the FDT may be located anywhere in system RAM */
+static inline unsigned long efi_get_max_fdt_addr(unsigned long dram_base)
+{
+	return ULONG_MAX;
+}
+
+/*
+ * On arm64, we have to ensure that the initrd ends up in the linear region,
+ * which is a 1 GB aligned region of size '1UL << (VA_BITS_MIN - 1)' that is
+ * guaranteed to cover the kernel Image.
+ *
+ * Since the EFI stub is part of the kernel Image, we can relax the
+ * usual requirements in Documentation/arm64/booting.rst, which still
+ * apply to other bootloaders, and are required for some kernel
+ * configurations.
+ */
+static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
+						    unsigned long image_addr)
+{
+	return (image_addr & ~(SZ_1G - 1UL)) + (1UL << (VA_BITS_MIN - 1));
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
index 708fe86cc66d..682aece44475 100644
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
index f1d7de1e0d87..e1db7666ad80 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -21,6 +21,8 @@ cflags-$(CONFIG_ARM64)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
+cflags-$(CONFIG_RISCV)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
+				   -fpic
 
 cflags-$(CONFIG_EFI_GENERIC_STUB)	+= -I$(srctree)/scripts/dtc/libfdt
 
@@ -55,6 +57,7 @@ lib-$(CONFIG_EFI_GENERIC_STUB)		+= efi-stub.o fdt.o string.o \
 lib-$(CONFIG_ARM)		+= arm32-stub.o
 lib-$(CONFIG_ARM64)		+= arm64-stub.o
 lib-$(CONFIG_X86)		+= x86-stub.o
+lib-$(CONFIG_RISCV)		+= riscv-stub.o
 CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 
@@ -79,6 +82,11 @@ STUBCOPY_FLAGS-$(CONFIG_ARM64)	+= --prefix-alloc-sections=.init \
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


