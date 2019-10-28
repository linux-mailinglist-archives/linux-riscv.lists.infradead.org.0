Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC32E70FB
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 13:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCcCgjCI0hs5ffJEFkO7i+XKm+FY+CvS4DjFlkeC7bE=; b=TxkgvmHQwIyoBf
	okkl2nx5SPWbXb0h6YX4Sao5BIfbf9L0zfFHC7PEsZ6KXn1F6vsmeMN9ZieLo164XRtvPkZslgWLw
	pb65NaqCyD9Yn4T9fg6Bi4cjO1w1oee/e3z2xXQPrSLtmBs2gzgdB2Z2+LxXOVVDq1c6EuWNd3vvD
	x6CyHE4Izpzhb36L8Q7ImyZEwaRepewZBycEKv82CVWG5x/rXZXVwGXnLUZ1AoghfiETE4h8CATsQ
	I+y4t0/DJik8HYmpuyP0NBTkBP75rXpy0JZLdtNNnvMeQ3JFdhFJySNNlCRvYf45Wuwmu70/2if1o
	2gmnwZee/cZA3IAv9mHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3rJ-0006ch-Qp; Mon, 28 Oct 2019 12:10:53 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3rG-0006ZB-T8; Mon, 28 Oct 2019 12:10:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 02/12] riscv: don't allow selecting SBI based drivers for
 M-mode
Date: Mon, 28 Oct 2019 13:10:33 +0100
Message-Id: <20191028121043.22934-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028121043.22934-1-hch@lst.de>
References: <20191028121043.22934-1-hch@lst.de>
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
Cc: Anup Patel <anup@brainfault.org>, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Damien Le Moal <damien.lemoal@wdc.com>

When running in M-mode we can't use SBI based drivers.  Add a new
CONFIG_RISCV_SBI that drivers that do SBI calls can depend on
instead.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/Kconfig         | 6 ++++++
 drivers/tty/hvc/Kconfig    | 2 +-
 drivers/tty/serial/Kconfig | 2 +-
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 86b7e8b0471c..b85492c42ccb 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -76,6 +76,12 @@ config ARCH_MMAP_RND_BITS_MAX
 config RISCV_M_MODE
 	bool
 
+# set if we are running in S-mode and can use SBI calls
+config RISCV_SBI
+	bool
+	depends on !RISCV_M_MODE
+	default y
+
 config MMU
 	def_bool y
 
diff --git a/drivers/tty/hvc/Kconfig b/drivers/tty/hvc/Kconfig
index 4d22b911111f..4487a6b9acc8 100644
--- a/drivers/tty/hvc/Kconfig
+++ b/drivers/tty/hvc/Kconfig
@@ -89,7 +89,7 @@ config HVC_DCC
 
 config HVC_RISCV_SBI
 	bool "RISC-V SBI console support"
-	depends on RISCV
+	depends on RISCV_SBI
 	select HVC_DRIVER
 	help
 	  This enables support for console output via RISC-V SBI calls, which
diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 67a9eb3f94ce..540142c5b7b3 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -88,7 +88,7 @@ config SERIAL_EARLYCON_ARM_SEMIHOST
 
 config SERIAL_EARLYCON_RISCV_SBI
 	bool "Early console using RISC-V SBI"
-	depends on RISCV
+	depends on RISCV_SBI
 	select SERIAL_CORE
 	select SERIAL_CORE_CONSOLE
 	select SERIAL_EARLYCON
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
