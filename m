Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0535C166BFC
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 01:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Na24cIeyUCrzSIC580T44U07TACkF5aADfVGXdlOFA4=; b=VUKD6He9xTGlgh
	EW04ED3TrkV0BmXu2HoqSqsP4poMS5Y4Dm2T71Wcwy33lbqD7bHvWfp/rn8Z5rul+IkVeQrdPeJ8R
	lI01XJimHwEY2vvM/QsNSu93nlhMSTx1UY64/93Y2MwNfS0bK/6atIK0N07geeN9/BB6tycbYsvi7
	ZBERP2MeAEsSAA12s0+pJiV7G3nWqcKO3vZFJesxAs5uHi2ZntzpjECRyQfMFplHpv1mQL7gP1CQ5
	I6euuBG8igNh/L9NLlOYK6dsy/RStGpiCkdOP7x6fXT0gQJuCvNRCjXpa6MIKsgC2XJmI8DU1uqGq
	0CsVT5UeUcKr38Zlm4mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4wRS-000640-9J; Fri, 21 Feb 2020 00:45:18 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4wR5-0004P7-BQ
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 00:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582245916; x=1613781916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nhyjH1m/YNUPQsnIW3Js/eLrtunWQfKMGyEdyDDDGmI=;
 b=jEp0nVHDNjvkEZI7WlGfptDhNJLKESgIKvYmC4z/xfWOoS3sjPXxEYbl
 +2wJoju9uizvR1gxmMF8z87bn5b3CaLKVe9m+eu2gIKQYxGkjppqSEjgL
 auSE0Pq6jvenfOvGjzUmDSeCMs0qLo6B39RQE2cP3cEJ3z0cKrnu6ute6
 OW/Q/fqvA8QUzUeCrCiPkT6m7RKJrVBWI0bbe9aXaECQc3+Ln88ej9Hk8
 htOHdoKgfodN3vHfJlWkw1dMoNZteBiUp2rp1txR40V0KT/9YmaslUA92
 C2wtNctsg7sPV7RuqmLcoGIUi6atwq1Ry+vGQYaYTjPR7Z68LsR0vc+e7 Q==;
IronPort-SDR: M1eS1Y7tod2WyEiDTNfVzWh8HMchUXHjBPVJub8MYV7dmtJHanWkMvllL7jmOPNGHVP31mKOfw
 b7InqwjSk8GS+WR7JHZ/ruuxQFlBGsd/t1z39kxHtvX46GQ5qQTSrwF0mc3/QJRWrzAKplYKib
 BiQVg27djuVgQnRpP2VdDBxC3S0tgOs/PEzOefQU67W+d4bqbu/oA8Ra8QAPqt2z8rs1DlPkds
 9cNJUda3kzPttzUSBJ2eegC7CliFa5WKv9YXxtTb1bJhErw7j5qcLd/e1viuU1O3u3DNJaO3+X
 QN8=
X-IronPort-AV: E=Sophos;i="5.70,466,1574092800"; d="scan'208";a="232211065"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2020 08:45:04 +0800
IronPort-SDR: BLxH/PFd3vsJJFfw9AAQZAEHuKx0oVtnwFTLZ5UfvVsCon6GLmPCuprxEh6pMvQNYHj6piaVow
 B4N4mOZPkQnzY9szzC4skGequKcI9osuLTPV5cXk8V4tT0OopUxl9eoIEinXExB2A4doHo2snq
 BNV4H1azG3ouPheWPK31KINoNYQkdvJQAkF4LRnAxrT0yoXBOPAO4wqp3D2kgmfLP8d+SmNEZQ
 ZD6fG71ThLXX+OCelz+bthL+5keni9khws81J8Pr89HZkhddZSSHlt9HxeX5sSbvZUhCY2blkV
 ce9m6mMD59HuI0EldGw5E7ul
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 16:37:22 -0800
IronPort-SDR: T3Q0usEbKB2E3Ptp9L6npnU+u+gfmFz7XmCbUXSJL/F5HNPRC1nAx6KmLRpYFmzPJHGyxjBcPH
 vYog1yhH3g4MOcyUP4Q2EGRNXqVlh/UgblitZ6eXcgN5u5s0xXlqFd+bGJQKApqIy/fdDgvMOT
 T7R/KkjIUqlVSYaSalWewyc0xvUBlMPskMKoshF3L+dpIHfTtKLCqEJhyGbnB6O9L75yF9U3yv
 AMujM6+ImpgXp92zMAq0pDaaj5K40fuAYDbASCodqHxhT2vvIM6SV43KuJq1QLCrPByjen9TjI
 +pQ=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Feb 2020 16:44:47 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 05/12] RISC-V: Implement new SBI v0.2 extensions
Date: Thu, 20 Feb 2020 16:44:06 -0800
Message-Id: <20200221004413.12869-6-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200221004413.12869-1-atish.patra@wdc.com>
References: <20200221004413.12869-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_164455_482078_E46AFA06 
X-CRM114-Status: GOOD (  16.64  )
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

Few v0.1 SBI calls are being replaced by new SBI calls that follows v0.2
calling convention.

Implement the replacement extensions and few additional new SBI function calls
that makes way for a better SBI interface in future.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/asm/sbi.h |  14 ++
 arch/riscv/include/asm/smp.h |   7 +
 arch/riscv/kernel/sbi.c      | 246 ++++++++++++++++++++++++++++++++++-
 3 files changed, 263 insertions(+), 4 deletions(-)

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
index 73e53833c008..38ec99415060 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -8,6 +8,7 @@
 #include <linux/init.h>
 #include <linux/pm.h>
 #include <asm/sbi.h>
+#include <asm/smp.h>
 
 /* default SBI version is 0.1 */
 unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
@@ -189,6 +190,149 @@ static int __sbi_rfence_v01(int fid, const unsigned long *hart_mask,
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
+	hmask_val = hbase = 0;
+	for_each_set_bit(hartid, hart_mask, NR_CPUS) {
+		if (hmask_val && ((hbase + BITS_PER_LONG) <= hartid)) {
+			ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI,
+					hmask_val, hbase, 0, 0, 0, 0);
+			if (ret.error)
+				goto ecall_failed;
+			hmask_val = hbase = 0;
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
+		__func__, hbase, hmask_val, result);
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
+			fid, ext);
+		result = -EINVAL;
+	}
+
+	if (ret.error) {
+		result = sbi_err_map_linux_errno(ret.error);
+		pr_err("%s: hbase = [%lu] hmask = [0x%lx] failed (error [%d])\n",
+			__func__, hbase, hmask_val, result);
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
+	hmask_val = hbase = 0;
+	for_each_set_bit(hartid, hart_mask, NR_CPUS) {
+		if (hmask_val && ((hbase + BITS_PER_LONG) <= hartid)) {
+			result = __sbi_rfence_v02_call(fid, hmask_val, hbase,
+						       start, size, arg4, arg5);
+			if (result)
+				return result;
+			hmask_val = hbase = 0;
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
@@ -265,6 +409,85 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
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
+					      unsigned long start,
+					      unsigned long size,
+					      unsigned long vmid)
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
+					 unsigned long start,
+					 unsigned long size)
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
+					      unsigned long start,
+					      unsigned long size,
+					      unsigned long asid)
+{
+	return __sbi_rfence(SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
+			    hart_mask, start, size, asid, 0);
+}
+EXPORT_SYMBOL(sbi_remote_hfence_vvma_asid);
+
 /**
  * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
  * @extid: The extension ID to be probed.
@@ -331,11 +554,26 @@ int __init sbi_init(void)
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
2.25.0


