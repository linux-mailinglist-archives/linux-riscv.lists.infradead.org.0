Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300361CA156
	for <lists+linux-riscv@lfdr.de>; Fri,  8 May 2020 05:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=l/0ZqCM60AtX9PZ1rmAksRcYHYOucbHJkeaPce5F2cc=; b=cgfUUbOT/l1lVTe33OK5nrntt1
	naAi4oJk/gwzJQJ92VTxHDtXGaLKniYtHcsY3LNNvKE4TYzW+LcvmMqmrvER7K00FQVdsOc6/HggJ
	xQJ7vJz6yemSOjWwT1ftckHax1C3CjLAiiMvf5rc4kvv8TDU8pCfyGO5oJx/ijzQF6mTP3jYjFbw9
	qn99o9+bGiUNITN/KmzwpLwLK/jB+Os0y0IPH44XDp0Z5TzfIb1MgddazpxdjsjsIvHsYQM2cM7Dq
	oLjmSO9A7wekPUhwIVKdp7/jXL3fYHcp5O/Bzs6aCpf91eTJYfe8Di1IvDF90t05UiJKOC1ROfIbt
	qab3X6QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWtNk-0000mu-M5; Fri, 08 May 2020 03:09:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWtNa-0000ek-JC; Fri, 08 May 2020 03:08:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE7031FB;
 Thu,  7 May 2020 20:08:46 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.73.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D557C3F305;
 Thu,  7 May 2020 20:08:36 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	akpm@linux-foundation.org
Subject: [PATCH V3 0/3] mm/hugetlb: Add some new generic fallbacks
Date: Fri,  8 May 2020 08:37:48 +0530
Message-Id: <1588907271-11920-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_200850_718815_B09A9302 
X-CRM114-Status: GOOD (  11.45  )
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series adds the following new generic fallbacks. Before that it drops
__HAVE_ARCH_HUGE_PTEP_GET from arm64 platform.

1. is_hugepage_only_range()
2. arch_clear_hugepage_flags()

This has been boot tested on arm64 and x86 platforms but built tested on
some more platforms including the changed ones here. This series applies
on v5.7-rc4. After this arm (32 bit) remains the sole platform defining
it's own huge_ptep_get() via __HAVE_ARCH_HUGE_PTEP_GET.

Changes in V3:

- Added READ_ONCE() in generic huge_ptep_get() per Will

Changes in V2: (https://patchwork.kernel.org/project/linux-mm/list/?series=282947)

- Adopted "#ifndef func" method (adding a single symbol to namespace) per Andrew
- Updated the commit messages in [PATCH 2/3] and [PATCH 3/3] as required

Changes in V1: (https://patchwork.kernel.org/project/linux-mm/list/?series=270677)

Cc: Russell King <linux@armlinux.org.uk>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Tony Luck <tony.luck@intel.com>
Cc: Fenghua Yu <fenghua.yu@intel.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
Cc: Helge Deller <deller@gmx.de>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: Rich Felker <dalias@libc.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Mike Kravetz <mike.kravetz@oracle.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: x86@kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-ia64@vger.kernel.org
Cc: linux-mips@vger.kernel.org
Cc: linux-parisc@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-riscv@lists.infradead.org
Cc: linux-s390@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: linux-mm@kvack.org
Cc: linux-arch@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (3):
  arm64/mm: Drop __HAVE_ARCH_HUGE_PTEP_GET
  mm/hugetlb: Define a generic fallback for is_hugepage_only_range()
  mm/hugetlb: Define a generic fallback for arch_clear_hugepage_flags()

 arch/arm/include/asm/hugetlb.h     |  7 +------
 arch/arm64/include/asm/hugetlb.h   | 13 +------------
 arch/ia64/include/asm/hugetlb.h    |  5 +----
 arch/mips/include/asm/hugetlb.h    | 11 -----------
 arch/parisc/include/asm/hugetlb.h  | 10 ----------
 arch/powerpc/include/asm/hugetlb.h |  5 +----
 arch/riscv/include/asm/hugetlb.h   | 10 ----------
 arch/s390/include/asm/hugetlb.h    |  8 +-------
 arch/sh/include/asm/hugetlb.h      |  7 +------
 arch/sparc/include/asm/hugetlb.h   | 10 ----------
 arch/x86/include/asm/hugetlb.h     | 10 ----------
 include/asm-generic/hugetlb.h      |  2 +-
 include/linux/hugetlb.h            | 14 ++++++++++++++
 13 files changed, 21 insertions(+), 91 deletions(-)

-- 
2.20.1


