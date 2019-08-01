Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9D87D27C
	for <lists+linux-riscv@lfdr.de>; Thu,  1 Aug 2019 02:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVveKsbmSuIAW1C4jYSS9FOdtiZWI9ZuQXay/hdALJs=; b=Dwb0usXwCYmBvX
	8sYPclmQ9vfCMddUbztymUyxnZl5BEmDv3Hd14u8U4HfF37JUZX7u6rVj/aRFZegmwvbDEjHAJBm0
	nWKZ/79u6hh6NVQa6Vdmqc2AKhBoOFbC9u6g1glGyTDMLP9fHUfsvqc5flA4B5ij9uUHijLTs9yvM
	DUnQR/lbzGMQHPexcWgh2wZ/Padaa/clxZS77NEB/a/hoiCmyKIt35AaY9wZYCcjWpA+1BM05hETp
	JDAv/rFma0nN8rcRspays6EGTnsnOmqmTn3wxMCcWE5MPx0l7fTuUGfvG8xeDTuF9nPx3+SESVUU1
	iOugmzEmQpCYWXsBlVTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszQg-0000Hh-82; Thu, 01 Aug 2019 00:58:50 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszQZ-0000BC-CD
 for linux-riscv@lists.infradead.org; Thu, 01 Aug 2019 00:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564621123; x=1596157123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YwZBgjDKqJC0ZZ1pMUEYPgwPKNXhIZ+3mPkTf+XP88Q=;
 b=WbTdn47DQ90rkrhnfHL00BXKwNIhF2RGlXraMhWNv44dVBQQgNsPebhV
 SA74fcSGKv6nMVV/PwrQMm7ABSO7vW22K9BquFfW7ZgE4bvAnkVd1Mv/5
 TsoHJ9gHx6J1fg2G6ZmlpYw7wkvtBkoTYKIyVCG9qgSYR5DtdbOAd5GGG
 eALXZf505ZlH+V03q+CY98UYAUA4tlULnCsiDsA/x5b8EuSsl/uVAcB8A
 wxLPsjRSQgN+VfKJmYWnBEQ5iGBBnLqF1LapylhrUjHO5tcNCJlh7L89W
 wLPWPM8XjgZpGMig0NlBXk9KpaN1hPcl7gs7h1fV7XZa5LFe8TUq8/+UQ A==;
IronPort-SDR: A7n21wJBwxQsQphWYsYs4qMNqjQv46+2yqn4aJXURyAVhoD1h8vo9WYIJO56wfXnfj0D8nRCmb
 VqBwB7QYOo4CXnpJ0NUg5gn1wPdhbKMmJNf5jRiwzY3ovhMc3J3bCfrGlry77RIqvjfQYh62HL
 O/HA6IpdsCPVqUNtJ5Ry9oT4xCWP4LokOrOC1fSfISXvSTZ4GjKYZmKTtWCNTkuOCOGkZBQSHl
 vaXvFDJJUfUsO4gXimxigrcrUkLp2FtQhnCKmZP+s+g3p44CiDKjxuV4HCvECscJgu5lLTL7I6
 F6U=
X-IronPort-AV: E=Sophos;i="5.64,332,1559491200"; d="scan'208";a="114650420"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 01 Aug 2019 08:58:39 +0800
IronPort-SDR: hAFZfkRJaNpPCk4/bWO1RDiUs2Z5+M72ot6wECJJ0mlgcSCvglO2oas5KWrIf5LKr9JlfSuLxd
 pp2jwDxtTvP++ez7zSdNiAkBzy9LJ0oS5qpFIqnwKCFRK8KOrYjLTOmRu/1aeJTB1Qt3sWCHQ1
 +kWU2qFuY+niq3xL72n+dAc1/jMMbfOxltGSSCQ/u4FOxyuV0QW2f6M4YfS8IVRIN3+mvx3PPP
 Ei6sHrAHpK5Mpihoi3hDD1/qaF0//IC2KUe/OstBujrgW69EJUA8voas+gOgwFa0OiR0KPExOI
 EaDCdveL2bwkICuOKWkjbH7c
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 17:56:38 -0700
IronPort-SDR: T1e0SzIcgbeidAWvNuNAvumncUxVHFgvFczii8DqmVoy1zBX2ca85sDt0rCgDOMxQrRYSX+HKO
 efBEcAIq52JdipV1/Fm91RI8t24689ufuGuTcNBihFFFnfreVpC9XhebG4S+SPu7fGrT2D5+2l
 bxLYDGQSf58/EzfB/WVCHKONjBgfuJ0zTuiVNKOOn/5FQ/fVaLhK1kEuKdKkTWNVw/80nbjeU7
 qLyZfUErNvE5RlONJDFts1toTg3uTGG0UdaPOCLI4dqgA1Lac6v4VNz3rISwyJAvLjHrPS6Ihp
 Tds=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 31 Jul 2019 17:58:38 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/5] RISC-V: Add riscv_isa reprensenting ISA features
 common across CPUs
Date: Wed, 31 Jul 2019 17:58:40 -0700
Message-Id: <20190801005843.10343-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190801005843.10343-1-atish.patra@wdc.com>
References: <20190801005843.10343-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_175843_468050_C4AF7D1F 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Anup Patel <anup.patel@wdc.com>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
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
