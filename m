Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633353BF42
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 00:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQ4pTM6Ujk9CE4ZQrzGUfNt17wwoQQS0vIf48PgFTXM=; b=KgU0+QKQPUDShB
	/X7w1Z+gQCozOhpdj8XyvtrS3m35kKGgVe/uviBB3HmKCuE3tynPP/gNAQO/sCZx+0uSLNjyDuWDi
	VSx0FQbJ4RrpFDERp+Ywx8c/zty2QKukX3QPqZozs4oSwQU5jyBbJaiROsdIJcffu8IvO+PLFbMMh
	bYFcHNktz9b2L7+nilSFE0CbC3qqo+eKsnCT6e0M8ZXCK0X9GOETJZUHGqWI8H9bvnlqdBOsv3LVj
	ba6ZvmE67OpobDCZvxag+kDiNTgh5vzPPrnFC7SpD+vlHS6vFVKFwlsiNtaCZLhDGOgxgNJq+OiJR
	/azvbcSi0WAXXzy//HWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSab-0002me-8H; Mon, 10 Jun 2019 22:16:29 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haSaY-0002kY-B7; Mon, 10 Jun 2019 22:16:26 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: [PATCH 01/17] mm: provide a print_vma_addr stub for !CONFIG_MMU
Date: Tue, 11 Jun 2019 00:16:05 +0200
Message-Id: <20190610221621.10938-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610221621.10938-1-hch@lst.de>
References: <20190610221621.10938-1-hch@lst.de>
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
Cc: linux-mm@kvack.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 uclinux-dev@uclinux.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/mm.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index dd0b5f4e1e45..69843ee0c5f8 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2756,7 +2756,13 @@ extern int randomize_va_space;
 #endif
 
 const char * arch_vma_name(struct vm_area_struct *vma);
+#ifdef CONFIG_MMU
 void print_vma_addr(char *prefix, unsigned long rip);
+#else
+static inline void print_vma_addr(char *prefix, unsigned long rip)
+{
+}
+#endif
 
 void *sparse_buffer_alloc(unsigned long size);
 struct page *sparse_mem_map_populate(unsigned long pnum, int nid,
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
