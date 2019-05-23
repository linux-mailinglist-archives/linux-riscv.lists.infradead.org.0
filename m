Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEFA27C14
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 13:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kt2Fgpj1PalOEu6V40LDOKK6b6VWMoI9Afu826WEGrU=; b=f02zzJPBQ5oiJxeUmJfT9+bWzY
	BQF0oPy96TnQQyoUrwq2wsIGeNwY6cai78EPcd39zSRCTaGggC4EyuhFwWv7Mq9K/xQEP1KcjmL8V
	M/q0whnja6zdw7CsyBMc+8h5ueMzhqbsTibGMONj6HrateDm729bYOEVskLyKhr7bxuqG13QbMvRM
	9FIvxT6pW2k5ueIMCx3qejmCZLjqafDSblz2sx/z4d69juO2rSb2IicdcJH90DAQ/q8qY2gaa6wsr
	X57tmYfJpTrEjHtYWQf+gjL+NptsmEK5x8z+UYKvW4+898hUjYl5177Dr5OO7QrnPymejsLIQQXPb
	DdWaK7/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTmBG-0003ev-J2; Thu, 23 May 2019 11:46:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmBC-0003dG-W4
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 11:46:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id z26so3115795pfg.6
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 04:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LEifsqwnL2BjXCVuqDW5HukFRG14FiPFkC5knaitSp8=;
 b=Lvt9jRIK0RxPlPR9Ydlr2C/j77GrQptj8vSfAUw8rYMnhtJa2cDk84ixTSGctwKty2
 7nz5mlHIUD9kRcsLQScD+TJU1Dcp1leEw+1SGih4l+elbSJL3p4bHk7YbrJqWO7YvZZW
 HZOecpMOYn/eWKc2zdp17ipfC+L5hZeG8NJUlCkPE7oRmJSNv3ltNYXnNqhkzZO4Uejd
 Hw1tQSAunCp0MojMPQ5QkDfziBEmOKiyaeeAWMkJx1z9iQ5iF1O73qfg6T8QPavedq++
 LOuw5PPoXzLkI8T52+98iKNiLjVcuxGrGfevv4SZm6YF/sp50q0k+ForMnDkWkLQcYu/
 xptA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LEifsqwnL2BjXCVuqDW5HukFRG14FiPFkC5knaitSp8=;
 b=aaBz/EMRnwTqGF6QppZMb+aLsuVv8G8lB/785ADGnVCLqH+EWy9HB5DJZ+d8dNAo4f
 jgfZcKS8l+vSFOfJBxSsK/KhOWVMNns2Rz3Nge4OO47K8yP4TYLGSAb9ZRU5JF8ZFbLa
 HNwTaH0oTd51aHHz7RJd4o1X+qrMEgthiwlUdcgIgJKsJ5wRS2kP0LBjc/aSbim4HRwj
 oqRkYGAjavRKeZ1UUCYMp6hHb3yVfE1qceueWItwCWwfbhHY6r7z2AhUGyuwigoTXyRC
 7MSCPxVzdqrLsmlvtGdcJI3IVMY1HwjJpyRE0eofEOWuvsU6p2e8C9WICeF9UA7tUXUn
 h16Q==
X-Gm-Message-State: APjAAAVaIHMbezv14DZCv5P7ABjcY4r/LegLHOsNiM6jO3B02f2lL375
 nJej1kBAbiUF2ZglphmeWyF49A==
X-Google-Smtp-Source: APXvYqwMvfCi1UIzA9Dds+oEz5UVeF7cNdI5wIi6tZxo8UilpLvQEX9DwAhALre6fjnUlMXi6ouUiA==
X-Received: by 2002:a63:2ac9:: with SMTP id
 q192mr26316526pgq.144.1558611997020; 
 Thu, 23 May 2019 04:46:37 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id l43sm565045pjb.7.2019.05.23.04.46.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 23 May 2019 04:46:36 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] net: macb: Add support for SiFive FU540-C000
Date: Thu, 23 May 2019 17:15:52 +0530
Message-Id: <1558611952-13295-3-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_044639_036037_C34FDF3C 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 drivers/net/ethernet/cadence/macb_main.c | 118 +++++++++++++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index c049410..a9e5227 100644
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
 
@@ -3903,6 +3913,113 @@ static int at91ether_init(struct platform_device *pdev)
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
+	iowrite32(rate != 125000000, mgmt->reg);
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
@@ -3980,6 +4097,7 @@ static int at91ether_init(struct platform_device *pdev)
 	{ .compatible = "cdns,at32ap7000-macb" },
 	{ .compatible = "cdns,at91sam9260-macb", .data = &at91sam9260_config },
 	{ .compatible = "cdns,macb" },
+	{ .compatible = "cdns,fu540-macb", .data = &fu540_c000_config },
 	{ .compatible = "cdns,np4-macb", .data = &np4_config },
 	{ .compatible = "cdns,pc302-gem", .data = &pc302gem_config },
 	{ .compatible = "cdns,gem", .data = &pc302gem_config },
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
