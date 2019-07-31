Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B25D7B78F
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 03:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cw7TyT5PvlbB0joS/sPw0euaiUDnEmIVllIqIFtSgQY=; b=qQzjIK8Pi+IaBO
	sQvvK9fsRiAaZNNpUQg+A7QgsXIOh8svtb0OGEMyl2+OnaLZUdnRuQEDXbI5Q5YmQbwBdkiDl2L8C
	Ca/8cIwoFUgBwMNAnUwcvIB2FmH8bOkGCNcUplscQVr9U9u8NwNr6X4XFAXas3N1dgLmaldGg2IQ4
	G4WFIodePF6E+Nt2InjeKeBYJnzNsmWePpfsI6MJKltdyun5nvcr39g1X/HoWgPfZ900SpZGR2Txe
	7MTA4M0euQ9KzwkKRXhGAX2BxtM3HuwNOKcijaf2POGptzwHP9GA3CQ0juD3FYtrM4b+1l7ff7poz
	6DY48Y2kg/VOKX0lEkQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsdMI-0007tY-FB; Wed, 31 Jul 2019 01:24:50 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsdMC-0007lV-TB
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 01:24:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564536285; x=1596072285;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+zY9hAEVm58gSXJfAJQWINzIbb639f01AsOcw7UEO4w=;
 b=ehEtEJuEITogzsNwdeqy8DLUzKRg9ObMKVRSHYfHSEpttPbfdXX8NRnJ
 LpVOB+4q56wMGC9daY32pksuVXRZSjgaj48SVRb9HZhgtoHyUOQgEdKWm
 odnailC2CRdDNeav8gwIoX9oQXNSJxYC1X8bTqaHN8jOdYZeUatLvyEhN
 keXY/U1ls+BOTf75mPY1MVH+zLrUKvQlBxjNu7TGPrYEPR73rDU30m3TT
 zkUEyq6puczvBs/QJ2MfEU42HCzIOvl1rvbvAqNKuYrsOP9MqvnwB0RR0
 vKZtoUNYqoHQZrZbsNw6QYe1bvbPhA4KYMUnum/jXcQ4STlsecPV7fHhb Q==;
IronPort-SDR: gG01W8hOsNtdGC3/7tCDpBUcyi1vkOsK+ZZ5Hon/0uWePBwyt2UQYstJGRhhENVeLKytb6jXn3
 4Fzhzq40CtfNrVCSXWvWtzm5TfSf4j2mV8tNdv38L78VSSTSxnXtwV+RXinE1rNkPi+vamzogJ
 TSwdrbcDNE1/jd8+JHom40bhnykynJLmNf3+8vij/kFtUt+wPGVGYbw9R+eWHPMjt1gmxjZn1Q
 2vcGcfZR1Eu6YEClXW++WXQXhTz1b1eeyOvUAZPnglDqDXUfCf2J9pngTeztwIX/7PouVgQYhy
 MjE=
X-IronPort-AV: E=Sophos;i="5.64,328,1559491200"; d="scan'208";a="119218133"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 09:24:37 +0800
IronPort-SDR: ll+TudfBh5pu0Y+bu1Fs+nApSdb8LQjHjiuG6p7dEBdZGIKFN2tPX4cHtKtmQNIb9UOBrA3Hiu
 gil1VJjVGMTrZ7T1aMFX3kOc59JbqvNnZ/mtrWIh7fvLh3LrTjva8UbbAdjWBEnr3tzHaRczkj
 A/IK3vWiTF/QN0x2JnjF2i7IesVHMjaRZXSZdn9oKNu3jRijbgsSnfGTF+LCx1DImUjwthSpih
 TTbbYDXsY6dvuVRyH0UbiIDMSGeJ4VSG3xrW8s9ov3sVly5JFeyK35YzHaOg+Ne4Ix9vr00C/R
 64jV1wkpu0is+rmRoOSuAmSa
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 30 Jul 2019 18:22:38 -0700
IronPort-SDR: uH9oqNQNTYwcQqtIEcYCIgNqnHzHdX+JoR4A2KfOPDKCO9p3gl82GD81hDzFPGxl4tp/fVPTJ2
 YnsSfZhm6QgC5SBvHzb+Wvd/V+3azwrvMoPopoTAskjCq7zxiE2rv74CRdNmXUecdvHtKJ8Q7+
 7nYBc2iyr3OCJnCq8cgl/GS67q5fAcCiMtgVnufwwu04vBHWzkO5AOsz/MEzB6ekPGa8yuVpoB
 Oe6g4kRdZ/CdzNJW6kskJZ2vkKiM+pYTqwmOCebZ9LSuqjTANu3GP9ri7jIxiAMo7tlLY2k8sZ
 T/s=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 Jul 2019 18:24:37 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/5] RISC-V: Fix unsupported isa string info.
Date: Tue, 30 Jul 2019 18:24:16 -0700
Message-Id: <20190731012418.24565-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190731012418.24565-1-atish.patra@wdc.com>
References: <20190731012418.24565-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_182445_052268_3417FC10 
X-CRM114-Status: GOOD (  19.75  )
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
 Albert Ou <aou@eecs.berkeley.edu>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
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
