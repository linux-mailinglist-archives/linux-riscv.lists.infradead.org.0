Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAF71DFDE0
	for <lists+linux-riscv@lfdr.de>; Sun, 24 May 2020 11:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pepvf3DKSpWwjQ3vsJA2b6JEfWhAXzrXL6m+STj7xDI=; b=dN+UUT/vEIz7W5
	ik0SOfvtb9zMGQG1gJ4nwLTk+R6ZgcF3OEm+nzJcWCgD7+qB99jFJf5cIiJISCpmtxSpvO/7emFvB
	KyjcJt8LF5+tSKrZanELEvUMNWNXAL6AzdD1vn4Kix/zAAw4CN/rXURhhBjg+DGlJYnqdNjlsT5J7
	lsYjMHYv9zXc4VF5yqJOf4URaMMzFGYOIHLFDJ59D++T8VM6aIF2KBpcdx60+F/dCIDXAVhHMJbYT
	ISfsy57t9k/+YLyGnaQY2pwIAg+5HhsPECJpVKel2aIzfX2Euz60bedUB0AXzSRz5F/kzTJJKp+Ll
	vYJMpv42l3ZLulWPAWyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcml7-0004k8-Os; Sun, 24 May 2020 09:17:29 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcml4-0004ji-D7
 for linux-riscv@lists.infradead.org; Sun, 24 May 2020 09:17:27 +0000
Received: from localhost.localdomain
 (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr [90.112.45.105])
 (Authenticated sender: alex@ghiti.fr)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7D2AA200007;
 Sun, 24 May 2020 09:17:23 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 7/8] riscv: Use pgtable_l4_enabled to output mmu type in
 cpuinfo
Date: Sun, 24 May 2020 05:10:07 -0400
Message-Id: <20200524091008.25587-8-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200524091008.25587-1-alex@ghiti.fr>
References: <20200524091008.25587-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_021726_712707_33D96AED 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, Alexandre Ghiti <alex@ghiti.fr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Now that the mmu type is determined at runtime using SATP
characteristic, use the global variable pgtable_l4_enabled to output
mmu type of the processor through /proc/cpuinfo instead of relying on
device tree infos.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi |  4 ----
 arch/riscv/kernel/cpu.c                    | 24 ++++++++++++----------
 2 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 7db861053483..6138590a2229 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -50,7 +50,6 @@
 			i-cache-size = <32768>;
 			i-tlb-sets = <1>;
 			i-tlb-size = <32>;
-			mmu-type = "riscv,sv39";
 			reg = <1>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
@@ -74,7 +73,6 @@
 			i-cache-size = <32768>;
 			i-tlb-sets = <1>;
 			i-tlb-size = <32>;
-			mmu-type = "riscv,sv39";
 			reg = <2>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
@@ -98,7 +96,6 @@
 			i-cache-size = <32768>;
 			i-tlb-sets = <1>;
 			i-tlb-size = <32>;
-			mmu-type = "riscv,sv39";
 			reg = <3>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
@@ -122,7 +119,6 @@
 			i-cache-size = <32768>;
 			i-tlb-sets = <1>;
 			i-tlb-size = <32>;
-			mmu-type = "riscv,sv39";
 			reg = <4>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 40a3c442ac5f..38a699b997a8 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -8,6 +8,8 @@
 #include <linux/of.h>
 #include <asm/smp.h>
 
+extern bool pgtable_l4_enabled;
+
 /*
  * Returns the hart ID of the given device tree node, or -ENODEV if the node
  * isn't an enabled and valid RISC-V hart node.
@@ -54,18 +56,19 @@ static void print_isa(struct seq_file *f, const char *isa)
 	seq_puts(f, "\n");
 }
 
-static void print_mmu(struct seq_file *f, const char *mmu_type)
+static void print_mmu(struct seq_file *f)
 {
+	char sv_type[16];
+
 #if defined(CONFIG_32BIT)
-	if (strcmp(mmu_type, "riscv,sv32") != 0)
-		return;
+	strncpy(sv_type, "sv32", 5);
 #elif defined(CONFIG_64BIT)
-	if (strcmp(mmu_type, "riscv,sv39") != 0 &&
-	    strcmp(mmu_type, "riscv,sv48") != 0)
-		return;
+	if (pgtable_l4_enabled)
+		strncpy(sv_type, "sv48", 5);
+	else
+		strncpy(sv_type, "sv39", 5);
 #endif
-
-	seq_printf(f, "mmu\t\t: %s\n", mmu_type+6);
+	seq_printf(f, "mmu\t\t: %s\n", sv_type);
 }
 
 static void *c_start(struct seq_file *m, loff_t *pos)
@@ -90,14 +93,13 @@ static int c_show(struct seq_file *m, void *v)
 {
 	unsigned long cpu_id = (unsigned long)v - 1;
 	struct device_node *node = of_get_cpu_node(cpu_id, NULL);
-	const char *compat, *isa, *mmu;
+	const char *compat, *isa;
 
 	seq_printf(m, "processor\t: %lu\n", cpu_id);
 	seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
 	if (!of_property_read_string(node, "riscv,isa", &isa))
 		print_isa(m, isa);
-	if (!of_property_read_string(node, "mmu-type", &mmu))
-		print_mmu(m, mmu);
+	print_mmu(m);
 	if (!of_property_read_string(node, "compatible", &compat)
 	    && strcmp(compat, "riscv"))
 		seq_printf(m, "uarch\t\t: %s\n", compat);
-- 
2.20.1


