Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC6FC9A81
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 11:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+Z2zzVAZctBOZ7FiV1p96C6PA4NX4Us8HQB5WUTh9AA=; b=BgK4bWmC7z6onbvrgjIftiXojX
	aEEg7YstdsTmrbVK8YrVT38dDcrwtwx+40IJm9wg6eGDSG6OJavXU0Ko7oW20nswVBmG4xDB2Rtyr
	ekosg9STJ1nmKEHEEC6/n7jhJA+qcDXoM2rSHJupaSJOji6xDESYLaEvPxmLJH1l3rM0zVJwUluNF
	7paAJZ91SqtC+u7qucfvL+e0qjf/Ng1mYPZqTQ0O46pRbg23bgEl0CLwGDCpqAFrFbqssB4iTWrdl
	ho9XNZ7IsqLJNSHQXe/R8LSsjRhoNOSzR009IqSkNYNgdT11evciysrb13Z1EyoCnnz9zntNAIqoF
	EQUod0Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxA5-0002A0-9s; Thu, 03 Oct 2019 09:12:37 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxA0-000297-3g
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 09:12:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id q21so1307232pfn.11
 for <linux-riscv@lists.infradead.org>; Thu, 03 Oct 2019 02:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bHVKwFZm7VYzols75BUYcfKextbUCPxw2vsRLqhPXT0=;
 b=YoDxAscQHGaWRqBT4gdbsLxYkPr0hLtSkpphgRTwh1CkHhf1X8TE9/toqaRU83EFdA
 a//cYu2YLpQWkagU+34pAWPq6dF9Y7+5hga2Fp068KxOuYGb7GouZHDGZYWYTDIBeI43
 lXgVEBjBvo6TYK7oZM0Uj9n8/2SxQUcqnbBQhpTiXAPvakqxQULVsZK2z6HWtP5e1Ppp
 d/rQ/SO54jnPCa1XA3gZVxoH49E/F05hmF3nMK/KfcUSZ+OdH76GEq+39orDfyZy7IpX
 1KujdmF3VZpDBXEmCymNuYUuB9eleSL2cWZCvSEfob/EaQsEAxsy3laVyKDbbBXyDVSe
 CpVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bHVKwFZm7VYzols75BUYcfKextbUCPxw2vsRLqhPXT0=;
 b=gwhSLpoV/hC4D5EjiFj632GlFmzcKz3u2ESmXF/972zfylqxeDV8cAVedceFklYpIw
 pxBsKySUV0rAdI/qmIMzi+jYLsIKiiWyWHQiSjgZhgxUm+js7DyXMuhI8e7GPPylFmpz
 kaHs4jfRJlau8CrX+LlPUWhTv5oTfo9eG79LpwiaWj8ZL2kHVRjgIVrGstAA/uAfampL
 FKvheB7EjCMnWE5NynllIs1tdPNmOt9WfXzHCp+QPln/9UQOgwmiv3Y07fYxuB89xTFO
 bIiD2ho0RiE9mYivhLZDXp1OpH0ChnDT8HyJCQCA9v9wdT+0YX7lF8QlsV1ES7pcdy7W
 4OWA==
X-Gm-Message-State: APjAAAV1WGVuUSRJb4FrNUWbhVJGCH32EJRryrbjt02f/y3Pe6OYnVFV
 tt1hXSLt/dA4cnWMWiK020cWDg==
X-Google-Smtp-Source: APXvYqz+86Ub33XFVRa8LfwmsSz+Ii3tluN21nJXnlGR3gdTIFkhjVZ55cJj0+C/YW0QWjc7KQq1tQ==
X-Received: by 2002:a63:1d1c:: with SMTP id d28mr8649081pgd.317.1570093950884; 
 Thu, 03 Oct 2019 02:12:30 -0700 (PDT)
Received: from localhost.localdomain (111-241-164-136.dynamic-ip.hinet.net.
 [111.241.164.136])
 by smtp.gmail.com with ESMTPSA id f128sm3445422pfg.143.2019.10.03.02.12.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 02:12:30 -0700 (PDT)
From: Green Wan <green.wan@sifive.com>
To: linux-hackers@sifive.com
Subject: [PATCH v4 3/4] dmaengine: sf-pdma: add platform DMA support for
 HiFive Unleashed A00
Date: Thu,  3 Oct 2019 17:09:03 +0800
Message-Id: <20191003090945.29210-4-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191003090945.29210-1-green.wan@sifive.com>
References: <20191003090945.29210-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_021232_160790_939F29A8 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Green Wan <green.wan@sifive.com>, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, linux-riscv@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add PDMA driver, sf-pdma, to enable DMA engine on HiFive Unleashed
Rev A00 board.

 - Implement dmaengine APIs, support MEM_TO_MEM async copy.
 - Tested by DMA Test client
 - Supports 4 channels DMA, each channel has 1 done and 1 err
   interrupt connected to platform-level interrupt controller (PLIC).
 - Depends on DMA_ENGINE and DMA_VIRTUAL_CHANNELS

The datasheet is here:

  https://static.dev.sifive.com/FU540-C000-v1.0.pdf

Follow the DMAengine controller doc,
"./Documentation/driver-api/dmaengine/provider.rst" to implement DMA
engine. And use the dma test client in doc,
"./Documentation/driver-api/dmaengine/dmatest.rst", to test.

Each DMA channel has separate HW regs and support done and error ISRs.
4 channels share 1 done and 1 err ISRs. There's no expander/arbitrator
in DMA HW.

   ------               ------
   |    |--< done 23 >--|ch 0|
   |    |--< err  24 >--|    |     (dma0chan0)
   |    |               ------
   |    |               ------
   |    |--< done 25 >--|ch 1|
   |    |--< err  26 >--|    |     (dma0chan1)
   |PLIC|               ------
   |    |               ------
   |    |--< done 27 >--|ch 2|
   |    |--< err  28 >--|    |     (dma0chan2)
   |    |               ------
   |    |               ------
   |    |--< done 29 >--|ch 3|
   |    |--< err  30 >--|    |     (dma0chan3)
   ------               ------

Signed-off-by: Green Wan <green.wan@sifive.com>
---
 drivers/dma/Kconfig           |   2 +
 drivers/dma/Makefile          |   1 +
 drivers/dma/sf-pdma/Kconfig   |   6 +
 drivers/dma/sf-pdma/Makefile  |   1 +
 drivers/dma/sf-pdma/sf-pdma.c | 601 ++++++++++++++++++++++++++++++++++
 drivers/dma/sf-pdma/sf-pdma.h | 124 +++++++
 6 files changed, 735 insertions(+)
 create mode 100644 drivers/dma/sf-pdma/Kconfig
 create mode 100644 drivers/dma/sf-pdma/Makefile
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.c
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.h

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index 7af874b69ffb..03dc82094857 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -661,6 +661,8 @@ source "drivers/dma/qcom/Kconfig"
 
 source "drivers/dma/dw/Kconfig"
 
+source "drivers/dma/sf-pdma/Kconfig"
+
 source "drivers/dma/dw-edma/Kconfig"
 
 source "drivers/dma/hsu/Kconfig"
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index f5ce8665e944..4bbd90563ede 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_DMA_SUN4I) += sun4i-dma.o
 obj-$(CONFIG_DMA_SUN6I) += sun6i-dma.o
 obj-$(CONFIG_DW_AXI_DMAC) += dw-axi-dmac/
 obj-$(CONFIG_DW_DMAC_CORE) += dw/
+obj-$(CONFIG_SF_PDMA) += sf-pdma/
 obj-$(CONFIG_DW_EDMA) += dw-edma/
 obj-$(CONFIG_EP93XX_DMA) += ep93xx_dma.o
 obj-$(CONFIG_FSL_DMA) += fsldma.o
diff --git a/drivers/dma/sf-pdma/Kconfig b/drivers/dma/sf-pdma/Kconfig
new file mode 100644
index 000000000000..0e01a5728a79
--- /dev/null
+++ b/drivers/dma/sf-pdma/Kconfig
@@ -0,0 +1,6 @@
+config SF_PDMA
+	bool "Sifive PDMA controller driver"
+	select DMA_ENGINE
+	select DMA_VIRTUAL_CHANNELS
+	help
+	  Support the SiFive PDMA controller.
diff --git a/drivers/dma/sf-pdma/Makefile b/drivers/dma/sf-pdma/Makefile
new file mode 100644
index 000000000000..764552ab8d0a
--- /dev/null
+++ b/drivers/dma/sf-pdma/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_SF_PDMA)   += sf-pdma.o
diff --git a/drivers/dma/sf-pdma/sf-pdma.c b/drivers/dma/sf-pdma/sf-pdma.c
new file mode 100644
index 000000000000..70197ad95c1a
--- /dev/null
+++ b/drivers/dma/sf-pdma/sf-pdma.c
@@ -0,0 +1,601 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/**
+ * SiFive FU540 Platform DMA driver
+ * Copyright (C) 2019 SiFive
+ *
+ * Based partially on:
+ * - drivers/dma/fsl-edma.c
+ * - drivers/dma/dw-edma/
+ * - drivers/dma/pxa-dma.c
+ *
+ * See the following sources for further documentation:
+ * - Chapter 12 "Platform DMA Engine (PDMA)" of
+ *   SiFive FU540-C000 v1.0
+ *   https://static.dev.sifive.com/FU540-C000-v1.0.pdf
+ */
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/pm_runtime.h>
+#include <linux/dmaengine.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/dma-mapping.h>
+#include <linux/irq.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_dma.h>
+#include <linux/time64.h>
+
+#include "sf-pdma.h"
+#include "../dmaengine.h"
+#include "../virt-dma.h"
+
+#define SIFIVE_PDMA_NAME "sf-pdma"
+
+#ifndef readq
+static inline unsigned long long readq(void __iomem *addr)
+{
+	return readl(addr) | (((unsigned long long)readl(addr + 4)) << 32LL);
+}
+#endif
+
+#ifndef writeq
+static inline void writeq(unsigned long long v, void __iomem *addr)
+{
+	writel(v & 0xffffffff, addr);
+	writel(v >> 32, addr + 4);
+}
+#endif
+
+static inline struct sf_pdma_chan *to_sf_pdma_chan(struct dma_chan *dchan)
+{
+	return container_of(dchan, struct sf_pdma_chan, vchan.chan);
+}
+
+static inline struct sf_pdma_desc *to_sf_pdma_desc(struct virt_dma_desc *vd)
+{
+	return container_of(vd, struct sf_pdma_desc, vdesc);
+}
+
+static struct sf_pdma_desc *sf_pdma_alloc_desc(struct sf_pdma_chan *chan)
+{
+	struct sf_pdma_desc *desc;
+	unsigned long flags;
+
+	spin_lock_irqsave(&chan->lock, flags);
+
+	if (chan->desc && !chan->desc->in_use) {
+		spin_unlock_irqrestore(&chan->lock, flags);
+		return chan->desc;
+	}
+
+	spin_unlock_irqrestore(&chan->lock, flags);
+
+	desc = kzalloc(sizeof(*desc), GFP_NOWAIT);
+
+	if (!desc)
+		return NULL;
+
+	desc->chan = chan;
+
+	return desc;
+}
+
+static void sf_pdma_fill_desc(struct sf_pdma_chan *chan,
+			      u64 dst,
+			      u64 src,
+			      u64 size)
+{
+	struct pdma_regs *regs = &chan->regs;
+
+	writel(PDMA_FULL_SPEED, regs->xfer_type);
+	writeq(size, regs->xfer_size);
+	writeq(dst, regs->dst_addr);
+	writeq(src, regs->src_addr);
+}
+
+void sf_pdma_disclaim_chan(struct sf_pdma_chan *chan)
+{
+	struct pdma_regs *regs = &chan->regs;
+
+	writel(PDMA_CLEAR_CTRL, regs->ctrl);
+}
+
+struct dma_async_tx_descriptor *
+	sf_pdma_prep_dma_memcpy(struct dma_chan *dchan,
+				dma_addr_t dest,
+				dma_addr_t src,
+				size_t len,
+				unsigned long flags)
+{
+	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
+	struct sf_pdma_desc *desc;
+
+	if (!chan || !len || !dest || !src) {
+		pr_debug("%s: Please check dma len, dest, src!\n", __func__);
+		return NULL;
+	}
+
+	desc = sf_pdma_alloc_desc(chan);
+	if (!desc)
+		return NULL;
+
+	desc->in_use = true;
+	desc->dirn = DMA_MEM_TO_MEM;
+	desc->async_tx = vchan_tx_prep(&chan->vchan, &desc->vdesc, flags);
+
+	spin_lock_irqsave(&chan->lock, flags);
+	chan->desc = desc;
+	sf_pdma_fill_desc(desc->chan, dest, src, len);
+	spin_unlock_irqrestore(&chan->lock, flags);
+
+	return desc->async_tx;
+}
+
+static void sf_pdma_unprep_slave_dma(struct sf_pdma_chan *chan)
+{
+	if (chan->dma_dir != DMA_NONE)
+		dma_unmap_resource(chan->vchan.chan.device->dev,
+				   chan->dma_dev_addr,
+				   chan->dma_dev_size,
+				   chan->dma_dir, 0);
+	chan->dma_dir = DMA_NONE;
+}
+
+static int sf_pdma_slave_config(struct dma_chan *dchan,
+				struct dma_slave_config *cfg)
+{
+	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
+
+	memcpy(&chan->cfg, cfg, sizeof(*cfg));
+	sf_pdma_unprep_slave_dma(chan);
+
+	return 0;
+}
+
+static int sf_pdma_alloc_chan_resources(struct dma_chan *dchan)
+{
+	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
+	struct pdma_regs *regs = &chan->regs;
+
+	dma_cookie_init(dchan);
+	writel(PDMA_CLAIM_MASK, regs->ctrl);
+
+	return 0;
+}
+
+static void sf_pdma_disable_request(struct sf_pdma_chan *chan)
+{
+	struct pdma_regs *regs = &chan->regs;
+
+	writel(readl(regs->ctrl) & ~PDMA_RUN_MASK, regs->ctrl);
+}
+
+static void sf_pdma_free_chan_resources(struct dma_chan *dchan)
+{
+	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
+	unsigned long flags;
+	LIST_HEAD(head);
+
+	spin_lock_irqsave(&chan->vchan.lock, flags);
+	sf_pdma_disable_request(chan);
+	kfree(chan->desc);
+	chan->desc = NULL;
+	vchan_get_all_descriptors(&chan->vchan, &head);
+	sf_pdma_unprep_slave_dma(chan);
+	vchan_dma_desc_free_list(&chan->vchan, &head);
+	sf_pdma_disclaim_chan(chan);
+	spin_unlock_irqrestore(&chan->vchan.lock, flags);
+}
+
+static size_t sf_pdma_desc_residue(struct sf_pdma_chan *chan)
+{
+	struct pdma_regs *regs = &chan->regs;
+	u64 residue;
+
+	residue = readq(regs->residue);
+
+	return residue;
+}
+
+static enum dma_status
+sf_pdma_tx_status(struct dma_chan *dchan,
+		  dma_cookie_t cookie,
+		  struct dma_tx_state *txstate)
+{
+	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
+	enum dma_status status;
+	unsigned long flags;
+
+	spin_lock_irqsave(&chan->lock, flags);
+	if (chan->xfer_err) {
+		chan->status = DMA_ERROR;
+		spin_unlock_irqrestore(&chan->lock, flags);
+		return chan->status;
+	}
+
+	spin_unlock_irqrestore(&chan->lock, flags);
+
+	status = dma_cookie_status(dchan, cookie, txstate);
+
+	if (txstate && status != DMA_ERROR)
+		dma_set_residue(txstate, sf_pdma_desc_residue(chan));
+
+	return status;
+}
+
+static int sf_pdma_terminate_all(struct dma_chan *dchan)
+{
+	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
+	unsigned long flags;
+	LIST_HEAD(head);
+
+	spin_lock_irqsave(&chan->vchan.lock, flags);
+	sf_pdma_disable_request(chan);
+	kfree(chan->desc);
+	chan->desc = NULL;
+	chan->xfer_err = false;
+	vchan_get_all_descriptors(&chan->vchan, &head);
+	vchan_dma_desc_free_list(&chan->vchan, &head);
+	spin_unlock_irqrestore(&chan->vchan.lock, flags);
+
+	return 0;
+}
+
+static void sf_pdma_enable_request(struct sf_pdma_chan *chan)
+{
+	struct pdma_regs *regs = &chan->regs;
+	u32 v;
+
+	v = PDMA_CLAIM_MASK |
+		PDMA_ENABLE_DONE_INT_MASK |
+		PDMA_ENABLE_ERR_INT_MASK |
+		PDMA_RUN_MASK;
+
+	writel(v, regs->ctrl);
+}
+
+static void sf_pdma_xfer_desc(struct sf_pdma_chan *chan)
+{
+	struct virt_dma_desc *vdesc;
+
+	vdesc = vchan_next_desc(&chan->vchan);
+	if (!vdesc)
+		return;
+
+	chan->desc = to_sf_pdma_desc(vdesc);
+	chan->status = DMA_IN_PROGRESS;
+}
+
+static void sf_pdma_issue_pending(struct dma_chan *dchan)
+{
+	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
+	unsigned long flags;
+
+	spin_lock_irqsave(&chan->vchan.lock, flags);
+
+	if (chan->pm_state != RUNNING) {
+		spin_unlock_irqrestore(&chan->vchan.lock, flags);
+		/* cannot submit due to suspend */
+		return;
+	}
+
+	if (vchan_issue_pending(&chan->vchan) && !chan->desc)
+		sf_pdma_xfer_desc(chan);
+
+	sf_pdma_enable_request(chan);
+	spin_unlock_irqrestore(&chan->vchan.lock, flags);
+}
+
+static void sf_pdma_free_desc(struct virt_dma_desc *vdesc)
+{
+	struct sf_pdma_desc *desc;
+
+	desc = to_sf_pdma_desc(vdesc);
+	desc->in_use = false;
+}
+
+static void sf_pdma_donebh_tasklet(unsigned long arg)
+{
+	struct sf_pdma_chan *chan = (struct sf_pdma_chan *)arg;
+	struct sf_pdma_desc *desc = chan->desc;
+	unsigned long flags;
+
+	spin_lock_irqsave(&chan->vchan.lock, flags);
+	list_del(&chan->desc->vdesc.node);
+	vchan_cookie_complete(&chan->desc->vdesc);
+	spin_unlock_irqrestore(&chan->vchan.lock, flags);
+
+	spin_lock_irqsave(&chan->lock, flags);
+	if (chan->xfer_err) {
+		chan->retries = MAX_RETRY;
+		chan->status = DMA_COMPLETE;
+		chan->xfer_err = false;
+	}
+	spin_unlock_irqrestore(&chan->lock, flags);
+
+	dmaengine_desc_get_callback_invoke(desc->async_tx, NULL);
+}
+
+static void sf_pdma_errbh_tasklet(unsigned long arg)
+{
+	struct sf_pdma_chan *chan = (struct sf_pdma_chan *)arg;
+	struct sf_pdma_desc *desc = chan->desc;
+	unsigned long flags;
+
+	spin_lock_irqsave(&chan->lock, flags);
+	if (chan->retries <= 0) {
+		/* fail to recover, tx_status() is in DMA_ERROR */
+		spin_unlock_irqrestore(&chan->lock, flags);
+		dmaengine_desc_get_callback_invoke(desc->async_tx, NULL);
+	} else {
+		/* retry */
+		chan->retries--;
+		chan->xfer_err = true;
+		chan->status = DMA_ERROR;
+
+		sf_pdma_enable_request(chan);
+		spin_unlock_irqrestore(&chan->lock, flags);
+	}
+}
+
+static irqreturn_t sf_pdma_done_isr(int irq, void *dev_id)
+{
+	struct sf_pdma_chan *chan = dev_id;
+	struct pdma_regs *regs = &chan->regs;
+	unsigned long flags;
+
+	spin_lock_irqsave(&chan->lock, flags);
+	writel((readl(regs->ctrl)) & ~PDMA_DONE_STATUS_MASK, regs->ctrl);
+	spin_unlock_irqrestore(&chan->lock, flags);
+
+	tasklet_hi_schedule(&chan->done_tasklet);
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t sf_pdma_err_isr(int irq, void *dev_id)
+{
+	struct sf_pdma_chan *chan = dev_id;
+	struct pdma_regs *regs = &chan->regs;
+	unsigned long flags;
+
+	spin_lock_irqsave(&chan->lock, flags);
+	writel((readl(regs->ctrl)) & ~PDMA_ERR_STATUS_MASK, regs->ctrl);
+	spin_unlock_irqrestore(&chan->lock, flags);
+
+	tasklet_schedule(&chan->err_tasklet);
+
+	return IRQ_HANDLED;
+}
+
+/**
+ * sf_pdma_irq_init() - Init PDMA IRQ Handlers
+ * @pdev: pointer of platform_device
+ * @pdma: pointer of PDMA engine. Caller should check NULL
+ *
+ * Initialize DONE and ERROR interrupt handler for 4 channels. Caller should
+ * make sure the pointer passed in are non-NULL. This function should be called
+ * only one time during the device probe.
+ *
+ * Context: Any context.
+ *
+ * Return:
+ * * 0		- OK to init all IRQ handlers
+ * * irq	- Fail to retrieve from DT binding
+ * * -1		- Fail to call request_irq()
+ */
+static int sf_pdma_irq_init(struct platform_device *pdev, struct sf_pdma *pdma)
+{
+	int irq, r, i;
+	struct sf_pdma_chan *chan;
+
+	for (i = 0; i < pdma->n_chans; i++) {
+		chan = &pdma->chans[i];
+
+		irq = platform_get_irq(pdev, i * 2);
+		if (irq < 0) {
+			dev_err(&pdev->dev, "Can't get pdma done irq.\n");
+			return irq;
+		}
+
+		r = devm_request_irq(&pdev->dev, irq, sf_pdma_done_isr, 0,
+				     dev_name(&pdev->dev), (void *)chan);
+		if (r) {
+			dev_err(&pdev->dev, "Fail to attach done ISR: %d\n", r);
+			return -1;
+		}
+
+		chan->txirq = irq;
+
+		irq = platform_get_irq(pdev, (i * 2) + 1);
+		if (irq < 0) {
+			dev_err(&pdev->dev, "Can't get pdma err irq.\n");
+			return irq;
+		}
+
+		r = devm_request_irq(&pdev->dev, irq, sf_pdma_err_isr, 0,
+				     dev_name(&pdev->dev), (void *)chan);
+		if (r) {
+			dev_err(&pdev->dev, "Fail to attach err ISR: %d\n", r);
+			return -1;
+		}
+
+		chan->errirq = irq;
+	}
+
+	return 0;
+}
+
+/**
+ * sf_pdma_setup_chans() - Init settings of each channel
+ * @pdma: pointer of PDMA engine. Caller should check NULL
+ *
+ * Initialize all data structure and register base. Caller should make sure
+ * the pointer passed in are non-NULL. This function should be called only
+ * one time during the device probe.
+ *
+ * Context: Any context.
+ *
+ * Return: none
+ */
+#define SF_PDMA_REG_BASE(ch)	(pdma->membase + (PDMA_CHAN_OFFSET * (ch)))
+static void sf_pdma_setup_chans(struct sf_pdma *pdma)
+{
+	int i;
+	struct sf_pdma_chan *chan;
+
+	INIT_LIST_HEAD(&pdma->dma_dev.channels);
+
+	for (i = 0; i < pdma->n_chans; i++) {
+		chan = &pdma->chans[i];
+
+		chan->regs.ctrl =
+			SF_PDMA_REG_BASE(i) + PDMA_CTRL;
+		chan->regs.xfer_type =
+			SF_PDMA_REG_BASE(i) + PDMA_XFER_TYPE;
+		chan->regs.xfer_size =
+			SF_PDMA_REG_BASE(i) + PDMA_XFER_SIZE;
+		chan->regs.dst_addr =
+			SF_PDMA_REG_BASE(i) + PDMA_DST_ADDR;
+		chan->regs.src_addr =
+			SF_PDMA_REG_BASE(i) + PDMA_SRC_ADDR;
+		chan->regs.act_type =
+			SF_PDMA_REG_BASE(i) + PDMA_ACT_TYPE;
+		chan->regs.residue =
+			SF_PDMA_REG_BASE(i) + PDMA_REMAINING_BYTE;
+		chan->regs.cur_dst_addr =
+			SF_PDMA_REG_BASE(i) + PDMA_CUR_DST_ADDR;
+		chan->regs.cur_src_addr =
+			SF_PDMA_REG_BASE(i) + PDMA_CUR_SRC_ADDR;
+
+		chan->pdma = pdma;
+		chan->pm_state = RUNNING;
+		chan->slave_id = i;
+		chan->xfer_err = false;
+		spin_lock_init(&chan->lock);
+
+		chan->vchan.desc_free = sf_pdma_free_desc;
+		vchan_init(&chan->vchan, &pdma->dma_dev);
+
+		writel(PDMA_CLEAR_CTRL, chan->regs.ctrl);
+
+		tasklet_init(&chan->done_tasklet,
+			     sf_pdma_donebh_tasklet, (unsigned long)chan);
+		tasklet_init(&chan->err_tasklet,
+			     sf_pdma_errbh_tasklet, (unsigned long)chan);
+	}
+}
+
+static int sf_pdma_probe(struct platform_device *pdev)
+{
+	struct sf_pdma *pdma;
+	struct sf_pdma_chan *chan;
+	struct resource *res;
+	int len, chans;
+	int ret;
+
+	chans = PDMA_NR_CH;
+	len = sizeof(*pdma) + sizeof(*chan) * chans;
+	pdma = devm_kzalloc(&pdev->dev, len, GFP_KERNEL);
+	if (!pdma)
+		return -ENOMEM;
+
+	pdma->n_chans = chans;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	pdma->membase = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(pdma->membase))
+		goto ERR_MEMBASE;
+
+	ret = sf_pdma_irq_init(pdev, pdma);
+	if (ret)
+		goto ERR_INITIRQ;
+
+	sf_pdma_setup_chans(pdma);
+
+	pdma->dma_dev.dev = &pdev->dev;
+	dma_cap_set(DMA_MEMCPY, pdma->dma_dev.cap_mask);
+
+	ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
+	if (ret)
+		pr_warn("*** Failed to set DMA mask. Fall back to default.\n");
+
+	/* Setup DMA APIs */
+	pdma->dma_dev.device_alloc_chan_resources =
+		sf_pdma_alloc_chan_resources;
+	pdma->dma_dev.device_free_chan_resources =
+		sf_pdma_free_chan_resources;
+	pdma->dma_dev.device_tx_status = sf_pdma_tx_status;
+	pdma->dma_dev.device_prep_dma_memcpy = sf_pdma_prep_dma_memcpy;
+	pdma->dma_dev.device_config = sf_pdma_slave_config;
+	pdma->dma_dev.device_terminate_all = sf_pdma_terminate_all;
+	pdma->dma_dev.device_issue_pending = sf_pdma_issue_pending;
+
+	platform_set_drvdata(pdev, pdma);
+
+	ret = dma_async_device_register(&pdma->dma_dev);
+	if (ret)
+		goto ERR_REG_DMADEVICE;
+
+	return 0;
+
+ERR_MEMBASE:
+	devm_kfree(&pdev->dev, pdma);
+	return PTR_ERR(pdma->membase);
+
+ERR_INITIRQ:
+	devm_kfree(&pdev->dev, pdma);
+	return ret;
+
+ERR_REG_DMADEVICE:
+	devm_kfree(&pdev->dev, pdma);
+	dev_err(&pdev->dev,
+		"Can't register SiFive Platform DMA. (%d)\n", ret);
+	return ret;
+}
+
+static int sf_pdma_remove(struct platform_device *pdev)
+{
+	struct sf_pdma *pdma = platform_get_drvdata(pdev);
+
+	dma_async_device_unregister(&pdma->dma_dev);
+
+	return 0;
+}
+
+static const struct of_device_id sf_pdma_of_match[] = {
+	{ .compatible = "sifive,fu540-c000-pdma" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, sifive_serial_of_match);
+
+static struct platform_driver sf_pdma_driver = {
+	.probe		= sf_pdma_probe,
+	.remove		= sf_pdma_remove,
+	.driver		= {
+		.name	= SIFIVE_PDMA_NAME,
+		.of_match_table = of_match_ptr(sf_pdma_of_match),
+	},
+};
+
+static int __init sf_pdma_init(void)
+{
+	return platform_driver_register(&sf_pdma_driver);
+}
+
+static void __exit sf_pdma_exit(void)
+{
+	platform_driver_unregister(&sf_pdma_driver);
+}
+
+/* do early init */
+subsys_initcall(sf_pdma_init);
+module_exit(sf_pdma_exit);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("SiFive Platform DMA driver");
+MODULE_AUTHOR("Green Wan <green.wan@sifive.com>");
diff --git a/drivers/dma/sf-pdma/sf-pdma.h b/drivers/dma/sf-pdma/sf-pdma.h
new file mode 100644
index 000000000000..d577d5af0bf4
--- /dev/null
+++ b/drivers/dma/sf-pdma/sf-pdma.h
@@ -0,0 +1,124 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/**
+ * SiFive FU540 Platform DMA driver
+ * Copyright (C) 2019 SiFive
+ *
+ * Based partially on:
+ * - drivers/dma/fsl-edma.c
+ * - drivers/dma/dw-edma/
+ * - drivers/dma/pxa-dma.c
+ *
+ * See the following sources for further documentation:
+ * - Chapter 12 "Platform DMA Engine (PDMA)" of
+ *   SiFive FU540-C000 v1.0
+ *   https://static.dev.sifive.com/FU540-C000-v1.0.pdf
+ */
+#ifndef _SF_PDMA_H
+#define _SF_PDMA_H
+
+#include <linux/msi.h>
+#include <linux/dmaengine.h>
+#include <linux/dma-direction.h>
+#include <linux/timer.h>
+#include <linux/time64.h>
+#include <linux/timekeeping.h>
+#include <linux/workqueue.h>
+
+#include "../dmaengine.h"
+#include "../virt-dma.h"
+
+#define PDMA_NR_CH					4
+
+#if (PDMA_NR_CH != 4)
+#error "Please define PDMA_NR_CH to 4"
+#endif
+
+#define PDMA_BASE_ADDR					0x3000000
+#define PDMA_CHAN_OFFSET				0x1000
+
+/* Register Offset */
+#define PDMA_CTRL					0x000
+#define PDMA_XFER_TYPE					0x004
+#define PDMA_XFER_SIZE					0x008
+#define PDMA_DST_ADDR					0x010
+#define PDMA_SRC_ADDR					0x018
+#define PDMA_ACT_TYPE					0x104 /* Read-only */
+#define PDMA_REMAINING_BYTE				0x108 /* Read-only */
+#define PDMA_CUR_DST_ADDR				0x110 /* Read-only*/
+#define PDMA_CUR_SRC_ADDR				0x118 /* Read-only*/
+
+/* CTRL */
+#define PDMA_CLEAR_CTRL					0x0
+#define PDMA_CLAIM_MASK					GENMASK(0, 0)
+#define PDMA_RUN_MASK					GENMASK(1, 1)
+#define PDMA_ENABLE_DONE_INT_MASK			GENMASK(14, 14)
+#define PDMA_ENABLE_ERR_INT_MASK			GENMASK(15, 15)
+#define PDMA_DONE_STATUS_MASK				GENMASK(30, 30)
+#define PDMA_ERR_STATUS_MASK				GENMASK(31, 31)
+
+/* Transfer Type */
+#define PDMA_FULL_SPEED					0xFF000008
+
+/* Error Recovery */
+#define MAX_RETRY					1
+
+struct pdma_regs {
+	/* read-write regs */
+	void __iomem *ctrl;		/* 4 bytes */
+
+	void __iomem *xfer_type;	/* 4 bytes */
+	void __iomem *xfer_size;	/* 8 bytes */
+	void __iomem *dst_addr;		/* 8 bytes */
+	void __iomem *src_addr;		/* 8 bytes */
+
+	/* read-only */
+	void __iomem *act_type;		/* 4 bytes */
+	void __iomem *residue;		/* 8 bytes */
+	void __iomem *cur_dst_addr;	/* 8 bytes */
+	void __iomem *cur_src_addr;	/* 8 bytes */
+};
+
+struct sf_pdma_desc {
+	struct virt_dma_desc		vdesc;
+	struct sf_pdma_chan		*chan;
+	bool				in_use;
+	enum dma_transfer_direction	dirn;
+	struct dma_async_tx_descriptor *async_tx;
+};
+
+enum sf_pdma_pm_state {
+	RUNNING = 0,
+	SUSPENDED,
+};
+
+struct sf_pdma_chan {
+	struct virt_dma_chan		vchan;
+	enum dma_status			status;
+	enum sf_pdma_pm_state		pm_state;
+	u32				slave_id;
+	struct sf_pdma			*pdma;
+	struct sf_pdma_desc		*desc;
+	struct dma_slave_config		cfg;
+	u32				attr;
+	dma_addr_t			dma_dev_addr;
+	u32				dma_dev_size;
+	enum dma_data_direction		dma_dir;
+	struct tasklet_struct		done_tasklet;
+	struct tasklet_struct		err_tasklet;
+	struct pdma_regs		regs;
+	spinlock_t			lock; /* protect chan data */
+	bool				xfer_err;
+	int				txirq;
+	int				errirq;
+	int				retries;
+};
+
+struct sf_pdma {
+	struct dma_device       dma_dev;
+	void __iomem            *membase;
+	void __iomem            *mappedbase;
+	u32			n_chans;
+	struct sf_pdma_chan	chans[PDMA_NR_CH];
+};
+
+#endif /* _SF_PDMA_H */
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
