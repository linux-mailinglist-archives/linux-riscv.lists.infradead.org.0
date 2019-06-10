Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB203BE91
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Jun 2019 23:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcgqSBTtraRgGj4bBEaEVFV6+JCc7iVxVbgWInh3hU0=; b=Rcs1pt+qPt1fQf
	z8FVQH+Gvhj0i2Gn/2T9VFuJt3ni+tzbNpWGq+dN565qt+cUPexA47qDElxYeC4LW8zinVhuIMJtG
	DJvxQswzUw/lVAIL3KW0Ne5T5BhoRdCycORDhuroIS1K0hn5Oy7Tsv7Myn1DD1h4Gl82GaxLG0DY0
	EGQsc6vvA/qTk73MJvE+4UNriO9ZHjCbzSKIPOq4lDS7WMx3QUgJX8x+sE8NDqLg9vmWgcdMSSodR
	PLUrDPUvrjjl7OVr1585FpI6Kr4LLNE6XLfGhveuxZAQkkCCximzz4iRPJQCK7nHgWUsxpO/Vnuh7
	JEufBashc2PmfTIgNujQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRna-0006Pm-2Q; Mon, 10 Jun 2019 21:25:50 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haRip-0000p9-Vm; Mon, 10 Jun 2019 21:20:56 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 14/15] binfmt_flat: don't offset the data start
Date: Mon, 10 Jun 2019 23:20:14 +0200
Message-Id: <20190610212015.9157-15-hch@lst.de>
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

Ever since the initial commit of the binfmt_flat shared library
support back in the bitkeeper days we've offset the actual in-memory
.data start by one field per possible shared library, or 1 in case
shared library support isn't enabled.  I can't find anything in the
loader that actually makes use of it, nor was it present before
shared library support it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/binfmt_flat.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index 2c7f32d5435f..e1ccc9f14150 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -572,7 +572,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 			goto err;
 		}
 
-		len = data_len + extra + MAX_SHARED_LIBS * sizeof(unsigned long);
+		len = data_len + extra;
 		len = PAGE_ALIGN(len);
 		realdatastart = vm_mmap(NULL, 0, len,
 			PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE, 0);
@@ -586,9 +586,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 			vm_munmap(textpos, text_len);
 			goto err;
 		}
-		datapos = ALIGN(realdatastart +
-				MAX_SHARED_LIBS * sizeof(unsigned long),
-				FLAT_DATA_ALIGN);
+		datapos = ALIGN(realdatastart, FLAT_DATA_ALIGN);
 
 		pr_debug("Allocated data+bss+stack (%u bytes): %lx\n",
 			 data_len + bss_len + stack_len, datapos);
@@ -618,7 +616,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 		memp_size = len;
 	} else {
 
-		len = text_len + data_len + extra + MAX_SHARED_LIBS * sizeof(u32);
+		len = text_len + data_len + extra;
 		len = PAGE_ALIGN(len);
 		textpos = vm_mmap(NULL, 0, len,
 			PROT_READ | PROT_EXEC | PROT_WRITE, MAP_PRIVATE, 0);
@@ -633,9 +631,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 		}
 
 		realdatastart = textpos + ntohl(hdr->data_start);
-		datapos = ALIGN(realdatastart +
-				MAX_SHARED_LIBS * sizeof(u32),
-				FLAT_DATA_ALIGN);
+		datapos = ALIGN(realdatastart, FLAT_DATA_ALIGN);
 
 		reloc = (__be32 __user *)
 			(datapos + (ntohl(hdr->reloc_start) - text_len));
@@ -652,8 +648,9 @@ static int load_flat_file(struct linux_binprm *bprm,
 					 (text_len + full_data
 						  - sizeof(struct flat_hdr)),
 					 0);
-			memmove((void *) datapos, (void *) realdatastart,
-					full_data);
+			if (datapos != realdatastart)
+				memmove((void *)datapos, (void *)realdatastart,
+						full_data);
 #else
 			/*
 			 * This is used on MMU systems mainly for testing.
@@ -709,8 +706,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 		if (IS_ERR_VALUE(result)) {
 			ret = result;
 			pr_err("Unable to read code+data+bss, errno %d\n", ret);
-			vm_munmap(textpos, text_len + data_len + extra +
-				MAX_SHARED_LIBS * sizeof(u32));
+			vm_munmap(textpos, text_len + data_len + extra);
 			goto err;
 		}
 	}
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
