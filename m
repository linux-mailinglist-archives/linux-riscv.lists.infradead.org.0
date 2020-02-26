Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92B716F4BF
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 02:11:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8ExK6GCglfxeJV8BimnRbC9hIQlH6G2wpsdPngvKtU=; b=QRKiFxZRtPRKQh
	xeG5Tefx6xXogfA4JnPVzpujr3KZG6mtFPbbSkHz5arJHP1HT8ZdoaBynFFLP7/m+KgOJKhj01ivh
	9X2xXC8WUrWPQAvRWUFHkdhTKPkqiK1cwNJLQKWzQEP1SIMIhOwDsiw4Pbm7lxXgy0BStexf674iX
	3BE0snJeFtvU1kJZsyCIrOogOH6l1uQ7OK6YHGZ/HvXe6FjHjWKYm1k84FjK+4TCZeoEV9jurk0Lk
	KlkoDKRY2AkBiwL96z2jiTm0hjaES1sI3ZsVS9ta6c6yMrW1ZKeudbIdBD0uRw/r6xq7Zy+lwfdvg
	kSsJcfoaFIWl7JMCZtMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lEI-00072N-4r; Wed, 26 Feb 2020 01:11:14 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lE5-0006nA-Fo
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 01:11:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582679468; x=1614215468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yvp7JbTAQq6IiOaxcY3rqmzJZBWNbV6pzkO60Mdeefs=;
 b=mxYpELtGjOwTfTWMsIWTSzqLNbkTAHs7QpUH/zEk4UjBCK858kSSY0T+
 FtWvCj5y+IzS9gSUc9f3IX1Vnqm2H0yFf+h2xqg3JXLF/G7FLYjxOD+ON
 2QPSuqHTd3EtR3n7qwUFLLYO/cVBAKWB2xSWBuU6wl5fWDMsj+OPlyolj
 /PGUZ8wJzwv4JO57gl+Xi8u/dT7Qw3TK72ou8TjS7RbsZ6swywRiDVsfs
 kjjk2Kde2XQrTqahrqGGSwr/2PxhTW+EJob7vpWG6a7JXd+Ln4HbFs4R2
 rKdDVoJJtxDHREvMDqZ0iKNthLxjQaChzOe4/xTr3ELTy+lL141Dt77rG A==;
IronPort-SDR: nE+6WxYDZ+EtI++NeLnxFIwiK8CdT/M3HL2a31Hnm4ehcf8NIVDyixtk05i4dFb/M7t79glPWm
 VMVvKwvIIXNsZR3umbGBFvTedYFWLwSzIwwRGUBAMKA40YlOnpp9dlCaHK1k/yRzBK4g9YgMBX
 t11fwV0WTpI9669DefBkHoSJ9UtGCn0e/gIaBMlpBdSFBZmomsiaHmHuRg2LmgOHW3GNQZPSiL
 G3Yb9i2ffgC2W0EgINU5Q2rK5PbSj3pOxaamuR0QJP0gikA+KuqEd5qnxewWvXLLNKAc1lxyNw
 IwI=
X-IronPort-AV: E=Sophos;i="5.70,486,1574092800"; d="scan'208";a="232649074"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 26 Feb 2020 09:10:54 +0800
IronPort-SDR: F/fgDU+1wryvn7VhhzZZMTUV0eZ/tVfAM9SY0HfE6qhDIRqoD3pzAZm9jqQRlMmXE2XnohnidQ
 71VLhhfo5pdYHtf9cUYxfvK/yiMuWXOas8THAJb4DcgJYwxJq69VanhFMxYbxmpJ3M8zlIBioD
 oB6UZ3ApGMU5uuBV8HXVDnAzXt+UCoiHTJzA6+JnxJO+aX9fvcGlyjrTtrHPpN5bL6JBIv5D1r
 FwC/X5CKhdlzL/vmsalrIk7AtlxoAUeyKa95ylbiG89SOS2rgojQMfNq+1laFdveTq4qTiJPsH
 9v0j8/pgRAhZ4DTnzOIg0JsW
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:03:17 -0800
IronPort-SDR: 6xEEAyVqD6GSFudyXzng+Zf+ndXD+T7l8RciiDcoUJMqvWvlRqgluYEAv4otTjcr1qy33VNQg4
 2/xvRlHOKLZfaF5mczO5FrL0jq8kF+g5yyZoxKk6sPnRSOB10TgBpcSrHXWJ4nzG3fqMJBIghW
 gSRYXYFZKZLu2marYcNBeEN1isvMmDwhsM8tK+DJos7wi8Q6D0MAzTYxXmrNOaKc52LOrZgVYZ
 cmtUg+YjRK0B1uC76pdz/MVWDVf7S7a2Qk5uPFy6/+ZiKM7PUaU0Ln3J3ID96JpkWZUIWazctK
 vs0=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 25 Feb 2020 17:10:50 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 5/5] RISC-V: Add EFI stub support.
Date: Tue, 25 Feb 2020 17:10:37 -0800
Message-Id: <20200226011037.7179-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200226011037.7179-1-atish.patra@wdc.com>
References: <20200226011037.7179-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_171101_615962_E0AA39B3 
X-CRM114-Status: GOOD (  24.64  )
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

Add a RISC-V architecture specific stub code that actually copies the
actual kernel image to a valid address and jump to it after boot services
are terminated. Enable UEFI related kernel configs as well for RISC-V.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig                        |  20 ++++
 arch/riscv/Makefile                       |   1 +
 arch/riscv/configs/defconfig              |   1 +
 drivers/firmware/efi/libstub/Makefile     |   8 ++
 drivers/firmware/efi/libstub/riscv-stub.c | 135 ++++++++++++++++++++++
 5 files changed, 165 insertions(+)
 create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 42c122170cfd..68b1d565e51d 100644
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
+	select EFI_GENERIC_ARCH_STUB
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
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 2c5b76787126..38facb61745b 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -21,6 +21,8 @@ cflags-$(CONFIG_ARM64)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
+cflags-$(CONFIG_RISCV)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
+				   -fpic
 
 cflags-$(CONFIG_EFI_GENERIC_ARCH_STUB)	+= -I$(srctree)/scripts/dtc/libfdt
 
@@ -55,6 +57,7 @@ lib-$(CONFIG_EFI_GENERIC_ARCH_STUB)		+= efi-stub.o fdt.o string.o \
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
index 000000000000..3935b29ea93a
--- /dev/null
+++ b/drivers/firmware/efi/libstub/riscv-stub.c
@@ -0,0 +1,135 @@
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
+#if IS_ENABLED(CONFIG_64BIT)
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
+
+efi_status_t check_platform_features(void)
+{
+	return EFI_SUCCESS;
+}
+
+u64 get_boot_hartid_from_fdt(unsigned long fdt)
+{
+	int chosen_node, len;
+	const fdt64_t *prop;
+	uint64_t hartid = U64_MAX;
+
+	chosen_node = fdt_path_offset((void *)fdt, "/chosen");
+	if (chosen_node < 0)
+		return hartid;
+	prop = fdt_getprop((void *)fdt, chosen_node, "efi-boot-hartid", &len);
+	if (!prop || len != sizeof(u64))
+		return hartid;
+
+	hartid = fdt64_to_cpu(*prop);
+
+	return hartid;
+}
+
+/*
+ * Jump to real kernel here with following constraints.
+ * 1. MMU should be disabled.
+ * 2. a0 should contain hartid
+ * 3. a1 should DT address
+ */
+void __noreturn efi_enter_kernel(unsigned long entrypoint, unsigned long fdt)
+{
+	unsigned long kernel_entry = entrypoint + _start_kernel - _start;
+	jump_kernel_func jump_kernel = (void (*)(unsigned int, unsigned long))kernel_entry;
+	u64 hartid = get_boot_hartid_from_fdt(fdt);
+
+	if (hartid == U64_MAX)
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
+	 * Try a straight allocation at the preferred offset.
+	 * This will work around the issue where, if dram_base == 0x0,
+	 * efi_low_alloc() refuses to allocate at 0x0 (to prevent the
+	 * address of the allocation to be mistaken for a FAIL return
+	 * value or a NULL pointer). It will also ensure that, on
+	 * platforms where the [dram_base, dram_base + TEXT_OFFSET)
+	 * interval is partially occupied by the firmware (like on APM
+	 * Mustang), we can still place the kernel at the address
+	 * 'dram_base + TEXT_OFFSET'.
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


