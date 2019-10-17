Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD64DB38A
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UStXstqlMss9Ec1fdbBDeC+zIRgm7IhgCFLRnY8AL8k=; b=FHYgZeJ0rVLbLu
	bi+AAfwpsbJC25HkyQKF1aeT9i3Tn0sntT81vIy40jST8IHgaMykph8lS4w1aFRfFB0KId0hjl5hh
	HW6pPSZDx/pvgQQVwvDAilGCiatzuFh+cmclh72A+CLvVy7gmwObSi6C2xoRHirCvQDIM7d2D4/d/
	d4qqx28+GIDankWMA49UvDPcbN/uommMs4n+nA8rGPsrX0myY40W56ki/dgaVvPhp3+ssfLQAzVwU
	X+wxvdW327CkFXxEhKIeuFlSKH+CA3KA0UNrtZWKP+H0KX4zdJT7mlRVF5vef7T7NpLlcsea1gRxW
	lC3r0tcR5qH98LzO0S/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9jg-0000Hy-Rw; Thu, 17 Oct 2019 17:38:52 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9jD-0008CR-LE; Thu, 17 Oct 2019 17:38:24 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
Date: Thu, 17 Oct 2019 19:37:43 +0200
Message-Id: <20191017173743.5430-16-hch@lst.de>
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
index 71efbba25ed5..dc21e409cc49 100644
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
