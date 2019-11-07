Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D951F2A72
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 10:21:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F7FOIjKunU0IRn185NjTxqsMckAQgN9p3vv9wRuwVAo=; b=TLvoHfpk+hlI0z
	k4PBVFi5kIhHYj3QyhT5mzelPjd7l3/6RyHnCqBnrg0m5Zv4VJi0ybdAIFrrOPwDXLyzTEewtphaD
	SUHJchmeevHtVA/3eTTNPD/ekIuMDWZr3+vOLN2uPiCviHWwYLnM+CXwMuQm3GWvoOLNztTqRUkAh
	971ISAxw6+fY/ZFcYQtWHJAHggOvpIYt5GPVcyo9S4AuPz+3h0HM15BStehxJpo4hx9qU8iulu+1B
	Aa23MllcTDpLWwEpTJGTkkQzs8jaGUy7n4RXOBQLa86qFh45YbpcJNvJV1IowZzUCh6vnhvuRgTgo
	O//a+A8AHb2qRgPoNc+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdyK-0003qZ-Ls; Thu, 07 Nov 2019 09:20:56 +0000
Received: from [2001:4bb8:184:e48:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdyH-0003qI-Qk; Thu, 07 Nov 2019 09:20:54 +0000
From: Christoph Hellwig <hch@lst.de>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, bp@alien8.de,
 mchehab@kernel.org, tony.luck@intel.com, james.morse@arm.com,
 rrichter@marvell.com, yash.shah@sifive.com,
 linux-riscv@lists.infradead.org, linux-edac@vger.kernel.org
Subject: [PATCH v2] riscv: move sifive_l2_cache.c to drivers/soc
Date: Thu,  7 Nov 2019 10:20:39 +0100
Message-Id: <20191107092039.32240-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The sifive_l2_cache.c is in no way related to RISC-V architecture
memory management.  It is a little stub driver working around the fact
that the EDAC maintainers prefer their drivers to be structured in a
certain way that doesn't fit the SiFive SOCs.

Move the file to drivers/soc and add a Kconfig option for it, as well
as the whole drivers/soc boilerplate for CONFIG_SOC_SIFIVE.

Fixes: a967a289f169 ("RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---

Changes since v2:
 - don't allow modular builds
 - remove the empty last line in the new Makefile

 MAINTAINERS                                            |  1 +
 arch/riscv/mm/Makefile                                 |  1 -
 drivers/edac/Kconfig                                   |  2 +-
 drivers/soc/Kconfig                                    |  1 +
 drivers/soc/Makefile                                   |  1 +
 drivers/soc/sifive/Kconfig                             | 10 ++++++++++
 drivers/soc/sifive/Makefile                            |  3 +++
 .../riscv/mm => drivers/soc/sifive}/sifive_l2_cache.c  |  0
 8 files changed, 17 insertions(+), 2 deletions(-)
 create mode 100644 drivers/soc/sifive/Kconfig
 create mode 100644 drivers/soc/sifive/Makefile
 rename {arch/riscv/mm => drivers/soc/sifive}/sifive_l2_cache.c (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index cba1095547fd..f5a8accb0df3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5972,6 +5972,7 @@ M:	Yash Shah <yash.shah@sifive.com>
 L:	linux-edac@vger.kernel.org
 S:	Supported
 F:	drivers/edac/sifive_edac.c
+F:	drivers/soc/sifive/
 
 EDAC-SKYLAKE
 M:	Tony Luck <tony.luck@intel.com>
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 9d9a17335686..b225134c29e0 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -11,7 +11,6 @@ obj-y += extable.o
 obj-y += ioremap.o
 obj-y += cacheflush.o
 obj-y += context.o
-obj-y += sifive_l2_cache.o
 
 ifeq ($(CONFIG_MMU),y)
 obj-$(CONFIG_SMP) += tlbflush.o
diff --git a/drivers/edac/Kconfig b/drivers/edac/Kconfig
index 417dad635526..5c8272329a65 100644
--- a/drivers/edac/Kconfig
+++ b/drivers/edac/Kconfig
@@ -462,7 +462,7 @@ config EDAC_ALTERA_SDMMC
 
 config EDAC_SIFIVE
 	bool "Sifive platform EDAC driver"
-	depends on EDAC=y && RISCV
+	depends on EDAC=y && SIFIVE_L2
 	help
 	  Support for error detection and correction on the SiFive SoCs.
 
diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index 833e04a7835c..1778f8c62861 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -14,6 +14,7 @@ source "drivers/soc/qcom/Kconfig"
 source "drivers/soc/renesas/Kconfig"
 source "drivers/soc/rockchip/Kconfig"
 source "drivers/soc/samsung/Kconfig"
+source "drivers/soc/sifive/Kconfig"
 source "drivers/soc/sunxi/Kconfig"
 source "drivers/soc/tegra/Kconfig"
 source "drivers/soc/ti/Kconfig"
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 2ec355003524..8b49d782a1ab 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -20,6 +20,7 @@ obj-y				+= qcom/
 obj-y				+= renesas/
 obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_SOC_SAMSUNG)	+= samsung/
+obj-$(CONFIG_SOC_SIFIVE)	+= sifive/
 obj-y				+= sunxi/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
 obj-y				+= ti/
diff --git a/drivers/soc/sifive/Kconfig b/drivers/soc/sifive/Kconfig
new file mode 100644
index 000000000000..58cf8c40d08d
--- /dev/null
+++ b/drivers/soc/sifive/Kconfig
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0
+
+if SOC_SIFIVE
+
+config SIFIVE_L2
+	bool "Sifive L2 Cache controller"
+	help
+	  Support for the L2 cache controller on SiFive platforms.
+
+endif
diff --git a/drivers/soc/sifive/Makefile b/drivers/soc/sifive/Makefile
new file mode 100644
index 000000000000..b5caff77938f
--- /dev/null
+++ b/drivers/soc/sifive/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_SIFIVE_L2)	+= sifive_l2_cache.o
diff --git a/arch/riscv/mm/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
similarity index 100%
rename from arch/riscv/mm/sifive_l2_cache.c
rename to drivers/soc/sifive/sifive_l2_cache.c
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
