Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EAB43320
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Jun 2019 09:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alFnangYOJ0omsTUymw0gN3hp5xh3QpPrruGWgCH9HY=; b=mVIJeLyxYS5q39
	MQiflZtjQWzKGAgAX5420DK+dAr+QCLt0dSouP6uQTaCVxLc03oMCYVeV0c/1kOrUx3OiBu4+EEH/
	DT54Vqj/ZoiKE4MaJjB4bKSB7ALjyJih0XTT4VzyRQElUClfDOj9GMqpEvjNL3uxQnjWFfsSsxV/p
	Bid3M7i+MCDcg56xxZqOZTn8HobxLfoOP1Wkjh5mQ4lehM8a7UaT4l916VjAJVQAYelj316H4uw5z
	ESLUWYCEVpkM3GYUCJ8DnlX8z33CYCSwbsj5ofUvNB2OtzDRV3p2wp9FZMrdTfr/h+tTwwr5TyhGT
	+pFAHvrVa5MgWu2USTrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJuY-0007lM-LW; Thu, 13 Jun 2019 07:12:38 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJrR-0004Fd-I3; Thu, 13 Jun 2019 07:09:26 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 06/17] binfmt_flat: remove the uapi <linux/flat.h> header
Date: Thu, 13 Jun 2019 09:08:52 +0200
Message-Id: <20190613070903.17214-7-hch@lst.de>
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

The split between the two flat.h files is completely arbitrary, and the
uapi version even contains CONFIG_ ifdefs that can't work in userspace.
The only userspace program known to use the header is elf2flt, and it
ships with its own version of the combined header.

Use the chance to move the <asm/flat.h> inclusion out of this file, as it
is in no way needed for the format defintion, but just for the binfmt
implementation.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>
Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
---
 fs/binfmt_flat.c          |  1 +
 include/linux/flat.h      | 45 ++++++++++++++++++++++++++---
 include/uapi/linux/flat.h | 59 ---------------------------------------
 3 files changed, 42 insertions(+), 63 deletions(-)
 delete mode 100644 include/uapi/linux/flat.h

diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index a15fdd5d95ed..b63c5e63ae3f 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -42,6 +42,7 @@
 #include <asm/unaligned.h>
 #include <asm/cacheflush.h>
 #include <asm/page.h>
+#include <asm/flat.h>
 
 #ifndef flat_get_relocate_addr
 #define flat_get_relocate_addr(rel)	(rel)
diff --git a/include/linux/flat.h b/include/linux/flat.h
index 569b67d64d5c..21d901ba191b 100644
--- a/include/linux/flat.h
+++ b/include/linux/flat.h
@@ -10,8 +10,47 @@
 #ifndef _LINUX_FLAT_H
 #define _LINUX_FLAT_H
 
-#include <uapi/linux/flat.h>
-#include <asm/flat.h>
+#define	FLAT_VERSION			0x00000004L
+
+#ifdef CONFIG_BINFMT_SHARED_FLAT
+#define	MAX_SHARED_LIBS			(4)
+#else
+#define	MAX_SHARED_LIBS			(1)
+#endif
+
+/*
+ * To make everything easier to port and manage cross platform
+ * development,  all fields are in network byte order.
+ */
+
+struct flat_hdr {
+	char magic[4];
+	unsigned long rev;          /* version (as above) */
+	unsigned long entry;        /* Offset of first executable instruction
+	                               with text segment from beginning of file */
+	unsigned long data_start;   /* Offset of data segment from beginning of
+	                               file */
+	unsigned long data_end;     /* Offset of end of data segment
+	                               from beginning of file */
+	unsigned long bss_end;      /* Offset of end of bss segment from beginning
+	                               of file */
+
+	/* (It is assumed that data_end through bss_end forms the bss segment.) */
+
+	unsigned long stack_size;   /* Size of stack, in bytes */
+	unsigned long reloc_start;  /* Offset of relocation records from
+	                               beginning of file */
+	unsigned long reloc_count;  /* Number of relocation records */
+	unsigned long flags;
+	unsigned long build_date;   /* When the program/library was built */
+	unsigned long filler[5];    /* Reservered, set to zero */
+};
+
+#define FLAT_FLAG_RAM    0x0001 /* load program entirely into RAM */
+#define FLAT_FLAG_GOTPIC 0x0002 /* program is PIC with GOT */
+#define FLAT_FLAG_GZIP   0x0004 /* all but the header is compressed */
+#define FLAT_FLAG_GZDATA 0x0008 /* only data/relocs are compressed (for XIP) */
+#define FLAT_FLAG_KTRACE 0x0010 /* output useful kernel trace for debugging */
 
 /*
  * While it would be nice to keep this header clean,  users of older
@@ -22,8 +61,6 @@
  *        with the format above,  except to fix bugs with old format support.
  */
 
-#include <asm/byteorder.h>
-
 #define	OLD_FLAT_VERSION			0x00000002L
 #define OLD_FLAT_RELOC_TYPE_TEXT	0
 #define OLD_FLAT_RELOC_TYPE_DATA	1
diff --git a/include/uapi/linux/flat.h b/include/uapi/linux/flat.h
deleted file mode 100644
index 27e595e44fb7..000000000000
--- a/include/uapi/linux/flat.h
+++ /dev/null
@@ -1,59 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
-/*
- * Copyright (C) 2002-2003  David McCullough <davidm@snapgear.com>
- * Copyright (C) 1998       Kenneth Albanowski <kjahds@kjahds.com>
- *                          The Silver Hammer Group, Ltd.
- *
- * This file provides the definitions and structures needed to
- * support uClinux flat-format executables.
- */
-
-#ifndef _UAPI_LINUX_FLAT_H
-#define _UAPI_LINUX_FLAT_H
-
-
-#define	FLAT_VERSION			0x00000004L
-
-#ifdef CONFIG_BINFMT_SHARED_FLAT
-#define	MAX_SHARED_LIBS			(4)
-#else
-#define	MAX_SHARED_LIBS			(1)
-#endif
-
-/*
- * To make everything easier to port and manage cross platform
- * development,  all fields are in network byte order.
- */
-
-struct flat_hdr {
-	char magic[4];
-	unsigned long rev;          /* version (as above) */
-	unsigned long entry;        /* Offset of first executable instruction
-	                               with text segment from beginning of file */
-	unsigned long data_start;   /* Offset of data segment from beginning of
-	                               file */
-	unsigned long data_end;     /* Offset of end of data segment
-	                               from beginning of file */
-	unsigned long bss_end;      /* Offset of end of bss segment from beginning
-	                               of file */
-
-	/* (It is assumed that data_end through bss_end forms the bss segment.) */
-
-	unsigned long stack_size;   /* Size of stack, in bytes */
-	unsigned long reloc_start;  /* Offset of relocation records from
-	                               beginning of file */
-	unsigned long reloc_count;  /* Number of relocation records */
-	unsigned long flags;       
-	unsigned long build_date;   /* When the program/library was built */
-	unsigned long filler[5];    /* Reservered, set to zero */
-};
-
-#define FLAT_FLAG_RAM    0x0001 /* load program entirely into RAM */
-#define FLAT_FLAG_GOTPIC 0x0002 /* program is PIC with GOT */
-#define FLAT_FLAG_GZIP   0x0004 /* all but the header is compressed */
-#define FLAT_FLAG_GZDATA 0x0008 /* only data/relocs are compressed (for XIP) */
-#define FLAT_FLAG_KTRACE 0x0010 /* output useful kernel trace for debugging */
-
-
-
-#endif /* _UAPI_LINUX_FLAT_H */
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
