Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079B21DFDD3
	for <lists+linux-riscv@lfdr.de>; Sun, 24 May 2020 11:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikSEorYImvsnCfhV52g/imsO0WWRMxJoVSePrAF+9nA=; b=qp1qQHZNR/MIWa
	zDFumRKxSceDqg1NdqM+iU+I6CeeVrpW9GyYEcy2W0NbFk2ZWpGrlT9KYppsyl4vkvVJma0IVV5wh
	VWIHPF6Z631Tl3N79mOV1taFWQ9CSAcmxlF7MjwSCMAdF0h+/Ry7V/nd3RZb4IbJ+i/TQmX/HOvwR
	qCxhgCfDXu5qfakHWTWjMQhcCE5Ez5e1PvEA42JqdGiQRXieRbhHtsETjKRDZOrzThrsL/TeOKQA3
	YYY46/lPYrECTvBPj9e+7GHJhy5FkAkPIvHzdviXP1/t38sRPa4mECYH806rljznOupdszzZsl9vX
	D8wMW81JtWWxJ40tFnOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcmi8-0001zP-Le; Sun, 24 May 2020 09:14:24 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcmi4-0001yk-Pn
 for linux-riscv@lists.infradead.org; Sun, 24 May 2020 09:14:22 +0000
X-Originating-IP: 90.112.45.105
Received: from localhost.localdomain
 (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr [90.112.45.105])
 (Authenticated sender: alex@ghiti.fr)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E91F0C0009;
 Sun, 24 May 2020 09:14:17 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/8] riscv: Prepare ptdump for vm layout dynamic addresses
Date: Sun, 24 May 2020 05:10:04 -0400
Message-Id: <20200524091008.25587-5-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200524091008.25587-1-alex@ghiti.fr>
References: <20200524091008.25587-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_021420_971298_B02564F0 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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

This is a preparatory patch for sv48 support that will introduce
dynamic PAGE_OFFSET.

Dynamic PAGE_OFFSET implies that all zones (vmalloc, vmemmap, fixaddr...)
whose addresses depend on PAGE_OFFSET become dynamic and can't be used
to statically initialize the array used by ptdump to identify the
different zones of the vm layout.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
---
 arch/riscv/mm/ptdump.c | 49 ++++++++++++++++++++++++++++++++++--------
 1 file changed, 40 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/mm/ptdump.c b/arch/riscv/mm/ptdump.c
index 7eab76a93106..7d9386a7f5c2 100644
--- a/arch/riscv/mm/ptdump.c
+++ b/arch/riscv/mm/ptdump.c
@@ -49,22 +49,41 @@ struct addr_marker {
 	const char *name;
 };
 
+enum address_markers_idx {
+#ifdef CONFIG_KASAN
+	KASAN_SHADOW_START_NR,
+	KASAN_SHADOW_END_NR,
+#endif
+	FIXMAP_START_NR,
+	FIXMAP_END_NR,
+	PCI_IO_START_NR,
+	PCI_IO_END_NR,
+#ifdef CONFIG_SPARSEMEM_VMEMMAP
+	VMEMMAP_START_NR,
+	VMEMMAP_END_NR,
+#endif
+	VMALLOC_START_NR,
+	VMALLOC_END_NR,
+	PAGE_OFFSET_NR,
+	END_OF_SPACE_NR
+};
+
 static struct addr_marker address_markers[] = {
 #ifdef CONFIG_KASAN
 	{KASAN_SHADOW_START,	"Kasan shadow start"},
 	{KASAN_SHADOW_END,	"Kasan shadow end"},
 #endif
-	{FIXADDR_START,		"Fixmap start"},
-	{FIXADDR_TOP,		"Fixmap end"},
-	{PCI_IO_START,		"PCI I/O start"},
-	{PCI_IO_END,		"PCI I/O end"},
+	{0,			"Fixmap start"},
+	{0,			"Fixmap end"},
+	{0,			"PCI I/O start"},
+	{0,			"PCI I/O end"},
 #ifdef CONFIG_SPARSEMEM_VMEMMAP
-	{VMEMMAP_START,		"vmemmap start"},
-	{VMEMMAP_END,		"vmemmap end"},
+	{0,			"vmemmap start"},
+	{0,			"vmemmap end"},
 #endif
-	{VMALLOC_START,		"vmalloc() area"},
-	{VMALLOC_END,		"vmalloc() end"},
-	{PAGE_OFFSET,		"Linear mapping"},
+	{0,			"vmalloc() area"},
+	{0,			"vmalloc() end"},
+	{0,			"Linear mapping"},
 	{-1, NULL},
 };
 
@@ -304,6 +323,18 @@ static int ptdump_init(void)
 {
 	unsigned int i, j;
 
+	address_markers[FIXMAP_START_NR].start_address = FIXADDR_START;
+	address_markers[FIXMAP_END_NR].start_address = FIXADDR_TOP;
+	address_markers[PCI_IO_START_NR].start_address = PCI_IO_START;
+	address_markers[PCI_IO_END_NR].start_address = PCI_IO_END;
+#ifdef CONFIG_SPARSEMEM_VMEMMAP
+	address_markers[VMEMMAP_START_NR].start_address = VMEMMAP_START;
+	address_markers[VMEMMAP_END_NR].start_address = VMEMMAP_END;
+#endif
+	address_markers[VMALLOC_START_NR].start_address = VMALLOC_START;
+	address_markers[VMALLOC_END_NR].start_address = VMALLOC_END;
+	address_markers[PAGE_OFFSET_NR].start_address = PAGE_OFFSET;
+
 	for (i = 0; i < ARRAY_SIZE(pg_level); i++)
 		for (j = 0; j < ARRAY_SIZE(pte_bits); j++)
 			pg_level[i].mask |= pte_bits[j].mask;
-- 
2.20.1


