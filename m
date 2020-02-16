Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0FA160497
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Feb 2020 16:46:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=os9TnsjNHpEscmQ/pIjImR92ghmPlhtFserBXlIXFJQ=; b=FvHXjjx6nfUTFUyZgHsSu+2USu
	tzWU1l4cz/nMlUEFczYf44UgHrIZeCVU882Sj33YMoJvU0M2jS1o1yl73FMyCMYOTXzo59G9ee8Zl
	5FYtA+Wo43PfQaTGH5uCotPw9ODSiWhgx0mhtlApyvr2M/G5noh+pjOK1Vh2xQcOIkBoouH9RfKjd
	Rro317+IB63LSPzCTnjC4QVpHxM4a6s4Lvdh7ORa3Rl1H7kXHMjPvuDA6I5iJ5++Tg44YXBT0mpkT
	A2TOdhiHP+fQZ3Xlb6bDRjDHEFt9O01bKNiABQlBlg7AuIIb+iD2/IVn9E3vnvq2/Uvb87YAsajA4
	jDJqBXBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3M7v-0000uB-HZ; Sun, 16 Feb 2020 15:46:35 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3M7q-0000th-2j; Sun, 16 Feb 2020 15:46:32 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 01GFj6eR026453;
 Mon, 17 Feb 2020 00:45:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 01GFj6eR026453
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1581867908;
 bh=os9TnsjNHpEscmQ/pIjImR92ghmPlhtFserBXlIXFJQ=;
 h=From:To:Cc:Subject:Date:From;
 b=yt2PJNXS2jXuA2jslkc3CMA95DynuZt62vxxsh0mm0pLwhD+Cle/RxDx0WvakAUns
 3L03ZOArSyhVFVY3pW5RYd1tl6wmGrzrkdGkU26yAC/9qdZrJNtrPg6mm+O9UWqC+A
 0UBZkbRAbVRMZU5g7rHIMxDaN/i5IM5++7O+AGOfn2N90lb2r+uATEV+HSK199wIjG
 oCaNRj3MbevSo/S5QUwfpyUV3wFEzDraNeNs8rvAs73pa57MbGm7YTRfdtfbEbNyYn
 Mfb35c7ytnmcckc+WiZ42aa668ZHiOAniV9v/3sUPYhYjoQ90eOEnmlb+zPq+BwXwq
 JuBx/z5uSY91g==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH] kbuild: use KBUILD_DEFCONFIG as the fallback for
 DEFCONFIG_LIST
Date: Mon, 17 Feb 2020 00:45:02 +0900
Message-Id: <20200216154502.26478-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_074630_466163_D5FD4189 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 Guo Ren <guoren@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Richard Weinberger <richard@nod.at>, Masahiro Yamada <masahiroy@kernel.org>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, Borislav Petkov <bp@alien8.de>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Nick Hu <nickhu@andestech.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Most of the Kconfig commands (except defconfig and all*config) read the
.config file as a base set of CONFIG options.

When it does not exist, the files in DEFCONFIG_LIST are searched in this
order and loaded if found.

I do not see much sense in the last two entries in DEFCONFIG_LIST.

[1] ARCH_DEFCONFIG

The entry for DEFCONFIG_LIST is guarded by 'depends on !UML'. So, the
ARCH_DEFCONFIG definition in arch/x86/um/Kconfig is meaningless.

arch/{sh,sparc,x86}/Kconfig define ARCH_DEFCONFIG depending on 32 or 64
bit variant symbols. This is a little bit strange; ARCH_DEFCONFIG should
be a fixed string because the base config file is loaded before the symbol
evaluation stage.

Using KBUILD_DEFCONFIG is saner because it is fixed before Kconfig is
invoked. Fortunately, arch/{sh,sparc,x86}/Makefile define it in the
same way, and it works as expected. Hence, replace ARCH_DEFCONFIG with
"arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)".

[2] arch/$(ARCH)/defconfig

This file path is no longer valid. The defconfig files are always located
in the arch configs/ directories.

  $ find arch -name defconfig | sort
  arch/alpha/configs/defconfig
  arch/arm64/configs/defconfig
  arch/csky/configs/defconfig
  arch/nds32/configs/defconfig
  arch/riscv/configs/defconfig
  arch/s390/configs/defconfig
  arch/unicore32/configs/defconfig

The path arch/*/configs/defconfig is already covered by
"arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)". So, this file path is
not necessary.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/sh/Kconfig     | 5 -----
 arch/sparc/Kconfig  | 5 -----
 arch/x86/Kconfig    | 5 -----
 arch/x86/um/Kconfig | 5 -----
 init/Kconfig        | 3 +--
 5 files changed, 1 insertion(+), 22 deletions(-)

diff --git a/arch/sh/Kconfig b/arch/sh/Kconfig
index 9ece111b0254..b4f0e37b83eb 100644
--- a/arch/sh/Kconfig
+++ b/arch/sh/Kconfig
@@ -87,11 +87,6 @@ config SUPERH64
 	select HAVE_EXIT_THREAD
 	select KALLSYMS
 
-config ARCH_DEFCONFIG
-	string
-	default "arch/sh/configs/shx3_defconfig" if SUPERH32
-	default "arch/sh/configs/cayman_defconfig" if SUPERH64
-
 config GENERIC_BUG
 	def_bool y
 	depends on BUG && SUPERH32
diff --git a/arch/sparc/Kconfig b/arch/sparc/Kconfig
index c1dd6dd642f4..0de15380d1fc 100644
--- a/arch/sparc/Kconfig
+++ b/arch/sparc/Kconfig
@@ -95,11 +95,6 @@ config SPARC64
 	select PCI_DOMAINS if PCI
 	select ARCH_HAS_GIGANTIC_PAGE
 
-config ARCH_DEFCONFIG
-	string
-	default "arch/sparc/configs/sparc32_defconfig" if SPARC32
-	default "arch/sparc/configs/sparc64_defconfig" if SPARC64
-
 config ARCH_PROC_KCORE_TEXT
 	def_bool y
 
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index beea77046f9b..98935f4387f9 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -240,11 +240,6 @@ config OUTPUT_FORMAT
 	default "elf32-i386" if X86_32
 	default "elf64-x86-64" if X86_64
 
-config ARCH_DEFCONFIG
-	string
-	default "arch/x86/configs/i386_defconfig" if X86_32
-	default "arch/x86/configs/x86_64_defconfig" if X86_64
-
 config LOCKDEP_SUPPORT
 	def_bool y
 
diff --git a/arch/x86/um/Kconfig b/arch/x86/um/Kconfig
index a8985e1f7432..95d26a69088b 100644
--- a/arch/x86/um/Kconfig
+++ b/arch/x86/um/Kconfig
@@ -27,11 +27,6 @@ config X86_64
 	def_bool 64BIT
 	select MODULES_USE_ELF_RELA
 
-config ARCH_DEFCONFIG
-	string
-	default "arch/um/configs/i386_defconfig" if X86_32
-	default "arch/um/configs/x86_64_defconfig" if X86_64
-
 config 3_LEVEL_PGTABLES
 	bool "Three-level pagetables" if !64BIT
 	default 64BIT
diff --git a/init/Kconfig b/init/Kconfig
index 452bc1835cd4..6ccdb168dee5 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -6,8 +6,7 @@ config DEFCONFIG_LIST
 	default "/lib/modules/$(shell,uname -r)/.config"
 	default "/etc/kernel-config"
 	default "/boot/config-$(shell,uname -r)"
-	default ARCH_DEFCONFIG
-	default "arch/$(ARCH)/defconfig"
+	default "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)"
 
 config CC_IS_GCC
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q gcc)
-- 
2.17.1


