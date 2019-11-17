Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58207FFC22
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 00:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KeruiMQOLusFENC1b1A+nQKfFiYNpXgUw5J3P78xIGE=; b=fS/8EQu4xUQfFI
	iLW8y3veBtcy43pGON0Xgg4TfYBlInd3QiBKZxrS72ExROQ3g46X2jPOVxqJZQg+4786fU2ouT0Jc
	LhNG6xv76qcjkP4S4wAXeF/k+a1natii3f9dArevNGyRcT4C3iYPcxfyDA0fp1KLdatOgzh03UOpy
	YoBK3GzfW9vN1fs/euEX+sLJyCGBIHWP/FedbVl3wbKQlgYkWot/GCSdTipaVuINToew1jbGBBADI
	1XHVzJRlEWTTlQyjaEaYlrXgac7rZjyrf0l5WaiT48t7MRIHJDQg99SlDUZQQ2+VkoaeMgbbVAeeq
	3d4WlDKfh5ii4NQBj5DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWTcs-0004lQ-Vu; Sun, 17 Nov 2019 23:06:39 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWTco-0004hI-55
 for linux-riscv@lists.infradead.org; Sun, 17 Nov 2019 23:06:36 +0000
Received: by mail-io1-xd42.google.com with SMTP id v17so5463888iol.12
 for <linux-riscv@lists.infradead.org>; Sun, 17 Nov 2019 15:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=bBuXfW8UqlhFVT/AiDh5iapwM4kxSA5OKq/WwarocpI=;
 b=a8hCWVszRNuy9G+D8V8KKFZ3o84JZ/+ZoriD6ym4c9e3WfkdcCXyasCW1Wfxrij3BY
 vfbXqBScKt9gwlrGzzTjQOR1G4keSbchvOcdsNElOx1BslZutcvXD+d8hGzap/wwp/Kl
 LUA+Rz6LY1LmwH0HBYMv3TbH9I13SAULkfS9/yaVp5pa8iP7i83Mpcjzac4/nP1PbYAA
 puARQO1Jrl1E3zOW96jf7xVfMLffwtOJ4S/m3MIX06iDJbKQUeVj6QAWcozeeJS0LrOg
 YzRW57nXjpuRE0becsmCdpnGvIDG/Q+FSVbND91DVxvUV5L0bPNS52hx443A5u63Kfum
 MIKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=bBuXfW8UqlhFVT/AiDh5iapwM4kxSA5OKq/WwarocpI=;
 b=L3OuKNmEH8kpPT/6KEBDX3bLcVS/wBQg21YBXWlTCQFoabHsrPK1UaPK4saCnUADFs
 ny7DHt4DljRwGPKIOFbJyMkhhfMBheLBYuGOdvlAnN38mbn9du/d40oi2wIyxBQ2Fc/1
 Ms0LEjexyJlo3AZGvH7e7VyLPYygrQfH8VItXbfXlrypOFBY5WFmAKCw5rXH8au2qc5+
 eUx4f+fxVYx3ZsUj45toP4MWPNEgV3Rj/UWDGj1js9HhcZLja6T2gJ7Ek5OXvtncvyH5
 kRToatpi1jLlMtQF/R+U6t6xUBPdZoyknY1b6k9scVD1dPbkpjtyRa0z3L9IXq2HZ0sz
 yrRg==
X-Gm-Message-State: APjAAAXBB5yV+RpLmSbCixrCLaUu7oY6wJJFt7fdGnjMnAo0pLjEWBH1
 R64vfgpXdHKo7BhMbvai1sfmAw==
X-Google-Smtp-Source: APXvYqyh8xbm9xHg+rak4VgFX4wXXoBi8CiwPmFBvQkdkRRc4fBiirJHUe2Q9/TNFFohBNldUdyJAA==
X-Received: by 2002:a5d:8855:: with SMTP id t21mr11242232ios.138.1574031992798; 
 Sun, 17 Nov 2019 15:06:32 -0800 (PST)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id s11sm3958013ila.44.2019.11.17.15.06.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 15:06:32 -0800 (PST)
Date: Sun, 17 Nov 2019 15:06:30 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 06/12] riscv: add support for MMIO access to the timer
 registers
In-Reply-To: <20191028121043.22934-7-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911171459330.5296@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-7-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_150634_314018_F56FD283 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> When running in M-mode we can't use the SBI to set the timer, and
> don't have access to the time CSR as that usually is emulated by
> M-mode.  Instead provide code that directly accesses the MMIO for
> the timer.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Anup Patel <anup@brainfault.org>

Thanks, queued the following for v5.5-rc1.


- Paul

From: Christoph Hellwig <hch@lst.de>
Date: Mon, 28 Oct 2019 13:10:37 +0100
Subject: [PATCH] riscv: add support for MMIO access to the timer registers

When running in M-mode we can't use the SBI to set the timer, and
don't have access to the time CSR as that usually is emulated by
M-mode.  Instead provide code that directly accesses the MMIO for
the timer.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Anup Patel <anup@brainfault.org>
Acked-by: Thomas Gleixner <tglx@linutronix.de>
[paul.walmsley@sifive.com: updated to apply; fixed checkpatch
 issue; timex.h now includes asm/mmio.h to resolve header file
 problems]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/sbi.h      |  3 ++-
 arch/riscv/include/asm/timex.h    | 19 +++++++++++++++++--
 drivers/clocksource/timer-riscv.c | 23 +++++++++++++++++++----
 3 files changed, 38 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 204af718df61..8e14d4819d0f 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -95,7 +95,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
 }
 #else /* CONFIG_RISCV_SBI */
-/* stub for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
+/* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
+void sbi_set_timer(uint64_t stime_value);
 void sbi_remote_fence_i(const unsigned long *hart_mask);
 #endif /* CONFIG_RISCV_SBI */
 #endif /* _ASM_RISCV_SBI_H */
diff --git a/arch/riscv/include/asm/timex.h b/arch/riscv/include/asm/timex.h
index c7ef131b9e4c..bad2a7c2cda5 100644
--- a/arch/riscv/include/asm/timex.h
+++ b/arch/riscv/include/asm/timex.h
@@ -7,12 +7,25 @@
 #define _ASM_RISCV_TIMEX_H
 
 #include <asm/csr.h>
+#include <asm/mmio.h>
 
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
index d083bfb535f6..4e54856ce2a5 100644
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
@@ -13,14 +13,29 @@
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
+	void __iomem *r;
+
+	r = riscv_time_cmp + cpuid_to_hartid_map(smp_processor_id());
+	writeq_relaxed(val, r);
+}
+
 static int riscv_clock_next_event(unsigned long delta,
 		struct clock_event_device *ce)
 {
 	csr_set(CSR_IE, IE_TIE);
-	sbi_set_timer(get_cycles64() + delta);
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		sbi_set_timer(get_cycles64() + delta);
+	else
+		mmio_set_timer(get_cycles64() + delta);
 	return 0;
 }
 
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
