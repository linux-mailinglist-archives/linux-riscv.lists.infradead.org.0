Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47D710A450
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 20:05:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Rx0IvybFvh7UrPfz8DKeti0yEyYtasJHAH/eoxpiWw=; b=VSb2YxoBnGsF4O
	SilUOXWqSh+JXfKrjjxqRWi2M7Z8VIq7mdeX8+iK+9y9gf0vfzrOyI3yOUcBCNhT7ZNciyWbkmnrp
	mV0M8t/t/cN8cvIbCyr3VbpbgD0hwf9WJnseo2VFGF1kCobFGIgwu4PfBXqTu2btd+hzek63zNKNb
	SDChpoV9DBWtLGd2qUhUix0G3uRmZ7oaRqoORNZxNPRbdBW+jUAIehpK0QWqZJ9kQFdZ5Eg4IWdvT
	I6/uYr3W+WyLJt1RSPGPtTrkxRbnxRAFWkq+CpTLxrWevbaROqpTftI14e6YX3Cl5wGWgWtmxi/O2
	nF9+RxWcZ2ozBnZ5PMuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZg9h-0005tn-6L; Tue, 26 Nov 2019 19:05:45 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZg9X-0005is-8f
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 19:05:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574795135; x=1606331135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yKOTF+GCSs6nbJNoJs6kHfpbalUWcXa02Lk071ru3Uk=;
 b=NFVzWEcB3M7g3bLjXMdtGHVTVDnvwFJfGxuG8Sibf+vYKd95a2/6dNUQ
 jQZIxuFNQ0as+eE2B/Zk5sZlyePF2H48pt9FMA4od1JSDCYhzBNHNuz1P
 lr+oKWUIEZYFs9oa8kuS/Jh+oUldQBtheCeUQUGedCUyKMHFkZzT/H30x
 zFVBI3QO/OvLCb1p9osoYb1FTcgCfCL7GWH8gx6aakrhIoFv9pSkjTZZv
 yH+3LtYzgesAtCO6P7jKoSnC4qjSxYgKPL+EdprgLSk7VcOqOoA98/NFo
 7Y6JJSRiM3k+EmjkuJNka1O92T+6R2NXLxxP588tBNsKlH9KI4qrZgNVP w==;
IronPort-SDR: 0ZVRghOk9IDPo0J9KDNebCNhFlasSzgrL9zM5QGsHBUWL+jrruUS9QqN4bkT0R7zSwDqVgKelg
 POaoKDj22mueTFWDR/9V46mHoD0wEPmLGQRCYG+EVpVSJVVk5Ax4ykagGcxRQ2p0dN+Bgzmf8N
 fzUVzNsoueOognXIJgtXYBcH5rt+EAidzHG5fXzG0Bb9x3cldsy2yT/FzPsCd3Ixef+qyHJiDF
 Jd09vWV4JSDB+pd1tXtdR1+yb76b4NzFbwPhbBi8D5U6dos9Gyrymu3OwbS92rUBi7jLVxFrBP
 6Hs=
X-IronPort-AV: E=Sophos;i="5.69,246,1571673600"; d="scan'208";a="124821889"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Nov 2019 03:05:30 +0800
IronPort-SDR: ZfiOe+tL3eQXgTPaJQsTYoFEZ/ecXawcg688pfe+WHCMCCDqSgAH4CdTwtWJxiIndbET3WrLow
 HJAccmlctIyPqzXjTB0GloK8iaZyvcf6y0Ju0Y1T0yC0b0v2IVWh2DnmqR/AEZdvF2Y1biPxUn
 86aH1M6PpLZ1riNGTw9SqrOpMJcf4saMgCxc1Rf/3n/9v8+SUzp/kYTd3nfM7l0FgejduN9j3c
 18fjrio3GTcSDRdVAWTQv6M2AK4ALqQGCQH905zAkZABtUUnE0fg4c+FBln+SMw2rJ9As7GFZX
 +vtAi49vwn1eVIQNqSN+pvsz
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 11:00:08 -0800
IronPort-SDR: u2MmJIFf7NloOdDU92JSzs09Dxcub3v4QUwQaOkChqW7kbLCk4BdI2WfbRWvU+LFE8lvCp83TV
 6ZUCISLUseEwZuU7SEAuDcJOJ6Fhnjwq4z1yWlTG6UP2qhQjrVFsC+Me0isQTIQd5wM4ckt4M6
 /fTNdtONAcZzMwAkH1Ezhm8FxfG72Bwkx2AbGx2D/cXwrsXGfo2fvSoY+9S2rx1+eBXl1aqSJ4
 aD2+aX/uuqEpGmwNmQK9tmCB+8SNqLPh8ibOsdhSrWTeeSruIml8C60mbboCoW4PU2Yc0gMWPn
 T2M=
WDCIronportException: Internal
Received: from usa003951.ad.shared (HELO yoda.hgst.com) ([10.86.50.226])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Nov 2019 11:05:30 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/4] RISC-V: Implement new SBI v0.2 extensions
Date: Tue, 26 Nov 2019 11:05:03 -0800
Message-Id: <20191126190503.19303-5-atish.patra@wdc.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126190503.19303-1-atish.patra@wdc.com>
References: <20191126190503.19303-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_110535_326419_B234B0CA 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>, Anup Patel <anup@brainfault.org>,
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
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/sbi.h |  35 ++++++
 arch/riscv/kernel/sbi.c      | 208 +++++++++++++++++++++++++++++++++--
 2 files changed, 236 insertions(+), 7 deletions(-)

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
index ee710bfe0b0e..af3d5f8d8af7 100644
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
@@ -356,11 +534,27 @@ int __init sbi_init(void)
 	if (!sbi_spec_is_0_1()) {
 		pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
 			sbi_get_firmware_id(), sbi_get_firmware_version());
+		if (sbi_probe_extension(SBI_EXT_TIME) > 0) {
+			__sbi_set_timer = __sbi_set_timer_v02;
+			pr_info("SBI v0.2 TIME extension detected\n");
+		} else
+			__sbi_set_timer = __sbi_set_timer_dummy_warn;
+		if (sbi_probe_extension(SBI_EXT_IPI) > 0) {
+			__sbi_send_ipi	= __sbi_send_ipi_v02;
+			pr_info("SBI v0.2 IPI extension detected\n");
+		} else
+			__sbi_send_ipi = __sbi_send_ipi_dummy_warn;
+		if (sbi_probe_extension(SBI_EXT_RFENCE) > 0) {
+			__sbi_rfence	= __sbi_rfence_v02;
+			pr_info("SBI v0.2 RFENCE extension detected\n");
+		} else
+			__sbi_rfence	= __sbi_rfence_dummy_warn;
+
+	} else {
+		__sbi_set_timer = __sbi_set_timer_v01;
+		__sbi_send_ipi	= __sbi_send_ipi_v01;
+		__sbi_rfence	= __sbi_rfence_v01;
 	}
 
-	__sbi_set_timer = __sbi_set_timer_v01;
-	__sbi_send_ipi	= __sbi_send_ipi_v01;
-	__sbi_rfence	= __sbi_rfence_v01;
-
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
