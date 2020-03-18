Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B41218937E
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 02:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pt36uZ+BeMvUS1deBofXERobixL0GmUTcNXz+C/odjA=; b=cPGk9yHJerN3uz
	7d2YPElb8dIKctQPVayiwcuzA2GaAirPNIWunJmw0lIAdKjllmUz1+yQdbYGUa8upy6j4qU6iuGAh
	8OIQDiZNzjdD8mZMoHh4UfWfZL03c07ogJlLUaXsdVDycaHW/WRuQ4oWA+L+mWc7gEuRSm08qd8Ug
	CH7CC7QLju1Wzm2EEeUrvhzqNDPJ2m4qnqysfyC8UPVwHnDuQOywcId7g7aF0tp/dZLRA3OhRuH42
	EKxklcjDvV+xIT1xSzAch6nt/Yk6O57bp/X1A2wuWZgl+GPCpRPl0XtAjK9HrJ8YMvaety02TAoaI
	PT8ZL1GSQ4AonCp1Apow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENFe-0006xC-0c; Wed, 18 Mar 2020 01:12:06 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENFa-0006us-Ql
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 01:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584493923; x=1616029923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MIh7Er5TSP6bkmcwbyQ0jmFEGwBC9Y1OxPn6vxSmZt8=;
 b=kL4eHM2kgCAc4A1RQP+RN4rQwOW/KPVjniHiEkac0/m8kGlcakPuwegv
 BavVLgewRkwN22jDMofMtEOehMl1aYBrViF+4NjUHgHmtrVy66oOWkb8t
 ruMLD00Ff+ic7J4Kp6VGkDpMTrLNkCpnpO4ztRzmnNfcEH3QVNCK22rPp
 7UrPE/S5wOv5Cf7MyWHHDDELz93zz7PMZpxv7YKDmkTubxtSdszOndZYS
 7yFdpxL1jYjJXbEQYJA1boomc+NaTP86+jWnjobu6wmoJrq9hHJbz+4kq
 GgpiiigqLwdjxnFZY2xmFe1VKVfOjrvfpBm44STpIUesJjl4/+fC3Venl A==;
IronPort-SDR: Ut7WQyNNE/a1+QHt9f1JkxvL3cw5pKzRnfOVlxTa9mDmyeUxeoi8th+e3gLWWwjoRFBpuUeeEM
 rrXh9uQYkdzs014ROuU9VeSsSjmN3GVxuWXctOZru3KCG0B0yx863B5KZCflyCj/nNW8qvCrUK
 4g764mQJMnDjf6msiE06jvrUp0Ee0F5riND+olAqddFoAsSByISd/07xOuoNpW45Hi1fO4cDft
 WwyRwxJw7RisYEK7k2GFN5saVcaqSgjPr08Y7/3TWMkr5+0z35KctiSGbgY1Alf4/Gn0UJnCgo
 jdc=
X-IronPort-AV: E=Sophos;i="5.70,565,1574092800"; d="scan'208";a="134242141"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Mar 2020 09:11:56 +0800
IronPort-SDR: wc3EG6dYOayPhE/1nn3s0tuGpACQF4v6nQ4ThbcWb36ftOGTJW87DKf8ww9CQuk2lcL73kiLHF
 YOa5J/dmRN+/4Pq5cuAxdd/+3DNyOqulnDdJDFNYGL27NOvxDpbPqj9wrafHsZMr5/0TNR5piM
 tz0QCkKTtJCo+U8TAz+TFfOMLd1dRtWYgBG0yltL6UyH/2TXnmKUU9glRWUmZhjzXADSzWrRLJ
 OMiiYNtczfPzzOSfF/WeWjIMjK4xQzdYgKq9UXtob40mQyNSp6bX6sm/6lM3zw/P4unTQjNwXU
 NBlY/cSe6Ppcsr19QrIsHHJB
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 18:03:23 -0700
IronPort-SDR: +SfGws8zmt5EX9c0tHOlF+E1fwRxychf9aMMraXjH8eQIb0Coebl9PZdHhFmySuEsAZFbK2bFS
 8kZOwTwMPw03pCL1ZH3vzjrTJtG37zbW3V1GlvJP2jIj9Ocf88YrMBrNst9jQSFePrDjP5WP5Q
 gkzR0wWCCtyJYsI64igGFGQ+CFH8AYli3vPRiAza9bcLSNPdt7qzZdvjq+iDdCAEcAxQC2TTvl
 c8t0YJHNeavo6N1gBpF/pXaw/SJsB66uGszK5zYUbTFMKpawSNOUQNDsUWgQ8dsKwQnT66mRRv
 vSg=
WDCIronportException: Internal
Received: from mccorma-lt.ad.shared (HELO yoda.hgst.com) ([10.86.54.125])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Mar 2020 18:11:56 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v11 01/11] RISC-V: Mark existing SBI as 0.1 SBI.
Date: Tue, 17 Mar 2020 18:11:34 -0700
Message-Id: <20200318011144.91532-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200318011144.91532-1-atish.patra@wdc.com>
References: <20200318011144.91532-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_181202_900322_69F0FEE2 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zong.li@sifive.com>,
 Nick Hu <nickhu@andestech.com>, Vincent Chen <vincent.chen@sifive.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmerdabbelt@google.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As per the new SBI specification, current SBI implementation version
is defined as 0.1 and will be removed/replaced in future. Each of the
function call in 0.1 is defined as a separate extension which makes
easier to replace them one at a time.

Rename existing implementation to reflect that. This patch is just
a preparatory patch for SBI v0.2 and doesn't introduce any functional
changes.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/include/asm/sbi.h | 41 +++++++++++++++++++-----------------
 1 file changed, 22 insertions(+), 19 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 2570c1e683d3..2a637ebd7a22 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2015 Regents of the University of California
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
  */
 
 #ifndef _ASM_RISCV_SBI_H
@@ -9,15 +10,15 @@
 #include <linux/types.h>
 
 #ifdef CONFIG_RISCV_SBI
-#define SBI_SET_TIMER 0
-#define SBI_CONSOLE_PUTCHAR 1
-#define SBI_CONSOLE_GETCHAR 2
-#define SBI_CLEAR_IPI 3
-#define SBI_SEND_IPI 4
-#define SBI_REMOTE_FENCE_I 5
-#define SBI_REMOTE_SFENCE_VMA 6
-#define SBI_REMOTE_SFENCE_VMA_ASID 7
-#define SBI_SHUTDOWN 8
+#define SBI_EXT_0_1_SET_TIMER 0x0
+#define SBI_EXT_0_1_CONSOLE_PUTCHAR 0x1
+#define SBI_EXT_0_1_CONSOLE_GETCHAR 0x2
+#define SBI_EXT_0_1_CLEAR_IPI 0x3
+#define SBI_EXT_0_1_SEND_IPI 0x4
+#define SBI_EXT_0_1_REMOTE_FENCE_I 0x5
+#define SBI_EXT_0_1_REMOTE_SFENCE_VMA 0x6
+#define SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID 0x7
+#define SBI_EXT_0_1_SHUTDOWN 0x8
 
 #define SBI_CALL(which, arg0, arg1, arg2, arg3) ({		\
 	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
@@ -43,48 +44,49 @@
 
 static inline void sbi_console_putchar(int ch)
 {
-	SBI_CALL_1(SBI_CONSOLE_PUTCHAR, ch);
+	SBI_CALL_1(SBI_EXT_0_1_CONSOLE_PUTCHAR, ch);
 }
 
 static inline int sbi_console_getchar(void)
 {
-	return SBI_CALL_0(SBI_CONSOLE_GETCHAR);
+	return SBI_CALL_0(SBI_EXT_0_1_CONSOLE_GETCHAR);
 }
 
 static inline void sbi_set_timer(uint64_t stime_value)
 {
 #if __riscv_xlen == 32
-	SBI_CALL_2(SBI_SET_TIMER, stime_value, stime_value >> 32);
+	SBI_CALL_2(SBI_EXT_0_1_SET_TIMER, stime_value,
+		   stime_value >> 32);
 #else
-	SBI_CALL_1(SBI_SET_TIMER, stime_value);
+	SBI_CALL_1(SBI_EXT_0_1_SET_TIMER, stime_value);
 #endif
 }
 
 static inline void sbi_shutdown(void)
 {
-	SBI_CALL_0(SBI_SHUTDOWN);
+	SBI_CALL_0(SBI_EXT_0_1_SHUTDOWN);
 }
 
 static inline void sbi_clear_ipi(void)
 {
-	SBI_CALL_0(SBI_CLEAR_IPI);
+	SBI_CALL_0(SBI_EXT_0_1_CLEAR_IPI);
 }
 
 static inline void sbi_send_ipi(const unsigned long *hart_mask)
 {
-	SBI_CALL_1(SBI_SEND_IPI, hart_mask);
+	SBI_CALL_1(SBI_EXT_0_1_SEND_IPI, hart_mask);
 }
 
 static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
 {
-	SBI_CALL_1(SBI_REMOTE_FENCE_I, hart_mask);
+	SBI_CALL_1(SBI_EXT_0_1_REMOTE_FENCE_I, hart_mask);
 }
 
 static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
 					 unsigned long start,
 					 unsigned long size)
 {
-	SBI_CALL_3(SBI_REMOTE_SFENCE_VMA, hart_mask, start, size);
+	SBI_CALL_3(SBI_EXT_0_1_REMOTE_SFENCE_VMA, hart_mask, start, size);
 }
 
 static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
@@ -92,7 +94,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 					      unsigned long size,
 					      unsigned long asid)
 {
-	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
+	SBI_CALL_4(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, hart_mask,
+		   start, size, asid);
 }
 #else /* CONFIG_RISCV_SBI */
 /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
-- 
2.25.1


