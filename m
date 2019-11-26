Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC26109814
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 04:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+2fp+2sf7t4uLVN6OnhyO5rzxaIzg9aHw27kErk1J0=; b=VQSk2q5SsRqCO6
	WHP7koXdPeXL8ufCPDev5rBgBeGvGoikQ9ruTZ+9+ibaqoTjxU9gGaOXrMHmFXd1nb/XTVupGRrRZ
	+J0SJ//rk5U0i30a/cvnSLF9xytAcxgb34KYS9LK1nV2ZUF2aLpXU0i9dE1II5uEVXSmhajGGyOUR
	rf+C2vd3BynVEDVCM1+V7V3k5ULTncauan9coZcRdFwdYpQBBYvvIgToOOARrxCy1owaNBd+F9d07
	U63CdH2Gb6xDxJKeLeNStCy3tDaHy+jGvkke2n1eUYulKwxcZpumvQzM8clb+L7Ugf/rF9W1J/PRG
	RFZmUVDmynvsYmctmCKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZRPJ-0008AI-UX; Tue, 26 Nov 2019 03:20:53 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZRPA-0007zE-Cb
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 03:20:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574738444; x=1606274444;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IgYu5GqhtLGHsR5EyD+8NnLQ92UJLx33aAXmO0z7fuY=;
 b=okqfIAgDMoLqTKnA8RDVitUzDwWfr7NtMDd87BB5TXhLSeC5RRDrZXGs
 1pg1pItKw3yglSK8jyiTglack9DusAxrx7uM3e6J0h5RQCEUxKd9sjMZA
 NSa8iS1rwQ4a8g2GTwENfBpjvZbYK5nIcAE7m8Mk6RC8jB1ApMAjaOKTi
 hkLsj74hklrcXAirRj7pIkjTxNVOpaKC3qfCy37NGU8x5dIVGROiYwUqn
 YlDbgnmJ+R0TaSBgZMcYNe7nJsOBujsvGpPh/5tqV5pGdJmM4jQTy/AtL
 TaBGKszCKNzSd6VNE8tYipLWSCSUH9XBGLAB9EbBYMsSqRjDOFDc42JdE A==;
IronPort-SDR: 9CJCU0ceqj2nsg1dnqt8NKhDZ9f7/aiOqt8uEN/UGuDWfGfTa2qOLklMFC1AWetaVyvY7yfVRh
 Z8fsgsohEy+e3vhKY/wb4dKxE3Ts4MifdkokhwOmyoMk2EfXlHpudW0zqTiO4aLfLvZWK3NREt
 47Y6ufO3rqRxzBI7p22FZFZohviaBsW5L0Jun7veMbTFy5/U3xhz2+Gh4tgqJ0cJkA64STC8BK
 FBWprp6XvqJL3i2y/KXYYDZ6ZZ+6JTyqasr/pgXqYIbtZtMp83atNAxIDopdKBNdQgUvzAY+XD
 BcA=
X-IronPort-AV: E=Sophos;i="5.69,244,1571673600"; d="scan'208";a="123990275"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 26 Nov 2019 11:20:39 +0800
IronPort-SDR: r6qhXH2uqPHr3MeYjH7Un12aSAMoVTkvRGXhen7n+i8VXTbGs4+yOjUVs00f8Eu7oKoE7kIUnf
 W0dk+c8JwMlWtZj/J1ZTCAp468sjdYSoCKZ5xrm3bkuJmGAmODDwZ2dPYZoPaW1aOtXCRq6qsV
 1vMakPWYxYy9URT6EVt1WrMcQTkoysyuQOzrKAjAYRroN5Mfb5/4pd2KwNKl8Z80W7+CoFfWAl
 zdRG9vBcMfhnfK+BCiVWU7npqpopMVo95QZll3GspgsR6i//Y2XypkKjzgMpp6hLrw0Voq/bU5
 8QRuOziVFpuyERGMJyU0SYyM
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 19:15:18 -0800
IronPort-SDR: 4B8lcNHAW/REcZtZOi5U+Bru7/oOlNNnhhRFh5EElL5MrQyA0U9545Rsec2cdPb0QQc2402oX7
 j7TDLE4b2ZEuNr+iI4xWMqhNGts/HudrG3+JmacJhjU6w/eKg0q0D3lWfBrTsl4VoUXduz4r9k
 w0Fpn7rjNNs49EB7j7Igg91bMNgSoO0AU/ayD6EH04V8gZtSjHQF9XCBcQau53fKGYnnmzyra3
 VU509UoIIxA4ARQC9qhy05TaR1pky6CXYYEP+Zhr4Bb2eoYvlHzPFqgQRVDgJFWKUMRw5jAKUi
 IGI=
WDCIronportException: Internal
Received: from usa003951.ad.shared (HELO yoda.hgst.com) ([10.86.50.226])
 by uls-op-cesaip02.wdc.com with ESMTP; 25 Nov 2019 19:20:38 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] RISC-V: Implement new SBI v0.2 extensions
Date: Mon, 25 Nov 2019 19:20:33 -0800
Message-Id: <20191126032033.14825-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126032033.14825-1-atish.patra@wdc.com>
References: <20191126032033.14825-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_192044_462754_4D6DCEB5 
X-CRM114-Status: GOOD (  15.37  )
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

Few v0.1 SBI calls are being replaced by new SBI calls that follows
v0.2 calling convention. The specification changes can be found at

riscv/riscv-sbi-doc#27

Implement the replacement extensions and few additional new SBI
function calls that makes way for a better SBI interface in future.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/sbi.h |  35 +++++++
 arch/riscv/kernel/sbi.c      | 197 ++++++++++++++++++++++++++++++++++-
 2 files changed, 229 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index cc82ae63f8e0..54ba9eebec11 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -22,6 +22,9 @@ enum sbi_ext_id {
 	SBI_EXT_0_1_SHUTDOWN = 0x8,
 #endif
 	SBI_EXT_BASE = 0x10,
+	SBI_EXT_TIME = 0x54494D45,
+	SBI_EXT_IPI = 0x735049,
+	SBI_EXT_RFENCE = 0x52464E43,
 };
 
 enum sbi_ext_base_fid {
@@ -34,6 +37,24 @@ enum sbi_ext_base_fid {
 	SBI_BASE_GET_MIMPID,
 };
 
+enum sbi_ext_time_fid {
+	SBI_EXT_TIME_SET_TIMER = 0,
+};
+
+enum sbi_ext_ipi_fid {
+	SBI_EXT_IPI_SEND_IPI = 0,
+};
+
+enum sbi_ext_rfence_fid {
+	SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
+	SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
+	SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
+	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
+};
+
 #define SBI_SPEC_VERSION_DEFAULT	0x1
 #define SBI_SPEC_VERSION_MAJOR_OFFSET	24
 #define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
@@ -74,6 +95,20 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 				unsigned long start,
 				unsigned long size,
 				unsigned long asid);
+int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
+			   unsigned long start,
+			   unsigned long size);
+int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
+				unsigned long start,
+				unsigned long size,
+				unsigned long vmid);
+int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
+			   unsigned long start,
+			   unsigned long size);
+int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
+				unsigned long start,
+				unsigned long size,
+				unsigned long asid);
 int sbi_probe_extension(long ext);
 
 /* Check if current SBI specification version is 0.1 or not */
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
index 8574de1074c4..74b3155b570f 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -205,6 +205,101 @@ static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
 }
 #endif /* CONFIG_RISCV_SBI_V01 */
 
+static void __sbi_set_timer_v02(uint64_t stime_value)
+{
+#if __riscv_xlen == 32
+	sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value,
+			  stime_value >> 32, 0, 0, 0, 0);
+#else
+	sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value, 0,
+		  0, 0, 0, 0);
+#endif
+}
+
+static int __sbi_send_ipi_v02(const unsigned long *hart_mask)
+{
+	unsigned long hmask_val;
+	struct sbiret ret = {0};
+	int result;
+
+	if (!hart_mask)
+		hmask_val = *(cpumask_bits(cpu_online_mask));
+	else
+		hmask_val = *hart_mask;
+
+	ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI, hmask_val,
+			0, 0, 0, 0, 0);
+	if (ret.error) {
+		pr_err("%s: failed with error [%d]\n", __func__,
+			sbi_err_map_linux_errno(ret.error));
+		result = ret.error;
+	} else
+		result = ret.value;
+
+	return result;
+}
+
+static int __sbi_rfence_v02(unsigned long extid, unsigned long fid,
+			     const unsigned long *hart_mask,
+			     unsigned long hbase, unsigned long start,
+			     unsigned long size, unsigned long arg4,
+			     unsigned long arg5)
+{
+	unsigned long hmask_val;
+	struct sbiret ret = {0};
+	int result;
+	unsigned long ext = SBI_EXT_RFENCE;
+
+	if (!hart_mask)
+		hmask_val = *(cpumask_bits(cpu_online_mask));
+	else
+		hmask_val = *hart_mask;
+
+	switch (fid) {
+	case SBI_EXT_RFENCE_REMOTE_FENCE_I:
+		ret = sbi_ecall(ext, fid, hmask_val, 0, 0, 0, 0, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA:
+		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
+				size, 0, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID:
+		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
+				size, arg4, 0);
+		break;
+	/*TODO: Handle non zero hbase cases */
+	case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA:
+		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
+				size, 0, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID:
+		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
+				size, arg4, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA:
+		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
+				size, 0, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID:
+		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
+				size, arg4, 0);
+		break;
+	default:
+		pr_err("unknown function ID [%lu] for SBI extension [%lu]\n",
+			fid, ext);
+		result = -EINVAL;
+	}
+
+	if (ret.error) {
+		pr_err("%s: failed with error [%d]\n", __func__,
+			sbi_err_map_linux_errno(ret.error));
+		result = ret.error;
+	} else
+		result = ret.value;
+
+	return result;
+}
+
 /**
  * sbi_set_timer() - Program the timer for next timer event.
  * @stime_value: The value after which next timer event should fire.
@@ -237,7 +332,7 @@ EXPORT_SYMBOL(sbi_send_ipi);
  */
 void sbi_remote_fence_i(const unsigned long *hart_mask)
 {
-	__sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
+	__sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, SBI_EXT_RFENCE_REMOTE_FENCE_I,
 		     hart_mask, 0, 0, 0, 0, 0);
 }
 EXPORT_SYMBOL(sbi_remote_fence_i);
@@ -255,7 +350,8 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
 					 unsigned long start,
 					 unsigned long size)
 {
-	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
+	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA,
+		     SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
 		     hart_mask, 0, start, size, 0, 0);
 }
 EXPORT_SYMBOL(sbi_remote_sfence_vma);
@@ -276,11 +372,93 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 					      unsigned long size,
 					      unsigned long asid)
 {
-	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
+	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID,
+		     SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
 		     hart_mask, 0, start, size, asid, 0);
 }
 EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
 
+/**
+ * sbi_remote_hfence_gvma() - Execute HFENCE.GVMA instructions on given remote
+ *			   harts for the specified guest physical address range.
+ * @hart_mask: A cpu mask containing all the target harts.
+ * @start: Start of the guest physical address
+ * @size: Total size of the guest physical address range.
+ *
+ * Return: None
+ */
+int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
+					 unsigned long start,
+					 unsigned long size)
+{
+	return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
+			    hart_mask, 0, start, size, 0, 0);
+}
+EXPORT_SYMBOL_GPL(sbi_remote_hfence_gvma);
+
+/**
+ * sbi_remote_hfence_gvma_vmid() - Execute HFENCE.GVMA instructions on given
+ * remote harts for a guest physical address range belonging to a specific VMID.
+ *
+ * @hart_mask: A cpu mask containing all the target harts.
+ * @start: Start of the guest physical address
+ * @size: Total size of the guest physical address range.
+ * @vmid: The value of guest ID (VMID).
+ *
+ * Return: 0 if success, Error otherwise.
+ */
+int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
+					      unsigned long start,
+					      unsigned long size,
+					      unsigned long vmid)
+{
+	return __sbi_rfence(SBI_EXT_RFENCE,
+			    SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
+			    hart_mask, 0, start, size, vmid, 0);
+}
+EXPORT_SYMBOL(sbi_remote_hfence_gvma_vmid);
+
+/**
+ * sbi_remote_hfence_vvma() - Execute HFENCE.VVMA instructions on given remote
+ *			     harts for the current guest virtual address range.
+ * @hart_mask: A cpu mask containing all the target harts.
+ * @start: Start of the current guest virtual address
+ * @size: Total size of the current guest virtual address range.
+ *
+ * Return: None
+ */
+int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
+					 unsigned long start,
+					 unsigned long size)
+{
+	return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
+			    hart_mask, 0, start, size, 0, 0);
+}
+EXPORT_SYMBOL(sbi_remote_hfence_vvma);
+
+/**
+ * sbi_remote_hfence_vvma_asid() - Execute HFENCE.VVMA instructions on given
+ * remote harts for current guest virtual address range belonging to a specific
+ * ASID.
+ *
+ * @hart_mask: A cpu mask containing all the target harts.
+ * @start: Start of the current guest virtual address
+ * @size: Total size of the current guest virtual address range.
+ * @asid: The value of address space identifier (ASID).
+ *
+ * Return: None
+ */
+int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
+					      unsigned long start,
+					      unsigned long size,
+					      unsigned long asid)
+{
+	return __sbi_rfence(SBI_EXT_RFENCE,
+			    SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
+			    hart_mask, 0, start, size, asid, 0);
+}
+EXPORT_SYMBOL(sbi_remote_hfence_vvma_asid);
+
 /**
  * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
  * @extid: The extension ID to be probed.
@@ -361,6 +539,19 @@ int __init sbi_init(void)
 	} else {
 		pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
 			sbi_get_firmware_id(), sbi_get_firmware_version());
+		if (sbi_probe_extension(SBI_EXT_TIME) > 0)
+			__sbi_set_timer = __sbi_set_timer_v02;
+		else
+			__sbi_set_timer = __sbi_set_timer_dummy_warn;
+		if (sbi_probe_extension(SBI_EXT_IPI) > 0)
+			__sbi_send_ipi	= __sbi_send_ipi_v02;
+		else
+			__sbi_send_ipi = __sbi_send_ipi_dummy_warn;
+		if (sbi_probe_extension(SBI_EXT_RFENCE) > 0)
+			__sbi_rfence	= __sbi_rfence_v02;
+		else
+			__sbi_rfence	= __sbi_rfence_dummy_warn;
+
 	}
 
 	return 0;
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
