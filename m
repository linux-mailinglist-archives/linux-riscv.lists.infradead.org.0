Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B761A6052
	for <lists+linux-riscv@lfdr.de>; Sun, 12 Apr 2020 21:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKFAx3NdoMXATnWefwX213DVtGsOX+ERIV07OeNmLj0=; b=sMS+dH5XaQf9Vk
	aBl3oWuYV3x+se5JIvb5FEfIX9BcQdRaTxCUWD7+EMFxyAwu069kDTfXj8MmNkwXuaFGnztB7cNPx
	kndDxb/l6WyAT30lb2SHV6f3ZubUXZAUo8e+FNF48sxh/gXnKHgbs7F+YtnOuJ9q2U4lZp5ThdAb6
	/vpWtAq3oCzu+lQncVT1og5bzc7vAJr5jtGP+4y1bw9IVg5brQRbY9kX247WMe+GNJ9Xq3WiBVuzX
	mRcuV2lCFO5R3WGlQ2wu+pOrY8IKHIJxQMxcNJ4GR+RUzaLLxJbRwuU/rktUIRLcEzLbkL1KA6c3S
	opF6CIqAj8sb2nVaIRCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNig7-0005AY-Lf; Sun, 12 Apr 2020 19:54:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNig2-00059n-Pb; Sun, 12 Apr 2020 19:54:00 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 802D5208E0;
 Sun, 12 Apr 2020 19:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586721238;
 bh=b61jXh3YXZS+2XpmCP+m9oEdP1VkDOnLWvH5ZgMQlFk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LhJ43W7xtnqQQNK2hYGw3ieQ3iZHXnp0QUM2x2StqqTWVLjUlGAG2cusDiztOcCBQ
 swFoDidRxfG7L+Dexnyg+1kssnHNv4bhxgQitoE6H2HzF0UBng6Q6YawUUQxtqzKUF
 IqdYVp1UjDKAnVXtZwry8mP9lRQ0jrns9Qz0xzKo=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 19/21] mm: clean up free_area_init_node() and its helpers
Date: Sun, 12 Apr 2020 22:48:57 +0300
Message-Id: <20200412194859.12663-20-rppt@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200412194859.12663-1-rppt@kernel.org>
References: <20200412194859.12663-1-rppt@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_125358_874669_4DCFF416 
X-CRM114-Status: GOOD (  14.90  )
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

The free_area_init_node() now always uses memblock info and the zone PFN
limits so it does not need the backwards compatibility functions to
calculate the zone spanned and absent pages. The removal of the compat_
versions of zone_{abscent,spanned}_pages_in_node() in turn, makes zone_size
and zhole_size parameters unused.

The node_start_pfn is determined by get_pfn_range_for_nid(), so there is no
need to pass it to free_area_init_node().

As the result, the only required parameter to free_area_init_node() is the
node ID, all the rest are removed along with no longer used
compat_zone_{abscent,spanned}_pages_in_node() helpers.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 mm/page_alloc.c | 104 ++++++++++--------------------------------------
 1 file changed, 22 insertions(+), 82 deletions(-)

diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index e46232ec4849..9af27ee784c7 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -6441,8 +6441,7 @@ static unsigned long __init zone_spanned_pages_in_node(int nid,
 					unsigned long node_start_pfn,
 					unsigned long node_end_pfn,
 					unsigned long *zone_start_pfn,
-					unsigned long *zone_end_pfn,
-					unsigned long *ignored)
+					unsigned long *zone_end_pfn)
 {
 	unsigned long zone_low = arch_zone_lowest_possible_pfn[zone_type];
 	unsigned long zone_high = arch_zone_highest_possible_pfn[zone_type];
@@ -6506,8 +6505,7 @@ unsigned long __init absent_pages_in_range(unsigned long start_pfn,
 static unsigned long __init zone_absent_pages_in_node(int nid,
 					unsigned long zone_type,
 					unsigned long node_start_pfn,
-					unsigned long node_end_pfn,
-					unsigned long *ignored)
+					unsigned long node_end_pfn)
 {
 	unsigned long zone_low = arch_zone_lowest_possible_pfn[zone_type];
 	unsigned long zone_high = arch_zone_highest_possible_pfn[zone_type];
@@ -6554,43 +6552,9 @@ static unsigned long __init zone_absent_pages_in_node(int nid,
 	return nr_absent;
 }
 
-static inline unsigned long __init compat_zone_spanned_pages_in_node(int nid,
-					unsigned long zone_type,
-					unsigned long node_start_pfn,
-					unsigned long node_end_pfn,
-					unsigned long *zone_start_pfn,
-					unsigned long *zone_end_pfn,
-					unsigned long *zones_size)
-{
-	unsigned int zone;
-
-	*zone_start_pfn = node_start_pfn;
-	for (zone = 0; zone < zone_type; zone++)
-		*zone_start_pfn += zones_size[zone];
-
-	*zone_end_pfn = *zone_start_pfn + zones_size[zone_type];
-
-	return zones_size[zone_type];
-}
-
-static inline unsigned long __init compat_zone_absent_pages_in_node(int nid,
-						unsigned long zone_type,
-						unsigned long node_start_pfn,
-						unsigned long node_end_pfn,
-						unsigned long *zholes_size)
-{
-	if (!zholes_size)
-		return 0;
-
-	return zholes_size[zone_type];
-}
-
 static void __init calculate_node_totalpages(struct pglist_data *pgdat,
 						unsigned long node_start_pfn,
-						unsigned long node_end_pfn,
-						unsigned long *zones_size,
-						unsigned long *zholes_size,
-						bool compat)
+						unsigned long node_end_pfn)
 {
 	unsigned long realtotalpages = 0, totalpages = 0;
 	enum zone_type i;
@@ -6601,31 +6565,14 @@ static void __init calculate_node_totalpages(struct pglist_data *pgdat,
 		unsigned long spanned, absent;
 		unsigned long size, real_size;
 
-		if (compat) {
-			spanned = compat_zone_spanned_pages_in_node(
-						pgdat->node_id, i,
-						node_start_pfn,
-						node_end_pfn,
-						&zone_start_pfn,
-						&zone_end_pfn,
-						zones_size);
-			absent = compat_zone_absent_pages_in_node(
-						pgdat->node_id, i,
-						node_start_pfn,
-						node_end_pfn,
-						zholes_size);
-		} else {
-			spanned = zone_spanned_pages_in_node(pgdat->node_id, i,
-						node_start_pfn,
-						node_end_pfn,
-						&zone_start_pfn,
-						&zone_end_pfn,
-						zones_size);
-			absent = zone_absent_pages_in_node(pgdat->node_id, i,
-						node_start_pfn,
-						node_end_pfn,
-						zholes_size);
-		}
+		spanned = zone_spanned_pages_in_node(pgdat->node_id, i,
+						     node_start_pfn,
+						     node_end_pfn,
+						     &zone_start_pfn,
+						     &zone_end_pfn);
+		absent = zone_absent_pages_in_node(pgdat->node_id, i,
+						   node_start_pfn,
+						   node_end_pfn);
 
 		size = spanned;
 		real_size = size - absent;
@@ -6947,10 +6894,7 @@ static inline void pgdat_set_deferred_range(pg_data_t *pgdat)
 static inline void pgdat_set_deferred_range(pg_data_t *pgdat) {}
 #endif
 
-static void __init __free_area_init_node(int nid, unsigned long *zones_size,
-					 unsigned long node_start_pfn,
-					 unsigned long *zholes_size,
-					 bool compat)
+static void __init free_area_init_node(int nid)
 {
 	pg_data_t *pgdat = NODE_DATA(nid);
 	unsigned long start_pfn = 0;
@@ -6959,19 +6903,16 @@ static void __init __free_area_init_node(int nid, unsigned long *zones_size,
 	/* pg_data_t should be reset to zero when it's allocated */
 	WARN_ON(pgdat->nr_zones || pgdat->kswapd_classzone_idx);
 
+	get_pfn_range_for_nid(nid, &start_pfn, &end_pfn);
+
 	pgdat->node_id = nid;
-	pgdat->node_start_pfn = node_start_pfn;
+	pgdat->node_start_pfn = start_pfn;
 	pgdat->per_cpu_nodestats = NULL;
-	if (!compat) {
-		get_pfn_range_for_nid(nid, &start_pfn, &end_pfn);
-		pr_info("Initmem setup node %d [mem %#018Lx-%#018Lx]\n", nid,
-			(u64)start_pfn << PAGE_SHIFT,
-			end_pfn ? ((u64)end_pfn << PAGE_SHIFT) - 1 : 0);
-	} else {
-		start_pfn = node_start_pfn;
-	}
-	calculate_node_totalpages(pgdat, start_pfn, end_pfn,
-				  zones_size, zholes_size, compat);
+
+	pr_info("Initmem setup node %d [mem %#018Lx-%#018Lx]\n", nid,
+		(u64)start_pfn << PAGE_SHIFT,
+		end_pfn ? ((u64)end_pfn << PAGE_SHIFT) - 1 : 0);
+	calculate_node_totalpages(pgdat, start_pfn, end_pfn);
 
 	alloc_node_mem_map(pgdat);
 	pgdat_set_deferred_range(pgdat);
@@ -6981,7 +6922,7 @@ static void __init __free_area_init_node(int nid, unsigned long *zones_size,
 
 void __init free_area_init_memoryless_node(int nid)
 {
-	__free_area_init_node(nid, NULL, 0, NULL, false);
+	free_area_init_node(nid);
 }
 
 #if !defined(CONFIG_FLAT_NODE_MEM_MAP)
@@ -7509,8 +7450,7 @@ void __init free_area_init(unsigned long *max_zone_pfn)
 	init_unavailable_mem();
 	for_each_online_node(nid) {
 		pg_data_t *pgdat = NODE_DATA(nid);
-		__free_area_init_node(nid, NULL,
-				      find_min_pfn_for_node(nid), NULL, false);
+		free_area_init_node(nid);
 
 		/* Any memory on that node */
 		if (pgdat->node_present_pages)
-- 
2.25.1


