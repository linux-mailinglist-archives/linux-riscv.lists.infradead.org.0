Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB46172B18
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 23:27:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FA99i+lXVpH03dKLCB/VNwnyGxUUoHfwSRDfUssXRTY=; b=Ajb0lfKBoRGh76
	V5ALK65d/xbbKj7KcL6gTY9WgHyBEjcu52uxz5dtV5tp63OHy3SLQGEILhALVm2i5YBOG+OjbzCP1
	rlb28F6JAtNnH5ncwtiUAljiJ9vOjTz7R9rqD/UVcAwE64Dn5H5ixs4niWm5I6oDeyW+bdYvSAej3
	log33fU9wQCH2xnMu/kJtyDppWsS16E+BOcf+S6QS2dCLCYyS7pjiDvxyP8exnTgDkc5+44suBkUa
	3s5+x19hZa+JNufFFWdOSxzMtyguhzwH9LkbHo+aGb9HDiHYa9kzRg6orCqJhH4DxmcRVzeVZ1f5o
	ppCzpoxF1mg4cQRikxmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RcX-0000eL-OB; Thu, 27 Feb 2020 22:27:05 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RcO-0000Wn-Su
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 22:26:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582842417; x=1614378417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8+bQmOk3su3vFKh2m+lkIXpoSPkei2/BxO2wUo2lbAs=;
 b=Aa+3t8JgjVcr9PS26ddOdy2QpOitbHMCS6wNIA8T3JqaF7st6D2dE5pm
 zLIf01DF038IU0+EdO+qHUazwGX2o5+/yKf3o1rzw1S1ASesA0WK6SzFb
 X0B1AXvDdkiKIzN5603T9UAdW+g4ICn4x5hpKXmDfkZ8l64cCqhdmOGy1
 85pKhQ1KdalgnihcoFEWLHZSvhpSZApl5MjE4tEXefO68NHkASe44H4Pf
 IiiqkhIlD9c49z59wZEyh4QDkap04mSfSmOjScjT3DZxIs7B35DKOJO6B
 EcbsNQ5h0bGpfJ4cUVUL/k4TsoKMnJ/i5YQ2EGDo3izzFl7w5BmwESIkO g==;
IronPort-SDR: RMQ02UV8T/A4lr5JhsYRxSX3FPxJhgPqlFiB8VSffbl446B+Aw/SgFhUFf6ZlEcets4UfxJ0HI
 Hzcwq3eV49LZRRR5Q90Bn/cBx/yCLI+ufvprEvygSs5d6qHGsUdnh9A+U8pyLdJ8vwWqrwrMG1
 2Gyn4E2uCXBIm1c1eDnQDMXNr1auh3JSlgul7rg9KOiGqDHLG6Ewk3iQpBWYkRV/3rcAB5W8I9
 7oHsPlI/Z6k5Q29E6RrEXaLUXeJBwU3p1r4hfJSBlvKawzLVlQE741Xp85y5zSa0FI4g/ISlQ9
 pnY=
X-IronPort-AV: E=Sophos;i="5.70,493,1574092800"; d="scan'208";a="132395341"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Feb 2020 06:26:50 +0800
IronPort-SDR: fRkY5xxI07W8R7mQKcbalSogblOqZnjqq/0ZUzSlfKG8bGjR4fxXmSh14y+PVwG0fu4AEiWVmi
 alm/owK1N0tqWT/11ClB9dnCx/GGgrEbwzpSzLmpe2M3nJlNf/kfwjBmYC3ChXeXl5Q3gmhogZ
 NwGCqu9UihMtkf6zitMHd4IbMbcemzYjLuorsng8lRrQ4U5rT7ZFmEosH4Ggz7O8kTJPJkcna7
 K/KdrQlwjZ+zXyhSoxBV6pp+fTv1aN94UNzeqPPsCv32q1FrJKO+hB/IXMZLX3Rrbwp8sVoY9k
 b0mwwt93AVgGNXRuOf8qlKwH
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:18:49 -0800
IronPort-SDR: doNdtjDyQyTl5eHyB8x3had8Qj7buf7Q0oxV6xcruIObUlvaR3SwBNMXHHv35+bayB4a+jhNLs
 N5S5SEE1DogcN0LD6KxHe7gBN+8i0ZwIOU5CG4dDQN6k65Vja7f10nvah4Nk9sPUJ5YHrP9ghF
 fxQGvMEbuEAE9Uv6pwXxYBJyqn0g09Uv3x8uE/2xV2kPrXD0bHt1eNYazxluniZONh8DaRNLAt
 RZDc0vGNHAjphjPfo66mj6MFLQHy6XiHsRPCWXpdUNSQQNipkQJ6082q5MK4KjDtQn087G0uHP
 gzA=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Feb 2020 14:26:49 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v1 PATCH 1/5] efi: Move arm-stub to a common file
Date: Thu, 27 Feb 2020 14:26:40 -0800
Message-Id: <20200227222644.9468-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200227222644.9468-1-atish.patra@wdc.com>
References: <20200227222644.9468-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_142657_019954_D621BF06 
X-CRM114-Status: GOOD (  15.09  )
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

Most of the arm-stub code is written in an architecture independent manner.
As a result, RISC-V can reuse most of the arm-stub code.

Rename the arm-stub.c to efi-stub.c so that ARM, ARM64 and RISC-V can use it.
This patch doesn't introduce any functional changes.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/arm/Kconfig                                     |  2 +-
 arch/arm64/Kconfig                                   |  2 +-
 drivers/firmware/efi/Kconfig                         |  4 ++--
 drivers/firmware/efi/libstub/Makefile                | 12 ++++++------
 .../firmware/efi/libstub/{arm-stub.c => efi-stub.c}  |  0
 5 files changed, 10 insertions(+), 10 deletions(-)
 rename drivers/firmware/efi/libstub/{arm-stub.c => efi-stub.c} (100%)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 97864aabc2a6..cccb9df48055 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1955,7 +1955,7 @@ config EFI
 	select UCS2_STRING
 	select EFI_PARAMS_FROM_FDT
 	select EFI_STUB
-	select EFI_ARMSTUB
+	select EFI_GENERIC_STUB
 	select EFI_RUNTIME_WRAPPERS
 	---help---
 	  This option provides support for runtime services provided
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..edf955832e55 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1720,7 +1720,7 @@ config EFI
 	select EFI_PARAMS_FROM_FDT
 	select EFI_RUNTIME_WRAPPERS
 	select EFI_STUB
-	select EFI_ARMSTUB
+	select EFI_GENERIC_STUB
 	default y
 	help
 	  This option provides support for runtime services provided
diff --git a/drivers/firmware/efi/Kconfig b/drivers/firmware/efi/Kconfig
index ecc83e2f032c..708fe86cc66d 100644
--- a/drivers/firmware/efi/Kconfig
+++ b/drivers/firmware/efi/Kconfig
@@ -106,12 +106,12 @@ config EFI_PARAMS_FROM_FDT
 config EFI_RUNTIME_WRAPPERS
 	bool
 
-config EFI_ARMSTUB
+config EFI_GENERIC_STUB
 	bool
 
 config EFI_ARMSTUB_DTB_LOADER
 	bool "Enable the DTB loader"
-	depends on EFI_ARMSTUB
+	depends on EFI_GENERIC_STUB
 	default y
 	help
 	  Select this config option to add support for the dtb= command
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 4d6246c6f651..f1d7de1e0d87 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -22,7 +22,7 @@ cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
 
-cflags-$(CONFIG_EFI_ARMSTUB)	+= -I$(srctree)/scripts/dtc/libfdt
+cflags-$(CONFIG_EFI_GENERIC_STUB)	+= -I$(srctree)/scripts/dtc/libfdt
 
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
+lib-$(CONFIG_EFI_GENERIC_STUB)		+= efi-stub.o fdt.o string.o \
+				   $(patsubst %.c,lib-%.o,$(efi-deps-y))
 
 lib-$(CONFIG_ARM)		+= arm32-stub.o
 lib-$(CONFIG_ARM64)		+= arm64-stub.o
@@ -72,8 +72,8 @@ CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 # a verification pass to see if any absolute relocations exist in any of the
 # object files.
 #
-extra-$(CONFIG_EFI_ARMSTUB)	:= $(lib-y)
-lib-$(CONFIG_EFI_ARMSTUB)	:= $(patsubst %.o,%.stub.o,$(lib-y))
+extra-$(CONFIG_EFI_GENERIC_STUB)	:= $(lib-y)
+lib-$(CONFIG_EFI_GENERIC_STUB)	:= $(patsubst %.o,%.stub.o,$(lib-y))
 
 STUBCOPY_FLAGS-$(CONFIG_ARM64)	+= --prefix-alloc-sections=.init \
 				   --prefix-symbols=__efistub_
diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/efi-stub.c
similarity index 100%
rename from drivers/firmware/efi/libstub/arm-stub.c
rename to drivers/firmware/efi/libstub/efi-stub.c
-- 
2.24.0


