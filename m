Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D7DAEC42
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 15:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Cuyqgq4b1ix8+6kWRM/CrP7VQgOAFtUTKrjxm8LBus=; b=IVrOXzO+HgwpQy
	+48YbLt1po5NYd3ugjetsoOIZj3rEHsBQDROshuuR84wvE+s9zOGYM4TlrYCyCq0BVSObPDJE44Oh
	g/XmKLeA5YeZv77hUSHD/ZS5KM/lIGC1DNGJpXlk/rWgtHv/fXlPTVHMPjR5SkBkUiQDBP4hhkyMl
	Y2Bzba9LClyHJNWQK6dD1FIUqcm6eWD5mj/SgpQB+/luxntcn8a7uc1V8kPFa5T+C17MzZVuKDSgg
	r5rtlpg/er60c4p+mo5HqjMilj9KwaxIckDwnq4xiNIuaP7BT8m7plJ9MhGNaRkMWg5xOxFvy7z3r
	lOzsuQHcTz+sy4BCbmwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gXZ-0000ol-Ay; Tue, 10 Sep 2019 13:50:41 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gXU-0000dd-KE; Tue, 10 Sep 2019 13:50:38 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 7Qx/t+qsjV6E0Dj1xcyp25xO9F6J0eJMEgv8Rljttory/h06/GeKzflrUaMK23yk4zpcyzRSgD
 oc7X0UF5ZKXrf8PPjGuE4u5QFaEIVxR4voyfKyb3pZ+bW+1/amxVUdogsl++SEkth8xqzN7fiC
 2cW8K4IWn+UhZN2FvlZT5ULMgk4nHeh06WVzpS/tVawEfSwvFI3NAhxNOQiiiRqT++v7ZXDv6d
 e/omb4OFyKX+MKSCiBXGp+7xlJnBhpZDZgUm66rk0ykVRhT17zotZ/yYy7Hy4kCN71Um3RINx+
 JN4=
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="48512205"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Sep 2019 06:50:33 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Sep 2019 06:50:27 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 10 Sep 2019 06:50:05 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <daniel.lezcano@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>, 
 <linux@armlinux.org.uk>, <nsekhar@ti.com>, <bgolaszewski@baylibre.com>,
 <monstr@monstr.eu>, <john@phrozen.org>, <ralf@linux-mips.org>,
 <paul.burton@mips.com>, <jhogan@kernel.org>, <lftan@altera.com>,
 <tglx@linutronix.de>, <vgupta@synopsys.com>, <marc.zyngier@arm.com>,
 <patrice.chotard@st.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <f.fainelli@gmail.com>, <rjui@broadcom.com>, <sbranden@broadcom.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <linus.walleij@linaro.org>,
 <shc_work@mail.ru>, <kgene@kernel.org>, <krzk@kernel.org>,
 <ysato@users.sourceforge.jp>, <liviu.dudau@arm.com>, <sudeep.holla@arm.com>,
 <lorenzo.pieralisi@arm.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>, 
 <kernel@pengutronix.de>, <festevam@gmail.com>, <linux-imx@nxp.com>,
 <baohua@kernel.org>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <baruch@tkos.co.il>, <u.kleine-koenig@pengutronix.de>, <guoren@kernel.org>,
 <kaloz@openwrt.org>, <khalasa@piap.pl>, <ssantosh@kernel.org>,
 <vz@mleia.com>, <slemieux.tyco@gmail.com>, <khilman@baylibre.com>,
 <avifishman70@gmail.com>, <tmaimon77@gmail.com>, <tali.perry1@gmail.com>,
 <venture@google.com>, <yuenn@google.com>, <benjaminfair@google.com>,
 <afaerber@suse.de>, <manivannan.sadhasivam@linaro.org>,
 <narmstrong@baylibre.com>, <agross@kernel.org>, <palmer@sifive.com>,
 <aou@eecs.berkeley.edu>, <heiko@sntech.de>, <orsonzhai@gmail.com>,
 <baolin.wang@linaro.org>, <zhang.lyra@gmail.com>,
 <maxime.ripard@bootlin.com>, <wens@csie.org>, <thierry.reding@gmail.com>,
 <jonathanh@nvidia.com>, <linux@prisktech.co.nz>, <john.stultz@linaro.org>,
 <sboyd@kernel.org>, <matthias.bgg@gmail.com>
Subject: [PATCH 7/7] clocksource/drivers/integrator-ap: parse the chosen node
Date: Tue, 10 Sep 2019 16:47:16 +0300
Message-ID: <1568123236-767-8-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_065036_887679_03444F6F 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, openbmc@lists.ozlabs.org, linux-oxnas@groups.io,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-unisoc@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-tegra@vger.kernel.org, nios2-dev@lists.rocketboards.org,
 linux-riscv@lists.infradead.org, linux-snps-arc@lists.infradead.org, Claudiu
 Beznea <claudiu.beznea@microchip.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

The driver currently uses aliases to know whether the timer is the
clocksource or the clockevent. Add the /chosen/linux,clocksource and
/chosen/linux,clockevent parsing while keeping backward compatibility.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/clocksource/Kconfig               |  1 +
 drivers/clocksource/timer-integrator-ap.c | 21 ++++++++++++++++++++-
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index a642c23b2fba..e1742c0abb03 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -240,6 +240,7 @@ config KEYSTONE_TIMER
 config INTEGRATOR_AP_TIMER
 	bool "Integrator-ap timer driver" if COMPILE_TEST
 	select CLKSRC_MMIO
+	select TIMER_OF
 	help
 	  Enables support for the Integrator-ap timer.
 
diff --git a/drivers/clocksource/timer-integrator-ap.c b/drivers/clocksource/timer-integrator-ap.c
index 8d6f814ace36..78af89e73125 100644
--- a/drivers/clocksource/timer-integrator-ap.c
+++ b/drivers/clocksource/timer-integrator-ap.c
@@ -14,6 +14,7 @@
 #include <linux/interrupt.h>
 #include <linux/sched_clock.h>
 
+#include "timer-of.h"
 #include "timer-sp.h"
 
 static void __iomem * sched_clk_base;
@@ -160,6 +161,12 @@ static int integrator_clockevent_init(unsigned long inrate,
 	return 0;
 }
 
+static struct timer_of to[] = {
+	{ .flags = TIMER_OF_TYPE_CS, },
+	{ .flags = TIMER_OF_TYPE_CE, },
+	{ /* sentinel */ }
+};
+
 static int __init integrator_ap_timer_init_of(struct device_node *node)
 {
 	const char *path;
@@ -169,6 +176,7 @@ static int __init integrator_ap_timer_init_of(struct device_node *node)
 	struct clk *clk;
 	unsigned long rate;
 	struct device_node *alias_node;
+	struct timer_of *to = node->data;
 
 	base = of_io_request_and_map(node, 0, "integrator-timer");
 	if (IS_ERR(base))
@@ -183,6 +191,17 @@ static int __init integrator_ap_timer_init_of(struct device_node *node)
 	rate = clk_get_rate(clk);
 	writel(0, base + TIMER_CTRL);
 
+	if (timer_of_is_clocksource(to))
+		/* The primary timer lacks IRQ, use as clocksource */
+		return integrator_clocksource_init(rate, base);
+
+	if (timer_of_is_clockevent(to)) {
+		/* The secondary timer will drive the clock event */
+		irq = irq_of_parse_and_map(node, 0);
+		return integrator_clockevent_init(rate, base, irq);
+	}
+
+	/* DT ABI compatibility below */
 	err = of_property_read_string(of_aliases,
 				"arm,timer-primary", &path);
 	if (err) {
@@ -227,4 +246,4 @@ static int __init integrator_ap_timer_init_of(struct device_node *node)
 }
 
 TIMER_OF_DECLARE(integrator_ap_timer, "arm,integrator-timer",
-		       integrator_ap_timer_init_of, NULL);
+		       integrator_ap_timer_init_of, to);
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
