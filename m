Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CB67B78C
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 03:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMvG5lmQHuwSwKUghxekG0NTEA2YZUcmJ73RUWwdfv4=; b=bP31HFLInz+r2H
	0MhKwNNJwNhZFiaZPi3jmLnB+h3duhJCjwBnkaKBl9C/fWbim1PyN2PL7hl8AD0KmAJoW+C5wITap
	GCB+RGpLBy6K9ktd53zxkhdZjBdBcPxiLz2mK20dYuHNpo12SONJEdwqzE+AMSSgCBgVQVm5tmu4a
	XCOXOqFAJCEbmiKmABAMPMKOxgdHf1AUPhRRzLB9Z2tPLC95gJyI7ex5/oeqb5ziKL0JjOQHBwpM3
	vdEsYR4/k/mh6B686Ygq65SVkT5CvY0gd+ghRuO8ovSAY7njdrSolf2cgEYHQAUX1GwVDFiqwzZQ5
	I+TsEE9sTqL9XREhGkHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsdMG-0007rJ-UQ; Wed, 31 Jul 2019 01:24:49 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsdMB-0007mr-Qc
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 01:24:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564536284; x=1596072284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y6AGFaAE1PMVJZ6+rsgH3B7LWIELYj+tSokwx8q21Gg=;
 b=ktC8lVftovL14pMO6BP5UdvcSQrXrTdI9dcNksj+YvBbibWvytZDBl8b
 MrE9RKkkZ9e7zBlV6SVGLdmisVQQnZdwjvrAkfjeP/IedAxiwG78Z/KfO
 28jIK1FTM1QjqiWSUBiUKCid0/qK7kJS8xsoqYbB5w8QgMjNBDnfGjarr
 wPWp/agU/MW0f9xUabGLVz7bn/AFq+bjQywp3a3mL9PP2u/VgeL60Xl04
 E4OjbI/UlWOhepVfX+vekYIgwLH7t7m7MaNSunUSwAjsqbo5MSWdtFJBw
 qJijLIfvomItM++JvfnbumHCmGdB0gZm1ZxRCO83Ukq19g9zQjpB9p/yZ w==;
IronPort-SDR: ePI33lOutM/ivOUXj2jaS+YEcK6Iaa/pwAhUG8KAHK1Ar7uaaX6VeKuXjFW4rrHmIEY/ae2Q7v
 CNDasg8YYlTiAPWRCZomuhAXYQof1sgo4w2wktUPXoofpYXNpksT1sjWeCjmgYMDtL+pkAm/FK
 Lq2AHw7S7YCAb+9+9L1lF1mRw2s1Cdx/mbS/imYOq0z3bLWV5cBHxEF7DQwpzwP1Qx94Li1tdY
 /Bitf8nqxi8O0c4g4eG4MLPJtk+vCIzltH4Cv8OZLdfOLxicVof7TtNn+crdyREpYmVMtlLhkz
 ETE=
X-IronPort-AV: E=Sophos;i="5.64,328,1559491200"; d="scan'208";a="119218128"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 09:24:37 +0800
IronPort-SDR: 56/TH+6ZU/A8/Q5wSdbeSVhvZfX/24LQ81vTgfDD0CPZi9Zzk6gIQRR4GO8aVcwDqTrkaPLKL5
 Pfvw0JAZAYZxfzxrwW+FqdZA5VyvJJy9AN/9/vsdJTwy+vKnId55nGlow07WK2idR8cO+J8lfu
 iHm01s7GtufltVRufd1rtuSxyTITsVgYWVhoxbS2P85P8i0Aw+ZMlAIZWUl9KsBcsR5MP4qpNs
 Hr9t7rou6qsfeunWfgrhynEYrqunnHG5gMks67Y6Sn067bUHuymyfjtUAAUyYDHrNOfsFzDdt+
 qMkKA5uTYrfE2ULqH1uzHXUp
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 30 Jul 2019 18:22:38 -0700
IronPort-SDR: xNRp1O/Qr49vPg3S7RUEcytEJKT39eWC7sCIQ7RAoaIdl7XdAMDHcJjQWkNq/0hzCNZ5Pxx5Ya
 +Dei7WHbONIUPCU3+tcv2mPcLWV/ImofiPdDOCzmrnJogrIKQ0AuLV7t53N5WAZCo6aDHVU8Xz
 Z2j42T5y75hWW3MbvHeD2pQ5m2D/SDpGts+NhkqcGUM6cegK/g/YhRdf6ZggHyrEpZOTbEgNM0
 fo21GU7bpdxwwJz0tJIG/0cQ5j/6tzgbsSr+O3lgGjo7HYeKTP0Ju8lxAzjmD7UiXHE2cFfO3F
 MEg=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 Jul 2019 18:24:37 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/5] RISC-V: Add riscv_isa reprensenting ISA features
 common across CPUs
Date: Tue, 30 Jul 2019 18:24:15 -0700
Message-Id: <20190731012418.24565-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190731012418.24565-1-atish.patra@wdc.com>
References: <20190731012418.24565-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_182443_970855_07BF5DAF 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Anup Patel <anup.patel@wdc.com>, Alexios Zavras <alexios.zavras@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
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
 arch/riscv/include/asm/hwcap.h | 25 +++++++++++++++++++++
 arch/riscv/kernel/cpufeature.c | 41 +++++++++++++++++++++++++++++++---
 2 files changed, 63 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 7ecb7c6a57b1..e069f60ad5d2 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -22,5 +22,30 @@ enum {
 };
 
 extern unsigned long elf_hwcap;
+
+#define RISCV_ISA_EXT_A		(1UL << ('A' - 'A'))
+#define RISCV_ISA_EXT_a		RISCV_ISA_EXT_A
+#define RISCV_ISA_EXT_C		(1UL << ('C' - 'A'))
+#define RISCV_ISA_EXT_c		RISCV_ISA_EXT_C
+#define RISCV_ISA_EXT_D		(1UL << ('D' - 'A'))
+#define RISCV_ISA_EXT_d		RISCV_ISA_EXT_D
+#define RISCV_ISA_EXT_F		(1UL << ('F' - 'A'))
+#define RISCV_ISA_EXT_f		RISCV_ISA_EXT_F
+#define RISCV_ISA_EXT_H		(1UL << ('H' - 'A'))
+#define RISCV_ISA_EXT_h		RISCV_ISA_EXT_H
+#define RISCV_ISA_EXT_I		(1UL << ('I' - 'A'))
+#define RISCV_ISA_EXT_i		RISCV_ISA_EXT_I
+#define RISCV_ISA_EXT_M		(1UL << ('M' - 'A'))
+#define RISCV_ISA_EXT_m		RISCV_ISA_EXT_M
+#define RISCV_ISA_EXT_S		(1UL << ('S' - 'A'))
+#define RISCV_ISA_EXT_s		RISCV_ISA_EXT_S
+#define RISCV_ISA_EXT_U		(1UL << ('U' - 'A'))
+#define RISCV_ISA_EXT_u		RISCV_ISA_EXT_U
+
+extern unsigned long riscv_isa;
+
+#define riscv_isa_extension_available(ext_char)	\
+		(riscv_isa & RISCV_ISA_EXT_##ext_char)
+
 #endif
 #endif
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index b1ade9a49347..177529d48d87 100644
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
@@ -43,8 +49,22 @@ void riscv_fill_hwcap(void)
 			continue;
 		}
 
-		for (i = 0; i < strlen(isa); ++i)
+		i = 0;
+		isa_len = strlen(isa);
+#if defined(CONFIG_32BIT)
+		if (strncasecmp(isa, "rv32", 4) != 0)
+			i += 4;
+#elif defined(CONFIG_64BIT)
+		if (strncasecmp(isa, "rv64", 4) != 0)
+			i += 4;
+#endif
+		for (; i < isa_len; ++i) {
 			this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
+			if ('a' <= isa[i] && isa[i] <= 'z')
+				this_isa |= (1UL << (isa[i] - 'a'));
+			if ('A' <= isa[i] && isa[i] <= 'Z')
+				this_isa |= (1UL << (isa[i] - 'A'));
+		}
 
 		/*
 		 * All "okay" hart should have same isa. Set HWCAP based on
@@ -55,6 +75,11 @@ void riscv_fill_hwcap(void)
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
@@ -64,7 +89,17 @@ void riscv_fill_hwcap(void)
 		elf_hwcap &= ~COMPAT_HWCAP_ISA_F;
 	}
 
-	pr_info("elf_hwcap is 0x%lx\n", elf_hwcap);
+	memset(print_str, 0, sizeof(print_str));
+	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
+		if (riscv_isa & (1UL << i))
+			print_str[j++] = (char)('A' + i);
+	pr_info("riscv: ISA extensions %s\n", print_str);
+
+	memset(print_str, 0, sizeof(print_str));
+	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
+		if (elf_hwcap & (1UL << i))
+			print_str[j++] = (char)('A' + i);
+	pr_info("riscv: ELF capabilities %s\n", print_str);
 
 #ifdef CONFIG_FPU
 	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
