Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BE07A09A
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 07:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PoHKCjIQF9zS6DZkcBaGrs/kUit9ZmS/Q7He0siscTA=; b=ImuAh8T/L1/Xe3
	E+HuIn8B0/Fi16u6DWj0w0YCu5GOp601VvzKoEBD5cIg62y5ducfZ2mxN87PI/c00DIhE5KuvtoGn
	p4Gfnvxhg6yClxb+RXmKbXHEZEwjI9wlbEvq2b2JVD1p+Kx7IOMMBdNS/Av7f/kArc2JPsK8V1sg+
	n4SpLxrvE7oVd0Qe9/jLgIedLfCx6E+hPZLmTbbpQJAyEZo+gataQ0KxwZ/pquvY3JZmeg5FsLhhK
	Y1BW2TG9jrztT9fdyEKnYbiQMgwI3SU+7xibv2h0B7Fwwiyv9NH1+y8HuWm/yEMgTbzLDevg71ldz
	kdRc2MfurCJ9UljA9XDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsL3I-0000yG-S3; Tue, 30 Jul 2019 05:52:01 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsL31-0000ms-9r; Tue, 30 Jul 2019 05:51:45 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 18BD71BF20B;
 Tue, 30 Jul 2019 05:51:25 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v5 00/14] Provide generic top-down mmap layout functions
Date: Tue, 30 Jul 2019 01:50:59 -0400
Message-Id: <20190730055113.23635-1-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_225143_659200_9522AE21 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Alexandre Ghiti <alex@ghiti.fr>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Luis Chamberlain <mcgrof@kernel.org>, Paul Burton <paul.burton@mips.com>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series introduces generic functions to make top-down mmap layout
easily accessible to architectures, in particular riscv which was
the initial goal of this series.
The generic implementation was taken from arm64 and used successively
by arm, mips and finally riscv.

Note that in addition the series fixes 2 issues:
- stack randomization was taken into account even if not necessary.
- [1] fixed an issue with mmap base which did not take into account
  randomization but did not report it to arm and mips, so by moving
  arm64 into a generic library, this problem is now fixed for both
  architectures.

This work is an effort to factorize architecture functions to avoid
code duplication and oversights as in [1].

[1]: https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1429066.html

Changes in v5:
  - Fix [PATCH 11/14]
  - Rebase on top of v5.3rc2 and commit
    "riscv: kbuild: add virtual memory system selection"
  - [PATCH 14/14] now takes into account the various virtual memory systems

Changes in v4:
  - Make ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT select ARCH_HAS_ELF_RANDOMIZE
    by default as suggested by Kees,
  - ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT depends on MMU and defines the
    functions needed by ARCH_HAS_ELF_RANDOMIZE => architectures that use
    the generic mmap topdown functions cannot have ARCH_HAS_ELF_RANDOMIZE
    selected without MMU, but I think it's ok since randomization without
    MMU does not add much security anyway.
  - There is no common API to determine if a process is 32b, so I came up with
    !IS_ENABLED(CONFIG_64BIT) || is_compat_task() in [PATCH v4 12/14].
  - Mention in the change log that x86 already takes care of not offseting mmap
    base address if the task does not want randomization.
  - Re-introduce a comment that should not have been removed.
  - Add Reviewed/Acked-By from Paul, Christoph and Kees, thank you for that.
  - I tried to minimize the changes from the commits in v3 in order to make
    easier the review of the v4, the commits changed or added are:
    - [PATCH v4 5/14]
    - [PATCH v4 8/14]
    - [PATCH v4 11/14]
    - [PATCH v4 12/14]
    - [PATCH v4 13/14]

Changes in v3:
  - Split into small patches to ease review as suggested by Christoph
    Hellwig and Kees Cook
  - Move help text of new config as a comment, as suggested by Christoph
  - Make new config depend on MMU, as suggested by Christoph

Changes in v2 as suggested by Christoph Hellwig:
  - Preparatory patch that moves randomize_stack_top
  - Fix duplicate config in riscv
  - Align #if defined on next line => this gives rise to a checkpatch
    warning. I found this pattern all around the tree, in the same proportion
    as the previous pattern which was less pretty:
    git grep -C 1 -n -P "^#if defined.+\|\|.*\\\\$"

Alexandre Ghiti (14):
  mm, fs: Move randomize_stack_top from fs to mm
  arm64: Make use of is_compat_task instead of hardcoding this test
  arm64: Consider stack randomization for mmap base only when necessary
  arm64, mm: Move generic mmap layout functions to mm
  arm64, mm: Make randomization selected by generic topdown mmap layout
  arm: Properly account for stack randomization and stack guard gap
  arm: Use STACK_TOP when computing mmap base address
  arm: Use generic mmap top-down layout and brk randomization
  mips: Properly account for stack randomization and stack guard gap
  mips: Use STACK_TOP when computing mmap base address
  mips: Adjust brk randomization offset to fit generic version
  mips: Replace arch specific way to determine 32bit task with generic
    version
  mips: Use generic mmap top-down layout and brk randomization
  riscv: Make mmap allocation top-down by default

 arch/Kconfig                       |  11 +++
 arch/arm/Kconfig                   |   2 +-
 arch/arm/include/asm/processor.h   |   2 -
 arch/arm/kernel/process.c          |   5 --
 arch/arm/mm/mmap.c                 |  52 --------------
 arch/arm64/Kconfig                 |   2 +-
 arch/arm64/include/asm/processor.h |   2 -
 arch/arm64/kernel/process.c        |   8 ---
 arch/arm64/mm/mmap.c               |  72 -------------------
 arch/mips/Kconfig                  |   2 +-
 arch/mips/include/asm/processor.h  |   5 --
 arch/mips/mm/mmap.c                |  84 ----------------------
 arch/riscv/Kconfig                 |  13 ++++
 fs/binfmt_elf.c                    |  20 ------
 include/linux/mm.h                 |   2 +
 kernel/sysctl.c                    |   6 +-
 mm/util.c                          | 107 ++++++++++++++++++++++++++++-
 17 files changed, 139 insertions(+), 256 deletions(-)

-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
