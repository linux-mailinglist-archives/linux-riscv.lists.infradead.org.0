Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AC7852E8
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 20:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pRxnWx3CCYfMuHnP6Nx5+0YtbOMvscvCmQXApFqZ3tc=; b=L1P+pHRpJDzU2t
	jaeOL15Eb57KzVHYLKtCjDmhJM7gvXnuVhfWyhIH7v5YSEvO0klCzLTRVjiliQ2684Mw8FyfAQvbz
	wxC68+jEEm216kHFnyYm+p6Dmuo+qZ8osr5JqkmZIeZbWYF/49S28dzbrf3QbKjBGJ6E7OX1L6k7Q
	Pgb/AWs1dubsrKxWutGtFFYV9zW7FD0ik+YQJG/LV8FmbwVGASr25XRYhZH4z0xwC2VEViQNYer5p
	YBz5+OEP/GU+niJ+gcHPCpTwsDLYBvZ8SM24GJzuF4LLeBO3nQN537ewZeqbC6yqZk3cVTN2YuELT
	4H/OxuENA3/HGdClC2HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvQbA-0001Br-Ff; Wed, 07 Aug 2019 18:23:44 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvQb5-0001B1-Ly
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 18:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565202220; x=1596738220;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ICuPazclqjqPUmwAWo1Qq1t08V25XRdrKY9dRhoRIRo=;
 b=WnairBXiVDbda5DDpSiTn0y20nqpowDfcxxJKAACv64/P8xkk69Z2FVi
 2bAkU8D3jRASyHvpeZQ5E4jseFa99ynFEw3SC/ZXcIHwwp0Q50e4XfHNy
 H6zry7lceSdE+hImnpr9LzDzhYC4ho7Z6CaJCKXgIuFHkMXQbSJdWjWwv
 iwj51Oj2VcQkJAxJCpr6EJ7zOubGEJFmSh46eeCWFhaWBZ3lHoJo58mx/
 lLzhDaU2dhtjQh+a+ai8Y74D9l1mJ/FKBYJPRAi3NlW8nSLkSTJwttD9J
 qBnEu8O0CF0ja1DEtoKnGzopAcza0Mni5CcZJuDWk6CR4iAq6r9EcqVQa Q==;
IronPort-SDR: riU9ybVyGPGCG5F/ph7EQN+fO70AIXbjM0A5naHq/fp3w2JlWx+8/rAwAnZhJ1s+FijMO6ozpS
 FCUOB6PqXgZdq4IK6+YnE4O6pHTELeJZf3R9p4IPxhMjXXTB0aMu8VhmLei15kBYQuGXUVJi3a
 Vp0sd0xOx9N3vgq646uBMdBlQlPMAIjoKhQqHL1c2JZUjkrRKmMepFOP2E5jFgUD0jWoeVmSvP
 PCVMbaZrREtFV23CGdIfbeGDGwzfzea4SzQH4Z5CpHV4f9WIPFRyvEwrhI+1sslF8HuqrAq/TI
 0GE=
X-IronPort-AV: E=Sophos;i="5.64,358,1559491200"; d="scan'208";a="116234817"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 08 Aug 2019 02:23:35 +0800
IronPort-SDR: Dn4Tl9AaevF3b/MI1OeTPM7b8NA7DPHEZOeVFB9otTcTqEBAppz9ce//AWg54ip4ndD1xly2tD
 PttTa+aK6c76E0CDC33ZIsgFMvuA40ACIwCPRJmJ7Fq1983P4R6xAmKpEKNY1hoBuglQfVcfWC
 wb5UqXvRL2R8nsOEO0XIAh8EVX2LkT9wFhFPmr81lDbHUPx/bCS7eysu9q5APw6XsVw0FGz1yH
 gRThIirq3tvKnpqH7UJTzSvpWciliLGOd7Rykgqvrimh4WxErsH1wF32biyVZGd7ZnB9agAcTX
 bxC3XpLQmuEsnm5IvNt+Bgzq
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 11:21:23 -0700
IronPort-SDR: kWXPYgAEnldKXrFkOQTNQqEhek82VjyuPfGLPZPYbZfci9wBXghJ3SstPS9IxHLBac3X5tuGV7
 ykSeVxDp9buS6mdP5V2BkKYHUcMzvedf2EssHjtOxqBoDAwubtjHQPifuIZnST7hXZylOrigjF
 sCoIiMmX2OtkIpSTV7Jo0fLlA+NmZILpYlVMI1E0ozmsB9C9WET442pNBr2BQeww2hoVFsfnIQ
 RXqSJ8k4A0kvLTOBj7Kc9K1tKEpOZDzYUDpj7QZsSV/qTVgHLVb5uXzQbU8dL/m8X6msL3GMve
 yMw=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 07 Aug 2019 11:23:35 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v5 PATCH] RISC-V: Fix unsupported isa string info.
Date: Wed,  7 Aug 2019 11:23:16 -0700
Message-Id: <20190807182316.28013-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_112339_857555_DAD21F5E 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, kernel prints a info warning if any of the extensions
from "mafdcsu" is missing in device tree. Here are few issues with
this approach.

1. It is not entirely correct as Linux can boot with "f or d"
extensions if kernel is configured accordingly.
2. It will continue to print the info string for future extensions
such as hypervisor as well which is completely misleading.
3. As per the RISC-V user level specification, S extension
can not exist in single letter extensions and must use multi-letter
strings. There are no U extension defined at all.
4. /proc/cpuinfo also doesn't print any other extensions except
"mafdcsu".

Fix this by making sure that info log is only printed only if kernel
is configured to have any mandatory extensions but device tree doesn't
describe it. All the extensions present in device tree and follow the
order described in the RISC-V specification are printed via
/proc/cpuinfo always.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/cpu.c | 49 +++++++++++++++++++++++++++++------------
 1 file changed, 35 insertions(+), 14 deletions(-)

diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 7da3c6a93abd..e521142e8ac3 100644
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
+	static const char *mandatory_ext = "mafdc";
 	const char *isa = orig_isa;
 	const char *e;
+	char unsupported_isa[26] = {0};
+	int index = 0;
 
 	/*
 	 * Linux doesn't support rv32e or rv128i, and we only support booting
@@ -70,27 +74,44 @@ static void print_isa(struct seq_file *f, const char *orig_isa)
 	isa += 5;
 
 	/*
-	 * Check the rest of the ISA string for valid extensions, printing those
-	 * we find.  RISC-V ISA strings define an order, so we only print the
-	 * extension bits when they're in order. Hide the supervisor (S)
-	 * extension from userspace as it's not accessible from there.
+	 * RISC-V ISA strings define an order, so we only print all the
+	 * extension bits when they're in order. Throw a warning only if
+	 * any mandatory extensions are not available and kernel is
+	 * configured to have that mandatory extensions.
 	 */
-	for (e = ext; *e != '\0'; ++e) {
-		if (isa[0] == e[0]) {
-			if (isa[0] != 's')
-				seq_write(f, isa, 1);
-
+	for (e = mandatory_ext; *e != '\0'; ++e) {
+		if (isa[0] != e[0]) {
+#if defined(CONFIG_FP)
+			if ((isa[0] == 'f') || (isa[0] == 'd'))
+				continue;
+#endif
+			unsupported_isa[index] = e[0];
+			index++;
+		}
+		/* Only write if part of isa string */
+		if (isa[0] != '\0') {
+			seq_write(f, isa, 1);
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
@@ -134,7 +155,7 @@ static int c_show(struct seq_file *m, void *v)
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
