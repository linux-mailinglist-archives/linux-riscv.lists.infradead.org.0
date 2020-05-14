Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989CB1D3761
	for <lists+linux-riscv@lfdr.de>; Thu, 14 May 2020 19:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/wp+BcLYF/pLtllSO8NtWMCUDvjnH1oFTLeFFCBT8x4=; b=H0vmFSHSBSFLGO
	9Nn59A+Rj8I0dpQlC1YLZqsDTt415cfZX7efWfPSxxfWbyTrqME3apVkSGmt/md0Jhoo5Ja4ZQRcb
	xHl6w8cZqMO+AqvNphN+MdUbTnHVap03nZV+GttVlu+0LdFFI1fhg6juJv07rWbuTyuiLkoIoC5PI
	ygFumw1toHyoOfNyglw8e9DWkQc14O3uqjRjazYVlB2BJCxuahXGjhfuAyUiF4lFTr7EmTp7NxC8I
	Ya9wdcnWHf7RauT3HWaBRV2S6ZQZm219yhqJXUMnivAq3dGKJJ2G8KPOVcAptu3AwpHhxClVFsPTl
	VMLFoCXb0tRyq32DHnrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHHy-0002QL-Bh; Thu, 14 May 2020 17:04:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHHt-0002NO-HR; Thu, 14 May 2020 17:04:51 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36882206DC;
 Thu, 14 May 2020 17:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589475889;
 bh=r0qA/m8aho5QyEwejC1WCC2ZRpWujFeBiVtRKwhabXc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=atU5KbtJo1kgAvUKoSINwMB2SL+dOQJWNe4IlACMJxiJjl1WTuTl5iJ8m7MJnDyDw
 yxqD4xol3vTEUeqZo9MScwPsvWVMwy41lZ8rhAggIH8mQxL2GjjB5raD85BOM6tp4T
 INcD3dphNVZz3l0pngaw55A8PjFOkxbgN2/us6P4=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/12] csky: replace definitions of __pXd_offset() with
 pXd_index()
Date: Thu, 14 May 2020 20:03:19 +0300
Message-Id: <20200514170327.31389-5-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200514170327.31389-1-rppt@kernel.org>
References: <20200514170327.31389-1-rppt@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_100449_628782_BD116B45 
X-CRM114-Status: GOOD (  12.12  )
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

All architectures use pXd_index() to get an entry in the page table page
corresponding to a virtual address.

Align csky with other architectures.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/csky/include/asm/pgtable.h | 5 ++---
 arch/csky/mm/fault.c            | 2 +-
 arch/csky/mm/highmem.c          | 2 +-
 arch/csky/mm/init.c             | 6 +++---
 4 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/arch/csky/include/asm/pgtable.h b/arch/csky/include/asm/pgtable.h
index 9d2d16db237d..2eff4aea51b3 100644
--- a/arch/csky/include/asm/pgtable.h
+++ b/arch/csky/include/asm/pgtable.h
@@ -229,9 +229,8 @@ static inline pte_t pte_mkyoung(pte_t pte)
 	return pte;
 }
 
-#define __pgd_offset(address)	pgd_index(address)
-#define __pud_offset(address)	(((address) >> PUD_SHIFT) & (PTRS_PER_PUD-1))
-#define __pmd_offset(address)	(((address) >> PMD_SHIFT) & (PTRS_PER_PMD-1))
+#define pud_index(address)	(((address) >> PUD_SHIFT) & (PTRS_PER_PUD-1))
+#define pmd_index(address)	(((address) >> PMD_SHIFT) & (PTRS_PER_PMD-1))
 
 /* to find an entry in a kernel page-table-directory */
 #define pgd_offset_k(address)	pgd_offset(&init_mm, address)
diff --git a/arch/csky/mm/fault.c b/arch/csky/mm/fault.c
index 4e6dc68f3258..4055d430c0c8 100644
--- a/arch/csky/mm/fault.c
+++ b/arch/csky/mm/fault.c
@@ -78,7 +78,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs, unsigned long write,
 		 * Do _not_ use "tsk" here. We might be inside
 		 * an interrupt in the middle of a task switch..
 		 */
-		int offset = __pgd_offset(address);
+		int offset = pgd_index(address);
 		pgd_t *pgd, *pgd_k;
 		pud_t *pud, *pud_k;
 		pmd_t *pmd, *pmd_k;
diff --git a/arch/csky/mm/highmem.c b/arch/csky/mm/highmem.c
index 3b3f622f5ae9..89ec32e602a1 100644
--- a/arch/csky/mm/highmem.c
+++ b/arch/csky/mm/highmem.c
@@ -92,7 +92,7 @@ static void __init kmap_pages_init(void)
 	vaddr = PKMAP_BASE;
 	fixrange_init(vaddr, vaddr + PAGE_SIZE*LAST_PKMAP, swapper_pg_dir);
 
-	pgd = swapper_pg_dir + __pgd_offset(vaddr);
+	pgd = swapper_pg_dir + pgd_index(vaddr);
 	pud = (pud_t *)pgd;
 	pmd = pmd_offset(pud, vaddr);
 	pte = pte_offset_kernel(pmd, vaddr);
diff --git a/arch/csky/mm/init.c b/arch/csky/mm/init.c
index eda2b4291485..af627128314f 100644
--- a/arch/csky/mm/init.c
+++ b/arch/csky/mm/init.c
@@ -157,9 +157,9 @@ void __init fixrange_init(unsigned long start, unsigned long end,
 	unsigned long vaddr;
 
 	vaddr = start;
-	i = __pgd_offset(vaddr);
-	j = __pud_offset(vaddr);
-	k = __pmd_offset(vaddr);
+	i = pgd_index(vaddr);
+	j = pud_index(vaddr);
+	k = pmd_index(vaddr);
 	pgd = pgd_base + i;
 
 	for ( ; (i < PTRS_PER_PGD) && (vaddr != end); pgd++, i++) {
-- 
2.26.2


