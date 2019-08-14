Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BC78D7AF
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 18:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9p/MQTWTP7juMlSMErVg9TH0qLrccxaX3vePSU8noWQ=; b=rGn7/mizwxYR7eWSx/aPNgvtLo
	H3KKKeqxaPgvnwWgfsnuxKUVdKk3VBHjFdbJHFV3vddWIXdXs4MH+t2jSeOuQBAEvQqFWkJnwI/3H
	AsBIB4mMWZJNvQ9cZ8CHMca0tSGlMj8Lmi2fMkQuIrXzDQ6PM452s3hP9qUd7mGFzxlx8JeZW4cW9
	KWmDmuMbcSp6XOoH6lh7zVALTpuMcKA9deAm/qPPLAT+/300xBKHEa42sUOlY5Sbl4HTxBdrrKP3Q
	XSScNp3GGHZFrWkN0usCrgio5mdh0e2l6uMN2NOL0uHutShwoLc5p6xceq8TcRVRTOtG8PpSqlYJ9
	sLJaYu8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxvoZ-0002Hj-Cy; Wed, 14 Aug 2019 16:07:55 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxvoC-00025X-Ue; Wed, 14 Aug 2019 16:07:34 +0000
Received: from grover.flets-west.jp (softbank126125143222.bbtec.net
 [126.125.143.222]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x7EG6O96024737;
 Thu, 15 Aug 2019 01:06:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x7EG6O96024737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1565798787;
 bh=yk1HWpNfTmkZbWBqsqVdh6AULBtm9wKk1Bz6SrKDiZw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=u9634RMJrxKOcAOzQILC4PnPqiwSFwuSmwZLaERdwD0CHqgtGiMzuAPYLbhWTT8T+
 deh/fa9P9Exx+QEmRivbZdh8ux3rpxGT/oE1CxRLq+jFcHnqyCrPz3Tuoi90rN3xNb
 GKUuZ+TBGLuKwqsBKdai55hSNdci+rvsMloApwCGxZFj3D60RAlUFDCAU9k17gJl7D
 0E93hb+vURy1pJmAtKOfpaFWZsLqbaq5xRwo1ANP/JcuPmhZJqWyrVSZmUeKKCHUme
 vpdaYtWYgHtittcwf+V0Bqb5Q5Ipr1dbaGJke0lmWgj3XJEaj4g10lXhRKBlcXvTGl
 AZJzZX2MrQXwg==
X-Nifty-SrcIP: [126.125.143.222]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH 2/3] kbuild: rebuild modules when module linker scripts are
 updated
Date: Thu, 15 Aug 2019 01:06:22 +0900
Message-Id: <20190814160623.24802-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190814160623.24802-1-yamada.masahiro@socionext.com>
References: <20190814160623.24802-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_090733_209194_EA5D18F4 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Mackerras <paulus@samba.org>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-m68k@lists.linux-m68k.org, Michal Marek <michal.lkml@markovi.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, the timestamp of module linker scripts are not checked.
Add them to the dependency of modules so they are correctly rebuilt.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Documentation/kbuild/makefiles.rst | 5 +++++
 Makefile                           | 3 ++-
 arch/arm/Makefile                  | 2 +-
 arch/arm64/Makefile                | 2 +-
 arch/ia64/Makefile                 | 2 +-
 arch/m68k/Makefile                 | 2 +-
 arch/parisc/Makefile               | 2 +-
 arch/powerpc/Makefile              | 2 +-
 arch/riscv/Makefile                | 2 +-
 scripts/Makefile.modpost           | 5 +++--
 10 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/Documentation/kbuild/makefiles.rst b/Documentation/kbuild/makefiles.rst
index d3448d2c8017..36ba92e199d2 100644
--- a/Documentation/kbuild/makefiles.rst
+++ b/Documentation/kbuild/makefiles.rst
@@ -999,6 +999,11 @@ When kbuild executes, the following steps are followed (roughly):
 
 	The linker script with full path. Assigned by the top-level Makefile.
 
+    KBUILD_LDS_MODULE
+
+	The module linker script with full path. Assigned by the top-level
+	Makefile and additionally by the arch Makefile.
+
     KBUILD_VMLINUX_OBJS
 
 	All object files for vmlinux. They are linked to vmlinux in the same
diff --git a/Makefile b/Makefile
index 164ca615e2f6..af808837a1f2 100644
--- a/Makefile
+++ b/Makefile
@@ -485,7 +485,8 @@ KBUILD_AFLAGS_KERNEL :=
 KBUILD_CFLAGS_KERNEL :=
 KBUILD_AFLAGS_MODULE  := -DMODULE
 KBUILD_CFLAGS_MODULE  := -DMODULE
-KBUILD_LDFLAGS_MODULE := -T $(srctree)/scripts/module-common.lds
+KBUILD_LDFLAGS_MODULE :=
+export KBUILD_LDS_MODULE := $(srctree)/scripts/module-common.lds
 KBUILD_LDFLAGS :=
 GCC_PLUGINS_CFLAGS :=
 CLANG_FLAGS :=
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..fbe50eec8f34 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -17,7 +17,7 @@ KBUILD_LDFLAGS_MODULE	+= --be8
 endif
 
 ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
-KBUILD_LDFLAGS_MODULE	+= -T $(srctree)/arch/arm/kernel/module.lds
+KBUILD_LDS_MODULE	+= $(srctree)/arch/arm/kernel/module.lds
 endif
 
 GZFLAGS		:=-9
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 61de992bbea3..d4ed1869e536 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -101,7 +101,7 @@ endif
 CHECKFLAGS	+= -D__aarch64__
 
 ifeq ($(CONFIG_ARM64_MODULE_PLTS),y)
-KBUILD_LDFLAGS_MODULE	+= -T $(srctree)/arch/arm64/kernel/module.lds
+KBUILD_LDS_MODULE	+= $(srctree)/arch/arm64/kernel/module.lds
 endif
 
 # Default value
diff --git a/arch/ia64/Makefile b/arch/ia64/Makefile
index 171290f9f1de..5c3bcaee5980 100644
--- a/arch/ia64/Makefile
+++ b/arch/ia64/Makefile
@@ -20,7 +20,7 @@ CHECKFLAGS	+= -D__ia64=1 -D__ia64__=1 -D_LP64 -D__LP64__
 
 OBJCOPYFLAGS	:= --strip-all
 LDFLAGS_vmlinux	:= -static
-KBUILD_LDFLAGS_MODULE += -T $(srctree)/arch/ia64/module.lds
+KBUILD_LDS_MODULE += $(srctree)/arch/ia64/module.lds
 KBUILD_AFLAGS_KERNEL := -mconstant-gp
 EXTRA		:=
 
diff --git a/arch/m68k/Makefile b/arch/m68k/Makefile
index 482513b9af2c..5d9288384096 100644
--- a/arch/m68k/Makefile
+++ b/arch/m68k/Makefile
@@ -73,7 +73,7 @@ KBUILD_AFLAGS += -D__uClinux__
 endif
 
 KBUILD_LDFLAGS := -m m68kelf
-KBUILD_LDFLAGS_MODULE += -T $(srctree)/arch/m68k/kernel/module.lds
+KBUILD_LDS_MODULE += $(srctree)/arch/m68k/kernel/module.lds
 
 ifdef CONFIG_SUN3
 LDFLAGS_vmlinux = -N
diff --git a/arch/parisc/Makefile b/arch/parisc/Makefile
index 3b77d729057f..36b834f1c933 100644
--- a/arch/parisc/Makefile
+++ b/arch/parisc/Makefile
@@ -60,7 +60,7 @@ KBUILD_CFLAGS += -DCC_USING_PATCHABLE_FUNCTION_ENTRY=1 \
 		 -DFTRACE_PATCHABLE_FUNCTION_SIZE=$(NOP_COUNT)
 
 CC_FLAGS_FTRACE := -fpatchable-function-entry=$(NOP_COUNT),$(shell echo $$(($(NOP_COUNT)-1)))
-KBUILD_LDFLAGS_MODULE += -T $(srctree)/arch/parisc/kernel/module.lds
+KBUILD_LDS_MODULE += $(srctree)/arch/parisc/kernel/module.lds
 endif
 
 OBJCOPY_FLAGS =-O binary -R .note -R .comment -S
diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index c345b79414a9..b2227855de20 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -67,7 +67,7 @@ UTS_MACHINE := $(subst $(space),,$(machine-y))
 ifdef CONFIG_PPC32
 KBUILD_LDFLAGS_MODULE += arch/powerpc/lib/crtsavres.o
 else
-KBUILD_LDFLAGS_MODULE += -T $(srctree)/arch/powerpc/kernel/module.lds
+KBUILD_LDS_MODULE += $(srctree)/arch/powerpc/kernel/module.lds
 ifeq ($(call ld-ifversion, -ge, 225000000, y),y)
 # Have the linker provide sfpr if possible.
 # There is a corresponding test in arch/powerpc/lib/Makefile
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 7a117be8297c..426d989125a8 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -52,7 +52,7 @@ ifeq ($(CONFIG_CMODEL_MEDANY),y)
 	KBUILD_CFLAGS += -mcmodel=medany
 endif
 ifeq ($(CONFIG_MODULE_SECTIONS),y)
-	KBUILD_LDFLAGS_MODULE += -T $(srctree)/arch/riscv/kernel/module.lds
+	KBUILD_LDS_MODULE += $(srctree)/arch/riscv/kernel/module.lds
 endif
 
 KBUILD_CFLAGS_MODULE += $(call cc-option,-mno-relax)
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index bf15818f6947..905db30d6622 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -126,10 +126,11 @@ quiet_cmd_ld_ko_o = LD [M]  $@
       cmd_ld_ko_o =                                                     \
 	$(LD) -r $(KBUILD_LDFLAGS)                                      \
                  $(KBUILD_LDFLAGS_MODULE) $(LDFLAGS_MODULE)             \
-                 -o $@ $(real-prereqs) ;                                \
+                 $(addprefix -T , $(KBUILD_LDS_MODULE))                 \
+                 -o $@ $(filter %.o, $^);                               \
 	$(if $(ARCH_POSTLINK), $(MAKE) -f $(ARCH_POSTLINK) $@, true)
 
-$(modules): %.ko :%.o %.mod.o FORCE
+$(modules): %.ko :%.o %.mod.o $(KBUILD_LDS_MODULE) FORCE
 	+$(call if_changed,ld_ko_o)
 
 targets += $(modules)
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
