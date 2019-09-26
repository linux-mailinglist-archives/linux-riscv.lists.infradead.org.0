Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D63BEA79
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Sep 2019 04:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zPKj86uRrML0nS3myD3nThGKcaW+fXvQ6QY0HrgYlN4=; b=kmsCl9ofA3QoAJ
	QH8fLR6AwL1cmWhHGJHY/HQLDDtSLrgb/VrHIPHTnLsluiAS1dGzUXz7QSeaVVc3/qwJkr4ZjUid1
	z7oCk5npo3i/dWbiVkwualP7BRwcb7jR3U8ODbNGcDAmgYlETDlV0xzK+wbxVwPbTkIOwNZVfnZn2
	K9/qoRYSJnJSNF14fEbYDhc/vyG7lPROZxwXU1Xs8n95jsSV/tsnVsQI4VPDTDwG/+vegYRNhBETl
	xNOYq7ZOiaYsz2dDqJJD3JWBpYiGnaFb2pcWLTVUKfYYEcZ4y6CYpz2cHpiK4YQvhcTWA6txcbYGw
	cvCBTnP7Vcuqh6Y0qxFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDJHL-0007DG-4V; Thu, 26 Sep 2019 02:13:11 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDJHH-0007Ca-7R
 for linux-riscv@lists.infradead.org; Thu, 26 Sep 2019 02:13:08 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7D8DB27A7017405A031A;
 Thu, 26 Sep 2019 10:13:00 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Thu, 26 Sep 2019 10:12:54 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: <linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Palmer Dabbelt" <palmer@sifive.com>
Subject: [PATCH] riscv: move flush_icache_range/user_range() after
 flush_icache_all()
Date: Thu, 26 Sep 2019 10:29:38 +0800
Message-ID: <20190926022938.58568-1-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_191307_449761_8AC1AE48 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When build lkdtm module, which used flush_icache_range(), error occurred,

ERROR: "flush_icache_all" [drivers/misc/lkdtm/lkdtm.ko] undefined!

Fix it.

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 arch/riscv/include/asm/cacheflush.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
index 555b20b11dc3..f6ec26589620 100644
--- a/arch/riscv/include/asm/cacheflush.h
+++ b/arch/riscv/include/asm/cacheflush.h
@@ -80,13 +80,6 @@ static inline void flush_dcache_page(struct page *page)
 		clear_bit(PG_dcache_clean, &page->flags);
 }
 
-/*
- * RISC-V doesn't have an instruction to flush parts of the instruction cache,
- * so instead we just flush the whole thing.
- */
-#define flush_icache_range(start, end) flush_icache_all()
-#define flush_icache_user_range(vma, pg, addr, len) flush_icache_all()
-
 #ifndef CONFIG_SMP
 
 #define flush_icache_all() local_flush_icache_all()
@@ -99,6 +92,13 @@ void flush_icache_mm(struct mm_struct *mm, bool local);
 
 #endif /* CONFIG_SMP */
 
+/*
+ * RISC-V doesn't have an instruction to flush parts of the instruction cache,
+ * so instead we just flush the whole thing.
+ */
+#define flush_icache_range(start, end) flush_icache_all()
+#define flush_icache_user_range(vma, pg, addr, len) flush_icache_all()
+
 /*
  * Bits in sys_riscv_flush_icache()'s flags argument.
  */
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
