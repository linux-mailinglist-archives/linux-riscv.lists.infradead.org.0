Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09DC97DCB
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 16:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+K+fEvVnTgTRpU3xnvsafZFmhzXxRBD/8ygfYmqeqjg=; b=HnZC5uJS38HAsz
	B6k6xTijCTOzJTo6BHTeAHl1w/xIecHerRa77orj+hWosqbgXxKsH55RvgdoHUDZNl/VoyIt2GmfL
	aFzYjEuO6t/8vwd/xxicw2ZzwJnRPmbYdyk9Me0yCKktlO64ImbrJB6AT3jthY0XBFYtu8uq4uBBQ
	1n4kopbNxb/draTmbTfPG/N7UFJZSTU2Jx13JCaezZ54XPRqf+6Jr6TDry7ElrDy9janXPVUSBYvr
	HK71+pmTJFSQMy1vrKEg/prpI0+1qMGatzsEPsgOHXnddK3OMviEXXGGVs9Y1nft1GaC6G4GYLJUo
	DCSnUmsgWKpAD24zYWqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0S4b-0006HG-5l; Wed, 21 Aug 2019 14:58:53 +0000
Received: from [182.171.81.139] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0S4V-0006A3-Er; Wed, 21 Aug 2019 14:58:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 5/6] riscv: don't use the rdtime(h) pseudo-instructions
Date: Wed, 21 Aug 2019 23:58:36 +0900
Message-Id: <20190821145837.3686-6-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821145837.3686-1-hch@lst.de>
References: <20190821145837.3686-1-hch@lst.de>
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
Cc: Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

If we just use the CSRs that these map to directly the code is simpler
and doesn't require extra inline assembly code.  Also fix up the top-level
comment in timer-riscv.c to not talk about the cycle count or mention
details of the clocksource interface, of which this file is just a
consumer.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/include/asm/timex.h    | 44 +++++++++++++++----------------
 drivers/clocksource/timer-riscv.c | 17 +++---------
 2 files changed, 25 insertions(+), 36 deletions(-)

diff --git a/arch/riscv/include/asm/timex.h b/arch/riscv/include/asm/timex.h
index 6a703ec9d796..c7ef131b9e4c 100644
--- a/arch/riscv/include/asm/timex.h
+++ b/arch/riscv/include/asm/timex.h
@@ -6,43 +6,41 @@
 #ifndef _ASM_RISCV_TIMEX_H
 #define _ASM_RISCV_TIMEX_H
 
-#include <asm/param.h>
+#include <asm/csr.h>
 
 typedef unsigned long cycles_t;
 
-static inline cycles_t get_cycles_inline(void)
+static inline cycles_t get_cycles(void)
 {
-	cycles_t n;
-
-	__asm__ __volatile__ (
-		"rdtime %0"
-		: "=r" (n));
-	return n;
+	return csr_read(CSR_TIME);
 }
-#define get_cycles get_cycles_inline
+#define get_cycles get_cycles
 
 #ifdef CONFIG_64BIT
-static inline uint64_t get_cycles64(void)
+static inline u64 get_cycles64(void)
+{
+	return get_cycles();
+}
+#else /* CONFIG_64BIT */
+static inline u32 get_cycles_hi(void)
 {
-        return get_cycles();
+	return csr_read(CSR_TIMEH);
 }
-#else
-static inline uint64_t get_cycles64(void)
+
+static inline u64 get_cycles64(void)
 {
-	u32 lo, hi, tmp;
-	__asm__ __volatile__ (
-		"1:\n"
-		"rdtimeh %0\n"
-		"rdtime %1\n"
-		"rdtimeh %2\n"
-		"bne %0, %2, 1b"
-		: "=&r" (hi), "=&r" (lo), "=&r" (tmp));
+	u32 hi, lo;
+
+	do {
+		hi = get_cycles_hi();
+		lo = get_cycles();
+	} while (hi != get_cycles_hi());
+
 	return ((u64)hi << 32) | lo;
 }
-#endif
+#endif /* CONFIG_64BIT */
 
 #define ARCH_HAS_READ_CURRENT_TIMER
-
 static inline int read_current_timer(unsigned long *timer_val)
 {
 	*timer_val = get_cycles();
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 09e031176bc6..470c7ef02ea4 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -2,6 +2,10 @@
 /*
  * Copyright (C) 2012 Regents of the University of California
  * Copyright (C) 2017 SiFive
+ *
+ * All RISC-V systems have a timer attached to every hart.  These timers can be
+ * read from the "time" and "timeh" CSRs, and can use the SBI to setup
+ * events.
  */
 #include <linux/clocksource.h>
 #include <linux/clockchips.h>
@@ -12,19 +16,6 @@
 #include <asm/smp.h>
 #include <asm/sbi.h>
 
-/*
- * All RISC-V systems have a timer attached to every hart.  These timers can be
- * read by the 'rdcycle' pseudo instruction, and can use the SBI to setup
- * events.  In order to abstract the architecture-specific timer reading and
- * setting functions away from the clock event insertion code, we provide
- * function pointers to the clockevent subsystem that perform two basic
- * operations: rdtime() reads the timer on the current CPU, and
- * next_event(delta) sets the next timer event to 'delta' cycles in the future.
- * As the timers are inherently a per-cpu resource, these callbacks perform
- * operations on the current hart.  There is guaranteed to be exactly one timer
- * per hart on all RISC-V systems.
- */
-
 static int riscv_clock_next_event(unsigned long delta,
 		struct clock_event_device *ce)
 {
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
