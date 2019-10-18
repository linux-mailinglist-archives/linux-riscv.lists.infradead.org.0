Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F163DBB0A
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 02:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zv7eCgXWZ919Su3XQht3TZi6Ofu8dPC9nemp7skSEQA=; b=VF6LeBKusK74YO
	ApH/G9FEEltLyYMV0cmT0myQ+teH1T3YPeHeKAA3Brri3md4ALb7Z4N2jN7bXePtSqymLhJ4WZy4L
	mDp/PZrDSVGfT08Z3bABRLC6HE/7WReiLsJoYQ61Sj1rVuYJymGQdASwzsYhfIuyU6Hm+IioGoyCJ
	8PqZXMDAkI1d0z/T4X5Gd2xypNOXcxhdcKpm8DdyjhKf5TDMl1rHHtcWL2rbH/iACltcQODaceHWg
	sg5ziTZ8BAaw/c7hAoGEqwFxqypayIQGGy8f3a4OtpBp0fRSpwM6i8RIJWKFhVLFW1cPqk969iTT/
	BUkvXBlw3yNbDsyzsyig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLGT7-0003o5-2K; Fri, 18 Oct 2019 00:50:13 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLGSs-00033w-DK
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 00:50:00 +0000
Received: by mail-il1-x141.google.com with SMTP id v2so3960511ilm.0
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 17:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JYeo0xAdWe0VE7AGn4vUOp9/RKxdCHKwx1Hu2VD3ZFI=;
 b=e7FqzvY5kEG/Xv9dIUQ1oCTbqcLEHSai2TGkF9G5GOVHJOR/JRSwHHyKyxE9Y+S1Uq
 Hb8dlvw9i96xctpHBYqQBqf2k8TItk5GeFtah91bVmtekmsMQyuy9hvZ1tzGZWmJ7Q3R
 GEgHJm5NtXAKDGR/rADOJZgrY8yLRaSwrpHj7qmYP1C9npIOGGSsJ+sEx/8+SF3AxHF1
 zj95h/38bh57/dIL1N0pBQ8+GEsb3385SjPqW4Z2u+/mmYHQM1sgPI/92NHMZR+yr4pf
 eRB3BIF3i8o0joYNAcCb+1rjlG2oHRXmv5wiiqOCHq94DPnpSd9btuAuXXXApfSK7fB1
 Y/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JYeo0xAdWe0VE7AGn4vUOp9/RKxdCHKwx1Hu2VD3ZFI=;
 b=XL2jEK0I9iMIouq2h5esGZv1R51U2zfZY173EKyue+UtFw+XrwugTIJ7O+P+bQRJH4
 HcQpiBWrhMiE3FQ2hRLEz9DPb8pyo2dLiajijecJRtGRaJ82x+fSzYRYNWA6wz6Rgqex
 Uq0yPHJC9IObYDrLN+EZ8hvgdFr4EFgcSWWku3+HNCz0Ie/KOGWUFFTbjhWGZvrcqEa8
 LqKQAHEAMolqXEPleQEPVObPcUSuNvwZtvD23vaP0UumT8CHowZVHZSPWGscJz4ydDGi
 3oEAiVWDLIpiCOwvzcdwvhGiDpxbsKM0Uxgemw+HZY4X4INXauLWkYbtfeBGapFiB1e0
 FkWg==
X-Gm-Message-State: APjAAAX2BOZOJwDa9opVFixp5hvvB0aVp8+pHTMnycAacUe/KKZIqv+W
 e1rbS9QXshGo6spfOjuY4NN6yQuBcVg=
X-Google-Smtp-Source: APXvYqyQCKT5vl5G9xMEmMO1JlNfzDH207v1XKhgNJtHaIqaSHj8HG+prF2g3ggA3i8umXodoDGJGA==
X-Received: by 2002:a92:9f8c:: with SMTP id z12mr7348576ilk.111.1571359797398; 
 Thu, 17 Oct 2019 17:49:57 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z20sm1493891iof.38.2019.10.17.17.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 17:49:57 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 6/8] riscv: mark some code and data as file-static
Date: Thu, 17 Oct 2019 17:49:27 -0700
Message-Id: <20191018004929.3445-7-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018004929.3445-1-paul.walmsley@sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_174958_528472_119C6672 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Several functions and arrays which are only used in the files in which
they are declared are missing "static" qualifiers.  Warnings for these
symbols are reported by sparse:

arch/riscv/kernel/stacktrace.c:22:14: warning: symbol 'walk_stackframe' was not declared. Should it be static?
arch/riscv/kernel/vdso.c:28:18: warning: symbol 'vdso_data' was not declared. Should it be static?
arch/riscv/mm/init.c:42:6: warning: symbol 'setup_zero_page' was not declared. Should it be static?
arch/riscv/mm/init.c:152:7: warning: symbol 'fixmap_pte' was not declared. Should it be static?
arch/riscv/mm/init.c:211:7: warning: symbol 'trampoline_pmd' was not declared. Should it be static?
arch/riscv/mm/init.c:212:7: warning: symbol 'fixmap_pmd' was not declared. Should it be static?
arch/riscv/mm/init.c:219:7: warning: symbol 'early_pmd' was not declared. Should it be static?
arch/riscv/mm/sifive_l2_cache.c:145:12: warning: symbol 'sifive_l2_init' was not declared. Should it be static?

Resolve these warnings by marking them as static.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/kernel/stacktrace.c  |  6 ++++--
 arch/riscv/kernel/vdso.c        |  2 +-
 arch/riscv/mm/init.c            | 12 +++++++-----
 arch/riscv/mm/sifive_l2_cache.c |  2 +-
 4 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
index 0940681d2f68..fd908baed51c 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -19,8 +19,10 @@ struct stackframe {
 	unsigned long ra;
 };
 
-void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
-			     bool (*fn)(unsigned long, void *), void *arg)
+static void notrace walk_stackframe(struct task_struct *task,
+				    struct pt_regs *regs,
+				    bool (*fn)(unsigned long, void *),
+				    void *arg)
 {
 	unsigned long fp, sp, pc;
 
diff --git a/arch/riscv/kernel/vdso.c b/arch/riscv/kernel/vdso.c
index c9c21e0d5641..e24fccab8185 100644
--- a/arch/riscv/kernel/vdso.c
+++ b/arch/riscv/kernel/vdso.c
@@ -25,7 +25,7 @@ static union {
 	struct vdso_data	data;
 	u8			page[PAGE_SIZE];
 } vdso_data_store __page_aligned_data;
-struct vdso_data *vdso_data = &vdso_data_store.data;
+static struct vdso_data *vdso_data = &vdso_data_store.data;
 
 static int __init vdso_init(void)
 {
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index fe68e94ea946..79cfb35f1e0e 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -40,7 +40,7 @@ static void __init zone_sizes_init(void)
 	free_area_init_nodes(max_zone_pfns);
 }
 
-void setup_zero_page(void)
+static void setup_zero_page(void)
 {
 	memset((void *)empty_zero_page, 0, PAGE_SIZE);
 }
@@ -150,7 +150,7 @@ EXPORT_SYMBOL(pfn_base);
 void *dtb_early_va;
 pgd_t swapper_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
 pgd_t trampoline_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
-pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
+static pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
 static bool mmu_enabled;
 
 #define MAX_EARLY_MAPPING_SIZE	SZ_128M
@@ -209,15 +209,17 @@ static void __init create_pte_mapping(pte_t *ptep,
 
 #ifndef __PAGETABLE_PMD_FOLDED
 
-pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
-pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
+static pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
+static pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
 
 #if MAX_EARLY_MAPPING_SIZE < PGDIR_SIZE
 #define NUM_EARLY_PMDS		1UL
 #else
 #define NUM_EARLY_PMDS		(1UL + MAX_EARLY_MAPPING_SIZE / PGDIR_SIZE)
 #endif
-pmd_t early_pmd[PTRS_PER_PMD * NUM_EARLY_PMDS] __initdata __aligned(PAGE_SIZE);
+
+#define NUM_EARLY_PMDS_PTRS	(PTRS_PER_PMD * NUM_EARLY_PMDS)
+static pmd_t early_pmd[NUM_EARLY_PMDS_PTRS] __initdata __aligned(PAGE_SIZE);
 
 static pmd_t *__init get_pmd_virt(phys_addr_t pa)
 {
diff --git a/arch/riscv/mm/sifive_l2_cache.c b/arch/riscv/mm/sifive_l2_cache.c
index 2e637ad71c05..a9ffff3277c7 100644
--- a/arch/riscv/mm/sifive_l2_cache.c
+++ b/arch/riscv/mm/sifive_l2_cache.c
@@ -142,7 +142,7 @@ static irqreturn_t l2_int_handler(int irq, void *device)
 	return IRQ_HANDLED;
 }
 
-int __init sifive_l2_init(void)
+static int __init sifive_l2_init(void)
 {
 	struct device_node *np;
 	struct resource res;
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
