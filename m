Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224383BE5F
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Jun 2019 23:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HXf4et7ah+rfL49DEPJFTiafjFHbrnGFJa5nzrPH1U=; b=lIioPW/qumZZst
	r4op2nA0jeOI1wFAPkPTcqdBFQTexJoPfYdbgJ3hga3ErK+QJEMqt1059xm3b/KiUF8QHfB6Ox8VO
	JnyNDqo3j7Xp61DfvhheMa9LcQBAdm1mGn/FcnzZHHKVqvrhl3qZoKto6QTueYOVyepcIHVO6pA5h
	jjNorqjHWPRFO4aG3BFFcGFl1Q7+9Zxy7rp277UqmRytxuZOyOI4eLKpBlaBDPJSCIZ/YymH6l7dA
	PBeqY9Qy+rPJ9rQ/KdvFlqXQWkcbU7bH2OxZgjIX/mm6OVbmovIYhp0p3JNHJ31/P34SImt2GZW5X
	553rhbjWf3nxCxeEtIMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRj2-0000xH-IN; Mon, 10 Jun 2019 21:21:08 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haRiG-0000Jd-GY; Mon, 10 Jun 2019 21:20:20 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 01/15] binfmt_flat: remove flat_reloc_valid
Date: Mon, 10 Jun 2019 23:20:01 +0200
Message-Id: <20190610212015.9157-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610212015.9157-1-hch@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
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
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This helper is the same for all architectures, open code it in the only
caller.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/include/asm/flat.h        | 1 -
 arch/c6x/include/asm/flat.h        | 1 -
 arch/h8300/include/asm/flat.h      | 1 -
 arch/m68k/include/asm/flat.h       | 1 -
 arch/microblaze/include/asm/flat.h | 1 -
 arch/sh/include/asm/flat.h         | 1 -
 arch/xtensa/include/asm/flat.h     | 1 -
 fs/binfmt_flat.c                   | 2 +-
 8 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm/include/asm/flat.h b/arch/arm/include/asm/flat.h
index f0c75ddeea23..10cce9ecf151 100644
--- a/arch/arm/include/asm/flat.h
+++ b/arch/arm/include/asm/flat.h
@@ -10,7 +10,6 @@
 
 #define	flat_argvp_envp_on_stack()		1
 #define	flat_old_ram_flag(flags)		(flags)
-#define	flat_reloc_valid(reloc, size)		((reloc) <= (size))
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
 					u32 *addr, u32 *persistent)
diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
index 76fd0bb962a3..ecc6aea6606c 100644
--- a/arch/c6x/include/asm/flat.h
+++ b/arch/c6x/include/asm/flat.h
@@ -6,7 +6,6 @@
 
 #define flat_argvp_envp_on_stack()			0
 #define flat_old_ram_flag(flags)			(flags)
-#define flat_reloc_valid(reloc, size)			((reloc) <= (size))
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
 					u32 *addr, u32 *persistent)
 {
diff --git a/arch/h8300/include/asm/flat.h b/arch/h8300/include/asm/flat.h
index f4cdfcbdd2ba..dcc7775115dd 100644
--- a/arch/h8300/include/asm/flat.h
+++ b/arch/h8300/include/asm/flat.h
@@ -10,7 +10,6 @@
 
 #define	flat_argvp_envp_on_stack()		1
 #define	flat_old_ram_flag(flags)		1
-#define	flat_reloc_valid(reloc, size)		((reloc) <= (size))
 #define	flat_set_persistent(relval, p)		0
 
 /*
diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
index 4f1d1e373420..a631caf5e18f 100644
--- a/arch/m68k/include/asm/flat.h
+++ b/arch/m68k/include/asm/flat.h
@@ -10,7 +10,6 @@
 
 #define	flat_argvp_envp_on_stack()		1
 #define	flat_old_ram_flag(flags)		(flags)
-#define	flat_reloc_valid(reloc, size)		((reloc) <= (size))
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
 					u32 *addr, u32 *persistent)
 {
diff --git a/arch/microblaze/include/asm/flat.h b/arch/microblaze/include/asm/flat.h
index 3d2747d4c967..34be5ed011be 100644
--- a/arch/microblaze/include/asm/flat.h
+++ b/arch/microblaze/include/asm/flat.h
@@ -15,7 +15,6 @@
 
 #define	flat_argvp_envp_on_stack()	0
 #define	flat_old_ram_flag(flags)	(flags)
-#define	flat_reloc_valid(reloc, size)	((reloc) <= (size))
 #define	flat_set_persistent(relval, p)		0
 
 /*
diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
index 843d458b8329..8f2929b32f2e 100644
--- a/arch/sh/include/asm/flat.h
+++ b/arch/sh/include/asm/flat.h
@@ -13,7 +13,6 @@
 
 #define	flat_argvp_envp_on_stack()		0
 #define	flat_old_ram_flag(flags)		(flags)
-#define	flat_reloc_valid(reloc, size)		((reloc) <= (size))
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
 					u32 *addr, u32 *persistent)
 {
diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
index b8532d7877b3..6ee5a35eb0ec 100644
--- a/arch/xtensa/include/asm/flat.h
+++ b/arch/xtensa/include/asm/flat.h
@@ -6,7 +6,6 @@
 
 #define flat_argvp_envp_on_stack()			0
 #define flat_old_ram_flag(flags)			(flags)
-#define flat_reloc_valid(reloc, size)			((reloc) <= (size))
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
 					u32 *addr, u32 *persistent)
 {
diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index 82a48e830018..afddea583999 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -345,7 +345,7 @@ calc_reloc(unsigned long r, struct lib_info *p, int curid, int internalp)
 	start_code = p->lib_list[id].start_code;
 	text_len = p->lib_list[id].text_len;
 
-	if (!flat_reloc_valid(r, start_brk - start_data + text_len)) {
+	if (r > start_brk - start_data + text_len) {
 		pr_err("reloc outside program 0x%lx (0 - 0x%lx/0x%lx)",
 		       r, start_brk-start_data+text_len, text_len);
 		goto failed;
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
