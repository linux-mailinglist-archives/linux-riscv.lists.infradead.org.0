Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DAC189383
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 02:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nj95covzh6pKBRACc+ZMgUW+nACK5dnkjBXCnasC134=; b=rgbn1mONwcYCSn
	RVBOf0geXnDNdhozEKBsd0/uXwVLQubUDiX2B+YhA/0+CYclWipljIJI7fnYR9TBENoc7YDdu/qfx
	zCV5B5ce5guYoZy6EnerWbKZ0Ip8qmUbORJ1mitlQVCEiJJzrwMYFtaAr2m05Al8wkafdPV6ultuB
	KhZFsfylB7+b+jx75zC1geCnNymYnVpUrJapgR4VTXDX+spmUnrDhQw9jyP98UIoAdLdvDz57rvN0
	wg+qB42mkEDayFhrrsK0Lde7NLlExQoCbGcxUoVsJQZg0sEx3Mxhy7cazEIWNJYP+vJPCM4GQ3q/X
	VVxOJufhoPrR58nuJ46A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENFr-0007Bx-JO; Wed, 18 Mar 2020 01:12:19 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENFc-0006um-Ok
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 01:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584493925; x=1616029925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vKrUz+xg5193R5R2QD6sHPvXr4GmfWWm9BHn5r97q2U=;
 b=bqRLEMreNk5pNCi0m/ou1lRJfRpmpIyC+6HhQB7OEyysFMG9opuiLCyY
 alnJ3VRm+ecqT6f3Lq6SmEq4bu+zY+6WELxBJVqbNMuNVR5bADIwwACDr
 QDHa/GfGoMFu6hNFxN31TIHlkCFsjNTYh6grGju3how0HxIwURVlvNFan
 A7l2xDeun5SMTjsue5abW+zOJYq4jrqYRoXfLNVB2TuGC4CINkrby32wM
 h5qGmlc20gUXc/e/kU7pJJV5vPWJhcwrFZyXXJtcGzv9eag+SWevXKcn6
 3W/ONUUDFKjRELRg85tz09TUbo6rqGsrlfslY4McLyeESSNztJEnBlHoe w==;
IronPort-SDR: mYV3NKIvoAKmhmZ8A0t0FASTEzpTYmwzzglEg7Cr/D64gU2jW7ZhglytkduuDpJ7B3xCdHHhtR
 rHyzsfZ8L6WiMTIbVgnoEH9GSsVZYm39FT5czCRnzjRkNcetZzgUDf+Rnh1RZbNKTExAkZP033
 8f5zXyDqop7OO++A8Jz/XE9003JT6n4oLVUazCZ223u/e5jr/xlnv44sFalobP4YR1PEPDadrG
 4Y6xccL1N6nfVyJon6u6G6MeTA6TeOQCgCNSgab+JWi+mV2MxLCDiq/pYbVayJ850CjlS2CD/I
 yXU=
X-IronPort-AV: E=Sophos;i="5.70,565,1574092800"; d="scan'208";a="134242153"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Mar 2020 09:11:58 +0800
IronPort-SDR: 7bwxs+S+nzrhtbfzeP4vucVmKo7tSh+Y6dWeN24+lJQNSRuyVlDy0Qg1iPBs3gkFBUu4riQXfa
 UfevgtPvvWXXXiAQJaKPo1nbjuo6OaZnra8C7ElqZOhHDSDf8dbqHUjQFgYhGGd9H20ytew/Ih
 OzS3TkGeSMICpastBuG1bKei8KvPTaVmnGivnRFArQ/wBfi2cOmCPWZ3WhH/65dkJkgBNzgi1B
 vENHrYnTp5MGLX8vj1zo6c8UcRrOZhsRYAotiobggPmqxtQkQ4BmswlP6ZFfDYCEM3wonBC2xo
 R2rY3tVuh9aF4DJ9LsPKHR5q
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 18:03:25 -0700
IronPort-SDR: Zzsqh3K4c1R/p9+SJYJMtUAf/6eUSBi6C4L6SjmedTFMfvS8C9LfXtLTZlXfe3QzQjJNsX9pYo
 tn+JeQzbvcw6rsi2HEd+YDe6xdAeWfIZFqgE3fqqGrnoBLsUfDZy0bEqRPl9lPq2BrM/8axL9m
 RZSsaJuMoRA7Lr6ajmfgxep3Vh2JJtl25oOQFF4HyWQAz/NsH4LGVEc7cUG8g9q9Dy5oEypxwa
 hMtYo5pJ83rxXPZJqY7yOJG2WYGnfZGBRboTUoZHwnn93CT1A9Zq0ADUyyxwcTphxEs6ZIujdc
 gM8=
WDCIronportException: Internal
Received: from mccorma-lt.ad.shared (HELO yoda.hgst.com) ([10.86.54.125])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Mar 2020 18:11:58 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v11 04/11] RISC-V: Introduce a new config for SBI v0.1
Date: Tue, 17 Mar 2020 18:11:37 -0700
Message-Id: <20200318011144.91532-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200318011144.91532-1-atish.patra@wdc.com>
References: <20200318011144.91532-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_181204_865292_32FA3749 
X-CRM114-Status: GOOD (  15.89  )
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
 Anup Patel <anup@brainfault.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We now have SBI v0.2 which is more scalable and extendable to handle
future needs for RISC-V supervisor interfaces.

Introduce a new config and move all SBI v0.1 code under that config.
This allows to implement the new replacement SBI extensions cleanly
and remove v0.1 extensions easily in future. Currently, the config
is enabled by default. Once all M-mode software, with v0.1, is no
longer in use, this config option and all relevant code can be easily
removed.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/Kconfig           |   7 ++
 arch/riscv/include/asm/sbi.h |   2 +
 arch/riscv/kernel/sbi.c      | 132 +++++++++++++++++++++++++++++------
 3 files changed, 118 insertions(+), 23 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 1a3b5a5276be..20c6191399ea 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -308,6 +308,13 @@ config SECCOMP
 	  and the task is only allowed to execute a few safe syscalls
 	  defined by each seccomp mode.
 
+config RISCV_SBI_V01
+	bool "SBI v0.1 support"
+	default y
+	depends on RISCV_SBI
+	help
+	  This config allows kernel to use SBI v0.1 APIs. This will be
+	  deprecated in future once legacy M-mode software are no longer in use.
 endmenu
 
 menu "Boot options"
diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index f68b6ed10a18..d712b61f8dbc 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -11,6 +11,7 @@
 
 #ifdef CONFIG_RISCV_SBI
 enum sbi_ext_id {
+#ifdef CONFIG_RISCV_SBI_V01
 	SBI_EXT_0_1_SET_TIMER = 0x0,
 	SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
 	SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
@@ -20,6 +21,7 @@ enum sbi_ext_id {
 	SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
 	SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
 	SBI_EXT_0_1_SHUTDOWN = 0x8,
+#endif
 	SBI_EXT_BASE = 0x10,
 	SBI_EXT_TIME = 0x54494D45,
 	SBI_EXT_IPI = 0x735049,
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
index 4aee0b49df3c..1368da62ec82 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -13,6 +13,12 @@
 unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
 EXPORT_SYMBOL(sbi_spec_version);
 
+static void (*__sbi_set_timer)(uint64_t stime);
+static int (*__sbi_send_ipi)(const unsigned long *hart_mask);
+static int (*__sbi_rfence)(int fid, const unsigned long *hart_mask,
+			   unsigned long start, unsigned long size,
+			   unsigned long arg4, unsigned long arg5);
+
 struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
 			unsigned long arg1, unsigned long arg2,
 			unsigned long arg3, unsigned long arg4,
@@ -57,6 +63,7 @@ static int sbi_err_map_linux_errno(int err)
 	};
 }
 
+#ifdef CONFIG_RISCV_SBI_V01
 /**
  * sbi_console_putchar() - Writes given character to the console device.
  * @ch: The data to be written to the console.
@@ -85,12 +92,34 @@ int sbi_console_getchar(void)
 EXPORT_SYMBOL(sbi_console_getchar);
 
 /**
- * sbi_set_timer() - Program the timer for next timer event.
+ * sbi_shutdown() - Remove all the harts from executing supervisor code.
+ *
+ * Return: None
+ */
+void sbi_shutdown(void)
+{
+	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
+}
+EXPORT_SYMBOL(sbi_set_timer);
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
+EXPORT_SYMBOL(sbi_shutdown);
+
+/**
+ * sbi_set_timer_v01() - Program the timer for next timer event.
  * @stime_value: The value after which next timer event should fire.
  *
  * Return: None
  */
-void sbi_set_timer(uint64_t stime_value)
+static void __sbi_set_timer_v01(uint64_t stime_value)
 {
 #if __riscv_xlen == 32
 	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
@@ -99,27 +128,78 @@ void sbi_set_timer(uint64_t stime_value)
 	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
 #endif
 }
-EXPORT_SYMBOL(sbi_set_timer);
 
-/**
- * sbi_shutdown() - Remove all the harts from executing supervisor code.
- *
- * Return: None
- */
-void sbi_shutdown(void)
+static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
 {
-	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
+	sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
+		  0, 0, 0, 0, 0);
+	return 0;
 }
-EXPORT_SYMBOL(sbi_shutdown);
+
+static int __sbi_rfence_v01(int fid, const unsigned long *hart_mask,
+			    unsigned long start, unsigned long size,
+			    unsigned long arg4, unsigned long arg5)
+{
+	int result = 0;
+
+	/* v0.2 function IDs are equivalent to v0.1 extension IDs */
+	switch (fid) {
+	case SBI_EXT_RFENCE_REMOTE_FENCE_I:
+		sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
+			  (unsigned long)hart_mask, 0, 0, 0, 0, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA:
+		sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
+			  (unsigned long)hart_mask, start, size,
+			  0, 0, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID:
+		sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
+			  (unsigned long)hart_mask, start, size,
+			  arg4, 0, 0);
+		break;
+	default:
+		pr_err("SBI call [%d]not supported in SBI v0.1\n", fid);
+		result = -EINVAL;
+	}
+
+	return result;
+}
+#else
+static void __sbi_set_timer_v01(uint64_t stime_value)
+{
+	pr_warn("Timer extension is not available in SBI v%lu.%lu\n",
+		sbi_major_version(), sbi_minor_version());
+}
+
+static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
+{
+	pr_warn("IPI extension is not available in SBI v%lu.%lu\n",
+		sbi_major_version(), sbi_minor_version());
+
+	return 0;
+}
+
+static int __sbi_rfence_v01(int fid, const unsigned long *hart_mask,
+			    unsigned long start, unsigned long size,
+			    unsigned long arg4, unsigned long arg5)
+{
+	pr_warn("remote fence extension is not available in SBI v%lu.%lu\n",
+		sbi_major_version(), sbi_minor_version());
+
+	return 0;
+}
+#endif /* CONFIG_RISCV_SBI_V01 */
 
 /**
- * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
+ * sbi_set_timer() - Program the timer for next timer event.
+ * @stime_value: The value after which next timer event should fire.
  *
  * Return: None
  */
-void sbi_clear_ipi(void)
+void sbi_set_timer(uint64_t stime_value)
 {
-	sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
+	__sbi_set_timer(stime_value);
 }
 
 /**
@@ -130,8 +210,7 @@ void sbi_clear_ipi(void)
  */
 void sbi_send_ipi(const unsigned long *hart_mask)
 {
-	sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
-		  0, 0, 0, 0, 0);
+	__sbi_send_ipi(hart_mask);
 }
 EXPORT_SYMBOL(sbi_send_ipi);
 
@@ -143,8 +222,8 @@ EXPORT_SYMBOL(sbi_send_ipi);
  */
 void sbi_remote_fence_i(const unsigned long *hart_mask)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned long)hart_mask,
-		  0, 0, 0, 0, 0);
+	__sbi_rfence(SBI_EXT_RFENCE_REMOTE_FENCE_I,
+		     hart_mask, 0, 0, 0, 0);
 }
 EXPORT_SYMBOL(sbi_remote_fence_i);
 
@@ -161,8 +240,8 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
 			   unsigned long start,
 			   unsigned long size)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
-		  (unsigned long)hart_mask, start, size, 0, 0, 0);
+	__sbi_rfence(SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
+		     hart_mask, start, size, 0, 0);
 }
 EXPORT_SYMBOL(sbi_remote_sfence_vma);
 
@@ -182,8 +261,8 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 				unsigned long size,
 				unsigned long asid)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
-		  (unsigned long)hart_mask, start, size, asid, 0, 0);
+	__sbi_rfence(SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
+		     hart_mask, start, size, asid, 0);
 }
 EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
 
@@ -249,8 +328,15 @@ int __init sbi_init(void)
 
 	pr_info("SBI specification v%lu.%lu detected\n",
 		sbi_major_version(), sbi_minor_version());
-	if (!sbi_spec_is_0_1())
+
+	if (!sbi_spec_is_0_1()) {
 		pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
 			sbi_get_firmware_id(), sbi_get_firmware_version());
+	}
+
+	__sbi_set_timer = __sbi_set_timer_v01;
+	__sbi_send_ipi	= __sbi_send_ipi_v01;
+	__sbi_rfence	= __sbi_rfence_v01;
+
 	return 0;
 }
-- 
2.25.1


