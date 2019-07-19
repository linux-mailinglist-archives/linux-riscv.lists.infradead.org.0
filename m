Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AE46DAB5
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 06:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvbonCniyr9psxaktWtrpL+QJ95+hVzcW9gs7GGnSP8=; b=sxl6jaFm+TY77d
	Oen7SUptHefQ2r9ibUzLPP/h2O9e5iOo7DpyxhL6BNMpxrHnfpglEgHI5dCX5lF4WVvxip82LZcOj
	ag9qnL987jM7jBTDVTnaSB3zdHpX5KjzG1BSQ5YHR6ZuDo+unHBz4Trxw0D/e1tMpxzltotvfDBDW
	/rR+TUP6rHLWHpgF5XPSevGnLBIzNoFgaVRO+aA37cWePoZFRQX7CGTkLZjqT1fw/FBJnfKJYHISC
	1IdVYFoi0i7o3Ypg6XHAg2+pbJ4Ene6+ovxnrteHKvKO13U7uVEYBuJlco70gsxI783Uubr509mAU
	wPfmMYKiZRzW3ww5ccJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoK7h-0000If-QO; Fri, 19 Jul 2019 04:03:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoK5E-0006fN-GK; Fri, 19 Jul 2019 04:01:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 579B921873;
 Fri, 19 Jul 2019 04:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563508884;
 bh=I17DrcFi7+urAICnpGho+Udc/SRWzTgx9Ys7b2roMz8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tI87Xu24wtfN0JlayL0WoI+Ox7SvC9i+8npqGZ47T9MHdRQTf9+UJSQZZr7WUwP76
 7sSGMN5WQYwOtLym0WtD7GKZAeujPFvHpbk9oGnHrGwfSFJ3tREMmWrVmaUsoSjSuP
 WONVyeY94r9yPT20eV9yGEgj+6jdVMY8WbkjL4o4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 135/171] nvme-pci: check for NULL return from
 pci_alloc_p2pmem()
Date: Thu, 18 Jul 2019 23:56:06 -0400
Message-Id: <20190719035643.14300-135-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_210124_619271_50EB983A 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Alan Mikhak <alan.mikhak@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Alan Mikhak <alan.mikhak@sifive.com>

[ Upstream commit bfac8e9f55cf62a000b643a0081488badbe92d96 ]

Modify nvme_alloc_sq_cmds() to call pci_free_p2pmem() to free the memory
it allocated using pci_alloc_p2pmem() in case pci_p2pmem_virt_to_bus()
returns null.

Makes sure not to call pci_free_p2pmem() if pci_alloc_p2pmem() returned
NULL, which can happen if CONFIG_PCI_P2PDMA is not configured.

The current implementation is not expected to leak since
pci_p2pmem_virt_to_bus() is expected to fail only if pci_alloc_p2pmem()
returns null. However, checking the return value of pci_alloc_p2pmem()
is more explicit.

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/pci.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 524d6bd6d095..5dfa067f6506 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1456,11 +1456,15 @@ static int nvme_alloc_sq_cmds(struct nvme_dev *dev, struct nvme_queue *nvmeq,
 
 	if (qid && dev->cmb_use_sqes && (dev->cmbsz & NVME_CMBSZ_SQS)) {
 		nvmeq->sq_cmds = pci_alloc_p2pmem(pdev, SQ_SIZE(depth));
-		nvmeq->sq_dma_addr = pci_p2pmem_virt_to_bus(pdev,
-						nvmeq->sq_cmds);
-		if (nvmeq->sq_dma_addr) {
-			set_bit(NVMEQ_SQ_CMB, &nvmeq->flags);
-			return 0; 
+		if (nvmeq->sq_cmds) {
+			nvmeq->sq_dma_addr = pci_p2pmem_virt_to_bus(pdev,
+							nvmeq->sq_cmds);
+			if (nvmeq->sq_dma_addr) {
+				set_bit(NVMEQ_SQ_CMB, &nvmeq->flags);
+				return 0;
+			}
+
+			pci_free_p2pmem(pdev, nvmeq->sq_cmds, SQ_SIZE(depth));
 		}
 	}
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
