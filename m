Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C6710F943
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 08:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qOx4kclQovun5S4wjy7Gnp+5YlKoRoPWN6l1RYBjKHM=; b=rsAbQN4O8mm3Moxyv0gtoZEH4
	NmLTFEKfCQ27GLvIt0GXLhRW6U+LfCeNizm5ZVbvodAM9KYpEJIap4z+pE/YcGV5H6aVG/KrWX+7y
	L3vaPu+itDvWGnT4bnApCIpk+/yEuzI0ybUv3cL8SVTej4fGaJDOS/XRQMjDZ3fkGJjD+jlPSC0E1
	0BnUDJVYj5K2+Jkf+rRZsgibnS2v2TS4KsPF8te/tNcSmq1pI6LTQILM+GcyrQb/siYLHhuHszhcn
	gwbsWbEdl+UwOxmcLDhjDYTu9TL9VRF/vqDOpgR+NQcUZTDdQUzgGLrynEDmBQFYHkfx00rK7j8VF
	xZ6dPVmQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2um-0001R6-Ov; Tue, 03 Dec 2019 07:48:08 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ic2sK-0007gD-Ld; Tue, 03 Dec 2019 07:45:40 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB37jSG1016043,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB37jSG1016043
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 3 Dec 2019 15:45:28 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Tue, 3 Dec 2019 15:45:27 +0800
From: James Tai <james.tai@realtek.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH 5/6] clk: realtek: add rtd1619 controllers
Date: Tue, 3 Dec 2019 15:45:12 +0800
Message-ID: <20191203074513.9416-6-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203074513.9416-1-james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_234537_270891_A19578DC 
X-CRM114-Status: GOOD (  11.97  )
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
Cc: cylee12 <cylee12@realtek.com>, linux-realtek-soc@lists.infradead.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: cylee12 <cylee12@realtek.com>

This patch adds CRT controller and ISO controller for RTD1619 SoC.

Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
Signed-off-by: James Tai <james.tai@realtek.com>
---
 drivers/clk/realtek/Kconfig          |  10 +
 drivers/clk/realtek/Makefile         |   2 +
 drivers/clk/realtek/clk-rtd1619-cc.c | 553 +++++++++++++++++++++++++++
 drivers/clk/realtek/clk-rtd1619-ic.c | 112 ++++++
 4 files changed, 677 insertions(+)
 create mode 100644 drivers/clk/realtek/clk-rtd1619-cc.c
 create mode 100644 drivers/clk/realtek/clk-rtd1619-ic.c

diff --git a/drivers/clk/realtek/Kconfig b/drivers/clk/realtek/Kconfig
index 8e7e7edf64dd..43c55be25eba 100644
--- a/drivers/clk/realtek/Kconfig
+++ b/drivers/clk/realtek/Kconfig
@@ -9,3 +9,13 @@ config CLK_PLL_PSAUD
 
 config CLK_PLL_DIF
 	bool
+
+config COMMON_CLK_RTD1619
+	bool "RTD1619 Clock Controller"
+	depends on ARCH_REALTEK || COMPILE_TEST
+	select COMMON_CLK_REALTEK
+	select CLK_PLL_PSAUD
+	select CLK_PLL_DIF
+	default ARCH_REALTEK
+	---help---
+	  Support for the clock controller on RTD1619
diff --git a/drivers/clk/realtek/Makefile b/drivers/clk/realtek/Makefile
index 43f8bd71c0c8..24af3dbe2006 100644
--- a/drivers/clk/realtek/Makefile
+++ b/drivers/clk/realtek/Makefile
@@ -8,3 +8,5 @@ clk-rtk-y += clk-pll.o
 clk-rtk-$(CONFIG_CLK_PLL_PSAUD) += clk-pll-psaud.o
 clk-rtk-$(CONFIG_CLK_PLL_DIF) += clk-pll-dif.o
 clk-rtk-y += reset.o
+clk-rtk-$(CONFIG_COMMON_CLK_RTD1619) += clk-rtd1619-cc.o
+clk-rtk-$(CONFIG_COMMON_CLK_RTD1619) += clk-rtd1619-ic.o
diff --git a/drivers/clk/realtek/clk-rtd1619-cc.c b/drivers/clk/realtek/clk-rtd1619-cc.c
new file mode 100644
index 000000000000..c799ffd4cc7a
--- /dev/null
+++ b/drivers/clk/realtek/clk-rtd1619-cc.c
@@ -0,0 +1,553 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2018-2019 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/bitops.h>
+#include <linux/platform_device.h>
+#include <linux/mfd/syscon.h>
+#include "common.h"
+#include "clk-pll.h"
+#include "clk-regmap-gate.h"
+#include "clk-regmap-mux.h"
+#include "reset.h"
+#include <dt-bindings/clock/rtk,clock-rtd1619.h>
+#include <dt-bindings/reset/rtk,reset-rtd1619.h>
+
+#define DIV_DV(_r, _d, _v)    { .rate = _r, .div = _d, .val = _v, }
+#define FREQ_NF_MASK          (0x7FFFF)
+#define FREQ_NF(_r, _n, _f)   { .rate = _r, .val = ((_n) << 11) | (_f), }
+#define FREQ_MNO_MASK         (0x63FF0)
+#define FREQ_MNO(_r, _m, _n, _o) \
+	{ .rate = _r, .val = ((_m) << 4) | ((_n) << 12) | ((_o) << 17), }
+
+static const char * const default_parent[] = { "osc27m" };
+
+static const struct div_table scpu_div_tbl[] = {
+	DIV_DV(1000000000,  1, 0),
+	DIV_DV(500000000,   2, 0x88),
+	DIV_DV(350000000,   3, 0x8C),
+	DIV_DV(250000000,   4, 0x90),
+	DIV_DV(200000000,   8, 0xA0),
+	DIV_DV(100000000,  10, 0xA8),
+	DIV_TABLE_END
+};
+
+static const struct freq_table scpu_tbl[] = {
+	FREQ_NF(1000000000, 34,   75),
+	FREQ_NF(1100000000, 37, 1517),
+	FREQ_NF(1200000000, 41,  910),
+	FREQ_NF(1300000000, 45,  303),
+	FREQ_NF(1400000000, 48, 1745),
+	FREQ_NF(1500000000, 52, 1137),
+	FREQ_NF(1600000000, 56,  530),
+	FREQ_NF(1700000000, 59, 1972),
+	FREQ_NF(1800000000, 63, 1365),
+	FREQ_NF(1900000000, 67,  758),
+	FREQ_NF(2000000000, 71,  151),
+	/* init-value mapping */
+	FREQ_NF(1000000000, 35,    0),
+	FREQ_NF(1200000000, 41,    0),
+	FREQ_NF(1800000000, 65,    0),
+	FREQ_NF(1800000000, 64,    0),
+	FREQ_TABLE_END
+};
+
+static struct clk_pll_div pll_scpu = {
+	.div_ofs    = 0x030,
+	.div_shift  = 6,
+	.div_width  = 8,
+	.div_tbl    = scpu_div_tbl,
+	.clkp       = {
+		.ssc_ofs   = 0x500,
+		.pll_ofs   = CLK_OFS_INVALID,
+		.freq_loc  = CLK_PLL_CONF_FREQ_LOC_SSC1,
+		.freq_tbl  = scpu_tbl,
+		.freq_mask = FREQ_NF_MASK,
+		.clkr.hw.init = &(struct clk_init_data) {
+			.name         = "pll_scpu",
+			.ops          = &clk_pll_div_ops,
+			.parent_names = default_parent,
+			.num_parents  = 1,
+			.flags        = CLK_IGNORE_UNUSED |
+					CLK_GET_RATE_NOCACHE,
+		},
+	},
+};
+
+static const struct div_table bus_div_tbl[] = {
+	DIV_DV(257000000, 1, 0),
+	DIV_DV(129000000, 2, 2),
+	DIV_DV(65000000,  4, 3),
+	DIV_TABLE_END
+};
+
+static const struct freq_table bus_tbl[] = {
+	FREQ_NF(513000000, 35,    0),
+	FREQ_NF(400000000, 26, 1289),
+	FREQ_TABLE_END
+};
+
+static struct clk_pll_div pll_bus = {
+	.div_ofs    = 0x030,
+	.div_shift  = 0,
+	.div_width  = 2,
+	.div_tbl    = bus_div_tbl,
+	.clkp       = {
+		.ssc_ofs   = 0x520,
+		.pll_ofs   = CLK_OFS_INVALID,
+		.freq_loc  = CLK_PLL_CONF_FREQ_LOC_SSC1,
+		.freq_tbl  = bus_tbl,
+		.freq_mask = FREQ_NF_MASK,
+		.clkr.hw.init = &(struct clk_init_data) {
+			.name         = "pll_bus",
+			.ops          = &clk_pll_div_ops,
+			.parent_names = default_parent,
+			.num_parents  = 1,
+			.flags        = CLK_IGNORE_UNUSED |
+					CLK_GET_RATE_NOCACHE,
+		},
+	},
+};
+
+static struct clk_fixed_factor clk_sys = {
+	.div     = 1,
+	.mult    = 1,
+	.hw.init = &(struct clk_init_data) {
+		.name         = "clk_sys",
+		.ops          = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "pll_bus" },
+		.num_parents  = 1,
+		.flags        = CLK_SET_RATE_PARENT,
+	},
+};
+
+static const struct div_table dcsb_div_tbl[] = {
+	DIV_DV(550000000, 1, 0),
+	DIV_DV(275000000, 2, 2),
+	DIV_DV(1,         4, 3),
+	DIV_TABLE_END
+};
+
+static const struct freq_table dcsb_tbl[] = {
+	FREQ_NF(550000000, 38, 0),
+	FREQ_NF(550000000, 37, 1517),
+	FREQ_TABLE_END
+};
+
+static struct clk_pll_div pll_dcsb = {
+	.div_ofs    = 0x030,
+	.div_shift  = 2,
+	.div_width  = 2,
+	.div_tbl    = dcsb_div_tbl,
+	.clkp       = {
+		.ssc_ofs   = 0x540,
+		.pll_ofs   = CLK_OFS_INVALID,
+		.freq_loc  = CLK_PLL_CONF_FREQ_LOC_SSC1,
+		.freq_tbl  = dcsb_tbl,
+		.freq_mask = FREQ_NF_MASK,
+		.clkr.hw.init = &(struct clk_init_data) {
+			.name         = "pll_dcsb",
+			.ops          = &clk_pll_div_ops,
+			.parent_names = default_parent,
+			.num_parents  = 1,
+			.flags        = CLK_IGNORE_UNUSED |
+					CLK_GET_RATE_NOCACHE,
+		},
+	},
+};
+
+static struct clk_fixed_factor clk_sysh = {
+	.div     = 1,
+	.mult    = 1,
+	.hw.init = &(struct clk_init_data) {
+		.name         = "clk_sysh",
+		.ops          = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "pll_dcsb" },
+		.num_parents  = 1,
+		.flags        = CLK_SET_RATE_PARENT,
+	},
+};
+
+static const struct freq_table ddsx_tbl[] = {
+	FREQ_NF(432000000, 13, 0),
+	FREQ_TABLE_END
+};
+
+static struct clk_pll pll_ddsa = {
+	.ssc_ofs   = 0x560,
+	.pll_ofs   = 0x120,
+	.pow_loc   = CLK_PLL_CONF_POW_LOC_CTL3,
+	.freq_loc  = CLK_PLL_CONF_FREQ_LOC_SSC1,
+	.freq_tbl  = ddsx_tbl,
+	.freq_mask = FREQ_NF_MASK,
+	.clkr.hw.init = &(struct clk_init_data) {
+		.name         = "pll_ddsa",
+		.ops          = &clk_pll_ops,
+		.parent_names = default_parent,
+		.num_parents  = 1,
+		.flags        = CLK_IGNORE_UNUSED | CLK_GET_RATE_NOCACHE,
+	},
+};
+
+static const struct freq_table gpu_tbl[] = {
+	FREQ_NF(300000000, 19,  455),
+	FREQ_NF(400000000, 26, 1289),
+	FREQ_NF(500000000, 34,   75),
+	FREQ_NF(600000000, 41,  910),
+	FREQ_NF(650000000, 45,  303),
+	FREQ_NF(700000000, 48, 1745),
+	FREQ_NF(750000000, 52, 1137),
+	FREQ_NF(800000000, 56,  530),
+	FREQ_NF(850000000, 59, 1971),
+	FREQ_TABLE_END
+};
+
+static struct clk_pll pll_gpu = {
+	.ssc_ofs   = 0x5A0,
+	.pll_ofs   = 0x1C0,
+	.pow_loc   = CLK_PLL_CONF_POW_LOC_CTL2,
+	.freq_loc  = CLK_PLL_CONF_FREQ_LOC_SSC1,
+	.freq_tbl  = gpu_tbl,
+	.freq_mask = FREQ_NF_MASK,
+	.clkr.hw.init = &(struct clk_init_data) {
+		.name         = "pll_gpu",
+		.ops          = &clk_pll_ops,
+		.parent_names = default_parent,
+		.num_parents  = 1,
+		.flags        = CLK_GET_RATE_NOCACHE,
+	},
+};
+
+static const struct freq_table ve_tbl[] = {
+	FREQ_MNO(189000000, 12, 0, 1),
+	FREQ_MNO(270000000, 18, 0, 1),
+	FREQ_MNO(405000000, 13, 0, 0),
+	FREQ_MNO(432000000, 14, 0, 0),
+	FREQ_MNO(459000000, 15, 0, 0),
+	FREQ_MNO(486000000, 16, 0, 0),
+	FREQ_MNO(513000000, 17, 0, 0),
+	FREQ_MNO(540000000, 18, 0, 0),
+	FREQ_MNO(550000000, 59, 2, 0),
+	FREQ_MNO(567000000, 19, 0, 0),
+	FREQ_MNO(594000000, 20, 0, 0),
+	FREQ_MNO(648000000, 22, 0, 0),
+	FREQ_MNO(675000000, 23, 0, 0),
+	FREQ_MNO(702000000, 24, 0, 0),
+	FREQ_MNO(715000000, 51, 1, 0),
+	FREQ_TABLE_END
+};
+
+static struct clk_pll pll_ve1 = {
+	.ssc_ofs   = CLK_OFS_INVALID,
+	.pll_ofs   = 0x114,
+	.pow_loc   = CLK_PLL_CONF_POW_LOC_CTL2,
+	.freq_loc  = CLK_PLL_CONF_FREQ_LOC_CTL1,
+	.freq_tbl  = ve_tbl,
+	.freq_mask = FREQ_MNO_MASK,
+	.clkr.hw.init = &(struct clk_init_data) {
+		.name         = "pll_ve1",
+		.ops          = &clk_pll_ops,
+		.parent_names = default_parent,
+		.num_parents  = 1,
+		.flags        = CLK_GET_RATE_NOCACHE,
+	},
+};
+
+static struct clk_pll pll_ve2 = {
+	.ssc_ofs   = CLK_OFS_INVALID,
+	.pll_ofs   = 0x1D0,
+	.pow_loc   = CLK_PLL_CONF_POW_LOC_CTL2,
+	.freq_loc  = CLK_PLL_CONF_FREQ_LOC_CTL1,
+	.freq_tbl  = ve_tbl,
+	.freq_mask = FREQ_MNO_MASK,
+	.clkr.hw.init = &(struct clk_init_data) {
+		.name         = "pll_ve2",
+		.ops          = &clk_pll_ops,
+		.parent_names = default_parent,
+		.num_parents  = 1,
+		.flags        = CLK_GET_RATE_NOCACHE,
+	},
+};
+
+static struct clk_pll_dif pll_dif = {
+	.ssc_ofs   = 0x634,
+	.pll_ofs   = 0x624,
+	.clkr.hw.init = &(struct clk_init_data) {
+		.name         = "pll_dif",
+		.ops          = &clk_pll_dif_ops,
+		.parent_names = default_parent,
+		.num_parents  = 1,
+		.flags        = CLK_GET_RATE_NOCACHE,
+	},
+};
+
+static struct clk_pll_psaud pll_psaud1a = {
+	.reg = 0x130,
+	.id  = CLK_PLL_PSAUD1A,
+	.clkr.hw.init = &(struct clk_init_data) {
+		.name         = "pll_psaud1a",
+		.ops          = &clk_pll_psaud_ops,
+		.parent_names = default_parent,
+		.num_parents  = 1,
+		.flags        = CLK_IGNORE_UNUSED | CLK_SET_RATE_UNGATE,
+	},
+};
+
+static struct clk_pll_psaud pll_psaud2a = {
+	.reg = 0x130,
+	.id  = CLK_PLL_PSAUD2A,
+	.clkr.hw.init = &(struct clk_init_data) {
+		.name         = "pll_psaud2a",
+		.ops          = &clk_pll_psaud_ops,
+		.parent_names = default_parent,
+		.num_parents  = 1,
+		.flags        = CLK_IGNORE_UNUSED | CLK_SET_RATE_UNGATE,
+	},
+};
+
+static struct clk_hw *cc_hws[] = {
+	[CC_PLL_SCPU]    = &__clk_pll_div_hw(&pll_scpu),
+	[CC_PLL_BUS]     = &__clk_pll_div_hw(&pll_bus),
+	[CC_PLL_DCSB]    = &__clk_pll_div_hw(&pll_dcsb),
+	[CC_PLL_DDSA]    = &__clk_pll_hw(&pll_ddsa),
+	[CC_PLL_GPU]     = &__clk_pll_hw(&pll_gpu),
+	[CC_PLL_VE1]     = &__clk_pll_hw(&pll_ve1),
+	[CC_PLL_VE2]     = &__clk_pll_hw(&pll_ve2),
+	[CC_PLL_DIF]     = &__clk_pll_dif_hw(&pll_dif),
+	[CC_CLK_SYS]     = &clk_sys.hw,
+	[CC_CLK_SYSH]    = &clk_sysh.hw,
+	[CC_PLL_PSAUD1A] = &__clk_pll_psaud_hw(&pll_psaud1a),
+	[CC_PLL_PSAUD2A] = &__clk_pll_psaud_hw(&pll_psaud2a),
+};
+
+static const char * const ve_parents[] = {
+	"clk_sys",
+	"clk_sysh",
+	"pll_ve1",
+	"pll_ve2",
+};
+
+static struct clk_composite_data cc_composites[] = {
+	{
+		.id              = CC_CLK_GPU,
+		.mux_ofs         = CLK_OFS_INVALID,
+		.gate_ofs        = 0x050,
+		.gate_shift      = 18,
+		.gate_write_en   = 1,
+		.parent_names    = (const char *[]){ "pll_gpu" },
+		.num_parents     = 1,
+		.name            = "clk_gpu",
+		.flags           = CLK_SET_RATE_PARENT,
+	},
+	{
+		.id              = CC_CLK_VE1,
+		.gate_ofs        = 0x050,
+		.gate_shift      = 20,
+		.gate_write_en   = 1,
+		.mux_ofs         = 0x04C,
+		.mux_width       = 3,
+		.mux_shift       = 0,
+		.parent_names    = ve_parents,
+		.num_parents     = ARRAY_SIZE(ve_parents),
+		.name            = "clk_ve1",
+		.flags           = CLK_SET_RATE_PARENT |
+				   CLK_SET_RATE_NO_REPARENT,
+	},
+	{
+		.id              = CC_CLK_VE2,
+		.gate_ofs        = 0x050,
+		.gate_shift      = 22,
+		.gate_write_en   = 1,
+		.mux_ofs         = 0x04C,
+		.mux_width       = 3,
+		.mux_shift       = 3,
+		.parent_names    = ve_parents,
+		.num_parents     = ARRAY_SIZE(ve_parents),
+		.name            = "clk_ve2",
+		.flags           = CLK_SET_RATE_PARENT |
+				   CLK_SET_RATE_NO_REPARENT,
+	},
+	{
+		.id              = CC_CLK_VE3,
+		.gate_ofs        = 0x05C,
+		.gate_shift      = 26,
+		.gate_write_en   = 1,
+		.mux_ofs         = 0x04C,
+		.mux_width       = 3,
+		.mux_shift       = 6,
+		.parent_names    = ve_parents,
+		.num_parents     = ARRAY_SIZE(ve_parents),
+		.name            = "clk_ve3",
+		.flags           = CLK_SET_RATE_PARENT |
+				   CLK_SET_RATE_NO_REPARENT,
+	},
+	{
+		.id              = CC_CLK_VE2_BPU,
+		.gate_ofs        = CLK_OFS_INVALID,
+		.mux_ofs         = 0x04C,
+		.mux_width       = 3,
+		.mux_shift       = 9,
+		.parent_names    = ve_parents,
+		.num_parents     = ARRAY_SIZE(ve_parents),
+		.name            = "clk_ve2_bpu",
+		.flags           = CLK_SET_RATE_PARENT |
+				   CLK_SET_RATE_NO_REPARENT,
+	},
+};
+
+#define GATE(_id, _name, _parent, _ofs, _shift) \
+	CLK_GATE_DATA(_id, _name, _parent, 0, _ofs, _shift, 1)
+#define GATE_IGNORE(_id, _name, _parent, _ofs, _shift) \
+	CLK_GATE_DATA(_id, _name, _parent, CLK_IGNORE_UNUSED, _ofs, _shift, 1)
+
+static struct clk_gate_data cc_gates[] = {
+	GATE_IGNORE(CC_CKE_MISC, "misc", NULL, 0x50, 0),
+	GATE(CC_CKE_PCIE0, "pcie0", NULL, 0x50,  2),
+	GATE(CC_CKE_GSPI, "gspi", "misc", 0x50,  6),
+	GATE(CC_CKE_SDS, "sds", NULL, 0x50, 12),
+	GATE_IGNORE(CC_CKE_HDMI, "hdmi", NULL, 0x50, 14),
+	GATE_IGNORE(CC_CKE_TVE, "tve", NULL, 0x50, 24),
+	GATE_IGNORE(CC_CKE_VO, "vo", NULL, 0x50, 26),
+	GATE_IGNORE(CC_CKE_LSADC, "lsadc", NULL, 0x50, 28),
+	GATE(CC_CKE_SE, "se", NULL, 0x50, 30),
+	GATE_IGNORE(CC_CKE_CP, "cp", NULL, 0x54,  2),
+	GATE_IGNORE(CC_CKE_MD, "md", NULL, 0x54, 4),
+	GATE_IGNORE(CC_CKE_TP, "tp", NULL, 0x54, 6),
+	GATE(CC_CKE_RSA, "rsa", NULL, 0x54, 8),
+	GATE(CC_CKE_NF, "nf", NULL, 0x54, 10),
+	GATE(CC_CKE_EMMC, "emmc", NULL, 0x54, 12),
+	GATE(CC_CKE_SD, "sd", NULL, 0x54, 14),
+	GATE(CC_CKE_SDIO_IP, "sdio_ip", NULL, 0x54, 16),
+	GATE(CC_CKE_MIPI, "mipi", NULL, 0x54, 18),
+	GATE(CC_CKE_EMMC_IP, "emmc_ip", NULL, 0x54, 20),
+	GATE(CC_CKE_SDIO, "sdio", NULL, 0x54, 22),
+	GATE(CC_CKE_SD_IP, "sd_ip", NULL, 0x54, 24),
+	GATE(CC_CKE_CABLERX, "cablerx", NULL, 0x54, 26),
+	GATE(CC_CKE_TPB, "tpb", NULL, 0x54, 28),
+	GATE(CC_CKE_SC1, "sc1", "misc", 0x54, 30),
+	GATE(CC_CKE_I2C3, "i2c3", "misc", 0x58, 0),
+	GATE(CC_CKE_JPEG, "jpeg", NULL, 0x58, 4),
+	GATE(CC_CKE_SC0, "sc0", "misc", 0x58, 10),
+	GATE(CC_CKE_HDMIRX, "hdmirx", NULL, 0x58, 26),
+	GATE(CC_CKE_HSE, "hse", NULL, 0x58, 28),
+	GATE(CC_CKE_UR2, "ur2", "misc", 0x58, 30),
+	GATE(CC_CKE_UR1, "ur1", "misc", 0x5C, 0),
+	GATE(CC_CKE_FAN, "fan", "misc", 0x5C, 2),
+	GATE(CC_CKE_SATA_WRAP_SYS, "sata_wrap_sys", NULL, 0x5C, 8),
+	GATE(CC_CKE_SATA_WRAP_SYSH, "sata_wrap_sysh", NULL, 0x5C, 10),
+	GATE(CC_CKE_SATA_MAC_SYSH, "sata_mac_sysh", NULL, 0x5C, 12),
+	GATE(CC_CKE_R2RDSC, "r2rdsc", NULL, 0x5C, 14),
+	GATE(CC_CKE_PCIE1, "pcie1", NULL, 0x5C, 18),
+	GATE(CC_CKE_I2C4, "i2c4", "misc", 0x5C, 20),
+	GATE(CC_CKE_I2C5, "i2c5", "misc", 0x5C, 22),
+	GATE(CC_CKE_EDP, "edp", NULL, 0x5C, 28),
+	GATE_IGNORE(CC_CKE_TSIO_TRX, "tsio_trx", NULL, 0x5C, 30),
+};
+
+static struct rtk_reset_bank cc_reset_banks[] = {
+	{ .ofs = 0x00, .write_en = 1, },
+	{ .ofs = 0x04, .write_en = 1, },
+	{ .ofs = 0x08, .write_en = 1, },
+	{ .ofs = 0x0c, .write_en = 1, },
+	{ .ofs = 0x14, .write_en = 1, },
+	{ .ofs = 0x68, .write_en = 1, },
+};
+
+static struct rtk_reset_initdata cc_reset_initdata = {
+	.banks     = cc_reset_banks,
+	.num_banks = ARRAY_SIZE(cc_reset_banks),
+};
+
+static struct clk_pm_data cc_pm_data[] = {
+	/* SOFT_RESET */
+	{ .ofs = 0x00, .write_en_bits = 0xAAAAAAAA, },
+	{ .ofs = 0x04, .write_en_bits = 0xAAAAAAAA, },
+	{ .ofs = 0x08, .write_en_bits = 0x0A80AAAA, },
+	{ .ofs = 0x0C, .write_en_bits = 0x2AAAAAAA, },
+	{ .ofs = 0x14, .write_en_bits = 0xAA82AA82, },
+	{ .ofs = 0x68, .write_en_bits = 0xAAAAAAAA, },
+	/* CLK_EN */
+	{ .ofs = 0x50, .write_en_bits = 0xA0A8288A, },
+	{ .ofs = 0x54, .write_en_bits = 0xAAAAAAA8, },
+	{ .ofs = 0x58, .write_en_bits = 0xA800082A, },
+	{ .ofs = 0x5C, .write_en_bits = 0xAAAAAA0A, },
+	/* PLL_GPU */
+	{ .ofs = 0x1C4, },
+	{ .ofs = 0x5A4, .ignore_bits = ~(0x7FFFF), },
+	/* PLL_VE1 */
+	{ .ofs = 0x118, },
+	{ .ofs = 0x114, .ignore_bits = ~(0x63FF0), },
+	/* PLL_VE2 */
+	{ .ofs = 0x1D4, },
+	{ .ofs = 0x1D0, .ignore_bits = ~(0x63FF0), },
+};
+
+static int rtd1619_cc_probe(struct platform_device *pdev)
+{
+	struct device *parent;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct rtk_clk_data *data;
+	struct regmap *regmap;
+	int ret;
+
+	parent = dev->parent;
+	if (!parent) {
+		dev_err(dev, "no parent crt controller\n");
+		return -ENODEV;
+	}
+
+	regmap = syscon_node_to_regmap(parent->of_node);
+	if (IS_ERR(regmap)) {
+		ret = PTR_ERR(regmap);
+		dev_err(dev, "failed to get regmap form %s: %d\n", np->name,
+			ret);
+		return ret;
+	}
+
+	data = alloc_rtk_clk_data(CC_CLK_MAX);
+	if (!data)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, data);
+	data->regmap = regmap;
+	data->pm_data = cc_pm_data;
+	data->pm_data_num = ARRAY_SIZE(cc_pm_data);
+
+	rtk_clk_add_hws(dev, data, cc_hws, ARRAY_SIZE(cc_hws));
+	rtk_clk_add_composites(dev, data, cc_composites,
+					  ARRAY_SIZE(cc_composites));
+	rtk_clk_add_gates(dev, data, cc_gates, ARRAY_SIZE(cc_gates));
+
+	ret = of_clk_add_provider(np, of_clk_src_onecell_get, &data->clk_data);
+	if (ret)
+		dev_err(dev, "failed to add clk provider: %d\n", ret);
+
+	rtk_reset_controller_add(dev, regmap, &cc_reset_initdata);
+
+	return 0;
+}
+
+static const struct of_device_id rtd1619_cc_match[] = {
+	{ .compatible = "realtek,rtd1619-cc", },
+	{ /* sentinel */ }
+};
+
+static struct platform_driver rtd1619_cc_driver = {
+	.probe = rtd1619_cc_probe,
+	.driver = {
+		.name = "rtk-rtd1619-cc",
+		.of_match_table = rtd1619_cc_match,
+		.pm = &rtk_clk_pm_ops,
+	},
+};
+
+static int __init rtd1619_cc_init(void)
+{
+	return platform_driver_register(&rtd1619_cc_driver);
+}
+core_initcall(rtd1619_cc_init);
diff --git a/drivers/clk/realtek/clk-rtd1619-ic.c b/drivers/clk/realtek/clk-rtd1619-ic.c
new file mode 100644
index 000000000000..9651c9aca26d
--- /dev/null
+++ b/drivers/clk/realtek/clk-rtd1619-ic.c
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/bitops.h>
+#include <linux/platform_device.h>
+#include <linux/mfd/syscon.h>
+#include "common.h"
+#include "reset.h"
+#include <dt-bindings/clock/rtk,clock-rtd1619.h>
+
+#define GATE(_id, _name, _parent, _ofs, _shift) \
+	CLK_GATE_DATA(_id, _name, _parent, 0, _ofs, _shift, 0)
+
+static struct clk_gate_data ic_gates[] = {
+	GATE(IC_CKE_CEC0, "cec0", NULL, 0x8c, 2),
+	GATE(IC_CKE_CBUSRX_SYS, "cbusrx_sys", NULL, 0x8c, 3),
+	GATE(IC_CKE_CBUSTX_SYS, "cbustx_sys", NULL, 0x8c, 4),
+	GATE(IC_CKE_CBUS_SYS, "cbus_sys", NULL, 0x8c, 5),
+	GATE(IC_CKE_CBUS_OSC, "cbus_osc", NULL, 0x8c, 6),
+	GATE(IC_CKE_IR, "ir", NULL, 0x8c, 7),
+	GATE(IC_CKE_UR0, "ur0", NULL, 0x8c, 8),
+	GATE(IC_CKE_I2C0, "i2c0", NULL, 0x8c, 9),
+	GATE(IC_CKE_I2C1, "i2c1", NULL, 0x8c, 10),
+	GATE(IC_CKE_ETN_250M, "etn_250m", NULL, 0x8c, 11),
+	GATE(IC_CKE_ETN_SYS, "etn_sys", NULL, 0x8c, 12),
+	GATE(IC_CKE_USB_DRD, "usb_drd", NULL, 0x8c, 13),
+	GATE(IC_CKE_USB_HOST, "usb_host", NULL, 0x8c, 14),
+	GATE(IC_CKE_USB_U3_HOST, "usb_u3_host", NULL, 0x8c, 15),
+	GATE(IC_CKE_USB, "usb", NULL, 0x8c, 16),
+};
+
+static struct rtk_reset_bank ic_reset_banks[] = {
+	{ .ofs = 0x88, },
+};
+
+static struct rtk_reset_initdata ic_reset_initdata = {
+	.banks     = ic_reset_banks,
+	.num_banks = ARRAY_SIZE(ic_reset_banks),
+};
+
+static struct clk_pm_data ic_pm_data[] = {
+	{ .ofs = 0x88, },
+	{ .ofs = 0x8C, },
+};
+
+static int rtd1619_ic_probe(struct platform_device *pdev)
+{
+	struct device *parent;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct rtk_clk_data *data;
+	struct regmap *regmap;
+	int ret;
+
+	parent = dev->parent;
+	if (!parent) {
+		dev_err(dev, "no parent crt controller\n");
+		return -ENODEV;
+	}
+
+	regmap = syscon_node_to_regmap(parent->of_node);
+	if (IS_ERR(regmap)) {
+		ret = PTR_ERR(regmap);
+		dev_err(dev, "failed to get regmap form %s: %d\n", np->name,
+			ret);
+		return ret;
+	}
+
+	data = alloc_rtk_clk_data(IC_CLK_MAX);
+	if (!data)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, data);
+	data->regmap = regmap;
+	data->pm_data = ic_pm_data;
+	data->pm_data_num = ARRAY_SIZE(ic_pm_data);
+
+	rtk_clk_add_gates(dev, data, ic_gates, ARRAY_SIZE(ic_gates));
+
+	ret = of_clk_add_provider(np, of_clk_src_onecell_get, &data->clk_data);
+	if (ret)
+		dev_err(dev, "failed to add clk provider: %d\n", ret);
+
+	rtk_reset_controller_add(dev, regmap, &ic_reset_initdata);
+
+	return 0;
+}
+
+static const struct of_device_id rtd1619_ic_match[] = {
+	{ .compatible = "realtek,rtd1619-ic", },
+	{ /* sentinel */ }
+};
+
+static struct platform_driver rtd1619_ic_driver = {
+	.probe = rtd1619_ic_probe,
+	.driver = {
+		.name = "rtk-rtd1619-ic",
+		.of_match_table = rtd1619_ic_match,
+		.pm = &rtk_clk_pm_ops,
+	},
+};
+
+static int __init rtd1619_ic_init(void)
+{
+	return platform_driver_register(&rtd1619_ic_driver);
+}
+core_initcall(rtd1619_ic_init);
-- 
2.24.0


