Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CF1DB36D
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iM6Hb+dXxsSUjYdWqJ8WSxB4k9rWhHl6x3Juvba4HQc=; b=rP1dRuWEQVR+A4
	/5QySgP+ckxwe9v/KfCXLlqkQ2dfsPC9UqxJQyRex4wOYp0NW+0ys1WD5GDuU32g0uEh25+khqNYy
	hk/+erBEtmf1egXbJAj/M+gkHTw9c8WP+jCK7AJED+bJwujEMUYBThrkYPHaSzgpcevOGK1GEthRM
	7soMMl5wikai4LmihZeZ5LM4h2voGl8aTO0dEoHz5bHAEfSSJaSyh2Rj2e8u01mxjZoHWFSnzOmhY
	GTVxkevMBizSswNYi2AG2uzcNvC9Hg3m7d51x6FBobbbmNZm1FEgi+DOZKGFJ+xgJUy0lJ2MkM4rT
	sF8yn1a+dsHxha9QGWxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9is-0007fz-I1; Thu, 17 Oct 2019 17:38:02 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9io-0007X1-C7; Thu, 17 Oct 2019 17:37:58 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 05/15] riscv: poison SBI calls for M-mode
Date: Thu, 17 Oct 2019 19:37:33 +0200
Message-Id: <20191017173743.5430-6-hch@lst.de>
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

There is no SBI when we run in M-mode, so fail the compile for any code
trying to use SBI calls.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/include/asm/sbi.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 21134b3ef404..b167af3e7470 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+#ifdef CONFIG_RISCV_SBI
 #define SBI_SET_TIMER 0
 #define SBI_CONSOLE_PUTCHAR 1
 #define SBI_CONSOLE_GETCHAR 2
@@ -93,5 +94,5 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 {
 	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
 }
-
-#endif
+#endif /* CONFIG_RISCV_SBI */
+#endif /* _ASM_RISCV_SBI_H */
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
