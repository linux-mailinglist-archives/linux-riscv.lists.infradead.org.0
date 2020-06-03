Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7EA1ED38C
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jun 2020 17:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlyhjjPl9FSmSoJ6kSHtm/qt9q2Z93VgewzzteDIbTY=; b=hHTaeBI0viPkyf
	FbrgmcQuPv4PPc8jcAO1/tjz/MNxQReLasnGaYYWjKVW0PvDPaWAybWm81o13phRBYv7/9+kWWm4V
	nV5iuWNNcVy1QRVtOBVXcOmxAeSbhh6W3h7qnnPUzDs+pwKijtqL7sAjmNM3tKf6ZJwPq9h8WvdcK
	RRPehD71aWf7yap0VBcU/Sv5WeXZPltfcAw4sah91nnfwC3YkNqRFJecmM8CcIS3L150GhtG/ujfY
	CzPhYfPQLtxXYKqOTHW2x89wMEc+6CtmDD+7AF+uacfoUziLRzXV75Biba9KrdD+3ps0Q/Gi3F1m8
	MfWGVopelw8QBwmh4VmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgVTG-0002e7-DZ; Wed, 03 Jun 2020 15:38:26 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVTC-0002dU-RV
 for linux-riscv@lists.infradead.org; Wed, 03 Jun 2020 15:38:24 +0000
X-Originating-IP: 90.112.45.105
Received: from debian.home (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 02D2F240007;
 Wed,  3 Jun 2020 15:38:18 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Anup Patel <anup@brainfault.org>,
 Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] riscv: Use PUD/PGDIR entries for linear mapping when
 possible
Date: Wed,  3 Jun 2020 11:36:08 -0400
Message-Id: <20200603153608.30056-3-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603153608.30056-1-alex@ghiti.fr>
References: <20200603153608.30056-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_083823_023051_B65D082F 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Improve best_map_size so that PUD or PGDIR entries are used for linear
mapping when possible as it allows better TLB utilization.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
---
 arch/riscv/mm/init.c | 45 +++++++++++++++++++++++++++++++++-----------
 1 file changed, 34 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 9a5c97e091c1..d275f9f834cf 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -424,13 +424,29 @@ static void __init create_pgd_mapping(pgd_t *pgdp,
 	create_pgd_next_mapping(nextp, va, pa, sz, prot);
 }
 
-static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
+static bool is_map_size_ok(uintptr_t map_size, phys_addr_t base,
+			   uintptr_t base_virt, phys_addr_t size)
 {
-	/* Upgrade to PMD_SIZE mappings whenever possible */
-	if ((base & (PMD_SIZE - 1)) || (size & (PMD_SIZE - 1)))
-		return PAGE_SIZE;
+	return !((base & (map_size - 1)) || (base_virt & (map_size - 1)) ||
+			(size < map_size));
+}
+
+static uintptr_t __init best_map_size(phys_addr_t base, uintptr_t base_virt,
+				      phys_addr_t size)
+{
+#ifndef __PAGETABLE_PMD_FOLDED
+	if (is_map_size_ok(PGDIR_SIZE, base, base_virt, size))
+		return PGDIR_SIZE;
+
+	if (pgtable_l4_enabled)
+		if (is_map_size_ok(PUD_SIZE, base, base_virt, size))
+			return PUD_SIZE;
+#endif
+
+	if (is_map_size_ok(PMD_SIZE, base, base_virt, size))
+		return PMD_SIZE;
 
-	return PMD_SIZE;
+	return PAGE_SIZE;
 }
 
 /*
@@ -576,7 +592,7 @@ void create_kernel_page_table(pgd_t *pgdir, uintptr_t map_size)
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 {
 	uintptr_t va, end_va;
-	uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
+	uintptr_t map_size;
 
 	load_pa = (uintptr_t)(&_start);
 	load_sz = (uintptr_t)(&_end) - load_pa;
@@ -587,6 +603,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 
 	kernel_virt_addr = KERNEL_VIRT_ADDR;
 
+	map_size = best_map_size(load_pa, PAGE_OFFSET, MAX_EARLY_MAPPING_SIZE);
 	va_pa_offset = PAGE_OFFSET - load_pa;
 	va_kernel_pa_offset = kernel_virt_addr - load_pa;
 	pfn_base = PFN_DOWN(load_pa);
@@ -700,6 +717,8 @@ static void __init setup_vm_final(void)
 
 	/* Map all memory banks */
 	for_each_memblock(memory, reg) {
+		uintptr_t remaining_size;
+
 		start = reg->base;
 		end = start + reg->size;
 
@@ -707,15 +726,19 @@ static void __init setup_vm_final(void)
 			break;
 		if (memblock_is_nomap(reg))
 			continue;
-		if (start <= __pa(PAGE_OFFSET) &&
-		    __pa(PAGE_OFFSET) < end)
-			start = __pa(PAGE_OFFSET);
 
-		map_size = best_map_size(start, end - start);
-		for (pa = start; pa < end; pa += map_size) {
+		pa = start;
+		remaining_size = reg->size;
+
+		while (remaining_size) {
 			va = (uintptr_t)__va(pa);
+			map_size = best_map_size(pa, va, remaining_size);
+
 			create_pgd_mapping(swapper_pg_dir, va, pa,
 					   map_size, PAGE_KERNEL);
+
+			pa += map_size;
+			remaining_size -= map_size;
 		}
 	}
 
-- 
2.20.1


