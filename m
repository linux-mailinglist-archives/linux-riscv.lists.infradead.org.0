Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0E54331E
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Jun 2019 09:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXEkbi+MwZZ4LXSfb2WPy8Fe9rB1sZv5BNAeHRrH2zQ=; b=c8vla+o07lfFa/
	JNP0IiwmQL7+XIdf6tKyX6a72pwlGBnU1/2ACAiyZBDyDEzR8HiXuLO+/LmDby8cf8L7W1hGiaFAs
	KCx+ol73+ep6H8hvispqd2LFTGhAFLtA4Ym1G3UXF7u4P/TC2qr0nVDMj5RC8XBSeubfvrRFVW1TK
	xHPCFjUE43nASMCerwCzDy4zY08Aye0qy9yYz+Cckd0rNmqY3184M2cR8z6nKfz+F/5kRhFGMyvE0
	yWBcqt9jfOA++1TbefKg5DnOYoMIE5RWBKQ995ynJEADHACmJBfUHZtVFfFieM5bWTycN+ydiEDwk
	7/G6u8j20R0ZnbxdYaHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJuC-0007Sr-EY; Thu, 13 Jun 2019 07:12:16 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJrO-0004ED-9A; Thu, 13 Jun 2019 07:09:23 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 05/17] binfmt_flat: replace flat_argvp_envp_on_stack with a
 Kconfig variable
Date: Thu, 13 Jun 2019 09:08:51 +0200
Message-Id: <20190613070903.17214-6-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613070903.17214-1-hch@lst.de>
References: <20190613070903.17214-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, Vladimir Murzin <vladimir.murzin@arm.com>,
 linux-c6x-dev@linux-c6x.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This will eventually allow us to kill the need for an <asm/flat.h> for
many cases.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>
Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
---
 arch/arm/Kconfig                   | 1 +
 arch/arm/include/asm/flat.h        | 2 --
 arch/c6x/include/asm/flat.h        | 1 -
 arch/h8300/Kconfig                 | 1 +
 arch/h8300/include/asm/flat.h      | 2 --
 arch/m68k/Kconfig                  | 1 +
 arch/m68k/include/asm/flat.h       | 1 -
 arch/microblaze/include/asm/flat.h | 2 --
 arch/sh/include/asm/flat.h         | 1 -
 arch/xtensa/include/asm/flat.h     | 1 -
 fs/Kconfig.binfmt                  | 3 +++
 fs/binfmt_flat.c                   | 5 +++--
 12 files changed, 9 insertions(+), 12 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8869742a85df..b1b48c0bde76 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -30,6 +30,7 @@ config ARM
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_CMPXCHG_LOCKREF
 	select ARCH_WANT_IPC_PARSE_VERSION
+	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
 	select BUILDTIME_EXTABLE_SORT if MMU
 	select CLONE_BACKWARDS
 	select CPU_PM if SUSPEND || CPU_IDLE
diff --git a/arch/arm/include/asm/flat.h b/arch/arm/include/asm/flat.h
index acf162111ee2..bbc27901446f 100644
--- a/arch/arm/include/asm/flat.h
+++ b/arch/arm/include/asm/flat.h
@@ -8,8 +8,6 @@
 
 #include <linux/uaccess.h>
 
-#define	flat_argvp_envp_on_stack()		1
-
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
 					u32 *addr, u32 *persistent)
 {
diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
index 353e4d06e8c0..2d57a9204d21 100644
--- a/arch/c6x/include/asm/flat.h
+++ b/arch/c6x/include/asm/flat.h
@@ -4,7 +4,6 @@
 
 #include <asm/unaligned.h>
 
-#define flat_argvp_envp_on_stack()			0
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
 					u32 *addr, u32 *persistent)
 {
diff --git a/arch/h8300/Kconfig b/arch/h8300/Kconfig
index d30e8727b02d..7457f190caaa 100644
--- a/arch/h8300/Kconfig
+++ b/arch/h8300/Kconfig
@@ -2,6 +2,7 @@
 config H8300
         def_bool y
 	select ARCH_32BIT_OFF_T
+	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
 	select BINFMT_FLAT_OLD_ALWAYS_RAM
 	select GENERIC_ATOMIC64
 	select HAVE_UID16
diff --git a/arch/h8300/include/asm/flat.h b/arch/h8300/include/asm/flat.h
index 14cc928d5478..4683146f0e9e 100644
--- a/arch/h8300/include/asm/flat.h
+++ b/arch/h8300/include/asm/flat.h
@@ -8,8 +8,6 @@
 
 #include <asm/unaligned.h>
 
-#define	flat_argvp_envp_on_stack()		1
-
 /*
  * on the H8 a couple of the relocations have an instruction in the
  * top byte.  As there can only be 24bits of address space,  we just
diff --git a/arch/m68k/Kconfig b/arch/m68k/Kconfig
index 218e037ef901..fd69ee5ad6ab 100644
--- a/arch/m68k/Kconfig
+++ b/arch/m68k/Kconfig
@@ -7,6 +7,7 @@ config M68K
 	select ARCH_MIGHT_HAVE_PC_PARPORT if ISA
 	select ARCH_NO_COHERENT_DMA_MMAP if !MMU
 	select ARCH_NO_PREEMPT if !COLDFIRE
+	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
 	select HAVE_IDE
 	select HAVE_AOUT if MMU
 	select HAVE_DEBUG_BUGVERBOSE
diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
index 7b1fb5c2809e..d7102fcd43eb 100644
--- a/arch/m68k/include/asm/flat.h
+++ b/arch/m68k/include/asm/flat.h
@@ -8,7 +8,6 @@
 
 #include <linux/uaccess.h>
 
-#define	flat_argvp_envp_on_stack()		1
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
 					u32 *addr, u32 *persistent)
 {
diff --git a/arch/microblaze/include/asm/flat.h b/arch/microblaze/include/asm/flat.h
index 1cd8d7f4cf12..9e3d8e01d294 100644
--- a/arch/microblaze/include/asm/flat.h
+++ b/arch/microblaze/include/asm/flat.h
@@ -13,8 +13,6 @@
 
 #include <asm/unaligned.h>
 
-#define	flat_argvp_envp_on_stack()	0
-
 /*
  * Microblaze works a little differently from other arches, because
  * of the MICROBLAZE_64 reloc type. Here, a 32 bit address is split
diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
index 015678d7b771..1002343dd84a 100644
--- a/arch/sh/include/asm/flat.h
+++ b/arch/sh/include/asm/flat.h
@@ -11,7 +11,6 @@
 
 #include <asm/unaligned.h>
 
-#define	flat_argvp_envp_on_stack()		0
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
 					u32 *addr, u32 *persistent)
 {
diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
index b215c1e66958..3d357371b28b 100644
--- a/arch/xtensa/include/asm/flat.h
+++ b/arch/xtensa/include/asm/flat.h
@@ -4,7 +4,6 @@
 
 #include <asm/unaligned.h>
 
-#define flat_argvp_envp_on_stack()			0
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
 					u32 *addr, u32 *persistent)
 {
diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
index 5658e12ad944..82f7d7f234f3 100644
--- a/fs/Kconfig.binfmt
+++ b/fs/Kconfig.binfmt
@@ -97,6 +97,9 @@ config BINFMT_FLAT
 	help
 	  Support uClinux FLAT format binaries.
 
+config BINFMT_FLAT_ARGVP_ENVP_ON_STACK
+	bool
+
 config BINFMT_FLAT_OLD_ALWAYS_RAM
 	bool
 
diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index 3e7f4a6cffa2..a15fdd5d95ed 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -124,14 +124,15 @@ static int create_flat_tables(struct linux_binprm *bprm, unsigned long arg_start
 
 	sp -= bprm->envc + 1;
 	sp -= bprm->argc + 1;
-	sp -= flat_argvp_envp_on_stack() ? 2 : 0;
+	if (IS_ENABLED(CONFIG_BINFMT_FLAT_ARGVP_ENVP_ON_STACK))
+		sp -= 2; /* argvp + envp */
 	sp -= 1;  /* &argc */
 
 	current->mm->start_stack = (unsigned long)sp & -FLAT_STACK_ALIGN;
 	sp = (unsigned long __user *)current->mm->start_stack;
 
 	__put_user(bprm->argc, sp++);
-	if (flat_argvp_envp_on_stack()) {
+	if (IS_ENABLED(CONFIG_BINFMT_FLAT_ARGVP_ENVP_ON_STACK)) {
 		unsigned long argv, envp;
 		argv = (unsigned long)(sp + 2);
 		envp = (unsigned long)(sp + 2 + bprm->argc + 1);
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
