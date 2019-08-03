Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5C680462
	for <lists+linux-riscv@lfdr.de>; Sat,  3 Aug 2019 06:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cw7TyT5PvlbB0joS/sPw0euaiUDnEmIVllIqIFtSgQY=; b=GRPobJHIrhCDp3
	AQnzBtVoq5rc3KuXLGx+vyZvmRoX7T5BRVcpC7ZKhLZvKbKQDujqmv2DKYmGskAoyGfyFO8CRkUPH
	kb3rD8QQ/HQRq3kO0OszYQ8uzAZ209XEWzZYoQWZPgdguHM+yAjqU8IiDM+1CBEyKNbwznaRsMt6I
	LudZSo5VUdfwyJU5+nPMRs4/l1Y9hzxro9veN25zyyF6d8LCp006luApby5gIy+dBzHeTJnl/jd7U
	IBQLWm25tFGVR4JzbPokkS2H87VS6KIvRhSHn8Zhd7OdW4uropMTALY+FwUvggegTSuLYzFNZLrt2
	cNMrXPAaNennWDoXp/fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htldq-0001mk-VY; Sat, 03 Aug 2019 04:27:38 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htldj-0001fT-QH
 for linux-riscv@lists.infradead.org; Sat, 03 Aug 2019 04:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564806452; x=1596342452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+zY9hAEVm58gSXJfAJQWINzIbb639f01AsOcw7UEO4w=;
 b=MUGBtgqR8NGjDHUD733mKMsn9LEbWgCQkRvje4okC/MZ98hGL6Jr0UIk
 ndKjD3+wpNDfkhOmm+D0VPKhrZNVJmUEqmexsaXiv4s8ZFjWzNvj2bR0+
 c0hBn7wqU+Ng0Erzzqdi0aLhX57SKuOB2cfJXDCnoc92Q32yECwqZXJu4
 AIJVna+kibegYyE3HvAOhmlkNpTJanG9Gg4pazdDIJ05zwsJWcqroHzRT
 dyxe0X4uviYwBq3vJ8QiBuuabl03cFPeLKvlnSlgJEP+01Q2094d9f367
 c3FOTHQDmfOXuQJkHO05h0ezU8XrDci4IhWhenhQWw0cG5OQ5aifhTMR7 g==;
IronPort-SDR: SBUY8ST9OdjH3J8fYFWkZQpXF2MxDkPKriiPVixEFLiOgOOoxyRqq9GWZNS3nEKcegk49DGVs5
 MxTRvIxV4+ZXAlbaSyfi3w+hq8Qbvk+FZyyJI64wJRRMz4JV4hLoXFKCv4XxmmsgS58Zcg8TmR
 34IiReplVC/vAV+zkq9xr33noMaBm6lxULvRqenHY7GwlVMxwJmQiBeQRA++je9QmUrWm7q7bz
 RknGBsAMlWNygYWg4JKgYmMArxFgWckoiA8f8mJrmJVsx30/nBQJ5L0/tpWwNsSu2yi0JyaQjA
 uOQ=
X-IronPort-AV: E=Sophos;i="5.64,340,1559491200"; d="scan'208";a="119512920"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 03 Aug 2019 12:27:24 +0800
IronPort-SDR: owakjrzaWiRIR4OtX7q4AxfSsQ0LQYYB4OwkBOgI8Cl05SwstP70MSSbaS1bBICCkxOLuUKQ/r
 aX5e20o34ztCDKuzxr+WFDQMIQvgUbYHBrq1XnKec1UQBYQfT1oFtECn4WKG7VfdahfjZi/i5O
 q8hlGxYOYBo0C6IydpErBfAO/biH6Yi53Vq6jA30CLxLiTeehBLKZKRWCTDzfvZG2vUlKM7wGQ
 xhFAc4HBb0H4PSeHNPacwH6lTZBw9Vue9i3TLxn8OkL5nqg4XQxRSxtP6jrUGrsbSEyAYSYWg5
 MKl+hV55AqqzS41b2KL5OHVU
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 21:25:19 -0700
IronPort-SDR: BEzUoDjKcLbUflMTZsDVbQM5dyaFux48KbdktLJp5GqtOdK5Dmd/+ONG2Nykk/p2xlQ2RaxExI
 WheLT/5rb81h3kSc84lsBtx6sy5eWTTdbpA4V9CpaYnrvgNUlyl3NKkhg3y2DlTjlE0onnvoWh
 eCDJUnJ7MErujte6/WSV4iiKXzBpeFM0eNnJ0DjGTsCdegr8OlF/V0GOYWUIE7+R9P3SKysLLg
 scNfP+FPFqz+v5DuItQkmXWFgNuvupNklyZyRTeNtRzfxel/TojI4BUri4kWrog55VuS8KPqsu
 aoQ=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 02 Aug 2019 21:27:25 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/4] RISC-V: Fix unsupported isa string info.
Date: Fri,  2 Aug 2019 21:27:22 -0700
Message-Id: <20190803042723.7163-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190803042723.7163-1-atish.patra@wdc.com>
References: <20190803042723.7163-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_212732_108163_B3126C20 
X-CRM114-Status: GOOD (  19.10  )
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
index 7da3c6a93abd..9b1d4550fbe6 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -7,6 +7,7 @@
 #include <linux/seq_file.h>
 #include <linux/of.h>
 #include <asm/smp.h>
+#include <asm/hwcap.h>
 
 /*
  * Returns the hart ID of the given device tree node, or -ENODEV if the node
@@ -46,11 +47,14 @@ int riscv_of_processor_hartid(struct device_node *node)
 
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
@@ -70,27 +74,50 @@ static void print_isa(struct seq_file *f, const char *orig_isa)
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
-		if (isa[0] == e[0]) {
+	for (e = mandatory_ext; *e != '\0'; ++e) {
+		if (isa[0] != e[0]) {
+#if defined(CONFIG_ISA_RISCV_C)
+			if (isa[0] == 'c')
+				continue;
+#endif
+#if defined(CONFIG_FP)
+			if ((isa[0] == 'f') || (isa[0] == 'd'))
+				continue;
+#endif
+			unsupported_isa[index] = e[0];
+			index++;
+		}
+		/* Only write if part of isa string */
+		if (isa[0] != '\0') {
 			if (isa[0] != 's')
 				seq_write(f, isa, 1);
-
 			isa++;
 		}
 	}
+	if (isa[0] != '\0') {
+		/* Add remainging isa strings */
+		for (e = isa; *e != '\0'; ++e) {
+#if !defined(CONFIG_VIRTUALIZATION)
+			if (e[0] != 'h')
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
@@ -134,7 +161,7 @@ static int c_show(struct seq_file *m, void *v)
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
