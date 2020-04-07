Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9D51A0582
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 06:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZJeyhxUyfL3ZWvv+t1TtPDCyQo0+Cvwj8nsnaq087Xw=; b=T+shxFGyVs4Qa01sPAkLHfA3KZ
	xOO999JMEd7zmAaTilYDu39toxfBe+zTjWDU7mlF09VSYDTUk7SC0X5QttPrrlGB4uvWvvGnM1o4x
	zDl/ujtxf+3kZbWHR7c3nf6eiiswnpWe6gFe3th4OHFFZQIIOG/Vh32EVxlJY2lfuQl8xgI/bXTwX
	uS6VYa3XSYKvUU53MEhUZ+XZequRQKWLkmsaKs6E0p+M2xmlW47cuVLK/opASWtmfOoz+Mx9xPJ4g
	VQxzhx4htXRC6oNBZoXWysGZ8/UBMFT6I8XoBRPZDb/LaspoDIa+OXIG4bP6AcGl/2pf9MVF2ABil
	bJ8z5XgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLfWe-0005Rr-PJ; Tue, 07 Apr 2020 04:07:48 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLfWZ-0005RW-HV
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 04:07:46 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ng8so196803pjb.2
 for <linux-riscv@lists.infradead.org>; Mon, 06 Apr 2020 21:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ZJeyhxUyfL3ZWvv+t1TtPDCyQo0+Cvwj8nsnaq087Xw=;
 b=jpzcm+d7tbwNoC4g2sCtumhCeUHfmVG3srABqRGfDiMEo0KjHvXfAv2NcI/otiaapK
 4Nq3bzAJFnWOxQzQ+G83sfllj7cWC/PMTh+4lGbl4lcUsueSr4YfLVYv45jy7MABpE50
 tuoOB+ySYNipP4ifxa6eQyMYPh2YUKOU7+8d5LtAQUkrV6iH+OaJWWaNLXBL4IgBTB38
 m9I50oTsY4UsCLn20RMQij+ehoUeWWNJ1xrd9HMWMtHiDzcfzmMC675yjwVI4kuxAK4S
 n5htVbI81FCf8Svvb7Be8/3FBImYMhRsa026C4nFr1pemmmfDEo9LqjzFg1azPxsz4mj
 XFLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZJeyhxUyfL3ZWvv+t1TtPDCyQo0+Cvwj8nsnaq087Xw=;
 b=Xi+MtizoJrbCHPdG61lopmx6GT/nP5S5qyNfNZqw945XaIXbe4paLxeO61/TfZ3GlA
 kCNqD83kInjU9YUxTBLzknX+bpOwWZJcYbNBZsO0ytNWnMniSwsxdfUm88gAvTmdv2aw
 1JyfFM77M8qJ/axKwaapGqrmBIHz+aX4IexdTCTxt530yNSzPnLGchFLDgUOlvn5oeOp
 EsBVL7umPHmngl2E4Z45qTNWNMgnQc+ik+6vaoYoTIgRIKSsbkVLvjNAfuKed42l2zPL
 QbQwVmv+MJys8nVraJj5EYqwakWm1/ocYk3Z8bR1lc7Wt9QhvSMNM3sqbsHC5DEZpKCN
 0mvw==
X-Gm-Message-State: AGi0PuZefxzkbCyd6RV+VP/vPxxiQE8ju1dMgL12TTgJ2ZldPPtOL+cT
 9b896anEhuvgPinxNP9UZBYK8q/9ECs=
X-Google-Smtp-Source: APiQypKjeNnmMkBuoSIZrSSbc6K3eGDJBhUVzoA1adtioi02kEj1i9koVnZm1ZxiHoWdg6UittSReg==
X-Received: by 2002:a17:902:8a89:: with SMTP id
 p9mr605588plo.286.1586232461981; 
 Mon, 06 Apr 2020 21:07:41 -0700 (PDT)
Received: from localhost.localdomain (123-195-35-41.dynamic.kbronet.com.tw.
 [123.195.35.41])
 by smtp.gmail.com with ESMTPSA id z12sm13282850pfj.144.2020.04.06.21.07.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 Apr 2020 21:07:41 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [RFC] riscv: use vDSO common flow to reduce the latency of the
 time-related functions
Date: Tue,  7 Apr 2020 12:07:32 +0800
Message-Id: <1586232452-8998-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_210744_101560_87F652F1 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
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
---
 arch/riscv/Kconfig                         |  3 ++
 arch/riscv/include/asm/vdso.h              |  3 --
 arch/riscv/include/asm/vdso/gettimeofday.h | 73 ++++++++++++++++++++++++++++++
 arch/riscv/include/asm/vdso/vsyscall.h     | 27 +++++++++++
 arch/riscv/kernel/vdso.c                   |  4 +-
 arch/riscv/kernel/vdso/Makefile            | 12 +++--
 arch/riscv/kernel/vdso/clock_getres.S      | 18 --------
 arch/riscv/kernel/vdso/clock_gettime.S     | 18 --------
 arch/riscv/kernel/vdso/gettimeofday.S      | 18 --------
 arch/riscv/kernel/vdso/vdso.lds.S          |  2 +
 arch/riscv/kernel/vdso/vgettimeofday.c     | 25 ++++++++++
 11 files changed, 141 insertions(+), 62 deletions(-)
 create mode 100644 arch/riscv/include/asm/vdso/gettimeofday.h
 create mode 100644 arch/riscv/include/asm/vdso/vsyscall.h
 delete mode 100644 arch/riscv/kernel/vdso/clock_getres.S
 delete mode 100644 arch/riscv/kernel/vdso/clock_gettime.S
 delete mode 100644 arch/riscv/kernel/vdso/gettimeofday.S
 create mode 100644 arch/riscv/kernel/vdso/vgettimeofday.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index ded32979d33d..028b48c14c4e 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -68,6 +68,9 @@ config RISCV
 	select HAVE_ARCH_KASAN if MMU && 64BIT
 	select HAVE_REGS_AND_STACK_ACCESS_API
 	select HAVE_RSEQ
+	select HAVE_GENERIC_VDSO
+	select GENERIC_TIME_VSYSCALL
+	select GENERIC_GETTIMEOFDAY
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vdso.h
index 7a7fce63c474..05689eab4083 100644
--- a/arch/riscv/include/asm/vdso.h
+++ b/arch/riscv/include/asm/vdso.h
@@ -10,9 +10,6 @@
 
 #include <linux/types.h>
 
-struct vdso_data {
-};
-
 /*
  * The VDSO symbols are mapped into Linux so we can just use regular symbol
  * addressing to get their offsets in userspace.  The symbols are mapped at an
diff --git a/arch/riscv/include/asm/vdso/gettimeofday.h b/arch/riscv/include/asm/vdso/gettimeofday.h
new file mode 100644
index 000000000000..087fc01fd288
--- /dev/null
+++ b/arch/riscv/include/asm/vdso/gettimeofday.h
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSO_GETTIMEOFDAY_H
+#define __ASM_VDSO_GETTIMEOFDAY_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/unistd.h>
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
diff --git a/arch/riscv/kernel/vdso.c b/arch/riscv/kernel/vdso.c
index 484d95a70907..1495af602f00 100644
--- a/arch/riscv/kernel/vdso.c
+++ b/arch/riscv/kernel/vdso.c
@@ -11,8 +11,8 @@
 #include <linux/slab.h>
 #include <linux/binfmts.h>
 #include <linux/err.h>
+#include <vdso/datapage.h>
 
-#include <asm/vdso.h>
 
 extern char vdso_start[], vdso_end[];
 
@@ -26,7 +26,7 @@ static union {
 	struct vdso_data	data;
 	u8			page[PAGE_SIZE];
 } vdso_data_store __page_aligned_data;
-static struct vdso_data *vdso_data = &vdso_data_store.data;
+struct vdso_data *vdso_data = &vdso_data_store.data;
 
 static int __init vdso_init(void)
 {
diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 33b16f4212f7..9ad681e94ebe 100644
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
 obj-vdso = $(patsubst %, %.o, $(vdso-syms))
 
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
2.7.4


