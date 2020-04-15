Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AE51AB217
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Apr 2020 21:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2uGqdcx6YILRVSAwfgDsYPFRNtG8sQ3iocQr323HHY=; b=KbWqPvUM5hAWUv
	TYodDj42FBYE6g+guGqpmb8FwV0joleGIu2fwn3MaapKNVuYnwfymLYhDxFzPHdjuM26bjiJ6INvZ
	WwjCiDNqbEaEUfxY7q5AV48fbuW9SdyiPj1l5NnyI29/mVUi14p2EkFOUZwF0qcYEUplC5BLytnUk
	JPGTjiXGZKwndW1lkIsyThdtXtcFeyMrH7qL0PT/6xFoMQyZALMQKjzYiaaDPdC6pVD1cbyl6Oh0b
	CnROxu5FW0r/ZLyfFmkjj05dXd3K1dIPAXwTzlq4VwNK0/X40e9GqATC3A5bcI1YXMrjMfhbEbOwQ
	VQttsdoSzgq9yfL5h8EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOo7T-0007Xg-OD; Wed, 15 Apr 2020 19:54:47 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOo7Q-0007WM-MX; Wed, 15 Apr 2020 19:54:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586980484; x=1618516484;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Djqlg8Cv1gfYTZdwhPlUmPWsMdIBfQD89t54SYqYujA=;
 b=BzmRUYqEYLf0iiCWLIJfg7euvXJPMPVC4QVXxp6Ry/IvFAiG2kn5cyAv
 9FBBpb3udxWNVxyBdbNq+UZqkV5dg10Q1wqPKIzxnDVEExojZSeqJr7hD
 ojx1XA0MOK9vC/L4KPgfBweFUbknEX1ZyO7oMoAp7f956MeNuZHjrmdi9
 EXuPPy3JHZ6j5zTij9/ll92b1LJ+uZ5hm3sffFuU9pF2+4i9H1zdXjstQ
 3LWzStAGnuVyWo7hnC/DsVfPirqnUpvsVJzMfXoo3JkTre7ucx1B91Yqr
 7nmaV+b6DhckjSzM/YseNkMKuiYKDTVHszUG5+82P6BGcjMF56HerGX2S A==;
IronPort-SDR: 3dC3dQPENfpaw4wsp9D8yKNGNeLflUUS2jIBOFBvapdTPI9EFN1VJ97RgZV+fXC0F88X2HGtZY
 J5foz9GTI4uOM+qq1G21SOerZDYjTOqIbiUeGSNEOEO/WJeVyeESvPXGFaBU4dc+OLfPOv67qd
 YAyqXLob6umsZ8yvPf15bz5OvTAWkeEiCG96APYmguEK1/laoiq5MNq7pGiuRWVBMZvpJEknfP
 jpTxHL7L9ksQc78liR/+X85cSmUWknXceea44I0M5EYDxuwjoGQ80Z497pLRgioX1t5Iueqvxb
 KJ8=
X-IronPort-AV: E=Sophos;i="5.72,388,1580745600"; d="scan'208";a="136848622"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 Apr 2020 03:54:40 +0800
IronPort-SDR: oAWTmSe3ER941Q3FBhJeUx7fdXXskrbOgaEBxFKA5XSB4H2TqzVGKj5WbOOqW/5f5f0DQ7xH2m
 lD/SUXu5X0+Pv6V6nHhnzwl/MYTNT70ih0SYWSSdwC0/rveCIROe2uYhb2TBdv7enbFgzZn5Ck
 6oOrg2lu75tcpGc91lDlmjcoMzXftexoJJzLrA7ADH5fyACpVlwWAwUdsmFX6IV7X6QylM5j2h
 yqgxBHhxQfBcccErOC5gkMwnEtfdZ8N2fcXudAyG2JLFLoWHcOK25UWNwwV3W9wZQ5O5bphf7t
 fKqYMJn0lgvXPHXTT0H2sVR4
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 12:45:08 -0700
IronPort-SDR: nSxPAvAlQJjzhHxPbWNQxGt8iiqTRn/CFCJkP1IW2hN5kyO5x8A0nRolmARO8ejzgeKfne+XP+
 YhJ4lrEiUZ37oaoV0GyXFhQYDJ03SuhpCh0NrV2VvwhAhUgoNRfuHaBpEE/l/USJX50yxiOqJy
 YTTxdcr6U/EaTqWNrfb+QPwLTSOhaX7knnoFdhHsKeiBV4tKN+5T0zEH4dBF0qLaMALMgKuIbZ
 7HNCWtfgqizgzP0T4PThCN2aQ7PrhPH4yMg4hhf5fq9zYKTHHBylCByOHlSkTlfb6aJV+U9QcM
 MVE=
WDCIronportException: Internal
Received: from 6hj08h2.ad.shared (HELO jedi-01.hgst.com) ([10.86.55.244])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 Apr 2020 12:54:40 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v3 PATCH 1/5] efi: Move arm-stub to a common file
Date: Wed, 15 Apr 2020 12:54:18 -0700
Message-Id: <20200415195422.19866-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200415195422.19866-1-atish.patra@wdc.com>
References: <20200415195422.19866-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_125444_834208_CF08146C 
X-CRM114-Status: GOOD (  13.74  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
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
index 2dbe4394f818..2b4e09bf987c 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -23,7 +23,7 @@ cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
 
-cflags-$(CONFIG_EFI_ARMSTUB)	+= -I$(srctree)/scripts/dtc/libfdt
+cflags-$(CONFIG_EFI_GENERIC_STUB)	+= -I$(srctree)/scripts/dtc/libfdt
 
 KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
@@ -46,13 +46,13 @@ lib-y				:= efi-stub-helper.o gop.o secureboot.o tpm.o \
 				   alignedmem.o relocate.o
 
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
@@ -74,8 +74,8 @@ CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
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


