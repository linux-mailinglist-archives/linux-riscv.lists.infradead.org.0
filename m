Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A512B7BE
	for <lists+linux-riscv@lfdr.de>; Mon, 27 May 2019 16:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X+xuFOJwKZv/9EMaxvPvPv3aE3Ho06RwwXSKPG2k6ec=; b=hEf6yezxAiU0Irp8rgoTZK69QU
	1KhVF5gOOsxZdTkFxzP6yaNavjdXa0/Qrp//L9ac9N2/yJTFflZ7Q4C3sCV3sj0zRGuvN8qDRhmgS
	RtYYwgp1ftnZT7nK59gpt/5NSRrLjQXIfWyfDCz3ylWrtha2FP4B3zMuqpi5kQNk3EcMxk6PP7q67
	DqyLCY6hkzR7OujmANedQuNvM+jSfwoMQRDa/gy9B0sbeE71ANNbKMUuO+IKii6+HOCnKLy8xTlZ+
	p2cBiSNce7JMV+lc2Doz18lhPXhCyeYbAwjJK5E5/vgp32sP7GWxJprhog/97faEoWm7HRxg+4qWy
	LVLN+7gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVGmm-0006Ep-RR; Mon, 27 May 2019 14:39:36 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVGmd-00067g-Ni; Mon, 27 May 2019 14:39:29 +0000
Received: from grover.flets-west.jp (softbank126125154139.bbtec.net
 [126.125.154.139]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id x4REc8hp015915;
 Mon, 27 May 2019 23:38:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com x4REc8hp015915
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1558967891;
 bh=aMC7wmc6MMrYj/SHWn59QiqWoFmT1b06tH2CVxBYQ/k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OKUBRFm8XZeO61bzi1Dt9OL9aFjL/GMFhjLgL9UsMdBmtaKiMZhsQ+ax4GKFt48Cn
 QXnq5+/DwPeKbyfSh+X5hpA4lMmO3AfHt3HO5+8MzEDoOJnnm1DgbJv2P4HY6KZOMB
 8uBa9R/Z6424lD+ZwCQdB/+QXNkW9F9pbLIrZIHedwIqSFoPsQQmTYbGVnBHOfeMtp
 1G87BxhCj+OMqnMfu6o5d3iVOARn4eDMu7DllObLccIp3d3LGqZ3EDl6yeVVkcm9p4
 WieBNMO7gyMrM4TyG5JnuaJWofywUCzfq+PQD9CH2lNwzCVA3NZjH1KsDoC5efuVGv
 NffcJi2LM4IdQ==
X-Nifty-SrcIP: [126.125.154.139]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH 4/5] kconfig: make arch/*/configs/defconfig the default of
 KBUILD_DEFCONFIG
Date: Mon, 27 May 2019 23:37:24 +0900
Message-Id: <20190527143725.12542-4-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527143725.12542-1-yamada.masahiro@socionext.com>
References: <20190527143725.12542-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_073927_987814_074414DC 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.74 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-s390@vger.kernel.org, Paul Walmsley <paul@pwsan.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Firoz Khan <firoz.khan@linaro.org>, Greentime Hu <green.hu@gmail.com>,
 linux-alpha@vger.kernel.org, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Guo Ren <guoren@kernel.org>, Matt Turner <mattst88@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Richard Henderson <rth@twiddle.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Until recently, if KBUILD_DEFCONFIG was not set by the arch Makefile,
the default path arch/*/defconfig was used.

The last users of the default are gone by the following commits:

- Commit f3e20ad67b4c ("s390: move arch/s390/defconfig to
  arch/s390/configs/defconfig")

- Commit 986a13769c4b ("alpha: move arch/alpha/defconfig to
  arch/alpha/configs/defconfig")

Let's set arch/*/configs/defconfig as a new default. This saves
KBUILD_DEFCONFIG for some architectures.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/alpha/Makefile      | 2 --
 arch/arm64/Makefile      | 2 --
 arch/csky/Makefile       | 1 -
 arch/nds32/Makefile      | 2 --
 arch/riscv/Makefile      | 2 --
 arch/s390/Makefile       | 2 --
 scripts/kconfig/Makefile | 4 ++++
 7 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/arch/alpha/Makefile b/arch/alpha/Makefile
index b3314e0dcb6f..12dee59b011c 100644
--- a/arch/alpha/Makefile
+++ b/arch/alpha/Makefile
@@ -8,8 +8,6 @@
 # Copyright (C) 1994 by Linus Torvalds
 #
 
-KBUILD_DEFCONFIG := defconfig
-
 NM := $(NM) -B
 
 LDFLAGS_vmlinux	:= -static -N #-relax
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index b025304bde46..970c41a30ed3 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -30,8 +30,6 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
-KBUILD_DEFCONFIG := defconfig
-
 # Check for binutils support for specific extensions
 lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
 
diff --git a/arch/csky/Makefile b/arch/csky/Makefile
index f9aab9157c4a..fb1bbbd91954 100644
--- a/arch/csky/Makefile
+++ b/arch/csky/Makefile
@@ -1,7 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 OBJCOPYFLAGS		:=-O binary
 GZFLAGS			:=-9
-KBUILD_DEFCONFIG	:= defconfig
 
 ifdef CONFIG_CPU_HAS_FPU
 FPUEXT = f
diff --git a/arch/nds32/Makefile b/arch/nds32/Makefile
index 14dab5ad88ef..ccdca7142020 100644
--- a/arch/nds32/Makefile
+++ b/arch/nds32/Makefile
@@ -2,8 +2,6 @@
 LDFLAGS_vmlinux	:= --no-undefined -X
 OBJCOPYFLAGS	:= -O binary -R .note -R .note.gnu.build-id -R .comment -S
 
-KBUILD_DEFCONFIG := defconfig
-
 ifdef CONFIG_FUNCTION_TRACER
 arch-y += -malways-save-lp -mno-relax
 endif
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 03e760267657..7a117be8297c 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -16,8 +16,6 @@ endif
 KBUILD_AFLAGS_MODULE += -fPIC
 KBUILD_CFLAGS_MODULE += -fPIC
 
-KBUILD_DEFCONFIG = defconfig
-
 export BITS
 ifeq ($(CONFIG_ARCH_RV64I),y)
 	BITS := 64
diff --git a/arch/s390/Makefile b/arch/s390/Makefile
index de8521fc9de5..df1d6a150f30 100644
--- a/arch/s390/Makefile
+++ b/arch/s390/Makefile
@@ -10,8 +10,6 @@
 # Copyright (C) 1994 by Linus Torvalds
 #
 
-KBUILD_DEFCONFIG := defconfig
-
 LD_BFD		:= elf64-s390
 KBUILD_LDFLAGS	:= -m elf64_s390
 KBUILD_AFLAGS_MODULE += -fPIC
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 059642bd6584..ab30fe724c43 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -12,6 +12,10 @@ else
 Kconfig := Kconfig
 endif
 
+ifndef KBUILD_DEFCONFIG
+KBUILD_DEFCONFIG := defconfig
+endif
+
 ifeq ($(quiet),silent_)
 silent := -s
 endif
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
