Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF14BA3FB
	for <lists+linux-riscv@lfdr.de>; Sun, 22 Sep 2019 20:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKBHo5gaEfg9EEFN3pZc3I7GWO1ioP6AIQmDE+LiJCY=; b=KCL7WBP/IPKFS6
	tn2cK+BuF79ZD3X96TqkapdVUYeodDVns6NzmFbgpa/ji5bOcbt3nIzQPeA8i42TmxMucvh6KUod1
	lJSBVVugOl6I65uy9LtAXpsinjYL7JWdD6ec1KE/A3Iu//zMlUpSSTNc/2IuZgXoxJCge+D4yYfxJ
	WMDo2dmh/wd7C58LbiEkMHK0ui94bQ+Bq7/41326XQxmCE9yXZ4s2m2EJeBJRTLkCgEev87RkbkTZ
	Riex2L+AZsVYYCMP6WcvrkL7ewi+5A3tqEPEPCD41rbCnf1ycKhMqGKMeKIKI9A7dQjgaftc/6Old
	Ytgd+D1ayBiEIQeMnqWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC6uN-000871-9G; Sun, 22 Sep 2019 18:48:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC6uI-00085B-5V
 for linux-riscv@lists.infradead.org; Sun, 22 Sep 2019 18:48:28 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB9BE2186A;
 Sun, 22 Sep 2019 18:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569178105;
 bh=UcXwOX4Q3s/OeMb0P6GUol/4vmnAyQo333LJD65XGZo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l1qFw5+2N2xTmzeVqr/dGplC12K5lk2Jl5o7tkzOUFDtAqxTKGn/4UPTxFlhi+gX+
 FZc8p4iVph/jPLoTdqes76R2C1rKqH3GUlXmDgxTI/EvkRQJGTAf65PdECRs1Hqd9s
 J0pG2DxnqcxVNCZMNi65VnKMA1fgoNXkLoCri1UQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 166/203] irqchip/sifive-plic: set max threshold
 for ignored handlers
Date: Sun, 22 Sep 2019 14:43:12 -0400
Message-Id: <20190922184350.30563-166-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190922184350.30563-1-sashal@kernel.org>
References: <20190922184350.30563-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_114826_298502_2F2FAA4C 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Marc Zyngier <maz@kernel.org>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

[ Upstream commit 9ce06497c2722a0f9109e4cc3ce35b7a69617886 ]

When running in M-mode, the S-mode plic handlers are still listed in the
device tree.  Ignore them by setting the maximum threshold.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/irqchip/irq-sifive-plic.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index cf755964f2f8b..c72c036aea768 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -244,6 +244,7 @@ static int __init plic_init(struct device_node *node,
 		struct plic_handler *handler;
 		irq_hw_number_t hwirq;
 		int cpu, hartid;
+		u32 threshold = 0;
 
 		if (of_irq_parse_one(node, i, &parent)) {
 			pr_err("failed to parse parent for context %d.\n", i);
@@ -266,10 +267,16 @@ static int __init plic_init(struct device_node *node,
 			continue;
 		}
 
+		/*
+		 * When running in M-mode we need to ignore the S-mode handler.
+		 * Here we assume it always comes later, but that might be a
+		 * little fragile.
+		 */
 		handler = per_cpu_ptr(&plic_handlers, cpu);
 		if (handler->present) {
 			pr_warn("handler already present for context %d.\n", i);
-			continue;
+			threshold = 0xffffffff;
+			goto done;
 		}
 
 		handler->present = true;
@@ -279,8 +286,9 @@ static int __init plic_init(struct device_node *node,
 		handler->enable_base =
 			plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
 
+done:
 		/* priority must be > threshold to trigger an interrupt */
-		writel(0, handler->hart_base + CONTEXT_THRESHOLD);
+		writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
 		for (hwirq = 1; hwirq <= nr_irqs; hwirq++)
 			plic_toggle(handler, hwirq, 0);
 		nr_handlers++;
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
