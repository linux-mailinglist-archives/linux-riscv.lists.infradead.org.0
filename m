Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D991BDBBD
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Apr 2020 14:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4ZXOTT3g/42VkrtKN4EO4uuOEWqbvXp8UEtWMhuGVA=; b=MQzISxKgjexdFy
	TvOsLLhUae5qwgqbP5NFBPitZWg5cT7THUfC0FxG71mtbdLFT8V9dRSmA2DwMMJ0yItRbMTOrSgDk
	c03YjzzwvgzRq3Phgtdc20OI4SMXgqx1w0SDesRoNUtB/JqBN8s9wU7pqE4xIgZ25h4mSoZDq+R2t
	7UQN+GX2dh/6DZ31COo8p4oeVBU7SfF0hpr4m542ZEWacy5nzb5wo0l3cVvZC3R+Me5KzAuK3OFEV
	vGtdg6kmh95ZpNAkCCM84FCRFLedluVnogEH+H3W3e4LoP/EvTxyDqupIPvTKSUBqad/N0/kqrW+4
	QfMqnYkMxx+SOnomKk3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlcq-0003m4-Uj; Wed, 29 Apr 2020 12:15:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlcl-0003jm-HB; Wed, 29 Apr 2020 12:15:37 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C09542137B;
 Wed, 29 Apr 2020 12:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588162535;
 bh=LAxAeuWhmBZs2K9yaH073vbAp8R2qgeI+W+wO+9G8t0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mRJwSXatxKQFkBy8CSkb9ErBmFMoezM1Cz7IOn9+HPsIp+U0M1DBw+r5J5mhB7KTs
 2NbzLoiEl9R/yPY1yZ17u5ssCWhUvwJnaJKzAz71lqjCATcSJZPv0gMhu58ikeyXHu
 L5BTx82i//4lIDwpLHNS9CTGD6W/rlnxTYnF+hMY=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 15/20] mm: memmap_init: iterate over memblock regions
 rather that check each PFN
Date: Wed, 29 Apr 2020 15:11:21 +0300
Message-Id: <20200429121126.17989-16-rppt@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200429121126.17989-1-rppt@kernel.org>
References: <20200429121126.17989-1-rppt@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_051535_656818_8686B496 
X-CRM114-Status: GOOD (  15.17  )
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

From: Baoquan He <bhe@redhat.com>

When called during boot the memmap_init_zone() function checks if each PFN
is valid and actually belongs to the node being initialized using
early_pfn_valid() and early_pfn_in_nid().

Each such check may cost up to O(log(n)) where n is the number of memory
banks, so for large amount of memory overall time spent in early_pfn*()
becomes substantial.

Since the information is anyway present in memblock, we can iterate over
memblock memory regions in memmap_init() and only call memmap_init_zone()
for PFN ranges that are know to be valid and in the appropriate node.

Signed-off-by: Baoquan He <bhe@redhat.com>
Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 mm/page_alloc.c | 47 ++++++++++++++++-------------------------------
 1 file changed, 16 insertions(+), 31 deletions(-)

diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 7f6a3081edb8..8d112defaead 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5939,23 +5939,6 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
 	return false;
 }
 
-#ifdef CONFIG_SPARSEMEM
-/* Skip PFNs that belong to non-present sections */
-static inline __meminit unsigned long next_pfn(unsigned long pfn)
-{
-	const unsigned long section_nr = pfn_to_section_nr(++pfn);
-
-	if (present_section_nr(section_nr))
-		return pfn;
-	return section_nr_to_pfn(next_present_section_nr(section_nr));
-}
-#else
-static inline __meminit unsigned long next_pfn(unsigned long pfn)
-{
-	return pfn++;
-}
-#endif
-
 /*
  * Initially all pages are reserved - free ones are freed
  * up by memblock_free_all() once the early boot process is
@@ -5990,19 +5973,7 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
 #endif
 
 	for (pfn = start_pfn; pfn < end_pfn; ) {
-		/*
-		 * There can be holes in boot-time mem_map[]s handed to this
-		 * function.  They do not exist on hotplugged memory.
-		 */
 		if (context == MEMMAP_EARLY) {
-			if (!early_pfn_valid(pfn)) {
-				pfn = next_pfn(pfn);
-				continue;
-			}
-			if (!early_pfn_in_nid(pfn, nid)) {
-				pfn++;
-				continue;
-			}
 			if (overlap_memmap_init(zone, &pfn))
 				continue;
 			if (defer_init(nid, pfn, end_pfn))
@@ -6118,9 +6089,23 @@ static void __meminit zone_init_free_lists(struct zone *zone)
 }
 
 void __meminit __weak memmap_init(unsigned long size, int nid,
-				  unsigned long zone, unsigned long start_pfn)
+				  unsigned long zone,
+				  unsigned long range_start_pfn)
 {
-	memmap_init_zone(size, nid, zone, start_pfn, MEMMAP_EARLY, NULL);
+	unsigned long start_pfn, end_pfn;
+	unsigned long range_end_pfn = range_start_pfn + size;
+	int i;
+
+	for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
+		start_pfn = clamp(start_pfn, range_start_pfn, range_end_pfn);
+		end_pfn = clamp(end_pfn, range_start_pfn, range_end_pfn);
+
+		if (end_pfn > start_pfn) {
+			size = end_pfn - start_pfn;
+			memmap_init_zone(size, nid, zone, start_pfn,
+					 MEMMAP_EARLY, NULL);
+		}
+	}
 }
 
 static int zone_batchsize(struct zone *zone)
-- 
2.26.1


