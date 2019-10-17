Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 886B8DB379
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+E4cUBeC+2i46BZw2CYDnS1SJN4MhE8D3Oh/0KuBvA=; b=ZOuMdyNipp4KI9
	5uW3eBo2GX+kHWepyOatP8UXYg2S6uRr0DMvZtfjiaK4ZHsbcd/pB67QrjQ40heAyX3VOoTtAXdAL
	97qg/hKjF4fzykDLa5sIUwP77DhvQaOVfQDCkc3yU3nVWePHvGqB5MMGno0tepn8W/FH54B6IHP0t
	O08yC5gW31gUIxx0UYv4ClkS/46yTj4GXhivLckb93getF6JHyDpVc/nCIOaDuJI/pnN3zws4Oz+3
	tss8yRNnCDR1q7bLzarL0065rD3sbYddYqgXfx2Sgz6uvaYvvzZGOBErtpDtgb60d0ULXbiAklDQt
	jppCWPLXQ1IrN7r4NgFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9j5-000810-S6; Thu, 17 Oct 2019 17:38:15 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9j0-0007u5-TW; Thu, 17 Oct 2019 17:38:11 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 10/15] riscv: read the hart ID from mhartid on boot
Date: Thu, 17 Oct 2019 19:37:38 +0200
Message-Id: <20191017173743.5430-11-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017173743.5430-1-hch@lst.de>
References: <20191017173743.5430-1-hch@lst.de>
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
Cc: Atish Patra <atish.patra@wdc.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Damien Le Moal <Damien.LeMoal@wdc.com>

When in M-Mode, we can use the mhartid CSR to get the ID of the running
HART. Doing so, direct M-Mode boot without firmware is possible.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/csr.h | 1 +
 arch/riscv/kernel/head.S     | 8 ++++++++
 2 files changed, 9 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 0dae5c361f29..d0b5113e1a54 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -81,6 +81,7 @@
 #define SIE_SEIE		(_AC(0x1, UL) << IRQ_S_EXT)
 
 /* symbolic CSR names: */
+#define CSR_MHARTID		0xf14
 #define CSR_MSTATUS		0x300
 #define CSR_MIE			0x304
 #define CSR_MTVEC		0x305
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 679e63d29edb..583784cb3a32 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -50,6 +50,14 @@ _start_kernel:
 	csrw CSR_XIE, zero
 	csrw CSR_XIP, zero
 
+#ifdef CONFIG_RISCV_M_MODE
+	/*
+	 * The hartid in a0 is expected later on, and we have no firmware
+	 * to hand it to us.
+	 */
+	csrr a0, CSR_MHARTID
+#endif
+
 	/* Load the global pointer */
 .option push
 .option norelax
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
