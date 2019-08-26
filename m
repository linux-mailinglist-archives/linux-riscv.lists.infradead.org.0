Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFFF9D9F0
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 01:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urXtUE/97GJnbHDyW8kl2LTuVN0J6Zmy05dD3mjyXsA=; b=WxUgpd+iBEPX3V
	ItI8o/LAaXiQua4ORMXa6C4NUO6+Olb9+ML0yozu8Xu6jmMzOc1g9Eu5Ivcu5FEDH1bjShQeL8vSi
	tpT0ZArliuQAdhzjbA31Jz5jMFpn2v/gCnTTrrwqYSICGMAUcmAa1BVfC2BWjLDe7tae7oebotiiC
	Usn3wjqKj7W+iCzh0GV33dyWk8oZXZw8JTKLVEtogCQRAa5+mPqGjI3ADQy15GkWW7fhmPvp6LtJh
	jCuQLT19bpU68lbe+NKqByWZ1UtG8CGSmcIijipxQWXu3UxTDHk3rJZ0VQxVj3sSfaX4Fq6kh9/Oz
	3iI/x53mSS4b3pRmbW3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2OUT-00043V-0N; Mon, 26 Aug 2019 23:33:37 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2OUO-00041k-Kb
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 23:33:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566862413; x=1598398413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HBuM9mRogJeuAhVBz/AwUtILAVrCxrWKJVjNr8ehU94=;
 b=HxIPkQTkWhogW8dwrQjwHD/apfH2srQSEi3evMU5UIzNBUBIGb9ppG7i
 NE2BPmYrpzvNbArbRwPtnJZkLIeM1Qzo5rfT9V3zi36h6WKBEa3mDUg2s
 w9iRTp+t7Oc/qvHbUS8QpY4Q4F3LukJXQdxzbjK06yy1VqYJBhOJpC6PI
 OCd94DarVspjXfdl9MtkiNz9yurORZgyyH/yl8t+T2pRPXdaD6Gwr/S05
 cY0MS66unJwoB62uvMn3gofEQpdAC00WNpmbzl8ZU8JFVjbmOKE/jHrzd
 cWFe/Nkzd4amBA7Nq7MfdcTiVNwLuyuHVkGLynJSc/wwCXs2oyDzsOqxO Q==;
IronPort-SDR: zWC8P3kGZI3Tunh8+O+i1dcdEwE0kmB8GHbc8v3sVHYmRsuOjh4ZNRqPFv4kUYnJBsMB6aMzz/
 g/9QOumRlgFJ8HGNoV8OQxn51Gfm8Dl0CFrWGTKcLcPzhQerLTjDtgQ4Sfh+bRqSpzw/wVq0no
 tikC65IZePza1M5rOtoEBnTkN5c/Ouq2HtbuDkiSLK3fsF6JzVVcYZYyCdIxoTviSGfRjOqeHt
 nGPoEuslPZ6K5Sjfx/xf1LhL84868Zsewoki7lkgt64d297JLv3PREZKH/fS/X0qvwkFbMEcFt
 XuI=
X-IronPort-AV: E=Sophos;i="5.64,435,1559491200"; d="scan'208";a="118308326"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Aug 2019 07:33:27 +0800
IronPort-SDR: wRiW2J1r86x9Ib9aYtVCKKr/r6yq4pOd482FMBLp/JGD17B+8z6kD0SuuuOLvH4EyJf+b2X4G9
 b1FVj4RvOH7hagdk8/IfeSEnGqQymSynQSeS5aFVslItKrReNhlQVtd9KIRrQWaytiMI3zFa7K
 5kHsZqnKtauZhV6FP3jaVe21HjSIQM148N5pAw0a4819Px5+vlrqG+zoQ2U94dTqzs4lY2rb9F
 +0cTQWMVRU3MdzTmd0DQxfr3Xuvd8EeRctodjecE1xE7bbtda2eUHteSF6YYDpJV1sunKnDf2+
 bIaYIVK1IvVndlS4LyekQFth
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 16:30:39 -0700
IronPort-SDR: VOG8eo+i8O55DIxvjUlBT6lQ8Lp1YRR4ZqyqgWU1pw0NJguuGPUzQGtMOg7MeA+i62MfrhxX1/
 p5Bl9KsmHhQwCOMg/X3LkHor8uE/9fZWr+A7bCcSfbAt6EAc4s74/MOxNYvi7+zaVab7XZ55hn
 s83Hro7DAa/yqk/sIOuw76v9PU6t3TMO5ePGJgY/xysGURyiH5/vcO4LC0R1MNRclvj1EmzNjm
 xXWuszoJLx3/oOdsNK2uH3VMMYaJDS8WnG05VQgcfJF7zfKWKIa+NzEd//Y+W4j5tTevCZ5ulZ
 84s=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Aug 2019 16:33:27 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/2] RISC-V: Mark existing SBI as legacy SBI.
Date: Mon, 26 Aug 2019 16:32:55 -0700
Message-Id: <20190826233256.32383-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190826233256.32383-1-atish.patra@wdc.com>
References: <20190826233256.32383-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_163332_719769_CC8E6D8D 
X-CRM114-Status: GOOD (  12.09  )
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

As per the new SBI specification, current SBI implementation is
defined as legacy and will be removed/replaced in future.

Rename existing implementation to reflect that. This patch is just
a preparatory patch for SBI v0.2 and doesn't introduce any functional
changes.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 61 +++++++++++++++++++-----------------
 1 file changed, 33 insertions(+), 28 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 21134b3ef404..7f5ecaaaa0d7 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -8,17 +8,18 @@
 
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
-
-#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({		\
+
+#define SBI_EXT_LEGACY_SET_TIMER 0x0
+#define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
+#define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
+#define SBI_EXT_LEGACY_CLEAR_IPI 0x3
+#define SBI_EXT_LEGACY_SEND_IPI 0x4
+#define SBI_EXT_LEGACY_REMOTE_FENCE_I 0x5
+#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA 0x6
+#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
+#define SBI_EXT_LEGACY_SHUTDOWN 0x8
+
+#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3) ({             \
 	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
 	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);	\
 	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);	\
@@ -32,58 +33,61 @@
 })
 
 /* Lazy implementations until SBI is finalized */
-#define SBI_CALL_0(which) SBI_CALL(which, 0, 0, 0, 0)
-#define SBI_CALL_1(which, arg0) SBI_CALL(which, arg0, 0, 0, 0)
-#define SBI_CALL_2(which, arg0, arg1) SBI_CALL(which, arg0, arg1, 0, 0)
-#define SBI_CALL_3(which, arg0, arg1, arg2) \
-		SBI_CALL(which, arg0, arg1, arg2, 0)
-#define SBI_CALL_4(which, arg0, arg1, arg2, arg3) \
-		SBI_CALL(which, arg0, arg1, arg2, arg3)
+#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0, 0)
+#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which, arg0, 0, 0, 0)
+#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
+		SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
+#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
+		SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
+#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
+		SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
 
 static inline void sbi_console_putchar(int ch)
 {
-	SBI_CALL_1(SBI_CONSOLE_PUTCHAR, ch);
+	SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_CONSOLE_PUTCHAR, ch);
 }
 
 static inline int sbi_console_getchar(void)
 {
-	return SBI_CALL_0(SBI_CONSOLE_GETCHAR);
+	return SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_CONSOLE_GETCHAR);
 }
 
 static inline void sbi_set_timer(uint64_t stime_value)
 {
 #if __riscv_xlen == 32
-	SBI_CALL_2(SBI_SET_TIMER, stime_value, stime_value >> 32);
+	SBI_CALL_LEGACY_2(SBI_EXT_LEGACY_SET_TIMER, stime_value,
+			  stime_value >> 32);
 #else
-	SBI_CALL_1(SBI_SET_TIMER, stime_value);
+	SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_SET_TIMER, stime_value);
 #endif
 }
 
 static inline void sbi_shutdown(void)
 {
-	SBI_CALL_0(SBI_SHUTDOWN);
+	SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_SHUTDOWN);
 }
 
 static inline void sbi_clear_ipi(void)
 {
-	SBI_CALL_0(SBI_CLEAR_IPI);
+	SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_CLEAR_IPI);
 }
 
 static inline void sbi_send_ipi(const unsigned long *hart_mask)
 {
-	SBI_CALL_1(SBI_SEND_IPI, hart_mask);
+	SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_SEND_IPI, hart_mask);
 }
 
 static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
 {
-	SBI_CALL_1(SBI_REMOTE_FENCE_I, hart_mask);
+	SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_REMOTE_FENCE_I, hart_mask);
 }
 
 static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
 					 unsigned long start,
 					 unsigned long size)
 {
-	SBI_CALL_3(SBI_REMOTE_SFENCE_VMA, hart_mask, start, size);
+	SBI_CALL_LEGACY_3(SBI_EXT_LEGACY_REMOTE_SFENCE_VMA, hart_mask,
+			  start, size);
 }
 
 static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
@@ -91,7 +95,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 					      unsigned long size,
 					      unsigned long asid)
 {
-	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
+	SBI_CALL_LEGACY_4(SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID, hart_mask,
+			  start, size, asid);
 }
 
 #endif
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
