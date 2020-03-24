Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E94C190647
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 08:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klBEcTaZTM89My6NFvl8X/nEuMTFhvIx/ugZCt3MXO4=; b=Jucdof2CvVDA16
	Ev2/bFyYQy3LdeKGdTDHXeZ8F+bI2g2hoL4BLou4AYMCHGUB80sglpfgLIrXi3dg6DxDX1uiSBBp5
	GAYwVhFxX98jBGkmosK8X+SpaYQSBROy2blJfTgMA7W8+a/plPtcoDi2RJ0jspAhv8LBCKAmp+whj
	8zrTnhq3BCzOFzbNlydzOcTYe0LTJxowzpOmIPsSawWoanbdv2WvvYvD3mko6MEAumc1WeMY+DHD2
	HGxwJL1jTIu1W1BZTj8TaieHMZHxDwEUOoHzSyVFUlWpnUWGu32cCVEIhVPPV8g81KJNvJcvRcoxn
	RaiUk6ucE+K4FCV/wX6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGe1i-0003sK-Rr; Tue, 24 Mar 2020 07:31:06 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGe1d-0003mi-DN
 for linux-riscv@lists.infradead.org; Tue, 24 Mar 2020 07:31:03 +0000
Received: by mail-pj1-x1042.google.com with SMTP id nu11so1056259pjb.1
 for <linux-riscv@lists.infradead.org>; Tue, 24 Mar 2020 00:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=klBEcTaZTM89My6NFvl8X/nEuMTFhvIx/ugZCt3MXO4=;
 b=AG+9uC/8nRSOJB+P5ypaf3gqmhSCEHjRpdinGoG0ihkvqs00uicArdKU/RauncEVNS
 /jr4FM3waJ7m3kgA0/YlE9Y/s2AXXDgjbcVvws87Q+asnKzmm0lO8BVXx4qHBuS+Zdac
 utC7Is/6yjR+1eC5kX1thCIKZAwGmuq+3OJT6bOgObDpguY3PMR3hGE+qaVesFwDMmx6
 3g/jgTiZ2VJSx0ct7YhuzgCBmxpGWsUXxl+v5d4+UMOczw0qWBkSS6RxXqATJlLs63bp
 TnETxvwb0viDn668uejcqivlG5/kLXFfhOtcIHeJvDtfYmKios0w0AS4V3YtK6DnRdye
 zAcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=klBEcTaZTM89My6NFvl8X/nEuMTFhvIx/ugZCt3MXO4=;
 b=ZA+mpvboBWFtk64SmkFEbJVcHUi0Wv5uVB10ox+pCge/cjSIuJfbnmzIBwuyomXgBy
 SnraB7wIxCE0RHD6zNNVO0JA8RGWxWOFzPQekmjCgzY9eFAHzkRKEK60prCeXnZvSCDL
 +NDJqGgmZ///jpZi3OpmUsYQltFS+/ZE6sVX4QKqET8aJT+42eYX2j/+CYnwUDahzsvQ
 bxDP0RqhIsrhTHGTM9jAbW5Ccjps+iMPRCF22g3CkHfnXK7j3KblBGyH76EM0CEoS6l7
 9prU0ZDMXlP/S5jOZ5PeUAwrRiYhng7Yl//Pf3XGchl3k1gski2+BrNJdYBm8Ez0ASQ1
 3Kfg==
X-Gm-Message-State: ANhLgQ0EeV7FmI3rFio12zKTCFtblAN5Oon3tVtN+Ai+YtVAQoRUxQ9J
 OydDJ/Ba+2MfOb6z4vU+vJuwIg==
X-Google-Smtp-Source: ADFU+vurevye9kGuwfX5gxdkntd88xuvY3Fgsvd35C31e8AXMXuwYNW3TYUL5f30GFG46lLBGeJy6Q==
X-Received: by 2002:a17:90a:628a:: with SMTP id
 d10mr3826207pjj.25.1585035060570; 
 Tue, 24 Mar 2020 00:31:00 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i187sm15124648pfg.33.2020.03.24.00.30.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 00:31:00 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, alex@ghiti.fr,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC 2/8] riscv/kaslr: introduce functions to clear page table
Date: Tue, 24 Mar 2020 15:30:47 +0800
Message-Id: <286a940ef8fbc4480c63679271eea440d167a258.1584352425.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1584352425.git.zong.li@sifive.com>
References: <cover.1584352425.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_003101_466943_25C58E63 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

In KASLR, we need to re-create page table after getting a random
destination. Introduce clear function to clear old content. Also, the
page table entries allow writing value when it's empty, so we have to
clear the early page table.

This patch is a preparation to support KASLR.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/mm/init.c | 54 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index ace5d74fd939..51e263c04fa2 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -315,6 +315,7 @@ static void __init create_pmd_mapping(pmd_t *pmdp,
 #define get_pgd_next_virt(__pa)	get_pmd_virt(__pa)
 #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)	\
 	create_pmd_mapping(__nextp, __va, __pa, __sz, __prot)
+#define clear_pgd_next_mapping(__nextp)	clear_pmd(__nextp)
 #define fixmap_pgd_next		fixmap_pmd
 #else
 #define pgd_next_t		pte_t
@@ -322,6 +323,7 @@ static void __init create_pmd_mapping(pmd_t *pmdp,
 #define get_pgd_next_virt(__pa)	get_pte_virt(__pa)
 #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)	\
 	create_pte_mapping(__nextp, __va, __pa, __sz, __prot)
+#define clear_pgd_next_mapping(__nextp)	clear_pte(__nextp)
 #define fixmap_pgd_next		fixmap_pte
 #endif
 
@@ -361,6 +363,58 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
 	return PMD_SIZE;
 }
 
+#ifdef CONFIG_RANDOMIZE_BASE
+static void __init clear_pte(pte_t *ptep)
+{
+	unsigned int i;
+
+	for (i = 0; i < PTRS_PER_PTE; i++)
+		if (!pte_none(ptep[i]))
+			ptep[i] = __pte(0);
+}
+
+static void __init clear_pmd(pmd_t *pmdp)
+{
+	unsigned int i;
+	pte_t *ptep;
+	phys_addr_t pte_phys;
+	uintptr_t kaslr_offset = get_kaslr_offset();
+
+	for (i = 0; i < PTRS_PER_PMD; i++)
+		if (!pmd_none(pmdp[i])) {
+			if (pmd_leaf(pmdp[i])) {
+				pmd_clear(&pmdp[i]);
+			} else {
+				pte_phys = PFN_PHYS(_pmd_pfn(pmdp[i]));
+				ptep = get_pte_virt(pte_phys + kaslr_offset);
+				clear_pte(ptep);
+				pmd_clear(&pmdp[i]);
+			}
+		}
+}
+
+static void __init clear_pgd(pgd_t *pgdp)
+{
+	unsigned int i;
+	pgd_next_t *nextp;
+	phys_addr_t next_phys;
+	uintptr_t kaslr_offset = get_kaslr_offset();
+
+	for (i = 0; i < PTRS_PER_PGD; i++)
+		if (pgd_val(pgdp[i]) != 0) {
+			if (pgd_leaf(pgd_val(pgdp[i]))) {
+				set_pgd(&pgdp[i], __pgd(0));
+			} else {
+				next_phys = PFN_PHYS(_pgd_pfn(pgdp[i]));
+				nextp = get_pgd_next_virt(next_phys +
+							  kaslr_offset);
+				clear_pgd_next_mapping(nextp);
+				set_pgd(&pgdp[i], __pgd(0));
+			}
+		}
+}
+#endif
+
 /*
  * setup_vm() is called from head.S with MMU-off.
  *
-- 
2.25.1


