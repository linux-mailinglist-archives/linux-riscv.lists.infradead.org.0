Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0D44332D
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Jun 2019 09:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqbjrTG1wiQ9fzjMBkMCpuqTelEfO5It+Ue3v40IMHY=; b=SVNUru5EdP5DPW
	dDTDp+Du2pzTnyf9KlKclRZ631X8FnYneneG9lEfMOYy0j420PbXOs/xJmvOVqnfA0agwu4+kUZD8
	GQyi1pRDzKWGrz7v+88g6vzBc7chv7bPv1iVx1b1phqNLbBRT4JcOxCGoP+uonS4+v1aaLgZKkIPB
	wJBu8Y3VaW5aBs/+aBJdma37B2rlQD4bJ/K5Co44y3auIoB35h7HNMxAqmMSIXf2wVOucXEg8lzBz
	i4X64dN7vss8IrKr4NqBQhrYzmqlJ79X0V555DGAlD5hGPDrucZ7TPNRDtSdWcfaND+fgyzbXnHrb
	o3BUN4iiJNpkLgYJP9yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJwj-0001JK-Fi; Thu, 13 Jun 2019 07:14:53 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJrm-0004PI-4d; Thu, 13 Jun 2019 07:09:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 12/17] binfmt_flat: make support for old format binaries
 optional
Date: Thu, 13 Jun 2019 09:08:58 +0200
Message-Id: <20190613070903.17214-13-hch@lst.de>
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
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

No need to carry the extra code around, given that systems using flat
binaries are generally very resource constrained.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/Kconfig.binfmt |  7 +++++++
 fs/binfmt_flat.c  | 30 ++++++++++++++++++++++--------
 2 files changed, 29 insertions(+), 8 deletions(-)

diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
index 286b425b30b9..62dc4f577ba1 100644
--- a/fs/Kconfig.binfmt
+++ b/fs/Kconfig.binfmt
@@ -106,6 +106,13 @@ config BINFMT_FLAT_ARGVP_ENVP_ON_STACK
 config BINFMT_FLAT_OLD_ALWAYS_RAM
 	bool
 
+config BINFMT_FLAT_OLD
+	bool "Enable support for very old legacy flat binaries"
+	depends on BINFMT_FLAT
+	help
+	  Support decade old uClinux FLAT format binaries.  Unless you know
+	  you have some of those say N here.
+
 config BINFMT_ZFLAT
 	bool "Enable ZFLAT support"
 	depends on BINFMT_FLAT
diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index 404a0bedc85b..1e88f4e62e65 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -374,6 +374,7 @@ calc_reloc(unsigned long r, struct lib_info *p, int curid, int internalp)
 
 /****************************************************************************/
 
+#ifdef CONFIG_BINFMT_FLAT_OLD
 static void old_reloc(unsigned long rl)
 {
 	static const char *segment[] = { "TEXT", "DATA", "BSS", "*UNKNOWN*" };
@@ -411,6 +412,7 @@ static void old_reloc(unsigned long rl)
 
 	pr_debug("Relocation became %lx\n", val);
 }
+#endif /* CONFIG_BINFMT_FLAT_OLD */
 
 /****************************************************************************/
 
@@ -461,6 +463,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 	if (flags & FLAT_FLAG_KTRACE)
 		pr_info("Loading file: %s\n", bprm->filename);
 
+#ifdef CONFIG_BINFMT_FLAT_OLD
 	if (rev != FLAT_VERSION && rev != OLD_FLAT_VERSION) {
 		pr_err("bad flat file version 0x%x (supported 0x%lx and 0x%lx)\n",
 		       rev, FLAT_VERSION, OLD_FLAT_VERSION);
@@ -476,6 +479,23 @@ static int load_flat_file(struct linux_binprm *bprm,
 		goto err;
 	}
 
+	/*
+	 * fix up the flags for the older format,  there were all kinds
+	 * of endian hacks,  this only works for the simple cases
+	 */
+	if (rev == OLD_FLAT_VERSION &&
+	   (flags || IS_ENABLED(CONFIG_BINFMT_FLAT_OLD_ALWAYS_RAM)))
+		flags = FLAT_FLAG_RAM;
+
+#else /* CONFIG_BINFMT_FLAT_OLD */
+	if (rev != FLAT_VERSION) {
+		pr_err("bad flat file version 0x%x (supported 0x%lx)\n",
+		       rev, FLAT_VERSION);
+		ret = -ENOEXEC;
+		goto err;
+	}
+#endif /* !CONFIG_BINFMT_FLAT_OLD */
+
 	/*
 	 * Make sure the header params are sane.
 	 * 28 bits (256 MB) is way more than reasonable in this case.
@@ -487,14 +507,6 @@ static int load_flat_file(struct linux_binprm *bprm,
 		goto err;
 	}
 
-	/*
-	 * fix up the flags for the older format,  there were all kinds
-	 * of endian hacks,  this only works for the simple cases
-	 */
-	if (rev == OLD_FLAT_VERSION &&
-	   (flags || IS_ENABLED(CONFIG_BINFMT_FLAT_OLD_ALWAYS_RAM)))
-		flags = FLAT_FLAG_RAM;
-
 #ifndef CONFIG_BINFMT_ZFLAT
 	if (flags & (FLAT_FLAG_GZIP|FLAT_FLAG_GZDATA)) {
 		pr_err("Support for ZFLAT executables is not enabled.\n");
@@ -833,6 +845,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 					goto err;
 			}
 		}
+#ifdef CONFIG_BINFMT_FLAT_OLD
 	} else {
 		for (i = 0; i < relocs; i++) {
 			__be32 relval;
@@ -840,6 +853,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 				return -EFAULT;
 			old_reloc(ntohl(relval));
 		}
+#endif /* CONFIG_BINFMT_FLAT_OLD */
 	}
 
 	flush_icache_range(start_code, end_code);
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
