Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F0E10A44D
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 20:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=050duSP00UBmpKe2QCx2L+5UKCfiJQ3o9hBrCWozmVw=; b=INWW+lhAS6HHvm
	Ejpay3eMjUzx6bzrlaEuOXaNaoc8U08oFfVhlSvnJgMUY46sxmnKMued0kFfiIQIRYQkmXVhW0eHq
	udSOdQTIJSPajdzeTUhZJlSgUNC0plt/KwnQGWKPw5DlCKo3Nn2Ny8RQppbuSmltL1S0ufPGXb6qB
	X8+v3L1N4EYPA9AEDXUHjPvC92i3mYpM6yq0mhGAlrv+VuOB78aI2+0QqZffmLVkhk5g89CdII17M
	Ce4Eo0E+UZzY+SjRTVAHAW8sFbtMDTcd0mtmLoRC1NdCCX27n3opWSaCHVyaLIW9vAql+yyEXDTsl
	B6F/pQZg6/7o8x/GR2xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZg9a-0005lp-CI; Tue, 26 Nov 2019 19:05:38 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZg9V-0005is-Qd
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 19:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574795134; x=1606331134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HnPViwKE8q6vsQja/SLcMxaJaNrdHJyfCbZPbQBXsAA=;
 b=q7ZIatwljnP6a9XPhCJC5dI+TomD2ikNefbNGNCllgFs1kgDKw5RkV+K
 IsSvLELxJACenShAeAc3SWngS7UeM+eU4YoQjM7jxzYnqU590J/728aOT
 H+WGVl0qo49SJ7BoBVk6RXzlug1zLT6wOS9UOlJ55sAt/qWwdnlfm2uGy
 V9hgEUdNfeL8vOvUPyKjNW1JelxlyIfI3S4Kcd3Y5xt1/+vbzxJWStFFh
 hP9yVnyJRSGSI6DLDprQ+62AIJ2ciWVU43zdgSJU9RbGKYjEEPi/k2PKa
 FTb06YpN7BwIsudkVGEZUlqwbmJ9JCnqrAnhq46s7ex/t6O0KzS2/N5ep g==;
IronPort-SDR: bvjoXJ2HdQOc3AdnAWnnIio1qhkTPhF4LXb65brJIo2o+0mdcOQ3H2aynQZDO4Xkr760/fs6Mc
 aM6snahOJnepaP8DmNJ/xi3LSB3VeNRdwltUoNlvdCJaYmcLUO5q7r5zTrlnAQybWhPekcZk/U
 Kh0T7tccVqxSaZ4fpOl4se8cCUEtjalIQUkbnXROE+GYTqzVg2YfTJfAO3tMgce1Y6ROY/x+FG
 38dAw82KRfuIjTDDS2/um+aoojo0gaEu1Vi0KmxBMS0oO1ttvCV17ReNbN1KsAOMPt7PeTicPR
 B7c=
X-IronPort-AV: E=Sophos;i="5.69,246,1571673600"; d="scan'208";a="124821883"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Nov 2019 03:05:28 +0800
IronPort-SDR: Kq5KRRylYoltDUSJDzXioZC5WWnGOav/ZqeEfX0BsS2k2eXqux6Q1LrtuoYa2MuDavtpo+oMlN
 EQJeXTofAYvkPCS5exm6zTXebUPqI2ktnEtlrpT/mFWCpw4DhO2QgtBY93JUCWIo4bZkL8YgPI
 NVnJK2hnNmYN/YhMeJjYXqRyeZ1TkdamRQ+GP3CmAeHjScIIOdtAdSRHCDyFdHX4cb4laVhUQf
 7JkcDp9UK8Pwsp9eDRUMK4nxYND60UylUWspHZ+d1xZ406alFg+FnZQuk13NdB61fEbCf7jA0h
 PAEm7NlfVGP9CM2c3lPuAv/D
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 11:00:06 -0800
IronPort-SDR: +fNXAONKPxiOyyg760c6ywWcik4PfVQ89SFSiUYCSVPe4Yp8p6Zt9COP8A6SEJjvgPo1uHedUG
 Noan6hbm7yo3Gs3251nh/bb0bKFzUM+6K3IW2lZcuGdpKpFxVmthRaN+7END7NUzm7+1V8E7HW
 2bSQpgtZUAkNgJF+PR/InL8z4hqIOlokSWGreLlsVe3Ct++mWwvCHDheGzboE9jMYs1Ulkt/ke
 JxCNWj4DwdXUCiuCbvO7+AMXhwZQ96kjxS7MAw+d3ejAUHioZT3MCVSfUzNp3F+U1xEvUB8mlX
 H/Y=
WDCIronportException: Internal
Received: from usa003951.ad.shared (HELO yoda.hgst.com) ([10.86.50.226])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Nov 2019 11:05:29 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/4] RISC-V: Mark existing SBI as 0.1 SBI.
Date: Tue, 26 Nov 2019 11:05:00 -0800
Message-Id: <20191126190503.19303-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126190503.19303-1-atish.patra@wdc.com>
References: <20191126190503.19303-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_110533_867463_0DFEEC0E 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>, Anup Patel <anup@brainfault.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
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
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/sbi.h | 43 +++++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 2570c1e683d3..96aaee270ded 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -9,17 +9,17 @@
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
 
-#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({		\
+#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \
 	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
 	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);	\
 	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);	\
@@ -43,48 +43,50 @@
 
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
@@ -92,7 +94,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 					      unsigned long size,
 					      unsigned long asid)
 {
-	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
+	SBI_CALL_4(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, hart_mask,
+			  start, size, asid);
 }
 #else /* CONFIG_RISCV_SBI */
 /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
