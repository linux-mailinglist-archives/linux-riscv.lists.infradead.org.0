Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF671CCFA3
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 04:18:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EC++TeLx3cNyy1EBw0orucHaje0V3J4CFKgs2L48MNQ=; b=OQiHP0m8Cd1L6EL1agBum3gJb
	K+e4UcQLrZdvtgHERUSKeQ7Ccl604zya53rl3XEZFDowsfsH4GODr7dUyzxqnlDj+EDIclJFytb2k
	G2a2ITX6p0BCCxdmKEr0cOBV9XsYcZoehiHwotds6HrVmHj9MYbWkh1YMCTT6BaSi3P635yk/HZLU
	aiGer56kAKRd9BltmDCgshwSEve1hdhqo9yG4b1FFUa8+E/FGvcsIuhM2zrhtlY3ELLm0/Gd9sSwZ
	Qcg6GdhOvo6qr/cDbNJD2zB1oo8u52ueifYcVUF6cMFU01jRyqDSwZtlbDXt0NvzODUT2h+NppcF9
	g6k2uUlbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXy1F-0000qa-Jy; Mon, 11 May 2020 02:18:13 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXy0G-0008VH-4X
 for linux-riscv@lists.infradead.org; Mon, 11 May 2020 02:17:23 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id ED6323CDCC8305343239;
 Mon, 11 May 2020 10:17:08 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.487.0; Mon, 11 May 2020 10:17:03 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 <linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 03/10] riscv: Add pgprot_writecombine/device and PAGE_SHARED
 defination if NOMMU
Date: Mon, 11 May 2020 10:19:54 +0800
Message-ID: <20200511022001.179767-4-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511022001.179767-1-wangkefeng.wang@huawei.com>
References: <20200511022001.179767-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_191712_377081_DF6CF0BE 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Hulk Robot <hulkci@huawei.com>, Kefeng Wang <wangkefeng.wang@huawei.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Some drivers use PAGE_SHARED, pgprot_writecombine()/pgprot_device(),
add the defination to fix build error if NOMMU.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 arch/riscv/include/asm/mmio.h    | 2 ++
 arch/riscv/include/asm/pgtable.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/asm/mmio.h b/arch/riscv/include/asm/mmio.h
index a2c809df2733..56053c9838b2 100644
--- a/arch/riscv/include/asm/mmio.h
+++ b/arch/riscv/include/asm/mmio.h
@@ -16,6 +16,8 @@
 
 #ifndef CONFIG_MMU
 #define pgprot_noncached(x)	(x)
+#define pgprot_writecombine(x)	(x)
+#define pgprot_device(x)	(x)
 #endif /* CONFIG_MMU */
 
 /* Generic IO read/write.  These perform native-endian accesses. */
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 780dd1d4f720..a12d343e080a 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -470,6 +470,7 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 
 #else /* CONFIG_MMU */
 
+#define PAGE_SHARED		__pgprot(0)
 #define PAGE_KERNEL		__pgprot(0)
 #define swapper_pg_dir		NULL
 #define TASK_SIZE		0xffffffffUL
-- 
2.26.2


