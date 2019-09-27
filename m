Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5B8BFC24
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Sep 2019 02:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EANpMPRZflf9+tURuiXekQZYeek7olcPvwyO9ckvZQI=; b=Du39bCLPsG3kGh
	1gEoa+xAGIADl1bmrIOluBFYCbQ7Su6d7bEMc9jRfuLs3hCALPFWcB/w/iNUXwciP9k07uRylrIyM
	IbOetf2890uwd3OsuZhOY0hK0JXIZJ7JVeVlhGF4T4Exh8c31In8B/GVVav9g/wFfl7hGwuAS0qAz
	ZTcHRx5+xLZjIAxdxeieAjYVPMLCf7kVjb9aaRiUusr8xUiAdkImujJVj0C1SJ4a94J7E8bU5PrV4
	1eZmT6oo/fV6f6V3/TkjSQCfwB3PSOpRYqycUDyWDmWlLXR5SlaAvwae7A3xbONB3XZdCBmjBjDvS
	0K5PPADs6EadXvjkJ/RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDdpO-0006qD-Dg; Fri, 27 Sep 2019 00:09:42 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDdpE-0006i5-V8
 for linux-riscv@lists.infradead.org; Fri, 27 Sep 2019 00:09:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569542975; x=1601078975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gnRX1rJatH534rQ6UL7lXnfIFuKqappF0M/EBgfWEwM=;
 b=HGoBVj895Hpl6ffW8gSVb+yVtwu6KXNISzenCtB/uU4bKSRwGKox9B4G
 Rrhy11jL5v2khOI9D78ZsG6NfxOQa3vIj69qhTovyXftz9P08B/xVe0jr
 agY1KejdWGZv4Vndex+AkrNv6i+TlI2i3+YION76QYtWm7+dKPyrw4qsc
 12PZiai580yR9BLXORIw7UD9ewaitOwc283adof8+ERsWanQ4J/KKy4Ke
 FeNp3IeW9y4Fmaa+YQtOwk7YHJ8uyqTNlQYnXwTfg807ncArggeeZ+Fuu
 G5vc26f1CaQSADXWxhQ8AMu0H/cnAAXtAexZ+TL2aVprWfbRqKZrb+E3s A==;
IronPort-SDR: JUjWi8IIEa3FAfGixZtbJ9yJEGmEosXFSfV9xIUKggoZTZXg8Qxlz2B8wWMPB16u1RV6QxV9ZB
 Rm5/j61KCqSWPxh9Bm4T5FCQXBLf8AaYGQqArPfMyDYLlZ6DSWhWIiXTUi7JFpbsEOfVIyCbDq
 wW4c3iJrgmX1R6yUi6ea+eEGUvxput9FWwh+9IiXOHj+DTKReY6gF7zI5X5vDyLxcnUOOZOG2b
 MEsUniXWw7CiBx3Mj74wsf3JHQ2xSBJ6kJ0dGR1oHd32HzIjwHy/IUWDHjo3EDQBUKRexekWyk
 bTg=
X-IronPort-AV: E=Sophos;i="5.64,553,1559491200"; d="scan'208";a="220096743"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Sep 2019 08:09:46 +0800
IronPort-SDR: tLsNZnzYJ6AbmNPQ1aUdW9NRuIG7OG1HddXVAXdcrmYGitfhWP7H+35lnfPkwbL55e3pEDpcnB
 s2QULChKVAyyxqeWoVEaL++W++a6DCv0JmA/XFDt3tjfzyoVV2lC3oRj3F5W42OwOIx1+SVemv
 hynfMotZX75c7W/fwwN2BAaiKLyse/74oI0uWWRYExGWXqvcTidCVIytaQG7Qg5uAB3PLANpy/
 nI3Bi5+yTzFVYFVHmXSO8PUyWJQa9wtBcGSmKIhj5WMBmNhqY1UulVBVyCzflPfMs611ySeq5/
 v2S4XDPtyeGSnGLoVrkooI6t
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 17:05:45 -0700
IronPort-SDR: 0TdbiaexfCg3g9CeLKk0MU4P2+H5iYAvKKs6wSOFWnZFYpFqVIb/RMvX2udvE4F8lnJFBSBloH
 vYkqzUehQubzbUiYRzjd+J85zGv+m+UyVSP8lrDJO8cWhYYGRgC9cHnDdsOjOiJmC5k+zYY+SF
 DkpC5Z9S0pnV8mZOXrARKC/LKTFdbeNRFPNU0t1ApA9IfuP6JPs/USxJtr2x+SLiCDIQy0W5/+
 +XHQvh++lAHsQnp690wCzdIy55Op19PCv9+NjV5wc6Y0bgnnPIrXYU9zh85W4ZnGj4KRz596AT
 I7k=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Sep 2019 17:09:25 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] RISC-V: Add basic support for SBI v0.2
Date: Thu, 26 Sep 2019 17:09:14 -0700
Message-Id: <20190927000915.31781-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190927000915.31781-1-atish.patra@wdc.com>
References: <20190927000915.31781-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_170933_461526_7318C05C 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Atish Patra <atish.patra@wdc.com>, Gary Guo <gary@garyguo.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
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
 arch/riscv/include/asm/sbi.h | 139 ++++++++++----------
 arch/riscv/kernel/Makefile   |   1 +
 arch/riscv/kernel/sbi.c      | 241 +++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/setup.c    |   2 +
 4 files changed, 311 insertions(+), 72 deletions(-)
 create mode 100644 arch/riscv/kernel/sbi.c

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 2147f384fad0..279b7f10b3c2 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -8,93 +8,88 @@
 
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
+			      unsigned long arg1, unsigned long arg2,
+			      unsigned long arg3);
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
index 000000000000..315fcb925278
--- /dev/null
+++ b/arch/riscv/kernel/sbi.c
@@ -0,0 +1,241 @@
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
+			      unsigned long arg1, unsigned long arg2,
+			      unsigned long arg3)
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
+	sbi_ecall(SBI_EXT_0_1_CONSOLE_PUTCHAR, 0, ch, 0, 0, 0);
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
+	ret = sbi_ecall(SBI_EXT_0_1_CONSOLE_GETCHAR, 0, 0, 0, 0, 0);
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
+			  stime_value >> 32, 0, 0);
+#else
+	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0);
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
+	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0);
+}
+
+/**
+ * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
+ *
+ * Return: None
+ */
+void sbi_clear_ipi(void)
+{
+	sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0);
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
+			0, 0, 0);
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
+			0, 0, 0);
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
+			(unsigned long)hart_mask, start, size, 0);
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
+			(unsigned long)hart_mask, start, size, asid);
+}
+
+/**
+ * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
+ * @extid: The extension ID to be probed.
+ *
+ * Return: Extension specific nonzero value if yes, -ENOTSUPP otherwise.
+ */
+int sbi_probe_extension(long extid)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_PROBE_EXT, 0, 0, 0, 0);
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
+			       0, 0, 0, 0);
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
+			       0, 0, 0, 0);
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
+			       0, 0, 0, 0);
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
index a990a6cb184f..abf2b9ee5307 100644
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
 
+	sbi_init();
 #ifdef CONFIG_SMP
 	setup_smp();
 #endif
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
