Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D4BF29DC
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 09:54:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PgR0dVYPnFKomzVLKRjWmdtGxmKobBLWeY552zcZELo=; b=X+POkyto8db1M6flm/VUqEc4Ct
	B4MAl/aOb+dW4durKS8nUZbEhLPy9HPbWuf0bD87h1OJGPgKiwBt9jHwrwWxsb2WhyG8nffrVMRo0
	tNvUTI5N0ZIBE7wfZSu0Lq/dfw5bxo5lKz+NZZw2AM0RB5cqVm3aSb9pT0BYuU3ZEKxmSk6ZOZ9q1
	ihaWtUDz5hYdT8D/oxYBJXjqbAaBPw27TejUQYEsP5tv4yQNTn8DGxr+sE+AFAfk0ycTi9CkuEY3P
	t6dJlmpKicW7oNsTVNtApp5f4nh8c9r5pF0PD/Pn7sE0S3bXiQ25v8hS575X1cBC/bA15kJttZODY
	9zPTXp6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdYS-0006dA-3B; Thu, 07 Nov 2019 08:54:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdYN-0006co-Fw
 for linux-riscv@lists.infradead.org; Thu, 07 Nov 2019 08:54:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id k13so1659750pgh.3
 for <linux-riscv@lists.infradead.org>; Thu, 07 Nov 2019 00:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P4j3i5wnIK41OcHCNa5xrNnZ+TqFZENTot45Y7VOyLs=;
 b=mw72yZAzGX1OQ/m2CBkaVcskU9qa79wGQSIYaW2sC6kxdljJrLFIa5ByLTLAZ19pf0
 EPJuU0fJ301R2MRZvX+1w/X0VqkiRLU+vKlHzZWrT4Z7aHeMsf1yS8gFUmrCya0UA9A1
 yjsSXppUCcdTbRQN92gycO+b0AT+wTCKfFjQHa3JaTet4a4dem02zQUUL3qLy8YVFu8i
 enz74H50zfW/+gPoRto3Wd1vhW7CiYimj8TRsun3Cnf5T9fc36L8sHYds0bKV3Tf1rlu
 hW4SuOQe6APh/T0qPZQBKAq5y1lKHmbUT2ZnwB5s5JsC4/BV4YPA0mj9PMElFxesT9uB
 nPeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P4j3i5wnIK41OcHCNa5xrNnZ+TqFZENTot45Y7VOyLs=;
 b=BtSW/kdKfw9ZPOq9BVqxMRLkbJRgboXe920Mn8NEl7Ky7ZUCbFCEjeUIebw1vS7VhW
 qZK3bBm2a2IrM6557URSEzMhnhrRTJxrQ8+9tBEfeougj6GQFoTC+IfQhLIpM5gLlsYD
 /gL79Bdn3fCCOuVMAXkegRrfQMMsV2DIt//x2yigMRCmIbWnqNYGnxElhNmmwqkkf6Aw
 RXB5Deeg7ItCCsIWusfBGASMDHtG06HXU0KZF4XF5vel+9tGmMfDWKO4ngK+7v8d2uot
 rl95hx3apVoOfdV09HVg6vD5Uic+W1FBa2qKnwMcVULXYqit8mJyOL7mQB4CEWawaEQL
 gnDg==
X-Gm-Message-State: APjAAAWacy+q3WPRsmMpNIaabkEhc4THqP4Ke2bhGA5u78Oue/viwLIW
 zEic/EExjHnOIDUghLOB6X0UNHlANi0=
X-Google-Smtp-Source: APXvYqw9IS1fgYcp76RBZVfuZ4zbn2tdskSGMWV1qNKK3FDvq6GkhcFYgSGjzXr5besQiiKEIIH5Ig==
X-Received: by 2002:a63:b25d:: with SMTP id t29mr2978885pgo.395.1573116846429; 
 Thu, 07 Nov 2019 00:54:06 -0800 (PST)
Received: from localhost.localdomain (36-228-119-18.dynamic-ip.hinet.net.
 [36.228.119.18])
 by smtp.gmail.com with ESMTPSA id a33sm2402361pgb.57.2019.11.07.00.54.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 00:54:05 -0800 (PST)
From: Green Wan <green.wan@sifive.com>
To: 
Subject: [PATCH v6 3/4] dmaengine: sf-pdma: add platform DMA support for
 HiFive Unleashed A00
Date: Thu,  7 Nov 2019 16:49:21 +0800
Message-Id: <20191107084955.7580-4-green.wan@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107084955.7580-1-green.wan@sifive.com>
References: <20191107084955.7580-1-green.wan@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_005407_541021_A20B44EC 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Yash Shah <yash.shah@sifive.com>, Green Wan <green.wan@sifive.com>,
 Bin Meng <bmeng.cn@gmail.com>, dmaengine@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Sagar Kadam <sagar.kadam@sifive.com>,
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
 drivers/dma/sf-pdma/sf-pdma.c | 621 ++++++++++++++++++++++++++++++++++
 drivers/dma/sf-pdma/sf-pdma.h | 122 +++++++
 6 files changed, 753 insertions(+)
 create mode 100644 drivers/dma/sf-pdma/Kconfig
 create mode 100644 drivers/dma/sf-pdma/Makefile
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.c
 create mode 100644 drivers/dma/sf-pdma/sf-pdma.h

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index 7af874b69ffb..4791de808de8 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -665,6 +665,8 @@ source "drivers/dma/dw-edma/Kconfig"
 
 source "drivers/dma/hsu/Kconfig"
 
+source "drivers/dma/sf-pdma/Kconfig"
+
 source "drivers/dma/sh/Kconfig"
 
 source "drivers/dma/ti/Kconfig"
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index f5ce8665e944..2ceef67c8bce 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -60,6 +60,7 @@ obj-$(CONFIG_PL330_DMA) += pl330.o
 obj-$(CONFIG_PPC_BESTCOMM) += bestcomm/
 obj-$(CONFIG_PXA_DMA) += pxa_dma.o
 obj-$(CONFIG_RENESAS_DMA) += sh/
+obj-$(CONFIG_SF_PDMA) += sf-pdma/
 obj-$(CONFIG_SIRF_DMA) += sirf-dma.o
 obj-$(CONFIG_STE_DMA40) += ste_dma40.o ste_dma40_ll.o
 obj-$(CONFIG_STM32_DMA) += stm32-dma.o
diff --git a/drivers/dma/sf-pdma/Kconfig b/drivers/dma/sf-pdma/Kconfig
new file mode 100644
index 000000000000..f8ffa02e279f
--- /dev/null
+++ b/drivers/dma/sf-pdma/Kconfig
@@ -0,0 +1,6 @@
+config SF_PDMA
+	tristate "Sifive PDMA controller driver"
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
index 000000000000..16fe00553496
--- /dev/null
+++ b/drivers/dma/sf-pdma/sf-pdma.c
@@ -0,0 +1,621 @@
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
+#include <linux/platform_device.h>
+#include <linux/mod_devicetable.h>
+#include <linux/dma-mapping.h>
+#include <linux/of.h>
+
+#include "sf-pdma.h"
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
+	writel(lower_32_bits(v), addr);
+	writel(upper_32_bits(v), addr + 4);
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
+	if (!desc)
+		return NULL;
+
+	desc->chan = chan;
+
+	return desc;
+}
+
+static void sf_pdma_fill_desc(struct sf_pdma_desc *desc,
+			      u64 dst, u64 src, u64 size)
+{
+	desc->xfer_type = PDMA_FULL_SPEED;
+	desc->xfer_size = size;
+	desc->dst_addr = dst;
+	desc->src_addr = src;
+}
+
+static void sf_pdma_disclaim_chan(struct sf_pdma_chan *chan)
+{
+	struct pdma_regs *regs = &chan->regs;
+
+	writel(PDMA_CLEAR_CTRL, regs->ctrl);
+}
+
+static struct dma_async_tx_descriptor *
+sf_pdma_prep_dma_memcpy(struct dma_chan *dchan,	dma_addr_t dest, dma_addr_t src,
+			size_t len, unsigned long flags)
+{
+	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
+	struct sf_pdma_desc *desc;
+
+	if (chan && (!len || !dest || !src)) {
+		dev_err(chan->pdma->dma_dev.dev,
+			"Please check dma len, dest, src!\n");
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
+	spin_lock_irqsave(&chan->vchan.lock, flags);
+	chan->desc = desc;
+	sf_pdma_fill_desc(desc, dest, src, len);
+	spin_unlock_irqrestore(&chan->vchan.lock, flags);
+
+	return desc->async_tx;
+}
+
+static int sf_pdma_slave_config(struct dma_chan *dchan,
+				struct dma_slave_config *cfg)
+{
+	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
+
+	memcpy(&chan->cfg, cfg, sizeof(*cfg));
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
+	vchan_dma_desc_free_list(&chan->vchan, &head);
+	sf_pdma_disclaim_chan(chan);
+	spin_unlock_irqrestore(&chan->vchan.lock, flags);
+}
+
+static size_t sf_pdma_desc_residue(struct sf_pdma_chan *chan,
+				   dma_cookie_t cookie)
+{
+	struct virt_dma_desc *vd = NULL;
+	struct pdma_regs *regs = &chan->regs;
+	unsigned long flags;
+	u64 residue = 0;
+	struct sf_pdma_desc *desc;
+	struct dma_async_tx_descriptor *tx;
+
+	spin_lock_irqsave(&chan->vchan.lock, flags);
+
+	tx = &chan->desc->vdesc.tx;
+	if (cookie == tx->chan->completed_cookie)
+		goto out;
+
+	if (cookie == tx->cookie) {
+		residue = readq(regs->residue);
+	} else {
+		vd = vchan_find_desc(&chan->vchan, cookie);
+		if (!vd)
+			goto out;
+
+		desc = to_sf_pdma_desc(vd);
+		residue = desc->xfer_size;
+	}
+
+out:
+	spin_unlock_irqrestore(&chan->vchan.lock, flags);
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
+
+	status = dma_cookie_status(dchan, cookie, txstate);
+
+	if (txstate && status != DMA_ERROR)
+		dma_set_residue(txstate, sf_pdma_desc_residue(chan, cookie));
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
+	struct sf_pdma_desc *desc = chan->desc;
+	struct pdma_regs *regs = &chan->regs;
+
+	if (!desc) {
+		dev_err(chan->pdma->dma_dev.dev, "NULL desc.\n");
+		return;
+	}
+
+	writel(desc->xfer_type, regs->xfer_type);
+	writeq(desc->xfer_size, regs->xfer_size);
+	writeq(desc->dst_addr, regs->dst_addr);
+	writeq(desc->src_addr, regs->src_addr);
+
+	chan->desc = desc;
+	chan->status = DMA_IN_PROGRESS;
+	sf_pdma_enable_request(chan);
+}
+
+static void sf_pdma_issue_pending(struct dma_chan *dchan)
+{
+	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
+	unsigned long flags;
+
+	spin_lock_irqsave(&chan->vchan.lock, flags);
+
+	if (vchan_issue_pending(&chan->vchan) && chan->desc)
+		sf_pdma_xfer_desc(chan);
+
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
+		/* fail to recover */
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
+	u64 residue;
+
+	spin_lock_irqsave(&chan->vchan.lock, flags);
+	writel((readl(regs->ctrl)) & ~PDMA_DONE_STATUS_MASK, regs->ctrl);
+	residue = readq(regs->residue);
+
+	if (!residue) {
+		list_del(&chan->desc->vdesc.node);
+		vchan_cookie_complete(&chan->desc->vdesc);
+	} else {
+		/* submit next trascatioin if possible */
+		struct sf_pdma_desc *desc = chan->desc;
+
+		desc->src_addr += desc->xfer_size - residue;
+		desc->dst_addr += desc->xfer_size - residue;
+		desc->xfer_size = residue;
+
+		sf_pdma_xfer_desc(chan);
+	}
+
+	spin_unlock_irqrestore(&chan->vchan.lock, flags);
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
+ * * -EINVAL	- Fail to request IRQ
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
+			dev_err(&pdev->dev, "ch(%d) Can't get done irq.\n", i);
+			return -EINVAL;
+		}
+
+		r = devm_request_irq(&pdev->dev, irq, sf_pdma_done_isr, 0,
+				     dev_name(&pdev->dev), (void *)chan);
+		if (r) {
+			dev_err(&pdev->dev, "Fail to attach done ISR: %d\n", r);
+			return -EINVAL;
+		}
+
+		chan->txirq = irq;
+
+		irq = platform_get_irq(pdev, (i * 2) + 1);
+		if (irq < 0) {
+			dev_err(&pdev->dev, "ch(%d) Can't get err irq.\n", i);
+			return -EINVAL;
+		}
+
+		r = devm_request_irq(&pdev->dev, irq, sf_pdma_err_isr, 0,
+				     dev_name(&pdev->dev), (void *)chan);
+		if (r) {
+			dev_err(&pdev->dev, "Fail to attach err ISR: %d\n", r);
+			return -EINVAL;
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
+	const enum dma_slave_buswidth widths =
+		DMA_SLAVE_BUSWIDTH_1_BYTE | DMA_SLAVE_BUSWIDTH_2_BYTES |
+		DMA_SLAVE_BUSWIDTH_4_BYTES | DMA_SLAVE_BUSWIDTH_8_BYTES |
+		DMA_SLAVE_BUSWIDTH_16_BYTES | DMA_SLAVE_BUSWIDTH_32_BYTES |
+		DMA_SLAVE_BUSWIDTH_64_BYTES;
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
+
+	/* Setup capability */
+	dma_cap_set(DMA_MEMCPY, pdma->dma_dev.cap_mask);
+	pdma->dma_dev.copy_align = 2;
+	pdma->dma_dev.src_addr_widths = widths;
+	pdma->dma_dev.dst_addr_widths = widths;
+	pdma->dma_dev.directions = BIT(DMA_MEM_TO_MEM);
+	pdma->dma_dev.residue_granularity = DMA_RESIDUE_GRANULARITY_DESCRIPTOR;
+	pdma->dma_dev.descriptor_reuse = true;
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
+	ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
+	if (ret)
+		dev_warn(&pdev->dev,
+			 "Failed to set DMA mask. Fall back to default.\n");
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
+	struct sf_pdma_chan *ch;
+	int i;
+
+	for (i = 0; i < PDMA_NR_CH; i++) {
+		ch = &pdma->chans[i];
+
+		devm_free_irq(&pdev->dev, ch->txirq, ch);
+		devm_free_irq(&pdev->dev, ch->errirq, ch);
+		list_del(&ch->vchan.chan.device_node);
+		tasklet_kill(&ch->vchan.task);
+		tasklet_kill(&ch->done_tasklet);
+		tasklet_kill(&ch->err_tasklet);
+	}
+
+	dma_async_device_unregister(&pdma->dma_dev);
+
+	return 0;
+}
+
+static const struct of_device_id sf_pdma_dt_ids[] = {
+	{ .compatible = "sifive,fu540-c000-pdma" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, sf_pdma_dt_ids);
+
+static struct platform_driver sf_pdma_driver = {
+	.probe		= sf_pdma_probe,
+	.remove		= sf_pdma_remove,
+	.driver		= {
+		.name	= "sf-pdma",
+		.of_match_table = of_match_ptr(sf_pdma_dt_ids),
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
index 000000000000..55816c9e0249
--- /dev/null
+++ b/drivers/dma/sf-pdma/sf-pdma.h
@@ -0,0 +1,122 @@
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
+#include <linux/dmaengine.h>
+#include <linux/dma-direction.h>
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
+	u32				xfer_type;
+	u64				xfer_size;
+	u64				dst_addr;
+	u64				src_addr;
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
