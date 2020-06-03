Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A149B1ECB41
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jun 2020 10:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awziwPTvIk8pQUKVX85WToAgKAMAP5kvbQWePrvjj/w=; b=iOaDUoGJ/iOhBL
	ViazdYzdMnrj6h9mL9Hs7rGJdnIrbfh/c/4uyJht3ZFJ1PUn2jJD2ggcTQFSbixzajFWsfDfjGhcy
	dJj+KC4X7CaMjIp+hmDFLmrDxwgbEeP6kHJCVg76qygCTvg2a3oVNHEVGbDIi6W9nJlHHf3m+OubY
	gPQ6vXZF0Ekb10sE0s+OsZd9j4SiUYSWhsiYJf6yy2hnTQo7RnXdP+Tr0csUy+ZKZoRFSdpNGDOnd
	JUANpOtwhRgtIt0sWhaHNmz1pqlppdI2nkn2yysldqwG71VzlqgS3Yofpq/xoVzBylkuhDqWok4K2
	Q7QN1YU+Xqttf+1uBUDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgOaX-0001aw-1x; Wed, 03 Jun 2020 08:17:29 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgOaT-0001aN-PJ
 for linux-riscv@lists.infradead.org; Wed, 03 Jun 2020 08:17:27 +0000
Received: from debian.home (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 352FF200004;
 Wed,  3 Jun 2020 08:17:21 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/8] riscv: Allow user to downgrade to sv39 when hw
 supports sv48
Date: Wed,  3 Jun 2020 04:11:02 -0400
Message-Id: <20200603081104.14004-7-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603081104.14004-1-alex@ghiti.fr>
References: <20200603081104.14004-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_011725_958863_258A0ADD 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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

This is made possible by using the mmu-type property of the cpu node of
the device tree.

By default, the kernel will boot with 4-level page table if the hw supports
it but it can be interesting for the user to select 3-level page table as
it is less memory consuming and faster since it requires less memory
accesses in case of a TLB miss.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/mm/init.c | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index a937173af13d..4064639b24e4 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -509,10 +509,32 @@ void disable_pgtable_l4(void)
  * then read SATP to see if the configuration was taken into account
  * meaning sv48 is supported.
  */
-asmlinkage __init void set_satp_mode(uintptr_t load_pa)
+asmlinkage __init void set_satp_mode(uintptr_t load_pa, uintptr_t dtb_pa)
 {
 	u64 identity_satp, hw_satp;
+	int cpus_node;
 
+	/* 1/ Check if the user asked for sv39 explicitly in the device tree */
+	cpus_node = fdt_path_offset((void *)dtb_pa, "/cpus");
+	if (cpus_node >= 0) {
+		int node;
+
+		fdt_for_each_subnode(node, (void *)dtb_pa, cpus_node) {
+			const char *mmu_type = fdt_getprop((void *)dtb_pa, node,
+							"mmu-type", NULL);
+			if (!mmu_type)
+				continue;
+
+			if (!strcmp(mmu_type, "riscv,sv39")) {
+				disable_pgtable_l4();
+				return;
+			}
+
+			break;
+		}
+	}
+
+	/* 2/ Determine if the HW supports sv48: if not, fallback to sv39 */
 	create_pgd_mapping(early_pg_dir, load_pa, (uintptr_t)early_pud,
 			   PGDIR_SIZE, PAGE_TABLE);
 	create_pud_mapping(early_pud, load_pa, (uintptr_t)early_pmd,
@@ -560,7 +582,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 	load_sz = (uintptr_t)(&_end) - load_pa;
 
 #if defined(CONFIG_64BIT) && !defined(CONFIG_MAXPHYSMEM_2GB)
-	set_satp_mode(load_pa);
+	set_satp_mode(load_pa, dtb_pa);
 #endif
 
 	kernel_virt_addr = KERNEL_VIRT_ADDR;
-- 
2.20.1


