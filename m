Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954C1DB370
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgzdNEX7+yCd/m2VHOdf/8h/ne39Jhjl9bworZ/ospM=; b=CGmyz0Tlek2oX7
	089hAr/w1jQB17lH6/C7LAGxWyC6cejznlGubDAtglTPWACzjQ1igtQu/mBxZDCbbASC7cuapRh6U
	oWpNMAQzgJYRMtjMDbrr0GbI/rt6cQf3us3BRD5mTIUDaVUAOP1eBhHokjoocWVqmliHIbYXcdixa
	RuogM/ScadFGdAN6nYVOgfLuXJNNZwbMKyFyNI3dlsIfVb0BlNi8lzpZYbOmlCAQGirdLgjGucQkY
	P1HGp09Ocrda3GndKhiAZ4TcL7uLqgp2U722dYKDhJatoGiI3jViAE/jEuNvSWaegfv0wsk1/4aA+
	nY4+z12zZROzn1bfKFlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9iv-0007mh-Ps; Thu, 17 Oct 2019 17:38:05 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9iq-0007eW-RX; Thu, 17 Oct 2019 17:38:01 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 06/15] riscv: cleanup the default power off implementation
Date: Thu, 17 Oct 2019 19:37:34 +0200
Message-Id: <20191017173743.5430-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017173743.5430-1-hch@lst.de>
References: <20191017173743.5430-1-hch@lst.de>
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
Cc: Atish Patra <atish.patra@wdc.com>, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Move the sbi poweroff to a separate function and file that is only
compiled if CONFIG_SBI is set.  Provide a new default fallback
power off that just sits in a wfi loop to save some power.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/Makefile |  1 +
 arch/riscv/kernel/reset.c  |  5 ++---
 arch/riscv/kernel/sbi.c    | 17 +++++++++++++++++
 3 files changed, 20 insertions(+), 3 deletions(-)
 create mode 100644 arch/riscv/kernel/sbi.c

diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 696020ff72db..d8c35fa93cc6 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -41,5 +41,6 @@ obj-$(CONFIG_DYNAMIC_FTRACE)	+= mcount-dyn.o
 obj-$(CONFIG_PERF_EVENTS)	+= perf_event.o
 obj-$(CONFIG_PERF_EVENTS)	+= perf_callchain.o
 obj-$(CONFIG_HAVE_PERF_REGS)	+= perf_regs.o
+obj-$(CONFIG_RISCV_SBI)		+= sbi.o
 
 clean:
diff --git a/arch/riscv/kernel/reset.c b/arch/riscv/kernel/reset.c
index d0fe623bfb8f..5e4e69859af1 100644
--- a/arch/riscv/kernel/reset.c
+++ b/arch/riscv/kernel/reset.c
@@ -4,12 +4,11 @@
  */
 
 #include <linux/reboot.h>
-#include <asm/sbi.h>
 
 static void default_power_off(void)
 {
-	sbi_shutdown();
-	while (1);
+	while (1)
+		wait_for_interrupt();
 }
 
 void (*pm_power_off)(void) = default_power_off;
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
new file mode 100644
index 000000000000..f6c7c3e82d28
--- /dev/null
+++ b/arch/riscv/kernel/sbi.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/init.h>
+#include <linux/pm.h>
+#include <asm/sbi.h>
+
+static void sbi_power_off(void)
+{
+	sbi_shutdown();
+}
+
+static int __init sbi_init(void)
+{
+	pm_power_off = sbi_power_off;
+	return 0;
+}
+early_initcall(sbi_init);
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
