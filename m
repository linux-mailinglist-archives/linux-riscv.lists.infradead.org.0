Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F71814AE19
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 03:28:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYGWuP7p+OY5r5djdIR4zZ1YI5BsuaATzEjCZHq2qdc=; b=CM//6ryVBoo0fX
	W50TFTumWGom/3d938U28zgtHN1z65r8vSdCrYdWJpFcKNb7oJ87enzF+REBXm6zCkvFEWpKiRIuv
	ViJ8XU0h9QUXBIQi1XgOYv+D9AgJzBGlLDx40F8Bb4AAJGIXznJ1J/AZzZQLIbtKD77NraT4iYHHN
	WdG2SArDVJaTvXPRZ2dGvEmfzGXG0NFl899JnE0wHu/W7iquLl9ipjb8k9O1iuwIhm8TcBJZ1jeaa
	mUGJVsvFGy0EwOmSE/uHwoYdoSk4d7Ka0YqU5v31ChjUqjuHboZ7NiJbccVRVwBseBuZFKp3j+Qdq
	lyUzOuOPxjN7/SgDgf7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGcC-0006Cd-A9; Tue, 28 Jan 2020 02:28:32 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGbs-0005ps-VW
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 02:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580178515; x=1611714515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JHpPLFr6vGVpqUFOcQ9VONtgOFfqP4DecPnVFjv5he8=;
 b=qZfdKCUVfFD50zKqGk9y3PYXOkZJBvRE+PJrZYDDSvQGh0lQ80QoVUVX
 ggcr0mtTjzcnOrwPhmktnFgY4dOum4QC5wPIU+ADhjNaHesdTJ1zCGsez
 H3by7JN1AITHJ5GNXpaVSG4UHwWplOk0w82yeCwtqqt41nMLx9kxdhl6B
 CV/jpGJkjR5BU3VN2y2IlqsAgVpx1Z3cU9A0qKRBV9HsZi49FKOVYLg1s
 6ocunq+4q/+8vnTZ9iyP9xaATrbpIRmEyiNrcEWaufzPxiSIG7nhLLsCD
 fTeO44LbDTlqCgTLVt7bxHwFc5Vd0WIJxPdUpEzeRCCzKvqr7rIDGfSsO A==;
IronPort-SDR: DlaoR2xCL+j1W6dy/kBrWo1moptz5FexxLyp8Z9DZYNpti/YCb4Q2977DY33hipLnAiKquFru6
 bQTRnapHOQzYQiFU2tC9V41fNHldMCJrcMFAxBx2Y7kOkl+aZ2jzBSJ42v1eph1f/UUL8sYLDf
 mIGWGEDseDeglUf38UXGmPnOlQrZqwo7S1TQab/vx4gXs9mAj2pOmEI5MegRkGIzZE+YuTV20I
 l/HEDrynF5SVt3PlQmERSHxaqIOd5I2WRA4hCvulx3wgxamRDR0WXqsU7jt4TdZiZ0AeNn+SUy
 Ecw=
X-IronPort-AV: E=Sophos;i="5.70,372,1574092800"; d="scan'208";a="230237594"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2020 10:28:29 +0800
IronPort-SDR: MV2aVcTzwrOt1/FwK2hvNQlIeeQsIost2Syeo2GGwM/c1qzhaZcAZ8nBf6GomKnpihbkqPzFCm
 FyeuKOpS+Tg8Vm573A9U++W0c5gQl9SUezK8NSEQe4qemh1PzkRrCxcH9aRSrerNL2/+eabUf6
 h6UsOzHYGb5ZRzU13EJmxsAbjJTd8sI5snNFJNfwaQIvwd/85vHzEiYAjgR0WYiCWf1JDbAO13
 kRL+NO4VpJtRPhcv2K3PDr1QKnhfD2LKrq2/KTHvQh9o8Bv1dh5fJYpm26ETsm3qEEwpCO3KEs
 hc4u80fUwhsBMk0iEeRVUz1r
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 18:21:24 -0800
IronPort-SDR: aPHdvZjkLORq5xZwWPHojsFiJ0wTJEj59qMq2ru77ik/GzwSIBtwSoUzyKNyQIMsM/uyPR6P44
 5XJr3iqKeak23qkYiR8GlGPOirOi9U4lGX/Kfl0x2xostWWAMkos3aoVJe1F+2jo/35YMGPeD8
 d3OWVM0IxCZ/rrzRL8jjsg4BTQXURp4ZDTp4FWbGNP3NFgLKb6xdE5dlw2fzaGWwMzotmdObCI
 eL12jM8ddB8KlXHA0NeM4Z2Tz3hOq3rXgpVy35Sfoqld5yOWEH+9b+lnD0kjZTWWJXB+VKi7FK
 IXE=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jan 2020 18:28:10 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 05/10] RISC-V: Implement new SBI v0.2 extensions
Date: Mon, 27 Jan 2020 18:27:32 -0800
Message-Id: <20200128022737.15371-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200128022737.15371-1-atish.patra@wdc.com>
References: <20200128022737.15371-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_182813_106106_53C2353C 
X-CRM114-Status: GOOD (  16.01  )
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

Few v0.1 SBI calls are being replaced by new SBI calls that follows v0.2
calling convention.

Implement the replacement extensions and few additional new SBI function calls
that makes way for a better SBI interface in future.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/sbi.h |  14 +++
 arch/riscv/include/asm/smp.h |   7 ++
 arch/riscv/kernel/sbi.c      | 199 ++++++++++++++++++++++++++++++++++-
 3 files changed, 216 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 4d67bef8f894..d55d8090ab5c 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -96,6 +96,20 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
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
 int sbi_probe_extension(int ext);
 
 /* Check if current SBI specification version is 0.1 or not */
diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
index a83451d73a4e..023f74fb8b3b 100644
--- a/arch/riscv/include/asm/smp.h
+++ b/arch/riscv/include/asm/smp.h
@@ -61,5 +61,12 @@ static inline unsigned long cpuid_to_hartid_map(int cpu)
 	return boot_cpu_hartid;
 }
 
+static inline void riscv_cpuid_to_hartid_mask(const struct cpumask *in,
+					      struct cpumask *out)
+{
+	cpumask_clear(out);
+	cpumask_set_cpu(boot_cpu_hartid, out);
+}
+
 #endif /* CONFIG_SMP */
 #endif /* _ASM_RISCV_SMP_H */
diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
index 265637cb5eb0..3c34aba30f6f 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -8,6 +8,7 @@
 #include <linux/init.h>
 #include <linux/pm.h>
 #include <asm/sbi.h>
+#include <asm/smp.h>
 
 /* default SBI version is 0.1 */
 unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
@@ -193,6 +194,102 @@ static int __sbi_rfence_v01(int fid,
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
+	struct cpumask tmask;
+	struct sbiret ret = {0};
+	int result;
+
+	if (!hart_mask) {
+		riscv_cpuid_to_hartid_mask(cpu_online_mask, &tmask);
+		hmask_val = *(cpumask_bits(&tmask));
+	} else
+		hmask_val = *hart_mask;
+
+	ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI, hmask_val,
+			0, 0, 0, 0, 0);
+	if (ret.error) {
+		result = sbi_err_map_linux_errno(ret.error);
+		pr_err("%s: failed with error [%d]\n", __func__, result);
+	} else
+		result = ret.value;
+
+	return result;
+}
+
+static int __sbi_rfence_v02(int fid, const unsigned long *hart_mask,
+			    unsigned long hbase, unsigned long start,
+			    unsigned long size, unsigned long arg4,
+			    unsigned long arg5)
+{
+	unsigned long hmask_val;
+	struct cpumask tmask;
+	struct sbiret ret = {0};
+	int ext = SBI_EXT_RFENCE;
+	int result;
+
+	if (!hart_mask) {
+		riscv_cpuid_to_hartid_mask(cpu_online_mask, &tmask);
+		hmask_val = *(cpumask_bits(&tmask));
+	} else
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
+		pr_err("unknown function ID [%d] for SBI extension [%d]\n",
+			fid, ext);
+		result = -EINVAL;
+	}
+
+	if (ret.error) {
+		result = sbi_err_map_linux_errno(ret.error);
+		pr_err("%s: failed with error [%d]\n", __func__, result);
+	} else
+		result = ret.value;
+
+	return result;
+}
+
 /**
  * sbi_set_timer() - Program the timer for next timer event.
  * @stime_value: The value after which next timer event should fire.
@@ -269,6 +366,85 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
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
+	return __sbi_rfence(SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
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
+	return __sbi_rfence(SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
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
+	return __sbi_rfence(SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
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
+	return __sbi_rfence(SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
+			    hart_mask, 0, start, size, asid, 0);
+}
+EXPORT_SYMBOL(sbi_remote_hfence_vvma_asid);
+
 /**
  * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
  * @extid: The extension ID to be probed.
@@ -335,11 +511,26 @@ int __init sbi_init(void)
 	if (!sbi_spec_is_0_1()) {
 		pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
 			sbi_get_firmware_id(), sbi_get_firmware_version());
+		if (sbi_probe_extension(SBI_EXT_TIME) > 0) {
+			__sbi_set_timer = __sbi_set_timer_v02;
+			pr_info("SBI v0.2 TIME extension detected\n");
+		} else
+			__sbi_set_timer = __sbi_set_timer_v01;
+		if (sbi_probe_extension(SBI_EXT_IPI) > 0) {
+			__sbi_send_ipi	= __sbi_send_ipi_v02;
+			pr_info("SBI v0.2 IPI extension detected\n");
+		} else
+			__sbi_send_ipi	= __sbi_send_ipi_v01;
+		if (sbi_probe_extension(SBI_EXT_RFENCE) > 0) {
+			__sbi_rfence	= __sbi_rfence_v02;
+			pr_info("SBI v0.2 RFENCE extension detected\n");
+		} else
+			__sbi_rfence	= __sbi_rfence_v01;
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
2.24.0


