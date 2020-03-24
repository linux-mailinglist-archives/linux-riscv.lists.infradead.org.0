Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D00F190557
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 06:51:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RAJcAxazVkMFpnC2zej9EyiUQ78WoNZOizwxx0XptYQ=; b=srJgwB/tR6pyvnbGaoxkvk4fb9
	LwACCeGUROiKhAimi+m0Iy/b5LLoRQBEpN5NVEmEk2k4EPYGa3ydULXcupozx+xs4FR72J2FKOZCR
	AgBc4YcYbKJzGWD2QPa0ft5S7Doeeaon/YbR7c9dj2zITb7NNQzmK1+veTudAVvJhiUgnrbrqc132
	1sxsZsAEl08xdCZYO7wleCHmP7+8AGMLXxnwgNiZN1rOCtShNQEa7YzuHwXke/TGnQXbgQshxt/eT
	Yt5i7S1r10lbKqEAM7qgu0p9qt/ycfLjzP2+IvXtZskyVRgsmr3oAqmISWHEHPc8INT67WKVkPaEB
	qhEf02Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGcSm-0001kR-Qk; Tue, 24 Mar 2020 05:50:56 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGcSi-0001jo-RU
 for linux-riscv@lists.infradead.org; Tue, 24 Mar 2020 05:50:54 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id 02O5nWci025103;
 Tue, 24 Mar 2020 13:49:32 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from atcsqa06.andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Tue, 24 Mar 2020
 13:49:52 +0800
From: Nick Hu <nickhu@andestech.com>
To: <paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>, 
 <guoren@kernel.org>, <akpm@linux-foundation.org>, <rppt@linux.ibm.com>,
 <nickhu@andestech.com>, <mark.rutland@arm.com>, <nylon7@andestech.com>,
 <alankao@andestech.com>, <alexios.zavras@intel.com>,
 <tglx@linutronix.de>, <npiggin@gmail.com>, <anup@brainfault.org>,
 <zong.li@sifive.com>, <linux-riscv@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] riscv: mm: synchronize MMU after page table update
Date: Tue, 24 Mar 2020 13:49:45 +0800
Message-ID: <20200324054945.26733-1-nickhu@andestech.com>
X-Mailer: git-send-email 2.17.0
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com 02O5nWci025103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_225053_141601_FBBE9A16 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Similar to commit bf587caae305 ("riscv: mm: synchronize MMU after pte change")

For those riscv implementations whose TLB cannot synchronize with dcache,
an SFENCE.VMA is necessary after page table update.
This patch fixed two functions:

1. pgd_alloc
During fork, a parent process prepares pgd for its child and updates satp
later, but they may not run on the same core. Adding a remote SFENCE.VMA to
invalidate TLB in other cores is needed. Thus use flush_tlb_all() instead
of local_flush_tlb_all() here.
Similar approaches can be found in arm and csky.

2. __set_fixmap
Add a SFENCE.VMA after fixmap pte update.
Similar approaches can be found in arm and sh.

Signed-off-by: Nick Hu <nickhu@andestech.com>
Signed-off-by: Nylon Chen <nylon7@andestech.com>
Cc: Alan Kao <alankao@andestech.com>
---
 arch/riscv/include/asm/pgalloc.h | 1 +
 arch/riscv/mm/init.c             | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/pgalloc.h b/arch/riscv/include/asm/pgalloc.h
index 3f601ee8233f..071468fa14b7 100644
--- a/arch/riscv/include/asm/pgalloc.h
+++ b/arch/riscv/include/asm/pgalloc.h
@@ -51,6 +51,7 @@ static inline pgd_t *pgd_alloc(struct mm_struct *mm)
 		memcpy(pgd + USER_PTRS_PER_PGD,
 			init_mm.pgd + USER_PTRS_PER_PGD,
 			(PTRS_PER_PGD - USER_PTRS_PER_PGD) * sizeof(pgd_t));
+		flush_tlb_all();
 	}
 	return pgd;
 }
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index fab855963c73..a7f329503ed0 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -203,8 +203,8 @@ void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
 		set_pte(ptep, pfn_pte(phys >> PAGE_SHIFT, prot));
 	} else {
 		pte_clear(&init_mm, addr, ptep);
-		local_flush_tlb_page(addr);
 	}
+	local_flush_tlb_page(addr);
 }
 
 static pte_t *__init get_pte_virt(phys_addr_t pa)
-- 
2.17.0


