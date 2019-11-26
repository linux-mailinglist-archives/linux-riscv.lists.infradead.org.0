Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746C3109813
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 04:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rTvp/rcwU/RBP2M/pOTTd4as2O6GVqMrLVFiyMMAQ8=; b=BDOL7XwHw2hp9n
	1V2/UiVEgektaxDPGU3h4yCHrJ3eIKW+vtifGcoCsb6WMNhV/mw9qY5cKWib3WKhZbywtRBZ5mB0R
	eSbCZOO8Y+u5LiHcDRqDQK3ugH9EAgaBxsi65MzxI/3sovHMPR8PTLjm0UhhrV7SJCPUBnfi3QswZ
	ZMs6sRnAgS/09pnUxEbRxKfnAIQ2yEJ6W5KUYMwmM2Q1xbLeTI/G1PymwxPbcs3o0wvCjzAczaEGR
	bl54EP9Vf6QgVIptpNpm/iB4bIKTybBOvpVOS4h8gWy8Ts9+kDBa+vlLVgVKgogR9r6OE/iuPXsUa
	v3L4CsppIHaAP6cSbBew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZRPH-00086d-OJ; Tue, 26 Nov 2019 03:20:51 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZRPA-0007xi-6a
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 03:20:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574738444; x=1606274444;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=To4UIdEWfy/4aSaabY3lPOtWDDQiV9C4pZsiIDGmpak=;
 b=YFQw/ECWcjTvGqpdNqyv4WSNZKHlHT8NWJoui1+O08kJPz/gNzwrjNsy
 GyjxBymhWfpfPdVafHMKJiSk/ulvmchDERn6OrffaNRp+rVSrIo2V57HS
 Y24YoBTAlQthD25OdL43TZV3cVURJ1TTOrrjar6ZDtfZR4hApy3w5gQvg
 YpSY7ht2i41PCUa03Fz+FtJIh1vj5Sqgl04qqGpi1k/EMMmP+q/X1kbw7
 NUfstB7OlTNGP4hOBEc36t06Eahi3kzRnORXURkdDdNA+tAyf4jh+lux+
 kGuzg6cXEk0PeuybqpVb4Qyr1BYfQIAoVUJAf49Ov6lVmJ4dMaBXGZdsl w==;
IronPort-SDR: ExwTKkEqMjceTYi2quO5LYWJUOxpEna9UJdfTGdk8QANn38PZ/Vfg5xcgYykN+GOGm/w+PCX0b
 kpqfjW1FZRvCzxN4pfv2AzUVw/vD1LIcXZhJaBz2vKwN+dEKb9L40JBipxBAOokeHt1VJ36aP0
 soDcG4UxQ57rAu4JuFaN1rJWOCuEMOoR9zBQ4J9O0hhQDklxFCaLOcXp5yxije4MsTu/NTUEeT
 Q/cxK0sEuFlF0z0XeE+nc0Jl4Wm/2wEU6884xk0QyajFDf2qVFFwMEE7cZ9ipcvj77eVFo0Dm/
 nVw=
X-IronPort-AV: E=Sophos;i="5.69,244,1571673600"; d="scan'208";a="123990272"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 26 Nov 2019 11:20:38 +0800
IronPort-SDR: WS0CjH1g//Sa3WGlcIC/7r0uDdCeyk84XMVeEAK1DpHkMKStVyo6sLP9PceV274Px4xD654/Sp
 +rv61g9roYUXph/RPHPgqAZQo6slb5eoSt/dHRi5WLcMibVysTgVk27LXLfGrwuYV7/au6f16C
 GnOqOGX/GvvHnBrcrL6qQdV7HjZqNAE27yChIileqbxEP9BXzffxsrRf24drRWGCmVOPCIfgiM
 fK6Gu/i+mkA6l73+gY4wSKdj+B0VfWNQN30HWEbk42nrarQtT7RTKPbG6ARgqPdDLjNgki2Wdv
 oCiodh2xR8OjtFKlJfO+p7ux
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 19:15:18 -0800
IronPort-SDR: Fkv99QB11wZ1APtzQTXCM03YC8yXUlGaDci1bD9IrRETYysK8DDF9lu/Bam4h/0HnW+VEkSYwx
 59SoXClpcFCNL2u+4G9OSJ7ixtg0BZ7geINYD1q650T8jSuNFu64SJAlehxBNnQvpZAerCLNAa
 vwr3KTMkhCUE9FqGhYZFMcthTjjYflATK0f35FPlIDgilXN+sX7731bhxhJq7/UDHnQfhgFIFT
 2QAEURrc/wkYwIqrPb+EJ+q96BPzt3TcsSf0385pM2tFNIu3PKqKqebS2hJwtpbC+gggj6rCku
 Bno=
WDCIronportException: Internal
Received: from usa003951.ad.shared (HELO yoda.hgst.com) ([10.86.50.226])
 by uls-op-cesaip02.wdc.com with ESMTP; 25 Nov 2019 19:20:38 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/4] RISC-V: Introduce a new config for SBI v0.1
Date: Mon, 25 Nov 2019 19:20:32 -0800
Message-Id: <20191126032033.14825-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126032033.14825-1-atish.patra@wdc.com>
References: <20191126032033.14825-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_192044_291127_83EE00D9 
X-CRM114-Status: GOOD (  14.98  )
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

We now have SBI v0.2 which is more scalable and extendable to handle
future needs for RISC-V supervisor interfaces.

Introduce a new config and move all SBI v0.1 code under that config.
This allows to implement the new replacement SBI extensions cleanly
and remove v0.1 extensions easily in future. Currently, the config
is enabled by default. Once all M-mode software with v0.1 are no
longer in use, this config option and all relevant code can be easily
removed.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig           |   6 ++
 arch/riscv/include/asm/sbi.h |   2 +
 arch/riscv/kernel/sbi.c      | 154 +++++++++++++++++++++++++++++------
 3 files changed, 138 insertions(+), 24 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index ca3b5541ae93..15c020d6837b 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -304,6 +304,12 @@ config SECCOMP
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
index 906438322932..cc82ae63f8e0 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -10,6 +10,7 @@
 
 #ifdef CONFIG_RISCV_SBI
 enum sbi_ext_id {
+#ifdef CONFIG_RISCV_SBI_V01
 	SBI_EXT_0_1_SET_TIMER = 0x0,
 	SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
 	SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
@@ -19,6 +20,7 @@ enum sbi_ext_id {
 	SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
 	SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
 	SBI_EXT_0_1_SHUTDOWN = 0x8,
+#endif
 	SBI_EXT_BASE = 0x10,
 };
 
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
index 8b36269fa515..8574de1074c4 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -8,6 +8,14 @@
 unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
 EXPORT_SYMBOL(sbi_spec_version);
 
+void (*__sbi_set_timer)(uint64_t stime);
+int (*__sbi_send_ipi)(const unsigned long *hart_mask);
+int (*__sbi_rfence)(unsigned long extid, unsigned long fid,
+		  const unsigned long *hart_mask,
+		  unsigned long hbase, unsigned long start,
+		  unsigned long size, unsigned long arg4,
+		  unsigned long arg5);
+
 struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
 			unsigned long arg1, unsigned long arg2,
 			unsigned long arg3, unsigned long arg4,
@@ -52,6 +60,32 @@ static int sbi_err_map_linux_errno(int err)
 	};
 }
 
+static inline void __sbi_set_timer_dummy_warn(uint64_t stime_value)
+{
+	pr_warn("Timer extension is not available in SBI v%lu.%lu\n",
+		sbi_major_version(), sbi_minor_version());
+}
+
+static inline int __sbi_send_ipi_dummy_warn(const unsigned long *hart_mask)
+{
+	pr_warn("IPI extension is not available in SBI v%lu.%lu\n",
+		sbi_major_version(), sbi_minor_version());
+	return 0;
+}
+
+static inline int __sbi_rfence_dummy_warn(unsigned long extid,
+			     unsigned long fid,
+			     const unsigned long *hart_mask,
+			     unsigned long hbase, unsigned long start,
+			     unsigned long size, unsigned long arg4,
+			     unsigned long arg5)
+{
+	pr_warn("remote fence extension is not available in SBI v%lu.%lu\n",
+		sbi_major_version(), sbi_minor_version());
+	return 0;
+}
+
+#ifdef CONFIG_RISCV_SBI_V01
 /**
  * sbi_console_putchar() - Writes given character to the console device.
  * @ch: The data to be written to the console.
@@ -80,41 +114,106 @@ int sbi_console_getchar(void)
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
+static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
+			     const unsigned long *hart_mask,
+			     unsigned long hbase, unsigned long start,
+			     unsigned long size, unsigned long arg4,
+			     unsigned long arg5)
+{
+	switch (ext) {
+	case SBI_EXT_0_1_REMOTE_FENCE_I:
+		sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
+			  (unsigned long)hart_mask, 0, 0, 0, 0, 0);
+		break;
+	case SBI_EXT_0_1_REMOTE_SFENCE_VMA:
+		sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
+			  (unsigned long)hart_mask, start, size,
+			  0, 0, 0);
+		break;
+	case SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID:
+		sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
+			  (unsigned long)hart_mask, start, size,
+			  arg4, 0, 0);
+		break;
+	default:
+		pr_err("extid [%lu]not supported in SBI v0.1\n", ext);
+	}
+
+	return 0;
+}
+#else
+static void __sbi_set_timer_v01(uint64_t stime_value)
+{
+	__sbi_set_timer_dummy_warn(0);
+}
+static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
+{
+	return __sbi_send_ipi_dummy_warn(NULL);
+}
+static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
+			     const unsigned long *hart_mask,
+			     unsigned long hbase, unsigned long start,
+			     unsigned long size, unsigned long arg4,
+			     unsigned long arg5)
+{
+	return __sbi_rfence_dummy_warn(0, 0, 0, 0, 0, 0, 0, 0);
+
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
@@ -125,11 +224,11 @@ void sbi_clear_ipi(void)
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
@@ -138,8 +237,8 @@ EXPORT_SYMBOL(sbi_send_ipi);
  */
 void sbi_remote_fence_i(const unsigned long *hart_mask)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned long)hart_mask,
-			0, 0, 0, 0, 0);
+	__sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
+		     hart_mask, 0, 0, 0, 0, 0);
 }
 EXPORT_SYMBOL(sbi_remote_fence_i);
 
@@ -156,8 +255,8 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
 					 unsigned long start,
 					 unsigned long size)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
-			(unsigned long)hart_mask, start, size, 0, 0, 0);
+	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
+		     hart_mask, 0, start, size, 0, 0);
 }
 EXPORT_SYMBOL(sbi_remote_sfence_vma);
 
@@ -177,8 +276,8 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 					      unsigned long size,
 					      unsigned long asid)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
-			(unsigned long)hart_mask, start, size, asid, 0, 0);
+	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
+		     hart_mask, 0, start, size, asid, 0);
 }
 EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
 
@@ -254,8 +353,15 @@ int __init sbi_init(void)
 
 	pr_info("SBI specification v%lu.%lu detected\n",
 		sbi_major_version(), sbi_minor_version());
-	if (!sbi_spec_is_0_1())
+
+	if (sbi_spec_is_0_1()) {
+		__sbi_set_timer = __sbi_set_timer_v01;
+		__sbi_send_ipi	= __sbi_send_ipi_v01;
+		__sbi_rfence	= __sbi_rfence_v01;
+	} else {
 		pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
 			sbi_get_firmware_id(), sbi_get_firmware_version());
+	}
+
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
