Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFA918E838
	for <lists+linux-riscv@lfdr.de>; Sun, 22 Mar 2020 12:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHW8UhyZhsJSXCFfN9u1FEowySO2B1+JFh9Q66ilZkY=; b=MesjCMGjRiYmxM
	rGVd4jwD2adjtSK/LBKUVhvai0086GQZaGIQ95RYpH0egnPxJpwTHmuob9oem/uLcVrTpit1Z5fMi
	cApotaX0aRj+emYd+htoQySWjp64B3XAyEF5Qin3Iy9p0kcZ86O/7km23oWwjxIis6RPxQWujwDXx
	9EYVQFuTKQ84cNWPMHqklMudzkPZFnQ/b56lxNdHwmYMz/bAUuHc4wgQn0ywUMwU+7HcL+A8Q2Yxt
	/OU49+MsQvXws0/jaNWW2bsB78/hn6UMSkCpwni3Wb7muKzbSRGeWdFJnRZVxwbVeY7f55OwhEMA4
	6q3Zn4tUlJ1GxdwXg3DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFyMS-0007IK-Ic; Sun, 22 Mar 2020 11:01:44 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFyMP-0007HU-AZ
 for linux-riscv@lists.infradead.org; Sun, 22 Mar 2020 11:01:42 +0000
Received: from localhost.localdomain (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id ED460240003;
 Sun, 22 Mar 2020 11:01:35 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/7] riscv: Get rid of compile time logic with
 MAX_EARLY_MAPPING_SIZE
Date: Sun, 22 Mar 2020 07:00:22 -0400
Message-Id: <20200322110028.18279-2-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200322110028.18279-1-alex@ghiti.fr>
References: <20200322110028.18279-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_040141_501922_D95F0F11 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There is no need to compare at compile time MAX_EARLY_MAPPING_SIZE value
with PGDIR_SIZE since MAX_EARLY_MAPPING_SIZE is set to 128MB which is less
than PGDIR_SIZE that is equal to 1GB: that allows to simplify early_pmd
definition.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
---
 arch/riscv/mm/init.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 238bd0033c3f..18bbb426848e 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -247,13 +247,7 @@ static void __init create_pte_mapping(pte_t *ptep,
 
 pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
 pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
-
-#if MAX_EARLY_MAPPING_SIZE < PGDIR_SIZE
-#define NUM_EARLY_PMDS		1UL
-#else
-#define NUM_EARLY_PMDS		(1UL + MAX_EARLY_MAPPING_SIZE / PGDIR_SIZE)
-#endif
-pmd_t early_pmd[PTRS_PER_PMD * NUM_EARLY_PMDS] __initdata __aligned(PAGE_SIZE);
+pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
 
 static pmd_t *__init get_pmd_virt(phys_addr_t pa)
 {
@@ -267,14 +261,12 @@ static pmd_t *__init get_pmd_virt(phys_addr_t pa)
 
 static phys_addr_t __init alloc_pmd(uintptr_t va)
 {
-	uintptr_t pmd_num;
-
 	if (mmu_enabled)
 		return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
 
-	pmd_num = (va - PAGE_OFFSET) >> PGDIR_SHIFT;
-	BUG_ON(pmd_num >= NUM_EARLY_PMDS);
-	return (uintptr_t)&early_pmd[pmd_num * PTRS_PER_PMD];
+	BUG_ON((va - PAGE_OFFSET) >> PGDIR_SHIFT);
+
+	return (uintptr_t)early_pmd;
 }
 
 static void __init create_pmd_mapping(pmd_t *pmdp,
-- 
2.20.1


