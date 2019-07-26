Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D591F7725E
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 21:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AyaprUm3LqnKUtZOsXQL6NiMe1kmrzDS/Bm9O1gcUU0=; b=TYoe3Bsp5ApRsX
	gDHVHx9olWwkGHoetHB3dc17++j0pZSoGu2h7qHlhccDD2yd1DLBthNJxsa84CCOcID/ra1m+bj2D
	vnZJjdqcf8NCIQksf7rZxnr61hUVhZ/HXkI3rznDqwaKpShkBypJiWj0cOqTzYOC7qMW78RHpiIEC
	08Br9eb2VYX7ebzzOAv9JNaWVvo2C8mjN6YCQDKH/7Rsbtm3KnRz8OawbCzZrUNZCo0k4tvYXwOOf
	aGhMYxlZfTDUZrRGGqVhaG0ROkFH54CiAXJ7VxVOd4z6O9xq0zUqKx33QTWpgm+UnXVkhlVgnrhoz
	/fDtU/mNP1zzNjKvwLtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr6BA-00026a-TW; Fri, 26 Jul 2019 19:47:00 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr6B5-00021G-4I
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 19:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564170415; x=1595706415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hokvHxTUgVK45jR+2fi50ThrUw3wJd/1zf9QL7Bw3Kw=;
 b=d2O8cPd9h+ixSvS0lCN4iihcoXGyOcM3Ev4KVFpD0AJC6SNzT07RpEkf
 KgUlO7ermbDs6DFYBeO+wBeuvBuBJgpI2rlN2GX7EeXCpZNKH3a2N5aZv
 fSMt0RS2V/Mf/BjbzhUho3iWd5UfOhL63A97Vf1LvdUAxnols47R46iAn
 JTFhKafq4XkW11ArPckvwCiVuFGWUnhrAA6Kvt+V0vYdIhJ31v7H3BFmG
 b6mlDmtA39/sHZfbe6u1PwAQ7Na9zf3g/5osyA2GoxkA2zpertZcxEMi1
 0f7xsTEsy6mpD/dpCc3z+GfzGp+SKAAJCBdBNv2TUgtNtrtPrl635IXJt A==;
IronPort-SDR: K5H6l0OzOONKp3Gjn4JYOeddNMwws6jkOySopvpovh3KmsL2VfjqFrhhEbPV66Scg8in2ZLoFw
 E5Uu0Nw15dlZfl53n7HelC3S8pNjFk9J1CLDm+LcxNb1raq+fD/d5xG5PR/vhlYQR/9bvWNfP5
 FxMYgiEHAzrHODDizHIxsWhLGG5rCQkdd9DIJftn5gKXxf7TB85F+vcoQsgsuUMKe+yST+u16F
 flXkCBb4W2NonDf9L3FBmTt9Lw8tHSkGfkoEj6MzedaKSbDrvduCYEGC2jOANjfMCJsnf+ldAw
 gBk=
X-IronPort-AV: E=Sophos;i="5.64,312,1559491200"; d="scan'208";a="115831168"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Jul 2019 03:46:48 +0800
IronPort-SDR: Vqh0Bm0X+CwINSMkMrx6sNrmFNj0ZnZJU/cTK8COGkMiSexrfjyhScSh+e8yaEeu05IshJuQor
 pFst0hMzGstg4taGbkW0aZLv578wLDc514iNT988hIASYn23O8EnIMD/2o6SnixI7k0nkTX6uE
 YiDck28Feus9AMcwPonZ9QXmIk7hO43SByG7lD15k7c1GgCHXew9zST+XtIuWRf+0bQI7ie/if
 1WaWA0a7W/zglFvLvBGGlGyWGtfA7axB6hA9BR/p/yqghS5IdW3lWkCzbl9pqQzg12OjuWBnkb
 vT3V+nM+lltAYUImSXmShAbG
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 26 Jul 2019 12:44:56 -0700
IronPort-SDR: 9iMwrXBU5LvFTWyA+niCgR2Co2erNZr114as8cLaEkSoetsTrmHnNDs4WIz8+HxDKaoUQAU4JI
 sJob0TmRZdRycFnETTgmhlmYaK+o1vb4GVAH+XjhlRU+0qy6myp0aV1biVLLC/GJ9WgYVkHZM3
 RmvBMjWxxgRbeASeOj77r6fz8Tb4kP5mlQ864x/dsW5um5AsJyTiBnnzonE33V44zdOWkuzJLk
 RBqvkfSAFQsTAKDKboBxGzbOdwnPxhugKeumV2kWQX+5bHoqd8Qv0cMMGU2gBDaN8iph2/MbQG
 QG4=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Jul 2019 12:46:47 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] RISC-V: Add riscv_isa reprensenting ISA features common
 across CPUs
Date: Fri, 26 Jul 2019 12:46:36 -0700
Message-Id: <20190726194638.8068-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190726194638.8068-1-atish.patra@wdc.com>
References: <20190726194638.8068-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_124655_202197_12B52E15 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
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
 arch/riscv/include/asm/hwcap.h | 25 ++++++++++++++++++++++
 arch/riscv/kernel/cpufeature.c | 39 +++++++++++++++++++++++++++++++---
 2 files changed, 61 insertions(+), 3 deletions(-)

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
index b1ade9a49347..d76c806b4fc9 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -12,6 +12,7 @@
 #include <asm/smp.h>
 
 unsigned long elf_hwcap __read_mostly;
+unsigned long riscv_isa __read_mostly;
 #ifdef CONFIG_FPU
 bool has_fpu __read_mostly;
 #endif
@@ -20,7 +21,8 @@ void riscv_fill_hwcap(void)
 {
 	struct device_node *node;
 	const char *isa;
-	size_t i;
+	char print_str[BITS_PER_LONG+1];
+	size_t i, j, isa_len;
 	static unsigned long isa2hwcap[256] = {0};
 
 	isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
@@ -31,9 +33,11 @@ void riscv_fill_hwcap(void)
 	isa2hwcap['c'] = isa2hwcap['C'] = COMPAT_HWCAP_ISA_C;
 
 	elf_hwcap = 0;
+	riscv_isa = 0;
 
 	for_each_of_cpu_node(node) {
 		unsigned long this_hwcap = 0;
+		unsigned long this_isa = 0;
 
 		if (riscv_of_processor_hartid(node) < 0)
 			continue;
@@ -43,8 +47,22 @@ void riscv_fill_hwcap(void)
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
