Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA1712E1E2
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 04:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQKAhTZx2LAPekmwAIUP7L2Rg4T+0IV7GvZHk95ykAk=; b=jRPn/SyLrAqy34
	3yioEB4wqkz0jLGJQ2Bc4FQBE+egpqQE7HxnNmb978Ip7FrmYdIIbjuNn9I+wBXas890xkun3rQax
	Ky6IZxlpIbJpfuIvOOWX8pnb4PDB6zmtUtyKwtrVFeMbWjLg5XXrv1ZxDmXqWo5rsKQowtpE7nZp2
	SOsBJ8T/jG4lo6JZ2F/+MVQC12n4xXun1KgwW+4rXKLu10CFrpbDZjBw7u4Mji7AEeGwaLgbUvDEd
	CAwLbLSXpFXQdmmptHiBwq86h7ZIMJUtbaeIMwY/yajYB4FjOwvF4spP8i09OzBooNbNcMVH2BZZj
	sd/fR+d/pUbumvk9XYhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imqut-00049Y-Kg; Thu, 02 Jan 2020 03:12:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imquq-00046w-GO
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 03:12:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id i23so15991700pfo.2
 for <linux-riscv@lists.infradead.org>; Wed, 01 Jan 2020 19:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BQKAhTZx2LAPekmwAIUP7L2Rg4T+0IV7GvZHk95ykAk=;
 b=cOHD7RACaeaOX0hsye4o3rGqzUSve7EvWLh3MWGM+1urW3KM8d0Pfe+gfNQYRwNyez
 jil62YaYg/AaVGM+T8nfiQOcad0wrhbFpwfUNzbC9iopylvat7eIyQfH1LGWhAjQYX53
 mRHFcD0xl8wtXxNeqkm+5A7ekaZQQ0akQcdIep10l/xi0Kl4gyYKF/4cRY8dpdcC9DgL
 uWy8QSn0aMLGjQ/qutNxNDxFs+qNWsKLvSTpKQcVNaVN552Id8EfyIQh7XOE6kO3Vv6z
 4RKyxoblfhX2pYvpY5qQk3RV1ZlAs/uoOFFYDic11ZIF0UInCMEev7CfmerflyZclCYR
 q41w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BQKAhTZx2LAPekmwAIUP7L2Rg4T+0IV7GvZHk95ykAk=;
 b=Rev4RmhDQCXvCMr0dyCH/qi4ZEWWvWVmDCosrFEn1uATeLzmDwMStbT6P4Ani/HNGD
 b5cI1naYagtO73Kf6nq/6Mfj5aQBz8ZAy2c9f2cKZM5lBGCd+E/ppkRReUf+p4jHsy2H
 czbgojmXc4EUQXEN7g4LlFlVoBfYq6bWMkccPyBJk71kbxxTL+RdNLRRnCW+1Vp5yOO4
 k1l0sq4SobebD4KY3E+V5kQVBA/cGA1L9R4tvBll3GDuDuMk3FnOAiiiUBLDVY/9ib1U
 RFBpqS8kd03BBlFIRPUNBctpKyLbuL1+GqczGX0BBcLgtYyYFw9g+TDNgC38cBanakFB
 qaVw==
X-Gm-Message-State: APjAAAU1tYIlYEu0kTvuok7KnnB9HopwvXsueWHvp+HRxAOxJfm/5WBg
 5mdUj7k8csFa8ujIs5bVE6/jpPkC7Hw=
X-Google-Smtp-Source: APXvYqy1ru5B4HwKEsGa9BAOmRSmjlAdXBl37aF70+DKeEXQRUXEpTA8BjyEUO+luv5dIZ6Cdld4kw==
X-Received: by 2002:a65:680f:: with SMTP id l15mr90126170pgt.307.1577934772029; 
 Wed, 01 Jan 2020 19:12:52 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id l127sm57943938pgl.48.2020.01.01.19.12.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 19:12:51 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] riscv: mm: use __pa_symbol for kernel symbols
Date: Thu,  2 Jan 2020 11:12:40 +0800
Message-Id: <20200102031240.44484-3-zong.li@sifive.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200102031240.44484-1-zong.li@sifive.com>
References: <20200102031240.44484-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_191252_542756_B70CFF07 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

__pa_symbol is the marcro that should be used for kernel symbols. It is
also a pre-requisite for DEBUG_VIRTUAL which will do bounds checking.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/mm/init.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 69f6678db7f3..965a8cf4829c 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -99,13 +99,13 @@ static void __init setup_initrd(void)
 		pr_info("initrd not found or empty");
 		goto disable;
 	}
-	if (__pa(initrd_end) > PFN_PHYS(max_low_pfn)) {
+	if (__pa_symbol(initrd_end) > PFN_PHYS(max_low_pfn)) {
 		pr_err("initrd extends beyond end of memory");
 		goto disable;
 	}
 
 	size = initrd_end - initrd_start;
-	memblock_reserve(__pa(initrd_start), size);
+	memblock_reserve(__pa_symbol(initrd_start), size);
 	initrd_below_start_ok = 1;
 
 	pr_info("Initial ramdisk at: 0x%p (%lu bytes)\n",
@@ -124,8 +124,8 @@ void __init setup_bootmem(void)
 {
 	struct memblock_region *reg;
 	phys_addr_t mem_size = 0;
-	phys_addr_t vmlinux_end = __pa(&_end);
-	phys_addr_t vmlinux_start = __pa(&_start);
+	phys_addr_t vmlinux_end = __pa_symbol(&_end);
+	phys_addr_t vmlinux_start = __pa_symbol(&_start);
 
 	/* Find the memory region containing the kernel */
 	for_each_memblock(memory, reg) {
@@ -445,7 +445,7 @@ static void __init setup_vm_final(void)
 
 	/* Setup swapper PGD for fixmap */
 	create_pgd_mapping(swapper_pg_dir, FIXADDR_START,
-			   __pa(fixmap_pgd_next),
+			   __pa_symbol(fixmap_pgd_next),
 			   PGDIR_SIZE, PAGE_TABLE);
 
 	/* Map all memory banks */
@@ -474,7 +474,7 @@ static void __init setup_vm_final(void)
 	clear_fixmap(FIX_PMD);
 
 	/* Move to swapper page table */
-	csr_write(CSR_SATP, PFN_DOWN(__pa(swapper_pg_dir)) | SATP_MODE);
+	csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
 	local_flush_tlb_all();
 }
 #else
-- 
2.24.1


