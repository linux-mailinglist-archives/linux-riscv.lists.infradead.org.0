Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22BF7725D
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 21:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYlBT7RC95bn/NhgiWb5VIr4eTTo53zCRVWmnTU17YE=; b=oEl/S3IPXbUR/8
	u0WOOZeW/PaUxWlm4qahVLYgRHEE7q+7G+XRWawHUqILYf3qsNyk9Jd8Dbg2HyUVJAY0NutPK/Ied
	JdS1O0iVriVwGOdYALN4lWX0h+RM+hOo4U73yD4cBdjQ/qnGD+rAmgybc7rA5GjtTQkt/Hc1N6nNJ
	Ib5BfP11qSXF/sT7GpKz2WyPLPEHANBgrrZ7hkMjfpJmQf32LxtwkljXRsF5zsG1qVLCVrtWVg4Ko
	hM/rImwZ+nOoKkIRS8dAxt0NUkFGzv8T6xJfQz72Vdzl3Wgh82EulC9QAQNyBD/q09s4YCbhE3xZ0
	TpoFIJjF3la9bmg+ZqjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr6BC-00029M-RI; Fri, 26 Jul 2019 19:47:02 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr6B6-00021u-LL
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 19:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564170417; x=1595706417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4G/AiivRvt04iQqbVTDPT9b5v5TEP81JdiptpePFLX8=;
 b=QPztT1CpXETguBuN8/3qDlvxJGXuTvRZYrhdVmHRTNm3qJmau8DlO8sF
 FSuXBJCBOaejx6vhLgk41vyATvvVOEVG3SGRUGw1+nd59sAGTX8SzKR8Q
 z/SscCfIvpIYwVf9D5/hzpLz3djt1UJYWQdy/Tjk6rl8dsJQk9f6C/c4X
 y61NsnSVmOcm+7SJfg8gYVODo5gS2eksTr0yABBOQpcqNph9Fl6ksXa9T
 4PdjqBm32zzkkX40bqRVu/l0Elb2rF17RYYJSjcemL4iox8NzdQ/3viHd
 1UpcD4/3SPBuZqvspLo5T4wiX1VVjPHtxYVxWVxiK9i+QBHSIUxC+ezqc g==;
IronPort-SDR: ac8LtnTN9uoIOa7CxCKnOQuTCn2sg5Ux6Ez8VjOWrJAlmWjnozONaJf8ihDZrLH8CkY8o9C8Yd
 V2VpRez9hFy4XTpZpUd9HiZo029u2ppKLRk8x2heYpX0sFGvG6Ea9OMqWJvNtBUilIpS+hPx4O
 t5PdUADtGAbqWJXHtk4ezIOttVEp6kaHdNH/yHF+XGs3oy5zzUID+erEE3P2i07tR3025Hn3j0
 ePt7hBKjO9hQndTVEudGuLvwpvKZz/YJiodtQj27JNfF56i24af/St4G+YZjdDnZTXE2Drf8jM
 YrQ=
X-IronPort-AV: E=Sophos;i="5.64,312,1559491200"; d="scan'208";a="115831170"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Jul 2019 03:46:49 +0800
IronPort-SDR: NqWIBem3/+GD9lBaDonHEN7VaK3Go8FigEJpjSzzV9mhLVV1tAKDwA1b5idzdj8+yzYx/mfjHY
 6HiSEU0P9KfyB3rTtuVI3Rof19eeESI8T3kxg9rH5n/TUBbIwdDejuUpDMBN4nqfjfFwe8SrnM
 B6qzMWKzR/vbDNbkqXO9oNGXolU4VW2X4N90seVUSU+qpuNzj89ShMXsFLp9fMQZ6JC/GZh8fR
 bLYgDdhIlte+xH5esPwcRHdUkkgou6WIYeHNwmlnyA6NIrSbj0GBhrN9vs337K24NtocKkEBLI
 sCkUIB4B9r0L+ngqu/CcS0TY
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 26 Jul 2019 12:44:57 -0700
IronPort-SDR: J+Ohxn5O071I/GlSvFKCslQ9U8iEOicbnZ4EcP2qBdVSymXxULqZFXIfnOnMBQFvrfRo8ZHBlm
 fFpNFzKwqBNbM0XfVEW+YRpM+1MQbVg4/t+Xwxpji2jecPcLABfxtsEcO8eILswds3CPKKERls
 R1MTIVpFz5P7/9+zl0AvLs+6yKfvCYsW4I7XaCjhX01og23X+/jlzsOfLnB6mLSnGdWs5F69Cv
 t0gCfuOsBiMP1ZYMyIfhHFZKG2FE5t3hOTvud6Dlgv4xYVIKMTx5bEfe9N4nm0/YTE60F4sS2n
 gco=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Jul 2019 12:46:48 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] RISC-V: Fix unsupported isa string info.
Date: Fri, 26 Jul 2019 12:46:38 -0700
Message-Id: <20190726194638.8068-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190726194638.8068-1-atish.patra@wdc.com>
References: <20190726194638.8068-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_124656_793503_0A459C2E 
X-CRM114-Status: GOOD (  19.79  )
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
Cc: Anup Patel <anup.patel@wdc.com>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, kernel prints a info warning if any of the extensions
from "mafdcsu" is missing in device tree. This is not entirely
correct as Linux can boot with "f or d" extensions if kernel is
configured accordingly. Moreover, it will continue to print the
info string for future extensions such as hypervisor as well which
is misleading. /proc/cpuinfo also doesn't print any other extensions
except "mafdcsu".

Make sure that info log is only printed only if kernel is configured
to have any mandatory extensions but device tree doesn't describe it.
All the extensions present in device tree and follow the order
described in the RISC-V specification (except 'S') are printed via
/proc/cpuinfo always.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/cpu.c | 47 ++++++++++++++++++++++++++++++++---------
 1 file changed, 37 insertions(+), 10 deletions(-)

diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 185143478830..3d050440364c 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -8,6 +8,7 @@
 #include <linux/ctype.h>
 #include <linux/of.h>
 #include <asm/smp.h>
+#include <asm/hwcap.h>
 
 /*
  * Returns the hart ID of the given device tree node, or -ENODEV if the node
@@ -47,11 +48,14 @@ int riscv_of_processor_hartid(struct device_node *node)
 
 #ifdef CONFIG_PROC_FS
 
-static void print_isa(struct seq_file *f, const char *orig_isa)
+static void print_isa(struct seq_file *f, const char *orig_isa,
+		      unsigned long cpuid)
 {
-	static const char *ext = "mafdcsu";
+	static const char *mandatory_ext = "mafdcsu";
 	const char *isa = orig_isa;
 	const char *e;
+	char unsupported_isa[26] = {0};
+	int index = 0;
 
 	/*
 	 * Linux doesn't support rv32e or rv128i, and we only support booting
@@ -71,27 +75,50 @@ static void print_isa(struct seq_file *f, const char *orig_isa)
 	isa += 5;
 
 	/*
-	 * Check the rest of the ISA string for valid extensions, printing those
-	 * we find.  RISC-V ISA strings define an order, so we only print the
+	 * RISC-V ISA strings define an order, so we only print all the
 	 * extension bits when they're in order. Hide the supervisor (S)
 	 * extension from userspace as it's not accessible from there.
+	 * Throw a warning only if any mandatory extensions are not available
+	 * and kernel is configured to have that mandatory extensions.
 	 */
-	for (e = ext; *e != '\0'; ++e) {
-		if (tolower(isa[0]) == e[0]) {
+	for (e = mandatory_ext; *e != '\0'; ++e) {
+		if (tolower(isa[0]) != e[0]) {
+#if defined(CONFIG_ISA_RISCV_C)
+			if (tolower(isa[0] == 'c'))
+				continue;
+#endif
+#if defined(CONFIG_FP)
+			if ((tolower(isa[0]) == 'f') || tolower(isa[0] == 'd'))
+				continue;
+#endif
+			unsupported_isa[index] = e[0];
+			index++;
+		}
+		if (isa[0] != '\0') {
+			/* Only write if part of isa string */
 			if (tolower(isa[0] != 's'))
 				seq_write(f, isa, 1);
-
 			isa++;
 		}
 	}
+	if (isa[0] != '\0') {
+		/* Add remainging isa strings */
+		for (e = isa; *e != '\0'; ++e) {
+#if !defined(CONFIG_VIRTUALIZATION)
+			if ((tolower(e[0]) != 'h'))
+#endif
+				seq_write(f, e, 1);
+		}
+	}
 	seq_puts(f, "\n");
 
 	/*
 	 * If we were given an unsupported ISA in the device tree then print
 	 * a bit of info describing what went wrong.
 	 */
-	if (isa[0] != '\0')
-		pr_info("unsupported ISA \"%s\" in device tree\n", orig_isa);
+	if (unsupported_isa[0])
+		pr_info("unsupported ISA extensions \"%s\" in device tree for cpu [%ld]\n",
+			unsupported_isa, cpuid);
 }
 
 static void print_mmu(struct seq_file *f, const char *mmu_type)
@@ -135,7 +162,7 @@ static int c_show(struct seq_file *m, void *v)
 	seq_printf(m, "processor\t: %lu\n", cpu_id);
 	seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
 	if (!of_property_read_string(node, "riscv,isa", &isa))
-		print_isa(m, isa);
+		print_isa(m, isa, cpu_id);
 	if (!of_property_read_string(node, "mmu-type", &mmu))
 		print_mmu(m, mmu);
 	if (!of_property_read_string(node, "compatible", &compat)
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
