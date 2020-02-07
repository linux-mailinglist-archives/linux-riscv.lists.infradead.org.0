Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B12155519
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Feb 2020 10:53:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWIoySfTs+lYj43oDvfKH9OpO9DF7iULZlt5qviH+8A=; b=URaLY2/U+QtJoz
	O0FqL6rhVDO5UYPzo0ie8KA9T5byFyj74J+/jxL2yxBtHu6/3TVswn/SCL4N8al/GOxZKUuDxjAQt
	d+8RZnaOWI0I4EEzAauikj69TtAz4b5S2keqVNoWp04ojxMvtOHyfERPJAo7GSASYLUIwb0WG47L3
	h7q44HSqiw2RKpRXlV6MWrI5rpHoTaRMXAlME45lIrpIljggd79DsZfpLW78P4h22QMOjPG1Hm5th
	jjVgN1esZ/6ZQekyDVeZ89GHfa9IwnAyisBWMBktCJNcuDQYbaD7um4oiZIPul4WNvWSpQcGQqEQ8
	KqgjWV9WIevUnIDZx5ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j00Jp-0002zl-Ne; Fri, 07 Feb 2020 09:53:01 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j00Jm-0002uZ-6Z
 for linux-riscv@lists.infradead.org; Fri, 07 Feb 2020 09:52:59 +0000
Received: by mail-pf1-x443.google.com with SMTP id y73so1022221pfg.2
 for <linux-riscv@lists.infradead.org>; Fri, 07 Feb 2020 01:52:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iWIoySfTs+lYj43oDvfKH9OpO9DF7iULZlt5qviH+8A=;
 b=T1EdeMqp3OpvEIUD067ScWuXZuCd8XlSmFGVywk4DzSH6/6H1nFXZIcRTi7eLwBvBk
 +W4octi2UT5DzDuW0YXlQrlPVbYltKEU+MX7Kl0nHQ7mHuSPXBhpcUaQ2TBronsX2Rra
 nYy0Dda1dW/8g2usNTlGA7JWjllKI2rns6jyujZOo38AQjBqi71tOKbFf/rDK1NxHnbj
 Db3VKgqAZUyghgUBgFuyQJtz0YZq06RzaG0QcLnnhEHDiIHOVV3W8oL22yi9VW12OqKm
 Q0vF/YJoIwGoiVSEovgXg5LqYmry65q9uFzczdmollrYCXsblZditHu/81IHhW5/eoPJ
 OAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iWIoySfTs+lYj43oDvfKH9OpO9DF7iULZlt5qviH+8A=;
 b=XUFCuiSs0enTtkNlPBL1bnrZ17+7kWQ6ffgoipHy2lVNDASnHp2Ruey4bH6HFbP4++
 4N/Qu8g8nnd+nD7n01X6gBZIMwtV211EuVBucjv46nIH71xWZpsEugfxzwFVnoP80lAq
 /dQPNcHaU5MpJTyRZs0ou2cC7L0D2h+6O1u6bmPRCHSzjsZAtJg/DYIRMRbYsfPi9lds
 PqgvnpXuaK7yBCb9MIY6GISSFO9EVYTTDr6B9GTm3bFDhegT46ZDgsSpj8r3HVrAR6t9
 vT70e/nfDnSBpbJZdntlL+7ESs582PTgXo+5fKrM1d23VD2HyngOTa4bzLx2tHqoaYA2
 o/wQ==
X-Gm-Message-State: APjAAAVQAIuqCU90SuE46ywtDJyAIdzcM615RpcwG4j8zrFyCmMsApAL
 p7KJVeGSN7Dmc3StPemxCDDSGnS9S74=
X-Google-Smtp-Source: APXvYqzpAt+eHl3Ef66fH5hx5gSetjsz7ko9rZ4uUWujTcWwyfFAsCFXvynl7xHbd2T9dI1V9vm4EQ==
X-Received: by 2002:a65:4242:: with SMTP id d2mr8690309pgq.166.1581069176273; 
 Fri, 07 Feb 2020 01:52:56 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id s23sm2060934pjq.17.2020.02.07.01.52.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 01:52:55 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] riscv: adjust the indent
Date: Fri,  7 Feb 2020 17:52:45 +0800
Message-Id: <20200207095245.21955-3-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200207095245.21955-1-zong.li@sifive.com>
References: <20200207095245.21955-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_015258_250083_C5628BD3 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Adjust the indent to match Linux coding style.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/mm/kasan_init.c | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/mm/kasan_init.c b/arch/riscv/mm/kasan_init.c
index f8eaf7e73a23..ec0ca90dd900 100644
--- a/arch/riscv/mm/kasan_init.c
+++ b/arch/riscv/mm/kasan_init.c
@@ -19,18 +19,20 @@ asmlinkage void __init kasan_early_init(void)
 	for (i = 0; i < PTRS_PER_PTE; ++i)
 		set_pte(kasan_early_shadow_pte + i,
 			mk_pte(virt_to_page(kasan_early_shadow_page),
-			PAGE_KERNEL));
+			       PAGE_KERNEL));
 
 	for (i = 0; i < PTRS_PER_PMD; ++i)
 		set_pmd(kasan_early_shadow_pmd + i,
-		 pfn_pmd(PFN_DOWN(__pa((uintptr_t)kasan_early_shadow_pte)),
-			__pgprot(_PAGE_TABLE)));
+			pfn_pmd(PFN_DOWN
+				(__pa((uintptr_t) kasan_early_shadow_pte)),
+				__pgprot(_PAGE_TABLE)));
 
 	for (i = KASAN_SHADOW_START; i < KASAN_SHADOW_END;
 	     i += PGDIR_SIZE, ++pgd)
 		set_pgd(pgd,
-		 pfn_pgd(PFN_DOWN(__pa(((uintptr_t)kasan_early_shadow_pmd))),
-			__pgprot(_PAGE_TABLE)));
+			pfn_pgd(PFN_DOWN
+				(__pa(((uintptr_t) kasan_early_shadow_pmd))),
+				__pgprot(_PAGE_TABLE)));
 
 	/* init for swapper_pg_dir */
 	pgd = pgd_offset_k(KASAN_SHADOW_START);
@@ -38,8 +40,9 @@ asmlinkage void __init kasan_early_init(void)
 	for (i = KASAN_SHADOW_START; i < KASAN_SHADOW_END;
 	     i += PGDIR_SIZE, ++pgd)
 		set_pgd(pgd,
-		 pfn_pgd(PFN_DOWN(__pa(((uintptr_t)kasan_early_shadow_pmd))),
-			__pgprot(_PAGE_TABLE)));
+			pfn_pgd(PFN_DOWN
+				(__pa(((uintptr_t) kasan_early_shadow_pmd))),
+				__pgprot(_PAGE_TABLE)));
 
 	flush_tlb_all();
 }
@@ -86,7 +89,8 @@ void __init kasan_init(void)
 	unsigned long i;
 
 	kasan_populate_early_shadow((void *)KASAN_SHADOW_START,
-			(void *)kasan_mem_to_shadow((void *)VMALLOC_END));
+				    (void *)kasan_mem_to_shadow((void *)
+								VMALLOC_END));
 
 	for_each_memblock(memory, reg) {
 		void *start = (void *)__va(reg->base);
@@ -95,14 +99,14 @@ void __init kasan_init(void)
 		if (start >= end)
 			break;
 
-		populate(kasan_mem_to_shadow(start),
-			 kasan_mem_to_shadow(end));
+		populate(kasan_mem_to_shadow(start), kasan_mem_to_shadow(end));
 	};
 
 	for (i = 0; i < PTRS_PER_PTE; i++)
 		set_pte(&kasan_early_shadow_pte[i],
 			mk_pte(virt_to_page(kasan_early_shadow_page),
-			__pgprot(_PAGE_PRESENT | _PAGE_READ | _PAGE_ACCESSED)));
+			       __pgprot(_PAGE_PRESENT | _PAGE_READ |
+					_PAGE_ACCESSED)));
 
 	memset(kasan_early_shadow_page, 0, PAGE_SIZE);
 	init_task.kasan_depth = 0;
-- 
2.25.0


