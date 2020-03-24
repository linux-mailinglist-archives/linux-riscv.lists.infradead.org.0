Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD48E19064C
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 08:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4huE9PkydIicq5T4ToTqpbGJkd9wdfCuQCsFDoDdXI=; b=MxcWE9HgCUaEDB
	uqxIEIs2arTPS3Ip8ZkE+tDNyh5oKimaTL8ob2anCFh/3Qtbu2OewJAxfOb9vsqAmh7wQahG/bLgu
	XnBvTL3isamm4ibnkKY44cdEqDXGWWm/H8S5Z0qVpfWPc6ENyJFpD8VlE/AJMgxNZb1z10iDts4e+
	vLMznq9hdkAajL1U3KqsIHVuXTmDjwp8y9TnM0PqLkhR+ciT4sV36ol+OrF5HIbQBtaeqRZJsiAcI
	4rJhHwLi4v+DeiUyeZS+9ZunWZz3PNu5uYBltbXk6evUmTjd8yWf3WugcGkltZurfp+Nn9JEy6Yc3
	V33Jzzn40mq0co2mkogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGe1s-00044M-UW; Tue, 24 Mar 2020 07:31:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGe1i-0003te-UP
 for linux-riscv@lists.infradead.org; Tue, 24 Mar 2020 07:31:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id t3so8614192pgn.1
 for <linux-riscv@lists.infradead.org>; Tue, 24 Mar 2020 00:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y4huE9PkydIicq5T4ToTqpbGJkd9wdfCuQCsFDoDdXI=;
 b=FhK74WmXI7hJqCemmQx1mgserzDO1KLlmRwF1MCmAA+Kk32Vbp7pUevd18ZsmLpvT1
 eSTslws5Fr6Q1SiSTdS7Ctv1cgGPZe6IA5znoEUoyB4Nf/F5CTvnvkEi2laS26D10o/Q
 FNQy/TxTbKFJKnrWyKn3FCdrYiirhY1WWqPNDxrABFQ+WEfedXn8qf5VMWRif4m4CjaD
 GKi3ADkoOUNXDdGY2mswzgS7PsayHv/+FrQy5JgrNxok89w/44MR0I+BIhpAPbLOuv4Y
 j37eYW0F/wfWKcoNvhYvcNvz5C6sjcWZNKSufkqJJDJKqBhH7H9GtX2aSisITqoZPW5H
 WlMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y4huE9PkydIicq5T4ToTqpbGJkd9wdfCuQCsFDoDdXI=;
 b=AukYavQnNlFhkSxH9fS5IF3Ddi7G1TmKikGoXx/Q8UBexGuPlWdhsBHd9WidQ6rJ0S
 REwlIhmTSPrZX6t6zR5DIRdgRfgN4wEQgoo93iLLeWQy80JovQa1wbV6N70wbmPYHdac
 BdT4EaEjvkcBL26MzXOBGea4AHMea3MnCc5OdiWYEDyokEorhD8C8txBNODUe7zOtjgk
 mLqU98wsIRXWd68UqCcXK7aY/wsNUT2FbvIq8dNaf7NLeGbt/mJ5eISzAuUOshFVPDdq
 WlsQVbrKWB/ArcHPI+lJnMKR53ufbxztQorPK3AMz+R/f3jWUHVrv+fbSzkwd1uHVkPt
 zarw==
X-Gm-Message-State: ANhLgQ1kjHhZd7tbAA+SbFgiH6xNwUFoIoVmgy70AwT5NpFtOJKRfMn/
 spTByvWRrkftIxusmNVsgdqaaw==
X-Google-Smtp-Source: ADFU+vv5SjTRjPOReGo2Qbtrxk+zEIUWvNyjITDupdkD8rEgyr3X1n0khPpCY5ThEbL31ODjAG7mwg==
X-Received: by 2002:a63:7b1a:: with SMTP id w26mr9084743pgc.298.1585035065921; 
 Tue, 24 Mar 2020 00:31:05 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i187sm15124648pfg.33.2020.03.24.00.31.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 00:31:05 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, alex@ghiti.fr,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC 5/8] riscv/kaslr: support sparse memory model
Date: Tue, 24 Mar 2020 15:30:50 +0800
Message-Id: <b32708e9fad13e8e86c4514842c9c065841b99b5.1584352425.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1584352425.git.zong.li@sifive.com>
References: <cover.1584352425.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_003107_028065_F842262A 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

For sparse memory model, we select a random memory node first, then get
a random offset in this node. It gets one memory node in flat memory
model case.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/kernel/kaslr.c | 139 ++++++++++++++++++++++++++++----------
 1 file changed, 105 insertions(+), 34 deletions(-)

diff --git a/arch/riscv/kernel/kaslr.c b/arch/riscv/kernel/kaslr.c
index 9ec2b608eb7f..59001d6fdfc3 100644
--- a/arch/riscv/kernel/kaslr.c
+++ b/arch/riscv/kernel/kaslr.c
@@ -55,8 +55,9 @@ static __init int get_node_addr_size_cells(const char *path, int *addr_cell,
 
 static __init void kaslr_get_mem_info(uintptr_t *mem_start,
 				      uintptr_t *mem_size)
+				      uintptr_t kernel_size, int find_index)
 {
-	int node, root, addr_cells, size_cells;
+	int node, root, addr_cells, size_cells, idx = 0;
 	u64 base, size;
 
 	/* Get root node's address cells and size cells. */
@@ -81,14 +82,56 @@ static __init void kaslr_get_mem_info(uintptr_t *mem_start,
 			reg = get_reg_address(addr_cells, reg, &base);
 			reg = get_reg_address(size_cells, reg, &size);
 
-			*mem_start = base;
-			*mem_size = size;
+			if (size < (kernel_size * 2))
+				continue;
 
-			break;
+			if (idx == find_index) {
+				*mem_start = base;
+				*mem_size = size;
+				break;
+			}
+
+			idx++;
 		}
 	}
 }
 
+static __init int get_memory_nodes_num(uintptr_t kernel_size)
+{
+	int node, root, addr_cells, size_cells, total_nodes = 0;
+	u64 base, size;
+
+	/* Get root node's address cells and size cells. */
+	root = get_node_addr_size_cells("/", &addr_cells, &size_cells);
+	if (root < 0)
+		return 0;
+
+	/* Get memory base address and size. */
+	fdt_for_each_subnode(node, dtb_early_va, root) {
+		const char *dev_type;
+		const u32 *reg;
+
+		dev_type = fdt_getprop(dtb_early_va, node, "device_type", NULL);
+		if (!dev_type)
+			continue;
+
+		if (!strcmp(dev_type, "memory")) {
+			reg = fdt_getprop(dtb_early_va, node, "reg", NULL);
+			if (!reg)
+				return 0;
+
+			reg = get_reg_address(addr_cells, reg, &base);
+			reg = get_reg_address(size_cells, reg, &size);
+
+			/* Candidate ensures that it don't overlap itself. */
+			if (size > kernel_size * 2)
+				total_nodes++;
+		}
+	}
+
+	return total_nodes;
+}
+
 /* Return a default seed if there is no HW generator. */
 static u64 kaslr_default_seed = ULL(-1);
 static __init u64 kaslr_get_seed(void)
@@ -198,10 +241,11 @@ static __init bool has_regions_overlapping(uintptr_t start_addr,
 	return false;
 }
 
-static inline __init unsigned long get_legal_offset(int random_index,
-						    int max_index,
-						    uintptr_t mem_start,
-						    uintptr_t kernel_size)
+static inline __init unsigned long get_legal_offset_in_node(int random_index,
+							    int max_index,
+							    uintptr_t mem_start,
+							    uintptr_t
+							    kernel_size)
 {
 	uintptr_t start_addr, end_addr;
 	int idx, stop_idx;
@@ -214,7 +258,8 @@ static inline __init unsigned long get_legal_offset(int random_index,
 
 		/* Check overlap to other regions. */
 		if (!has_regions_overlapping(start_addr, end_addr))
-			return idx * SZ_2M + kernel_size;
+			return idx * SZ_2M + kernel_size + (mem_start -
+							    __pa(PAGE_OFFSET));
 
 		if (idx-- < 0)
 			idx = max_index;
@@ -224,6 +269,56 @@ static inline __init unsigned long get_legal_offset(int random_index,
 	return 0;
 }
 
+#define MEM_RESERVE_START	__pa(PAGE_OFFSET)
+static inline __init unsigned long get_legal_offset(u64 random,
+						    uintptr_t kernel_size)
+{
+	int mem_nodes, idx, stop_idx, index;
+	uintptr_t mem_start = 0, mem_size = 0, random_size, ret;
+
+	mem_nodes = get_memory_nodes_num(kernel_size);
+
+	idx = stop_idx = random % mem_nodes;
+
+	do {
+		kaslr_get_mem_info(&mem_start, &mem_size, kernel_size, idx);
+
+		if (!mem_size)
+			return 0;
+
+		if (mem_start < MEM_RESERVE_START) {
+			mem_size -= MEM_RESERVE_START - mem_start;
+			mem_start = MEM_RESERVE_START;
+		}
+
+		/*
+		 * Limit randomization range within 1G, so we can exploit
+		 * early_pmd/early_pte during early page table phase.
+		 */
+		random_size = min_t(u64,
+				    mem_size - (kernel_size * 2),
+				    SZ_1G - (kernel_size * 2));
+
+		if (!random_size || random_size < SZ_2M)
+			return 0;
+
+		/* The index of 2M block in whole available region */
+		index = random % (random_size / SZ_2M);
+
+		ret =
+		    get_legal_offset_in_node(index, random_size / SZ_2M,
+					     mem_start, kernel_size);
+		if (ret)
+			break;
+
+		if (idx-- < 0)
+			idx = mem_nodes - 1;
+
+	} while (idx != stop_idx);
+
+	return ret;
+}
+
 static inline __init u64 rotate_xor(u64 hash, const void *area, size_t size)
 {
 	size_t i;
@@ -238,12 +333,9 @@ static inline __init u64 rotate_xor(u64 hash, const void *area, size_t size)
 	return hash;
 }
 
-#define MEM_RESERVE_START	__pa(PAGE_OFFSET)
 static __init uintptr_t get_random_offset(u64 seed, uintptr_t kernel_size)
 {
-	uintptr_t mem_start = 0, mem_size= 0, random_size;
 	uintptr_t kernel_size_align = round_up(kernel_size, SZ_2M);
-	int index;
 	u64 random = 0;
 	cycles_t time_base;
 
@@ -261,28 +353,7 @@ static __init uintptr_t get_random_offset(u64 seed, uintptr_t kernel_size)
 	if (seed)
 		random = rotate_xor(random, &seed, sizeof(seed));
 
-	kaslr_get_mem_info(&mem_start, &mem_size);
-	if (!mem_size)
-		return 0;
-
-	if (mem_start < MEM_RESERVE_START) {
-		mem_size -= MEM_RESERVE_START - mem_start;
-		mem_start = MEM_RESERVE_START;
-	}
-
-	/*
-	 * Limit randomization range within 1G, so we can exploit
-	 * early_pmd/early_pte during early page table phase.
-	 */
-	random_size = min_t(u64,
-			    mem_size - (kernel_size_align * 2),
-			    SZ_1G - (kernel_size_align * 2));
-
-	/* The index of 2M block in whole avaliable region */
-	index = random % (random_size / SZ_2M);
-
-	return get_legal_offset(index, random_size / SZ_2M,
-				mem_start, kernel_size_align);
+	return get_legal_offset(random, kernel_size_align);
 }
 
 uintptr_t __init kaslr_early_init(void)
-- 
2.25.1


