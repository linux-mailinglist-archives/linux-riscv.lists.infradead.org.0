Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E9FE7108
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 13:11:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmC1ajiLQ7nm2NssErO01r8z0biLq/r3PWTaA2/bdt0=; b=cIWRqPYChOFMsp
	7YjT2N8E1ymOsb3W5bgK92p9N4EGUMmPclIgMytAAwHTZ5zUSa3HjWuWXGtgIYIMmK1GCks61acqe
	/SCqTcockD5Uyt465aoCd0RARshfWe257MS7YHAeMEdNtpCEXyNOGxKesDMJVnr9zVrEByG50bZZC
	+Rre9b945Z4dnEwi2uglUtY5W899U5kyeT/XA2gcR8gI08f4lqR3OQrKI8MsnmzSuaZAlvrRqKXEe
	rrnVBuATFsIXugvAi79JlWQnGCQC5VTL8MPdp+8/HXG813c+wY+xlp1xU+nhE24xjcBij9BnS1ES4
	gUQnrwNTiRw/bKmm14hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3rd-0007Bj-7j; Mon, 28 Oct 2019 12:11:13 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3rY-00074U-Tg; Mon, 28 Oct 2019 12:11:09 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 08/12] riscv: read the hart ID from mhartid on boot
Date: Mon, 28 Oct 2019 13:10:39 +0100
Message-Id: <20191028121043.22934-9-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028121043.22934-1-hch@lst.de>
References: <20191028121043.22934-1-hch@lst.de>
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
Cc: Anup Patel <anup@brainfault.org>, Damien Le Moal <damien.lemoal@wdc.com>,
 Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Damien Le Moal <damien.lemoal@wdc.com>

When in M-Mode, we can use the mhartid CSR to get the ID of the running
HART. Doing so, direct M-Mode boot without firmware is possible.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/include/asm/csr.h | 1 +
 arch/riscv/kernel/head.S     | 8 ++++++++
 2 files changed, 9 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 0ab642811028..318192c66fd8 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -99,6 +99,7 @@
 #define CSR_MCAUSE		0x342
 #define CSR_MTVAL		0x343
 #define CSR_MIP			0x344
+#define CSR_MHARTID		0xf14
 
 #ifdef CONFIG_RISCV_M_MODE
 # define CSR_STATUS	CSR_MSTATUS
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 5cfd2c582945..fc9973086946 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -50,6 +50,14 @@ _start_kernel:
 	csrw CSR_IE, zero
 	csrw CSR_IP, zero
 
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
