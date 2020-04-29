Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7981BDBA6
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Apr 2020 14:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJtfc8R1Xhc9ddvXhRAvmfa30NVaRNLtGZjugt837Xo=; b=bUU5H1KCETMeDP
	MBh+ACoNFn/nagQAYB8nTSTuib2nK5VGfqMsWtO6Fv3GYAxUaLzBNetHZdwT+4S1Uwc2T31awhYav
	tuTXbz0RJPWj5mSNU5FGhScPxzBwQRVezcTz2q6RkpoqhAFn/58RHuYnkpQ6lm24xj+AW82g42zM2
	BRPkYem5YCrXjLLaUq0DRnAgfvu/rqnmdsYF9y0jFzLm+2Lv2Chgv7AnwVmv+B/nbtq5yZDf8QxH1
	2eoNaer6EeeVYm4HV8zTD4VhGhCFKwSJJe66czl1DcYtvLnujMY6SUkLADbGWH8Oaf9nhlBklQ5R2
	YoOoGg9wWBgBJyOr6XBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlbi-0000Sm-0a; Wed, 29 Apr 2020 12:14:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlbd-0000Rp-Nm; Wed, 29 Apr 2020 12:14:27 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 198FD2176D;
 Wed, 29 Apr 2020 12:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588162465;
 bh=v3pg5rQCKSDgBrwUBSTJ3WMqlUUMT1AhZF5bxYsaQHw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Fybm+idutOMmODZKIQU7tOi+El/wu/r765kUoGW+1ITFejKgicXc/K0HXwplkaEfO
 7tBMtpoc+y3mNxUQHK78fVWvc4NW0/WU/iDDUTgkQ8nln/22zZWXxuO3mVONFVxeGf
 TqGlRUIc/YkLqOeO+k+bGnsOXDppbS5/xHPEOEkI=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/20] m68k: mm: simplify detection of memory zone
 boundaries
Date: Wed, 29 Apr 2020 15:11:16 +0300
Message-Id: <20200429121126.17989-11-rppt@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200429121126.17989-1-rppt@kernel.org>
References: <20200429121126.17989-1-rppt@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_051425_814915_16A97AC8 
X-CRM114-Status: GOOD (  13.11  )
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

The free_area_init() function only requires the definition of maximal PFN
for each of the supported zone rater than calculation of actual zone sizes
and the sizes of the holes between the zones.

After removal of CONFIG_HAVE_MEMBLOCK_NODE_MAP the free_area_init() is
available to all architectures.

Using this function instead of free_area_init_node() simplifies the zone
detection.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/m68k/mm/motorola.c | 11 +++++------
 arch/m68k/mm/sun3mmu.c  | 10 +++-------
 2 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/arch/m68k/mm/motorola.c b/arch/m68k/mm/motorola.c
index 84ab5963cabb..904c2a663977 100644
--- a/arch/m68k/mm/motorola.c
+++ b/arch/m68k/mm/motorola.c
@@ -365,7 +365,7 @@ static void __init map_node(int node)
  */
 void __init paging_init(void)
 {
-	unsigned long zones_size[MAX_NR_ZONES] = { 0, };
+	unsigned long max_zone_pfn[MAX_NR_ZONES] = { 0, };
 	unsigned long min_addr, max_addr;
 	unsigned long addr;
 	int i;
@@ -448,11 +448,10 @@ void __init paging_init(void)
 #ifdef DEBUG
 	printk ("before free_area_init\n");
 #endif
-	for (i = 0; i < m68k_num_memory; i++) {
-		zones_size[ZONE_DMA] = m68k_memory[i].size >> PAGE_SHIFT;
-		free_area_init_node(i, zones_size,
-				    m68k_memory[i].addr >> PAGE_SHIFT, NULL);
+	for (i = 0; i < m68k_num_memory; i++)
 		if (node_present_pages(i))
 			node_set_state(i, N_NORMAL_MEMORY);
-	}
+
+	max_zone_pfn[ZONE_DMA] = memblock_end_of_DRAM();
+	free_area_init(max_zone_pfn);
 }
diff --git a/arch/m68k/mm/sun3mmu.c b/arch/m68k/mm/sun3mmu.c
index eca1c46bb90a..5d8d956d9329 100644
--- a/arch/m68k/mm/sun3mmu.c
+++ b/arch/m68k/mm/sun3mmu.c
@@ -42,7 +42,7 @@ void __init paging_init(void)
 	unsigned long address;
 	unsigned long next_pgtable;
 	unsigned long bootmem_end;
-	unsigned long zones_size[MAX_NR_ZONES] = { 0, };
+	unsigned long max_zone_pfn[MAX_NR_ZONES] = { 0, };
 	unsigned long size;
 
 	empty_zero_page = memblock_alloc(PAGE_SIZE, PAGE_SIZE);
@@ -89,14 +89,10 @@ void __init paging_init(void)
 	current->mm = NULL;
 
 	/* memory sizing is a hack stolen from motorola.c..  hope it works for us */
-	zones_size[ZONE_DMA] = ((unsigned long)high_memory - PAGE_OFFSET) >> PAGE_SHIFT;
+	max_zone_pfn[ZONE_DMA] = ((unsigned long)high_memory) >> PAGE_SHIFT;
 
 	/* I really wish I knew why the following change made things better...  -- Sam */
-/*	free_area_init(zones_size); */
-	free_area_init_node(0, zones_size,
-			    (__pa(PAGE_OFFSET) >> PAGE_SHIFT) + 1, NULL);
+	free_area_init(max_zone_pfn);
 
 
 }
-
-
-- 
2.26.1


