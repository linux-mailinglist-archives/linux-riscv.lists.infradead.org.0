Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 333CCFC0E2
	for <lists+linux-riscv@lfdr.de>; Thu, 14 Nov 2019 08:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToUT87LvGLy6XMkt0VqQdPTAY0PxeA2oEE8ASIngeI0=; b=knE18sUqP3na4X
	ToAodIey5snCqBm4PR/c8Y0t2k5QeLEzK5oPpWIWLXrkjRONPeY12Xl7ZompCJu/+tURNRQTJnoCo
	tr1hKuOaWjoWUFgvgzku/RpL0ecXrdq4+kwn3farBhOskuPx7oMmtsS7TBljjR0rz7XWQwgZ3p6fO
	wZB0knihMTaxJBzrDvVjcX3CZvJ3GhvIpQY/LVRflTaeiBRtRbCAh7yGNs2Re67P8spvBuJTzVa+x
	A7gmB/kaPFM8A2CRzTysbml5mszRhJjanOmIm376KaIYhkBfVcF+z0lDr/Uw4hDEhjByCLUganLX7
	UsPfPPlamxS/xev4UVzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9j2-0003Ob-6Q; Thu, 14 Nov 2019 07:39:32 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9ix-0003Eb-Cg
 for linux-riscv@lists.infradead.org; Thu, 14 Nov 2019 07:39:30 +0000
Received: by mail-oi1-x244.google.com with SMTP id e9so4403331oif.8
 for <linux-riscv@lists.infradead.org>; Wed, 13 Nov 2019 23:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=7Ad+PLr3QmhYM1M2mlxBYtAoRJ2xUG9cwnquHYSdYYc=;
 b=AcwcMhI74SCrXe3Tga44jqAG4VTYR6K7oGPZ7LqXYIJ+JYgTIxm6pPs5nVYEufUdtO
 zWcfu2FxA021825z2XTfQHvm5a5dPluQ4cPPkpiMbkdKAdz0hToJUpWOnoGXQY4Wj7S6
 Lg2IwtzMPMe2/DP16fb2QQh9/mbYuBNgB89FLpY/DQrRtUGEy/evUNWs/FI9JPt7QCH8
 94dnK17nc8aQculyLZXc7uhAk+WZ8iEdh7VNhSzEbCdgc0cFyoJMVkrUxMxosWUfuCy3
 1uYLOpOSIctkOSLr+S2U1LZDN7lycQfT6A4Nf872V0XVE5g7lxAGQ4J3ZGq7Z++8PH8V
 d0Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=7Ad+PLr3QmhYM1M2mlxBYtAoRJ2xUG9cwnquHYSdYYc=;
 b=k0mNVrMYNtRVeu0N/OAhasuUX3wYisY2tdT3FVtKLY3ewg0Nu6Fg4AbCwLV2Z8a2vu
 3MobAI/OIOBG462SterenbRcy8mHwln4jNgjK7ywiVcNKpexjJgPUqkjyu4Dvl4CUuRT
 pumHRIDKuiYVsWbPdPwHvwVC8Hv1IUwRxL9Ev2VazQKZv1OVNhtmy4uoQ7lB3+w6fd9r
 fop9TyKcDUmCk83ahDG08GVLWQuA3pO30Av+WGCkF0oZZHg8XtFjMW65vRZTq3Ezyajs
 PnHkgCXz3xWCI3kVKvuzKitvFuAhIhGGLc2yrD9e0MitVzmDjustNCOPGwdD2rYPElZr
 8cFg==
X-Gm-Message-State: APjAAAWH61Ae/6OwBe29IAzgJ9wgDisnD5EihU3xDnZwXp+Sqi08/vWp
 7aElt61kqPDQO3x/T4Ey5xQdRQ==
X-Google-Smtp-Source: APXvYqxcYguJniRypgeL05dkeDnKe1oIHb++Pi7KGjXR+QmIyaQpxjHreQau9YonHzM1i7T7C7Co9Q==
X-Received: by 2002:aca:c583:: with SMTP id v125mr2301060oif.156.1573717165164; 
 Wed, 13 Nov 2019 23:39:25 -0800 (PST)
Received: from localhost (wsip-98-172-187-222.no.no.cox.net. [98.172.187.222])
 by smtp.gmail.com with ESMTPSA id
 r4sm1608411otg.55.2019.11.13.23.39.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 23:39:24 -0800 (PST)
Date: Wed, 13 Nov 2019 23:39:24 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 09/15] riscv: provide native clint access for M-mode
In-Reply-To: <20191017173743.5430-10-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911132337520.11342@viisi.sifive.com>
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-10-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_233927_516653_C70C6673 
X-CRM114-Status: GOOD (  25.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019, Christoph Hellwig wrote:

> RISC-V has the concept of a cpu level interrupt controller.  The
> interface for it is split between a standardized part that is exposed
> as bits in the mstatus/sstatus register and the mie/mip/sie/sip
> CRS.  But the bit to actually trigger IPIs is not standardized and
> just mentioned as implementable using MMIO.
> 
> Add support for IPIs using MMIO using the SiFive clint layout (which is
> also shared by Ariane, Kendrye and the Qemu virt platform).  Additional
> the MMIO block also support the time value and timer compare registers,
> so they are also set up using the same OF node.  Support for other
> layouts should also be relatively easy to add in the future.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks, queued the following for v5.5-rc1.


- Paul

From: Christoph Hellwig <hch@lst.de>
Date: Mon, 28 Oct 2019 13:10:38 +0100
Subject: [PATCH] riscv: provide native clint access for M-mode

RISC-V has the concept of a cpu level interrupt controller.  The
interface for it is split between a standardized part that is exposed
as bits in the mstatus/sstatus register and the mie/mip/sie/sip
CRS.  But the bit to actually trigger IPIs is not standardized and
just mentioned as implementable using MMIO.

Add support for IPIs using MMIO using the SiFive clint layout (which
is also shared by Ariane, Kendryte and the Qemu virt platform).
Additionally the MMIO block also supports the time value and timer
compare registers, so they are also set up using the same OF node.
Support for other layouts should also be relatively easy to add in the
future.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Anup Patel <anup@brainfault.org>
[paul.walmsley@sifive.com: update include guard format; fix checkpatch
 issues; minor commit message cleanups]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/clint.h | 39 ++++++++++++++++++++++++++++++
 arch/riscv/include/asm/sbi.h   |  2 ++
 arch/riscv/kernel/Makefile     |  1 +
 arch/riscv/kernel/clint.c      | 44 ++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/setup.c      |  2 ++
 arch/riscv/kernel/smp.c        | 16 ++++++++++---
 arch/riscv/kernel/smpboot.c    |  4 ++++
 7 files changed, 105 insertions(+), 3 deletions(-)
 create mode 100644 arch/riscv/include/asm/clint.h
 create mode 100644 arch/riscv/kernel/clint.c

diff --git a/arch/riscv/include/asm/clint.h b/arch/riscv/include/asm/clint.h
new file mode 100644
index 000000000000..6eaa2eedd694
--- /dev/null
+++ b/arch/riscv/include/asm/clint.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_RISCV_CLINT_H
+#define _ASM_RISCV_CLINT_H 1
+
+#include <linux/io.h>
+#include <linux/smp.h>
+
+#ifdef CONFIG_RISCV_M_MODE
+extern u32 __iomem *clint_ipi_base;
+
+void clint_init_boot_cpu(void);
+
+static inline void clint_send_ipi_single(unsigned long hartid)
+{
+	writel(1, clint_ipi_base + hartid);
+}
+
+static inline void clint_send_ipi_mask(const struct cpumask *hartid_mask)
+{
+	int hartid;
+
+	for_each_cpu(hartid, hartid_mask)
+		clint_send_ipi_single(hartid);
+}
+
+static inline void clint_clear_ipi(unsigned long hartid)
+{
+	writel(0, clint_ipi_base + hartid);
+}
+#else /* CONFIG_RISCV_M_MODE */
+#define clint_init_boot_cpu()	do { } while (0)
+
+/* stubs to for code is only reachable under IS_ENABLED(CONFIG_RISCV_M_MODE): */
+void clint_send_ipi_single(unsigned long hartid);
+void clint_send_ipi_mask(const struct cpumask *hartid_mask);
+void clint_clear_ipi(unsigned long hartid);
+#endif /* CONFIG_RISCV_M_MODE */
+
+#endif /* _ASM_RISCV_CLINT_H */
diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 8e14d4819d0f..2570c1e683d3 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -97,6 +97,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 #else /* CONFIG_RISCV_SBI */
 /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
 void sbi_set_timer(uint64_t stime_value);
+void sbi_clear_ipi(void);
+void sbi_send_ipi(const unsigned long *hart_mask);
 void sbi_remote_fence_i(const unsigned long *hart_mask);
 #endif /* CONFIG_RISCV_SBI */
 #endif /* _ASM_RISCV_SBI_H */
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index d8c35fa93cc6..2dca51046899 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -29,6 +29,7 @@ obj-y	+= vdso.o
 obj-y	+= cacheinfo.o
 obj-y	+= vdso/
 
+obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
 obj-$(CONFIG_FPU)		+= fpu.o
 obj-$(CONFIG_SMP)		+= smpboot.o
 obj-$(CONFIG_SMP)		+= smp.o
diff --git a/arch/riscv/kernel/clint.c b/arch/riscv/kernel/clint.c
new file mode 100644
index 000000000000..3647980d14c3
--- /dev/null
+++ b/arch/riscv/kernel/clint.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Christoph Hellwig.
+ */
+
+#include <linux/io.h>
+#include <linux/of_address.h>
+#include <linux/types.h>
+#include <asm/clint.h>
+#include <asm/csr.h>
+#include <asm/timex.h>
+#include <asm/smp.h>
+
+/*
+ * This is the layout used by the SiFive clint, which is also shared by the qemu
+ * virt platform, and the Kendryte KD210 at least.
+ */
+#define CLINT_IPI_OFF		0
+#define CLINT_TIME_CMP_OFF	0x4000
+#define CLINT_TIME_VAL_OFF	0xbff8
+
+u32 __iomem *clint_ipi_base;
+
+void clint_init_boot_cpu(void)
+{
+	struct device_node *np;
+	void __iomem *base;
+
+	np = of_find_compatible_node(NULL, NULL, "riscv,clint0");
+	if (!np) {
+		panic("clint not found");
+		return;
+	}
+
+	base = of_iomap(np, 0);
+	if (!base)
+		panic("could not map CLINT");
+
+	clint_ipi_base = base + CLINT_IPI_OFF;
+	riscv_time_cmp = base + CLINT_TIME_CMP_OFF;
+	riscv_time_val = base + CLINT_TIME_VAL_OFF;
+
+	clint_clear_ipi(boot_cpu_hartid);
+}
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 845ae0e12115..365ff8420bfe 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -17,6 +17,7 @@
 #include <linux/sched/task.h>
 #include <linux/swiotlb.h>
 
+#include <asm/clint.h>
 #include <asm/setup.h>
 #include <asm/sections.h>
 #include <asm/pgtable.h>
@@ -67,6 +68,7 @@ void __init setup_arch(char **cmdline_p)
 	setup_bootmem();
 	paging_init();
 	unflatten_device_tree();
+	clint_init_boot_cpu();
 
 #ifdef CONFIG_SWIOTLB
 	swiotlb_init(1);
diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index c0fbc04e6810..eb878abcaaf8 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -16,6 +16,7 @@
 #include <linux/seq_file.h>
 #include <linux/delay.h>
 
+#include <asm/clint.h>
 #include <asm/sbi.h>
 #include <asm/tlbflush.h>
 #include <asm/cacheflush.h>
@@ -92,7 +93,10 @@ static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
 	smp_mb__after_atomic();
 
 	riscv_cpuid_to_hartid_mask(mask, &hartid_mask);
-	sbi_send_ipi(cpumask_bits(&hartid_mask));
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		sbi_send_ipi(cpumask_bits(&hartid_mask));
+	else
+		clint_send_ipi_mask(&hartid_mask);
 }
 
 static void send_ipi_single(int cpu, enum ipi_message_type op)
@@ -103,12 +107,18 @@ static void send_ipi_single(int cpu, enum ipi_message_type op)
 	set_bit(op, &ipi_data[cpu].bits);
 	smp_mb__after_atomic();
 
-	sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
+	else
+		clint_send_ipi_single(hartid);
 }
 
 static inline void clear_ipi(void)
 {
-	csr_clear(CSR_IP, IE_SIE);
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		csr_clear(CSR_IP, IE_SIE);
+	else
+		clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
 }
 
 void riscv_software_interrupt(void)
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 261f4087cc39..8bc01f0ca73b 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -24,6 +24,7 @@
 #include <linux/of.h>
 #include <linux/sched/task_stack.h>
 #include <linux/sched/mm.h>
+#include <asm/clint.h>
 #include <asm/irq.h>
 #include <asm/mmu_context.h>
 #include <asm/tlbflush.h>
@@ -137,6 +138,9 @@ asmlinkage __visible void __init smp_callin(void)
 {
 	struct mm_struct *mm = &init_mm;
 
+	if (!IS_ENABLED(CONFIG_RISCV_SBI))
+		clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
+
 	/* All kernel threads share the same mm context.  */
 	mmgrab(mm);
 	current->active_mm = mm;
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
