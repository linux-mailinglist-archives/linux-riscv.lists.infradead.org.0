Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB56170B10
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 23:02:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92XhFrRSdEKf6eyGDL4xLnUve1fox2yEIx92xL9/CDM=; b=fqSdpM83Jlc1o4
	uLsvWS39dHahA2jsa8N7/pCfiKbcgJGziDmoLf4yArNQtoG8GP2FuHsETsmPFGZxB/vAMZWEpas+X
	HZD7ENgqZ7SQivCsCSDWsFx7uOAiXNGfJyObF3FPlLgvIQghL4gtWkGJrkp3ud/wG5jezJlJDLZz+
	lkqW9lRiKhKeQfK3oTHGeEDTDxNCQ2+2tn8Q+UTR6IfkH1yJo/N4PJ8OMtNaSKUb2kgG67BIpYJp+
	AU0ZHUww1vPQMwL1bFQpYKXFrnEERJngHo3ggbuWXyw1cV4ocSX9MoIKIjkgZ8v/s3ot/loBBNxRA
	Y92G/hTxiOR80kXfXt5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74lM-00041D-9i; Wed, 26 Feb 2020 22:02:40 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74l7-0003nS-Qo
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 22:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582754545; x=1614290545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pbqsT+EfiWVCtCJRw1HD73vZXfDVxeCe5v1ZZoAy5wU=;
 b=GIc0yixu6NDsur6UFEUBpDEtv4Jp2QbmuqTyL92rd316M5CdROVAtwYP
 GkVChhF8YHlHAV4M3i/i+TQuerSfscL0JH8vxNw7YvmzMC3UUPhBjtx75
 3dmRJRJO5PntTiBQv1AuB/7KYNeeht0znnet+R1ap6VHANSHr2tprmT87
 6a9F0vVq1bQ7VHOpiu2qIeaFzb9Lv59hKRWTbr8RzfJf8EomiGepSoCQe
 W1etHFQdWsWu21nU5SC4tYfDz6RPRRqCpuetmxxlE9MHjVgX5sA2lGpMt
 jL/YF1wMFMRjwC11G3oQ2Haq+N9bPfUQEdUmul5dpAM7QmlXKl1zXJTBU A==;
IronPort-SDR: y4dHo57sHWqjoCTNR7i5LcqX644cyI5n95DpAB9bzOWNpKfSHQDlh1tkfrCN2+/D1+8RarCwBf
 yPD84jM1Bf1O/kkBTe7MWmlq43ZsOkCYNHmWGLtOjNhWeNUWZQ9ZyZ4aXC4aYemRLQmV9KjAKI
 GBWL78CcSi9QGJs27V9yHvA5d9Af1zspTPI4VCA5zwEK3iSH34QO9O80xacFoQ5qQJtCGTas+p
 UGWN2AIyeHfdbC8143M0R7kGX/es/mGV8NjgSkfW8BarLCxT8BATaj779OcPKhyS3JoHEKmbV/
 2ZQ=
X-IronPort-AV: E=Sophos;i="5.70,489,1574092800"; d="scan'208";a="238981834"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 27 Feb 2020 06:02:22 +0800
IronPort-SDR: OYTXaXwSSnK0jtDKEaAOZn0JRP0Wc95DToivfKhIgAbJJPmkadFiJk1ms8qrWrmxfsxItYvR/4
 HZT+oAVmoZMG0P59M9Y0DXpoGJhjeVsRgaRsY0z2b7kLtddgeQQv7iQKZmsZNuTYJSyl0ZOKdy
 fEoRg+cYHc5aqPs6Bj6xAoDPZ02QFViEOynv1WwJ+q6l8o6bPQpci5fCcm+0pJRLiMdHjFuh5u
 7e0T0FpkJhORGo63O+6pLjCiTmDCvyNtI03RJs2MwfaNlNw6aevp7l3moUd2Gm/faRHjhy0iRj
 rUkc+INabEDU1QVe0cU8FiT+
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 13:54:47 -0800
IronPort-SDR: RLnjjl116zwMl13t9m1M0S8/QMFpFFhr6xUiyUmEH31mt2bVPnliEWVX8W5OU2tFv0BP98ACQZ
 zSKd6k2MEQ2EkdQgQS3eLWeHrSR6eOJhY1opr8aHlaxGZFMx0PV1Atmu5wPqaIk2XfZ3YwUWZe
 XdrcrGryV8uRdXazy53Vg24V4l5cYwmLSdgUtipsoyTjTg28GLRflEihV4aWWCgkqaZ4QXCV6d
 VgTT1+1gFlYpGysM7I74XTrTwsR2ej9POfTPRRfP6IAWSLuve/nmUSD3m/vhiG8+JE9spen3dd
 cYA=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Feb 2020 14:02:22 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v10 04/12] RISC-V: Introduce a new config for SBI v0.1
Date: Wed, 26 Feb 2020 14:02:05 -0800
Message-Id: <20200226220213.27423-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226220213.27423-1-atish.patra@wdc.com>
References: <20200226220213.27423-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_140225_910904_52FF93C9 
X-CRM114-Status: GOOD (  15.92  )
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
index 1c4bdcc3b817..be634be78551 100644
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
index 963eb349311f..599d922d4ff3 100644
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


