Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E093BF4F
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 00:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWNJCJn6pDzLO7ay7WztP1QL2mQZT2wNok72Ar+aVg0=; b=Q6XrakSNeNSzLO
	6UQoSJ+xoJYrOYxKD0bbnze96yS9W7nw3Cmx9oPuRNxhJ3Er8TRqFfyOXoAg4Dtskqkwot67y5W50
	GJFyPvNMSYml5oxPDzbVQS+eCIId07dAXBT+MoOSbQno88S5BV7AqGr3VS1FmzgTKrMLM+B6kme12
	rijEmVgdEDZk4W3kjIS2ElqmvnBtRm9MaAMyfH+DRzTRZmzcPiJ5g/SpEEqrLnZyma/DMu4IyE6Hd
	NWn2F7xJwgH6a1SLvgclvqy9jynkCcSkRTJA/xQeZ2g1LhiUhHN0TvL6haKPshstNnv8y3ghqrYtk
	qoK3gvOcpfdTZ5C0VU/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSaz-0003VW-3M; Mon, 10 Jun 2019 22:16:53 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haSat-0003Ll-PD; Mon, 10 Jun 2019 22:16:48 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: [PATCH 09/17] riscv: improve the default power off implementation
Date: Tue, 11 Jun 2019 00:16:13 +0200
Message-Id: <20190610221621.10938-10-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610221621.10938-1-hch@lst.de>
References: <20190610221621.10938-1-hch@lst.de>
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
Cc: linux-mm@kvack.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 uclinux-dev@uclinux.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Only call the SBI code if we are not running in M mode, and if we didn't
do the SBI call, or it didn't succeed call wfi in a loop to at least
save some power.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/kernel/reset.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/reset.c b/arch/riscv/kernel/reset.c
index cfb6eb1d762d..17c810985ad0 100644
--- a/arch/riscv/kernel/reset.c
+++ b/arch/riscv/kernel/reset.c
@@ -8,8 +8,11 @@
 
 static void default_power_off(void)
 {
+#ifndef CONFIG_M_MODE
 	sbi_shutdown();
-	while (1);
+#endif
+	while (1)
+		wait_for_interrupt();
 }
 
 void (*pm_power_off)(void) = default_power_off;
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
