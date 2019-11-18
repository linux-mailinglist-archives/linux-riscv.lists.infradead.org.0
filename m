Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA69F100F12
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 23:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzN8XRYuJ1FCIpEdcfKPI0P5ZZAKPWUJQaPsj8ZN/ZI=; b=MMlEJHikZHscrF
	UNnCbroFgEwDilDl8K1OllZ6izABxNmUtrxIpBD7inJMsDDAxuNfOlm95gAR5++SaW6jjXSKbGT7l
	XwQyY35SkjBqdC98GSieRgcSRGoZGOvJAoh1ZF/yMXVSak4Jq9CHbJ+Y9JTOk20xQ0YCh3xIbeUYR
	H6G4JlV6KvnWFEbZzAhIvlX0IyT5GaLx57Nia0Wjl/1+f4dWcR66qnM85HlSH2vDPVmCxl/jELG5t
	K6BszJOWouCFPd5P4VVmgZNH3FOcKwXf6uT9mOc9DZ0apZm8Hzf0B7VPPrqj2MzYg5NXWwv8Tmmbh
	95cyiT+Mlf2v7JcQ5zFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWpxQ-0007OB-5J; Mon, 18 Nov 2019 22:57:20 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWpxH-0007HG-NQ
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 22:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574117831; x=1605653831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LIkvNuxcI1aLomjiY2+Gl28FEBBJJjECtl/QNDEFRAw=;
 b=ZoNir6z6Sto++Wzy+ItBlq8Me/KX79qZIS4pm/lEHXrsMtrm2oKDT2Jx
 0OasaJIASeb45hQ/eo0Uf9p4Fl2edaFyitnJ3KhmeL7Qupca0gLA/UsNf
 H44B6eiU0u+bpjyEVDHKq8TBrvHs0XrdesZ3vuzWs8jn8xKuJ+H7wbf4Q
 YRx+bRyfGBeTTgq/Z6X6KFKz9p9wzKuILROgZKzHHqBJRCBpxaYkSRaes
 huVG/7qDjMFLoveFBQhKOghsq0bZzmjGzaXvAGA3X8FKMQbMww1VtdTiG
 bWteY6MIiOhPXIbsunpT2hh/SmTrtwfnG4U0z5pFAJudbgzV253FD17RU Q==;
IronPort-SDR: SPjTCADw+DFY3Og8IpOTzzxmvQhIcrRU9Bgi/cra8JpY2SQ01eb6K+dsrOvS5JWYlxOJQgaWnE
 40P5WLYTc3pKYR7DEMIJyzLj77J0R/gN4G+aTSBQzCeoP+EEWGlCt+ZX+K5FBcflw9MUT5FUkX
 XzkeUFGdqtd9W1CJa2Ikni49ZkZ9h1CWvf1VS99+QpFxIHTUT8+zpoDj02v1FwMWg3/RbY+JGe
 OHVj1o4HKy3fOZfST7JCZXOvFAOFjfRFtJR66CYENHTbD1P66wI+EIfI5fv3f79zP2nIxaqOF6
 RUk=
X-IronPort-AV: E=Sophos;i="5.68,321,1569254400"; d="scan'208";a="124142828"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Nov 2019 06:57:06 +0800
IronPort-SDR: whvu4HHWoV6tHlEHSFEfe3iKki0NwS67AtwGv8ChadXnzmuphpy5HnuAGi4jUpXOiayQXT4Dd1
 9AMqrX3IiJelpCrzgAfAZwmwC6qN52DTyZqjOHRE4SZBlwiqOB2+/i+pQuhgeGfsPv0nbWy+rK
 8IkeGdHi1E3JWP69COjTJnlVwdCJu+inzBJyd4DVyotcj6zoXsispxKxh74FR/50zkb6mhDDPE
 9hrJg0udxoPCNp6tOEDRNnJd2fsxcsDZ52Fl/csGpn/rWrBOp6p1So4pEIkv1KyyMgipLE3jq4
 T+14MRX1FM/yvjySn4wyC60t
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 14:52:19 -0800
IronPort-SDR: f8MTYcTx4SxyhZ/s+B6DSxyMPWzvQomsjxv6sBfulEqERDVDkJzSx63W95LcQRcNU742fPB4NC
 BlfROEz1BqAjTYewlbglNRJVCCuDedwvuGaR4v03wmLMy5XcMeBvmGbgfGKhlbHlYufgXvbkTu
 /HftVwnQ4ZOvpz8XTMFPvz20fxzejGJdrT+fmaaMmA/M16BNIkD695naq2JlghXlnHSwvm1LWX
 Ot8VykZcfcZTHK0yR7KLX6fm7BeCqajWTgkdiNS8HSSrV9Q9iGEDiMSPyf/tVr0eEDDFOzt5yS
 5zk=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.237])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Nov 2019 14:57:06 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] RISC-V: Add basic support for SBI v0.2
Date: Mon, 18 Nov 2019 14:45:37 -0800
Message-Id: <20191118224539.2171-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118224539.2171-1-atish.patra@wdc.com>
References: <20191118224539.2171-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_145711_850184_18E8C82D 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>, Anup Patel <anup@brainfault.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Jonathan Behrens <behrensj@mit.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Mao Han <han_mao@c-sky.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The SBI v0.2 introduces a base extension which is backward compatible
with v0.1. Implement all helper functions and minimum required SBI
calls from v0.2 for now. All other base extension function will be
added later as per need.
As v0.2 calling convention is backward compatible with v0.1, remove
the v0.1 helper functions and just use v0.2 calling convention.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 140 ++++++++++----------
 arch/riscv/kernel/Makefile   |   1 +
 arch/riscv/kernel/sbi.c      | 244 +++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/setup.c    |   2 +
 4 files changed, 315 insertions(+), 72 deletions(-)
 create mode 100644 arch/riscv/kernel/sbi.c

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 2147f384fad0..75ad7a190b1b 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -8,93 +8,89 @@
 
 #include <linux/types.h>
 
-#define SBI_EXT_0_1_SET_TIMER 0x0
-#define SBI_EXT_0_1_CONSOLE_PUTCHAR 0x1
-#define SBI_EXT_0_1_CONSOLE_GETCHAR 0x2
-#define SBI_EXT_0_1_CLEAR_IPI 0x3
-#define SBI_EXT_0_1_SEND_IPI 0x4
-#define SBI_EXT_0_1_REMOTE_FENCE_I 0x5
-#define SBI_EXT_0_1_REMOTE_SFENCE_VMA 0x6
-#define SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID 0x7
-#define SBI_EXT_0_1_SHUTDOWN 0x8
+enum sbi_ext_id {
+	SBI_EXT_0_1_SET_TIMER = 0x0,
+	SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
+	SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
+	SBI_EXT_0_1_CLEAR_IPI = 0x3,
+	SBI_EXT_0_1_SEND_IPI = 0x4,
+	SBI_EXT_0_1_REMOTE_FENCE_I = 0x5,
+	SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
+	SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
+	SBI_EXT_0_1_SHUTDOWN = 0x8,
+	SBI_EXT_BASE = 0x10,
+};
 
-#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \
-	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
-	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);	\
-	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);	\
-	register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);	\
-	register uintptr_t a7 asm ("a7") = (uintptr_t)(which);	\
-	asm volatile ("ecall"					\
-		      : "+r" (a0)				\
-		      : "r" (a1), "r" (a2), "r" (a3), "r" (a7)	\
-		      : "memory");				\
-	a0;							\
-})
+enum sbi_ext_base_fid {
+	SBI_BASE_GET_SPEC_VERSION = 0,
+	SBI_BASE_GET_IMP_ID,
+	SBI_BASE_GET_IMP_VERSION,
+	SBI_BASE_PROBE_EXT,
+	SBI_BASE_GET_MVENDORID,
+	SBI_BASE_GET_MARCHID,
+	SBI_BASE_GET_MIMPID,
+};
 
-/* Lazy implementations until SBI is finalized */
-#define SBI_CALL_0(which) SBI_CALL(which, 0, 0, 0, 0)
-#define SBI_CALL_1(which, arg0) SBI_CALL(which, arg0, 0, 0, 0)
-#define SBI_CALL_2(which, arg0, arg1) SBI_CALL(which, arg0, arg1, 0, 0)
-#define SBI_CALL_3(which, arg0, arg1, arg2) \
-		SBI_CALL(which, arg0, arg1, arg2, 0)
-#define SBI_CALL_4(which, arg0, arg1, arg2, arg3) \
-		SBI_CALL(which, arg0, arg1, arg2, arg3)
+#define SBI_SPEC_VERSION_DEFAULT	0x1
+#define SBI_SPEC_VERSION_MAJOR_OFFSET	24
+#define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
+#define SBI_SPEC_VERSION_MINOR_MASK	0xffffff
 
-static inline void sbi_console_putchar(int ch)
-{
-	SBI_CALL_1(SBI_EXT_0_1_CONSOLE_PUTCHAR, ch);
-}
+/* SBI return error codes */
+#define SBI_SUCCESS		0
+#define SBI_ERR_FAILURE		-1
+#define SBI_ERR_NOT_SUPPORTED	-2
+#define SBI_ERR_INVALID_PARAM   -3
+#define SBI_ERR_DENIED		-4
+#define SBI_ERR_INVALID_ADDRESS -5
 
-static inline int sbi_console_getchar(void)
-{
-	return SBI_CALL_0(SBI_EXT_0_1_CONSOLE_GETCHAR);
-}
-
-static inline void sbi_set_timer(uint64_t stime_value)
-{
-#if __riscv_xlen == 32
-	SBI_CALL_2(SBI_EXT_0_1_SET_TIMER, stime_value,
-			  stime_value >> 32);
-#else
-	SBI_CALL_1(SBI_EXT_0_1_SET_TIMER, stime_value);
-#endif
-}
+extern unsigned long sbi_spec_version;
+struct sbiret {
+	long error;
+	long value;
+};
 
-static inline void sbi_shutdown(void)
-{
-	SBI_CALL_0(SBI_EXT_0_1_SHUTDOWN);
-}
+void sbi_init(void);
+struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
+			unsigned long arg1, unsigned long arg2,
+			unsigned long arg3, unsigned long arg4,
+			unsigned long arg5);
+int sbi_err_map_linux_errorno(int err);
 
-static inline void sbi_clear_ipi(void)
-{
-	SBI_CALL_0(SBI_EXT_0_1_CLEAR_IPI);
-}
+void sbi_console_putchar(int ch);
+int sbi_console_getchar(void);
+void sbi_set_timer(uint64_t stime_value);
+void sbi_shutdown(void);
+void sbi_clear_ipi(void);
+void sbi_send_ipi(const unsigned long *hart_mask);
+void sbi_remote_fence_i(const unsigned long *hart_mask);
+void sbi_remote_sfence_vma(const unsigned long *hart_mask,
+			   unsigned long start,
+			   unsigned long size);
 
-static inline void sbi_send_ipi(const unsigned long *hart_mask)
-{
-	SBI_CALL_1(SBI_EXT_0_1_SEND_IPI, hart_mask);
-}
+void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
+				unsigned long start,
+				unsigned long size,
+				unsigned long asid);
+int sbi_probe_extension(long ext);
 
-static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
+/* Check if current SBI specification version is 0.1 or not */
+static inline int sbi_spec_is_0_1(void)
 {
-	SBI_CALL_1(SBI_EXT_0_1_REMOTE_FENCE_I, hart_mask);
+	return (sbi_spec_version == SBI_SPEC_VERSION_DEFAULT) ? 1 : 0;
 }
 
-static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
-					 unsigned long start,
-					 unsigned long size)
+/* Get the major version of SBI */
+static inline unsigned long sbi_major_version(void)
 {
-	SBI_CALL_3(SBI_EXT_0_1_REMOTE_SFENCE_VMA, hart_mask,
-			  start, size);
+	return (sbi_spec_version >> SBI_SPEC_VERSION_MAJOR_OFFSET) &
+		SBI_SPEC_VERSION_MAJOR_MASK;
 }
 
-static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
-					      unsigned long start,
-					      unsigned long size,
-					      unsigned long asid)
+/* Get the minor version of SBI */
+static inline unsigned long sbi_minor_version(void)
 {
-	SBI_CALL_4(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, hart_mask,
-			  start, size, asid);
+	return sbi_spec_version & SBI_SPEC_VERSION_MINOR_MASK;
 }
 
 #endif
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 696020ff72db..aef457607295 100644
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
index 000000000000..1cee3ef009bb
--- /dev/null
+++ b/arch/riscv/kernel/sbi.c
@@ -0,0 +1,244 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2019 Western Digital Corporation or its affiliates.
+ */
+
+#include <asm/sbi.h>
+#include <linux/sched.h>
+
+/* default SBI version is 0.1 */
+unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
+
+struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
+			unsigned long arg1, unsigned long arg2,
+			unsigned long arg3, unsigned long arg4,
+			unsigned long arg5)
+{
+	struct sbiret ret;
+
+	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
+	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
+	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
+	register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
+	register uintptr_t a4 asm ("a4") = (uintptr_t)(arg4);
+	register uintptr_t a5 asm ("a5") = (uintptr_t)(arg5);
+	register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
+	register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
+	asm volatile ("ecall"
+		      : "+r" (a0), "+r" (a1)
+		      : "r" (a2), "r" (a3), "r" (a4), "r" (a5), "r" (a6), "r" (a7)
+		      : "memory");
+	ret.error = a0;
+	ret.value = a1;
+
+	return ret;
+}
+
+int sbi_err_map_linux_errno(int err)
+{
+	switch (err) {
+	case SBI_SUCCESS:
+		return 0;
+	case SBI_ERR_DENIED:
+		return -EPERM;
+	case SBI_ERR_INVALID_PARAM:
+		return -EINVAL;
+	case SBI_ERR_INVALID_ADDRESS:
+		return -EFAULT;
+	case SBI_ERR_NOT_SUPPORTED:
+	case SBI_ERR_FAILURE:
+	default:
+		return -ENOTSUPP;
+	};
+}
+
+/**
+ * sbi_console_putchar() - Writes given character to the console device.
+ * @ch: The data to be written to the console.
+ *
+ * Return: None
+ */
+void sbi_console_putchar(int ch)
+{
+	sbi_ecall(SBI_EXT_0_1_CONSOLE_PUTCHAR, 0, ch, 0, 0, 0, 0, 0);
+}
+
+/**
+ * sbi_console_getchar() - Reads a byte from console device.
+ *
+ * Returns the value read from console.
+ */
+int sbi_console_getchar(void)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_0_1_CONSOLE_GETCHAR, 0, 0, 0, 0, 0, 0, 0);
+
+	return ret.error;
+}
+
+/**
+ * sbi_set_timer() - Program the timer for next timer event.
+ * @stime_value: The value after which next timer event should fire.
+ *
+ * Return: None
+ */
+void sbi_set_timer(uint64_t stime_value)
+{
+#if __riscv_xlen == 32
+	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
+			  stime_value >> 32, 0, 0, 0, 0);
+#else
+	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
+#endif
+}
+
+/**
+ * sbi_shutdown() - Remove all the harts from executing supervisor code.
+ *
+ * Return: None
+ */
+void sbi_shutdown(void)
+{
+	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
+}
+
+/**
+ * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
+ *
+ * Return: None
+ */
+void sbi_clear_ipi(void)
+{
+	sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
+}
+
+/**
+ * sbi_send_ipi() - Send an IPI to any hart.
+ * @hart_mask: A cpu mask containing all the target harts.
+ *
+ * Return: None
+ */
+void sbi_send_ipi(const unsigned long *hart_mask)
+{
+	sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
+			0, 0, 0, 0, 0);
+}
+
+/**
+ * sbi_remote_fence_i() - Execute FENCE.I instruction on given remote harts.
+ * @hart_mask: A cpu mask containing all the target harts.
+ *
+ * Return: None
+ */
+void sbi_remote_fence_i(const unsigned long *hart_mask)
+{
+	sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned long)hart_mask,
+			0, 0, 0, 0, 0);
+}
+
+/**
+ * sbi_remote_sfence_vma() - Execute SFENCE.VMA instructions on given remote
+ *			     harts for the specified virtual address range.
+ * @hart_mask: A cpu mask containing all the target harts.
+ * @start: Start of the virtual address
+ * @size: Total size of the virtual address range.
+ *
+ * Return: None
+ */
+void sbi_remote_sfence_vma(const unsigned long *hart_mask,
+					 unsigned long start,
+					 unsigned long size)
+{
+	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
+			(unsigned long)hart_mask, start, size, 0, 0, 0);
+}
+
+/**
+ * sbi_remote_sfence_vma_asid() - Execute SFENCE.VMA instructions on given
+ * remote harts for a virtual address range belonging to a specific ASID.
+ *
+ * @hart_mask: A cpu mask containing all the target harts.
+ * @start: Start of the virtual address
+ * @size: Total size of the virtual address range.
+ * @asid: The value of address space identifier (ASID).
+ *
+ * Return: None
+ */
+void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
+					      unsigned long start,
+					      unsigned long size,
+					      unsigned long asid)
+{
+	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
+			(unsigned long)hart_mask, start, size, asid, 0, 0);
+}
+
+/**
+ * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
+ * @extid: The extension ID to be probed.
+ *
+ * Return: Extension specific nonzero value f yes, -ENOTSUPP otherwise.
+ */
+int sbi_probe_extension(long extid)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_PROBE_EXT, 0, 0, 0, 0, 0, 0);
+	if (!ret.error)
+		if (ret.value)
+			return ret.value;
+
+	return -ENOTSUPP;
+}
+
+static long sbi_get_spec_version(void)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_SPEC_VERSION,
+			       0, 0, 0, 0, 0, 0);
+	if (!ret.error)
+		return ret.value;
+	else
+		return ret.error;
+}
+
+static long sbi_get_firmware_id(void)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_IMP_ID,
+			       0, 0, 0, 0, 0, 0);
+	if (!ret.error)
+		return ret.value;
+	else
+		return sbi_err_map_linux_errno(ret.error);
+}
+
+static long sbi_get_firmware_version(void)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_IMP_VERSION,
+			       0, 0, 0, 0, 0, 0);
+	if (!ret.error)
+		return ret.value;
+	else
+		return sbi_err_map_linux_errno(ret.error);
+}
+
+void sbi_init(void)
+{
+	int ret;
+
+	ret = sbi_get_spec_version();
+	if (ret > 0)
+		sbi_spec_version = ret;
+
+	pr_info("SBI specification v%lu.%lu detected\n",
+		sbi_major_version(), sbi_minor_version());
+	if (!sbi_spec_is_0_1())
+		pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
+			sbi_get_firmware_id(), sbi_get_firmware_version());
+}
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 845ae0e12115..1aadae86ab02 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -21,6 +21,7 @@
 #include <asm/sections.h>
 #include <asm/pgtable.h>
 #include <asm/smp.h>
+#include <asm/sbi.h>
 #include <asm/tlbflush.h>
 #include <asm/thread_info.h>
 
@@ -72,6 +73,7 @@ void __init setup_arch(char **cmdline_p)
 	swiotlb_init(1);
 #endif
 
+	sbi_init();
 #ifdef CONFIG_SMP
 	setup_smp();
 #endif
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
