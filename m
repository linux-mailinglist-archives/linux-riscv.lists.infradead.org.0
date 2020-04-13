Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5511A6E48
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 23:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99jo7wqg26WiiIM+4olPTtatH0fI/ba5JDbEb1P3eNs=; b=Zkix6IFTqIlPMl
	NWV7P6yVb02HCjPztycmtw7v0fM0GBhiZ1BPQxFlR8AZpBIhdTnfbrn7rJp2vy6RlOfUVs+yby9l8
	+klCQxIMS5rvZwo667YWegL/n3/Ex5faNxk4DimchmJK4iriLfMr3z0n0+RnlOt5Nu5wGerUzmE40
	WmLbwzONHp96V2ulzGc/WySEk/vwXAJ75qbY2Q5+X8Ggn/0OOE8Wgp1cy/arrvSbt2GEc+GkSCeHY
	7uZ8Ix3rngwYabg5mh1+kq1E4DlmJgReRRuVruzVSvp8Na7tt102HWwP9hrxXFijhFr4ANZE1fHbQ
	+tzOaI37nff9fFQVy0tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO6eQ-0000Nu-D2; Mon, 13 Apr 2020 21:29:54 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO6eN-0000Mo-8E; Mon, 13 Apr 2020 21:29:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586813392; x=1618349392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pcOCtB5fv/YmPFx2fo9gEb+wBJbwEegEJHy3Q6vyD6w=;
 b=dU+D1zkhkb6oMSyTF5wm92/iUVR3uTc6S/yu+z2k+qYQPDoK8DPz0kzI
 OkXH1ZK+4IZ1+7FsEvPWaMnYA7/BOkYDx/YzayuWbYgkTtx6P7l8fzDIc
 JG2XOTHmfFtJx7RZI/WM9oJHCLJpBrakzGwm1YaMZ1h06gAA50NUmKyf2
 o1JUFxRRrIE+PPE2+gfKLMOcDyd1hXDDdKlY4pZ3LUbfToH53KlIihFsp
 eQJW4F+SwQKQ/qJgrpPeY9lJ8G7rp41shvN26ZOiAlwij6l3SeZpCCtve
 dtkAUto7KtILZaRFpb4Rcw6gpGufl2fGYeVW16XDyg2ADehSZnTmQTBMq Q==;
IronPort-SDR: VREDIvMN/39HlnnHATb58KfGbGqXWlztK6EPA1MPC/aggQH1bQ73mglzadOg2ZdUvnFLdNqlkZ
 tq62NziLEPtsqjAj0qvlKk99T80aFUVZHCgomxVAI2dyiGWKnrLTgHpFSdu1rRWfEDeFYNWnkN
 nO8+6PShu6k95dmaFQFHHejFMiVpfprxtctl0h44vQO1NczwUZGB1+vG/MfdYQ6nH8KCPhPsMZ
 Z/jSjtf6osPROJC5Zabunj8dsdeUzu5pvpIhoYBHYlH8uNwnA5Z0QzaRjLJkyvtzTqGg/k6Cov
 PrE=
X-IronPort-AV: E=Sophos;i="5.72,380,1580745600"; d="scan'208";a="136683324"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2020 05:29:30 +0800
IronPort-SDR: N5e9e5Nmko9G7WXZtJdbBtjDJdD1WOVSb4bldFJ902BY9q9dGhc6F9KNcCW48WizN3RsNKwlUX
 tFTXUyaj/vaCcxur930Vx+0Kqa7GMaGgxQUPE6E9hh9J+0COziAcsmJinR6TUrJftQgaB7cdP3
 SJErJw23r7IH9HPJOog6q47Q6ypKKK5Jy6OMpqQAjdK8pVxhJXX+D4JPV0p/001hkGB/TX+7vg
 gdScOqpcZKDoBZP10leUMqtFo7wa2kTgAKCajiFZqcNfjwGa0DbY+vhsma6pG27pcM3u6RP0sy
 8VfGqCbDr8HGscnH5ZR2151H
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 14:20:01 -0700
IronPort-SDR: r8UFEQO5M4pHviXz4+biD+GAWKWN6A1nxhe91z8v+Dtoc6TV5nlLfDai33OTJWF23MoqCPRTqN
 sml7yCm+YbC3KL9qJGHkS1x+KSwJJF5yMPRYcohpOaWSHRn5Z1KJpnJ15b5OzXTmnxT2FmpCtz
 2uTJ+WlEAzSE9eIF09bszfOxvtxA5GSDdNK8u/N4CAhG93tPMNGtjZpKJrGldf9s+QoloFc+lr
 2Z2XZHYk6WI8XZJyxyw1VVC4Py/0ANJUKzL50KeslFIQHMiu/JC7cHE+x79o9iRDZ9KLhNXrse
 0Oo=
WDCIronportException: Internal
Received: from 9dg4l72.ad.shared (HELO jedi-01.hgst.com) ([10.86.55.26])
 by uls-op-cesaip01.wdc.com with ESMTP; 13 Apr 2020 14:29:30 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v2 PATCH 1/5] efi: Move arm-stub to a common file
Date: Mon, 13 Apr 2020 14:29:03 -0700
Message-Id: <20200413212907.29244-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200413212907.29244-1-atish.patra@wdc.com>
References: <20200413212907.29244-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_142951_343399_125F0B72 
X-CRM114-Status: GOOD (  14.13  )
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
index 66a04f6f4775..165987aa5bcd 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1954,7 +1954,7 @@ config EFI
 	select UCS2_STRING
 	select EFI_PARAMS_FROM_FDT
 	select EFI_STUB
-	select EFI_ARMSTUB
+	select EFI_GENERIC_STUB
 	select EFI_RUNTIME_WRAPPERS
 	---help---
 	  This option provides support for runtime services provided
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..32d818c5ccda 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1785,7 +1785,7 @@ config EFI
 	select EFI_PARAMS_FROM_FDT
 	select EFI_RUNTIME_WRAPPERS
 	select EFI_STUB
-	select EFI_ARMSTUB
+	select EFI_GENERIC_STUB
 	default y
 	help
 	  This option provides support for runtime services provided
diff --git a/drivers/firmware/efi/Kconfig b/drivers/firmware/efi/Kconfig
index 613828d3f106..2a2b2b96a1dc 100644
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
index 094eabdecfe6..d590504541f6 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -23,7 +23,7 @@ cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
 
-cflags-$(CONFIG_EFI_ARMSTUB)	+= -I$(srctree)/scripts/dtc/libfdt
+cflags-$(CONFIG_EFI_GENERIC_STUB)	+= -I$(srctree)/scripts/dtc/libfdt
 
 KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
@@ -45,13 +45,13 @@ lib-y				:= efi-stub-helper.o gop.o secureboot.o tpm.o \
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
@@ -73,8 +73,8 @@ CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
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


