Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03EABFC22
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Sep 2019 02:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfQjQJAH10p+F7xHVgk7Y62SNQKiHmKWoQekRwdPugE=; b=tP6iKh3R/W5zLo
	BCHdduaS3AENxEnJZZQ5bNLLStGg3vGPyHHvJC2G/9SZFRixiGzxoamzIXWZEXbUkPeDSsCvzyh+H
	p+nNlpJPnHWhVinHCDn6IQojZhJT5/I/RP34Pk/i5zCD1upmdri0r72z6zC6EXefspX0e5P0DUU/2
	pLuz9jDFbRTOV/+uZ0mzPgxHQM9FSyT2qEZadQHrfAaPgwDNDta/6+T1Hnd1Bqc9sOdElozkdWtPN
	rFF1OZH5Em8TbQguSX+Ph0GU8luRb+gLiGEumJs4obfPiU7T/q3FaXkBuNPHRg1Tk1kXvitkY+ilP
	1nQt9vQCuDoEianobswg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDdpJ-0006kQ-OL; Fri, 27 Sep 2019 00:09:37 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDdpD-0006i5-Eb
 for linux-riscv@lists.infradead.org; Fri, 27 Sep 2019 00:09:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569542973; x=1601078973;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KPhrBII3Q/D9Muze6sav8ec9R3+Qxjj5Wect3Thw/gs=;
 b=kps4354nES6gxYK0C9RMfwJ8ADLgjtZiG/DQuJYmh7JAeFNX+CV4fgWT
 jME/GaXi5iQ4pB23/kgLpm98J8CplGMvwC4oG8kqQPjj74SYyryKj0fGA
 U3P+CGvVv6gtQylwOf2aitUe031msEMkp69dECUcURSHW+0AVsD0sJJ/l
 vPShuxxdcuJ81d7oP1Oq+xcZrqePxe+9JqLT3m6pSQBU/nryCwZ8zRNGJ
 qTo9LSLq5G2QqD36UVtKR9TQ5XulrHvztDTZqFgRcnD2Rl66RhSjve7V9
 qyMk09KkvQPL/GiTbtOSA7OPKp12WlATVST0Pac9B44BnQnI0VaSkrHLa A==;
IronPort-SDR: rjr4EyUFcy8dJUt+D7ZDO3ugTMzgHq+pmWDviK7YWP2mup+xhpDeZkMjzaLTp+N+DmuHG2EiuZ
 OTI+QddZbrJMiNKHn+dWajdZOFaPYnbhtAIujxhUElYECx1/ApvB2ni/0AP9y3yLMp146as1Dx
 RSawADHWL/t97uZljBAd1dsgQ7yQgK9u575VKF6odd+m3Jm0UPEGFMgCvn08sB4M+xdX2fpY9c
 MAJvUjqU/106AgHTqiJD/sBiKJ16VVnDKkOUOvD6OP6LZqdrPR7ya8/OgNuLb81UwSvJgwK3vx
 0NU=
X-IronPort-AV: E=Sophos;i="5.64,553,1559491200"; d="scan'208";a="220096739"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Sep 2019 08:09:45 +0800
IronPort-SDR: IVAyx/vUe46KKdQSGuv367o1z9bpW3uZkl+LKL51au5Ll1DoKj+hFm7skMW1yS9Zt8A9hBWzv1
 EO7d88FUFEZqX3XzbMSMHclFdGrZQT95pbAEv2z9rSlj4kGI2gytA/iJJcxKbgNo6IVrHqEKfB
 bb+1Rssgfy3NdZWYq1Mf9SoZmc2GR0qHK4ABJTghKgYUDQWPei1ueWxED9+CL4kFyyi0Anh/LI
 w+o2TmCXbCtFMzpmDHfeOvtg8y/CNq3ZLJpRUnrtPRmLRZuRqo6mJcFSug5kdloDCeN2oO+5Ao
 bu3vMJsIlTOD7OM1iYlpLPcZ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 17:05:45 -0700
IronPort-SDR: GrXZHkzBbltDD1EMwWoWItN2OyPtRJK5UyeJYyhwfoENa/jdZXAYn3YtZzk/liUs9zkdZSIfEs
 esIOr9ibIBp97JW+oecH8cgn9ejEl7AS5VlJvFcZ3OUWlF2368/sW2tu82IgOiKFsQd2P5cWlM
 iB0KTuG0S9Y9qSVisJJp/KUIga+MdK+gAq2YQ4dVJu8rIPKklyE0dlOGLLvKwP/bT25wrekYyo
 jKqpBR7EEsYX6o/v+MSy98p314KGkj4tEMl0BiXdPMdj2WIYAba8lcV6zdOwdLKjm4kjFFPoy9
 MCQ=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Sep 2019 17:09:25 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] RISC-V: Mark existing SBI as 0.1 SBI.
Date: Thu, 26 Sep 2019 17:09:13 -0700
Message-Id: <20190927000915.31781-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190927000915.31781-1-atish.patra@wdc.com>
References: <20190927000915.31781-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_170931_546612_5D9583ED 
X-CRM114-Status: GOOD (  11.51  )
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

As per the new SBI specification, current SBI implementation version
is defined as 0.1 and will be removed/replaced in future. Each of the
function call in 0.1 is defined as a separate extension which makes
easier to replace them one at a time.

Rename existing implementation to reflect that. This patch is just
a preparatory patch for SBI v0.2 and doesn't introduce any functional
changes.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 43 +++++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 21134b3ef404..2147f384fad0 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -8,17 +8,17 @@
 
 #include <linux/types.h>
 
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
 
-#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({		\
+#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \
 	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
 	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);	\
 	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);	\
@@ -42,48 +42,50 @@
 
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
+			  stime_value >> 32);
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
+	SBI_CALL_3(SBI_EXT_0_1_REMOTE_SFENCE_VMA, hart_mask,
+			  start, size);
 }
 
 static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
@@ -91,7 +93,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 					      unsigned long size,
 					      unsigned long asid)
 {
-	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
+	SBI_CALL_4(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, hart_mask,
+			  start, size, asid);
 }
 
 #endif
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
