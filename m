Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2F812299E
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 12:15:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=POCsPLaJniMTgraBSW2EtFrG0OqZrVUn3jzMxkZE6E0=; b=LRlwkjxASmk5L7n8yiiJ/5+2j
	11l3groGCplnOWqpZX+tR9Mp6js4uI/qIvcHIMgGuzOThEyYsRQxl3dzF3kczDpY1od7z81XaXi9c
	Xmvmz3VcCJxlX6I3BptscF6ym9eyTsfGnRbeXllaQ76DPD00kHgcC3KEhExy1eT0xYKQiIUH6Lr1f
	9BZxntJbVkzAU3jWex9CweMCeowv+l5uN4FURyUBvl1dEzJtHLhAEsDhnaIw2XXD/NraIbaPCVfqa
	g7ABY1IuDXMG8cWhKnIZrESwXN1owVeZzN0tEwEmSX1ix3kZIvv+i7RdiHJXvBtl3x3lsZs1WEHsV
	nkcg2huLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihAp1-0003ps-Pm; Tue, 17 Dec 2019 11:15:23 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihAox-0003jh-74
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 11:15:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5F4F5AC59;
 Tue, 17 Dec 2019 11:15:17 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: Fix use of undefined config option CONFIG_CONFIG_MMU
References: <mvm8snccqsk.fsf@suse.de> <mvm4kxz6xow.fsf@suse.de>
X-Yow: ..  I want FORTY-TWO TRYNEL FLOATATION SYSTEMS installed within
 SIX AND A HALF HOURS!!!
Date: Tue, 17 Dec 2019 12:15:16 +0100
In-Reply-To: <mvm4kxz6xow.fsf@suse.de> (Andreas Schwab's message of "Tue, 17
 Dec 2019 11:41:51 +0100")
Message-ID: <mvmzhfr5hkr.fsf_-_@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_031519_411449_C1500CC1 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In Kconfig files, config options are written without the CONFIG_ prefix.

Fixes: 6bd33e1ece52 ("riscv: add nommu support")
Signed-off-by: Andreas Schwab <schwab@suse.de>
---
 arch/riscv/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index b7fc77c0e860..298662e72572 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -156,7 +156,7 @@ config GENERIC_HWEIGHT
 	def_bool y
 
 config FIX_EARLYCON_MEM
-	def_bool CONFIG_MMU
+	def_bool MMU
 
 config PGTABLE_LEVELS
 	int
-- 
2.24.1

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

