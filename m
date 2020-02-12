Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDB0159EAD
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 02:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0F7l2OMNGoXcAmqipTa9BUzObo0hCNhbWRXjKL+4VkU=; b=gkn0jGoguOWvMP
	JlRnKj/eAOsx+LHFT7bgr324DwaBJJJUspjvO7yxVBCNuoYpCA2V0WIQDbtQqCGvXw4PRG9rKiASu
	1KDARJwb9AEVbBLlmSbCDmpmJ875p306gFTXWsyxf3H9kPKoNbcHOPsSN3gogEIfOJyYhHHoSDqs7
	n5cqVF9YJRDH2CkvLgRoidm/DYmFcNZQpLCjEVpMBQxXdrvOCTXFOFiJOWpo63pFM4LvnpmauQdxu
	OglZ9+y5FBQJfqwbpOkFj+cBgQi1I2vyKVeoCiq9q8WJzmYVprNYRDE0JvaPkOFFi4xOE9p7Ouygj
	cMy8xwIUnMB0gSruIeNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hCO-0006E8-IC; Wed, 12 Feb 2020 01:52:20 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hC3-0005mQ-HY
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 01:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581472329; x=1613008329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/GlgOKcxd7uoN0nxIQqstOE4PEIJ6PWJbqedHD+Oytw=;
 b=ktiuVbXNURtLFope/msqd39z1H86ybNaUZREA8kO4IVsUK5qbDyPWZ6r
 n7eQDbni/jjs8V1PDTUwBTriQj1v3TQg1lL3FEU/37wVg118mdJOPNZcq
 Yf+dpdfJFztTQ28RucSutv4LCwVnU6MfFtlNrSSshaIP8YxCioOfqraPs
 Wm8ERTUG/NHdS0C8mbQmaJMRubtB0bqQed78FIGTiWsbTimN4xmIk2QQy
 x+/4iLgPwzo9C6hPbDBXl/uT6PlMGuwJ3WlXNnxLOSz91fEg745Ao2V3/
 hjDfnzYOWrDVIWsNNex0piLs80ljmOcUe9xqJTF6oG8oBEvyZbCuAEgAw g==;
IronPort-SDR: 2WMVNAD6hu8+av1CFoftMPmzni6DSkVWMbdhToffiJdS5r62Spfd8U2vVPGGhhr0Lzu63FnU/R
 JxMwMEGvxHxKvVkUd1eKlqV+miPHYtbtyMEzQbdP3EKbarGNCBsJMJes3saRZu6COOg2pZ2z7a
 QhJC5PE8nmZb/Rswf6PAQBfwbFOnnK75d9nx2uqYb4ENUyqfrSz5b2y4RdGBpadBH/vJf7ROGA
 z3pg0ir6HINJFQZ/MhpGCKVoMPPvp5tS4zDKuA/5CNkYrfufTH4BLlYwytW+a1DjjGk5MTgMKu
 Jc8=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="231429790"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 09:52:06 +0800
IronPort-SDR: vtUoKMEFlwHYdaIany3sfWnk/wZBBr5HzGgOeCRJ057iw+y8pM0NXvIETwxJj+KKWs/13OJYl0
 yk3Gwy3Jp1E/J3HjmLHL8CMQbcNq7ecGQKF8Kv36IqtfJQyoX+l7Tkvae6DODFpmzOjVgxW14g
 QxRauToPafOZHbmXTE40E2dug2DJm8NwA9267GsICsiL6nasolA24iTSRHBFqPYrBjaoSfVUnk
 VhvWYAYLhpTGmCcZx1sGD+49CUxWbSflmwKjHA8z9F8VttJ3nXdK2o3LeB36GP/DO1SmK+lqQN
 1O5g5B3nepUfQ4FRZkb3EfEn
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 17:44:47 -0800
IronPort-SDR: XZ75HwAnE+P9lENVdrLEHufZnVd6QXvw4PlHcN8S93gGExvO48x/WJUDn7MTDuO4bI3wHgW50H
 MHBVvZ/q9OyOCP1bQeXi05EnwfKB2KyHKZKc8L3G4TR/jKpXN79tL6Th63k3XWkQeBpFt9AOF3
 SEIe85g8xUgf3X3SwO0AgKgB+dvhbSnLE6NyLtvSL9DVjs1hzxGRjW5TV9KKZ8sAmq97ysAaPm
 /GVm534nwwLYp7sxcnV8n7047rUNFyaBfryyFT4r6L036dFrzNANTj2QC4QSg1gVrFbdZg1suP
 SNU=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Feb 2020 17:51:57 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 10/11] irqchip/sifive-plic: Initialize the plic handler
 when cpu comes online
Date: Tue, 11 Feb 2020 17:48:21 -0800
Message-Id: <20200212014822.28684-11-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200212014822.28684-1-atish.patra@wdc.com>
References: <20200212014822.28684-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_175159_634350_5EF4ECB1 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Vincent Chen <vincent.chen@sifive.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Anup Patel <anup@brainfault.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Mao Han <han_mao@c-sky.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, plic threshold and priority are only initialized once in the
beginning. However, threshold can be set to disabled if cpu is marked
offline with cpu hotplug feature. This will not allow to change the
irq affinity to a cpu that just came online.

Add plic specific cpu hotplug callback and initialize the per cpu handler
when cpu comes online.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 drivers/irqchip/irq-sifive-plic.c | 34 ++++++++++++++++++++++++-------
 include/linux/cpuhotplug.h        |  1 +
 2 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 0aca5807a119..9b564b19f4bf 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -4,6 +4,7 @@
  * Copyright (C) 2018 Christoph Hellwig
  */
 #define pr_fmt(fmt) "plic: " fmt
+#include <linux/cpu.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/irq.h>
@@ -55,6 +56,8 @@
 #define     CONTEXT_THRESHOLD		0x00
 #define     CONTEXT_CLAIM		0x04
 
+#define	PLIC_DISABLE_THRESHOLD		0xffffffff
+
 static void __iomem *plic_regs;
 
 struct plic_handler {
@@ -208,6 +211,26 @@ static int plic_find_hart_id(struct device_node *node)
 	return -1;
 }
 
+static void plic_handler_init(struct plic_handler *handler, u32 threshold)
+{
+	irq_hw_number_t hwirq;
+
+	/* priority must be > threshold to trigger an interrupt */
+	writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
+	for (hwirq = 1; hwirq < plic_irqdomain->hwirq_max; hwirq++)
+		plic_toggle(handler, hwirq, 0);
+}
+
+static int plic_starting_cpu(unsigned int cpu)
+{
+	u32 threshold = 0;
+	struct plic_handler *handler = per_cpu_ptr(&plic_handlers, cpu);
+
+	plic_handler_init(handler, threshold);
+
+	return 0;
+}
+
 static int __init plic_init(struct device_node *node,
 		struct device_node *parent)
 {
@@ -243,9 +266,7 @@ static int __init plic_init(struct device_node *node,
 	for (i = 0; i < nr_contexts; i++) {
 		struct of_phandle_args parent;
 		struct plic_handler *handler;
-		irq_hw_number_t hwirq;
 		int cpu, hartid;
-		u32 threshold = 0;
 
 		if (of_irq_parse_one(node, i, &parent)) {
 			pr_err("failed to parse parent for context %d.\n", i);
@@ -279,7 +300,7 @@ static int __init plic_init(struct device_node *node,
 		handler = per_cpu_ptr(&plic_handlers, cpu);
 		if (handler->present) {
 			pr_warn("handler already present for context %d.\n", i);
-			threshold = 0xffffffff;
+			plic_handler_init(handler, PLIC_DISABLE_THRESHOLD);
 			goto done;
 		}
 
@@ -291,13 +312,12 @@ static int __init plic_init(struct device_node *node,
 			plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
 
 done:
-		/* priority must be > threshold to trigger an interrupt */
-		writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
-		for (hwirq = 1; hwirq <= nr_irqs; hwirq++)
-			plic_toggle(handler, hwirq, 0);
 		nr_handlers++;
 	}
 
+	cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
+				  "irqchip/sifive/plic:starting",
+				  plic_starting_cpu, NULL);
 	pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
 		nr_irqs, nr_handlers, nr_contexts);
 	set_handle_irq(plic_handle_irq);
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index e51ee772b9f5..5360e03db08c 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -100,6 +100,7 @@ enum cpuhp_state {
 	CPUHP_AP_IRQ_ARMADA_XP_STARTING,
 	CPUHP_AP_IRQ_BCM2836_STARTING,
 	CPUHP_AP_IRQ_MIPS_GIC_STARTING,
+	CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
 	CPUHP_AP_ARM_MVEBU_COHERENCY,
 	CPUHP_AP_MICROCODE_LOADER,
 	CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING,
-- 
2.24.0


