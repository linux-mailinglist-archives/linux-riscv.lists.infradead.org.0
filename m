Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E271D376B
	for <lists+linux-riscv@lfdr.de>; Thu, 14 May 2020 19:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuZHXJCZ7p74QDyALhfYKAgrDszVjlmqM5SBSAaaPs4=; b=MHyOvFOEEWodB6
	Eu6TAMcIRRgXXdKR5UsS1gwIgbV9Fg2l061oslRyPyM4LCo0NP71f50RMtbhrqMhjUy7g4CvLTOLF
	kp+mWyoZCmaMlgOJbdHMxAbyKH5dRBMZM1Khy65qoOOsTM5MYnrsURgPwXQwP8S9elPW6Myo/x8ia
	SCNPJ9vYoIoE/t/fOnbprj1zQBsY8lm6qsYn6EzEzmme1rmuKjv7iJBzLTq5wQp2ESLEub0v5Tu9m
	xx4z2rPmeqsBZr2Hf3qKPslbxUUZ+8z2Xk3IrHuxulgqpP4dpngtLho0nPOpFrZNvzmepnH8auIlS
	46fyFNSGAk+J4D2It3Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHIU-00054K-Ox; Thu, 14 May 2020 17:05:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHIM-00051x-Df; Thu, 14 May 2020 17:05:22 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21FF0206F1;
 Thu, 14 May 2020 17:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589475918;
 bh=yCvMg9jE76Q0mBLXp3JtaX9kPYeAaa6ImoilPHaVKJo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MsXf+YHLiMI+6nfVDWOloety14o6JtNlRYn5C4NpDZVRH90TiJvlFuFoUuAZuA9+K
 HZhIg1NTYiA/9LFiictyIBYEvruIwYzYcqZJyQuCYfPaGccEozO27Q88Ag+LaopJp/
 uY8eQCnE5yZhTWiArvI3ABGMenLhVbfIKS966Dkg=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/12] m68k/mm: move {cache,
 nocahe}_page() definitions close to their user
Date: Thu, 14 May 2020 20:03:21 +0300
Message-Id: <20200514170327.31389-7-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200514170327.31389-1-rppt@kernel.org>
References: <20200514170327.31389-1-rppt@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_100518_666024_379DFD1F 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Guo Ren <guoren@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Will Deacon <will@kernel.org>, Greg Ungerer <gerg@linux-m68k.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Brian Cain <bcain@codeaurora.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Ley Foon Tan <ley.foon.tan@intel.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Ingo Molnar <mingo@redhat.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-parisc@vger.kernel.org, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Arnd Bergmann <arnd@arndb.de>,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Tony Luck <tony.luck@intel.com>,
 Borislav Petkov <bp@alien8.de>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Stafford Horne <shorne@gmail.com>,
 linux-csky@vger.kernel.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, openrisc@lists.librecores.org,
 Thomas Gleixner <tglx@linutronix.de>, Richard Weinberger <richard@nod.at>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

The cache_page() and nocache_page() functions are only used by the motorola
MMU variant for setting caching attributes for the page table pages.

Move the definitions of these functions from
arch/m68k/include/asm/motorola_pgtable.h closer to their usage in
arch/m68k/mm/motorola.c and drop unused definition in
arch/m68k/include/asm/mcf_pgtable.h.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Acked-by: Greg Ungerer <gerg@linux-m68k.org>
---
 arch/m68k/include/asm/mcf_pgtable.h      | 40 ---------------------
 arch/m68k/include/asm/motorola_pgtable.h | 44 ------------------------
 arch/m68k/mm/motorola.c                  | 43 +++++++++++++++++++++++
 3 files changed, 43 insertions(+), 84 deletions(-)

diff --git a/arch/m68k/include/asm/mcf_pgtable.h b/arch/m68k/include/asm/mcf_pgtable.h
index 0031cd387b75..737e826294f3 100644
--- a/arch/m68k/include/asm/mcf_pgtable.h
+++ b/arch/m68k/include/asm/mcf_pgtable.h
@@ -328,46 +328,6 @@ extern pgd_t kernel_pg_dir[PTRS_PER_PGD];
 #define pte_offset_kernel(dir, address) \
 	((pte_t *) __pmd_page(*(dir)) + __pte_offset(address))
 
-/*
- * Disable caching for page at given kernel virtual address.
- */
-static inline void nocache_page(void *vaddr)
-{
-	pgd_t *dir;
-	p4d_t *p4dp;
-	pud_t *pudp;
-	pmd_t *pmdp;
-	pte_t *ptep;
-	unsigned long addr = (unsigned long) vaddr;
-
-	dir = pgd_offset_k(addr);
-	p4dp = p4d_offset(dir, addr);
-	pudp = pud_offset(p4dp, addr);
-	pmdp = pmd_offset(pudp, addr);
-	ptep = pte_offset_kernel(pmdp, addr);
-	*ptep = pte_mknocache(*ptep);
-}
-
-/*
- * Enable caching for page at given kernel virtual address.
- */
-static inline void cache_page(void *vaddr)
-{
-	pgd_t *dir;
-	p4d_t *p4dp;
-	pud_t *pudp;
-	pmd_t *pmdp;
-	pte_t *ptep;
-	unsigned long addr = (unsigned long) vaddr;
-
-	dir = pgd_offset_k(addr);
-	p4dp = p4d_offset(dir, addr);
-	pudp = pud_offset(p4dp, addr);
-	pmdp = pmd_offset(pudp, addr);
-	ptep = pte_offset_kernel(pmdp, addr);
-	*ptep = pte_mkcache(*ptep);
-}
-
 /*
  * Encode and de-code a swap entry (must be !pte_none(e) && !pte_present(e))
  */
diff --git a/arch/m68k/include/asm/motorola_pgtable.h b/arch/m68k/include/asm/motorola_pgtable.h
index 9e5a3de21e15..e1594acf7c7e 100644
--- a/arch/m68k/include/asm/motorola_pgtable.h
+++ b/arch/m68k/include/asm/motorola_pgtable.h
@@ -227,50 +227,6 @@ static inline pte_t *pte_offset_kernel(pmd_t *pmdp, unsigned long address)
 #define pte_offset_map(pmdp,address) ((pte_t *)__pmd_page(*pmdp) + (((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1)))
 #define pte_unmap(pte)		((void)0)
 
-/* Prior to calling these routines, the page should have been flushed
- * from both the cache and ATC, or the CPU might not notice that the
- * cache setting for the page has been changed. -jskov
- */
-static inline void nocache_page(void *vaddr)
-{
-	unsigned long addr = (unsigned long)vaddr;
-
-	if (CPU_IS_040_OR_060) {
-		pgd_t *dir;
-		p4d_t *p4dp;
-		pud_t *pudp;
-		pmd_t *pmdp;
-		pte_t *ptep;
-
-		dir = pgd_offset_k(addr);
-		p4dp = p4d_offset(dir, addr);
-		pudp = pud_offset(p4dp, addr);
-		pmdp = pmd_offset(pudp, addr);
-		ptep = pte_offset_kernel(pmdp, addr);
-		*ptep = pte_mknocache(*ptep);
-	}
-}
-
-static inline void cache_page(void *vaddr)
-{
-	unsigned long addr = (unsigned long)vaddr;
-
-	if (CPU_IS_040_OR_060) {
-		pgd_t *dir;
-		p4d_t *p4dp;
-		pud_t *pudp;
-		pmd_t *pmdp;
-		pte_t *ptep;
-
-		dir = pgd_offset_k(addr);
-		p4dp = p4d_offset(dir, addr);
-		pudp = pud_offset(p4dp, addr);
-		pmdp = pmd_offset(pudp, addr);
-		ptep = pte_offset_kernel(pmdp, addr);
-		*ptep = pte_mkcache(*ptep);
-	}
-}
-
 /* Encode and de-code a swap entry (must be !pte_none(e) && !pte_present(e)) */
 #define __swp_type(x)		(((x).val >> 4) & 0xff)
 #define __swp_offset(x)		((x).val >> 12)
diff --git a/arch/m68k/mm/motorola.c b/arch/m68k/mm/motorola.c
index 904c2a663977..8e5e74121a78 100644
--- a/arch/m68k/mm/motorola.c
+++ b/arch/m68k/mm/motorola.c
@@ -45,6 +45,49 @@ unsigned long mm_cachebits;
 EXPORT_SYMBOL(mm_cachebits);
 #endif
 
+/* Prior to calling these routines, the page should have been flushed
+ * from both the cache and ATC, or the CPU might not notice that the
+ * cache setting for the page has been changed. -jskov
+ */
+static inline void nocache_page(void *vaddr)
+{
+	unsigned long addr = (unsigned long)vaddr;
+
+	if (CPU_IS_040_OR_060) {
+		pgd_t *dir;
+		p4d_t *p4dp;
+		pud_t *pudp;
+		pmd_t *pmdp;
+		pte_t *ptep;
+
+		dir = pgd_offset_k(addr);
+		p4dp = p4d_offset(dir, addr);
+		pudp = pud_offset(p4dp, addr);
+		pmdp = pmd_offset(pudp, addr);
+		ptep = pte_offset_kernel(pmdp, addr);
+		*ptep = pte_mknocache(*ptep);
+	}
+}
+
+static inline void cache_page(void *vaddr)
+{
+	unsigned long addr = (unsigned long)vaddr;
+
+	if (CPU_IS_040_OR_060) {
+		pgd_t *dir;
+		p4d_t *p4dp;
+		pud_t *pudp;
+		pmd_t *pmdp;
+		pte_t *ptep;
+
+		dir = pgd_offset_k(addr);
+		p4dp = p4d_offset(dir, addr);
+		pudp = pud_offset(p4dp, addr);
+		pmdp = pmd_offset(pudp, addr);
+		ptep = pte_offset_kernel(pmdp, addr);
+		*ptep = pte_mkcache(*ptep);
+	}
+}
 
 /*
  * Motorola 680x0 user's manual recommends using uncached memory for address
-- 
2.26.2


