Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BB180465
	for <lists+linux-riscv@lfdr.de>; Sat,  3 Aug 2019 06:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVveKsbmSuIAW1C4jYSS9FOdtiZWI9ZuQXay/hdALJs=; b=H/Af+0NGzpMVrf
	0PUxC+o4bnloZq1NJHQQ3HEPCpurizeCus0WwZZIrSFVEtYQFL6Gi633F0Hg/9ZbNL1qHkq0Jk5Sb
	mOyjCEp03ObJhSh/N1MmHN6xKxOU7WzMP78SXF3y6OzLJMG2g8Vojv82bME5k1j1UEGJBwTzdm+SD
	ym6mUD5E2q0BX9bNdV7254jcGuK1pSnQ5Zl+q3qDwqZV/DK0A8SUryecJYD7wQtKuCzOtjJEnKCtO
	Bkku1aA5MjoHgyAQP81Mm7U3Ul/GxVBFBKqR+qNh8BQ7SjZfDLqZeEi0HkFcyftyyZZfcg67MPfc9
	KFdHR/N8SoFseONjiNxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htldo-0001kT-Rx; Sat, 03 Aug 2019 04:27:36 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htldi-0001gj-ML
 for linux-riscv@lists.infradead.org; Sat, 03 Aug 2019 04:27:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564806451; x=1596342451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YwZBgjDKqJC0ZZ1pMUEYPgwPKNXhIZ+3mPkTf+XP88Q=;
 b=PSVEE0GhqaGMH/Fx1i48j8z3QGw0K7/3ihCjUTEnOn6ZnSyxcKVRCLJL
 UrWg5og84hJWHNE1vr9vrohPWAZlJv0sTQ86LgoBKVkRJPIeWkFjjjXCs
 laqbGIhcTdo3plYNU0O6pzdrKKlbGPvUNIDPSVyPPFqWjhsLTvLjLpHnv
 pdNkr6Rdt1NaYHPrsEK3Srklpsos5a98ywYl8MjPf7tQJ7Inzw0tJ5n45
 W9m3yPOPe+AR4FgLSbYYEfDXRm1hk8GG7akk1MQE+yaDKg87jiZVCHxKs
 KZ6R2kEPjDOp80nTXWnbvSeVpT6r6vXAx9C9+l1hwddgowk5vwuUxyLa/ g==;
IronPort-SDR: 7+kBecEywh/R7rQuNoKGUwzpe6WOZDSFzf/+cgaV+cLiOVe7CPXizlsS1XuB7HbhUMMNXABsvI
 PtyhutotrSp8uc1WHb7oJZg4ZpYJc15AOlbpC1VIWf4sT7I+8BUqcX8qpkLaNEy5iqZTMBBILG
 3k3mrkRfLhpzspCw7W93EqXBDg/gp3qKYoHVNI1gQWm0gZjNd5OpbB09P7ls5r9jO8a5gTV2B9
 svwrAir17gvdHRLCiMyP23yxUPBSIr+ntLu+Jjf7XrxVoTO2vD3fPZdWNanFXR82Bi+XDikYlx
 Vxg=
X-IronPort-AV: E=Sophos;i="5.64,340,1559491200"; d="scan'208";a="119512916"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 03 Aug 2019 12:27:24 +0800
IronPort-SDR: ERcq+ZC+qqSblNs6kKYOxBPSKv8tZU2DziwZtA/r1QGetFtfteKH8qhSmoWjf7h401ciwPFUgq
 MK3I0UWRx23ZqtjLyWWblPgDrdp9fGuO2Ww+cSdtPnRkZ9GeoWBkMn6HzVw1nRkHL6JpTadT62
 WN+n5L66AnMJhRWHb9edoJ+fnA5wobB0WL81a0wa3RdXiMluxZ93zH7YYyqEViJXr2IzQeyY2x
 7/tT1q4Cii3jEpLwZRCpu4DjoVrZO8l64lOrYXAn67DfWpUh9BW0ru9Wu3Q3ZaCpM/QgvpAi3h
 Z7Ou8FY8S3HzKcBLbiekx52n
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 21:25:19 -0700
IronPort-SDR: TGgqUa3HMqMxaoqCTrW3QLhYzOybrFKDPM08KZJsMMokyJlt2xboQ3altV76Sv9C9uUZZkLWnI
 zVJqpFyVRR9/RWCbiE0HxBLFX06w3P5AuyXEgJHhpvCKMonHCKEAn1hASuNd7mITpiXXqX8VmP
 zeqUjphUfgNIlztN4eKpU9bua6UbA0LDRfNj+c0bqpFNv6I9Aa+dF4raJPHjJB6nYDIysT0r7y
 1CGPA5FIQqHpxMc9dSnJyFXl+y+J4pSxSrdqTQgJZMRn1IGAbKRvK1xjggyIUTJb17h5l3wN/P
 nh8=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 02 Aug 2019 21:27:25 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/4] RISC-V: Add riscv_isa reprensenting ISA features
 common across CPUs
Date: Fri,  2 Aug 2019 21:27:21 -0700
Message-Id: <20190803042723.7163-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190803042723.7163-1-atish.patra@wdc.com>
References: <20190803042723.7163-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_212730_843962_42737522 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Anup Patel <anup.patel@wdc.com>

This patch adds riscv_isa integer to represent ISA features common
across all CPUs. The riscv_isa is not same as elf_hwcap because
elf_hwcap will only have ISA features relevant for user-space apps
whereas riscv_isa will have ISA features relevant to both kernel
and user-space apps.

One of the use case is KVM hypervisor where riscv_isa will be used
to do following operations:

1. Check whether hypervisor extension is available
2. Find ISA features that need to be virtualized (e.g. floating
   point support, vector extension, etc.)

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/hwcap.h | 16 ++++++++++++++
 arch/riscv/kernel/cpufeature.c | 39 +++++++++++++++++++++++++++++++---
 2 files changed, 52 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 7ecb7c6a57b1..717306780add 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -22,5 +22,21 @@ enum {
 };
 
 extern unsigned long elf_hwcap;
+
+#define RISCV_ISA_EXT_a		(1UL << ('a' - 'a'))
+#define RISCV_ISA_EXT_c		(1UL << ('c' - 'a'))
+#define RISCV_ISA_EXT_d		(1UL << ('d' - 'a'))
+#define RISCV_ISA_EXT_f		(1UL << ('f' - 'a'))
+#define RISCV_ISA_EXT_h		(1UL << ('h' - 'a'))
+#define RISCV_ISA_EXT_i		(1UL << ('i' - 'a'))
+#define RISCV_ISA_EXT_m		(1UL << ('m' - 'a'))
+#define RISCV_ISA_EXT_s		(1UL << ('s' - 'a'))
+#define RISCV_ISA_EXT_u		(1UL << ('u' - 'a'))
+
+extern unsigned long riscv_isa;
+
+#define riscv_isa_extension_available(ext_char)	\
+		(riscv_isa & RISCV_ISA_EXT_##ext_char)
+
 #endif
 #endif
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index b1ade9a49347..becc99272341 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -12,6 +12,9 @@
 #include <asm/smp.h>
 
 unsigned long elf_hwcap __read_mostly;
+unsigned long riscv_isa __read_mostly;
+EXPORT_SYMBOL_GPL(riscv_isa);
+
 #ifdef CONFIG_FPU
 bool has_fpu __read_mostly;
 #endif
@@ -20,7 +23,8 @@ void riscv_fill_hwcap(void)
 {
 	struct device_node *node;
 	const char *isa;
-	size_t i;
+	char print_str[BITS_PER_LONG+1];
+	size_t i, j, isa_len;
 	static unsigned long isa2hwcap[256] = {0};
 
 	isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
@@ -31,9 +35,11 @@ void riscv_fill_hwcap(void)
 	isa2hwcap['c'] = isa2hwcap['C'] = COMPAT_HWCAP_ISA_C;
 
 	elf_hwcap = 0;
+	riscv_isa = 0;
 
 	for_each_of_cpu_node(node) {
 		unsigned long this_hwcap = 0;
+		unsigned long this_isa = 0;
 
 		if (riscv_of_processor_hartid(node) < 0)
 			continue;
@@ -43,8 +49,20 @@ void riscv_fill_hwcap(void)
 			continue;
 		}
 
-		for (i = 0; i < strlen(isa); ++i)
+		i = 0;
+		isa_len = strlen(isa);
+#if defined(CONFIG_32BIT)
+		if (!strncmp(isa, "rv32", 4))
+			i += 4;
+#elif defined(CONFIG_64BIT)
+		if (!strncmp(isa, "rv64", 4))
+			i += 4;
+#endif
+		for (; i < isa_len; ++i) {
 			this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
+			if ('a' <= isa[i] && isa[i] <= 'z')
+				this_isa |= (1UL << (isa[i] - 'a'));
+		}
 
 		/*
 		 * All "okay" hart should have same isa. Set HWCAP based on
@@ -55,6 +73,11 @@ void riscv_fill_hwcap(void)
 			elf_hwcap &= this_hwcap;
 		else
 			elf_hwcap = this_hwcap;
+
+		if (riscv_isa)
+			riscv_isa &= this_isa;
+		else
+			riscv_isa = this_isa;
 	}
 
 	/* We don't support systems with F but without D, so mask those out
@@ -64,7 +87,17 @@ void riscv_fill_hwcap(void)
 		elf_hwcap &= ~COMPAT_HWCAP_ISA_F;
 	}
 
-	pr_info("elf_hwcap is 0x%lx\n", elf_hwcap);
+	memset(print_str, 0, sizeof(print_str));
+	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
+		if (riscv_isa & (1UL << i))
+			print_str[j++] = (char)('a' + i);
+	pr_info("riscv: ISA extensions %s\n", print_str);
+
+	memset(print_str, 0, sizeof(print_str));
+	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
+		if (elf_hwcap & (1UL << i))
+			print_str[j++] = (char)('a' + i);
+	pr_info("riscv: ELF capabilities %s\n", print_str);
 
 #ifdef CONFIG_FPU
 	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
