Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2FD14AE18
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 03:28:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VYB2H/KqfC+KAeh13yGZPYWmKT7vxlcVbLdm3W8it8=; b=ZTShtnB+9gpwAM
	Lamb4fBXDduh2vIEHlCYF92trUJQH8a+puaAwK1csIRVdqqJ8KiFoYIk2ELxG4aQCjM3V2ItCEZvZ
	OADHfIK+fBDko3crB/VH4KJ9ncHaRh9DN7TBoqlcG1vpjBR7/xxJEMXUvFnf3QC80TfNTEiWzfZ+/
	oobgO2Gk7xGxP71vwr4VeIiP8mFRjwZ6iTFW8zFMnKMcJW0F509YOCeWcboOP1S8maaVHknUU2fR1
	X6Z7ur8WU0si78ltvPcCqSIq36k91Qcc5IItWLajux0UxEGuj7cPt6QO2KM6NPHn0iXiFGCcKvnft
	kDmS6Gkuz3KjCxaSgMxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGcA-000689-0K; Tue, 28 Jan 2020 02:28:30 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGbr-0005pr-Ge
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 02:28:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580178512; x=1611714512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lLnSSp5V0S7IlrLQUH6dCPgzF3vGX5c4jvbyzeIJGbU=;
 b=FpQURkw/ogu8Fw+L9xe8dU4gdaRA0C4/jx9v7EIjz1ozO1kG+tA/dogV
 k8WbAuXGkaWCWyV08VHLTIILjUz0dnfaHSeLLjsWfEyZlIJOGo55ZuLGS
 y0uUs9s+bA0trWZhm5H8I2ASZc9q5JlCErgNQpFMgYE9X/TiXlgXv2q1D
 6BF8YuUT36S1Ypxsy2aQCezsGlLu8gnvt6BqPnI2HHQ7/eNVkuZ1iIdy7
 rY2Ro/H8izzy8fxK7OWJOgXVY80JhNTTOa8i5j+6quw5u/gxDNb54Xq3E
 woK52mTy2CFGP1cFMpgcbh4FQBhAPGCVB8YDx0yB55FRvi6ggwWBYweRz w==;
IronPort-SDR: 8VeYSvLldwssHWtzzhcX0NOFSp+mFCxXe3dyMJyzT1bRgkSLV+7M16Hg5vhSQUEOm+0UE9Il3K
 oBPRQ8WHy+9VPeNNWuz0Sm4R1s/anpzryjw8NtDfJXXl/haOOWawVZAvAlaeDdBDki9BFOf2+s
 kkIlZzs8EGpuJmnejJm+3/ph4E2hUBpLN27dxsGqslRbDOO7UTEqxKmeGS9sOgpwPWmlOFLGWz
 sHI5E0W5lGfzmKobzvIxDuWK1uMxvnVeDW9HfcrqgdaRCm6bKgDwcqro1x2HRYzQ8eyRTIFabT
 O9I=
X-IronPort-AV: E=Sophos;i="5.70,372,1574092800"; d="scan'208";a="230237590"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2020 10:28:29 +0800
IronPort-SDR: a/0WAr/ZlAPDkFV3YgTu7Gxx8h/2CwsqqX2rWNbdo61OG5psePC7CxQSHG4W1gkcu2eKFjDfMl
 fmVwCtneSZxEa7Fc20/v8vh5RqUp56bxrdyv9XaABr3Yge4x3wfuof7qxYY5iOKOn/V+Mb4adW
 a5yhKHgvPVwVRkr5Ct7Mpod2hkVbIXRz7a+Xb8nzfCjxFhL4N2RkWwK2jEgLw0Os2+bU9GsGs9
 kQrNxb+JDEWF5wSSHDAJidBF9ISdGRAioxy/VGv44wWHNd4610ALf2vGaRaCV64pyawDX/Xgws
 Pz8PrgrIyNMBSQU3C6BW8xMq
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 18:21:24 -0800
IronPort-SDR: SUdIAj1+GzrrXDLC63vGKQJTtKpatY3+LM6ZT5CnM2ESlDFhlaCpPUk2r/eGVVjd4bghrL/QVX
 fqQ79Gb5tdaKonALni64d/O8wcu+rZqrIWPZs2fKXaVhvtpJBjJshfUeBaGelm56hJOdKJljAK
 wvKkduPA1PSGgNiXBBYrefU6zShMqG9MIdg+b1xXRB4oplxSSfu0PMw/NIxVqrruIWLNR4CNI9
 pmM2yO/vQ0F8/nnHGt/MriFtcJMbucUoBW56mlw5fWO4S04NQ7yAo25fRrvqh3V4owtVqakPcS
 TLM=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jan 2020 18:28:09 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 04/10] RISC-V: Introduce a new config for SBI v0.1
Date: Mon, 27 Jan 2020 18:27:31 -0800
Message-Id: <20200128022737.15371-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200128022737.15371-1-atish.patra@wdc.com>
References: <20200128022737.15371-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_182811_628934_29BDAC56 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Kees Cook <keescook@chromium.org>, abner.chang@hpe.com,
 Vincent Chen <vincent.chen@sifive.com>, nickhu@andestech.com,
 Anup Patel <anup@brainfault.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 clin@suse.com, Atish Patra <atish.patra@wdc.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Palmer Dabbelt <palmer@dabbelt.com>,
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
 arch/riscv/Kconfig           |   6 ++
 arch/riscv/include/asm/sbi.h |   2 +
 arch/riscv/kernel/sbi.c      | 137 +++++++++++++++++++++++++++++------
 3 files changed, 121 insertions(+), 24 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index fa7dc03459e7..518da42be545 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -307,6 +307,12 @@ config SECCOMP
 	  and the task is only allowed to execute a few safe syscalls
 	  defined by each seccomp mode.
 
+config RISCV_SBI_V01
+	bool "SBI v0.1 support"
+	default y
+	help
+	  This config allows kernel to use SBI v0.1 APIs. This will be
+	  deprecated in future once legacy M-mode software are no longer in use.
 endmenu
 
 menu "Boot options"
diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index e478368a47f3..4d67bef8f894 100644
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
index 33632e7f91da..265637cb5eb0 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -13,6 +13,13 @@
 unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
 EXPORT_SYMBOL(sbi_spec_version);
 
+static void (*__sbi_set_timer)(uint64_t stime);
+static int (*__sbi_send_ipi)(const unsigned long *hart_mask);
+static int (*__sbi_rfence)(int fid, const unsigned long *hart_mask,
+			   unsigned long hbase, unsigned long start,
+			   unsigned long size, unsigned long arg4,
+			   unsigned long arg5);
+
 struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
 			unsigned long arg1, unsigned long arg2,
 			unsigned long arg3, unsigned long arg4,
@@ -57,6 +64,7 @@ static int sbi_err_map_linux_errno(int err)
 	};
 }
 
+#ifdef CONFIG_RISCV_SBI_V01
 /**
  * sbi_console_putchar() - Writes given character to the console device.
  * @ch: The data to be written to the console.
@@ -85,41 +93,115 @@ int sbi_console_getchar(void)
 EXPORT_SYMBOL(sbi_console_getchar);
 
 /**
- * sbi_set_timer() - Program the timer for next timer event.
- * @stime_value: The value after which next timer event should fire.
+ * sbi_shutdown() - Remove all the harts from executing supervisor code.
  *
  * Return: None
  */
-void sbi_set_timer(uint64_t stime_value)
+void sbi_shutdown(void)
 {
-#if __riscv_xlen == 32
-	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
-			  stime_value >> 32, 0, 0, 0, 0);
-#else
-	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
-#endif
+	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
 }
 EXPORT_SYMBOL(sbi_set_timer);
 
 /**
- * sbi_shutdown() - Remove all the harts from executing supervisor code.
+ * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
  *
  * Return: None
  */
-void sbi_shutdown(void)
+void sbi_clear_ipi(void)
 {
-	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
+	sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
 }
 EXPORT_SYMBOL(sbi_shutdown);
 
 /**
- * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
+ * sbi_set_timer_v01() - Program the timer for next timer event.
+ * @stime_value: The value after which next timer event should fire.
  *
  * Return: None
  */
-void sbi_clear_ipi(void)
+static void __sbi_set_timer_v01(uint64_t stime_value)
 {
-	sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
+#if __riscv_xlen == 32
+	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
+		  stime_value >> 32, 0, 0, 0, 0);
+#else
+	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
+#endif
+}
+
+static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
+{
+	sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
+		  0, 0, 0, 0, 0);
+	return 0;
+}
+
+static int __sbi_rfence_v01(int fid, const unsigned long *hart_mask,
+			    unsigned long hbase, unsigned long start,
+			    unsigned long size, unsigned long arg4,
+			    unsigned long arg5)
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
+static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
+{
+	pr_warn("IPI extension is not available in SBI v%lu.%lu\n",
+		sbi_major_version(), sbi_minor_version());
+
+	return 0;
+}
+static int __sbi_rfence_v01(int fid,
+			    const unsigned long *hart_mask,
+			    unsigned long hbase, unsigned long start,
+			    unsigned long size, unsigned long arg4,
+			    unsigned long arg5)
+{
+	pr_warn("remote fence extension is not available in SBI v%lu.%lu\n",
+		sbi_major_version(), sbi_minor_version());
+
+	return 0;
+}
+#endif /* CONFIG_RISCV_SBI_V01 */
+
+/**
+ * sbi_set_timer() - Program the timer for next timer event.
+ * @stime_value: The value after which next timer event should fire.
+ *
+ * Return: None
+ */
+void sbi_set_timer(uint64_t stime_value)
+{
+	__sbi_set_timer(stime_value);
 }
 
 /**
@@ -130,11 +212,11 @@ void sbi_clear_ipi(void)
  */
 void sbi_send_ipi(const unsigned long *hart_mask)
 {
-	sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
-			0, 0, 0, 0, 0);
+	__sbi_send_ipi(hart_mask);
 }
 EXPORT_SYMBOL(sbi_send_ipi);
 
+
 /**
  * sbi_remote_fence_i() - Execute FENCE.I instruction on given remote harts.
  * @hart_mask: A cpu mask containing all the target harts.
@@ -143,8 +225,8 @@ EXPORT_SYMBOL(sbi_send_ipi);
  */
 void sbi_remote_fence_i(const unsigned long *hart_mask)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned long)hart_mask,
-			0, 0, 0, 0, 0);
+	__sbi_rfence(SBI_EXT_RFENCE_REMOTE_FENCE_I,
+		     hart_mask, 0, 0, 0, 0, 0);
 }
 EXPORT_SYMBOL(sbi_remote_fence_i);
 
@@ -161,8 +243,8 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
 					 unsigned long start,
 					 unsigned long size)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
-			(unsigned long)hart_mask, start, size, 0, 0, 0);
+	__sbi_rfence(SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
+		     hart_mask, 0, start, size, 0, 0);
 }
 EXPORT_SYMBOL(sbi_remote_sfence_vma);
 
@@ -182,8 +264,8 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 					      unsigned long size,
 					      unsigned long asid)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
-			(unsigned long)hart_mask, start, size, asid, 0, 0);
+	__sbi_rfence(SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
+		     hart_mask, 0, start, size, asid, 0);
 }
 EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
 
@@ -249,8 +331,15 @@ int __init sbi_init(void)
 
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
2.24.0


