Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA7118938B
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 02:12:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRQA3j773Ca9WiIrfWGfvj6rmGhfFfjpTJfP/6A1628=; b=dm5Naw1/vvvlBW
	OOXMHSxRyOwLHZ3S/Z2Y0SV2UAQf8Uw61bE0U/9J26ORLMityJMgx3ciiYdwJuBpxU26kA5jkU6lF
	hWXScDiyIhEI20FGNHUOUaEUERxd7/HO8ljklWHiI1js3IUJMMj6LXSFLiBUMZN4nhoWq0DwLKdHf
	COvzlXdV3ci/JDXg4Fn/BmM9U1FaMvQDzANl9F9ux7WpxfLlsCBZsfpySKphbOqX1pOR8QcB7/MDj
	bJM66H5VLvyHkLfGzRuHIghZTkx4yNy/yuYEKulatMfR5W/LsrBv/cdh/ZE++CohXrvprpN0YcuPZ
	rLVpeujlNAki7jh78FsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENFy-0007Ng-KS; Wed, 18 Mar 2020 01:12:26 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENFe-0006us-8z
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 01:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584493926; x=1616029926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9mZeJ6XPAWepkvNCNb1GTiizBSn2rBfLcZ6CwOjh81U=;
 b=T1/5d/DV4FmXG4HaunQgP8Ualk1a2KIpq+pkaL0VaxRWSf1IqDWteqR6
 +Q4nJK3Vdbe9Ol46AEZdSxrELchZZXTZheM35IUQ7LW7rFpdhXu7u1pr6
 qCVKKklZMozjXJDDDFcUijpon2IwWYY/CzvPhDREA5xghl8ebj4cjJVDI
 LdK9HQ0zTQvRNjpIRvC7GDu/9S7FfEVgZlO9hZI6rNWpZxXIqrmyamHz5
 G1x/dceMu4HnsKn2qBmSW2vh+dadvAyZlOAVazV1HjOw1ub2n6KkDnMkA
 WU0vGBP3WciyBjPOX/0ukJm51u9DlsktXdyK8PDLYtuR1WkreJ7VCkglR w==;
IronPort-SDR: tL7zcn6ctsoocVOPZtZVty0PtHLJxhZPjEZ6m0xLeZN1nGK7AOxCk77pB8GvuS0086oDa9kF+Y
 XaKw8fVHimfTiBb5YlQSv3IDXN6KZulXeY/oIeWye/a5fZXtJyrKgOomQi2xrj30T75HKThXAb
 hW/bcJhZAP0647gqPZy6cyn8jFepRIp5JZyQLu1pllTHzSJD+DtYo5ZhV+BlqZymPgPY0LKsIt
 7Yw2h7TODwJ85t2e+0HWkdvsSNMhWnGTSpzan9WZIAz6DJWjH8orAP/QImNBnNg96iXWkb52zu
 vj0=
X-IronPort-AV: E=Sophos;i="5.70,565,1574092800"; d="scan'208";a="134242157"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 Mar 2020 09:11:59 +0800
IronPort-SDR: ydBN/089jnXcqw1bSHVLUTjQ7nERSlLLJOgNxM65LE+F8ZmmxKhZEZyKt+Hl256Om/EDXO6jpn
 cL492XN9ymiefDCzdS7t1y4MMHh4um/5+rb1SWUoz+XNY+OweLLLy/6ggisVJtS7WnNAyeP7Id
 Q8H3t8teyRfxHuuk4VINlqiE9C0pC5Y736lkBNp123RsLqY6E8VS+unM5fMFGYdWqjl1PqdIBO
 Jcl7RZVAVTRckSQ4VLnGBdRwMR/eYJesoQKkfCgyW0d91Rs5HaV9wO/lc5EpcASRpw+yDELfao
 r3ZbGDUzJEkZeLZx1XMHfMnh
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 18:03:25 -0700
IronPort-SDR: l/nFptKcHTLuei5noque9l5OZX3s6f/sCypBvp2c+D3UHtTmV24L3nu/S5fy7PLz6dib85At0+
 XTN/ruEKSEPVyR73L1jM8aOgHxmW7yh8ZjbH27RH7neHD3brzEh5gbXM2xM7juev7PV5qAPLHC
 iBfll11F9RrZ2qDf0zSZoW+OxHtImd3vE0hWMZtdJrNeu6CrRXimQQ4xkEE4tpkZ4w3WhnyPZT
 2GCn3DLKTASPH931udyZgURsIEym5pWCwlzmqJdT1BOsBgjKnbS/YZ/yj7xqhxeAfzcXVc3oDQ
 b+w=
WDCIronportException: Internal
Received: from mccorma-lt.ad.shared (HELO yoda.hgst.com) ([10.86.54.125])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Mar 2020 18:11:58 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v11 05/11] RISC-V: Implement new SBI v0.2 extensions
Date: Tue, 17 Mar 2020 18:11:38 -0700
Message-Id: <20200318011144.91532-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200318011144.91532-1-atish.patra@wdc.com>
References: <20200318011144.91532-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_181206_354960_F8A3522C 
X-CRM114-Status: GOOD (  17.30  )
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

Few v0.1 SBI calls are being replaced by new SBI calls that follows v0.2
calling convention.

Implement the replacement extensions and few additional new SBI function calls
that makes way for a better SBI interface in future.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/sbi.h |  14 ++
 arch/riscv/include/asm/smp.h |   7 +
 arch/riscv/kernel/sbi.c      | 253 ++++++++++++++++++++++++++++++++++-
 3 files changed, 270 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index d712b61f8dbc..29ce2c494386 100644
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
index 1368da62ec82..1cc0052e1b63 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -8,6 +8,7 @@
 #include <linux/init.h>
 #include <linux/pm.h>
 #include <asm/sbi.h>
+#include <asm/smp.h>
 
 /* default SBI version is 0.1 */
 unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
@@ -191,6 +192,153 @@ static int __sbi_rfence_v01(int fid, const unsigned long *hart_mask,
 }
 #endif /* CONFIG_RISCV_SBI_V01 */
 
+static void __sbi_set_timer_v02(uint64_t stime_value)
+{
+#if __riscv_xlen == 32
+	sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value,
+		  stime_value >> 32, 0, 0, 0, 0);
+#else
+	sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value, 0,
+		  0, 0, 0, 0);
+#endif
+}
+
+static int __sbi_send_ipi_v02(const unsigned long *hart_mask)
+{
+	unsigned long hartid, hmask_val, hbase;
+	struct cpumask tmask;
+	struct sbiret ret = {0};
+	int result;
+
+	if (!hart_mask || !(*hart_mask)) {
+		riscv_cpuid_to_hartid_mask(cpu_online_mask, &tmask);
+		hart_mask = cpumask_bits(&tmask);
+	}
+
+	hmask_val = 0;
+	hbase = 0;
+	for_each_set_bit(hartid, hart_mask, NR_CPUS) {
+		if (hmask_val && ((hbase + BITS_PER_LONG) <= hartid)) {
+			ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI,
+					hmask_val, hbase, 0, 0, 0, 0);
+			if (ret.error)
+				goto ecall_failed;
+			hmask_val = 0;
+			hbase = 0;
+		}
+		if (!hmask_val)
+			hbase = hartid;
+		hmask_val |= 1UL << (hartid - hbase);
+	}
+
+	if (hmask_val) {
+		ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI,
+				hmask_val, hbase, 0, 0, 0, 0);
+		if (ret.error)
+			goto ecall_failed;
+	}
+
+	return 0;
+
+ecall_failed:
+	result = sbi_err_map_linux_errno(ret.error);
+	pr_err("%s: hbase = [%lu] hmask = [0x%lx] failed (error [%d])\n",
+	       __func__, hbase, hmask_val, result);
+	return result;
+}
+
+static int __sbi_rfence_v02_call(unsigned long fid, unsigned long hmask_val,
+				 unsigned long hbase, unsigned long start,
+				 unsigned long size, unsigned long arg4,
+				 unsigned long arg5)
+{
+	struct sbiret ret = {0};
+	int ext = SBI_EXT_RFENCE;
+	int result = 0;
+
+	switch (fid) {
+	case SBI_EXT_RFENCE_REMOTE_FENCE_I:
+		ret = sbi_ecall(ext, fid, hmask_val, hbase, 0, 0, 0, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA:
+		ret = sbi_ecall(ext, fid, hmask_val, hbase, start,
+				size, 0, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID:
+		ret = sbi_ecall(ext, fid, hmask_val, hbase, start,
+				size, arg4, 0);
+		break;
+
+	case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA:
+		ret = sbi_ecall(ext, fid, hmask_val, hbase, start,
+				size, 0, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID:
+		ret = sbi_ecall(ext, fid, hmask_val, hbase, start,
+				size, arg4, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA:
+		ret = sbi_ecall(ext, fid, hmask_val, hbase, start,
+				size, 0, 0);
+		break;
+	case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID:
+		ret = sbi_ecall(ext, fid, hmask_val, hbase, start,
+				size, arg4, 0);
+		break;
+	default:
+		pr_err("unknown function ID [%lu] for SBI extension [%d]\n",
+		       fid, ext);
+		result = -EINVAL;
+	}
+
+	if (ret.error) {
+		result = sbi_err_map_linux_errno(ret.error);
+		pr_err("%s: hbase = [%lu] hmask = [0x%lx] failed (error [%d])\n",
+		       __func__, hbase, hmask_val, result);
+	}
+
+	return result;
+}
+
+static int __sbi_rfence_v02(int fid, const unsigned long *hart_mask,
+			    unsigned long start, unsigned long size,
+			    unsigned long arg4, unsigned long arg5)
+{
+	unsigned long hmask_val, hartid, hbase;
+	struct cpumask tmask;
+	int result;
+
+	if (!hart_mask || !(*hart_mask)) {
+		riscv_cpuid_to_hartid_mask(cpu_online_mask, &tmask);
+		hart_mask = cpumask_bits(&tmask);
+	}
+
+	hmask_val = 0;
+	hbase = 0;
+	for_each_set_bit(hartid, hart_mask, NR_CPUS) {
+		if (hmask_val && ((hbase + BITS_PER_LONG) <= hartid)) {
+			result = __sbi_rfence_v02_call(fid, hmask_val, hbase,
+						       start, size, arg4, arg5);
+			if (result)
+				return result;
+			hmask_val = 0;
+			hbase = 0;
+		}
+		if (!hmask_val)
+			hbase = hartid;
+		hmask_val |= 1UL << (hartid - hbase);
+	}
+
+	if (hmask_val) {
+		result = __sbi_rfence_v02_call(fid, hmask_val, hbase,
+					       start, size, arg4, arg5);
+		if (result)
+			return result;
+	}
+
+	return 0;
+}
+
 /**
  * sbi_set_timer() - Program the timer for next timer event.
  * @stime_value: The value after which next timer event should fire.
@@ -266,6 +414,85 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
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
+			   unsigned long start,
+			   unsigned long size)
+{
+	return __sbi_rfence(SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
+			    hart_mask, start, size, 0, 0);
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
+				unsigned long start,
+				unsigned long size,
+				unsigned long vmid)
+{
+	return __sbi_rfence(SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
+			    hart_mask, start, size, vmid, 0);
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
+			   unsigned long start,
+			   unsigned long size)
+{
+	return __sbi_rfence(SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
+			    hart_mask, start, size, 0, 0);
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
+				unsigned long start,
+				unsigned long size,
+				unsigned long asid)
+{
+	return __sbi_rfence(SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
+			    hart_mask, start, size, asid, 0);
+}
+EXPORT_SYMBOL(sbi_remote_hfence_vvma_asid);
+
 /**
  * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
  * @extid: The extension ID to be probed.
@@ -332,11 +559,29 @@ int __init sbi_init(void)
 	if (!sbi_spec_is_0_1()) {
 		pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
 			sbi_get_firmware_id(), sbi_get_firmware_version());
+		if (sbi_probe_extension(SBI_EXT_TIME) > 0) {
+			__sbi_set_timer = __sbi_set_timer_v02;
+			pr_info("SBI v0.2 TIME extension detected\n");
+		} else {
+			__sbi_set_timer = __sbi_set_timer_v01;
+		}
+		if (sbi_probe_extension(SBI_EXT_IPI) > 0) {
+			__sbi_send_ipi	= __sbi_send_ipi_v02;
+			pr_info("SBI v0.2 IPI extension detected\n");
+		} else {
+			__sbi_send_ipi	= __sbi_send_ipi_v01;
+		}
+		if (sbi_probe_extension(SBI_EXT_RFENCE) > 0) {
+			__sbi_rfence	= __sbi_rfence_v02;
+			pr_info("SBI v0.2 RFENCE extension detected\n");
+		} else {
+			__sbi_rfence	= __sbi_rfence_v01;
+		}
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
2.25.1


