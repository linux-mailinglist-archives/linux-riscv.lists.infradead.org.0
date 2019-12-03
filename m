Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA31510F8F8
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 08:38:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hejh/gpnvKAhJcUKPAU47bAA+atdZrycT0i1D9ZIcuI=; b=F+Ai2xD4LbzGumCooi/IyYHVn
	lKQqPEKVY5o5ZA6A0HiaH6gxQV2oDrQzPXJTfQalAOsRNvU594djkJAQPHiRZQEoSsARdenmOxDCI
	M1oNWwg04RQwROsbpb8i7fAut5XwH78nymHk8BhIZAdPOtJglgeFUNJn6tf5zMTIh93vnkNWaSd2c
	ke5XpALH0WjRc5gBx4k48ewd+1KQtPMN9BHjzQy1neqB5xNlLkmqi3Rsf2x1xh90ccI0W1jByrxuu
	DrqbOf/zyS8YTTyeoRgJN6rZ+RTB2l5PzSn37IEdJRtqcUpETC4Fx4K1IxGYcqdIHqpxf7CV85Z2u
	FIyzRpDtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2lc-0002bA-3X; Tue, 03 Dec 2019 07:38:40 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ic2j2-0000C8-Qx; Tue, 03 Dec 2019 07:36:10 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB37Zp0A014051,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB37Zp0A014051
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 3 Dec 2019 15:35:51 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Tue, 3 Dec 2019 15:35:50 +0800
From: James Tai <james.tai@realtek.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH 3/6] clk: realtek: add common clock support for Realtek SoCs
Date: Tue, 3 Dec 2019 15:35:37 +0800
Message-ID: <20191203073540.9321-4-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203073540.9321-1-james.tai@realtek.com>
References: <20191203073540.9321-1-james.tai@realtek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_233601_632866_CB68A2AB 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
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
Cc: cylee12 <cylee12@realtek.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: cylee12 <cylee12@realtek.com>

This patch adds common clock support for Realtek SoCs, including PLLs,
Mux clocks and Gate clocks.

Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
Signed-off-by: James Tai <james.tai@realtek.com>
---
 drivers/clk/Kconfig                   |   1 +
 drivers/clk/Makefile                  |   1 +
 drivers/clk/realtek/Kconfig           |  10 +
 drivers/clk/realtek/Makefile          |   9 +
 drivers/clk/realtek/clk-pll-dif.c     |  81 ++++++
 drivers/clk/realtek/clk-pll-psaud.c   | 120 ++++++++
 drivers/clk/realtek/clk-pll.c         | 400 ++++++++++++++++++++++++++
 drivers/clk/realtek/clk-pll.h         | 151 ++++++++++
 drivers/clk/realtek/clk-regmap-gate.c |  89 ++++++
 drivers/clk/realtek/clk-regmap-gate.h |  26 ++
 drivers/clk/realtek/clk-regmap-mux.c  |  63 ++++
 drivers/clk/realtek/clk-regmap-mux.h  |  26 ++
 drivers/clk/realtek/common.c          | 320 +++++++++++++++++++++
 drivers/clk/realtek/common.h          | 123 ++++++++
 14 files changed, 1420 insertions(+)
 create mode 100644 drivers/clk/realtek/Kconfig
 create mode 100644 drivers/clk/realtek/Makefile
 create mode 100644 drivers/clk/realtek/clk-pll-dif.c
 create mode 100644 drivers/clk/realtek/clk-pll-psaud.c
 create mode 100644 drivers/clk/realtek/clk-pll.c
 create mode 100644 drivers/clk/realtek/clk-pll.h
 create mode 100644 drivers/clk/realtek/clk-regmap-gate.c
 create mode 100644 drivers/clk/realtek/clk-regmap-gate.h
 create mode 100644 drivers/clk/realtek/clk-regmap-mux.c
 create mode 100644 drivers/clk/realtek/clk-regmap-mux.h
 create mode 100644 drivers/clk/realtek/common.c
 create mode 100644 drivers/clk/realtek/common.h

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index c44247d0b83e..8e06487440ce 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -317,6 +317,7 @@ source "drivers/clk/mediatek/Kconfig"
 source "drivers/clk/meson/Kconfig"
 source "drivers/clk/mvebu/Kconfig"
 source "drivers/clk/qcom/Kconfig"
+source "drivers/clk/realtek/Kconfig"
 source "drivers/clk/renesas/Kconfig"
 source "drivers/clk/samsung/Kconfig"
 source "drivers/clk/sifive/Kconfig"
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 0138fb14e6f8..71ea17f97f7d 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -95,6 +95,7 @@ obj-$(CONFIG_COMMON_CLK_NXP)		+= nxp/
 obj-$(CONFIG_MACH_PISTACHIO)		+= pistachio/
 obj-$(CONFIG_COMMON_CLK_PXA)		+= pxa/
 obj-$(CONFIG_COMMON_CLK_QCOM)		+= qcom/
+obj-$(CONFIG_COMMON_CLK_REALTEK)	+= realtek/
 obj-y					+= renesas/
 obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
 obj-$(CONFIG_COMMON_CLK_SAMSUNG)	+= samsung/
diff --git a/drivers/clk/realtek/Kconfig b/drivers/clk/realtek/Kconfig
new file mode 100644
index 000000000000..5bca757dddfa
--- /dev/null
+++ b/drivers/clk/realtek/Kconfig
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config COMMON_CLK_REALTEK
+	bool "Clock driver for realtek"
+	select MFD_SYSCON
+
+config CLK_PLL_PSAUD
+	bool
+
+config CLK_PLL_DIF
+	bool
diff --git a/drivers/clk/realtek/Makefile b/drivers/clk/realtek/Makefile
new file mode 100644
index 000000000000..050d450db067
--- /dev/null
+++ b/drivers/clk/realtek/Makefile
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_COMMON_CLK_REALTEK) += clk-rtk.o
+
+clk-rtk-y += common.o
+clk-rtk-y += clk-regmap-mux.o
+clk-rtk-y += clk-regmap-gate.o
+clk-rtk-y += clk-pll.o
+clk-rtk-$(CONFIG_CLK_PLL_PSAUD) += clk-pll-psaud.o
+clk-rtk-$(CONFIG_CLK_PLL_DIF) += clk-pll-dif.o
diff --git a/drivers/clk/realtek/clk-pll-dif.c b/drivers/clk/realtek/clk-pll-dif.c
new file mode 100644
index 000000000000..d19efef2626e
--- /dev/null
+++ b/drivers/clk/realtek/clk-pll-dif.c
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2019 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/clk.h>
+#include <linux/spinlock.h>
+#include <linux/delay.h>
+#include "common.h"
+#include "clk-pll.h"
+
+static int clk_pll_dif_enable(struct clk_hw *hw)
+{
+	struct clk_pll_dif *pll = to_clk_pll_dif(hw);
+
+	pr_debug("%pC: %s\n", hw->clk, __func__);
+
+	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x0C, 0x00000048);
+	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x08, 0x00020c00);
+	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x04, 0x204004ca);
+	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x00, 0x8000a000);
+	udelay(100);
+
+	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x08, 0x00420c00);
+	udelay(50);
+
+	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x08, 0x00420c03);
+	udelay(200);
+
+	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x0C, 0x00000078);
+	udelay(100);
+
+	clk_regmap_write(&pll->clkr, pll->pll_ofs + 0x04, 0x204084ca);
+
+	/* ssc control */
+	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x00, 0x00000004);
+	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x04, 0x00006800);
+	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x0C, 0x00000000);
+	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x10, 0x00000000);
+	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x08, 0x001e1f98);
+	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x00, 0x00000005);
+	pll->status = 1;
+
+	return 0;
+}
+
+static void clk_pll_dif_disable(struct clk_hw *hw)
+{
+	struct clk_pll_dif *pll = to_clk_pll_dif(hw);
+
+	pr_debug("%pC: %s\n", hw->clk, __func__);
+	clk_regmap_update(&pll->clkr, pll->pll_ofs + 0x04, 0x00080000, 0x0);
+	clk_regmap_update(&pll->clkr, pll->pll_ofs + 0x08, 0x00400C03, 0x0);
+	clk_regmap_update(&pll->clkr, pll->pll_ofs + 0x0C, 0x00000038, 0x0);
+
+	clk_regmap_write(&pll->clkr, pll->ssc_ofs + 0x00, 0x00000004);
+	pll->status = 0;
+}
+
+static int clk_pll_dif_is_enabled(struct clk_hw *hw)
+{
+	struct clk_pll_dif *pll = to_clk_pll_dif(hw);
+
+	return pll->status;
+}
+
+static void clk_pll_dif_disable_unused(struct clk_hw *hw)
+{
+	pr_info("%pC: %s\n", hw->clk, __func__);
+	clk_pll_dif_disable(hw);
+}
+
+const struct clk_ops clk_pll_dif_ops = {
+	.enable           = clk_pll_dif_enable,
+	.disable          = clk_pll_dif_disable,
+	.disable_unused   = clk_pll_dif_disable_unused,
+	.is_enabled       = clk_pll_dif_is_enabled,
+};
+
diff --git a/drivers/clk/realtek/clk-pll-psaud.c b/drivers/clk/realtek/clk-pll-psaud.c
new file mode 100644
index 000000000000..757a3320ebb7
--- /dev/null
+++ b/drivers/clk/realtek/clk-pll-psaud.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * clk-pll-psaud.c - PLL_PSAUDXA
+ *
+ * Copyright (c) 2019 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#include <linux/clk-provider.h>
+#include "common.h"
+#include "clk-pll.h"
+
+static int clk_pll_psaud_enable(struct clk_hw *hw)
+{
+	struct clk_pll_psaud *pll = to_clk_pll_psaud(hw);
+	u32 mask = 0, val = 0;
+
+	if (pll->id == CLK_PLL_PSAUD1A) {
+		mask = 0x3;
+		val = 0x1;
+	} else {
+		mask = 0xc;
+		val = 0x4;
+	}
+	clk_regmap_update(&pll->clkr, pll->reg + 4, mask, val);
+	return 0;
+}
+
+static void clk_pll_psaud_disable(struct clk_hw *hw)
+{
+	struct clk_pll_psaud *pll = to_clk_pll_psaud(hw);
+	u32 mask = 0, val = 0;
+
+	if (pll->id == CLK_PLL_PSAUD1A) {
+		mask = 0x3;
+		val = 0x3;
+	} else {
+		mask = 0xc;
+		val = 0xc;
+	}
+	clk_regmap_update(&pll->clkr, pll->reg + 4, mask, val);
+}
+
+static void clk_pll_psaud_disable_unused(struct clk_hw *hw)
+{
+	pr_info("%pC: %s\n", hw->clk, __func__);
+	clk_pll_psaud_disable(hw);
+}
+
+static int clk_pll_psaud_is_enabled(struct clk_hw *hw)
+{
+	struct clk_pll_psaud *pll = to_clk_pll_psaud(hw);
+	u32 val;
+
+	val = clk_regmap_read(&pll->clkr, pll->reg + 4);
+	if (pll->id == CLK_PLL_PSAUD1A)
+		val &= 0x3;
+	else
+		val >>= 2;
+	return val == 0x1;
+}
+
+static long clk_pll_psaud_round_rate(struct clk_hw *hw,
+				     unsigned long rate,
+				     unsigned long *parent_rate)
+{
+	return 49192000;
+}
+
+static int clk_pll_psaud_set_rate(struct clk_hw *hw,
+				  unsigned long rate,
+				  unsigned long parent_rate)
+{
+	struct clk_pll_psaud *pll = to_clk_pll_psaud(hw);
+	u32 rsel = 0;
+	u32 mask = 0, val = 0;
+
+	if (WARN_ON_ONCE(rate != 45158400 && rate != 49192000))
+		return -EINVAL;
+
+	if (rate == 45158400)
+		rsel = 1;
+	if (pll->id == CLK_PLL_PSAUD1A) {
+		val  = 0x6a0 | (rsel << 8);
+		mask = 0x7e0;
+	} else {
+		val  = 0x19 | (rsel << 2);
+		mask = 0x1f;
+	}
+	clk_regmap_update(&pll->clkr, pll->reg, mask, val);
+	return 0;
+}
+
+static unsigned long clk_pll_psaud_recalc_rate(struct clk_hw *hw,
+					       unsigned long parent_rate)
+{
+	struct clk_pll_psaud *pll = to_clk_pll_psaud(hw);
+	u32 val;
+	u32 rsel = 0;
+
+	val = clk_regmap_read(&pll->clkr, pll->reg);
+
+	if (pll->id == CLK_PLL_PSAUD1A)
+		rsel = !!(val & BIT(8));
+	else
+		rsel = !!(val & BIT(2));
+
+	return rsel ? 45158400 : 49192000;
+}
+
+const struct clk_ops clk_pll_psaud_ops = {
+	.enable         = clk_pll_psaud_enable,
+	.disable        = clk_pll_psaud_disable,
+	.disable_unused = clk_pll_psaud_disable_unused,
+	.is_enabled     = clk_pll_psaud_is_enabled,
+	.set_rate       = clk_pll_psaud_set_rate,
+	.round_rate     = clk_pll_psaud_round_rate,
+	.recalc_rate    = clk_pll_psaud_recalc_rate,
+};
+
diff --git a/drivers/clk/realtek/clk-pll.c b/drivers/clk/realtek/clk-pll.c
new file mode 100644
index 000000000000..dd90bfc011ec
--- /dev/null
+++ b/drivers/clk/realtek/clk-pll.c
@@ -0,0 +1,400 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2017-2018 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#include <linux/io.h>
+#include <linux/slab.h>
+#include <linux/clk-provider.h>
+#include <linux/clk.h>
+#include <linux/spinlock.h>
+#include <linux/delay.h>
+#include <linux/debugfs.h>
+#include "common.h"
+#include "clk-pll.h"
+
+static int clk_pll_debug_rate_u64_set(void *data, u64 val)
+{
+	struct clk_hw *hw = data;
+
+	clk_set_rate(hw->clk, (unsigned long)(val));
+	return 0;
+}
+
+static int clk_pll_debug_rate_u64_get(void *data, u64 *val)
+{
+	struct clk_hw *hw = data;
+
+	*val = (u64)clk_get_rate(hw->clk);
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(clk_pll_debut_rate_op, clk_pll_debug_rate_u64_get,
+			clk_pll_debug_rate_u64_set, "%llu\n");
+
+static void clk_pll_debug_init(struct clk_hw *hw, struct dentry *d)
+{
+	debugfs_create_file("debug_rate", 0644, d, hw, &clk_pll_debut_rate_op);
+}
+
+static const struct freq_table *ftbl_find_by_rate(const struct freq_table *ftbl,
+						  unsigned long rate)
+{
+	unsigned long best_rate = 0;
+	const struct freq_table *best = NULL;
+
+	for ( ; !IS_FREQ_TABLE_END(ftbl); ftbl++) {
+		if (ftbl->rate == rate)
+			return ftbl;
+
+		if (ftbl->rate > rate)
+			continue;
+
+		if ((rate - best_rate) > (rate - ftbl->rate)) {
+			best_rate = ftbl->rate;
+			best = ftbl;
+		}
+	}
+
+	return best;
+}
+
+static const struct freq_table *ftbl_find_by_val(const struct freq_table *ftbl,
+						 uint32_t value)
+{
+	while (!IS_FREQ_TABLE_END(ftbl)) {
+		if (ftbl->val == (value))
+			return ftbl;
+		ftbl++;
+	}
+	return NULL;
+};
+
+static const struct div_table *dtbl_find_by_rate(const struct div_table *dtbl,
+						 unsigned long rate)
+{
+	while (!IS_DIV_TABLE_END(dtbl)) {
+		if (rate >= dtbl->rate)
+			return dtbl;
+		dtbl++;
+	}
+	return NULL;
+}
+
+static const struct div_table *dtbl_find_by_val(const struct div_table *dtbl,
+						uint32_t val)
+{
+	while (!IS_DIV_TABLE_END(dtbl)) {
+		if (val == dtbl->val)
+			return dtbl;
+		dtbl++;
+	}
+	return NULL;
+}
+
+static void __clk_pll_set_pow_reg(struct clk_pll *clkp, int on)
+{
+	uint32_t pow = (clkp->pow_loc == CLK_PLL_CONF_POW_LOC_CTL3) ? 0x8 : 0x4;
+
+	if (on) {
+		clk_regmap_update(&clkp->clkr, clkp->pll_ofs + pow, 0x7, 0x3);
+		if (clkp->freq_loc == CLK_PLL_CONF_FREQ_LOC_SSC1) {
+			uint32_t val;
+
+			val = clk_regmap_read(&clkp->clkr, clkp->ssc_ofs + 0x0);
+
+			/*
+			 * For those PLL with SCC used only the default
+			 * freq, the oc_en would nerver to be set.
+			 * Help to set it here.
+			 */
+			if ((val & 0x7) != 0x5)
+				clk_regmap_update(&clkp->clkr,
+					clkp->ssc_ofs + 0x0, 0x7, 0x5);
+		}
+		udelay(200);
+	} else {
+		clk_regmap_update(&clkp->clkr, clkp->pll_ofs + pow, 0x7, 0x4);
+	}
+}
+
+static int clk_pll_enable(struct clk_hw *hw)
+{
+	struct clk_pll *clkp = to_clk_pll(hw);
+
+	if (clk_pll_has_pow(clkp))
+		__clk_pll_set_pow_reg(clkp, 1);
+	return 0;
+}
+
+static void clk_pll_disable(struct clk_hw *hw)
+{
+	struct clk_pll *clkp = to_clk_pll(hw);
+
+	if (clk_pll_has_pow(clkp))
+		__clk_pll_set_pow_reg(clkp, 0);
+}
+
+static void clk_pll_disable_unused(struct clk_hw *hw)
+{
+	pr_info("%pC: %s\n", hw->clk, __func__);
+	clk_pll_disable(hw);
+}
+
+static int clk_pll_is_enabled(struct clk_hw *hw)
+{
+	struct clk_pll *clkp = to_clk_pll(hw);
+	uint32_t pow;
+	uint32_t val;
+
+	if (!clk_pll_has_pow(clkp))
+		return -EINVAL;
+
+	pow = (clkp->pow_loc == CLK_PLL_CONF_POW_LOC_CTL3) ? 0x8 : 0x4;
+	val = clk_regmap_read(&clkp->clkr, clkp->pll_ofs + pow);
+	return !!(val & 0x1);
+}
+
+static long clk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
+			       unsigned long *parent_rate)
+{
+	struct clk_pll *clkp = to_clk_pll(hw);
+	const struct freq_table *ftblv = NULL;
+
+	ftblv = ftbl_find_by_rate(clkp->freq_tbl, rate);
+	return ftblv ? ftblv->rate : 0;
+}
+
+static uint32_t __clk_pll_freq_get(struct clk_pll *clkp)
+{
+	uint32_t val = 0;
+
+	switch (clkp->freq_loc) {
+	case CLK_PLL_CONF_FREQ_LOC_CTL1:
+		val = clk_regmap_read(&clkp->clkr, clkp->pll_ofs + 0x0);
+		break;
+
+	case CLK_PLL_CONF_FREQ_LOC_CTL2:
+		val = clk_regmap_read(&clkp->clkr, clkp->pll_ofs + 0x4);
+		break;
+
+	case CLK_PLL_CONF_FREQ_LOC_SSC1:
+		val = clk_regmap_read(&clkp->clkr, clkp->ssc_ofs + 0x4);
+		break;
+
+	default:
+		break;
+	}
+	return val & clkp->freq_mask;
+}
+
+static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
+					 unsigned long parent_rate)
+{
+	struct clk_pll *clkp = to_clk_pll(hw);
+	unsigned long flags = 0;
+	const struct freq_table *fv;
+	uint32_t val;
+
+	flags = clk_pll_lock(clkp);
+	val = __clk_pll_freq_get(clkp);
+	clk_pll_unlock(clkp, flags);
+
+	fv = ftbl_find_by_val(clkp->freq_tbl, val);
+	return fv ? fv->rate : 0;
+}
+
+static inline int __clk_pll_freq_set(struct clk_pll *clkp, uint32_t val)
+{
+	struct clk_hw *hw = &clkp->clkr.hw;
+	int ret = 0;
+	uint32_t mask = clkp->freq_mask;
+	uint32_t pollval;
+
+	switch (clkp->freq_loc) {
+	case CLK_PLL_CONF_FREQ_LOC_CTL1:
+		clk_regmap_update(&clkp->clkr, clkp->pll_ofs, mask, val);
+		break;
+
+	case CLK_PLL_CONF_FREQ_LOC_CTL2:
+		clk_regmap_update(&clkp->clkr, clkp->pll_ofs + 0x4, mask, val);
+		clk_regmap_update(&clkp->clkr, clkp->pll_ofs + 0x8, 0x1, 0x0);
+		clk_regmap_update(&clkp->clkr, clkp->pll_ofs + 0x8, 0x1, 0x1);
+		break;
+
+	case CLK_PLL_CONF_FREQ_LOC_SSC1:
+		clk_regmap_update(&clkp->clkr, clkp->ssc_ofs + 0x0, 0x7, 0x4);
+		clk_regmap_update(&clkp->clkr, clkp->ssc_ofs + 0x4, mask, val);
+		clk_regmap_update(&clkp->clkr, clkp->ssc_ofs + 0x0, 0x7, 0x5);
+
+		if (clk_pll_has_pow(clkp) && !clk_pll_is_enabled(hw))
+			return 0;
+
+		ret = regmap_read_poll_timeout(clkp->clkr.regmap,
+					       clkp->ssc_ofs + 0x1c,
+					       pollval, pollval & BIT(20),
+					       0, 2000);
+		break;
+
+	default:
+		ret = -EINVAL;
+		break;
+	}
+	return ret;
+}
+
+static int clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct clk_pll *clkp = to_clk_pll(hw);
+	unsigned long flags = 0;
+	const struct freq_table *fv;
+	int ret = 0;
+
+	fv = ftbl_find_by_rate(clkp->freq_tbl, rate);
+	if (!fv)
+		return -EINVAL;
+
+	pr_debug("%pC: %s: rate=%ld, val=0x%08x\n", hw->clk, __func__,
+		 fv->rate, fv->val);
+
+	flags = clk_pll_lock(clkp);
+	ret = __clk_pll_freq_set(clkp, fv->val);
+	clk_pll_unlock(clkp, flags);
+	if (ret)
+		pr_warn("%pC %s: failed to set freq: %d\n", hw->clk, __func__,
+			ret);
+	return ret;
+}
+
+static void __clk_pll_div_set(struct clk_pll_div *clkpd, uint32_t val)
+{
+	uint32_t m = (BIT(clkpd->div_width) - 1) << clkpd->div_shift;
+	uint32_t s = clkpd->div_shift;
+
+	clk_regmap_update(&clkpd->clkp.clkr, clkpd->div_ofs, m, val << s);
+}
+
+static uint32_t __clk_pll_div_get(struct clk_pll_div *clkpd)
+{
+	uint32_t m = (BIT(clkpd->div_width) - 1) << clkpd->div_shift;
+	uint32_t s = clkpd->div_shift;
+
+	return (clk_regmap_read(&clkpd->clkp.clkr, clkpd->div_ofs) & m) >> s;
+}
+
+static long clk_pll_div_round_rate(struct clk_hw *hw, unsigned long rate,
+				   unsigned long *parent_rate)
+{
+	struct clk_pll_div *clkpd = to_clk_pll_div(hw);
+	const struct div_table *dv;
+
+	/* lookup div in dtbl */
+	dv = dtbl_find_by_rate(clkpd->div_tbl, rate);
+	if (!dv)
+		return 0;
+
+	rate *= dv->div;
+	rate = clk_pll_round_rate(hw, rate, parent_rate);
+	return rate / dv->div;
+}
+
+static unsigned long clk_pll_div_recalc_rate(struct clk_hw *hw,
+					     unsigned long parent_rate)
+{
+	struct clk_pll_div *clkpd = to_clk_pll_div(hw);
+	unsigned long rate;
+	const struct div_table *dv;
+	uint32_t val;
+
+	rate = clk_pll_recalc_rate(hw, parent_rate);
+
+	val = __clk_pll_div_get(clkpd);
+	dv = dtbl_find_by_val(clkpd->div_tbl, val);
+	if (!dv)
+		return 0;
+
+	rate /= dv->div;
+	pr_debug("%pC: %s: current rate=%lu, div=%d, reg_val=0x%x\n",
+		 hw->clk, __func__, rate, dv->div, val);
+
+	return rate;
+}
+
+static int clk_pll_div_set_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long parent_rate)
+{
+	struct clk *clk = hw->clk;
+	struct clk_pll_div *clkpd = to_clk_pll_div(hw);
+	unsigned long flags;
+	const struct div_table *ndv, *cdv;
+	unsigned long target;
+	uint32_t cur_d;
+	int ret;
+
+	/* find next in the dtbl */
+	ndv = dtbl_find_by_rate(clkpd->div_tbl, rate);
+	if (!ndv)
+		return -EINVAL;
+
+	target = rate * ndv->div;
+
+	/* find current in the dtbl */
+	cur_d = __clk_pll_div_get(clkpd);
+	cdv = dtbl_find_by_val(clkpd->div_tbl, cur_d);
+	if (!cdv)
+		return -EINVAL;
+
+	pr_debug("%pC: rate=%lu, cdv={%d,0x%x}, ndv={%d,0x%x}\n",
+		 clk, rate, cdv->div, cdv->val, ndv->div, ndv->val);
+
+	flags = clk_pll_div_lock(clkpd);
+
+	/* workaround to prevent glitch */
+#ifdef CONFIG_COMMON_CLK_RTD129X
+	if ((&clkpd->clkp.flags & CLK_PLL_DIV_WORKAROUND) &&
+		ndv->val != cdv->val && (ndv->val == 1 || cdv->val == 1)) {
+
+		pr_debug("%pC: apply rate=%u\n", clk, 1000000000);
+		clk_pll_set_rate(hw, 1000000000, parent_rate);
+
+		pr_debug("%pC: apply dv={%d, 0x%x}\n", clk, ndv->div, ndv->val);
+		__clk_pll_div_set(clkpd, ndv->val);
+		cdv = ndv;
+	}
+#endif
+
+	if (ndv->div > cdv->div)
+		__clk_pll_div_set(clkpd, ndv->val);
+	ret = clk_pll_set_rate(hw, target, parent_rate);
+	if (ndv->div < cdv->div)
+		__clk_pll_div_set(clkpd, ndv->val);
+
+	clk_pll_div_unlock(clkpd, flags);
+
+	return ret;
+}
+
+const struct clk_ops clk_pll_ops = {
+	.debug_init       = clk_pll_debug_init,
+	.round_rate       = clk_pll_round_rate,
+	.recalc_rate      = clk_pll_recalc_rate,
+	.set_rate         = clk_pll_set_rate,
+	.enable           = clk_pll_enable,
+	.disable          = clk_pll_disable,
+	.disable_unused   = clk_pll_disable_unused,
+	.is_enabled       = clk_pll_is_enabled,
+};
+
+const struct clk_ops clk_pll_div_ops = {
+	.debug_init       = clk_pll_debug_init,
+	.round_rate       = clk_pll_div_round_rate,
+	.recalc_rate      = clk_pll_div_recalc_rate,
+	.set_rate         = clk_pll_div_set_rate,
+	.enable           = clk_pll_enable,
+	.disable          = clk_pll_disable,
+	.disable_unused   = clk_pll_disable_unused,
+	.is_enabled       = clk_pll_is_enabled,
+};
+
diff --git a/drivers/clk/realtek/clk-pll.h b/drivers/clk/realtek/clk-pll.h
new file mode 100644
index 000000000000..03b4d0391c31
--- /dev/null
+++ b/drivers/clk/realtek/clk-pll.h
@@ -0,0 +1,151 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2017-2019 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#ifndef __CLK_REALTEK_CLK_PLL_H
+#define __CLK_REALTEK_CLK_PLL_H
+
+#include "common.h"
+
+struct freq_table {
+	uint32_t val;
+	unsigned long rate;
+};
+
+#define FREQ_TABLE_END                  { .rate = 0 }
+#define IS_FREQ_TABLE_END(_f)           ((_f)->rate == 0)
+
+struct div_table {
+	unsigned long rate;
+	uint32_t div;
+	uint32_t val;
+};
+
+#define DIV_TABLE_END                   { .rate = 0 }
+#define IS_DIV_TABLE_END(_d)            ((_d)->rate == 0)
+
+struct clk_pll {
+	struct clk_regmap clkr;
+
+
+	int pll_ofs;
+	int ssc_ofs;
+
+	const struct freq_table *freq_tbl;
+	uint32_t freq_mask;
+	uint32_t freq_loc;
+#define CLK_PLL_CONF_FREQ_LOC_CTL1      1
+#define CLK_PLL_CONF_FREQ_LOC_CTL2      2
+#define CLK_PLL_CONF_FREQ_LOC_SSC1      3
+
+	uint32_t pow_loc;
+#define CLK_PLL_CONF_NO_POW             0
+#define CLK_PLL_CONF_POW_LOC_CTL2       1
+#define CLK_PLL_CONF_POW_LOC_CTL3       2
+
+	spinlock_t *lock;
+
+	uint32_t flags;
+};
+
+#define to_clk_pll(_hw) container_of(to_clk_regmap(_hw), struct clk_pll, clkr)
+#define __clk_pll_hw(_ptr)  __clk_regmap_hw(&(_ptr)->clkr)
+
+/* clk_pll flags */
+#define CLK_PLL_DIV_WORKAROUND          BIT(2)
+
+
+static inline bool clk_pll_has_pow(struct clk_pll *pll)
+{
+	if (pll->pow_loc != CLK_PLL_CONF_NO_POW)
+		return true;
+	return false;
+}
+
+static inline unsigned long clk_pll_lock(struct clk_pll *pll)
+{
+	unsigned long flags = 0;
+
+	if (pll->lock)
+		spin_lock_irqsave(pll->lock, flags);
+	return flags;
+}
+
+static inline void clk_pll_unlock(struct clk_pll *pll, unsigned long flags)
+{
+	if (pll->lock)
+		spin_unlock_irqrestore(pll->lock, flags);
+}
+
+struct clk_pll_div {
+	struct clk_pll clkp;
+	int div_ofs;
+	int div_shift;
+	int div_width;
+	const struct div_table *div_tbl;
+	spinlock_t *lock;
+};
+
+#define to_clk_pll_div(_hw) \
+	container_of(to_clk_pll(_hw), struct clk_pll_div, clkp)
+#define __clk_pll_div_hw(_ptr) __clk_pll_hw(&(_ptr)->clkp)
+
+/* clk_pll_div helper functions */
+static inline unsigned long clk_pll_div_lock(struct clk_pll_div *plld)
+{
+	unsigned long flags = 0;
+
+	if (plld->lock)
+		spin_lock_irqsave(plld->lock, flags);
+	return flags;
+}
+
+static inline void clk_pll_div_unlock(struct clk_pll_div *plld,
+	unsigned long flags)
+{
+	if (plld->lock)
+		spin_unlock_irqrestore(plld->lock, flags);
+}
+
+extern const struct clk_ops clk_pll_ops;
+extern const struct clk_ops clk_pll_div_ops;
+
+#ifdef CONFIG_CLK_PLL_PSAUD
+
+struct clk_pll_psaud {
+	struct clk_regmap clkr;
+	int id;
+	int reg;
+	spinlock_t *lock;
+};
+
+#define to_clk_pll_psaud(_hw) \
+	container_of(to_clk_regmap(_hw), struct clk_pll_psaud, clkr)
+#define __clk_pll_psaud_hw(_ptr)  __clk_regmap_hw(&(_ptr)->clkr)
+extern const struct clk_ops clk_pll_psaud_ops;
+
+#define CLK_PLL_PSAUD1A       (0x1)
+#define CLK_PLL_PSAUD2A       (0x2)
+
+#endif /* CONFIG_CLK_PLL_PSAUD */
+
+#ifdef CONFIG_CLK_PLL_DIF
+
+struct clk_pll_dif {
+	struct clk_regmap clkr;
+	int pll_ofs;
+	int ssc_ofs;
+	uint32_t status;
+	spinlock_t *lock;
+};
+#define to_clk_pll_dif(_hw) \
+	container_of(to_clk_regmap(_hw), struct clk_pll_dif, clkr)
+#define __clk_pll_dif_hw(_ptr)  __clk_regmap_hw(&(_ptr)->clkr)
+
+extern const struct clk_ops clk_pll_dif_ops;
+#endif /* CONFIG_CLK_PLL_DIF */
+
+
+#endif /* __CLK_REALTEK_CLK_PLL_H */
diff --git a/drivers/clk/realtek/clk-regmap-gate.c b/drivers/clk/realtek/clk-regmap-gate.c
new file mode 100644
index 000000000000..5f4a6a98da94
--- /dev/null
+++ b/drivers/clk/realtek/clk-regmap-gate.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2017 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#include <linux/slab.h>
+#include <linux/clk-provider.h>
+#include "clk-regmap-gate.h"
+
+static int clk_regmap_gate_enable(struct clk_hw *hw)
+{
+	struct clk_regmap_gate *clkg = to_clk_regmap_gate(hw);
+	unsigned long flags = 0;
+	unsigned int mask;
+	unsigned int val;
+
+	if (clkg->lock)
+		spin_lock_irqsave(clkg->lock, flags);
+
+	mask = BIT(clkg->bit_idx);
+	val  = BIT(clkg->bit_idx);
+
+	if (clkg->write_en) {
+		mask |= BIT(clkg->bit_idx + 1);
+		val  |= BIT(clkg->bit_idx + 1);
+	}
+
+	clk_regmap_update(&clkg->clkr, clkg->gate_ofs, mask, val);
+
+	if (clkg->lock)
+		spin_unlock_irqrestore(clkg->lock, flags);
+
+	return 0;
+}
+
+static void clk_regmap_gate_disable(struct clk_hw *hw)
+{
+	struct clk_regmap_gate *clkg = to_clk_regmap_gate(hw);
+	unsigned long flags = 0;
+	unsigned int mask;
+	unsigned int val;
+
+	if (clkg->lock)
+		spin_lock_irqsave(clkg->lock, flags);
+
+	mask = BIT(clkg->bit_idx);
+	val  = 0;
+
+	if (clkg->write_en) {
+		mask |= BIT(clkg->bit_idx + 1);
+		val  |= BIT(clkg->bit_idx + 1);
+	}
+
+	clk_regmap_update(&clkg->clkr, clkg->gate_ofs, mask, val);
+
+	if (clkg->lock)
+		spin_unlock_irqrestore(clkg->lock, flags);
+}
+
+static void clk_regmap_gate_disable_unused(struct clk_hw *hw)
+{
+	pr_info("%pC: %s\n", hw->clk, __func__);
+	clk_regmap_gate_disable(hw);
+}
+
+static int clk_regmap_gate_is_enabled(struct clk_hw *hw)
+{
+	struct clk_regmap_gate *clkg = to_clk_regmap_gate(hw);
+	int ret;
+	unsigned long flags = 0;
+
+	if (clkg->lock)
+		spin_lock_irqsave(clkg->lock, flags);
+
+	ret = clk_regmap_read(&clkg->clkr, clkg->gate_ofs) & BIT(clkg->bit_idx);
+
+	if (clkg->lock)
+		spin_unlock_irqrestore(clkg->lock, flags);
+
+	return !!ret;
+}
+
+const struct clk_ops clk_regmap_gate_ops = {
+	.enable = clk_regmap_gate_enable,
+	.disable = clk_regmap_gate_disable,
+	.disable_unused = clk_regmap_gate_disable_unused,
+	.is_enabled = clk_regmap_gate_is_enabled,
+};
diff --git a/drivers/clk/realtek/clk-regmap-gate.h b/drivers/clk/realtek/clk-regmap-gate.h
new file mode 100644
index 000000000000..7643e0193177
--- /dev/null
+++ b/drivers/clk/realtek/clk-regmap-gate.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2017 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#ifndef __CLK_REALTEK_CLK_MMIO_GATE_H
+#define __CLK_REALTEK_CLK_MMIO_GATE_H
+
+#include "common.h"
+
+struct clk_regmap_gate {
+	struct clk_regmap clkr;
+	int gate_ofs;
+	uint8_t bit_idx;
+	spinlock_t *lock;
+	int write_en:1;
+};
+
+#define to_clk_regmap_gate(_hw) \
+	container_of(to_clk_regmap(_hw), struct clk_regmap_gate, clkr)
+#define __clk_regmap_gate_hw(_p) __clk_regmap_hw(&(_p)->clkr)
+
+extern const struct clk_ops clk_regmap_gate_ops;
+
+#endif
diff --git a/drivers/clk/realtek/clk-regmap-mux.c b/drivers/clk/realtek/clk-regmap-mux.c
new file mode 100644
index 000000000000..bd7eb706e12a
--- /dev/null
+++ b/drivers/clk/realtek/clk-regmap-mux.c
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2017 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/io.h>
+#include <linux/err.h>
+#include "clk-regmap-mux.h"
+
+static u8 clk_regmap_mux_get_parent(struct clk_hw *hw)
+{
+	struct clk_regmap_mux *clkm = to_clk_regmap_mux(hw);
+	int num_parents = clk_hw_get_num_parents(hw);
+	u32 val;
+	unsigned long flags = 0;
+
+	if (clkm->lock)
+		spin_lock_irqsave(clkm->lock, flags);
+
+	val = clk_regmap_read(&clkm->clkr, clkm->mux_ofs) >> clkm->shift;
+	if (clkm->lock)
+		spin_unlock_irqrestore(clkm->lock, flags);
+
+	val &= clkm->mask;
+	if (val >= num_parents)
+		return -EINVAL;
+
+	return val;
+}
+
+static int clk_regmap_mux_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct clk_regmap_mux *clkm = to_clk_regmap_mux(hw);
+	unsigned long flags = 0;
+
+	if (clkm->lock)
+		spin_lock_irqsave(clkm->lock, flags);
+
+	clk_regmap_update(&clkm->clkr, clkm->mux_ofs, clkm->mask << clkm->shift,
+		index << clkm->shift);
+
+	if (clkm->lock)
+		spin_unlock_irqrestore(clkm->lock, flags);
+	return 0;
+}
+
+const struct clk_ops clk_regmap_mux_ops = {
+	.get_parent = clk_regmap_mux_get_parent,
+	.set_parent = clk_regmap_mux_set_parent,
+	.determine_rate = __clk_mux_determine_rate,
+};
+EXPORT_SYMBOL_GPL(clk_regmap_mux_ops);
+
+const struct clk_ops clk_regmap_mux_ro_ops = {
+	.get_parent = clk_regmap_mux_get_parent,
+};
+EXPORT_SYMBOL_GPL(clk_regmap_mux_ro_ops);
+
diff --git a/drivers/clk/realtek/clk-regmap-mux.h b/drivers/clk/realtek/clk-regmap-mux.h
new file mode 100644
index 000000000000..36895f03c0f4
--- /dev/null
+++ b/drivers/clk/realtek/clk-regmap-mux.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2017 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#ifndef __CLK_REALTEK_CLK_MMIO_MUX_H
+#define __CLK_REALTEK_CLK_MMIO_MUX_H
+
+#include "common.h"
+
+struct clk_regmap_mux {
+	struct clk_regmap clkr;
+	int mux_ofs;
+	unsigned int mask;
+	unsigned int shift;
+	spinlock_t *lock;
+};
+
+#define to_clk_regmap_mux(_hw) \
+	container_of(to_clk_regmap(_hw), struct clk_regmap_mux, clkr)
+#define __clk_regmap_mux_hw(_p) __clk_regmap_hw(&(_p)->clkr)
+
+extern const struct clk_ops clk_regmap_mux_ops;
+
+#endif
diff --git a/drivers/clk/realtek/common.c b/drivers/clk/realtek/common.c
new file mode 100644
index 000000000000..0c5dc5ce4682
--- /dev/null
+++ b/drivers/clk/realtek/common.c
@@ -0,0 +1,320 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/clk-provider.h>
+#include <linux/device.h>
+#include <linux/init.h>
+#include <linux/slab.h>
+#include <linux/pm.h>
+#include "common.h"
+#include "clk-pll.h"
+#include "clk-regmap-gate.h"
+#include "clk-regmap-mux.h"
+
+static int rtk_clk_suspend(struct device *dev)
+{
+	struct rtk_clk_data *data = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < data->pm_data_num; i++) {
+		struct clk_pm_data *pm_data = &data->pm_data[i];
+
+		regmap_read(data->regmap, pm_data->ofs, &pm_data->val);
+	}
+	return 0;
+}
+
+static int rtk_clk_resume(struct device *dev)
+{
+	struct rtk_clk_data *data = dev_get_drvdata(dev);
+	int i;
+
+	for (i = data->pm_data_num - 1; i >= 0; i--) {
+		struct clk_pm_data *pm_data = &data->pm_data[i];
+		uint32_t val = pm_data->val;
+		uint32_t mask = ~0x0;
+
+		if (pm_data->write_en_bits)
+			val |= pm_data->write_en_bits;
+		if (pm_data->ignore_bits)
+			mask &= ~pm_data->ignore_bits;
+		dev_info(dev, "resuming: ofs=%03x, vs=%08x vr=%08x m=%08x\n",
+			pm_data->ofs, pm_data->val, val, mask);
+		regmap_update_bits(data->regmap, pm_data->ofs, mask, val);
+	}
+	return 0;
+}
+
+const struct dev_pm_ops rtk_clk_pm_ops = {
+	.suspend = rtk_clk_suspend,
+	.resume  = rtk_clk_resume,
+};
+
+struct rtk_clk_data *alloc_rtk_clk_data(int clk_num)
+{
+	struct rtk_clk_data *data;
+
+	data = kzalloc(sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return NULL;
+
+	data->clk_num = clk_num;
+	data->clk_data.clk_num = clk_num;
+	data->clk_data.clks = kcalloc(clk_num, sizeof(*data->clk_data.clks),
+				      GFP_KERNEL);
+	if (!data->clk_data.clks)
+		goto free_data;
+	return data;
+
+free_data:
+	kfree(data->clk_data.clks);
+	kfree(data);
+	return NULL;
+}
+
+void free_rtk_clk_data(struct rtk_clk_data *data)
+{
+	kfree(data->clk_data.clks);
+	kfree(data);
+}
+
+static inline
+int __cell_clk_add(struct clk_onecell_data *clk_data, int i, struct clk *clk)
+{
+	if (clk_data->clks[i]) {
+		pr_err("%s: failed to add %pC, cell%d is used by %pC\n",
+			__func__, clk, i, clk_data->clks[i]);
+		return -EINVAL;
+	}
+	clk_data->clks[i] = clk;
+	return 0;
+}
+
+#define CLK_TYPE_DEFAULT                (0x0)
+#define CLK_TYPE_REGMAP                 (0x8)
+#define CLK_TYPE_REGMAP_PLL             (0x1 | CLK_TYPE_REGMAP)
+#define CLK_TYPE_REGMAP_MUX             (0x2 | CLK_TYPE_REGMAP)
+#define CLK_TYPE_REGMAP_GATE            (0x3 | CLK_TYPE_REGMAP)
+
+static inline int __hw_to_type(struct clk_hw *hw)
+{
+	const struct clk_ops *ops = hw->init->ops;
+
+	if (ops == &clk_pll_ops || ops == &clk_pll_div_ops)
+		return CLK_TYPE_REGMAP_PLL;
+	if (ops == &clk_regmap_mux_ops)
+		return CLK_TYPE_REGMAP_MUX;
+	if (ops == &clk_regmap_gate_ops)
+		return CLK_TYPE_REGMAP_GATE;
+#ifdef CONFIG_CLK_PLL_DIF
+	/*
+	 * clk_pll_dif is not based struct clk_pll, so
+	 * return as CLK_TYPE_REGMAP to setup internal
+	 * clk_reg
+	 */
+	if (ops == &clk_pll_dif_ops)
+		return CLK_TYPE_REGMAP;
+#endif
+#ifdef CONFIG_CLK_PLL_PSAUD
+	/*
+	 * clk_pll_psaud is not based struct clk_pll, so
+	 * return as CLK_TYPE_REGMAP to setup internal
+	 * clk_reg
+	 */
+	if (ops == &clk_pll_psaud_ops)
+		return CLK_TYPE_REGMAP;
+#endif
+
+	return CLK_TYPE_DEFAULT;
+}
+
+static
+struct clk *rtk_clk_register_hw(struct device *dev, struct regmap *regmap,
+				struct clk_hw *hw)
+{
+	int type;
+
+	type = __hw_to_type(hw);
+	if (type & CLK_TYPE_REGMAP) {
+		struct clk_regmap *clkr = to_clk_regmap(hw);
+
+		clkr->regmap = regmap;
+	}
+
+	return clk_register(dev, hw);
+}
+
+int rtk_clk_add_hws(struct device *dev, struct rtk_clk_data *data,
+		    struct clk_hw **hws, int num)
+{
+	struct clk_onecell_data *clk_data = &data->clk_data;
+	struct regmap *regmap = data->regmap;
+	int i;
+
+	for (i = 0; i < num; i++) {
+		struct clk_hw *hw = hws[i];
+		const char *name;
+		struct clk *clk;
+
+		if (IS_ERR(hw))
+			__cell_clk_add(clk_data, i, ERR_CAST(hw));
+		if (IS_ERR_OR_NULL(hw))
+			continue;
+
+		name = hw->init->name;
+		clk = rtk_clk_register_hw(dev, regmap, hw);
+		if (IS_ERR(clk)) {
+			pr_err("%s: failed to add hw%d(%s): %ld\n", __func__,
+				i, name, PTR_ERR(clk));
+			continue;
+		}
+
+		clk_register_clkdev(clk, name, NULL);
+		__cell_clk_add(clk_data, i, clk);
+	}
+	return 0;
+}
+
+static
+struct clk *rtk_clk_register_composite(struct device *dev,
+				       struct regmap *regmap,
+				       struct clk_composite_data *comp)
+{
+	struct clk_regmap_mux *clkm = NULL;
+	const struct clk_ops *mux_op = NULL;
+	struct clk_hw *mux_hw = NULL;
+	struct clk_regmap_gate *clkg = NULL;
+	const struct clk_ops *gate_op = NULL;
+	struct clk_hw *gate_hw = NULL;
+	struct clk *clk;
+
+	if (comp->mux_ofs != CLK_OFS_INVALID) {
+		clkm = kzalloc(sizeof(*clkm), GFP_KERNEL);
+		if (!clkm) {
+			clk = ERR_PTR(-ENOMEM);
+			goto check_err;
+		}
+
+		clkm->mux_ofs     = comp->mux_ofs;
+		clkm->mask        = BIT(comp->mux_width) - 1;
+		clkm->shift       = comp->mux_shift;
+		clkm->clkr.regmap = regmap;
+
+		mux_op = &clk_regmap_mux_ops;
+		mux_hw = &__clk_regmap_mux_hw(clkm);
+	}
+
+	if (comp->gate_ofs != CLK_OFS_INVALID) {
+		clkg = kzalloc(sizeof(*clkg), GFP_KERNEL);
+		if (!clkg) {
+			clk = ERR_PTR(-ENOMEM);
+			goto check_err;
+		}
+
+		clkg->gate_ofs    = comp->gate_ofs;
+		clkg->bit_idx     = comp->gate_shift;
+		clkg->write_en    = comp->gate_write_en;
+		clkg->clkr.regmap = regmap;
+
+		gate_op = &clk_regmap_gate_ops;
+		gate_hw = &__clk_regmap_gate_hw(clkg);
+	}
+
+	clk = clk_register_composite(NULL, comp->name, comp->parent_names,
+				     comp->num_parents, mux_hw, mux_op,
+				     NULL, NULL, gate_hw, gate_op, comp->flags);
+check_err:
+	if (IS_ERR(clk)) {
+		kfree(clkm);
+		kfree(clkg);
+	}
+	return clk;
+}
+
+int rtk_clk_add_composites(struct device *dev, struct rtk_clk_data *data,
+			   struct clk_composite_data *comps, int num)
+{
+	struct clk_onecell_data *clk_data = &data->clk_data;
+	struct regmap *regmap = data->regmap;
+	int i;
+
+	for (i = 0; i < num; i++) {
+		struct clk_composite_data *comp = &comps[i];
+		const char *name = comp->name;
+		struct clk *clk;
+
+		clk = rtk_clk_register_composite(dev, regmap, comp);
+		if (IS_ERR(clk)) {
+			pr_err("%s: failed to add composite%d(%s): %ld\n",
+				__func__, i, name, PTR_ERR(clk));
+			continue;
+		}
+
+		clk_register_clkdev(clk, name, NULL);
+		__cell_clk_add(clk_data, comp->id, clk);
+	}
+
+	return 0;
+}
+
+static
+struct clk *rtk_clk_register_gate(struct device *dev, struct regmap *regmap,
+				  struct clk_gate_data *gate)
+{
+	struct clk_regmap_gate *clkg;
+	struct clk_init_data init = { 0 };
+	struct clk_hw *hw;
+
+	clkg = kzalloc(sizeof(*clkg), GFP_KERNEL);
+	if (!clkg)
+		return ERR_PTR(-ENOMEM);
+
+	clkg->gate_ofs    = gate->gate_ofs;
+	clkg->bit_idx     = gate->gate_shift;
+	clkg->write_en    = gate->gate_write_en;
+	clkg->clkr.regmap = regmap;
+
+	init.name         = gate->name;
+	init.ops          = &clk_regmap_gate_ops;
+	init.flags         = gate->flags;
+	if (gate->parent) {
+		init.parent_names = &gate->parent;
+		init.num_parents  = 1;
+	}
+
+	hw = &__clk_regmap_gate_hw(clkg);
+	hw->init = &init;
+	return clk_register(dev, hw);
+}
+
+int rtk_clk_add_gates(struct device *dev, struct rtk_clk_data *data,
+		      struct clk_gate_data *gates, int num)
+{
+	struct clk_onecell_data *clk_data = &data->clk_data;
+	struct regmap *regmap = data->regmap;
+	int i;
+
+	for (i = 0; i < num; i++) {
+		struct clk_gate_data *gate = &gates[i];
+		const char *name = gate->name;
+		struct clk *clk;
+
+		clk = rtk_clk_register_gate(dev, regmap, gate);
+		if (IS_ERR(clk)) {
+			pr_err("%s: failed to add gate%d(%s): %ld\n", __func__,
+				i, name, PTR_ERR(clk));
+			continue;
+		}
+
+		clk_register_clkdev(clk, name, NULL);
+		__cell_clk_add(clk_data, gate->id, clk);
+	}
+
+	return 0;
+}
+
diff --git a/drivers/clk/realtek/common.h b/drivers/clk/realtek/common.h
new file mode 100644
index 000000000000..c736b254852f
--- /dev/null
+++ b/drivers/clk/realtek/common.h
@@ -0,0 +1,123 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2016-2019 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#ifndef __CLK_REALTEK_COMMON_H
+#define __CLK_REALTEK_COMMON_H
+
+#include <linux/bitops.h>
+#include <linux/clk-provider.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/regmap.h>
+
+struct device;
+struct platform_device;
+
+struct clk_regmap {
+	struct clk_hw hw;
+	struct regmap *regmap;
+};
+
+#define to_clk_regmap(_hw) container_of(_hw, struct clk_regmap, hw)
+#define __clk_regmap_hw(_p) ((_p)->hw)
+
+static inline
+void clk_regmap_write(struct clk_regmap *clkr, uint32_t ofs, uint32_t val)
+{
+	pr_debug("%s: ofs=%03x, val=%08x\n", __func__, ofs, val);
+	regmap_write(clkr->regmap, ofs, val);
+}
+
+static inline
+uint32_t clk_regmap_read(struct clk_regmap *clkr, uint32_t ofs)
+{
+	uint32_t val = 0;
+
+	regmap_read(clkr->regmap, ofs, &val);
+	pr_debug("%s: ofs=%03x, val=%08x\n", __func__, ofs, val);
+	return val;
+}
+
+static inline void clk_regmap_update(struct clk_regmap *clkr, uint32_t ofs,
+				     uint32_t mask, uint32_t val)
+{
+	pr_debug("%s: ofs=%03x, mask=%08x, val=%08x\n", __func__, ofs,
+		 mask, val);
+	regmap_update_bits(clkr->regmap, ofs, mask, val);
+}
+
+/* ofs check */
+#define CLK_OFS_INVALID                 (-1)
+#define CLK_OFS_IS_VALID(_ofs)          ((_ofs) != CLK_OFS_INVALID)
+
+struct clk_composite_data {
+	int id;
+	const char *name;
+	unsigned long flags;
+	struct clk *clk;
+
+	int gate_ofs;
+	int gate_shift;
+	int gate_write_en;
+
+	int mux_ofs;
+	int mux_width;
+	int mux_shift;
+	const char * const *parent_names;
+	int num_parents;
+};
+
+struct clk_gate_data {
+	int id;
+	const char *name;
+	const char *parent;
+	unsigned long flags;
+	struct clk *clk;
+
+	int gate_ofs;
+	int gate_shift;
+	int gate_write_en;
+};
+
+#define CLK_GATE_DATA(_id, _name, _parent, _flags, _ofs, _shift, _write_en) \
+{ \
+	.id = _id, \
+	.name = _name, \
+	.parent = _parent, \
+	.flags = _flags, \
+	.gate_ofs = _ofs, \
+	.gate_shift = _shift, \
+	.gate_write_en = _write_en, \
+}
+
+struct clk_pm_data {
+	int ofs;
+	uint32_t ignore_bits;
+	uint32_t write_en_bits;
+	uint32_t val;
+};
+
+struct rtk_clk_data {
+	int clk_num;
+	struct regmap *regmap;
+	struct clk_onecell_data clk_data;
+	struct clk_pm_data *pm_data;
+	int pm_data_num;
+};
+
+struct rtk_clk_data *alloc_rtk_clk_data(int clk_num);
+void free_rtk_clk_data(struct rtk_clk_data *data);
+int rtk_clk_add_hws(struct device *dev, struct rtk_clk_data *data,
+		    struct clk_hw **hws, int num);
+int rtk_clk_add_composites(struct device *dev, struct rtk_clk_data *data,
+			   struct clk_composite_data *comps, int num);
+int rtk_clk_add_gates(struct device *dev, struct rtk_clk_data *data,
+		      struct clk_gate_data *gates, int num);
+extern const struct dev_pm_ops rtk_clk_pm_ops;
+
+#endif /* __CLK_REALTEK_COMMON_H */
+
-- 
2.24.0


