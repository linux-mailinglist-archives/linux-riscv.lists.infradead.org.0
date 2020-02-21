Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C55166BFA
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 01:45:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4kMg1YFcBEJuxPmFtc1/YqWQQH/0inMN8BVKGRJXmk=; b=JAwQlM0/+EWKYS
	LFrow2mbDvPsfZdMQwqNJOqfTe03rDVCDP3Q2y0JSZrK84sLxUI+ItNY5NrMqthIfKtDczr/t6c72
	Fq4IzDxBsSxeIUrRy6YEIIA2aUF5IrkS1AiTHiFuAjWt5ZMNmqcrreMcOxRLo2Bh8dMaHbcIEPR0u
	YYK9TkGfDfP+2Xisy+jKEeUjos6K1SfVHw0GCUuyArLrJOyQBde+KSX00kp91ubUsduVG0CVPwRlO
	Kef948arzQDSNYyO102/0yiBZAJ4qL2Z7dGVzhMviWq+Z9U2fk8bOD4ayzYL1Ada6E1ubIVMqBYbB
	rcCgsOriIfaI7u1ZMRxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4wRL-0004WD-FK; Fri, 21 Feb 2020 00:45:11 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4wR5-0004Pt-BK
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 00:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582245916; x=1613781916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d7IVvxj7MICoNHZeciiqFHqOhWbVXBNSxQgVIlZSh5o=;
 b=lSmEOsos8dKAIuTlRFpWoU9k6y/AvwKP73II/x/lkWXsM1fAX/C+8RHr
 Pe3W1xC1H9Qwc7g+oKhYC0I4lwrCkgVyI6LSq9pMutVJSsvK7WM0JrGiD
 7DnByy1bpoNdVVfkMMz1NTHlU2WMBXCLKOKsjC63SfIpKGZpqxJEwAZHv
 v0bPWYrKBjuswDSeMtd+LOLwlIO9VmzvlARUGWwVwcFcWaRDnHnBgX0a+
 Eag291M44MNvAzNsdbtI9ox0ipi/HXSYpE9lHtpGFhD0EPF3IAUnU1FFI
 z7Hb5jemL2/TH610Hs/dG6tPBy5rwFd/6+SUVyjstM9ZXQE4cDlCs76IF Q==;
IronPort-SDR: 8VNBO4/LHvc+hZMGlbGYhjh/NPEnC1fsg+bBeXouZTlol5uHIDqVV0R5kgAw2EiSJ6TmhjcSCC
 T2ifwnDqnZONlp1ntIDolJywfO6NOgLhMicxDSARlztPh1zJZwQ/4RjVHU4cehnSrtQlMovV9p
 8x0A5r9fLYXytnBrtOSuN+shmXWeIPIGy+9Lu3NljUoBGD/2UHQLECCezqkr9+AxNvJQ85Bby5
 8a98IJvUTHa2i5P76o5GXErnvk49ExcfSVF4xKXh2LKzQEeWtzKakoBmf21Y8cyjw3QUfRuDQo
 y/E=
X-IronPort-AV: E=Sophos;i="5.70,466,1574092800"; d="scan'208";a="232211062"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2020 08:45:03 +0800
IronPort-SDR: /FuhToHwyZ63evr4ypc/3cd8tgli/qY05gue0awjvTlvQKQ40Dauex31VhH49KbLfRzDdRT/Wv
 vwjJy7i4aVa0FIhysCFCrPhabv6yvQ+XdfBo48uA9kA75WYjGZoUuYWQF3sbJkfG2CRujKrnSP
 N0ND1yg8Bl++L5D/+uoijIhbjEW+2UyWPylEEaQhxsZ0T15MyYKzY1DbWv3KXgANY9MQ0GqajU
 nDMZnQFG7cF5kNNdhfv0Xp4qyr16kvHYtT7bBZorqNI0E4e9s7eGjpHMA+yoT6/AXGxBAX5V1s
 YQ0r4NxdZhm72wjLkvKS/jWK
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 16:37:21 -0800
IronPort-SDR: BOWQdyeTr4Q9kDaUGfuQ4ODVVXPhquFG1+dVClLYKMFvZm2XHkxNyykj34Vpu4tBXQuV/zqKLZ
 ErOslVy8bL+P0xNi+t9QJbiAHAPO+MUXGEZ4RfqXruY0t+WVRZLIV+76OvAuoLQPYH2+EVEVl5
 wRF0ztuIXxje+TarfNxGt8MHitcuAH1fS+xO2bMbKnHXuUGwn93keKbVG2sbGG+aKFLV/p1vOR
 68J/dPzOLkKv7d/76wVX4CwWgNUCk89kMFdP8aDJSINIpZKKkPVrnxB/kfha634IVQutnvatmT
 YTY=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Feb 2020 16:44:46 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 04/12] RISC-V: Introduce a new config for SBI v0.1
Date: Thu, 20 Feb 2020 16:44:05 -0800
Message-Id: <20200221004413.12869-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200221004413.12869-1-atish.patra@wdc.com>
References: <20200221004413.12869-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_164455_459427_9EAA33C4 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Nick Hu <nickhu@andestech.com>,
 Vincent Chen <vincent.chen@sifive.com>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Atish Patra <atish.patra@wdc.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>, Kees Cook <keescook@chromium.org>
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
 arch/riscv/kernel/sbi.c      | 133 ++++++++++++++++++++++++++++-------
 3 files changed, 118 insertions(+), 24 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 73f029eae0cc..8c0f5385fa30 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -307,6 +307,13 @@ config SECCOMP
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
index 33632e7f91da..73e53833c008 100644
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
@@ -85,41 +92,112 @@ int sbi_console_getchar(void)
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
+static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
+{
+	pr_warn("IPI extension is not available in SBI v%lu.%lu\n",
+		sbi_major_version(), sbi_minor_version());
+
+	return 0;
+}
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
@@ -130,11 +208,11 @@ void sbi_clear_ipi(void)
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
@@ -143,8 +221,8 @@ EXPORT_SYMBOL(sbi_send_ipi);
  */
 void sbi_remote_fence_i(const unsigned long *hart_mask)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned long)hart_mask,
-			0, 0, 0, 0, 0);
+	__sbi_rfence(SBI_EXT_RFENCE_REMOTE_FENCE_I,
+		     hart_mask, 0, 0, 0, 0);
 }
 EXPORT_SYMBOL(sbi_remote_fence_i);
 
@@ -161,8 +239,8 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
 					 unsigned long start,
 					 unsigned long size)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
-			(unsigned long)hart_mask, start, size, 0, 0, 0);
+	__sbi_rfence(SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
+		     hart_mask, start, size, 0, 0);
 }
 EXPORT_SYMBOL(sbi_remote_sfence_vma);
 
@@ -182,8 +260,8 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 					      unsigned long size,
 					      unsigned long asid)
 {
-	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
-			(unsigned long)hart_mask, start, size, asid, 0, 0);
+	__sbi_rfence(SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
+		     hart_mask, start, size, asid, 0);
 }
 EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
 
@@ -249,8 +327,15 @@ int __init sbi_init(void)
 
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
2.25.0


