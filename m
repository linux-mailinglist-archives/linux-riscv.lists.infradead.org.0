Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0883BF52
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 00:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPfymVl/q/SUNWNpIitdDXYtbVqUMi4EdgLl3K4SNGg=; b=F/Z6etW5BGVwfU
	r0lXGTEcwq7iZcpFHzKgjKss5jKH5Eq5hg1oCWyGg7bWf+VDLpa0j6kT/mW17D4sgc+A5q8HW6h+i
	nYHdwBjXgVUh/8iQbwKYdEDbMSnhdjRrJcTeBwvgIyCUSNRFvFblul8FXnNnD8cQwwlSo+mhsDeL4
	Zy5ytz/7B/pqkfsgH+GNADLYUPEvznh7/gtlEFZTpUZRLlwgUQYd9kashf3dxzeIqdaLHBThLbbKV
	+G9artA8FHV+Zx44Zijg0AAVHSeIIEl6cZCyCy+Fwby6Z8eZxOHlLVMpnN7BhZZclnkX1oMQqcO+c
	S/ot6WI6KFyZYyuGw1iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSb6-0003fE-62; Mon, 10 Jun 2019 22:17:00 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haSaz-0003Vu-7L; Mon, 10 Jun 2019 22:16:53 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: [PATCH 11/17] riscv: read hart ID from mhartid on boot
Date: Tue, 11 Jun 2019 00:16:15 +0200
Message-Id: <20190610221621.10938-12-hch@lst.de>
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

From: Damien Le Moal <damien.lemoal@wdc.com>

When in M-Mode, we can use the mhartid CSR to get the ID of the running
HART. Doing so, direct M-Mode boot without firmware is possible.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/kernel/head.S | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index cb5691d82b0b..e05379fd8b64 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -25,6 +25,14 @@ ENTRY(_start)
 	/* Reset all registers except ra, a0,a1 */
 	call reset_regs
 
+#ifdef CONFIG_M_MODE
+	/*
+	 * The hartid in a0 is expected later on, and we have no firmware
+	 * to hand it to us.
+	 */
+	csrr a0, mhartid
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
