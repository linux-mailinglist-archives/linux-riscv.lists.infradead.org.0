Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47E249BA0
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 09:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1DlrJ2qCa8PxqKfdeNYsqu9ccS2Th+qH4VMPK+y1UEE=; b=fyCGzZKPUnb+jrlCX/45jwSBMm
	xlIHnEEt7ML3LtMfIJ9hjKTPGtUQ1OPK1yGfJPPogyY7K7K60diZNMHVLVRxHzs5mPx9ZLoZ0X/oi
	yQpXgf6vhhvmcIWcKt1Jsaykkn9ZH2+8IXaoIRcvt4ZAnsdnhBW3utq7AlsCVyiwGs3R9jlYcooAY
	Id2vVtHmjiLIgJIC3sIskVk43pttztDNo0iBaSblnfifb6iBwUyNj/ffVsUXSpfg7Fk4OuY9VWDH2
	fY+biPPiu31HUCsiObLrJqlLnWBq9qImBb+AXZtthQzIz+nX5USEcB+f1GUr0dUTLsXDoPOAvAV81
	VH1GUucA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd91Q-0004ds-Kw; Tue, 18 Jun 2019 07:59:16 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd91M-0004d6-V0
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 07:59:14 +0000
Received: by mail-pl1-x641.google.com with SMTP id c14so5381252plo.0
 for <linux-riscv@lists.infradead.org>; Tue, 18 Jun 2019 00:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/jrd3s/iKTX2c/I3SubHklOtN5DS54hMul2SnpAlB8Y=;
 b=CpITDJOSYm8RcIGbV1tYVFtlDFEv32tHKsJO71gM2XD1Ys6kayjWp+xR8uThOV72SD
 IWoejCZR1yHV5DVapi5t5TG3QCHGCyvUag29VsirsRp9vPO2BoZZhvyqlMVKHNCTQp0D
 RdAG5YDXDlADm7qSNCLviKiFxPbZYSJbs85tSCHFr2QKvEvlMPWa6NQia/0YkeiUtxAP
 vDqOdkYrGjDezUpHVAILrhil/WXaiKwipKMvpQN/NySixhO44eHmzINme3W3x0Rr9ruL
 c1uELLhzg3exZZtWjwf8nc3d+QjnJ1JNNlFe79yV+LPJLrCiG36U2zC9GpdNClMge9pY
 rIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/jrd3s/iKTX2c/I3SubHklOtN5DS54hMul2SnpAlB8Y=;
 b=XKFB4ddFcC8sPXSL/2y1ruTgX6w5QJPiPZbDyP9gli1ej2yz8PD934CqtklLt0dIf5
 5tWwvM+nPHfzFm5kDPaUjFBCv5eUVUQjbP223vV1du3MZEpOWOVWj0mDMhsRCMfZOmOX
 WtcfBs7iUGXKH2a3JeZtTTfCzYL18zzdz292msxDlsJu31fy0GaBTpBmXxoM3YAt/PLt
 QG4uEM3aTkSewbKqT/L73+hKzVt8Zl5iIXi+JKKociGBXz6G5p6HsVV/YYEJqGzieupy
 sR+lTIcHX8l+09ahPTfb8xcWPk6PpCn7XT7Z8mxzMmGfxIxWdflAag3NYkse32FylLHm
 5cFQ==
X-Gm-Message-State: APjAAAXA6M5KUQpE4qdKYXMdWNfF38/kIx6zBfiNBialE8DPEBHuPDrA
 Xddec3EfIz0L6WdXIoFx+gLmyg==
X-Google-Smtp-Source: APXvYqwCZBCZ0J2MB1oUE5IUA2MNsP43+KtavPEOD4A6TJBDqkdMtiy6p9u1gvTaF6f0IJXEgecvWA==
X-Received: by 2002:a17:902:9a42:: with SMTP id
 x2mr96706221plv.106.1560844752166; 
 Tue, 18 Jun 2019 00:59:12 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id b23sm15780499pfi.6.2019.06.18.00.59.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Jun 2019 00:59:11 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v3 2/2] macb: Add support for SiFive FU540-C000
Date: Tue, 18 Jun 2019 13:26:08 +0530
Message-Id: <1560844568-4746-3-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560844568-4746-1-git-send-email-yash.shah@sifive.com>
References: <1560844568-4746-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_005913_001693_C0571720 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, palmer@sifive.com,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org, paul.walmsley@sifive.com,
 ynezz@true.cz
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The management IP block is tightly coupled with the Cadence MACB IP
block on the FU540, and manages many of the boundary signals from the
MACB IP. This patch only controls the tx_clk input signal to the MACB
IP. Future patches may add support for monitoring or controlling other
IP boundary signals.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 123 +++++++++++++++++++++++++++++++
 1 file changed, 123 insertions(+)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index c049410..15d0737 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -10,6 +10,7 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 #include <linux/clk.h>
+#include <linux/clk-provider.h>
 #include <linux/crc32.h>
 #include <linux/module.h>
 #include <linux/moduleparam.h>
@@ -40,6 +41,15 @@
 #include <linux/pm_runtime.h>
 #include "macb.h"
 
+/* This structure is only used for MACB on SiFive FU540 devices */
+struct sifive_fu540_macb_mgmt {
+	void __iomem *reg;
+	unsigned long rate;
+	struct clk_hw hw;
+};
+
+static struct sifive_fu540_macb_mgmt *mgmt;
+
 #define MACB_RX_BUFFER_SIZE	128
 #define RX_BUFFER_MULTIPLE	64  /* bytes */
 
@@ -3903,6 +3913,116 @@ static int at91ether_init(struct platform_device *pdev)
 	return 0;
 }
 
+static unsigned long fu540_macb_tx_recalc_rate(struct clk_hw *hw,
+					       unsigned long parent_rate)
+{
+	return mgmt->rate;
+}
+
+static long fu540_macb_tx_round_rate(struct clk_hw *hw, unsigned long rate,
+				     unsigned long *parent_rate)
+{
+	if (WARN_ON(rate < 2500000))
+		return 2500000;
+	else if (rate == 2500000)
+		return 2500000;
+	else if (WARN_ON(rate < 13750000))
+		return 2500000;
+	else if (WARN_ON(rate < 25000000))
+		return 25000000;
+	else if (rate == 25000000)
+		return 25000000;
+	else if (WARN_ON(rate < 75000000))
+		return 25000000;
+	else if (WARN_ON(rate < 125000000))
+		return 125000000;
+	else if (rate == 125000000)
+		return 125000000;
+
+	WARN_ON(rate > 125000000);
+
+	return 125000000;
+}
+
+static int fu540_macb_tx_set_rate(struct clk_hw *hw, unsigned long rate,
+				  unsigned long parent_rate)
+{
+	rate = fu540_macb_tx_round_rate(hw, rate, &parent_rate);
+	if (rate != 125000000)
+		iowrite32(1, mgmt->reg);
+	else
+		iowrite32(0, mgmt->reg);
+	mgmt->rate = rate;
+
+	return 0;
+}
+
+static const struct clk_ops fu540_c000_ops = {
+	.recalc_rate = fu540_macb_tx_recalc_rate,
+	.round_rate = fu540_macb_tx_round_rate,
+	.set_rate = fu540_macb_tx_set_rate,
+};
+
+static int fu540_c000_clk_init(struct platform_device *pdev, struct clk **pclk,
+			       struct clk **hclk, struct clk **tx_clk,
+			       struct clk **rx_clk, struct clk **tsu_clk)
+{
+	struct clk_init_data init;
+	int err = 0;
+
+	err = macb_clk_init(pdev, pclk, hclk, tx_clk, rx_clk, tsu_clk);
+	if (err)
+		return err;
+
+	mgmt = devm_kzalloc(&pdev->dev, sizeof(*mgmt), GFP_KERNEL);
+	if (!mgmt)
+		return -ENOMEM;
+
+	init.name = "sifive-gemgxl-mgmt";
+	init.ops = &fu540_c000_ops;
+	init.flags = 0;
+	init.num_parents = 0;
+
+	mgmt->rate = 0;
+	mgmt->hw.init = &init;
+
+	*tx_clk = clk_register(NULL, &mgmt->hw);
+	if (IS_ERR(*tx_clk))
+		return PTR_ERR(*tx_clk);
+
+	err = clk_prepare_enable(*tx_clk);
+	if (err)
+		dev_err(&pdev->dev, "failed to enable tx_clk (%u)\n", err);
+	else
+		dev_info(&pdev->dev, "Registered clk switch '%s'\n", init.name);
+
+	return 0;
+}
+
+static int fu540_c000_init(struct platform_device *pdev)
+{
+	struct resource *res;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	if (!res)
+		return -ENODEV;
+
+	mgmt->reg = ioremap(res->start, resource_size(res));
+	if (!mgmt->reg)
+		return -ENOMEM;
+
+	return macb_init(pdev);
+}
+
+static const struct macb_config fu540_c000_config = {
+	.caps = MACB_CAPS_GIGABIT_MODE_AVAILABLE | MACB_CAPS_JUMBO |
+		MACB_CAPS_GEM_HAS_PTP,
+	.dma_burst_length = 16,
+	.clk_init = fu540_c000_clk_init,
+	.init = fu540_c000_init,
+	.jumbo_max_len = 10240,
+};
+
 static const struct macb_config at91sam9260_config = {
 	.caps = MACB_CAPS_USRIO_HAS_CLKEN | MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII,
 	.clk_init = macb_clk_init,
@@ -3992,6 +4112,7 @@ static int at91ether_init(struct platform_device *pdev)
 	{ .compatible = "cdns,emac", .data = &emac_config },
 	{ .compatible = "cdns,zynqmp-gem", .data = &zynqmp_config},
 	{ .compatible = "cdns,zynq-gem", .data = &zynq_config },
+	{ .compatible = "sifive,fu540-macb", .data = &fu540_c000_config },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, macb_dt_ids);
@@ -4199,6 +4320,7 @@ static int macb_probe(struct platform_device *pdev)
 
 err_disable_clocks:
 	clk_disable_unprepare(tx_clk);
+	clk_unregister(tx_clk);
 	clk_disable_unprepare(hclk);
 	clk_disable_unprepare(pclk);
 	clk_disable_unprepare(rx_clk);
@@ -4233,6 +4355,7 @@ static int macb_remove(struct platform_device *pdev)
 		pm_runtime_dont_use_autosuspend(&pdev->dev);
 		if (!pm_runtime_suspended(&pdev->dev)) {
 			clk_disable_unprepare(bp->tx_clk);
+			clk_unregister(bp->tx_clk);
 			clk_disable_unprepare(bp->hclk);
 			clk_disable_unprepare(bp->pclk);
 			clk_disable_unprepare(bp->rx_clk);
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
