Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9261B1CFDAF
	for <lists+linux-riscv@lfdr.de>; Tue, 12 May 2020 20:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaNcNz8AHi7kA8EvXV3vQHMaEBGX/qIOCu1q89aZFjo=; b=taCEv/GtJ7ERuv
	JXRhn922CA6EqUpjirb576gxd6yyoc0MRmXlefJa4xRlWW0w7x5X57Hwf9+kRbcdwi4xV2+PgZTCa
	TcemSNrtAErZ+4Fy6EELdXoPg/aGqm7pXmHiOWXzklkZs757mswD9r1xLKHCCR6rv3Wu4j17oS77L
	d12n9KxlpUBQUUaUfF+ZSA6obQGMsU7KrZ09uE+PvRO39qx3w7oOM8uft1KkInv/tN62/PMBeZsoy
	AaU3YzXsAAZ3TQAnyk8wpOE4ZVS9RyXZWC9mNhlXEIy9HMpnDt3SRh8ZJH85dtblrm8nC84S/KPT6
	7Xa4ShX4tnekpehPT5Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZvl-0004OE-CK; Tue, 12 May 2020 18:47:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYZvd-0004NA-PT; Tue, 12 May 2020 18:47:01 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A9C520673;
 Tue, 12 May 2020 18:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589309217;
 bh=IBzPNGU6JVi3ujqghisICBxppoKw3esDdSo4Y4W+hko=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IwstgDifEnYB9Ua4b/TSKANE5TX99jEGch2yiVXd/vS0MgGSZ9rvMDTFnqeRLIQAI
 Bcuus5kiTxOUc6+MSPDnqRISQ7KcURIJEX5wh/lLZOhx0fmy6Q+OQaN0sb2PYrWKa0
 +vv6tjQmvZllPfBXaRpvZ3GZsWRgcQMlZi5QQX/I=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 09/12] mm: consolidate pte_index() and pte_offset_*()
 definitions
Date: Tue, 12 May 2020 21:44:19 +0300
Message-Id: <20200512184422.12418-10-rppt@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200512184422.12418-1-rppt@kernel.org>
References: <20200512184422.12418-1-rppt@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_114657_914461_AA287975 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Guo Ren <guoren@kernel.org>, linux-csky@vger.kernel.org,
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
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
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

All architectures define pte_index() as

	(address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1)

and all architectures define pte_offset_kernel() as an entry
in the array of PTEs indexed by the pte_index().

For the most architectures the pte_offset_kernel() implementation relies on
the availability of pmd_page_vaddr() that converts a PMD entry value to the
virtual address of the page containing PTEs array.

Let's move x86 definitions of the PTE accessors to the generic place in
<linux/pgtable.h> and then simply drop the respective definitions from the
other architectures.

The architectures that didn't provide pmd_page_vaddr() are updated to have
that defined.

The generic implementation of pte_offset_kernel() can be overridden by an
architecture and alpha makes use of this because it has special ordering
requirements for its version of pte_offset_kernel().

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/alpha/include/asm/pgtable.h             |  4 +--
 arch/arc/include/asm/pgtable.h               | 15 ----------
 arch/arm/include/asm/pgtable.h               | 15 ----------
 arch/arm64/include/asm/pgtable.h             | 10 +++----
 arch/csky/include/asm/pgtable.h              | 16 -----------
 arch/hexagon/include/asm/pgtable.h           | 25 +++--------------
 arch/ia64/include/asm/pgtable.h              |  9 ------
 arch/m68k/include/asm/mcf_pgtable.h          | 12 +-------
 arch/m68k/include/asm/motorola_pgalloc.h     |  2 +-
 arch/m68k/include/asm/motorola_pgtable.h     | 11 +-------
 arch/m68k/include/asm/sun3_pgtable.h         | 15 ++++------
 arch/m68k/mm/init.c                          |  2 +-
 arch/microblaze/include/asm/pgtable.h        | 13 +++------
 arch/mips/include/asm/pgtable-32.h           | 12 --------
 arch/mips/include/asm/pgtable-64.h           | 11 --------
 arch/mips/kvm/mmu.c                          | 20 +++++++-------
 arch/mips/kvm/trap_emul.c                    |  2 +-
 arch/nds32/include/asm/pgtable.h             | 12 +++-----
 arch/nios2/include/asm/pgtable.h             | 14 +++-------
 arch/openrisc/include/asm/pgtable.h          | 23 ++++------------
 arch/parisc/include/asm/pgtable.h            | 15 +++-------
 arch/powerpc/include/asm/book3s/32/pgtable.h | 13 ++-------
 arch/powerpc/include/asm/book3s/64/pgtable.h |  8 ------
 arch/powerpc/include/asm/nohash/32/pgtable.h | 13 ++-------
 arch/powerpc/include/asm/nohash/64/pgtable.h |  7 -----
 arch/powerpc/include/asm/pgtable.h           |  7 +++++
 arch/riscv/include/asm/pgtable.h             | 10 -------
 arch/riscv/mm/init.c                         |  6 ++--
 arch/s390/include/asm/pgtable.h              | 10 ++-----
 arch/s390/mm/pageattr.c                      |  2 +-
 arch/sh/include/asm/pgtable_32.h             | 15 ++++------
 arch/sh/include/asm/pgtable_64.h             | 12 --------
 arch/sparc/include/asm/pgalloc_64.h          |  2 +-
 arch/sparc/include/asm/pgtable_32.h          | 15 ++++------
 arch/sparc/include/asm/pgtable_64.h          | 12 ++------
 arch/sparc/mm/srmmu.c                        | 10 -------
 arch/um/include/asm/pgtable.h                | 13 ---------
 arch/unicore32/include/asm/pgtable.h         |  9 ------
 arch/x86/include/asm/pgtable.h               | 19 -------------
 arch/x86/include/asm/pgtable_32.h            | 11 --------
 arch/x86/include/asm/pgtable_64.h            |  4 ---
 arch/xtensa/include/asm/pgtable.h            | 10 +------
 include/linux/pgtable.h                      | 29 ++++++++++++++++++++
 43 files changed, 113 insertions(+), 382 deletions(-)

diff --git a/arch/alpha/include/asm/pgtable.h b/arch/alpha/include/asm/pgtable.h
index 1c263922beb3..dac20d03b727 100644
--- a/arch/alpha/include/asm/pgtable.h
+++ b/arch/alpha/include/asm/pgtable.h
@@ -314,9 +314,7 @@ extern inline pte_t * pte_offset_kernel(pmd_t * dir, unsigned long address)
 	smp_read_barrier_depends(); /* see above */
 	return ret;
 }
-
-#define pte_offset_map(dir,addr)	pte_offset_kernel((dir),(addr))
-#define pte_unmap(pte)			do { } while (0)
+#define pte_offset_kernel pte_offset_kernel
 
 extern pgd_t swapper_pg_dir[1024];
 
diff --git a/arch/arc/include/asm/pgtable.h b/arch/arc/include/asm/pgtable.h
index 29137bcedd93..1146905f594b 100644
--- a/arch/arc/include/asm/pgtable.h
+++ b/arch/arc/include/asm/pgtable.h
@@ -248,9 +248,6 @@
 extern char empty_zero_page[PAGE_SIZE];
 #define ZERO_PAGE(vaddr)	(virt_to_page(empty_zero_page))
 
-#define pte_unmap(pte)		do { } while (0)
-#define pte_unmap_nested(pte)		do { } while (0)
-
 #define set_pte(pteptr, pteval)	((*(pteptr)) = (pteval))
 #define set_pmd(pmdptr, pmdval)	(*(pmdptr) = pmdval)
 
@@ -282,18 +279,6 @@ static inline void pmd_set(pmd_t *pmdp, pte_t *ptep)
 
 /* Don't use virt_to_pfn for macros below: could cause truncations for PAE40*/
 #define pte_pfn(pte)		(pte_val(pte) >> PAGE_SHIFT)
-#define __pte_index(addr)	(((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-
-/*
- * pte_offset gets a @ptr to PMD entry (PGD in our 2-tier paging system)
- * and returns ptr to PTE entry corresponding to @addr
- */
-#define pte_offset(dir, addr) ((pte_t *)(pmd_page_vaddr(*dir)) +\
-					 __pte_index(addr))
-
-/* No mapping of Page Tables in high mem etc, so following same as above */
-#define pte_offset_kernel(dir, addr)		pte_offset(dir, addr)
-#define pte_offset_map(dir, addr)		pte_offset(dir, addr)
 
 /* Zoo of pte_xxx function */
 #define pte_read(pte)		(pte_val(pte) & _PAGE_READ)
diff --git a/arch/arm/include/asm/pgtable.h b/arch/arm/include/asm/pgtable.h
index 38c7cd8b014b..41543bc47660 100644
--- a/arch/arm/include/asm/pgtable.h
+++ b/arch/arm/include/asm/pgtable.h
@@ -183,21 +183,6 @@ static inline pte_t *pmd_page_vaddr(pmd_t pmd)
 
 #define pmd_page(pmd)		pfn_to_page(__phys_to_pfn(pmd_val(pmd) & PHYS_MASK))
 
-#ifndef CONFIG_HIGHPTE
-#define __pte_map(pmd)		pmd_page_vaddr(*(pmd))
-#define __pte_unmap(pte)	do { } while (0)
-#else
-#define __pte_map(pmd)		(pte_t *)kmap_atomic(pmd_page(*(pmd)))
-#define __pte_unmap(pte)	kunmap_atomic(pte)
-#endif
-
-#define pte_index(addr)		(((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-
-#define pte_offset_kernel(pmd,addr)	(pmd_page_vaddr(*(pmd)) + pte_index(addr))
-
-#define pte_offset_map(pmd,addr)	(__pte_map(pmd) + pte_index(addr))
-#define pte_unmap(pte)			__pte_unmap(pte)
-
 #define pte_pfn(pte)		((pte_val(pte) & PHYS_MASK) >> PAGE_SHIFT)
 #define pfn_pte(pfn,prot)	__pte(__pfn_to_phys(pfn) | pgprot_val(prot))
 
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 437c92ab2081..5e3ef4cb855a 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -506,15 +506,13 @@ static inline phys_addr_t pmd_page_paddr(pmd_t pmd)
 	return __pmd_to_phys(pmd);
 }
 
-static inline void pte_unmap(pte_t *pte) { }
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	return (unsigned long)__va(pmd_page_paddr(pmd));
+}
 
 /* Find an entry in the third-level page table. */
-#define pte_index(addr)		(((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-
 #define pte_offset_phys(dir,addr)	(pmd_page_paddr(READ_ONCE(*(dir))) + pte_index(addr) * sizeof(pte_t))
-#define pte_offset_kernel(dir,addr)	((pte_t *)__va(pte_offset_phys((dir), (addr))))
-
-#define pte_offset_map(dir,addr)	pte_offset_kernel((dir), (addr))
 
 #define pte_set_fixmap(addr)		((pte_t *)set_fixmap_offset(FIX_PTE, addr))
 #define pte_set_fixmap_offset(pmd, addr)	pte_set_fixmap(pte_offset_phys(pmd, addr))
diff --git a/arch/csky/include/asm/pgtable.h b/arch/csky/include/asm/pgtable.h
index 2eff4aea51b3..bcef7e67ac2f 100644
--- a/arch/csky/include/asm/pgtable.h
+++ b/arch/csky/include/asm/pgtable.h
@@ -32,13 +32,6 @@
 #define pgd_ERROR(e) \
 	pr_err("%s:%d: bad pgd %08lx.\n", __FILE__, __LINE__, pgd_val(e))
 
-/* Find an entry in the third-level page table.. */
-#define __pte_offset_t(address) \
-	(((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir, address) \
-	(pmd_page_vaddr(*(dir)) + __pte_offset_t(address))
-#define pte_offset_map(dir, address) \
-	((pte_t *)page_address(pmd_page(*(dir))) + __pte_offset_t(address))
 #define pmd_page(pmd)	(pfn_to_page(pmd_phys(pmd) >> PAGE_SHIFT))
 #define pte_clear(mm, addr, ptep)	set_pte((ptep), \
 	(((unsigned int) addr & PAGE_OFFSET) ? __pte(_PAGE_GLOBAL) : __pte(0)))
@@ -54,8 +47,6 @@
 #define _PAGE_CHG_MASK	(PAGE_MASK | _PAGE_ACCESSED | _PAGE_MODIFIED | \
 			 _CACHE_MASK)
 
-#define pte_unmap(pte)	((void)(pte))
-
 #define __swp_type(x)			(((x).val >> 4) & 0xff)
 #define __swp_offset(x)			((x).val >> 12)
 #define __swp_entry(type, offset)	((swp_entry_t) {((type) << 4) | \
@@ -286,13 +277,6 @@ static inline pgd_t *pgd_offset(struct mm_struct *mm, unsigned long address)
 	return mm->pgd + pgd_index(address);
 }
 
-/* Find an entry in the third-level page table.. */
-static inline pte_t *pte_offset(pmd_t *dir, unsigned long address)
-{
-	return (pte_t *) (pmd_page_vaddr(*dir)) +
-		((address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1));
-}
-
 extern pgd_t swapper_pg_dir[PTRS_PER_PGD];
 extern void paging_init(void);
 
diff --git a/arch/hexagon/include/asm/pgtable.h b/arch/hexagon/include/asm/pgtable.h
index 8df6e2702b53..f15bbaa88ba8 100644
--- a/arch/hexagon/include/asm/pgtable.h
+++ b/arch/hexagon/include/asm/pgtable.h
@@ -403,31 +403,14 @@ static inline int pte_exec(pte_t pte)
  */
 #define set_pte_at(mm, addr, ptep, pte) set_pte(ptep, pte)
 
-/*
- * May need to invoke the virtual machine as well...
- */
-#define pte_unmap(pte)		do { } while (0)
-#define pte_unmap_nested(pte)	do { } while (0)
-
-/*
- * pte_offset_map - returns the linear address of the page table entry
- * corresponding to an address
- */
-#define pte_offset_map(dir, address)                                    \
-	((pte_t *)page_address(pmd_page(*(dir))) + __pte_offset(address))
-
-#define pte_offset_map_nested(pmd, addr) pte_offset_map(pmd, addr)
-
-/* pte_offset_kernel - kernel version of pte_offset */
-#define pte_offset_kernel(dir, address) \
-	((pte_t *) (unsigned long) __va(pmd_val(*dir) & PAGE_MASK) \
-				+  __pte_offset(address))
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	return (unsigned long)__va(pmd_val(pmd) & PAGE_MASK);
+}
 
 /* ZERO_PAGE - returns the globally shared zero page */
 #define ZERO_PAGE(vaddr) (virt_to_page(&empty_zero_page))
 
-#define __pte_offset(address) (((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-
 /*
  * Swap/file PTE definitions.  If _PAGE_PRESENT is zero, the rest of the PTE is
  * interpreted as swap information.  The remaining free bits are interpreted as
diff --git a/arch/ia64/include/asm/pgtable.h b/arch/ia64/include/asm/pgtable.h
index 3399824ad8a5..b9ce7d78a33f 100644
--- a/arch/ia64/include/asm/pgtable.h
+++ b/arch/ia64/include/asm/pgtable.h
@@ -393,15 +393,6 @@ pgd_offset (const struct mm_struct *mm, unsigned long address)
 #define pmd_offset(dir,addr) \
 	((pmd_t *) pud_page_vaddr(*(dir)) + (((addr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1)))
 
-/*
- * Find an entry in the third-level page table.  This looks more complicated than it
- * should be because some platforms place page tables in high memory.
- */
-#define pte_index(addr)	 	(((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir,addr)	((pte_t *) pmd_page_vaddr(*(dir)) + pte_index(addr))
-#define pte_offset_map(dir,addr)	pte_offset_kernel(dir, addr)
-#define pte_unmap(pte)			do { } while (0)
-
 /* atomic versions of the some PTE manipulations: */
 
 static inline int
diff --git a/arch/m68k/include/asm/mcf_pgtable.h b/arch/m68k/include/asm/mcf_pgtable.h
index 737e826294f3..59f7d5fca378 100644
--- a/arch/m68k/include/asm/mcf_pgtable.h
+++ b/arch/m68k/include/asm/mcf_pgtable.h
@@ -170,7 +170,7 @@ static inline void pgd_set(pgd_t *pgdp, pmd_t *pmdp)
 }
 
 #define __pte_page(pte)	((unsigned long) (pte_val(pte) & PAGE_MASK))
-#define __pmd_page(pmd)	((unsigned long) (pmd_val(pmd)))
+#define pmd_page_vaddr(pmd)	((unsigned long) (pmd_val(pmd)))
 
 static inline int pte_none(pte_t pte)
 {
@@ -321,13 +321,6 @@ extern pgd_t kernel_pg_dir[PTRS_PER_PGD];
  */
 #define pgd_offset_k(address)	pgd_offset(&init_mm, address)
 
-/*
- * Find an entry in the third-level pagetable.
- */
-#define __pte_offset(address)	((address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir, address) \
-	((pte_t *) __pmd_page(*(dir)) + __pte_offset(address))
-
 /*
  * Encode and de-code a swap entry (must be !pte_none(e) && !pte_present(e))
  */
@@ -340,9 +333,6 @@ extern pgd_t kernel_pg_dir[PTRS_PER_PGD];
 
 #define pmd_page(pmd)		(pfn_to_page(pmd_val(pmd) >> PAGE_SHIFT))
 
-#define pte_offset_map(pmdp, addr) ((pte_t *)__pmd_page(*pmdp) + \
-				       __pte_offset(addr))
-#define pte_unmap(pte)		((void) 0)
 #define pfn_pte(pfn, prot)	__pte(((pfn) << PAGE_SHIFT) | pgprot_val(prot))
 #define pte_pfn(pte)		(pte_val(pte) >> PAGE_SHIFT)
 
diff --git a/arch/m68k/include/asm/motorola_pgalloc.h b/arch/m68k/include/asm/motorola_pgalloc.h
index f3cb453a07b7..b4fc3b4f6bb3 100644
--- a/arch/m68k/include/asm/motorola_pgalloc.h
+++ b/arch/m68k/include/asm/motorola_pgalloc.h
@@ -88,7 +88,7 @@ static inline void pmd_populate(struct mm_struct *mm, pmd_t *pmd, pgtable_t page
 {
 	pmd_set(pmd, page);
 }
-#define pmd_pgtable(pmd) ((pgtable_t)__pmd_page(pmd))
+#define pmd_pgtable(pmd) ((pgtable_t)pmd_page_vaddr(pmd))
 
 static inline void pud_populate(struct mm_struct *mm, pud_t *pud, pmd_t *pmd)
 {
diff --git a/arch/m68k/include/asm/motorola_pgtable.h b/arch/m68k/include/asm/motorola_pgtable.h
index e1594acf7c7e..345abf4d4e50 100644
--- a/arch/m68k/include/asm/motorola_pgtable.h
+++ b/arch/m68k/include/asm/motorola_pgtable.h
@@ -128,7 +128,7 @@ static inline void pud_set(pud_t *pudp, pmd_t *pmdp)
 }
 
 #define __pte_page(pte) ((unsigned long)__va(pte_val(pte) & PAGE_MASK))
-#define __pmd_page(pmd) ((unsigned long)__va(pmd_val(pmd) & _TABLE_MASK))
+#define pmd_page_vaddr(pmd) ((unsigned long)__va(pmd_val(pmd) & _TABLE_MASK))
 #define pud_page_vaddr(pud) ((unsigned long)__va(pud_val(pud) & _TABLE_MASK))
 
 
@@ -218,15 +218,6 @@ static inline pmd_t *pmd_offset(pud_t *dir, unsigned long address)
 	return (pmd_t *)pud_page_vaddr(*dir) + ((address >> PMD_SHIFT) & (PTRS_PER_PMD-1));
 }
 
-/* Find an entry in the third-level page table.. */
-static inline pte_t *pte_offset_kernel(pmd_t *pmdp, unsigned long address)
-{
-	return (pte_t *)__pmd_page(*pmdp) + ((address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1));
-}
-
-#define pte_offset_map(pmdp,address) ((pte_t *)__pmd_page(*pmdp) + (((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1)))
-#define pte_unmap(pte)		((void)0)
-
 /* Encode and de-code a swap entry (must be !pte_none(e) && !pte_present(e)) */
 #define __swp_type(x)		(((x).val >> 4) & 0xff)
 #define __swp_offset(x)		((x).val >> 12)
diff --git a/arch/m68k/include/asm/sun3_pgtable.h b/arch/m68k/include/asm/sun3_pgtable.h
index 0caa18a08437..1414fc363743 100644
--- a/arch/m68k/include/asm/sun3_pgtable.h
+++ b/arch/m68k/include/asm/sun3_pgtable.h
@@ -112,8 +112,11 @@ static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 
 #define __pte_page(pte) \
 ((unsigned long) __va ((pte_val (pte) & SUN3_PAGE_PGNUM_MASK) << PAGE_SHIFT))
-#define __pmd_page(pmd) \
-((unsigned long) __va (pmd_val (pmd) & PAGE_MASK))
+
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	return (unsigned long)__va(pmd_val(pmd) & PAGE_MASK);
+}
 
 static inline int pte_none (pte_t pte) { return !pte_val (pte); }
 static inline int pte_present (pte_t pte) { return pte_val (pte) & SUN3_PAGE_VALID; }
@@ -127,7 +130,7 @@ static inline void pte_clear (struct mm_struct *mm, unsigned long addr, pte_t *p
 ({ pte_t __pte; pte_val(__pte) = pfn | pgprot_val(pgprot); __pte; })
 
 #define pte_page(pte)		virt_to_page(__pte_page(pte))
-#define pmd_page(pmd)		virt_to_page(__pmd_page(pmd))
+#define pmd_page(pmd)		virt_to_page(pmd_page_vaddr(pmd))
 
 
 static inline int pmd_none2 (pmd_t *pmd) { return !pmd_val (*pmd); }
@@ -180,12 +183,6 @@ extern pgd_t kernel_pg_dir[PTRS_PER_PGD];
 /* Find an entry in a kernel pagetable directory. */
 #define pgd_offset_k(address) pgd_offset(&init_mm, address)
 
-/* Find an entry in the third-level pagetable. */
-#define pte_index(address) ((address >> PAGE_SHIFT) & (PTRS_PER_PTE-1))
-#define pte_offset_kernel(pmd, address) ((pte_t *) __pmd_page(*pmd) + pte_index(address))
-#define pte_offset_map(pmd, address) ((pte_t *)page_address(pmd_page(*pmd)) + pte_index(address))
-#define pte_unmap(pte) do { } while (0)
-
 /* Macros to (de)construct the fake PTEs representing swap pages. */
 #define __swp_type(x)		((x).val & 0x7F)
 #define __swp_offset(x)		(((x).val) >> 7)
diff --git a/arch/m68k/mm/init.c b/arch/m68k/mm/init.c
index 6d3147662ff2..53040857a9ed 100644
--- a/arch/m68k/mm/init.c
+++ b/arch/m68k/mm/init.c
@@ -141,7 +141,7 @@ static inline void init_pointer_tables(void)
 			if (!pmd_present(*pmd))
 				continue;
 
-			pte_dir = (pte_t *)__pmd_page(*pmd);
+			pte_dir = (pte_t *)pmd_page_vaddr(*pmd);
 			init_pointer_table(pte_dir, TABLE_PTE);
 		}
 	}
diff --git a/arch/microblaze/include/asm/pgtable.h b/arch/microblaze/include/asm/pgtable.h
index ee2115abf405..e53eb962fbed 100644
--- a/arch/microblaze/include/asm/pgtable.h
+++ b/arch/microblaze/include/asm/pgtable.h
@@ -438,7 +438,10 @@ static inline void ptep_mkdirty(struct mm_struct *mm,
 /* Convert pmd entry to page */
 /* our pmd entry is an effective address of pte table*/
 /* returns effective address of the pmd entry*/
-#define pmd_page_kernel(pmd)	((unsigned long) (pmd_val(pmd) & PAGE_MASK))
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	return ((unsigned long) (pmd_val(pmd) & PAGE_MASK));
+}
 
 /* returns struct *page of the pmd entry*/
 #define pmd_page(pmd)	(pfn_to_page(__pa(pmd_val(pmd)) >> PAGE_SHIFT))
@@ -451,14 +454,6 @@ static inline void ptep_mkdirty(struct mm_struct *mm,
 #define pgd_offset(mm, address)	 ((mm)->pgd + pgd_index(address))
 
 /* Find an entry in the third-level page table.. */
-#define pte_index(address)		\
-	(((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir, addr)	\
-	((pte_t *) pmd_page_kernel(*(dir)) + pte_index(addr))
-#define pte_offset_map(dir, addr)		\
-	((pte_t *) kmap_atomic(pmd_page(*(dir))) + pte_index(addr))
-
-#define pte_unmap(pte)		kunmap_atomic(pte)
 
 extern pgd_t swapper_pg_dir[PTRS_PER_PGD];
 
diff --git a/arch/mips/include/asm/pgtable-32.h b/arch/mips/include/asm/pgtable-32.h
index 1945c8970141..c04c5238261a 100644
--- a/arch/mips/include/asm/pgtable-32.h
+++ b/arch/mips/include/asm/pgtable-32.h
@@ -205,18 +205,6 @@ static inline pte_t pfn_pte(unsigned long pfn, pgprot_t prot)
 /* to find an entry in a page-table-directory */
 #define pgd_offset(mm, addr)	((mm)->pgd + pgd_index(addr))
 
-/* Find an entry in the third-level page table.. */
-#define __pte_offset(address)						\
-	(((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset(dir, address)					\
-	((pte_t *) pmd_page_vaddr(*(dir)) + __pte_offset(address))
-#define pte_offset_kernel(dir, address)					\
-	((pte_t *) pmd_page_vaddr(*(dir)) + __pte_offset(address))
-
-#define pte_offset_map(dir, address)					\
-	((pte_t *)page_address(pmd_page(*(dir))) + __pte_offset(address))
-#define pte_unmap(pte) ((void)(pte))
-
 #if defined(CONFIG_CPU_R3K_TLB)
 
 /* Swap entries must have VALID bit cleared. */
diff --git a/arch/mips/include/asm/pgtable-64.h b/arch/mips/include/asm/pgtable-64.h
index ee5dc0c145b9..430abb19ce82 100644
--- a/arch/mips/include/asm/pgtable-64.h
+++ b/arch/mips/include/asm/pgtable-64.h
@@ -344,17 +344,6 @@ static inline pmd_t *pmd_offset(pud_t * pud, unsigned long address)
 }
 #endif
 
-/* Find an entry in the third-level page table.. */
-#define __pte_offset(address)						\
-	(((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset(dir, address)					\
-	((pte_t *) pmd_page_vaddr(*(dir)) + __pte_offset(address))
-#define pte_offset_kernel(dir, address)					\
-	((pte_t *) pmd_page_vaddr(*(dir)) + __pte_offset(address))
-#define pte_offset_map(dir, address)					\
-	((pte_t *)page_address(pmd_page(*(dir))) + __pte_offset(address))
-#define pte_unmap(pte) ((void)(pte))
-
 /*
  * Initialize a new pgd / pmd table with invalid pointers.
  */
diff --git a/arch/mips/kvm/mmu.c b/arch/mips/kvm/mmu.c
index 7dad7a293eae..49bd160f4d85 100644
--- a/arch/mips/kvm/mmu.c
+++ b/arch/mips/kvm/mmu.c
@@ -168,7 +168,7 @@ static pte_t *kvm_mips_walk_pgd(pgd_t *pgd, struct kvm_mmu_memory_cache *cache,
 		clear_page(new_pte);
 		pmd_populate_kernel(NULL, pmd, new_pte);
 	}
-	return pte_offset(pmd, addr);
+	return pte_offset_kernel(pmd, addr);
 }
 
 /* Caller must hold kvm->mm_lock */
@@ -187,8 +187,8 @@ static pte_t *kvm_mips_pte_for_gpa(struct kvm *kvm,
 static bool kvm_mips_flush_gpa_pte(pte_t *pte, unsigned long start_gpa,
 				   unsigned long end_gpa)
 {
-	int i_min = __pte_offset(start_gpa);
-	int i_max = __pte_offset(end_gpa);
+	int i_min = pte_index(start_gpa);
+	int i_max = pte_index(end_gpa);
 	bool safe_to_remove = (i_min == 0 && i_max == PTRS_PER_PTE - 1);
 	int i;
 
@@ -215,7 +215,7 @@ static bool kvm_mips_flush_gpa_pmd(pmd_t *pmd, unsigned long start_gpa,
 		if (!pmd_present(pmd[i]))
 			continue;
 
-		pte = pte_offset(pmd + i, 0);
+		pte = pte_offset_kernel(pmd + i, 0);
 		if (i == i_max)
 			end = end_gpa;
 
@@ -312,8 +312,8 @@ static int kvm_mips_##name##_pte(pte_t *pte, unsigned long start,	\
 				 unsigned long end)			\
 {									\
 	int ret = 0;							\
-	int i_min = __pte_offset(start);				\
-	int i_max = __pte_offset(end);					\
+	int i_min = pte_index(start);				\
+	int i_max = pte_index(end);					\
 	int i;								\
 	pte_t old, new;							\
 									\
@@ -346,7 +346,7 @@ static int kvm_mips_##name##_pmd(pmd_t *pmd, unsigned long start,	\
 		if (!pmd_present(pmd[i]))				\
 			continue;					\
 									\
-		pte = pte_offset(pmd + i, 0);				\
+		pte = pte_offset_kernel(pmd + i, 0);				\
 		if (i == i_max)						\
 			cur_end = end;					\
 									\
@@ -842,8 +842,8 @@ void kvm_trap_emul_invalidate_gva(struct kvm_vcpu *vcpu, unsigned long addr,
 static bool kvm_mips_flush_gva_pte(pte_t *pte, unsigned long start_gva,
 				   unsigned long end_gva)
 {
-	int i_min = __pte_offset(start_gva);
-	int i_max = __pte_offset(end_gva);
+	int i_min = pte_index(start_gva);
+	int i_max = pte_index(end_gva);
 	bool safe_to_remove = (i_min == 0 && i_max == PTRS_PER_PTE - 1);
 	int i;
 
@@ -877,7 +877,7 @@ static bool kvm_mips_flush_gva_pmd(pmd_t *pmd, unsigned long start_gva,
 		if (!pmd_present(pmd[i]))
 			continue;
 
-		pte = pte_offset(pmd + i, 0);
+		pte = pte_offset_kernel(pmd + i, 0);
 		if (i == i_max)
 			end = end_gva;
 
diff --git a/arch/mips/kvm/trap_emul.c b/arch/mips/kvm/trap_emul.c
index 5a11e83dffe6..60763efa723e 100644
--- a/arch/mips/kvm/trap_emul.c
+++ b/arch/mips/kvm/trap_emul.c
@@ -594,7 +594,7 @@ static void kvm_mips_emul_free_gva_pt(pgd_t *pgd)
 				pmd_va = pud_va | (k << PMD_SHIFT);
 				if (pmd_va >= end)
 					break;
-				pte = pte_offset(pmd + k, 0);
+				pte = pte_offset_kernel(pmd + k, 0);
 				pte_free_kernel(NULL, pte);
 			}
 			pmd_free(NULL, pmd);
diff --git a/arch/nds32/include/asm/pgtable.h b/arch/nds32/include/asm/pgtable.h
index 95c75282cb47..fc97480cbdd5 100644
--- a/arch/nds32/include/asm/pgtable.h
+++ b/arch/nds32/include/asm/pgtable.h
@@ -186,14 +186,10 @@ extern void paging_init(void);
 #define pte_clear(mm,addr,ptep)	set_pte_at((mm),(addr),(ptep), __pte(0))
 #define pte_page(pte)		(pfn_to_page(pte_pfn(pte)))
 
-#define pte_index(address)                   (((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir, address)	     ((pte_t *)pmd_page_kernel(*(dir)) + pte_index(address))
-#define pte_offset_map(dir, address)	     ((pte_t *)page_address(pmd_page(*(dir))) + pte_index(address))
-#define pte_offset_map_nested(dir, address)  pte_offset_map(dir, address)
-#define pmd_page_kernel(pmd)	  	     ((unsigned long) __va(pmd_val(pmd) & PAGE_MASK))
-
-#define pte_unmap(pte)		do { } while (0)
-#define pte_unmap_nested(pte)	do { } while (0)
+static unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	return ((unsigned long) __va(pmd_val(pmd) & PAGE_MASK));
+}
 
 #define set_pte_at(mm,addr,ptep,pteval) set_pte(ptep,pteval)
 /*
diff --git a/arch/nios2/include/asm/pgtable.h b/arch/nios2/include/asm/pgtable.h
index f0d4921d05ad..e93e17caf965 100644
--- a/arch/nios2/include/asm/pgtable.h
+++ b/arch/nios2/include/asm/pgtable.h
@@ -236,27 +236,21 @@ static inline void pte_clear(struct mm_struct *mm,
  */
 #define mk_pte(page, prot)	(pfn_pte(page_to_pfn(page), prot))
 
-#define pte_unmap(pte)	do { } while (0)
-
 /*
  * Conversion functions: convert a page and protection to a page entry,
  * and a page entry and page directory to the page they refer to.
  */
 #define pmd_phys(pmd)		virt_to_phys((void *)pmd_val(pmd))
 #define pmd_page(pmd)		(pfn_to_page(pmd_phys(pmd) >> PAGE_SHIFT))
-#define pmd_page_vaddr(pmd)	pmd_val(pmd)
 
-#define pte_offset_map(dir, addr)			\
-	((pte_t *) page_address(pmd_page(*dir)) +	\
-	 (((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1)))
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	return pmd_val(pmd);
+}
 
 /* to find an entry in a kernel page-table-directory */
 #define pgd_offset_k(addr)	pgd_offset(&init_mm, addr)
 
-/* Get the address to the PTE for a vaddr in specific directory */
-#define pte_offset_kernel(dir, addr)			\
-	((pte_t *) pmd_page_vaddr(*(dir)) +		\
-	 (((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1)))
 
 #define pte_ERROR(e) \
 	pr_err("%s:%d: bad pte %08lx.\n", \
diff --git a/arch/openrisc/include/asm/pgtable.h b/arch/openrisc/include/asm/pgtable.h
index f4273d387243..7de061304b6d 100644
--- a/arch/openrisc/include/asm/pgtable.h
+++ b/arch/openrisc/include/asm/pgtable.h
@@ -363,7 +363,11 @@ static inline void pmd_set(pmd_t *pmdp, pte_t *ptep)
 }
 
 #define pmd_page(pmd)		(pfn_to_page(pmd_val(pmd) >> PAGE_SHIFT))
-#define pmd_page_kernel(pmd)    ((unsigned long) __va(pmd_val(pmd) & PAGE_MASK))
+
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	return ((unsigned long) __va(pmd_val(pmd) & PAGE_MASK));
+}
 
 /* to find an entry in a page-table-directory. */
 #define pgd_index(address)      ((address >> PGDIR_SHIFT) & (PTRS_PER_PGD-1))
@@ -378,23 +382,6 @@ static inline void pmd_set(pmd_t *pmdp, pte_t *ptep)
 #define __pmd_offset(address) \
 	(((address) >> PMD_SHIFT) & (PTRS_PER_PMD-1))
 
-/*
- * the pte page can be thought of an array like this: pte_t[PTRS_PER_PTE]
- *
- * this macro returns the index of the entry in the pte page which would
- * control the given virtual address
- */
-#define __pte_offset(address)                   \
-	(((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir, address)         \
-	((pte_t *) pmd_page_kernel(*(dir)) +  __pte_offset(address))
-#define pte_offset_map(dir, address)	        \
-	((pte_t *)page_address(pmd_page(*(dir))) + __pte_offset(address))
-#define pte_offset_map_nested(dir, address)     \
-	pte_offset_map(dir, address)
-
-#define pte_unmap(pte)          do { } while (0)
-#define pte_unmap_nested(pte)   do { } while (0)
 #define pte_pfn(x)		((unsigned long)(((x).pte)) >> PAGE_SHIFT)
 #define pfn_pte(pfn, prot)  __pte((((pfn) << PAGE_SHIFT)) | pgprot_val(prot))
 
diff --git a/arch/parisc/include/asm/pgtable.h b/arch/parisc/include/asm/pgtable.h
index c1eb5a89b5e5..3eb34953b60a 100644
--- a/arch/parisc/include/asm/pgtable.h
+++ b/arch/parisc/include/asm/pgtable.h
@@ -429,7 +429,10 @@ static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 
 #define pte_page(pte)		(pfn_to_page(pte_pfn(pte)))
 
-#define pmd_page_vaddr(pmd)	((unsigned long) __va(pmd_address(pmd)))
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	return ((unsigned long) __va(pmd_address(pmd)));
+}
 
 #define __pmd_page(pmd) ((unsigned long) __va(pmd_address(pmd)))
 #define pmd_page(pmd)	virt_to_page((void *)__pmd_page(pmd))
@@ -453,16 +456,6 @@ static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 #define pmd_offset(dir,addr) ((pmd_t *) dir)
 #endif
 
-/* Find an entry in the third-level page table.. */ 
-#define pte_index(address) (((address) >> PAGE_SHIFT) & (PTRS_PER_PTE-1))
-#define pte_offset_kernel(pmd, address) \
-	((pte_t *) pmd_page_vaddr(*(pmd)) + pte_index(address))
-#define pte_offset_map(pmd, address) pte_offset_kernel(pmd, address)
-#define pte_unmap(pte) do { } while (0)
-
-#define pte_unmap(pte)			do { } while (0)
-#define pte_unmap_nested(pte)		do { } while (0)
-
 extern void paging_init (void);
 
 /* Used for deferring calls to flush_dcache_page() */
diff --git a/arch/powerpc/include/asm/book3s/32/pgtable.h b/arch/powerpc/include/asm/book3s/32/pgtable.h
index 6052b72216a6..fc54227363b5 100644
--- a/arch/powerpc/include/asm/book3s/32/pgtable.h
+++ b/arch/powerpc/include/asm/book3s/32/pgtable.h
@@ -112,6 +112,9 @@ static inline bool pte_user(pte_t pte)
 #define PMD_TABLE_SIZE	0
 #define PUD_TABLE_SIZE	0
 #define PGD_TABLE_SIZE	(sizeof(pgd_t) << PGD_INDEX_SIZE)
+
+/* Bits to mask out from a PMD to get to the PTE page */
+#define PMD_MASKED_BITS		(PTE_TABLE_SIZE - 1)
 #endif	/* __ASSEMBLY__ */
 
 #define PTRS_PER_PTE	(1 << PTE_INDEX_SIZE)
@@ -348,8 +351,6 @@ static inline void __ptep_set_access_flags(struct vm_area_struct *vma,
 #define __HAVE_ARCH_PTE_SAME
 #define pte_same(A,B)	(((pte_val(A) ^ pte_val(B)) & ~_PAGE_HASHPTE) == 0)
 
-#define pmd_page_vaddr(pmd)	\
-	((unsigned long)__va(pmd_val(pmd) & ~(PTE_TABLE_SIZE - 1)))
 #define pmd_page(pmd)		\
 	pfn_to_page(pmd_val(pmd) >> PAGE_SHIFT)
 
@@ -360,14 +361,6 @@ static inline void __ptep_set_access_flags(struct vm_area_struct *vma,
 #define pgd_index(address)	 ((address) >> PGDIR_SHIFT)
 #define pgd_offset(mm, address)	 ((mm)->pgd + pgd_index(address))
 
-/* Find an entry in the third-level page table.. */
-#define pte_index(address)		\
-	(((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir, addr)	\
-	((pte_t *) pmd_page_vaddr(*(dir)) + pte_index(addr))
-#define pte_offset_map(dir, addr)	pte_offset_kernel((dir), (addr))
-static inline void pte_unmap(pte_t *pte) { }
-
 /*
  * Encode and decode a swap entry.
  * Note that the bits we use in a PTE for representing a swap entry
diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
index d17bc3ff820f..0a968074eae5 100644
--- a/arch/powerpc/include/asm/book3s/64/pgtable.h
+++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
@@ -1005,14 +1005,12 @@ extern struct page *p4d_page(p4d_t p4d);
 /* Pointers in the page table tree are physical addresses */
 #define __pgtable_ptr_val(ptr)	__pa(ptr)
 
-#define pmd_page_vaddr(pmd)	__va(pmd_val(pmd) & ~PMD_MASKED_BITS)
 #define pud_page_vaddr(pud)	__va(pud_val(pud) & ~PUD_MASKED_BITS)
 #define p4d_page_vaddr(p4d)	__va(p4d_val(p4d) & ~P4D_MASKED_BITS)
 
 #define pgd_index(address) (((address) >> (PGDIR_SHIFT)) & (PTRS_PER_PGD - 1))
 #define pud_index(address) (((address) >> (PUD_SHIFT)) & (PTRS_PER_PUD - 1))
 #define pmd_index(address) (((address) >> (PMD_SHIFT)) & (PTRS_PER_PMD - 1))
-#define pte_index(address) (((address) >> (PAGE_SHIFT)) & (PTRS_PER_PTE - 1))
 
 /*
  * Find an entry in a page-table-directory.  We combine the address region
@@ -1025,12 +1023,6 @@ extern struct page *p4d_page(p4d_t p4d);
 	(((pud_t *) p4d_page_vaddr(*(p4dp))) + pud_index(addr))
 #define pmd_offset(pudp,addr) \
 	(((pmd_t *) pud_page_vaddr(*(pudp))) + pmd_index(addr))
-#define pte_offset_kernel(dir,addr) \
-	(((pte_t *) pmd_page_vaddr(*(dir))) + pte_index(addr))
-
-#define pte_offset_map(dir,addr)	pte_offset_kernel((dir), (addr))
-
-static inline void pte_unmap(pte_t *pte) { }
 
 /* to find an entry in a kernel page-table-directory */
 /* This now only contains the vmalloc pages */
diff --git a/arch/powerpc/include/asm/nohash/32/pgtable.h b/arch/powerpc/include/asm/nohash/32/pgtable.h
index 3d0bc99dd520..cc2ed08d6424 100644
--- a/arch/powerpc/include/asm/nohash/32/pgtable.h
+++ b/arch/powerpc/include/asm/nohash/32/pgtable.h
@@ -29,6 +29,8 @@ extern int icache_44x_need_flush;
 #define PMD_TABLE_SIZE	0
 #define PUD_TABLE_SIZE	0
 #define PGD_TABLE_SIZE	(sizeof(pgd_t) << PGD_INDEX_SIZE)
+
+#define PMD_MASKED_BITS (PTE_TABLE_SIZE - 1)
 #endif	/* __ASSEMBLY__ */
 
 #define PTRS_PER_PTE	(1 << PTE_INDEX_SIZE)
@@ -347,8 +349,6 @@ static inline int pte_young(pte_t pte)
  * of the pte page.  -- paulus
  */
 #ifndef CONFIG_BOOKE
-#define pmd_page_vaddr(pmd)	\
-	((unsigned long)__va(pmd_val(pmd) & ~(PTE_TABLE_SIZE - 1)))
 #define pmd_page(pmd)		\
 	pfn_to_page(pmd_val(pmd) >> PAGE_SHIFT)
 #else
@@ -365,15 +365,6 @@ static inline int pte_young(pte_t pte)
 #define pgd_index(address)	 ((address) >> PGDIR_SHIFT)
 #define pgd_offset(mm, address)	 ((mm)->pgd + pgd_index(address))
 
-/* Find an entry in the third-level page table.. */
-#define pte_index(address)		\
-	(((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir, addr)	\
-	(pmd_bad(*(dir)) ? NULL : (pte_t *)pmd_page_vaddr(*(dir)) + \
-				  pte_index(addr))
-#define pte_offset_map(dir, addr)	pte_offset_kernel((dir), (addr))
-static inline void pte_unmap(pte_t *pte) { }
-
 /*
  * Encode and decode a swap entry.
  * Note that the bits we use in a PTE for representing a swap entry
diff --git a/arch/powerpc/include/asm/nohash/64/pgtable.h b/arch/powerpc/include/asm/nohash/64/pgtable.h
index b360f262b9c6..b964cdac2dae 100644
--- a/arch/powerpc/include/asm/nohash/64/pgtable.h
+++ b/arch/powerpc/include/asm/nohash/64/pgtable.h
@@ -193,13 +193,6 @@ static inline void p4d_set(p4d_t *p4dp, unsigned long val)
 #define pmd_offset(pudp,addr) \
   (((pmd_t *) pud_page_vaddr(*(pudp))) + (((addr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1)))
 
-#define pte_offset_kernel(dir,addr) \
-  (((pte_t *) pmd_page_vaddr(*(dir))) + (((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1)))
-
-#define pte_offset_map(dir,addr)	pte_offset_kernel((dir), (addr))
-
-static inline void pte_unmap(pte_t *pte) { }
-
 /* to find an entry in a kernel page-table-directory */
 /* This now only contains the vmalloc pages */
 #define pgd_offset_k(address) pgd_offset(&init_mm, address)
diff --git a/arch/powerpc/include/asm/pgtable.h b/arch/powerpc/include/asm/pgtable.h
index d917c41b5c62..1d58ac143cb4 100644
--- a/arch/powerpc/include/asm/pgtable.h
+++ b/arch/powerpc/include/asm/pgtable.h
@@ -57,6 +57,13 @@ static inline pgprot_t pte_pgprot(pte_t pte)
 	return __pgprot(pte_flags);
 }
 
+#ifndef pmd_page_vaddr
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	return ((unsigned long)__va(pmd_val(pmd) & ~PMD_MASKED_BITS));
+}
+#define pmd_page_vaddr pmd_page_vaddr
+#endif
 /*
  * ZERO_PAGE is a global shared page that is always zero: used
  * for zero-mapped memory areas etc..
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 950c69539d1a..8daa362419d8 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -209,16 +209,6 @@ static inline pte_t pfn_pte(unsigned long pfn, pgprot_t prot)
 
 #define mk_pte(page, prot)       pfn_pte(page_to_pfn(page), prot)
 
-#define pte_index(addr) (((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-
-static inline pte_t *pte_offset_kernel(pmd_t *pmd, unsigned long addr)
-{
-	return (pte_t *)pmd_page_vaddr(*pmd) + pte_index(addr);
-}
-
-#define pte_offset_map(dir, addr)	pte_offset_kernel((dir), (addr))
-#define pte_unmap(pte)			((void)(pte))
-
 static inline int pte_present(pte_t pte)
 {
 	return (pte_val(pte) & (_PAGE_PRESENT | _PAGE_PROT_NONE));
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 504b41d528cf..4016a6e427e9 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -235,12 +235,12 @@ static void __init create_pte_mapping(pte_t *ptep,
 				      uintptr_t va, phys_addr_t pa,
 				      phys_addr_t sz, pgprot_t prot)
 {
-	uintptr_t pte_index = pte_index(va);
+	uintptr_t pte_idx = pte_index(va);
 
 	BUG_ON(sz != PAGE_SIZE);
 
-	if (pte_none(ptep[pte_index]))
-		ptep[pte_index] = pfn_pte(PFN_DOWN(pa), prot);
+	if (pte_none(ptep[pte_idx]))
+		ptep[pte_idx] = pfn_pte(PFN_DOWN(pa), prot);
 }
 
 #ifndef __PAGETABLE_PMD_FOLDED
diff --git a/arch/s390/include/asm/pgtable.h b/arch/s390/include/asm/pgtable.h
index 22757203828d..9be3667e3a45 100644
--- a/arch/s390/include/asm/pgtable.h
+++ b/arch/s390/include/asm/pgtable.h
@@ -1229,7 +1229,6 @@ static inline pte_t mk_pte(struct page *page, pgprot_t pgprot)
 #define p4d_index(address) (((address) >> P4D_SHIFT) & (PTRS_PER_P4D-1))
 #define pud_index(address) (((address) >> PUD_SHIFT) & (PTRS_PER_PUD-1))
 #define pmd_index(address) (((address) >> PMD_SHIFT) & (PTRS_PER_PMD-1))
-#define pte_index(address) (((address) >> PAGE_SHIFT) & (PTRS_PER_PTE-1))
 
 #define pmd_deref(pmd) (pmd_val(pmd) & _SEGMENT_ENTRY_ORIGIN)
 #define pud_deref(pud) (pud_val(pud) & _REGION_ENTRY_ORIGIN)
@@ -1283,16 +1282,11 @@ static inline pmd_t *pmd_offset(pud_t *pud, unsigned long address)
 	return (pmd_t *) pud;
 }
 
-static inline pte_t *pte_offset(pmd_t *pmd, unsigned long address)
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
 {
-	return (pte_t *) pmd_deref(*pmd) + pte_index(address);
+	return (unsigned long) pmd_deref(pmd);
 }
 
-#define pte_offset_kernel(pmd, address) pte_offset(pmd, address)
-#define pte_offset_map(pmd, address) pte_offset_kernel(pmd, address)
-
-static inline void pte_unmap(pte_t *pte) { }
-
 static inline bool gup_fast_permitted(unsigned long start, unsigned long end)
 {
 	return end <= current->mm->context.asce_limit;
diff --git a/arch/s390/mm/pageattr.c b/arch/s390/mm/pageattr.c
index 397944b9906b..c5c52ec2b46f 100644
--- a/arch/s390/mm/pageattr.c
+++ b/arch/s390/mm/pageattr.c
@@ -85,7 +85,7 @@ static int walk_pte_level(pmd_t *pmdp, unsigned long addr, unsigned long end,
 {
 	pte_t *ptep, new;
 
-	ptep = pte_offset(pmdp, addr);
+	ptep = pte_offset_kernel(pmdp, addr);
 	do {
 		new = *ptep;
 		if (pte_none(new))
diff --git a/arch/sh/include/asm/pgtable_32.h b/arch/sh/include/asm/pgtable_32.h
index 4acce5f2cbf9..263ab5699f96 100644
--- a/arch/sh/include/asm/pgtable_32.h
+++ b/arch/sh/include/asm/pgtable_32.h
@@ -401,7 +401,11 @@ static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 	return pte;
 }
 
-#define pmd_page_vaddr(pmd)	((unsigned long)pmd_val(pmd))
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	return (unsigned long)pmd_val(pmd);
+}
+
 #define pmd_page(pmd)		(virt_to_page(pmd_val(pmd)))
 
 /* to find an entry in a page-table-directory. */
@@ -414,15 +418,6 @@ static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 #define pud_index(address)	(((address) >> PUD_SHIFT) & (PTRS_PER_PUD-1))
 #define pmd_index(address)	(((address) >> PMD_SHIFT) & (PTRS_PER_PMD-1))
 
-/* Find an entry in the third-level page table.. */
-#define pte_index(address)	((address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define __pte_offset(address)	pte_index(address)
-
-#define pte_offset_kernel(dir, address) \
-	((pte_t *) pmd_page_vaddr(*(dir)) + pte_index(address))
-#define pte_offset_map(dir, address)		pte_offset_kernel(dir, address)
-#define pte_unmap(pte)		do { } while (0)
-
 #ifdef CONFIG_X2TLB
 #define pte_ERROR(e) \
 	printk("%s:%d: bad pte %p(%08lx%08lx).\n", __FILE__, __LINE__, \
diff --git a/arch/sh/include/asm/pgtable_64.h b/arch/sh/include/asm/pgtable_64.h
index 27cc282ec6c0..7674d38bea5c 100644
--- a/arch/sh/include/asm/pgtable_64.h
+++ b/arch/sh/include/asm/pgtable_64.h
@@ -70,18 +70,6 @@ static __inline__ void set_pte(pte_t *pteptr, pte_t pteval)
 #define pmd_page(pmd) \
 	(virt_to_page(pmd_val(pmd)))
 
-/* PMD to PTE dereferencing */
-#define pte_index(address) \
-		((address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-
-#define __pte_offset(address)	pte_index(address)
-
-#define pte_offset_kernel(dir, addr) \
-		((pte_t *) ((pmd_val(*(dir))) & PAGE_MASK) + pte_index((addr)))
-
-#define pte_offset_map(dir,addr)	pte_offset_kernel(dir, addr)
-#define pte_unmap(pte)		do { } while (0)
-
 #ifndef __ASSEMBLY__
 /*
  * PTEL coherent flags.
diff --git a/arch/sparc/include/asm/pgalloc_64.h b/arch/sparc/include/asm/pgalloc_64.h
index 264e76ceccf6..a8dafc550985 100644
--- a/arch/sparc/include/asm/pgalloc_64.h
+++ b/arch/sparc/include/asm/pgalloc_64.h
@@ -67,7 +67,7 @@ void pte_free(struct mm_struct *mm, pgtable_t ptepage);
 
 #define pmd_populate_kernel(MM, PMD, PTE)	pmd_set(MM, PMD, PTE)
 #define pmd_populate(MM, PMD, PTE)		pmd_set(MM, PMD, PTE)
-#define pmd_pgtable(PMD)			((pte_t *)__pmd_page(PMD))
+#define pmd_pgtable(PMD)			((pte_t *)pmd_page_vaddr(PMD))
 
 void pgtable_free(void *table, bool is_page);
 
diff --git a/arch/sparc/include/asm/pgtable_32.h b/arch/sparc/include/asm/pgtable_32.h
index dc8f0f66bbf1..2fc29207e254 100644
--- a/arch/sparc/include/asm/pgtable_32.h
+++ b/arch/sparc/include/asm/pgtable_32.h
@@ -132,6 +132,12 @@ static inline struct page *pmd_page(pmd_t pmd)
 	return pfn_to_page((pmd_val(pmd) & SRMMU_PTD_PMASK) >> (PAGE_SHIFT-4));
 }
 
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
+{
+	unsigned long v = pmd_val(pmd) & SRMMU_PTD_PMASK;
+	return (unsigned long)__nocache_va(v << 4);
+}
+
 static inline unsigned long pud_page_vaddr(pud_t pud)
 {
 	if (srmmu_device_memory(pud_val(pud))) {
@@ -318,15 +324,6 @@ static inline pmd_t *pmd_offset(pud_t * dir, unsigned long address)
 		((address >> PMD_SHIFT) & (PTRS_PER_PMD - 1));
 }
 
-/* Find an entry in the third-level page table.. */
-pte_t *pte_offset_kernel(pmd_t * dir, unsigned long address);
-
-/*
- * This shortcut works on sun4m (and sun4d) because the nocache area is static.
- */
-#define pte_offset_map(d, a)		pte_offset_kernel(d,a)
-#define pte_unmap(pte)		do{}while(0)
-
 struct seq_file;
 void mmu_info(struct seq_file *m);
 
diff --git a/arch/sparc/include/asm/pgtable_64.h b/arch/sparc/include/asm/pgtable_64.h
index 6754363b261d..7df72efa4a8d 100644
--- a/arch/sparc/include/asm/pgtable_64.h
+++ b/arch/sparc/include/asm/pgtable_64.h
@@ -835,7 +835,7 @@ static inline void pmd_set(struct mm_struct *mm, pmd_t *pmdp, pte_t *ptep)
 
 #define pud_set(pudp, pmdp)	\
 	(pud_val(*(pudp)) = (__pa((unsigned long) (pmdp))))
-static inline unsigned long __pmd_page(pmd_t pmd)
+static inline unsigned long pmd_page_vaddr(pmd_t pmd)
 {
 	pte_t pte = __pte(pmd_val(pmd));
 	unsigned long pfn;
@@ -855,7 +855,7 @@ static inline unsigned long pud_page_vaddr(pud_t pud)
 	return ((unsigned long) __va(pfn << PAGE_SHIFT));
 }
 
-#define pmd_page(pmd) 			virt_to_page((void *)__pmd_page(pmd))
+#define pmd_page(pmd) 			virt_to_page((void *)pmd_page_vaddr(pmd))
 #define pud_page(pud) 			virt_to_page((void *)pud_page_vaddr(pud))
 #define pmd_clear(pmdp)			(pmd_val(*(pmdp)) = 0UL)
 #define pud_present(pud)		(pud_val(pud) != 0U)
@@ -906,14 +906,6 @@ static inline unsigned long pud_pfn(pud_t pud)
 	((pmd_t *) pud_page_vaddr(*(pudp)) + \
 	 (((address) >> PMD_SHIFT) & (PTRS_PER_PMD-1)))
 
-/* Find an entry in the third-level page table.. */
-#define pte_index(address)			\
-	 ((address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir, address)	\
-	((pte_t *) __pmd_page(*(dir)) + pte_index(address))
-#define pte_offset_map(dir, address)	pte_offset_kernel((dir), (address))
-#define pte_unmap(pte)			do { } while (0)
-
 /* We cannot include <linux/mm_types.h> at this point yet: */
 extern struct mm_struct init_mm;
 
diff --git a/arch/sparc/mm/srmmu.c b/arch/sparc/mm/srmmu.c
index 906802f0ebe9..5b44936eefea 100644
--- a/arch/sparc/mm/srmmu.c
+++ b/arch/sparc/mm/srmmu.c
@@ -157,16 +157,6 @@ void pmd_populate(struct mm_struct *mm, pmd_t *pmdp, struct page *ptep)
 	}
 }
 
-/* Find an entry in the third-level page table.. */
-pte_t *pte_offset_kernel(pmd_t *dir, unsigned long address)
-{
-	void *pte;
-
-	pte = __nocache_va((dir->pmdv[0] & SRMMU_PTD_PMASK) << 4);
-	return (pte_t *) pte +
-	    ((address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1));
-}
-
 /*
  * size: bytes to allocate in the nocache area.
  * align: bytes, number to align at.
diff --git a/arch/um/include/asm/pgtable.h b/arch/um/include/asm/pgtable.h
index 9618a0b8088c..c57fe228833c 100644
--- a/arch/um/include/asm/pgtable.h
+++ b/arch/um/include/asm/pgtable.h
@@ -323,19 +323,6 @@ static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 #define pmd_page_vaddr(pmd) \
 	((unsigned long) __va(pmd_val(pmd) & PAGE_MASK))
 
-/*
- * the pte page can be thought of an array like this: pte_t[PTRS_PER_PTE]
- *
- * this macro returns the index of the entry in the pte page which would
- * control the given virtual address
- */
-#define pte_index(address) (((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir, address) \
-	((pte_t *) pmd_page_vaddr(*(dir)) +  pte_index(address))
-#define pte_offset_map(dir, address) \
-	((pte_t *)page_address(pmd_page(*(dir))) + pte_index(address))
-#define pte_unmap(pte) do { } while (0)
-
 struct mm_struct;
 extern pte_t *virt_to_pte(struct mm_struct *mm, unsigned long addr);
 
diff --git a/arch/unicore32/include/asm/pgtable.h b/arch/unicore32/include/asm/pgtable.h
index 9559e936d980..a2b264cc8c68 100644
--- a/arch/unicore32/include/asm/pgtable.h
+++ b/arch/unicore32/include/asm/pgtable.h
@@ -153,12 +153,6 @@ extern struct page *empty_zero_page;
 #define pte_none(pte)			(!pte_val(pte))
 #define pte_clear(mm, addr, ptep)	set_pte(ptep, __pte(0))
 #define pte_page(pte)			(pfn_to_page(pte_pfn(pte)))
-#define pte_offset_kernel(dir, addr)	(pmd_page_vaddr(*(dir)) \
-						+ __pte_index(addr))
-
-#define pte_offset_map(dir, addr)	(pmd_page_vaddr(*(dir)) \
-						+ __pte_index(addr))
-#define pte_unmap(pte)			do { } while (0)
 
 #define set_pte(ptep, pte)	cpu_set_pte(ptep, pte)
 
@@ -229,9 +223,6 @@ PTE_BIT_FUNC(mkyoung,   |= PTE_YOUNG);
 /* to find an entry in a kernel page-table-directory */
 #define pgd_offset_k(addr)	pgd_offset(&init_mm, addr)
 
-/* Find an entry in the third-level page table.. */
-#define __pte_index(addr)	(((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-
 static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 {
 	const unsigned long mask = PTE_EXEC | PTE_WRITE | PTE_READ;
diff --git a/arch/x86/include/asm/pgtable.h b/arch/x86/include/asm/pgtable.h
index 6366136b0e46..64be521f562c 100644
--- a/arch/x86/include/asm/pgtable.h
+++ b/arch/x86/include/asm/pgtable.h
@@ -855,25 +855,6 @@ static inline unsigned long pmd_index(unsigned long address)
  */
 #define mk_pte(page, pgprot)   pfn_pte(page_to_pfn(page), (pgprot))
 
-/*
- * the pte page can be thought of an array like this: pte_t[PTRS_PER_PTE]
- *
- * this function returns the index of the entry in the pte page which would
- * control the given virtual address
- *
- * Also define macro so we can test if pte_index is defined for arch.
- */
-#define pte_index pte_index
-static inline unsigned long pte_index(unsigned long address)
-{
-	return (address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1);
-}
-
-static inline pte_t *pte_offset_kernel(pmd_t *pmd, unsigned long address)
-{
-	return (pte_t *)pmd_page_vaddr(*pmd) + pte_index(address);
-}
-
 static inline int pmd_bad(pmd_t pmd)
 {
 	return (pmd_flags(pmd) & ~_PAGE_USER) != _KERNPG_TABLE;
diff --git a/arch/x86/include/asm/pgtable_32.h b/arch/x86/include/asm/pgtable_32.h
index bd2ed47cb067..a5ae0e496b9a 100644
--- a/arch/x86/include/asm/pgtable_32.h
+++ b/arch/x86/include/asm/pgtable_32.h
@@ -45,17 +45,6 @@ void sync_initial_page_table(void);
 # include <asm/pgtable-2level.h>
 #endif
 
-#if defined(CONFIG_HIGHPTE)
-#define pte_offset_map(dir, address)					\
-	((pte_t *)kmap_atomic(pmd_page(*(dir))) +		\
-	 pte_index((address)))
-#define pte_unmap(pte) kunmap_atomic((pte))
-#else
-#define pte_offset_map(dir, address)					\
-	((pte_t *)page_address(pmd_page(*(dir))) + pte_index((address)))
-#define pte_unmap(pte) do { } while (0)
-#endif
-
 /* Clear a kernel PTE and flush it from the TLB */
 #define kpte_clear_flush(ptep, vaddr)		\
 do {						\
diff --git a/arch/x86/include/asm/pgtable_64.h b/arch/x86/include/asm/pgtable_64.h
index 8d03ffd43794..1b68d24dc6a0 100644
--- a/arch/x86/include/asm/pgtable_64.h
+++ b/arch/x86/include/asm/pgtable_64.h
@@ -186,10 +186,6 @@ extern void sync_global_pgds(unsigned long start, unsigned long end);
 
 /* PTE - Level 1 access. */
 
-/* x86-64 always has all page tables mapped. */
-#define pte_offset_map(dir, address) pte_offset_kernel((dir), (address))
-#define pte_unmap(pte) ((void)(pte))/* NOP */
-
 /*
  * Encode and de-code a swap entry
  *
diff --git a/arch/xtensa/include/asm/pgtable.h b/arch/xtensa/include/asm/pgtable.h
index c57bca3fe051..d08b7be6649e 100644
--- a/arch/xtensa/include/asm/pgtable.h
+++ b/arch/xtensa/include/asm/pgtable.h
@@ -267,7 +267,7 @@ static inline int pte_write(pte_t pte) { return pte_val(pte) & _PAGE_WRITABLE; }
 static inline int pte_dirty(pte_t pte) { return pte_val(pte) & _PAGE_DIRTY; }
 static inline int pte_young(pte_t pte) { return pte_val(pte) & _PAGE_ACCESSED; }
 
-static inline pte_t pte_wrprotect(pte_t pte)	
+static inline pte_t pte_wrprotect(pte_t pte)
 	{ pte_val(pte) &= ~(_PAGE_WRITABLE | _PAGE_HW_WRITE); return pte; }
 static inline pte_t pte_mkclean(pte_t pte)
 	{ pte_val(pte) &= ~(_PAGE_DIRTY | _PAGE_HW_WRITE); return pte; }
@@ -367,14 +367,6 @@ ptep_set_wrprotect(struct mm_struct *mm, unsigned long addr, pte_t *ptep)
 
 #define pgd_index(address)	((address) >> PGDIR_SHIFT)
 
-/* Find an entry in the third-level page table.. */
-#define pte_index(address)	(((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
-#define pte_offset_kernel(dir,addr) 					\
-	((pte_t*) pmd_page_vaddr(*(dir)) + pte_index(addr))
-#define pte_offset_map(dir,addr)	pte_offset_kernel((dir),(addr))
-#define pte_unmap(pte)		do { } while (0)
-
-
 /*
  * Encode and decode a swap and file entry.
  */
diff --git a/include/linux/pgtable.h b/include/linux/pgtable.h
index 513cf69313e5..3866058b20e2 100644
--- a/include/linux/pgtable.h
+++ b/include/linux/pgtable.h
@@ -28,6 +28,35 @@
 #define USER_PGTABLES_CEILING	0UL
 #endif
 
+/*
+ * the pte page can be thought of an array like this: pte_t[PTRS_PER_PTE]
+ *
+ * this function returns the index of the entry in the pte page which would
+ * control the given virtual address
+ */
+static inline unsigned long pte_index(unsigned long address)
+{
+	return (address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1);
+}
+
+#ifndef pte_offset_kernel
+static inline pte_t *pte_offset_kernel(pmd_t *pmd, unsigned long address)
+{
+	return (pte_t *)pmd_page_vaddr(*pmd) + pte_index(address);
+}
+#define pte_offset_kernel pte_offset_kernel
+#endif
+
+#if defined(CONFIG_HIGHPTE)
+#define pte_offset_map(dir, address)				\
+	((pte_t *)kmap_atomic(pmd_page(*(dir))) +		\
+	 pte_index((address)))
+#define pte_unmap(pte) kunmap_atomic((pte))
+#else
+#define pte_offset_map(dir, address)	pte_offset_kernel((dir), (address))
+#define pte_unmap(pte) ((void)(pte))	/* NOP */
+#endif
+
 /* FIXME: */
 static inline pmd_t *pmd_off(struct mm_struct *mm, unsigned long va)
 {
-- 
2.26.1


