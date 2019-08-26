Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23C19D9F2
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 01:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2o6WgosOkJ9bLA3x/LADdDn7aqqc9SeRlNSNpYfzdkI=; b=jWhHlc1kiYGT+4
	kf4lCEicyUpGDYisCB1p0Rbm5Y/TqJ4huis7BV0ZOTjltB0UKjg0jKCwjf8vJSS7/dhfBacjNeadr
	YNNXwnHdAMGvTv9ZVOZj/o+IkFPLaf0HU5jUm+iFrKA+rEts3rROsM/a/Qx/Adc1VAjYHvDLqhI6T
	+1ptlG4rkBacoqH7Rt9WcPd9+sRsSwxTgDVP/LyBxHglCzSUYsxZj2DwGz6dGSy1xn3X3uv4McRPz
	/3/+5BMLd58RztCRJvdEFmZSDJC9Cn+mxSgn0Yf2gjWOHcUjmxxpxua0aVfe3Y5kFCXZyU2bwVYQZ
	6yP+pINKup4rgj7/qteg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2OUW-00045M-B2; Mon, 26 Aug 2019 23:33:40 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2OUQ-00041k-5s
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 23:33:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566862414; x=1598398414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NOwAjvHbcc50rcpd47uuWkr60xMZSOcYkQr+KzmxZ80=;
 b=ix2uBJ9Jlw9FfqOzF8ZjipvEcXI45KBQUQ7M1Wry0FDtM3MgDcFBan3b
 dcUTPM3v5ED0uFQvRPBBdPBbpLLOf9l1g6tbnaaU3zKi1WHbkMFYBqhlH
 Pe4AuJV3E5pckVsYXRP6cEc1Ytw7YkKPl9A/VEhJsq0v6pT8Ce0XGOnXw
 f+M7zieXdnmYrMjr6kW2OsYDOqhUgPQNYM5U2W7NFVmdl5wLgORJ213Yi
 XSJgxw1a7z2QeBSU7jvCYbrXU/2Wu85SxY0nAAtmhyAQ1jECsbr3ST4tF
 Yc4jQaIS0fN87YPcrNY/x+BxzLYeeJ80GWubN4PPgi46XNv8cjRDPYv0e A==;
IronPort-SDR: 06cMxEtPa2QYXAelldESRSJffPKK6/Vd5ErTZMP6PBPWjL/hr7cKXOvbu/eE/oIuCQCHs8c8NF
 f4cUWGbjsbgLaiOKu43I4DiocKchYIXHIP/08y+mzVs6YS52EfSLDlLTsatTj3WAClPZEkmdAz
 kX0eAJkAbi2ZYSPwWYtNo7SUNnqGbQYAM7m0jeMJ1deYkKBGVZfyMm6abCiZn4dcLO+c3PLgWk
 JezAzEvGsfnzlK9JFWRRJXec5Goz3i+/nrLiYbQywlyfpJiv1IFU97ks0LtopKzfwBD5EjS6Yl
 01I=
X-IronPort-AV: E=Sophos;i="5.64,435,1559491200"; d="scan'208";a="118308329"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Aug 2019 07:33:28 +0800
IronPort-SDR: 2KEm6DpkSrfcUVY+5+5KYaBZU7Z5IMT7gxrnuVT1yBLu25GsqL3IR7fd2hOnBd6g/QPkqEbT2n
 48eO8M79tsyuYicsTrZh9GeWHdA2wFGR3k0ulK+w3d0yM7AzVgpIlVYyoySErwxnnHQgL1miEy
 JjejQfa22qGmlXri3L2k+eVEGfKNtFJnwmHa6jHZCLoYGlCBGPEmBfvpZNaANRvhS7Tr1GaKAW
 5Pdmdir+J5hpAOs6ZwGqa6Z0UIcLgkbb8q1GocP8+Uk+eNlS5hZy9Ly2mM7qexBBTWol/oYnyI
 YYnHU/5SuYmUPVQJLKyhCPro
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 16:30:39 -0700
IronPort-SDR: URb8pJMR4ETxv6cJze0dd43lyc6gWQ1YGQRs+0YiVLlUBxpzdCKr2LwKae90PTni5TRqxUTGWj
 t64IroRNYC4XBYZ25n3+7ajzg5mogFRIPhu98SnXStyODOakhjf/LdyzgjPcjSiNzyew1N2ErJ
 VyQDtBY9tMq75Q8RvvW3XlPzsbZdg4Ys30gxHzSyVEFukSB6gUhT/Dtaz+sGSkvpVL8EbzT740
 6x0kWk/UW5UGrarLDnnCU08k2zhv/Y6XK3XLlvL2ShkRllwDg+F02/lpd5X+EHRKIyklmYu8tK
 umA=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Aug 2019 16:33:28 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/2] RISC-V: Add basic support for SBI v0.2
Date: Mon, 26 Aug 2019 16:32:56 -0700
Message-Id: <20190826233256.32383-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190826233256.32383-1-atish.patra@wdc.com>
References: <20190826233256.32383-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_163334_257547_BB8BDE72 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Atish Patra <atish.patra@wdc.com>,
 Gary Guo <gary@garyguo.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The SBI v0.2 introduces a base extension which is backward compatible
with v0.1. Implement all helper functions and minimum required SBI
calls from v0.2 for now. All other base extension function will be
added later as per need.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 68 +++++++++++++++++++++++++++++-------
 arch/riscv/kernel/Makefile   |  1 +
 arch/riscv/kernel/sbi.c      | 50 ++++++++++++++++++++++++++
 arch/riscv/kernel/setup.c    |  2 ++
 4 files changed, 108 insertions(+), 13 deletions(-)
 create mode 100644 arch/riscv/kernel/sbi.c

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 7f5ecaaaa0d7..4a4476956693 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -8,7 +8,6 @@
 
 #include <linux/types.h>
 
-
 #define SBI_EXT_LEGACY_SET_TIMER 0x0
 #define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
 #define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
@@ -19,28 +18,61 @@
 #define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
 #define SBI_EXT_LEGACY_SHUTDOWN 0x8
 
-#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3) ({             \
+#define SBI_EXT_BASE 0x10
+
+enum sbi_ext_base_fid {
+	SBI_EXT_BASE_GET_SPEC_VERSION = 0,
+	SBI_EXT_BASE_GET_IMP_ID,
+	SBI_EXT_BASE_GET_IMP_VERSION,
+	SBI_EXT_BASE_PROBE_EXT,
+	SBI_EXT_BASE_GET_MVENDORID,
+	SBI_EXT_BASE_GET_MARCHID,
+	SBI_EXT_BASE_GET_MIMPID,
+};
+
+#define SBI_CALL_LEGACY(ext, fid, arg0, arg1, arg2, arg3) ({	\
 	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
 	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);	\
 	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);	\
 	register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);	\
-	register uintptr_t a7 asm ("a7") = (uintptr_t)(which);	\
+	register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);	\
+	register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);	\
 	asm volatile ("ecall"					\
-		      : "+r" (a0)				\
-		      : "r" (a1), "r" (a2), "r" (a3), "r" (a7)	\
+		      : "+r" (a0), "+r" (a1)			\
+		      : "r" (a2), "r" (a3), "r" (a6), "r" (a7) \
 		      : "memory");				\
 	a0;							\
 })
 
 /* Lazy implementations until SBI is finalized */
-#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0, 0)
-#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which, arg0, 0, 0, 0)
-#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
-		SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
-#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
-		SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
-#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
-		SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
+#define SBI_CALL_LEGACY_0(ext) SBI_CALL_LEGACY(ext, 0, 0, 0, 0, 0)
+#define SBI_CALL_LEGACY_1(ext, arg0) SBI_CALL_LEGACY(ext, 0, arg0, 0, 0, 0)
+#define SBI_CALL_LEGACY_2(ext, arg0, arg1) \
+		SBI_CALL_LEGACY(ext, 0, arg0, arg1, 0, 0)
+#define SBI_CALL_LEGACY_3(ext, arg0, arg1, arg2) \
+		SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, 0)
+#define SBI_CALL_LEGACY_4(ext, arg0, arg1, arg2, arg3) \
+		SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, arg3)
+
+extern unsigned long sbi_firmware_version;
+struct sbiret {
+	long error;
+	long value;
+};
+
+void riscv_sbi_init(void);
+struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
+			       int arg2, int arg3);
+
+#define SBI_CALL_0(ext, fid) riscv_sbi_ecall(ext, fid, 0, 0, 0, 0)
+#define SBI_CALL_1(ext, fid, arg0) riscv_sbi_ecall(ext, fid, arg0, 0, 0, 0)
+#define SBI_CALL_2(ext, fid, arg0, arg1) \
+		riscv_sbi_ecall(ext, fid, arg0, arg1, 0, 0)
+#define SBI_CALL_3(ext, fid, arg0, arg1, arg2) \
+		riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, 0)
+#define SBI_CALL_4(ext, fid, arg0, arg1, arg2, arg3) \
+		riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, arg3)
+
 
 static inline void sbi_console_putchar(int ch)
 {
@@ -99,4 +131,14 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 			  start, size, asid);
 }
 
+static inline unsigned long riscv_sbi_major_version(void)
+{
+	return (sbi_firmware_version >> 24) & 0x7f;
+}
+
+static inline unsigned long riscv_sbi_minor_version(void)
+{
+	return sbi_firmware_version & 0xffffff;
+}
+
 #endif
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 2420d37d96de..faf862d26924 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -17,6 +17,7 @@ obj-y	+= irq.o
 obj-y	+= process.o
 obj-y	+= ptrace.o
 obj-y	+= reset.o
+obj-y	+= sbi.o
 obj-y	+= setup.o
 obj-y	+= signal.o
 obj-y	+= syscall_table.o
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
new file mode 100644
index 000000000000..457b8cc0e9d9
--- /dev/null
+++ b/arch/riscv/kernel/sbi.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * SBI initialilization and base extension implementation.
+ *
+ * Copyright (c) 2019 Western Digital Corporation or its affiliates.
+ */
+
+#include <asm/sbi.h>
+#include <linux/sched.h>
+
+unsigned long sbi_firmware_version;
+
+struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
+			     int arg2, int arg3)
+{
+	struct sbiret ret;
+
+	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
+	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
+	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
+	register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
+	register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
+	register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
+	asm volatile ("ecall"
+		      : "+r" (a0), "+r" (a1)
+		      : "r" (a2), "r" (a3), "r" (a6), "r" (a7)
+		      : "memory");
+	ret.error = a0;
+	ret.value = a1;
+
+	return ret;
+}
+
+static struct sbiret sbi_get_spec_version(void)
+{
+	return SBI_CALL_0(SBI_EXT_BASE, SBI_EXT_BASE_GET_SPEC_VERSION);
+}
+
+void riscv_sbi_init(void)
+{
+	struct sbiret ret;
+
+	/* legacy SBI version*/
+	sbi_firmware_version = 0x1;
+	ret = sbi_get_spec_version();
+	if (!ret.error)
+		sbi_firmware_version = ret.value;
+	pr_info("SBI version implemented in firmware [%lu:%lu]\n",
+		riscv_sbi_major_version(), riscv_sbi_minor_version());
+}
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index a990a6cb184f..4c324fd398c8 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -21,6 +21,7 @@
 #include <asm/sections.h>
 #include <asm/pgtable.h>
 #include <asm/smp.h>
+#include <asm/sbi.h>
 #include <asm/tlbflush.h>
 #include <asm/thread_info.h>
 
@@ -70,6 +71,7 @@ void __init setup_arch(char **cmdline_p)
 	swiotlb_init(1);
 #endif
 
+	riscv_sbi_init();
 #ifdef CONFIG_SMP
 	setup_smp();
 #endif
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
