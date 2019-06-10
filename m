Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1521B3BE7A
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Jun 2019 23:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvlqUYm5MQ4YuV4TOiV4qfNHHnC/JSg1vMizQMIcMK0=; b=j53cok5CGvc17h
	bjozoZzuhIJ/n8lInybqqQMkpeN6USzg5t0zf3NgxtzLBtTWIA17V1JNkSRQPaI/2nfrNRD2Hcj3r
	SoeeQqmAcPXmAfzInjbF81fM1vSihZCwAxbDiqshzXfdM3VTuXnmDZJqlCQLnVof9QtjL24DmcNDT
	ftp3lzRO53Lvjnm+bQe82YKGgr8W+sUol5xcrHM5jvNynME4Cfc4u2nBTbqrOAvYMNuNYOFk7K7B4
	9xKNGeprUA95OApfE9i0H97B9woVl8MTYuL9VhJfV/mJXk6vSReYvOZhUTlh/uBf6D3abkxOJASFO
	ylGpHZpS76f+DehCPx3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRlU-0003HD-0u; Mon, 10 Jun 2019 21:23:40 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haRiZ-0000Zd-Af; Mon, 10 Jun 2019 21:20:40 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 08/15] binfmt_flat: add endianess annotations
Date: Mon, 10 Jun 2019 23:20:08 +0200
Message-Id: <20190610212015.9157-9-hch@lst.de>
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

Most binfmt_flat on-disk fields are big endian.  Use the proper __be32
type where applicable.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/binfmt_flat.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index 6ae0f9af3fc9..6c1848dee724 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -421,7 +421,8 @@ static int load_flat_file(struct linux_binprm *bprm,
 	unsigned long textpos, datapos, realdatastart;
 	u32 text_len, data_len, bss_len, stack_len, full_data, flags;
 	unsigned long len, memp, memp_size, extra, rlim;
-	u32 __user *reloc, *rp;
+	__be32 __user *reloc;
+	u32 __user *rp;
 	struct inode *inode;
 	int i, rev, relocs;
 	loff_t fpos;
@@ -594,7 +595,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 			goto err;
 		}
 
-		reloc = (u32 __user *)
+		reloc = (__be32 __user *)
 			(datapos + (ntohl(hdr->reloc_start) - text_len));
 		memp = realdatastart;
 		memp_size = len;
@@ -619,7 +620,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 				MAX_SHARED_LIBS * sizeof(u32),
 				FLAT_DATA_ALIGN);
 
-		reloc = (u32 __user *)
+		reloc = (__be32 __user *)
 			(datapos + (ntohl(hdr->reloc_start) - text_len));
 		memp = textpos;
 		memp_size = len;
@@ -785,15 +786,16 @@ static int load_flat_file(struct linux_binprm *bprm,
 		u32 __maybe_unused persistent = 0;
 		for (i = 0; i < relocs; i++) {
 			u32 addr, relval;
+			__be32 tmp;
 
 			/*
 			 * Get the address of the pointer to be
 			 * relocated (of course, the address has to be
 			 * relocated first).
 			 */
-			if (get_user(relval, reloc + i))
+			if (get_user(tmp, reloc + i))
 				return -EFAULT;
-			relval = ntohl(relval);
+			relval = ntohl(tmp);
 			addr = flat_get_relocate_addr(relval);
 			rp = (u32 __user *)calc_reloc(addr, libinfo, id, 1);
 			if (rp == (u32 __user *)RELOC_FAILED) {
@@ -812,8 +814,13 @@ static int load_flat_file(struct linux_binprm *bprm,
 				 * Do the relocation.  PIC relocs in the data section are
 				 * already in target order
 				 */
-				if ((flags & FLAT_FLAG_GOTPIC) == 0)
-					addr = ntohl(addr);
+				if ((flags & FLAT_FLAG_GOTPIC) == 0) {
+					/*
+					 * Meh, the same value can have a different
+					 * byte order based on a flag..
+					 */
+					addr = ntohl((__force __be32)addr);
+				}
 				addr = calc_reloc(addr, libinfo, id, 0);
 				if (addr == RELOC_FAILED) {
 					ret = -ENOEXEC;
@@ -828,11 +835,10 @@ static int load_flat_file(struct linux_binprm *bprm,
 		}
 	} else {
 		for (i = 0; i < relocs; i++) {
-			u32 relval;
+			__be32 relval;
 			if (get_user(relval, reloc + i))
 				return -EFAULT;
-			relval = ntohl(relval);
-			old_reloc(relval);
+			old_reloc(ntohl(relval));
 		}
 	}
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
