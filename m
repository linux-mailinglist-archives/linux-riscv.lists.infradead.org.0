Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 943731A603B
	for <lists+linux-riscv@lfdr.de>; Sun, 12 Apr 2020 21:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3pbCn1GzuYT5f1gRu8KerntmWsu0m1IOgdl1D1l1DE=; b=Nv1U1JH+lhNI00
	Hk+ZZPuHHkhB2AOLQOYsiKjiwG15UEw6im/wCStBqZQrI9ScME6Qn1XKdqd/DxW+oJhEPw5a3jG6h
	OORA9tTDRqqQIgDFMgA9AcFCR/YPRmiSVar3OiRh4UpRNyqyXe1aYf50o5tMnFgedMv8hOKKeZkQ6
	5UbfMfLXcB2SvmoEaqrUfNBaT1aTJOIhlfVIDr5fLVE2I5mAjyiLJWz8zcShYFFVLNrpZdu7ee8yv
	dwm5CDr3Pc87xQu65SHRiSwfkpyDCGaLihcSJFprKS71m0TAeHz972XyyGDs+vjXsRCN7ekdhrW+a
	HXo41IMy6wHLpgCbhWlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNieh-0004FH-BH; Sun, 12 Apr 2020 19:52:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNied-0004Ei-MN; Sun, 12 Apr 2020 19:52:33 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A449B20776;
 Sun, 12 Apr 2020 19:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586721151;
 bh=hgNcriQBrLn7daSBmCEmOeUHt+uB+ve18FoUK9++cZE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aZ7Mp9RIKHPkvcOOg8xHACUg/lCOvdPOj3lqW+RCkztCzPsatOW40SDHqogD22WMY
 +OSbCQR1GPrMfKHHlSQHP2vyhzG9ZHVtlCpzlZkOCxGeXNrK0PhQyOYt3Yw/QL4THl
 i0LZnF65ThlhBEKAE0ILSVmPnbet5YC7YVwyRed4=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 13/21] unicore32: simplify detection of memory zone boundaries
Date: Sun, 12 Apr 2020 22:48:51 +0300
Message-Id: <20200412194859.12663-14-rppt@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200412194859.12663-1-rppt@kernel.org>
References: <20200412194859.12663-1-rppt@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_125231_776555_193813E1 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 Hoan Tran <Hoan@os.amperecomputing.com>, Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Brian Cain <bcain@codeaurora.org>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, openrisc@lists.librecores.org,
 Richard Weinberger <richard@nod.at>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 Mike Rapoport <rppt@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

The free_area_init() function only requires the definition of maximal PFN
for each of the supported zone rater than calculation of actual zone sizes
and the sizes of the holes between the zones.

After removal of CONFIG_HAVE_MEMBLOCK_NODE_MAP the free_area_init() is
available to all architectures.

Using this function instead of free_area_init_node() simplifies the zone
detection.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/unicore32/include/asm/memory.h  |  2 +-
 arch/unicore32/include/mach/memory.h |  6 ++--
 arch/unicore32/kernel/pci.c          | 14 ++-------
 arch/unicore32/mm/init.c             | 43 ++++++----------------------
 4 files changed, 15 insertions(+), 50 deletions(-)

diff --git a/arch/unicore32/include/asm/memory.h b/arch/unicore32/include/asm/memory.h
index 23c93105f98f..66285178dd9b 100644
--- a/arch/unicore32/include/asm/memory.h
+++ b/arch/unicore32/include/asm/memory.h
@@ -60,7 +60,7 @@
 #ifndef __ASSEMBLY__
 
 #ifndef arch_adjust_zones
-#define arch_adjust_zones(size, holes) do { } while (0)
+#define arch_adjust_zones(max_zone_pfn) do { } while (0)
 #endif
 
 /*
diff --git a/arch/unicore32/include/mach/memory.h b/arch/unicore32/include/mach/memory.h
index 2b527cedd03d..b4e6035cb9a3 100644
--- a/arch/unicore32/include/mach/memory.h
+++ b/arch/unicore32/include/mach/memory.h
@@ -25,10 +25,10 @@
 
 #if !defined(__ASSEMBLY__) && defined(CONFIG_PCI)
 
-void puv3_pci_adjust_zones(unsigned long *size, unsigned long *holes);
+void puv3_pci_adjust_zones(unsigned long *max_zone_pfn);
 
-#define arch_adjust_zones(size, holes) \
-	puv3_pci_adjust_zones(size, holes)
+#define arch_adjust_zones(max_zone_pfn) \
+	puv3_pci_adjust_zones(max_zone_pfn)
 
 #endif
 
diff --git a/arch/unicore32/kernel/pci.c b/arch/unicore32/kernel/pci.c
index efa04a94dcdb..0d098aa05b47 100644
--- a/arch/unicore32/kernel/pci.c
+++ b/arch/unicore32/kernel/pci.c
@@ -133,21 +133,11 @@ static int pci_puv3_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
  * This is really ugly and we need a better way of specifying
  * DMA-capable regions of memory.
  */
-void __init puv3_pci_adjust_zones(unsigned long *zone_size,
-	unsigned long *zhole_size)
+void __init puv3_pci_adjust_zones(unsigned long max_zone_pfn)
 {
 	unsigned int sz = SZ_128M >> PAGE_SHIFT;
 
-	/*
-	 * Only adjust if > 128M on current system
-	 */
-	if (zone_size[0] <= sz)
-		return;
-
-	zone_size[1] = zone_size[0] - sz;
-	zone_size[0] = sz;
-	zhole_size[1] = zhole_size[0];
-	zhole_size[0] = 0;
+	max_zone_pfn[ZONE_DMA] = sz;
 }
 
 /*
diff --git a/arch/unicore32/mm/init.c b/arch/unicore32/mm/init.c
index 6cf010fadc7a..52425d383cea 100644
--- a/arch/unicore32/mm/init.c
+++ b/arch/unicore32/mm/init.c
@@ -61,46 +61,21 @@ static void __init find_limits(unsigned long *min, unsigned long *max_low,
 	}
 }
 
-static void __init uc32_bootmem_free(unsigned long min, unsigned long max_low,
-	unsigned long max_high)
+static void __init uc32_bootmem_free(unsigned long max_low)
 {
-	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
-	struct memblock_region *reg;
+	unsigned long max_zone_pfn[MAX_NR_ZONES] = { 0 };
 
-	/*
-	 * initialise the zones.
-	 */
-	memset(zone_size, 0, sizeof(zone_size));
-
-	/*
-	 * The memory size has already been determined.  If we need
-	 * to do anything fancy with the allocation of this memory
-	 * to the zones, now is the time to do it.
-	 */
-	zone_size[0] = max_low - min;
-
-	/*
-	 * Calculate the size of the holes.
-	 *  holes = node_size - sum(bank_sizes)
-	 */
-	memcpy(zhole_size, zone_size, sizeof(zhole_size));
-	for_each_memblock(memory, reg) {
-		unsigned long start = memblock_region_memory_base_pfn(reg);
-		unsigned long end = memblock_region_memory_end_pfn(reg);
-
-		if (start < max_low) {
-			unsigned long low_end = min(end, max_low);
-			zhole_size[0] -= low_end - start;
-		}
-	}
+	max_zone_pfn[ZONE_DMA] = max_low;
+	max_zone_pfn[ZONE_NORMAL] = max_low;
 
 	/*
 	 * Adjust the sizes according to any special requirements for
 	 * this machine type.
+	 * This might lower ZONE_DMA limit.
 	 */
-	arch_adjust_zones(zone_size, zhole_size);
+	arch_adjust_zones(max_zone_pfn);
 
-	free_area_init_node(0, zone_size, min, zhole_size);
+	free_area_init(max_zone_pfn);
 }
 
 int pfn_valid(unsigned long pfn)
@@ -176,11 +151,11 @@ void __init bootmem_init(void)
 	sparse_init();
 
 	/*
-	 * Now free the memory - free_area_init_node needs
+	 * Now free the memory - free_area_init needs
 	 * the sparse mem_map arrays initialized by sparse_init()
 	 * for memmap_init_zone(), otherwise all PFNs are invalid.
 	 */
-	uc32_bootmem_free(min, max_low, max_high);
+	uc32_bootmem_free(max_low);
 
 	high_memory = __va((max_low << PAGE_SHIFT) - 1) + 1;
 
-- 
2.25.1


