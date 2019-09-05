Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20E5A9D9E
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 10:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZPIanq4+QJIA+peYXONJ2+6k5F/bS0aojusQQ9uwYA=; b=i5ns9k+9zcOGGl
	gWPXeafzOEds1UADSmEm3CdGwXXPUISE74+gRj6LExoJI/ohOA7fIxt2h9NfFS68kMa3semrNgV0g
	t7TYP6Vcc+3XJ8bi4CUSHyXrl49bSqehWkjVSxH6gqcErQbYREHacUCzgpRIR6Cvyd87tM4tVumXy
	SgwAsY1aHiur5E7HKrnzOZ4yZkU7EvwDBH2Nx6Gsq5BK0HrL01+eFZMf97FgUYGubDbW75kP5YqhB
	/nS6UxxPlr9O9xTt3LYqDiyLBGF83vduq83TWD7NoOJPj17r/DM8FaTHF6uZwahfKbvWwsKNyCH5F
	2E5z64KlaRy5EUmlds0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nbN-00017O-Bx; Thu, 05 Sep 2019 08:58:49 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nbJ-00016i-2z
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 08:58:46 +0000
Received: by mail-io1-xd43.google.com with SMTP id p12so3075348iog.5
 for <linux-riscv@lists.infradead.org>; Thu, 05 Sep 2019 01:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=8M7qg5HgzYbJt9vUc8A/4GaMC+Z9f2mo0/mqWU90WxM=;
 b=jMyptLRMLdCUBBep8bB74GXndOE1sCufCBJd1sxmM2s2j86pWAb316/DbmldmygGDx
 pX6AA5iiVpcVCBt7WdQgBi2/wsmiOaFuidv4l5yLJqgx7t7ay2/X5qp3rDbWBgraa9K9
 Zwy0ZCan0qNfuIvXyjJX56uKjSmyGftRDiKKNxnHkbAlzD4camzV5YDr+taydMLgYFXP
 XAArC7qBM/oqM9aMDj8j2DZfA84bQIfLnNYAoIqGGW+EwC2Q0NvqvrchqkDyBDjNBalK
 bdszGzIuSwb1LonTFv0tM5l038mS2jVYUGoDu2WQpSKCLnA3JgFEN+ULgWHzP7P2nHwJ
 exRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=8M7qg5HgzYbJt9vUc8A/4GaMC+Z9f2mo0/mqWU90WxM=;
 b=QzwN1RoxMeqNJgW6lT7bPZkkbMTQZS5MsCfVrqtjZjqOg5jiclrqLHVtQVQeN4kQFV
 +T7pfY2JmkYcEHwPPkYJtb3+YHYVGS7I7/K6q+B3JIAtvQ0YyjMY+aryU4GzlaYDELFb
 MLX9fLd0CgGb15/MdOuli3+ubQuHIEbfdWQt7rg/GhswsPz2+IMKeJEks/+3soutTqzc
 OLatnXn3kvzwHur6O3KQbiHwozruThDNL0pWT4Gc54DzAlODA1zwKbLtrIzoz/miG1Mr
 YF0CWjw4PoLcayjVK3we4ua0bjz42ZS0Sfq4j2wwOtAuxUl9uiCyEYQdwMHx69aMqASi
 m0fw==
X-Gm-Message-State: APjAAAUl2BFm20OSzypLUKS1xUplzAzWELpoz5caC8b6iK9GRa2vjHJF
 3jmNbosdEbMsTpFIxb1OZtQrJg==
X-Google-Smtp-Source: APXvYqxD84ruLuQgjMdaMlqxhY9AEd/W74g5SyrUm6sOf8WUksUKx1ncdlOuD3RN32s/EVps9dy2aw==
X-Received: by 2002:a02:2b2e:: with SMTP id h46mr2964846jaa.141.1567673923511; 
 Thu, 05 Sep 2019 01:58:43 -0700 (PDT)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id z14sm1128351iol.86.2019.09.05.01.58.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 01:58:43 -0700 (PDT)
Date: Thu, 5 Sep 2019 01:58:41 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 6/6] riscv: move the TLB flush logic out of line
In-Reply-To: <20190821145837.3686-7-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1909050155590.27305@viisi.sifive.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-7-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_015845_137678_EFF8BE49 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019, Christoph Hellwig wrote:

> The TLB flush logic is going to become more complex.  Start moving
> it out of line.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks.  "checkpatch.pl --strict" reported several whitespace issues with 
this patch.  I fixed those up here and queued the following for v5.4-rc1.


- Paul

From: Christoph Hellwig <hch@lst.de>
Date: Wed, 21 Aug 2019 23:58:37 +0900
Subject: [PATCH] riscv: move the TLB flush logic out of line

The TLB flush logic is going to become more complex.  Start moving
it out of line.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
[paul.walmsley@sifive.com: fixed checkpatch whitespace warnings]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/tlbflush.h | 37 ++++++-------------------------
 arch/riscv/mm/Makefile            |  3 +++
 arch/riscv/mm/tlbflush.c          | 35 +++++++++++++++++++++++++++++
 3 files changed, 45 insertions(+), 30 deletions(-)
 create mode 100644 arch/riscv/mm/tlbflush.c

diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index df31fe2ed09c..37ae4e367ad2 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -25,8 +25,13 @@ static inline void local_flush_tlb_page(unsigned long addr)
 	__asm__ __volatile__ ("sfence.vma %0" : : "r" (addr) : "memory");
 }
 
-#ifndef CONFIG_SMP
-
+#ifdef CONFIG_SMP
+void flush_tlb_all(void);
+void flush_tlb_mm(struct mm_struct *mm);
+void flush_tlb_page(struct vm_area_struct *vma, unsigned long addr);
+void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
+		     unsigned long end);
+#else /* CONFIG_SMP */
 #define flush_tlb_all() local_flush_tlb_all()
 #define flush_tlb_page(vma, addr) local_flush_tlb_page(addr)
 
@@ -37,34 +42,6 @@ static inline void flush_tlb_range(struct vm_area_struct *vma,
 }
 
 #define flush_tlb_mm(mm) flush_tlb_all()
-
-#else /* CONFIG_SMP */
-
-#include <asm/sbi.h>
-
-static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
-				     unsigned long size)
-{
-	struct cpumask hmask;
-
-	riscv_cpuid_to_hartid_mask(cmask, &hmask);
-	sbi_remote_sfence_vma(hmask.bits, start, size);
-}
-
-#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
-
-#define flush_tlb_range(vma, start, end) \
-	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
-
-static inline void flush_tlb_page(struct vm_area_struct *vma,
-				  unsigned long addr)
-{
-	flush_tlb_range(vma, addr, addr + PAGE_SIZE);
-}
-
-#define flush_tlb_mm(mm)				\
-	remote_sfence_vma(mm_cpumask(mm), 0, -1)
-
 #endif /* CONFIG_SMP */
 
 /* Flush a range of kernel pages */
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 74055e1d6f21..9d9a17335686 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -13,4 +13,7 @@ obj-y += cacheflush.o
 obj-y += context.o
 obj-y += sifive_l2_cache.o
 
+ifeq ($(CONFIG_MMU),y)
+obj-$(CONFIG_SMP) += tlbflush.o
+endif
 obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
new file mode 100644
index 000000000000..24cd33d2c48f
--- /dev/null
+++ b/arch/riscv/mm/tlbflush.c
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/mm.h>
+#include <linux/smp.h>
+#include <asm/sbi.h>
+
+void flush_tlb_all(void)
+{
+	sbi_remote_sfence_vma(NULL, 0, -1);
+}
+
+static void __sbi_tlb_flush_range(struct cpumask *cmask, unsigned long start,
+				  unsigned long size)
+{
+	struct cpumask hmask;
+
+	riscv_cpuid_to_hartid_mask(cmask, &hmask);
+	sbi_remote_sfence_vma(hmask.bits, start, size);
+}
+
+void flush_tlb_mm(struct mm_struct *mm)
+{
+	__sbi_tlb_flush_range(mm_cpumask(mm), 0, -1);
+}
+
+void flush_tlb_page(struct vm_area_struct *vma, unsigned long addr)
+{
+	__sbi_tlb_flush_range(mm_cpumask(vma->vm_mm), addr, PAGE_SIZE);
+}
+
+void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
+		     unsigned long end)
+{
+	__sbi_tlb_flush_range(mm_cpumask(vma->vm_mm), start, end - start);
+}
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
