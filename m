Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FB7109811
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 04:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhnUHtvsl3yPPKX4Jtn1RKa8NU275Sggx1yVIGy68JI=; b=aaUDaRs25ZJrVQ
	DFTQdK6o+I9l+j+/dhNCxqMWa4EXJ0OVLcUV6dif4eAw01lJeCdNEO06+EZGegz2AvY9omaX9ug9I
	VEYLt7ore/DX/Z/nKGwit6bu6tDtd1ueSZEEefePxxiVD2wHnmf1166+ZwapWyu2o4cl3S5YpZ3Sy
	hetF1Z1h5anKx9Anmr7WIVl2PzHqkWWlJ9UnCR69mQG/i9nl6/sRnVmAEbuRawybBt88c1sRL5zWU
	Gzs6exHbm9LQk7FiUd8Uq/NFkg+D3YfGeqPK9BEr1p7nKhADHxkDNC9fewguq3j6qrc2eApzHdYi9
	zv2F7Qvq+n6y1zGXAIkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZRPD-00081Q-O3; Tue, 26 Nov 2019 03:20:47 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZRP8-0007xi-Mu
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 03:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574738442; x=1606274442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3msswi1L8Ks5wZg0/7wdqU8PmVWmbpisj9uZJ7Kr3ao=;
 b=pzE4OKmxSciFYACdeEofosa/9PmnwexIW4vr6IbRh9Ob4DLKQt9FhOfm
 QlkbLCnnistnnar9FtSL/Q4i3K9w5m7l93S+hp5Lgf91EIYCe0MmPKVjS
 uYe3q2hagl7w1qiQ+LsRYw5aGIn3eAnve56wDREAcypwTdlm0FQwgjfI/
 fMPepyYDgIOxHMN+VOSeU/htZ4w9sX9PbDbFwO7Lk+Vux330F8iwCGM0R
 EK7AIJm5fm7smvH4huFTybx4FI9Kk8k+gln4WMM1ITDp/SSwaQMPKKnxV
 TV9BlDxwxb3t+BR51EI9+/Efk83AUbEvsbKDjoS+AcWSwlLvRyBAchnVY g==;
IronPort-SDR: pgXfBu5w/OPUm6TJk5cmZHfuEJez9So4Dldpo/p47zYk76nNI+rpuJBvDzHeGxLGQGZOtGcz4Y
 u4cg67LYdj0+H+AIXcWQ2KKUaYGj3uXIoPe51FNTi/NrL0HqOnDjF0qKH86mGwXsHwWkXF3D3z
 EOMqrfHPId6PfRKicM9h5Mzll+eblt0KvXOyaAo0WgINPc7WT+VQJDlfbcAT5Wk9uSMPYhBUpI
 5xx6DA0vtoSPptdvcE/sKyMt4bogljHNPkc1LG83XzhyKqKko6JLiYyDHqq/kiwCKABqXoeyIC
 Wk8=
X-IronPort-AV: E=Sophos;i="5.69,244,1571673600"; d="scan'208";a="123990269"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 26 Nov 2019 11:20:37 +0800
IronPort-SDR: 7W272A+BX/DrY0U3ovzp2pi4msl1VocXpurDImrt0D1nbwE9uQWCLr9JlBoghVce0xaVbWUc4J
 R90GOEJ80kIL0SCzb1oW/GWbWXFv65kh1i+vpSdqlzf7yYDyJReJs4jMFarLQeWGFwV9nx/OS9
 Xk0DS8M1EwT25i1N3o8kRrfNW6BctMMmBzkyX5APIrkoy03GrXoYQSF9HS9981kcS+EOMGZ4SM
 R8NXY7TyqIuYOcRr820OD2ugcsmrCMTcQ/gs4jFcM5RXoeucHjHgTOfMVLxLScWUdTq3XTcoBm
 OELoNNFVMfmy4tSidHgm104G
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 19:15:17 -0800
IronPort-SDR: w9itRxrTp7+z+XJ8tiL++ldN14+tqtCnpkhNSDO6JRW3tsE0Orhyj3GM81wwQFXtHbGkEJbDq3
 vhCQHOFThZQYvHdUpUe81+zhAcpPG63NhDSOnwNYEKZKjtm0GhvD8H+z/sJjY2Q3gu87oCoS45
 WWMv2GwTXWDylAQIocP5CWttmSRz/af7+ljlx3bpMyQEY6v1k0ijoTvm5/hm4gwG2lLX49+ZBO
 8b9gGJK3J7KfFZX8+XzqpO4vVcxEN6T8YRJNTIJC0gqCxJ3OmmbVEjPqCv0nigxd+6ORXhqt4J
 gmc=
WDCIronportException: Internal
Received: from usa003951.ad.shared (HELO yoda.hgst.com) ([10.86.50.226])
 by uls-op-cesaip02.wdc.com with ESMTP; 25 Nov 2019 19:20:37 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] RISC-V: Mark existing SBI as 0.1 SBI.
Date: Mon, 25 Nov 2019 19:20:30 -0800
Message-Id: <20191126032033.14825-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126032033.14825-1-atish.patra@wdc.com>
References: <20191126032033.14825-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_192042_783652_F6C8C31F 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
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
