Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A3398BCE
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 08:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8zosLt3glZ52Njwljko77U0FaX0oFoNR5RuDfGTCgM=; b=PPSYD/iXokCPFy
	kHLiZCCRW7r0weyp7xGbCGGIWM/D3iDSKlIttSOCF4xuRJmHZlNOeXldltbr3FqCfQOFezGqlkiSv
	q6/RxM6t08n/wT+aXhRGqwr7OWrePBtJoG8UahWrhpbAADtKhq+UTl9QVRqOlzEWz+9WN4h8A1Nw9
	m4e9T7Hy63DZdIKNDSwIWWlsxV1R+f4cZkr5zGTDfcag1H1RO8rUcV25fEr+UnHvZeMwpaHIyA+xD
	G2mTJFrvZBB0zSS92zMTQlaukHySGa6seUQ7q1e9SN3+p4nSMhy0/cIJYPF7MwUNCDRUlFnopRq71
	oPEbNnW8AhlNGBQbuFnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h1N-0008S0-CG; Thu, 22 Aug 2019 06:56:33 +0000
Received: from rap-us.hgst.com ([199.255.44.250] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h1E-0008Kj-Cq; Thu, 22 Aug 2019 06:56:24 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 4/8] riscv: remove the active_mm check in
 sys_riscv_flush_icache
Date: Thu, 22 Aug 2019 15:56:08 +0900
Message-Id: <20190822065612.28634-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190822065612.28634-1-hch@lst.de>
References: <20190822065612.28634-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

current->active_mm is always the same as current->mm for user processes
(see Documentation/vm/active_mm.rst for details), and given that we are
directly in a syscall handler this is obviously the case here.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/mm/cacheflush.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index 4f78d6552476..eed715de4795 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -38,7 +38,7 @@ static void flush_icache_mm(bool local)
 	 */
 	cpumask_andnot(&others, mm_cpumask(current->mm), cpumask_of(cpu));
 	local |= cpumask_empty(&others);
-	if (current->mm != current->active_mm || !local) {
+	if (!local) {
 		riscv_cpuid_to_hartid_mask(&others, &hmask);
 		sbi_remote_fence_i(hmask.bits);
 	} else {
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
