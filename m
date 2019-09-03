Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B5FA655A
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 11:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wwj6Wpdz+AciTWYFsGwULcVUOlQm8n/zb0vUdhU88KM=; b=HgQYNfMoTs+aoI
	syKiJ0IBJsf6aS08pcHBMi472dzMgzN5ijfRyd9N+28KXVpquY8MCicA8EIyCpXgoKNaFUtelG+AF
	UcNRlPYaH30qS6VRg/dkV5gjVu3hcIs1azc9nlt6mOAEBJOF3y7kQ3SKTXYI617GeV1WBiYMwpPqX
	pg4n2O7weUMsImGhkx1ocy7YNafVVgSGHXDs05WHFD/6/QLW1A9ResSI9ZZYuWSvDtzxy/sTEKZii
	kbssDk/F3OGO4yjIgvMkKpIV33dgZcgY22B+G/ptHWADeE+gjVINYdBZ6vEngdveWLhRI7OT5QHO1
	PEa8Nh5mTTDOfG2TJ9yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55Ci-0005iN-HI; Tue, 03 Sep 2019 09:34:24 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i55Bt-0004zL-5m; Tue, 03 Sep 2019 09:33:33 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 20/20] riscv: disable the EFI PECOFF header for M-mode
Date: Tue,  3 Sep 2019 11:32:39 +0200
Message-Id: <20190903093239.21278-21-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903093239.21278-1-hch@lst.de>
References: <20190903093239.21278-1-hch@lst.de>
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

No point in bloating the kernel image with a bootloader header if
we run bare metal.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/kernel/head.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 102520e4bdc8..5a36c36bc823 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -16,6 +16,7 @@
 
 __INIT
 ENTRY(_start)
+#ifndef CONFIG_RISCV_M_MODE
 	/*
 	 * Image header expected by Linux boot-loaders. The image header data
 	 * structure is described in asm/image.h.
@@ -47,6 +48,7 @@ ENTRY(_start)
 
 .global _start_kernel
 _start_kernel:
+#endif /* CONFIG_RISCV_M_MODE */
 	/* Mask all interrupts */
 	csrw CSR_XIE, zero
 	csrw CSR_XIP, zero
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
