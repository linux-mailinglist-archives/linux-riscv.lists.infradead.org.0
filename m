Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 634341F3DB7
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jun 2020 16:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NedrDJAaEzqc11GpjZdqOvhEQKvawtZ4WLlfRLHp2nI=; b=GBi3CFRXMOAgp1
	fGIqQ/gxH9SFB/0ruHIcdReAUU+ivbReABaRQWRZwJtB88bVRsvfkwdhWYbyA/V/AM0bmlWXVOoCX
	oUymIjcY2+m+BGrguXY1xziSQoIjpSHXVRb5hpqyRHfc6VbNnOHDxt6fty5cOLDfrOrou5Y6+IVEb
	7PA31I9TfmYuvNJ8uMdhTXunKPGvcf0L7sbEn/hBsoSX7SwrVUIlERr/Sozf0BCYmRsev07H7/2fi
	kDe+0LF0QGv8NqSQajBaiUHb17DIupD9sJPTzccB6u2yj5uae2DufQgHWLIdtCOs5V1WRjegvJhUc
	bW/7BrKkaJqZRsj6f0Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jif2D-0002oF-M4; Tue, 09 Jun 2020 14:15:25 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jif1x-00015n-4i
 for linux-riscv@lists.infradead.org; Tue, 09 Jun 2020 14:15:19 +0000
Received: by mail-pj1-x1043.google.com with SMTP id i12so1463080pju.3
 for <linux-riscv@lists.infradead.org>; Tue, 09 Jun 2020 07:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NedrDJAaEzqc11GpjZdqOvhEQKvawtZ4WLlfRLHp2nI=;
 b=g/dyoHNGgpbBdtWysiXK5UMPaKDFCnv+WjILD2sNE+fK7clAdp2UDKLidGsaTC6m45
 puY1P2RsKD+nQU77dfBeVFSMH55p1h7usp+TEZcEWXQ2EdmNZwJPFH/5NuKgg62TVlHT
 bebbP71ESgn0/TaY5ZYFtG+G5097AnK1mvnSqxxI92pC6tOCEIALkSmsSuLYckpieKgO
 l4UIbkFjrGkJRzA7K4Z2ZQELBqFmB+gecg0z1KxN9zR3ouz/iwFSQ95fZOSLuUGEASM8
 DbluXGKYIWbZSaCVYYhxTvxGCR+K3yfvry7JzEu92e+vUHXAftGen3UflQ6rlRI54+Iq
 l0uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NedrDJAaEzqc11GpjZdqOvhEQKvawtZ4WLlfRLHp2nI=;
 b=iRPfj5wZojYbonZXYRAiWA9Xw1ipd+Gw4dBY81rzz4PuELeYt9rFgTwNxlWSD2+a2B
 fLUqbMqI0mnWxAg21jaFL1bFjbZiDaKsMIlnHm00FZZ3rALYT4B9gFH1xAzugqpCaQxH
 D3MeaBMHgn+ndFB+ZPYWeEFuB4TfaTP0aom4/smOWYHslG2Q6NKBycFt8cO6f9WwbCCx
 QPcu/E2CScU1JozPtKL3YRLWMwjMVyhNSp+OR/EIfPoEw26LmvOZ15UNDpTJLd20UpgX
 YkoRT9I4zkwn8DxfzvQPErABadC22+6cKo4IZzMhySLcCm+5rRN3d4HmNItFrDHWDuNN
 r1Gw==
X-Gm-Message-State: AOAM531yLqMw2xypvWBZUNgs8eRl0YbeDxSR+3n90gsw/bAh7m+ASEl3
 DUNpjB+ecNg5ZphZszQLdiMyXA==
X-Google-Smtp-Source: ABdhPJx8B5KopNKC0dhL2/YuEftkfv5B3JPg9cxsC8rbpf1fTnCUAWWS/r2xMwRI3/xmHSox8zW1Xg==
X-Received: by 2002:a17:90a:f309:: with SMTP id
 ca9mr4753548pjb.113.1591712108333; 
 Tue, 09 Jun 2020 07:15:08 -0700 (PDT)
Received: from localhost.localdomain (123-195-35-41.dynamic.kbronet.com.tw.
 [123.195.35.41])
 by smtp.gmail.com with ESMTPSA id c9sm10271531pfp.100.2020.06.09.07.15.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 07:15:07 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: palmer@dabbelt.com,
	paul.walmsley@sifive.com
Subject: [PATCH v4 1/2] riscv: use vDSO common flow to reduce the latency of
 the time-related functions
Date: Tue,  9 Jun 2020 22:14:48 +0800
Message-Id: <1591712089-12904-2-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591712089-12904-1-git-send-email-vincent.chen@sifive.com>
References: <1591712089-12904-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_071509_218113_ED4EADF9 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmerdabbelt@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Even if RISC-V has supported the vDSO feature, the latency of the functions
for obtaining the system time is still expensive. It is because these
functions still trigger a corresponding system call in the process, which
slows down the response time. If we want to remove the system call to
reduce the latency, the kernel should have the ability to output the system
clock information to userspace. This patch introduces the vDSO common flow
to enable the kernel to achieve the above feature and uses "rdtime"
instruction to obtain the current time in the user space. Under this
condition, the latency cost by the ecall from U-mode to S-mode can be
eliminated. After applying this patch, the latency of gettimeofday()
measured on the HiFive unleashed board can be reduced by %61.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig                         |  4 ++
 arch/riscv/include/asm/clocksource.h       |  7 ++
 arch/riscv/include/asm/processor.h         | 12 +---
 arch/riscv/include/asm/vdso.h              |  2 +
 arch/riscv/include/asm/vdso/clocksource.h  |  8 +++
 arch/riscv/include/asm/vdso/gettimeofday.h | 79 ++++++++++++++++++++++
 arch/riscv/include/asm/vdso/processor.h    | 19 ++++++
 arch/riscv/include/asm/vdso/vsyscall.h     | 27 ++++++++
 arch/riscv/kernel/time.c                   |  9 +++
 arch/riscv/kernel/vdso.c                   |  8 ++-
 arch/riscv/kernel/vdso/Makefile            | 12 +++-
 arch/riscv/kernel/vdso/clock_getres.S      | 18 -----
 arch/riscv/kernel/vdso/clock_gettime.S     | 18 -----
 arch/riscv/kernel/vdso/gettimeofday.S      | 18 -----
 arch/riscv/kernel/vdso/vdso.lds.S          |  2 +
 arch/riscv/kernel/vdso/vgettimeofday.c     | 25 +++++++
 16 files changed, 199 insertions(+), 69 deletions(-)
 create mode 100644 arch/riscv/include/asm/clocksource.h
 create mode 100644 arch/riscv/include/asm/vdso/clocksource.h
 create mode 100644 arch/riscv/include/asm/vdso/gettimeofday.h
 create mode 100644 arch/riscv/include/asm/vdso/processor.h
 create mode 100644 arch/riscv/include/asm/vdso/vsyscall.h
 delete mode 100644 arch/riscv/kernel/vdso/clock_getres.S
 delete mode 100644 arch/riscv/kernel/vdso/clock_gettime.S
 delete mode 100644 arch/riscv/kernel/vdso/gettimeofday.S
 create mode 100644 arch/riscv/kernel/vdso/vgettimeofday.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 8244b8f7e7c3..d0419ab1fed0 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -12,6 +12,7 @@ config 32BIT
 
 config RISCV
 	def_bool y
+	select ARCH_CLOCKSOURCE_INIT
 	select ARCH_HAS_BINFMT_FLAT
 	select ARCH_HAS_DEBUG_VIRTUAL if MMU
 	select ARCH_HAS_DEBUG_WX
@@ -31,6 +32,7 @@ config RISCV
 	select GENERIC_ARCH_TOPOLOGY if SMP
 	select GENERIC_ATOMIC64 if !64BIT
 	select GENERIC_CLOCKEVENTS
+	select GENERIC_GETTIMEOFDAY if HAVE_GENERIC_VDSO
 	select GENERIC_IOREMAP
 	select GENERIC_IRQ_MULTI_HANDLER
 	select GENERIC_IRQ_SHOW
@@ -40,6 +42,7 @@ config RISCV
 	select GENERIC_SMP_IDLE_THREAD
 	select GENERIC_STRNCPY_FROM_USER if MMU
 	select GENERIC_STRNLEN_USER if MMU
+	select GENERIC_TIME_VSYSCALL if MMU && 64BIT
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_ARCH_KASAN if MMU && 64BIT
 	select HAVE_ARCH_KGDB
@@ -52,6 +55,7 @@ config RISCV
 	select HAVE_DMA_CONTIGUOUS if MMU
 	select HAVE_EBPF_JIT if MMU
 	select HAVE_FUTEX_CMPXCHG if FUTEX
+	select HAVE_GENERIC_VDSO if MMU && 64BIT
 	select HAVE_PCI
 	select HAVE_PERF_EVENTS
 	select HAVE_PERF_REGS
diff --git a/arch/riscv/include/asm/clocksource.h b/arch/riscv/include/asm/clocksource.h
new file mode 100644
index 000000000000..482185566b0c
--- /dev/null
+++ b/arch/riscv/include/asm/clocksource.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_CLOCKSOURCE_H
+#define _ASM_CLOCKSOURCE_H
+
+#include <asm/vdso/clocksource.h>
+
+#endif
diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 3ddb798264f1..d6117b316e2b 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -8,6 +8,8 @@
 
 #include <linux/const.h>
 
+#include <vdso/processor.h>
+
 #include <asm/ptrace.h>
 
 /*
@@ -58,16 +60,6 @@ static inline void release_thread(struct task_struct *dead_task)
 extern unsigned long get_wchan(struct task_struct *p);
 
 
-static inline void cpu_relax(void)
-{
-#ifdef __riscv_muldiv
-	int dummy;
-	/* In lieu of a halt instruction, induce a long-latency stall. */
-	__asm__ __volatile__ ("div %0, %0, zero" : "=r" (dummy));
-#endif
-	barrier();
-}
-
 static inline void wait_for_interrupt(void)
 {
 	__asm__ __volatile__ ("wfi");
diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vdso.h
index 7a7fce63c474..8454f746bbfd 100644
--- a/arch/riscv/include/asm/vdso.h
+++ b/arch/riscv/include/asm/vdso.h
@@ -10,8 +10,10 @@
 
 #include <linux/types.h>
 
+#ifndef GENERIC_TIME_VSYSCALL
 struct vdso_data {
 };
+#endif
 
 /*
  * The VDSO symbols are mapped into Linux so we can just use regular symbol
diff --git a/arch/riscv/include/asm/vdso/clocksource.h b/arch/riscv/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..df6ea65c1dec
--- /dev/null
+++ b/arch/riscv/include/asm/vdso/clocksource.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSOCLOCKSOURCE_H
+#define __ASM_VDSOCLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_ARCHTIMER
+
+#endif
diff --git a/arch/riscv/include/asm/vdso/gettimeofday.h b/arch/riscv/include/asm/vdso/gettimeofday.h
new file mode 100644
index 000000000000..c8e818688ec1
--- /dev/null
+++ b/arch/riscv/include/asm/vdso/gettimeofday.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSO_GETTIMEOFDAY_H
+#define __ASM_VDSO_GETTIMEOFDAY_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/unistd.h>
+#include <asm/csr.h>
+#include <uapi/linux/time.h>
+
+#define VDSO_HAS_CLOCK_GETRES	1
+
+static __always_inline
+int gettimeofday_fallback(struct __kernel_old_timeval *_tv,
+			  struct timezone *_tz)
+{
+	register struct __kernel_old_timeval *tv asm("a0") = _tv;
+	register struct timezone *tz asm("a1") = _tz;
+	register long ret asm("a0");
+	register long nr asm("a7") = __NR_gettimeofday;
+
+	asm volatile ("ecall\n"
+		      : "=r" (ret)
+		      : "r"(tv), "r"(tz), "r"(nr)
+		      : "memory");
+
+	return ret;
+}
+
+static __always_inline
+long clock_gettime_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
+{
+	register clockid_t clkid asm("a0") = _clkid;
+	register struct __kernel_timespec *ts asm("a1") = _ts;
+	register long ret asm("a0");
+	register long nr asm("a7") = __NR_clock_gettime;
+
+	asm volatile ("ecall\n"
+		      : "=r" (ret)
+		      : "r"(clkid), "r"(ts), "r"(nr)
+		      : "memory");
+
+	return ret;
+}
+
+static __always_inline
+int clock_getres_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
+{
+	register clockid_t clkid asm("a0") = _clkid;
+	register struct __kernel_timespec *ts asm("a1") = _ts;
+	register long ret asm("a0");
+	register long nr asm("a7") = __NR_clock_getres;
+
+	asm volatile ("ecall\n"
+		      : "=r" (ret)
+		      : "r"(clkid), "r"(ts), "r"(nr)
+		      : "memory");
+
+	return ret;
+}
+
+static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
+{
+	/*
+	 * The purpose of csr_read(CSR_TIME) is to trap the system into
+	 * M-mode to obtain the value of CSR_TIME. Hence, unlike other
+	 * architecture, no fence instructions surround the csr_read()
+	 */
+	return csr_read(CSR_TIME);
+}
+
+static __always_inline const struct vdso_data *__arch_get_vdso_data(void)
+{
+	return _vdso_data;
+}
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_GETTIMEOFDAY_H */
diff --git a/arch/riscv/include/asm/vdso/processor.h b/arch/riscv/include/asm/vdso/processor.h
new file mode 100644
index 000000000000..82a5693b1861
--- /dev/null
+++ b/arch/riscv/include/asm/vdso/processor.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __ASM_VDSO_PROCESSOR_H
+#define __ASM_VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+static inline void cpu_relax(void)
+{
+#ifdef __riscv_muldiv
+	int dummy;
+	/* In lieu of a halt instruction, induce a long-latency stall. */
+	__asm__ __volatile__ ("div %0, %0, zero" : "=r" (dummy));
+#endif
+	barrier();
+}
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_PROCESSOR_H */
diff --git a/arch/riscv/include/asm/vdso/vsyscall.h b/arch/riscv/include/asm/vdso/vsyscall.h
new file mode 100644
index 000000000000..82fd5d83bd60
--- /dev/null
+++ b/arch/riscv/include/asm/vdso/vsyscall.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSO_VSYSCALL_H
+#define __ASM_VDSO_VSYSCALL_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/timekeeper_internal.h>
+#include <vdso/datapage.h>
+
+extern struct vdso_data *vdso_data;
+
+/*
+ * Update the vDSO data page to keep in sync with kernel timekeeping.
+ */
+static __always_inline struct vdso_data *__riscv_get_k_vdso_data(void)
+{
+	return vdso_data;
+}
+
+#define __arch_get_k_vdso_data __riscv_get_k_vdso_data
+
+/* The asm-generic header needs to be included after the definitions above */
+#include <asm-generic/vdso/vsyscall.h>
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_VSYSCALL_H */
diff --git a/arch/riscv/kernel/time.c b/arch/riscv/kernel/time.c
index 6a53c02e9c73..4d3a1048ad8b 100644
--- a/arch/riscv/kernel/time.c
+++ b/arch/riscv/kernel/time.c
@@ -26,3 +26,12 @@ void __init time_init(void)
 	lpj_fine = riscv_timebase / HZ;
 	timer_probe();
 }
+
+void clocksource_arch_init(struct clocksource *cs)
+{
+#ifdef CONFIG_GENERIC_GETTIMEOFDAY
+	cs->vdso_clock_mode = VDSO_CLOCKMODE_ARCHTIMER;
+#else
+	cs->vdso_clock_mode = VDSO_CLOCKMODE_NONE;
+#endif
+}
diff --git a/arch/riscv/kernel/vdso.c b/arch/riscv/kernel/vdso.c
index 484d95a70907..70b6461a6387 100644
--- a/arch/riscv/kernel/vdso.c
+++ b/arch/riscv/kernel/vdso.c
@@ -11,8 +11,12 @@
 #include <linux/slab.h>
 #include <linux/binfmts.h>
 #include <linux/err.h>
-
+#include <asm/page.h>
+#ifdef GENERIC_TIME_VSYSCALL
+#include <vdso/datapage.h>
+#else
 #include <asm/vdso.h>
+#endif
 
 extern char vdso_start[], vdso_end[];
 
@@ -26,7 +30,7 @@ static union {
 	struct vdso_data	data;
 	u8			page[PAGE_SIZE];
 } vdso_data_store __page_aligned_data;
-static struct vdso_data *vdso_data = &vdso_data_store.data;
+struct vdso_data *vdso_data = &vdso_data_store.data;
 
 static int __init vdso_init(void)
 {
diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 4c8b2a4a6a70..38ba55b0eb9d 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -1,12 +1,14 @@
 # SPDX-License-Identifier: GPL-2.0-only
 # Copied from arch/tile/kernel/vdso/Makefile
 
+# Absolute relocation type $(ARCH_REL_TYPE_ABS) needs to be defined before
+# the inclusion of generic Makefile.
+ARCH_REL_TYPE_ABS := R_RISCV_32|R_RISCV_64|R_RISCV_JUMP_SLOT
+include $(srctree)/lib/vdso/Makefile
 # Symbols present in the vdso
 vdso-syms  = rt_sigreturn
 ifdef CONFIG_64BIT
-vdso-syms += gettimeofday
-vdso-syms += clock_gettime
-vdso-syms += clock_getres
+vdso-syms += vgettimeofday
 endif
 vdso-syms += getcpu
 vdso-syms += flush_icache
@@ -14,6 +16,10 @@ vdso-syms += flush_icache
 # Files to link into the vdso
 obj-vdso = $(patsubst %, %.o, $(vdso-syms)) note.o
 
+ifneq ($(c-gettimeofday-y),)
+  CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
+endif
+
 # Build rules
 targets := $(obj-vdso) vdso.so vdso.so.dbg vdso.lds vdso-dummy.o
 obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
diff --git a/arch/riscv/kernel/vdso/clock_getres.S b/arch/riscv/kernel/vdso/clock_getres.S
deleted file mode 100644
index 91378a52eb22..000000000000
--- a/arch/riscv/kernel/vdso/clock_getres.S
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2017 SiFive
- */
-
-#include <linux/linkage.h>
-#include <asm/unistd.h>
-
-	.text
-/* int __vdso_clock_getres(clockid_t clock_id, struct timespec *res); */
-ENTRY(__vdso_clock_getres)
-	.cfi_startproc
-	/* For now, just do the syscall. */
-	li a7, __NR_clock_getres
-	ecall
-	ret
-	.cfi_endproc
-ENDPROC(__vdso_clock_getres)
diff --git a/arch/riscv/kernel/vdso/clock_gettime.S b/arch/riscv/kernel/vdso/clock_gettime.S
deleted file mode 100644
index 5371fd9bc01f..000000000000
--- a/arch/riscv/kernel/vdso/clock_gettime.S
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2017 SiFive
- */
-
-#include <linux/linkage.h>
-#include <asm/unistd.h>
-
-	.text
-/* int __vdso_clock_gettime(clockid_t clock_id, struct timespec *tp); */
-ENTRY(__vdso_clock_gettime)
-	.cfi_startproc
-	/* For now, just do the syscall. */
-	li a7, __NR_clock_gettime
-	ecall
-	ret
-	.cfi_endproc
-ENDPROC(__vdso_clock_gettime)
diff --git a/arch/riscv/kernel/vdso/gettimeofday.S b/arch/riscv/kernel/vdso/gettimeofday.S
deleted file mode 100644
index e6fb8af88632..000000000000
--- a/arch/riscv/kernel/vdso/gettimeofday.S
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2017 SiFive
- */
-
-#include <linux/linkage.h>
-#include <asm/unistd.h>
-
-	.text
-/* int __vdso_gettimeofday(struct timeval *tv, struct timezone *tz); */
-ENTRY(__vdso_gettimeofday)
-	.cfi_startproc
-	/* For now, just do the syscall. */
-	li a7, __NR_gettimeofday
-	ecall
-	ret
-	.cfi_endproc
-ENDPROC(__vdso_gettimeofday)
diff --git a/arch/riscv/kernel/vdso/vdso.lds.S b/arch/riscv/kernel/vdso/vdso.lds.S
index f66a091cb890..e6f558bca71b 100644
--- a/arch/riscv/kernel/vdso/vdso.lds.S
+++ b/arch/riscv/kernel/vdso/vdso.lds.S
@@ -2,11 +2,13 @@
 /*
  * Copyright (C) 2012 Regents of the University of California
  */
+#include <asm/page.h>
 
 OUTPUT_ARCH(riscv)
 
 SECTIONS
 {
+	PROVIDE(_vdso_data = . + PAGE_SIZE);
 	. = SIZEOF_HEADERS;
 
 	.hash		: { *(.hash) }			:text
diff --git a/arch/riscv/kernel/vdso/vgettimeofday.c b/arch/riscv/kernel/vdso/vgettimeofday.c
new file mode 100644
index 000000000000..d264943e2e47
--- /dev/null
+++ b/arch/riscv/kernel/vdso/vgettimeofday.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copied from arch/arm64/kernel/vdso/vgettimeofday.c
+ *
+ * Copyright (C) 2018 ARM Ltd.
+ * Copyright (C) 2020 SiFive
+ */
+
+#include <linux/time.h>
+#include <linux/types.h>
+
+int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
+{
+	return __cvdso_clock_gettime(clock, ts);
+}
+
+int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
+{
+	return __cvdso_gettimeofday(tv, tz);
+}
+
+int __vdso_clock_getres(clockid_t clock_id, struct __kernel_timespec *res)
+{
+	return __cvdso_clock_getres(clock_id, res);
+}
-- 
2.27.0


