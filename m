Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7A1100F11
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 23:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZ/6NgrdJFsXmX+kc078b9EHIlQcqiePvIiLTIckIjs=; b=Q8dDO48JKoswn3
	L0NHlc/gOUAQdBTEAyO6YH+LB9+w2mCG28klQGO1sKCuzt2X/VnAfNqhEgOgz6Fqgzj3gYlE/+Z9q
	XKLGK1i4/ysRzksGsL7JaXyhdc5ko7rxtRnYmyZIWOlhuTZdq6MD3i1MoVfBAiWU6QG864Hy860S2
	kxSDsiNaTL3tGnYD2UFTAxOZJJK2h6S3CzsK1tfc6B0Iw+gCehTtTEEUde2jJKfmLRoiyciDBz6/s
	pfK1ZSt7+Ls9k623p6RGE4ucXWs0XAAx2cN9evMNmOhVJvQpdLHjzfTpsj5HXBQ4ZDa8kFfHReeYk
	IRhfkS0PwCojG6DsnCUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWpxO-0007Lt-HG; Mon, 18 Nov 2019 22:57:18 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWpxH-0007G9-Kw
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 22:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574117831; x=1605653831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/+BAvaHz+N+7XuCnyGB3EMvAUV1znsWOwLjOz3dJZA4=;
 b=dWcAnMBg3lCCZQfIILbhzn87uSGXKzLiUiLL6WRX4f0ICKrZnVhDN6rr
 eiga4dmljKCg+66LvKEYN+V/I4KSX6FG/xriZVKrC4+uBM0C7ebta8+aj
 LJykOMp+XbLwVSyol6/xRCYRtI9MvcIAK9tbkslW+8Q0BhoAPVoxyTc9N
 1e1Gf8MwrVE6/NeKwpmQOGoWCH51NoAvt9nWo8VG28DmSe4TAVvEs96uL
 m6kaqFWDdWOVtR5jg6ciS2567LUyQeUzcDNccVnkcGdQCAqnlxfKUAeBP
 DB7hAbsaEtbCkQBzdYCAHXTD/oOZc0SDT4o//D8xLdl48TsvkiWKCI4Kv Q==;
IronPort-SDR: sW7o4OUsXuFLzwtSqmmvfs8b7sVOvMwcqDleEa05qPVDjQrjaC+zYlA0lFo2riOUDdC2nFtxDX
 TvjNXIYQfayNZvD/cHO0xOzI4asrouuXL5vpQLKtY4YDSU5yo06DY9K+C03zpQavYryJZoMr19
 p+kT+/oG3uE30zKiTkx3y661fQjLeH26pu2CrmYLcq971+r/rJpSa1Y9/49s4nGYQfPNPDyKYG
 77Cm/Ssry+oB0EUeJNcC2DSTAE/vqqbevbc4jiXMaKh7pbSfaVPKIV/Unym20Ts7LUBb80MNHG
 WWw=
X-IronPort-AV: E=Sophos;i="5.68,321,1569254400"; d="scan'208";a="124142825"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Nov 2019 06:57:05 +0800
IronPort-SDR: RcFaD+AJTQb6vf5UDqW/4T361B8Kr0x++uSXsj+kuR+/MSqhW8PTZCvghcPd/XqJtkzkepunTn
 8B94Tc/sUyeid8Ko9i8zyz+Q4yS6AcC0jVJRt9mnfYwoZIw8hQxrSqdTzngGx4gkJMlD1/Vq+u
 dfP+EHcaZVN2KjiTrhWZdCbKC3bp5kpGvmI+UXof7JSNweE9ughoT3RTnFDW6XNh8jgDCyr2BR
 bcc/tDg09zkZPeLv4nJJG05n2hHelBIYMu8gf9ydJ2iPFB+Ww0b7iACXmAWXiep5V1cK9f/Fpd
 HRhtO+Te923XDjldRGchglmH
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 14:52:19 -0800
IronPort-SDR: mA89hvIC1dzzDvS1rNIdy/3mESYjMmS8+jqWnX1hc8WhQwMZVePBEiHQlbPOWt1FQ0h03D879t
 ARCLJyxvCIIRFjxxAF/6vkWClzrHf6psvRVvtm0bJpXyiyhAlZxrXAhTZAPOGZLxbC6QmYfU/o
 zsKhzTRFS/INGrVLclYmUzQvw0yxQ07dcJlkxU30rMKsraw1tWb3hGQ2YFiI2UcH10RDx35L8I
 d2ZNOxCUpEDG1rbrfffzFlr1bkbZK7MG8GCyVoL+21G57YSNqqRuwxJeII1aPkbjwcjs7AUQ7Y
 62I=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.237])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Nov 2019 14:57:06 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] RISC-V: Mark existing SBI as 0.1 SBI.
Date: Mon, 18 Nov 2019 14:45:36 -0800
Message-Id: <20191118224539.2171-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118224539.2171-1-atish.patra@wdc.com>
References: <20191118224539.2171-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_145711_716567_ACF0D398 
X-CRM114-Status: GOOD (  11.28  )
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
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
