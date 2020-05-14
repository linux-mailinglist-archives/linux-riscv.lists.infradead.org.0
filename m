Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639B31D3784
	for <lists+linux-riscv@lfdr.de>; Thu, 14 May 2020 19:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siaOB22lwdSQKgU6WNAhKttKqGH0rCXjxYao9iqapE8=; b=mgWYBcrZMi7pRC
	my1rMtrLDiAUUnNZfBbE8aJiUfK21RYYxcsODYPLoFqfj296+4p16Ik0Y9NJ3DICWGFbd4/oI7aaF
	ZKuycbd25nDX45mjGiUU3iRdT5OemxT56ZhZeqSjo8Es5T0L6H1M0HP55tJgpgNoRc4l+PcIzoH5V
	83ENcPEATzrq+e84uvjgLndSsAjTPTpoWotmeoboLCPKbSze8IeqXhLDP3g7hLNknunqgln/6mVyJ
	uFjGcq1VuuTjoQGzZMzo5Dv6Pbc9ZdeVRXEl6KkSR4pzK3nPE15LGcQZ7kpN8zGxQnfeCrL1k6ggm
	sXfiiHnnoCqJJTJNNa7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHJd-0005le-Mx; Thu, 14 May 2020 17:06:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHJX-0005kY-Le; Thu, 14 May 2020 17:06:33 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45D80206A5;
 Thu, 14 May 2020 17:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589475991;
 bh=Y+f6c079Y5Cd2guvDkqAGKk0EgXOGQs3055astq93dA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j2dliz8wzPFmQ6twAwi4dallm6zQuL/RXl+NPeoOi2IRt5t+gLX0lOdjElyf/NXFb
 hpAwbQOX7c1rqwf2yEvPOItwlHn4lQ4lbqlr+dOYVfYaXvBi5MSWd6h1w/2OsA0Yy2
 dltWwIjilI30bMhmNiaus6VecHa9RuA1MhVMkepQ=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/12] mm: consolidate pud_index() and pud_offset()
 definitions
Date: Thu, 14 May 2020 20:03:26 +0300
Message-Id: <20200514170327.31389-12-rppt@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200514170327.31389-1-rppt@kernel.org>
References: <20200514170327.31389-1-rppt@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_100631_761618_6998B5E8 
X-CRM114-Status: GOOD (  15.47  )
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

All architectures that have at least four-level page tables define
pud_offset() as an entry in the array of PUDs indexed by the pud_index(),
where pud_index() is

	(address >> PUD_SHIFT) & (PTRS_PER_PUD - 1)

For the most architectures the pud_offset() implementation relies on
the availability of pud_page_vaddr() that converts a PUD entry value to the
virtual address of the page containing PUD array.

Let's use such implementation as a generic and drop most of the definitions
of pud_index() and pud_offset() in <asm/pgtable.h> files.

The architectures that didn't provide pud_page_vaddr() are updated to
have that defined.

The generic implementation can be overridden by an architecture and this
ability is currently in use by there architectures:
* s390 has custom definitions of all page table accessors

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/arm64/include/asm/pgtable.h                |  8 +++++---
 arch/csky/include/asm/pgtable.h                 |  2 --
 arch/ia64/include/asm/pgtable.h                 |  6 ------
 arch/mips/include/asm/pgtable-32.h              |  1 -
 arch/mips/include/asm/pgtable-64.h              |  7 -------
 arch/powerpc/include/asm/book3s/64/pgtable.h    |  4 ----
 arch/powerpc/include/asm/nohash/64/pgtable-4k.h |  4 ----
 arch/s390/include/asm/pgtable.h                 |  1 +
 arch/sh/include/asm/pgtable_32.h                |  2 --
 arch/sh/include/asm/pgtable_64.h                |  2 --
 arch/sparc/include/asm/pgtable_64.h             |  5 -----
 arch/x86/include/asm/pgtable.h                  | 11 -----------
 include/asm-generic/pgtable-nopud.h             |  1 +
 include/linux/pgtable.h                         | 16 ++++++++++++++++
 14 files changed, 23 insertions(+), 47 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index d0175335a2f2..c0155814b374 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -626,11 +626,13 @@ static inline phys_addr_t p4d_page_paddr(p4d_t p4d)
 	return __p4d_to_phys(p4d);
 }
 
-/* Find an entry in the frst-level page table. */
-#define pud_index(addr)		(((addr) >> PUD_SHIFT) & (PTRS_PER_PUD - 1))
+static inline unsigned long p4d_page_vaddr(p4d_t p4d)
+{
+	return (unsigned long)__va(p4d_page_paddr(p4d));
+}
 
+/* Find an entry in the frst-level page table. */
 #define pud_offset_phys(dir, addr)	(p4d_page_paddr(READ_ONCE(*(dir))) + pud_index(addr) * sizeof(pud_t))
-#define pud_offset(dir, addr)		((pud_t *)__va(pud_offset_phys((dir), (addr))))
 
 #define pud_set_fixmap(addr)		((pud_t *)set_fixmap_offset(FIX_PUD, addr))
 #define pud_set_fixmap_offset(p4d, addr)	pud_set_fixmap(pud_offset_phys(p4d, addr))
diff --git a/arch/csky/include/asm/pgtable.h b/arch/csky/include/asm/pgtable.h
index dc613f20e2e1..c5ab20970857 100644
--- a/arch/csky/include/asm/pgtable.h
+++ b/arch/csky/include/asm/pgtable.h
@@ -220,8 +220,6 @@ static inline pte_t pte_mkyoung(pte_t pte)
 	return pte;
 }
 
-#define pud_index(address)	(((address) >> PUD_SHIFT) & (PTRS_PER_PUD-1))
-
 /* to find an entry in a kernel page-table-directory */
 #define pgd_offset_k(address)	pgd_offset(&init_mm, address)
 
diff --git a/arch/ia64/include/asm/pgtable.h b/arch/ia64/include/asm/pgtable.h
index d75d981e6ee1..4c24e5e18bff 100644
--- a/arch/ia64/include/asm/pgtable.h
+++ b/arch/ia64/include/asm/pgtable.h
@@ -383,12 +383,6 @@ pgd_offset (const struct mm_struct *mm, unsigned long address)
    here.  */
 #define pgd_offset_gate(mm, addr)	pgd_offset_k(addr)
 
-#if CONFIG_PGTABLE_LEVELS == 4
-/* Find an entry in the second-level page table.. */
-#define pud_offset(dir,addr) \
-	((pud_t *) p4d_page_vaddr(*(dir)) + (((addr) >> PUD_SHIFT) & (PTRS_PER_PUD - 1)))
-#endif
-
 /* atomic versions of the some PTE manipulations: */
 
 static inline int
diff --git a/arch/mips/include/asm/pgtable-32.h b/arch/mips/include/asm/pgtable-32.h
index 05b51c344939..9c0e7a5ffc75 100644
--- a/arch/mips/include/asm/pgtable-32.h
+++ b/arch/mips/include/asm/pgtable-32.h
@@ -199,7 +199,6 @@ static inline pte_t pfn_pte(unsigned long pfn, pgprot_t prot)
 #define pgd_offset_k(address) pgd_offset(&init_mm, address)
 
 #define pgd_index(address)	(((address) >> PGDIR_SHIFT) & (PTRS_PER_PGD-1))
-#define pud_index(address)	(((address) >> PUD_SHIFT) & (PTRS_PER_PUD-1))
 
 /* to find an entry in a page-table-directory */
 #define pgd_offset(mm, addr)	((mm)->pgd + pgd_index(addr))
diff --git a/arch/mips/include/asm/pgtable-64.h b/arch/mips/include/asm/pgtable-64.h
index 21fb55510d35..38170fdac5bf 100644
--- a/arch/mips/include/asm/pgtable-64.h
+++ b/arch/mips/include/asm/pgtable-64.h
@@ -172,8 +172,6 @@
 
 extern pte_t invalid_pte_table[PTRS_PER_PTE];
 
-#define pud_index(address)	(((address) >> PUD_SHIFT) & (PTRS_PER_PUD - 1))
-
 #ifndef __PAGETABLE_PUD_FOLDED
 /*
  * For 4-level pagetables we defines these ourselves, for 3-level the
@@ -222,11 +220,6 @@ static inline unsigned long p4d_page_vaddr(p4d_t p4d)
 
 #define p4d_index(address)	(((address) >> P4D_SHIFT) & (PTRS_PER_P4D - 1))
 
-static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
-{
-	return (pud_t *)p4d_page_vaddr(*p4d) + pud_index(address);
-}
-
 static inline void set_p4d(p4d_t *p4d, p4d_t p4dval)
 {
 	*p4d = p4dval;
diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
index fbb5d12c6214..fffe28d52c02 100644
--- a/arch/powerpc/include/asm/book3s/64/pgtable.h
+++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
@@ -1009,7 +1009,6 @@ extern struct page *p4d_page(p4d_t p4d);
 #define p4d_page_vaddr(p4d)	__va(p4d_val(p4d) & ~P4D_MASKED_BITS)
 
 #define pgd_index(address) (((address) >> (PGDIR_SHIFT)) & (PTRS_PER_PGD - 1))
-#define pud_index(address) (((address) >> (PUD_SHIFT)) & (PTRS_PER_PUD - 1))
 
 /*
  * Find an entry in a page-table-directory.  We combine the address region
@@ -1018,9 +1017,6 @@ extern struct page *p4d_page(p4d_t p4d);
 
 #define pgd_offset(mm, address)	 ((mm)->pgd + pgd_index(address))
 
-#define pud_offset(p4dp, addr)	\
-	(((pud_t *) p4d_page_vaddr(*(p4dp))) + pud_index(addr))
-
 /* to find an entry in a kernel page-table-directory */
 /* This now only contains the vmalloc pages */
 #define pgd_offset_k(address) pgd_offset(&init_mm, address)
diff --git a/arch/powerpc/include/asm/nohash/64/pgtable-4k.h b/arch/powerpc/include/asm/nohash/64/pgtable-4k.h
index 81b1c54e3cf1..fe2f4c9acd9e 100644
--- a/arch/powerpc/include/asm/nohash/64/pgtable-4k.h
+++ b/arch/powerpc/include/asm/nohash/64/pgtable-4k.h
@@ -78,10 +78,6 @@ extern struct page *p4d_page(p4d_t p4d);
 
 #endif /* !__ASSEMBLY__ */
 
-#define pud_offset(p4dp, addr)	\
-  (((pud_t *) p4d_page_vaddr(*(p4dp))) + \
-    (((addr) >> PUD_SHIFT) & (PTRS_PER_PUD - 1)))
-
 #define pud_ERROR(e) \
 	pr_err("%s:%d: bad pud %08lx.\n", __FILE__, __LINE__, pud_val(e))
 
diff --git a/arch/s390/include/asm/pgtable.h b/arch/s390/include/asm/pgtable.h
index c162e50c7689..e1eef67a0877 100644
--- a/arch/s390/include/asm/pgtable.h
+++ b/arch/s390/include/asm/pgtable.h
@@ -1274,6 +1274,7 @@ static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
 		return (pud_t *) p4d_deref(*p4d) + pud_index(address);
 	return (pud_t *) p4d;
 }
+#define pud_offset pud_offset
 
 static inline pmd_t *pmd_offset(pud_t *pud, unsigned long address)
 {
diff --git a/arch/sh/include/asm/pgtable_32.h b/arch/sh/include/asm/pgtable_32.h
index 3023943ce731..ccc032e89f75 100644
--- a/arch/sh/include/asm/pgtable_32.h
+++ b/arch/sh/include/asm/pgtable_32.h
@@ -415,8 +415,6 @@ static inline unsigned long pmd_page_vaddr(pmd_t pmd)
 /* to find an entry in a kernel page-table-directory */
 #define pgd_offset_k(address)	pgd_offset(&init_mm, address)
 
-#define pud_index(address)	(((address) >> PUD_SHIFT) & (PTRS_PER_PUD-1))
-
 #ifdef CONFIG_X2TLB
 #define pte_ERROR(e) \
 	printk("%s:%d: bad pte %p(%08lx%08lx).\n", __FILE__, __LINE__, \
diff --git a/arch/sh/include/asm/pgtable_64.h b/arch/sh/include/asm/pgtable_64.h
index 8d5948f92caf..60aef1191784 100644
--- a/arch/sh/include/asm/pgtable_64.h
+++ b/arch/sh/include/asm/pgtable_64.h
@@ -51,8 +51,6 @@ static __inline__ void set_pte(pte_t *pteptr, pte_t pteval)
 /* To find an entry in a kernel PGD. */
 #define pgd_offset_k(address) pgd_offset(&init_mm, address)
 
-#define pud_index(address)	(((address) >> PUD_SHIFT) & (PTRS_PER_PUD-1))
-
 /*
  * PMD level access routines. Same notes as above.
  */
diff --git a/arch/sparc/include/asm/pgtable_64.h b/arch/sparc/include/asm/pgtable_64.h
index 2da1cec60f4e..f546ea46d41b 100644
--- a/arch/sparc/include/asm/pgtable_64.h
+++ b/arch/sparc/include/asm/pgtable_64.h
@@ -896,11 +896,6 @@ static inline unsigned long pud_pfn(pud_t pud)
 /* to find an entry in a kernel page-table-directory */
 #define pgd_offset_k(address) pgd_offset(&init_mm, address)
 
-/* Find an entry in the third-level page table.. */
-#define pud_index(address)	(((address) >> PUD_SHIFT) & (PTRS_PER_PUD - 1))
-#define pud_offset(p4dp, address)	\
-	((pud_t *) p4d_page_vaddr(*(p4dp)) + pud_index(address))
-
 /* We cannot include <linux/mm_types.h> at this point yet: */
 extern struct mm_struct init_mm;
 
diff --git a/arch/x86/include/asm/pgtable.h b/arch/x86/include/asm/pgtable.h
index 35e3bf86df20..97efdc62e740 100644
--- a/arch/x86/include/asm/pgtable.h
+++ b/arch/x86/include/asm/pgtable.h
@@ -895,11 +895,6 @@ static inline int pud_large(pud_t pud)
 }
 #endif	/* CONFIG_PGTABLE_LEVELS > 2 */
 
-static inline unsigned long pud_index(unsigned long address)
-{
-	return (address >> PUD_SHIFT) & (PTRS_PER_PUD - 1);
-}
-
 #if CONFIG_PGTABLE_LEVELS > 3
 static inline int p4d_none(p4d_t p4d)
 {
@@ -922,12 +917,6 @@ static inline unsigned long p4d_page_vaddr(p4d_t p4d)
  */
 #define p4d_page(p4d)	pfn_to_page(p4d_pfn(p4d))
 
-/* Find an entry in the third-level page table.. */
-static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
-{
-	return (pud_t *)p4d_page_vaddr(*p4d) + pud_index(address);
-}
-
 static inline int p4d_bad(p4d_t p4d)
 {
 	unsigned long ignore_flags = _KERNPG_TABLE | _PAGE_USER;
diff --git a/include/asm-generic/pgtable-nopud.h b/include/asm-generic/pgtable-nopud.h
index ad05c1684bfc..a9d751fbda9e 100644
--- a/include/asm-generic/pgtable-nopud.h
+++ b/include/asm-generic/pgtable-nopud.h
@@ -43,6 +43,7 @@ static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
 {
 	return (pud_t *)p4d;
 }
+#define pud_offset pud_offset
 
 #define pud_val(x)				(p4d_val((x).p4d))
 #define __pud(x)				((pud_t) { __p4d(x) })
diff --git a/include/linux/pgtable.h b/include/linux/pgtable.h
index f114b51bef18..09b86ce20a65 100644
--- a/include/linux/pgtable.h
+++ b/include/linux/pgtable.h
@@ -53,6 +53,14 @@ static inline unsigned long pmd_index(unsigned long address)
 #define pmd_index pmd_index
 #endif
 
+#ifndef pud_index
+static inline unsigned long pud_index(unsigned long address)
+{
+	return (address >> PUD_SHIFT) & (PTRS_PER_PUD - 1);
+}
+#define pud_index pud_index
+#endif
+
 #ifndef pte_offset_kernel
 static inline pte_t *pte_offset_kernel(pmd_t *pmd, unsigned long address)
 {
@@ -80,6 +88,14 @@ static inline pmd_t *pmd_offset(pud_t *pud, unsigned long address)
 #define pmd_offset pmd_offset
 #endif
 
+#ifndef pud_offset
+static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
+{
+	return (pud_t *)p4d_page_vaddr(*p4d) + pud_index(address);
+}
+#define pud_offset pud_offset
+#endif
+
 /*
  * In many cases it is known that a virtual address is mapped at PMD or PTE
  * level, so instead of traversing all the page table levels, we can get a
-- 
2.26.2


