Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A605AF42B4
	for <lists+linux-riscv@lfdr.de>; Fri,  8 Nov 2019 10:00:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F4L+Rog8EyzJ/cz20EfUfi6bqAlXNNUShUe4pgmHaOc=; b=jLs
	8u08AdJmMZhk/bvvzySRBg6WuUShMxm7dBT9T4FL0hLYv/tPurK3+L4h45EfholGhdkPA0xAnLM73
	xwRBCjPsgctWHOn++7qAJRHFmCoTXwXqiACSYiQIKB7ljS0Z8mdMltIx5f9d5maoCr/7B0mrlII0N
	CsKpODzNTNdXjku+/4C20sZ7mUXIxQm2OMOZCJ+KTszpu24UOSpkukkq0uiZ7phHGwenpie0GgC5I
	N9Ww3IiCPB47csWjfBJ30hrKhDkbUWB0u7jSmG5eJW/Dg+RZPhk9jxTnDxudPqqEWsC/Y4NcrX47d
	2huDweQKTUMrsnU1N7rmhWFrksJK6+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT08Q-0004Nc-MV; Fri, 08 Nov 2019 09:00:50 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT08L-0004Md-SM
 for linux-riscv@lists.infradead.org; Fri, 08 Nov 2019 09:00:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id 15so3561248pgt.7
 for <linux-riscv@lists.infradead.org>; Fri, 08 Nov 2019 01:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=4mA/9w+p4ZyPfP618OGaLYeasHgkEFTburLhkdeh8Lw=;
 b=CSeBGviPRt2/P3HOhMFEdRZs+ILwW5TPxv/TB+YeJDUPzK2T3ptP3mKQO5BjNoUIvE
 ag5ENFE/uMiUHfofqja/O4qkx1fgWpSbjKf7E9qJ6jKNvrstn30J7dQ0JwWJh6vMRd/2
 pC22Lqp60LieCWtmhZIsFDpR+qEFDRR+nzuxvB7XUI3q9oVhtRg6MImhtUHYmT+NELIM
 6ZidCcZ+Q68re198a/5oL6XCXgfHsCAxu/Z5KPqRFJJXvAutuG4fQ7ZYBTSRoyry19NU
 teIGjhsIzppsebkiow26ahkc5wwA6ZGjrFAje4GyImyHoUdMPJCyCcWfV0lRARAdkJUi
 lsaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4mA/9w+p4ZyPfP618OGaLYeasHgkEFTburLhkdeh8Lw=;
 b=sxItYc2PalOZPZpA5xJEsn7o5HNgqC+w5YACezoqjw1Qf6u0Y2zF8Zto8GpVSJherW
 FrHFWeGfYMYRP5uIKyHQoMxBesejirNynNANRBR8VpluJFH2o5632Nsep1htJb1upnAV
 qk+8HUdqAKsJEA/fZsjCpo2r25wWlokn0Et71V5qkmq2SgEX1JBcXflm9+YtZ4+U+uS+
 bIx8/pZLSqx3/a1Vw5HsMX8XHvi1OOKD6dQ5RxhnmdSiF0ClSpt+mvJnnWFT9uBN6w87
 SHVOO5JGQbLRCWv0vYTKdW95qNIa/EAd/Mz3s9Dj9iQ0fU7b979qfrHIGGFD2LqI0L/C
 rAIg==
X-Gm-Message-State: APjAAAWyxT7uZJp6aqmbgaZifWHY5CJHHCaWs/V5bMewkMBxLAX5CUGw
 dDiuj501CfFFiut1+oxPXWw2VA==
X-Google-Smtp-Source: APXvYqx4IphqT43H1gJB2tzKQeJV2eonVGQE6tl6qIW3cvRDXBGlE55PSNn/1/Xn54s0jPojQmXuWg==
X-Received: by 2002:aa7:8d04:: with SMTP id j4mr2048566pfe.49.1573203645268;
 Fri, 08 Nov 2019 01:00:45 -0800 (PST)
Received: from gamma07.internal.sifive.com ([64.62.193.194])
 by smtp.gmail.com with ESMTPSA id m65sm8636707pje.3.2019.11.08.01.00.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 08 Nov 2019 01:00:44 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, anup@brainfault.org,
 hch@infradead.org
Subject: [PATCH v3] riscv: Use PMD_SIZE to repalce PTE_PARENT_SIZE
Date: Fri,  8 Nov 2019 01:00:40 -0800
Message-Id: <1573203640-6173-1-git-send-email-zong.li@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_010045_919470_4924ADA9 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The PMD_SIZE is equal to PGDIR_SIZE when __PAGETABLE_PMD_FOLDED is
defined.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>

---
 arch/riscv/mm/init.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 573463d..e83df7a 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -273,7 +273,6 @@ static void __init create_pmd_mapping(pmd_t *pmdp,
 #define get_pgd_next_virt(__pa)	get_pmd_virt(__pa)
 #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)	\
 	create_pmd_mapping(__nextp, __va, __pa, __sz, __prot)
-#define PTE_PARENT_SIZE		PMD_SIZE
 #define fixmap_pgd_next		fixmap_pmd
 #else
 #define pgd_next_t		pte_t
@@ -281,7 +280,6 @@ static void __init create_pmd_mapping(pmd_t *pmdp,
 #define get_pgd_next_virt(__pa)	get_pte_virt(__pa)
 #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)	\
 	create_pte_mapping(__nextp, __va, __pa, __sz, __prot)
-#define PTE_PARENT_SIZE		PGDIR_SIZE
 #define fixmap_pgd_next		fixmap_pte
 #endif
 
@@ -314,14 +312,11 @@ static void __init create_pgd_mapping(pgd_t *pgdp,
 
 static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
 {
-	uintptr_t map_size = PAGE_SIZE;
+	/* Upgrade to PMD_SIZE mappings whenever possible */
+	if ((base & (PMD_SIZE - 1)) || (size & (PMD_SIZE - 1)))
+		return PAGE_SIZE;
 
-	/* Upgrade to PMD/PGDIR mappings whenever possible */
-	if (!(base & (PTE_PARENT_SIZE - 1)) &&
-	    !(size & (PTE_PARENT_SIZE - 1)))
-		map_size = PTE_PARENT_SIZE;
-
-	return map_size;
+	return PMD_SIZE;
 }
 
 /*
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
