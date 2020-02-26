Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC6716F4BD
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 02:11:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpdZVOtbcU+Cf9LPioVAjmkX3ANTVd6+AWy1oktColM=; b=UgQ+YJpcet7MQk
	oOQ29vW2mPT0HjqTA/GtI7nU5Jnh3fXtw+LLuwFlDZ5IoPfFcwlXfrIQLilkjsK0byykYoCRB9JfZ
	HN9eRP4gnXLYYDnoSBJuNaJTWF0tR0bfUxhL9Cf3wFlEDXDswjnG/KrgHw4eS8gbYdDEzcbnbhp6a
	bdM8kjkZP5b8sv57y42ioe0dpGnitgwaWX4iuAzST0//0+UTx3tNVAC1zgfXdOI+gTx//LtC8Aapu
	w+7qagqvIWebRQ174iJQAwW3yf//oH+AMXUKpaSjUfEA/WIi3moee9j72SgqlVtLBRq3Ipzmof5ae
	w71fb+cJt8uEkN1CidJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lEB-0006qz-3E; Wed, 26 Feb 2020 01:11:07 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lE3-0006kU-OC
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 01:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582679465; x=1614215465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bpfOWeCDP3qbnbScpAF1BlT5s86+7Hl4XNmrh2YhN1Y=;
 b=QAq2RNJNU8yU9Z/1BNLNnRpNQucJsz/nFUGIvchdKfZIVPYg8pjH1Rvz
 SLp/wUEL+QrOuPSGbXgJOUh9Ry0wCPm/qlHUmXtTQK1ToIX1Hl7U7+1X0
 WicYpuTkLF1rwHCMhDFzMCqmeGuH7T5eFA2rjrYlaUp0Ha3RBY8liclum
 +jGRPTMrpJt9NCuNEzFYhrG2LLYPDrFoJ3nMbnOuEfAKTHKPatjV0pVWd
 cKq1DdeJDamIlk5+dUr/rlALJkyyBi7xG0NbPlIlgJoWU81VeJCJlvGTA
 fqTJ3WInZRQVThazGBc0WS/s2EvUoAM06b7jqJUCIlhcfuU7Ha0KdTYhp A==;
IronPort-SDR: 3izt+qoXnf0oh7s0vNT7szsoGllWiQ9EmX7ASkzO8NLulfTwdY1utI4LquHqGAUBRHrh1UvW2I
 Aj1YNqBF4U5IeygWpuuvOUlp56yND60YW8bqiV5tHiWQYIlP9ClSGVZz/E8bgsqYHkFZD/yS38
 Clonm2XzIaETSipX8rjGB3bOBZUVdU5ZvZ/+2mH8UtBPHZCWZZwdlZLphoiHxJLeFDf6kbyk4D
 6NEXp13YIXhSpKoT/Jlocr7Nd/BA07QtXLn5ar1YyybGzq3iqv192+qSoXy+SUrK53rBFP7hvS
 h30=
X-IronPort-AV: E=Sophos;i="5.70,486,1574092800"; d="scan'208";a="232649051"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 26 Feb 2020 09:10:49 +0800
IronPort-SDR: aemcxlbzTzsLxoT33v+EqpBRwhjavYnH8YyROE6yXH29huFENmNPE/W2pdrMAmPtKnFcYZTS5P
 NtXlE1v5X+XiQJ4ZJDOYZiAuv2wG5AdAhJQ+TOQzHmBUMFdnTIOJbyTGv3+oIR5Re9pXvdNDI6
 yEZ71Jx2it2P98J4hjuZF60zi01UT1EgKx5bgyU1dhz8nf6DjtLG74Wlm8jxfT3c2NOLSfyFui
 r8XXDLN00VP0UenmpxhFdgiuQSPRJPOyZbsOJ62QPiYrvi7z+reAnvkxi7Otl2/AOjORT2jWPV
 QU+QzhuLG3ZHa1YopqDHkOEn
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:03:15 -0800
IronPort-SDR: S3s5fU4WRnyhz3CFMegfsbMTVbTiYo7e+DJDkRNBhGN+af39g/4653NJ55fbwl3ZwLTEzxeGQ6
 0y7u6IZK+LHZkkSvPjJnRkL1yQqHW/4zI49n1HCZC7R4N3Fc/NayLWAwkerOQ42NACl7mypfNH
 ZOyi4Vbm8bSpydzxyBVBp5DQaeBB1MMoLtc1FZ0G1R5UeXfaxKMlmpFEXxw1C8kyajrZSPdg8C
 GkY1aoNnADAN4NWnsJcQ0zgtxF1aPzxDBs1DMosaiomiu4NU1qr3nOAsuYJlcVuxgw9vvf7gO3
 OlM=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 25 Feb 2020 17:10:47 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/5] efi: Move arm-stub to a common file
Date: Tue, 25 Feb 2020 17:10:33 -0800
Message-Id: <20200226011037.7179-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200226011037.7179-1-atish.patra@wdc.com>
References: <20200226011037.7179-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_171059_827566_4904CB66 
X-CRM114-Status: GOOD (  16.32  )
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

Most of the arm-stub code is written in an architecture independent manner.
As a result, RISC-V can reuse most of the arm-stub code.

Rename the arm-stub.c to efi-stub.c so that ARM, ARM64 and RISC-V can use it.
This patch doesn't introduce any functional changes.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/arm/Kconfig                                     |  2 +-
 arch/arm64/Kconfig                                   |  2 +-
 drivers/firmware/efi/Kconfig                         |  6 +++---
 drivers/firmware/efi/libstub/Makefile                | 12 ++++++------
 .../firmware/efi/libstub/{arm-stub.c => efi-stub.c}  |  7 ++++++-
 5 files changed, 17 insertions(+), 12 deletions(-)
 rename drivers/firmware/efi/libstub/{arm-stub.c => efi-stub.c} (98%)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 97864aabc2a6..9931fea06076 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1955,7 +1955,7 @@ config EFI
 	select UCS2_STRING
 	select EFI_PARAMS_FROM_FDT
 	select EFI_STUB
-	select EFI_ARMSTUB
+	select EFI_GENERIC_ARCH_STUB
 	select EFI_RUNTIME_WRAPPERS
 	---help---
 	  This option provides support for runtime services provided
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..ae776d8ef2f9 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1720,7 +1720,7 @@ config EFI
 	select EFI_PARAMS_FROM_FDT
 	select EFI_RUNTIME_WRAPPERS
 	select EFI_STUB
-	select EFI_ARMSTUB
+	select EFI_GENERIC_ARCH_STUB
 	default y
 	help
 	  This option provides support for runtime services provided
diff --git a/drivers/firmware/efi/Kconfig b/drivers/firmware/efi/Kconfig
index ecc83e2f032c..1bcedb7812da 100644
--- a/drivers/firmware/efi/Kconfig
+++ b/drivers/firmware/efi/Kconfig
@@ -106,12 +106,12 @@ config EFI_PARAMS_FROM_FDT
 config EFI_RUNTIME_WRAPPERS
 	bool
 
-config EFI_ARMSTUB
+config EFI_GENERIC_ARCH_STUB
 	bool
 
-config EFI_ARMSTUB_DTB_LOADER
+config EFI_STUB_DTB_LOADER
 	bool "Enable the DTB loader"
-	depends on EFI_ARMSTUB
+	depends on EFI_GENERIC_ARCH_STUB
 	default y
 	help
 	  Select this config option to add support for the dtb= command
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 4d6246c6f651..2c5b76787126 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -22,7 +22,7 @@ cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
 
-cflags-$(CONFIG_EFI_ARMSTUB)	+= -I$(srctree)/scripts/dtc/libfdt
+cflags-$(CONFIG_EFI_GENERIC_ARCH_STUB)	+= -I$(srctree)/scripts/dtc/libfdt
 
 KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
@@ -44,13 +44,13 @@ lib-y				:= efi-stub-helper.o gop.o secureboot.o tpm.o \
 				   skip_spaces.o lib-cmdline.o lib-ctype.o
 
 # include the stub's generic dependencies from lib/ when building for ARM/arm64
-arm-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
+efi-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
 
 $(obj)/lib-%.o: $(srctree)/lib/%.c FORCE
 	$(call if_changed_rule,cc_o_c)
 
-lib-$(CONFIG_EFI_ARMSTUB)	+= arm-stub.o fdt.o string.o \
-				   $(patsubst %.c,lib-%.o,$(arm-deps-y))
+lib-$(CONFIG_EFI_GENERIC_ARCH_STUB)		+= efi-stub.o fdt.o string.o \
+				   $(patsubst %.c,lib-%.o,$(efi-deps-y))
 
 lib-$(CONFIG_ARM)		+= arm32-stub.o
 lib-$(CONFIG_ARM64)		+= arm64-stub.o
@@ -72,8 +72,8 @@ CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 # a verification pass to see if any absolute relocations exist in any of the
 # object files.
 #
-extra-$(CONFIG_EFI_ARMSTUB)	:= $(lib-y)
-lib-$(CONFIG_EFI_ARMSTUB)	:= $(patsubst %.o,%.stub.o,$(lib-y))
+extra-$(CONFIG_EFI_GENERIC_ARCH_STUB)	:= $(lib-y)
+lib-$(CONFIG_EFI_GENERIC_ARCH_STUB)	:= $(patsubst %.o,%.stub.o,$(lib-y))
 
 STUBCOPY_FLAGS-$(CONFIG_ARM64)	+= --prefix-alloc-sections=.init \
 				   --prefix-symbols=__efistub_
diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/efi-stub.c
similarity index 98%
rename from drivers/firmware/efi/libstub/arm-stub.c
rename to drivers/firmware/efi/libstub/efi-stub.c
index 13559c7e6643..b87c3f70430c 100644
--- a/drivers/firmware/efi/libstub/arm-stub.c
+++ b/drivers/firmware/efi/libstub/efi-stub.c
@@ -15,6 +15,7 @@
 
 #include "efistub.h"
 
+#if IS_ENABLED(CONFIG_ARM64) || IS_ENABLED(CONFIG_ARM)
 /*
  * This is the base address at which to start allocating virtual memory ranges
  * for UEFI Runtime Services. This is in the low TTBR0 range so that we can use
@@ -27,6 +28,10 @@
  * entire footprint of the UEFI runtime services memory regions)
  */
 #define EFI_RT_VIRTUAL_BASE	SZ_512M
+#else
+#define EFI_RT_VIRTUAL_BASE	SZ_2G
+#endif
+
 #define EFI_RT_VIRTUAL_SIZE	SZ_512M
 
 #ifdef CONFIG_ARM64
@@ -243,7 +248,7 @@ efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t *sys_table_arg)
 	 * 'dtb=' unless UEFI Secure Boot is disabled.  We assume that secure
 	 * boot is enabled if we can't determine its state.
 	 */
-	if (!IS_ENABLED(CONFIG_EFI_ARMSTUB_DTB_LOADER) ||
+	if (!IS_ENABLED(CONFIG_EFI_STUB_DTB_LOADER) ||
 	     secure_boot != efi_secureboot_mode_disabled) {
 		if (strstr(cmdline_ptr, "dtb="))
 			pr_efi("Ignoring DTB from command line.\n");
-- 
2.24.0


