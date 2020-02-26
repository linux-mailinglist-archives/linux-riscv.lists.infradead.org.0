Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0A4170B06
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 23:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1JExgiMD+lH0uVv4idZIhf5/ioPnOKrhLJ1dC6VgFo=; b=doe/BN0JTIBA77
	pDL7LcsIh5qvsV13xhRxRc1PlY7ZnZJ9kdkVG7TjWzdC3+bkms/udvrfUPp6sxOfQL0e1zTLumzcC
	Xe1BXDB0DtZ54QKR881EnEhdd+Ts9hRgh+qpLCxXXOKsi2reFzVU06NkVpR+Xo6RxVzv/fH/219zQ
	q1cdHCU2beHzK6tF5IPbFO5gHpPl29j1ZmjHvNK+HjMBSl+cWRQKNkwjENwN5vQmo3oA/idkFSguF
	9rQnmC9Xp2JIQpT53mRn8JXte8To2jlK/ZyF4q8Nmc15tk30uGnQDsCDOFSU/cyDoSvXcU4/tI7aX
	FbCKbIMhFiJ6GfzIcTrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74lA-0003pm-Iy; Wed, 26 Feb 2020 22:02:28 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74l6-0003ne-0A
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 22:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582754543; x=1614290543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jRyds8eoTAAKDT7JLLNlxolFt94lyE19pGg9nDfait4=;
 b=QYNv3xbQ4dv8q5fO6pgH6JGLrg3S+6a5PLkHQPc4UNL0PoWinV5sQDvk
 lOt9kU4+7ClBHhVEEff3ikwTpIh9aig/tyWtbc/Zh5loNDhA6f4EEh1f5
 IG4iXKMcLLfbVgpKytXxGy/+jPu8c8wZOgp8imjmlpXmE9motqs+ZQclI
 9Fmx4y+g14x/PE0BrGSlOY07GZxZN27i0OmtqFwiqO1+G1VPf3UDUMfZR
 URUc4FBF9LOYynecnvXPKht1z8huOV0IGWKdjw7w/GJW1XINrjjCtaicY
 Gmk5/1UFKfQbpJCy4EVoWvG+JT6qv3W+/8VGH4dIP5yh1voYbVVG2yUfN Q==;
IronPort-SDR: Rdzanhfuh6Vf6lE7Da66SA4Zrx1FtNsMj9CBPWNE8IZfGiqvGZpo/Q+2MVjDj7O5bkdDhqi/EK
 toP6QY14fxA3gw/yeE8IhTvLdE+Fkxzp+81b/y/B33FoFytxzcvNiGJ1+Un+REcB4z+VJlFk7G
 FYnANblk/53TcQeWzgUj0tJcHPBjstd58GoMt5LoL1Lcc/C5qdz8q5ZceClpJGTY4oYvDzp7U0
 RnFpQSEh87SxoJoKx0/3obqtoJGRYC2FORy3kUAraEIx54zNDVsU/xZ+f47ns+Sf5ERu/fgDeQ
 fKk=
X-IronPort-AV: E=Sophos;i="5.70,489,1574092800"; d="scan'208";a="238981814"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 27 Feb 2020 06:02:20 +0800
IronPort-SDR: dgFUxnvbW6iCVvcwo5QCO1Au50vHf/GmhylT4emLr9Z1kfYq2o35KQ2GBE23V4J29eXaYqxxDJ
 hgiAQompxfbj7dfbe4IbZJw9S2qKLc4pXhTcbhN7m+IfNZpicnTgy/TKaD24foR7FZlAEg8Gh9
 4ukyRpKhUeVdPlzNbl199kIjQdmm8/m/uLQZkCCrzERxTrQ40iBRUezbj6gl4mqYPmSCPqtL2r
 uwBLSlR3ce6iyShwnxyWmb97rCXHYPvQW+IgZ6Ns+cp6DFAxSzwoblgJdULqMBOMtvZwTbl0j0
 9rQxBrQcEEmBlg1MAMb5AoxP
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 13:54:45 -0800
IronPort-SDR: mSlcY6dyF4dBL8ImVFBxA3zdVutQAuezz9OKXsX6CdcMko8fUm2UIoA4teKrnODrnMTChKTJSx
 CgHq/KtB1J9K7/na6uXIxu6dxtO8CfpVhYuW28iXGvq0H63z47EbDP7NELB5CyNFNixnxYOp+b
 PZ05gBEngHdH8FFJ0S0CogK2HmUoCWSzPeZANFjTt+hCwRHfzzmdHXiz09IHa6kaEsTeH8ZhP/
 rlogz0iQi4eQXt0YPrl6+YCRZulGCJbBpOoPhlmphC7iNY/U1kTLOEjloUmOVKmNze2uXtgiGJ
 O4k=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Feb 2020 14:02:20 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v10 01/12] RISC-V: Mark existing SBI as 0.1 SBI.
Date: Wed, 26 Feb 2020 14:02:02 -0800
Message-Id: <20200226220213.27423-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226220213.27423-1-atish.patra@wdc.com>
References: <20200226220213.27423-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_140224_053045_85D3A00C 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Madhavan Srinivasan <maddy@linux.vnet.ibm.com>, Zong Li <zong.li@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michael Kelley <mikelley@microsoft.com>, Atish Patra <atish.patra@wdc.com>,
 Gary Guo <gary@garyguo.net>, linux-riscv@lists.infradead.org,
 Mike Rapoport <rppt@linux.ibm.com>, Kees Cook <keescook@chromium.org>,
 Marc Zyngier <maz@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vincent Chen <vincent.chen@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Anup Patel <anup@brainfault.org>,
 Steven Price <steven.price@arm.com>
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
 arch/riscv/include/asm/sbi.h | 44 ++++++++++++++++++++----------------
 1 file changed, 24 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 2570c1e683d3..3db30e739c8f 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (C) 2015 Regents of the University of California
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
  */
 
 #ifndef _ASM_RISCV_SBI_H
@@ -9,17 +10,17 @@
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
@@ -43,48 +44,50 @@
 
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
@@ -92,7 +95,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
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
2.25.0


