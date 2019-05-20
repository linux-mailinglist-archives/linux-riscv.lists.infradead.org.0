Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1675A22C22
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 08:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Psc4M8vSdxIHuwHwsWwhVzbJkRtE0nzFLLEgfWXx4GU=; b=nxP8B2r33GpKyw
	6cgjt8MptazKB/psmHP8PADhL6qUWkzVK9V5D+cov1rPZ0k1leoTWORisIa5cuoJ9BqWX7gFu3kKl
	wsdPOkyUC3CzvG7SzhNeIQUvXH06ZczU1cpCXfK3ul6z5ryNCpVqpxN8BngPDl+xfj6WEmHl4JlHV
	ziTpvpzPgXkYQb3v89dq7FsgMZatn7SpyXcOhvX3twRHSH2DPrwp6u2KQn7kQOWf91Oe1/RUoJzoA
	/GfFuygoSZZd5uk+cDlOQppkYed94OUrkX04dtJevw5Fdrtn7IrEryuCN/WEetwnbFxBxR5q7vIpA
	p/bV/jDsAOTk4oCP3UWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbsL-0006Ay-Kd; Mon, 20 May 2019 06:34:21 +0000
Received: from 089144206147.atnat0015.highway.bob.at ([89.144.206.147]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbsI-0006An-Sa
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 06:34:19 +0000
From: Christoph Hellwig <hch@lst.de>
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: remove free_initrd_mem
Date: Mon, 20 May 2019 08:33:26 +0200
Message-Id: <20190520063326.26083-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The RISC-V free_initrd_mem is identical to the default one, except
that it doesn't poison the freed memory.  Remove it so that the
default implementations gets used instead.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/mm/init.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 8bf6f9c2d48c..b2341979d3eb 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -92,11 +92,6 @@ static void __init setup_initrd(void)
 	initrd_start = 0;
 	initrd_end = 0;
 }
-
-void __init free_initrd_mem(unsigned long start, unsigned long end)
-{
-	free_reserved_area((void *)start, (void *)end, -1, "initrd");
-}
 #endif /* CONFIG_BLK_DEV_INITRD */
 
 void __init setup_bootmem(void)
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
