Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B8B1F8C87
	for <lists+linux-riscv@lfdr.de>; Mon, 15 Jun 2020 05:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jP2Dli1Z+TFIZ/0er1agzdk9zHrOfcdPmqyH7buAq5M=; b=hJbJiv0U/0MBUxbmAyCLUOP8qe
	p/MMDkIsZGTFI/zu9RrEHj8I7nijtp7/0fWvQkLb+16fI0pcnf5yB5T8rMGnj4EGHhhgGFBbFOACY
	MUVDllO1mtDFd3P3/MaAq20kEe1lRGTCU5OXLMhhCx3lmMEXwnLKAo9oGX+kbOBUg7HSwOXQ45Lps
	gQByhwhSZ5vpelPxijFbHEAwjaEP5aUhaIESLsds+tXaYLP77X2vuCTM2LNjbLt141q/aYJVubrvM
	maq6SEczFwQ70dtZ9ps6rnqSx4xPibTWyE2NW1jBnV4vLQd8lum4Lv38opwjk4Ou5SC9lQHJzlttv
	zWck4vCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkfxC-0000Qn-Ks; Mon, 15 Jun 2020 03:38:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkfx2-0000JO-05; Mon, 15 Jun 2020 03:38:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E9E631B;
 Sun, 14 Jun 2020 20:38:20 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.79.186])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 687243F71F;
 Sun, 14 Jun 2020 20:38:10 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V3 0/4] mm/debug_vm_pgtable: Add some more tests
Date: Mon, 15 Jun 2020 09:07:53 +0530
Message-Id: <1592192277-8421-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_203824_211385_670C858F 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, ziy@nvidia.com,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, gerald.schaefer@de.ibm.com,
 christophe.leroy@c-s.fr, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series adds some more arch page table helper validation tests which
are related to core and advanced memory functions. This also creates a
documentation, enlisting expected semantics for all page table helpers as
suggested by Mike Rapoport previously (https://lkml.org/lkml/2020/1/30/40).

There are many TRANSPARENT_HUGEPAGE and ARCH_HAS_TRANSPARENT_HUGEPAGE_PUD
ifdefs scattered across the test. But consolidating all the fallback stubs
is not very straight forward because ARCH_HAS_TRANSPARENT_HUGEPAGE_PUD is
not explicitly dependent on ARCH_HAS_TRANSPARENT_HUGEPAGE.

Tested on arm64, x86 platforms but only build tested on all other enabled
platforms through ARCH_HAS_DEBUG_VM_PGTABLE i.e powerpc, arc, s390. The
following failure on arm64 still exists which was mentioned previously. It
will be fixed with the upcoming THP migration on arm64 enablement series.

WARNING .... mm/debug_vm_pgtable.c:860 debug_vm_pgtable+0x940/0xa54
WARN_ON(!pmd_present(pmd_mkinvalid(pmd_mkhuge(pmd))))

This series is based on v5.8-rc1.

Changes in V3:

- Replaced HAVE_ARCH_SOFT_DIRTY with MEM_SOFT_DIRTY
- Added HAVE_ARCH_HUGE_VMAP checks in pxx_huge_tests() per Gerald
- Updated documentation for pmd_thp_tests() per Zi Yan
- Replaced READ_ONCE() with huge_ptep_get() per Gerald
- Added pte_mkhuge() and masking with PMD_MASK per Gerald
- Replaced pte_same() with holding pfn check in pxx_swap_tests()
- Added documentation for all (#ifdef #else #endif) per Gerald
- Updated pmd_protnone_tests() per Gerald
- Updated HugeTLB PTE creation in hugetlb_advanced_tests() per Gerald
- Replaced [pmd|pud]_mknotpresent() with [pmd|pud]_mkinvalid()
- Added has_transparent_hugepage() check for PMD and PUD tests
- Added a patch which debug prints all individual tests being executed
- Updated documentation for renamed [pmd|pud]_mkinvalid() helpers

Changes in V2: (https://patchwork.kernel.org/project/linux-mm/list/?series=260573)

- Dropped CONFIG_ARCH_HAS_PTE_SPECIAL per Christophe
- Dropped CONFIG_NUMA_BALANCING per Christophe
- Dropped CONFIG_HAVE_ARCH_SOFT_DIRTY per Christophe
- Dropped CONFIG_MIGRATION per Christophe
- Replaced CONFIG_S390 with __HAVE_ARCH_PMDP_INVALIDATE
- Moved page allocation & free inside swap_migration_tests() per Christophe
- Added CONFIG_TRANSPARENT_HUGEPAGE to protect pfn_pmd()
- Added CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD to protect pfn_pud()
- Added a patch for other arch advanced page table helper tests
- Added a patch creating a documentation for page table helper semantics

Changes in V1: (https://patchwork.kernel.org/patch/11408253/)

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Kirill A. Shutemov <kirill@shutemov.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: x86@kernel.org
Cc: linux-mm@kvack.org
Cc: linux-doc@vger.kernel.org
Cc: linux-arch@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (4):
  mm/debug_vm_pgtable: Add tests validating arch helpers for core MM features
  mm/debug_vm_pgtable: Add tests validating advanced arch page table helpers
  mm/debug_vm_pgtable: Add debug prints for individual tests
  Documentation/mm: Add descriptions for arch page table helpers

 Documentation/vm/arch_pgtable_helpers.rst | 258 +++++++++
 mm/debug_vm_pgtable.c                     | 660 +++++++++++++++++++++-
 2 files changed, 916 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/vm/arch_pgtable_helpers.rst

-- 
2.20.1


