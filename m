Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE52156EF4
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Feb 2020 06:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62RfhKAR/Ri4okXqm018bf0oko/VlUMmOmgrha7NFJc=; b=jROYAXZUx63IcA
	792E+OfM835LCvy3WmbGkxQiR6m0KphxI1+zzTBToltPNPzo0Rvkc8JBo+3LK7d4eztCrqnBilrbw
	jJscXVgsgzFGUpST71mo94TZoGj0uzR4az7iFQAiXT0OAXxrppg+AFCcUoz4SBOKM2W+R07Xw+Ga5
	a9HyrfDjf8mK8NhNFiLHLMIgOXb+nOIN05u/qTA/eVVyOdkt2ALesiCtwK0mYtgJhZ6J3TvcT3ilr
	mK3auQf6bdjZ6gmqXECTc1q9CePGjOFX3MS0O0aCV/BjMdqbde/S/CCLBIBRKRc9hrZyrnpgYGeZq
	UQFi8/nTe0FTepmlY+iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j124C-0004Ye-Hf; Mon, 10 Feb 2020 05:57:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1249-0004WO-Kj
 for linux-riscv@lists.infradead.org; Mon, 10 Feb 2020 05:57:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id b35so3283304pgm.13
 for <linux-riscv@lists.infradead.org>; Sun, 09 Feb 2020 21:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=62RfhKAR/Ri4okXqm018bf0oko/VlUMmOmgrha7NFJc=;
 b=LwEa2cuFrHdjHrRI7KW8PxSw4vR3QJcIM5pqYuIO50oJxfp5EKeNF+BdQyd0585lok
 nsbW+QRPGgZNabsMUiPaYmU4q3y1b1J5bkSm/OJiIixpvfjvqmtmQscPDV0/YZzDaVmG
 uqj5jMlFLzyUtiujvYBmVPoyR4VQ6F0Qr4kNH46UhD0DXS1HqfFSHw7zBH8Gt85wGKjK
 62TvZTkx1avqEU51JWAyfEmtJiAGalyXLm5LLpLZ1XPso6DpPt+ajIhHKniKeydBnHxu
 kN2RGoOCG611kpEKqAuklrfNaPh9IWVxa4nNRo4p+7LhWos4gPCQnwPbWD6NvNRpZJmp
 Ui+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=62RfhKAR/Ri4okXqm018bf0oko/VlUMmOmgrha7NFJc=;
 b=C/UL3lkKCm69VsyBRdPc9qFh/5+jN1o434In2vpbylx1bm++Edlcmugy5NdAyKDa2O
 6CdstrMe8l76B8hwZ1gG5CRfXCbfdKCEAY5nEXADX+SXbgJRUNQ6lgkgxQYbb6TzMwU7
 6fSLQvL0yLZHK5lHqx7FmzkktdAGy/Uui2VC27O0+3PqzlMqxKhKYy+ALmwjUTEoN7tr
 z+q7TsSr2t2o/l+OngaRzJrGMkBJjUUY5fqX25vpQUhlVr6zuV6e4LmYvTxOrYp3Sqt3
 AXIdeLASSJBqNstdcUczldW8UnTKv8hfnDz1BwLa4xU5DM0CtZhJF60B8Y/y/64B/2Cq
 5H1g==
X-Gm-Message-State: APjAAAV5HV+8JPTnH04hIer5v/y/q3nh9OObuMypoNiAJ7XyXAqAG5dQ
 fFxh5YDDKna9mqhMIF7uEtssgA==
X-Google-Smtp-Source: APXvYqyLwM9orE9zwSxvz1FkNdJPgYt9aD06AOmG01Ol6nUGVWGBH7dNYvJ4Qrgg/llhsMnyGvt0Pw==
X-Received: by 2002:a63:e54c:: with SMTP id z12mr12274548pgj.415.1581314225067; 
 Sun, 09 Feb 2020 21:57:05 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id s206sm11140234pfs.100.2020.02.09.21.57.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 21:57:04 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 joe@perches.com, nickhu@andestech.com
Subject: [PATCH v2 1/2] riscv: allocate a complete page size for each page
 table
Date: Mon, 10 Feb 2020 13:56:53 +0800
Message-Id: <20200210055654.96725-2-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210055654.96725-1-zong.li@sifive.com>
References: <20200210055654.96725-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_215705_694649_6E9B906D 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Each page table should be created by allocating a complete page size
for it. Otherwise, the content of the page table would be corrupted
somewhere through memory allocation which allocates the memory at the
middle of the page table for other use.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/mm/kasan_init.c | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/mm/kasan_init.c b/arch/riscv/mm/kasan_init.c
index f0cc86040587..f8eaf7e73a23 100644
--- a/arch/riscv/mm/kasan_init.c
+++ b/arch/riscv/mm/kasan_init.c
@@ -46,29 +46,34 @@ asmlinkage void __init kasan_early_init(void)
 
 static void __init populate(void *start, void *end)
 {
-	unsigned long i;
+	unsigned long i, offset;
 	unsigned long vaddr = (unsigned long)start & PAGE_MASK;
 	unsigned long vend = PAGE_ALIGN((unsigned long)end);
 	unsigned long n_pages = (vend - vaddr) / PAGE_SIZE;
+	unsigned long n_ptes =
+	    ((n_pages + PTRS_PER_PTE) & -PTRS_PER_PTE) / PTRS_PER_PTE;
 	unsigned long n_pmds =
-		(n_pages % PTRS_PER_PTE) ? n_pages / PTRS_PER_PTE + 1 :
-						n_pages / PTRS_PER_PTE;
+	    ((n_ptes + PTRS_PER_PMD) & -PTRS_PER_PMD) / PTRS_PER_PMD;
+
+	pte_t *pte =
+	    memblock_alloc(n_ptes * PTRS_PER_PTE * sizeof(pte_t), PAGE_SIZE);
+	pmd_t *pmd =
+	    memblock_alloc(n_pmds * PTRS_PER_PMD * sizeof(pmd_t), PAGE_SIZE);
 	pgd_t *pgd = pgd_offset_k(vaddr);
-	pmd_t *pmd = memblock_alloc(n_pmds * sizeof(pmd_t), PAGE_SIZE);
-	pte_t *pte = memblock_alloc(n_pages * sizeof(pte_t), PAGE_SIZE);
 
 	for (i = 0; i < n_pages; i++) {
 		phys_addr_t phys = memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
-
-		set_pte(pte + i, pfn_pte(PHYS_PFN(phys), PAGE_KERNEL));
+		set_pte(&pte[i], pfn_pte(PHYS_PFN(phys), PAGE_KERNEL));
 	}
 
-	for (i = 0; i < n_pmds; ++pgd, i += PTRS_PER_PMD)
-		set_pgd(pgd, pfn_pgd(PFN_DOWN(__pa(((uintptr_t)(pmd + i)))),
+	for (i = 0, offset = 0; i < n_ptes; i++, offset += PTRS_PER_PTE)
+		set_pmd(&pmd[i],
+			pfn_pmd(PFN_DOWN(__pa(&pte[offset])),
 				__pgprot(_PAGE_TABLE)));
 
-	for (i = 0; i < n_pages; ++pmd, i += PTRS_PER_PTE)
-		set_pmd(pmd, pfn_pmd(PFN_DOWN(__pa((uintptr_t)(pte + i))),
+	for (i = 0, offset = 0; i < n_pmds; i++, offset += PTRS_PER_PMD)
+		set_pgd(&pgd[i],
+			pfn_pgd(PFN_DOWN(__pa(&pmd[offset])),
 				__pgprot(_PAGE_TABLE)));
 
 	flush_tlb_all();
-- 
2.25.0


