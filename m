Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD661BDB80
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Apr 2020 14:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KKiD1F50df8LraU3/vVHH4ePFWIWrmSS6zjIC4oUViA=; b=IdoEYulWZtGpu6
	mN8OIPcawGRn3dY2pf6EWPQ7n6TNY4xQ93pmh7eQpiUVofCTDZt4g024yH9A4lUGvHbdDw7qBtVAz
	/FLsGmpKTNKs6bG77jzrdJpIrlLX03ZJ6sDYniO5hu/5KskAd96E0+nbvyCeWJbOKjtUad6Ikamba
	oFGJkRQF5qEVpvlpug2ZYyKHKIeBpyFxm4AbJaOApPbDTU1kyDMYTLeh3M54o+lVRMEU6F11aXlmx
	8xQ08VLW5bCWdUvo01F11Pwlg0D3dsx20ljvjDs4s/Z8y0b5WygZUYkOVBMQrDb9JlGA6ZJv+NviM
	oQQs4N2uCzfRuKhmlEjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlZU-0007jd-Rj; Wed, 29 Apr 2020 12:12:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlZP-0007hi-8M; Wed, 29 Apr 2020 12:12:08 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04AE12087E;
 Wed, 29 Apr 2020 12:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588162326;
 bh=CFoz4ZQtC45vozRHIJrum+IyiIDDM2pB0vein0HN77Q=;
 h=From:To:Cc:Subject:Date:From;
 b=hgnMSCWznOV11pnvEM4YfvU+8wv88/ZeNbJu8KMC6K7gkkHInG7wntWOoWVIDBdtt
 ND0rc8rLqnEbT7tOFkRyD1b9ylk7tlkBvyPKex6XEtZa/Pteq/zSxb4B7MATB4kD7L
 pDJlFv/WqLPqmQTU05lR7ezlA4acIUyPiaMeu5No=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/20] mm: rework free_area_init*() funcitons 
Date: Wed, 29 Apr 2020 15:11:06 +0300
Message-Id: <20200429121126.17989-1-rppt@kernel.org>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_051207_341046_D8684961 
X-CRM114-Status: GOOD (  14.41  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, linux-parisc@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 Baoquan He <bhe@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Tony Luck <tony.luck@intel.com>,
 Qian Cai <cai@lca.pw>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, Hoan Tran <Hoan@os.amperecomputing.com>,
 Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Brian Cain <bcain@codeaurora.org>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, openrisc@lists.librecores.org,
 Richard Weinberger <richard@nod.at>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

Hi,

After the discussion [1] about removal of CONFIG_NODES_SPAN_OTHER_NODES and
CONFIG_HAVE_MEMBLOCK_NODE_MAP options, I took it a bit further and updated
the node/zone initialization. 

Since all architectures have memblock, it is possible to use only the newer
version of free_area_init_node() that calculates the zone and node
boundaries based on memblock node mapping and architectural limits on
possible zone PFNs. 

The architectures that still determined zone and hole sizes can be switched
to the generic code and the old code that took those zone and hole sizes
can be simply removed.

And, since it all started from the removal of
CONFIG_NODES_SPAN_OTHER_NODES, the memmap_init() is now updated to iterate
over memblocks and so it does not need to perform early_pfn_to_nid() query
for every PFN.

v2 changes:
* move deletion of one of '#ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP' from
  patch 2 to patch 3 where it should have been from the beginning
* drop patch that introduced a free_area_init_memoryless_node() wrapper
  for free_area_init_node()
* remove unused next_pfn(), thanks Qian
* drop stale comment in memmap_init_zone(), as per David

--
Sincerely yours,
Mike.

[1] https://lore.kernel.org/lkml/1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com

Baoquan He (1):
  mm: memmap_init: iterate over memblock regions rather that check each PFN

Mike Rapoport (19):
  mm: memblock: replace dereferences of memblock_region.nid with API calls
  mm: make early_pfn_to_nid() and related defintions close to each other
  mm: remove CONFIG_HAVE_MEMBLOCK_NODE_MAP option
  mm: free_area_init: use maximal zone PFNs rather than zone sizes
  mm: use free_area_init() instead of free_area_init_nodes()
  alpha: simplify detection of memory zone boundaries
  arm: simplify detection of memory zone boundaries
  arm64: simplify detection of memory zone boundaries for UMA configs
  csky: simplify detection of memory zone boundaries
  m68k: mm: simplify detection of memory zone boundaries
  parisc: simplify detection of memory zone boundaries
  sparc32: simplify detection of memory zone boundaries
  unicore32: simplify detection of memory zone boundaries
  xtensa: simplify detection of memory zone boundaries
  mm: remove early_pfn_in_nid() and CONFIG_NODES_SPAN_OTHER_NODES
  mm: free_area_init: allow defining max_zone_pfn in descending order
  mm: clean up free_area_init_node() and its helpers
  mm: simplify find_min_pfn_with_active_regions()
  docs/vm: update memory-models documentation

 .../vm/numa-memblock/arch-support.txt         |  34 ---
 Documentation/vm/memory-model.rst             |   9 +-
 arch/alpha/mm/init.c                          |  16 +-
 arch/alpha/mm/numa.c                          |  22 +-
 arch/arc/mm/init.c                            |  36 +--
 arch/arm/mm/init.c                            |  66 +----
 arch/arm64/Kconfig                            |   1 -
 arch/arm64/mm/init.c                          |  56 +---
 arch/arm64/mm/numa.c                          |   9 +-
 arch/c6x/mm/init.c                            |   8 +-
 arch/csky/kernel/setup.c                      |  26 +-
 arch/h8300/mm/init.c                          |   6 +-
 arch/hexagon/mm/init.c                        |   6 +-
 arch/ia64/Kconfig                             |   1 -
 arch/ia64/mm/contig.c                         |   2 +-
 arch/ia64/mm/discontig.c                      |   2 +-
 arch/m68k/mm/init.c                           |   6 +-
 arch/m68k/mm/mcfmmu.c                         |   9 +-
 arch/m68k/mm/motorola.c                       |  15 +-
 arch/m68k/mm/sun3mmu.c                        |  10 +-
 arch/microblaze/Kconfig                       |   1 -
 arch/microblaze/mm/init.c                     |   2 +-
 arch/mips/Kconfig                             |   1 -
 arch/mips/loongson64/numa.c                   |   2 +-
 arch/mips/mm/init.c                           |   2 +-
 arch/mips/sgi-ip27/ip27-memory.c              |   2 +-
 arch/nds32/mm/init.c                          |  11 +-
 arch/nios2/mm/init.c                          |   8 +-
 arch/openrisc/mm/init.c                       |   9 +-
 arch/parisc/mm/init.c                         |  22 +-
 arch/powerpc/Kconfig                          |  10 -
 arch/powerpc/mm/mem.c                         |   2 +-
 arch/riscv/Kconfig                            |   1 -
 arch/riscv/mm/init.c                          |   2 +-
 arch/s390/Kconfig                             |   1 -
 arch/s390/mm/init.c                           |   2 +-
 arch/sh/Kconfig                               |   1 -
 arch/sh/mm/init.c                             |   2 +-
 arch/sparc/Kconfig                            |  10 -
 arch/sparc/mm/init_64.c                       |   2 +-
 arch/sparc/mm/srmmu.c                         |  21 +-
 arch/um/kernel/mem.c                          |  12 +-
 arch/unicore32/include/asm/memory.h           |   2 +-
 arch/unicore32/include/mach/memory.h          |   6 +-
 arch/unicore32/kernel/pci.c                   |  14 +-
 arch/unicore32/mm/init.c                      |  43 +--
 arch/x86/Kconfig                              |  10 -
 arch/x86/mm/init.c                            |   2 +-
 arch/x86/mm/numa.c                            |   8 +-
 arch/xtensa/mm/init.c                         |   8 +-
 include/linux/memblock.h                      |   8 +-
 include/linux/mm.h                            |  28 +-
 include/linux/mmzone.h                        |  11 +-
 mm/Kconfig                                    |   3 -
 mm/memblock.c                                 |  19 +-
 mm/memory_hotplug.c                           |   4 -
 mm/page_alloc.c                               | 278 ++++++------------
 57 files changed, 243 insertions(+), 667 deletions(-)
 delete mode 100644 Documentation/features/vm/numa-memblock/arch-support.txt

-- 
2.26.1


