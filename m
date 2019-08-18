Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BDB9158E
	for <lists+linux-riscv@lfdr.de>; Sun, 18 Aug 2019 10:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xjxczBzBI/r7rRrSwdn8R1HU7fXhPBGuidg+cLPEEM0=; b=PfbPABaC5bdfSh
	2NhZx056zjhaI6OlQzieHjBq8Os6QLnBzObdEmOSbg4d85DUW7SREQeqvvu2729CymKFyuhENT0Cc
	FfgivmwyxDrLW+M6oZbWxlfsLUZ2+1GhZmsvTIcfzOor4dIm3ZCF7uJA+bksWl87zKxm8nRkdbdO5
	jl/m5rJvkefz8OL1sqoMRSmUS/S31gQUDjiFbg/uve8n3JcCUiIvci/J3Kn+4cEdTJJ8erlTEAkLm
	6jfyE1gzOHnNa4SQKYJiV0LD3hZMlzdMkZt50hGvtKYCmZHuLS/xAy6erLqmPytDPczI8SJIXzy3Q
	/Re6gJW7pcgQwik6XRVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzGbS-0002Cj-Kj; Sun, 18 Aug 2019 08:31:54 +0000
Received: from 213-225-6-198.nat.highway.a1.net ([213.225.6.198]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hzGbO-0002CY-Nn; Sun, 18 Aug 2019 08:31:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: paul.walmsley@sifive.com,
	palmer@sifive.com
Subject: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
Date: Sun, 18 Aug 2019 10:29:35 +0200
Message-Id: <20190818082935.14869-1-hch@lst.de>
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-edac@vger.kernel.org
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
 arch/riscv/mm/Makefile                                 |  1 -
 drivers/edac/Kconfig                                   |  2 +-
 drivers/soc/Kconfig                                    |  1 +
 drivers/soc/Makefile                                   |  1 +
 drivers/soc/sifive/Kconfig                             | 10 ++++++++++
 drivers/soc/sifive/Makefile                            |  4 ++++
 .../riscv/mm => drivers/soc/sifive}/sifive_l2_cache.c  |  0
 7 files changed, 17 insertions(+), 2 deletions(-)
 create mode 100644 drivers/soc/sifive/Kconfig
 create mode 100644 drivers/soc/sifive/Makefile
 rename {arch/riscv/mm => drivers/soc/sifive}/sifive_l2_cache.c (100%)

diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 74055e1d6f21..d2101d0741d4 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -11,6 +11,5 @@ obj-y += extable.o
 obj-y += ioremap.o
 obj-y += cacheflush.o
 obj-y += context.o
-obj-y += sifive_l2_cache.o
 
 obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
diff --git a/drivers/edac/Kconfig b/drivers/edac/Kconfig
index 200c04ce5b0e..9241b3e7a050 100644
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
index 000000000000..9ffb2e8a48cd
--- /dev/null
+++ b/drivers/soc/sifive/Kconfig
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0
+
+if SOC_SIFIVE
+
+config SIFIVE_L2
+	tristate "Sifive L2 Cache controller"
+	help
+	  Support for the L2 cache controller on SiFive platforms.
+
+endif
diff --git a/drivers/soc/sifive/Makefile b/drivers/soc/sifive/Makefile
new file mode 100644
index 000000000000..9b4a85558347
--- /dev/null
+++ b/drivers/soc/sifive/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_SIFIVE_L2)	+= sifive_l2_cache.o
+
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
