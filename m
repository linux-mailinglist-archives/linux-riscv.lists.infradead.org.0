Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CCADB375
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFgQSPmYx7ZDstLhBfJSpDDvjMx0XIJo7KGBWKa0L0A=; b=kiJxWaLzN0NDqC
	2p4D03wm+r+cuxQ8GWuHtJ2bmziAVZ1ZPqAk3FtkuUfQaEDvvtCV6AOQUX8uko8HYRvzLQOL9ZNY+
	63irOIxRQZYLkXCh0Ml0hfqHjnmRsfCzsBgscBuLw2hO9q+ijHS2qHPkN7ev4d6kUCY67vZGbtNNC
	YvRDpY8V5AyRHF/wHY9+lVuqhxi+iR4Jf8jmrCTO1mr6GhPsxY65ryQ/qz/TdX26Njmk4/DCpNjmm
	SvONngJd1F+HnYBq262a4L9LTNFrpSssmweLqLxQBqn946PvrphlkNQ7vY9MQ8SzBz7f9/Lf1lAdi
	T2EXvGa8iYppi8NfusWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9j0-0007rd-5I; Thu, 17 Oct 2019 17:38:10 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9iv-0007m2-Od; Thu, 17 Oct 2019 17:38:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 08/15] riscv: add support for MMIO access to the timer
 registers
Date: Thu, 17 Oct 2019 19:37:36 +0200
Message-Id: <20191017173743.5430-9-hch@lst.de>
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When running in M-mode we can't use the SBI to set the timer, and
don't have access to the time CSR as that usually is emulated by
M-mode.  Instead provide code that directly accesses the MMIO for
the timer.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/include/asm/sbi.h      |  3 ++-
 arch/riscv/include/asm/timex.h    | 19 +++++++++++++++++--
 drivers/clocksource/timer-riscv.c | 21 +++++++++++++++++----
 3 files changed, 36 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 0cb74eccc73f..a4774bafe033 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -95,7 +95,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
 }
 #else /* CONFIG_RISCV_SBI */
-/* stub to for code is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
+/* stubs to for code is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
+void sbi_set_timer(uint64_t stime_value);
 void sbi_remote_fence_i(const unsigned long *hart_mask);
 #endif /* CONFIG_RISCV_SBI */
 #endif /* _ASM_RISCV_SBI_H */
diff --git a/arch/riscv/include/asm/timex.h b/arch/riscv/include/asm/timex.h
index c7ef131b9e4c..e17837d61667 100644
--- a/arch/riscv/include/asm/timex.h
+++ b/arch/riscv/include/asm/timex.h
@@ -7,12 +7,25 @@
 #define _ASM_RISCV_TIMEX_H
 
 #include <asm/csr.h>
+#include <asm/io.h>
 
 typedef unsigned long cycles_t;
 
+extern u64 __iomem *riscv_time_val;
+extern u64 __iomem *riscv_time_cmp;
+
+#ifdef CONFIG_64BIT
+#define mmio_get_cycles()	readq_relaxed(riscv_time_val)
+#else
+#define mmio_get_cycles()	readl_relaxed(riscv_time_val)
+#define mmio_get_cycles_hi()	readl_relaxed(((u32 *)riscv_time_val) + 1)
+#endif
+
 static inline cycles_t get_cycles(void)
 {
-	return csr_read(CSR_TIME);
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		return csr_read(CSR_TIME);
+	return mmio_get_cycles();
 }
 #define get_cycles get_cycles
 
@@ -24,7 +37,9 @@ static inline u64 get_cycles64(void)
 #else /* CONFIG_64BIT */
 static inline u32 get_cycles_hi(void)
 {
-	return csr_read(CSR_TIMEH);
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		return csr_read(CSR_TIMEH);
+	return mmio_get_cycles_hi();
 }
 
 static inline u64 get_cycles64(void)
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 5d2fdc3e28a9..2b9fbc4ebe49 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -3,9 +3,9 @@
  * Copyright (C) 2012 Regents of the University of California
  * Copyright (C) 2017 SiFive
  *
- * All RISC-V systems have a timer attached to every hart.  These timers can be
- * read from the "time" and "timeh" CSRs, and can use the SBI to setup
- * events.
+ * All RISC-V systems have a timer attached to every hart.  These timers can
+ * either be read from the "time" and "timeh" CSRs, and can use the SBI to
+ * setup events, or directly accessed using MMIO registers.
  */
 #include <linux/clocksource.h>
 #include <linux/clockchips.h>
@@ -13,14 +13,27 @@
 #include <linux/delay.h>
 #include <linux/irq.h>
 #include <linux/sched_clock.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
 #include <asm/smp.h>
 #include <asm/sbi.h>
 
+u64 __iomem *riscv_time_cmp;
+u64 __iomem *riscv_time_val;
+
+static inline void mmio_set_timer(u64 val)
+{
+	writeq_relaxed(val,
+		riscv_time_cmp + cpuid_to_hartid_map(smp_processor_id()));
+}
+
 static int riscv_clock_next_event(unsigned long delta,
 		struct clock_event_device *ce)
 {
 	csr_set(CSR_XIE, XIE_XTIE);
-	sbi_set_timer(get_cycles64() + delta);
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		sbi_set_timer(get_cycles64() + delta);
+	else
+		mmio_set_timer(get_cycles64() + delta);
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
