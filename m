Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E22FE1082
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 05:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEkBhuNgNNhdNel0Wea1ywQ3S6WGN8dj+buoIwNBAsQ=; b=sTOefpl9AExd/P
	9tLtIdOnf89xzQg8nM+RD1zto4fa3ZDixeXlSxwp94H51nyA+c8gcP/p3VopCk/+euEVvmZUmYw3a
	k9FdFx5furvT3iR+KKodV/42Gf71qFaDmBKnGa/2s4JTRia6LE0O9wv63aVv9lyHXUfP/e/hQn2L9
	b3piXD8IY/JjSSWYlp7AUK8LGXYi2HbcINTUF0O8c9CepjKqb8kJTGLdVNjctSeS0amSXXDc7ZXY4
	ZIafRjW3RVvqmJzJInrsVfVcdi62ScIWY34l7ccNsycMpVzePRJPF8WT1+CzZGlsmcRzo7uKRdrpU
	fnzOtqFYjGN1b5SzpMmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN7FM-0002ef-5J; Wed, 23 Oct 2019 03:23:40 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN7FC-0002Sb-AW
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 03:23:32 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CEA3BE856DB5A72360AC;
 Wed, 23 Oct 2019 11:23:25 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Wed, 23 Oct 2019 11:23:19 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 2/2] riscv: Fix undefined reference to
 vmemmap_populate_basepages
Date: Wed, 23 Oct 2019 11:23:02 +0800
Message-ID: <20191023032302.160388-2-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023032302.160388-1-wangkefeng.wang@huawei.com>
References: <20191023032302.160388-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_202330_585537_4434DCF0 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Using CONFIG_SPARSEMEM_VMEMMAP instead of CONFIG_SPARSEMEM to fix
following build issue.

  riscv64-linux-ld: arch/riscv/mm/init.o: in function 'vmemmap_populate':
  init.c:(.meminit.text+0x8): undefined reference to 'vmemmap_populate_basepages'

Cc: Logan Gunthorpe <logang@deltatee.com>
Fixes: d95f1a542c3d ("RISC-V: Implement sparsemem")
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 arch/riscv/mm/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 83f7d12042fb..a1ca6200c31f 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -458,7 +458,7 @@ void __init paging_init(void)
 	zone_sizes_init();
 }
 
-#ifdef CONFIG_SPARSEMEM
+#ifdef CONFIG_SPARSEMEM_VMEMMAP
 int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 			       struct vmem_altmap *altmap)
 {
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
