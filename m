Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B501D1B59
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 00:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BE0PwvNQ/zYRiYUH5uL1KzCe0DrhDq9WRbUkGyJgk2I=; b=fSvmIH3QeyCJjd
	RHZ9MWua1kfoVGyLCqVBHiGDBz29YtmY4gc7i++4JRpLIVmZprRx9swHdVlKwi/S919qe6z8m5vPM
	1wfwiyBGkTnG6xPwL5BX2J5D3dDQwkriGVS6ea/2wvlyDsTZJhAPosk5bKSMG1pdZiNfvAGpvQMK+
	v/BAfaoTA2gaWiuvnIhwRVHNsKZjtMGXQlJAPPigQBP0oWwjc9lIF/WrINv/mG/Anwv5jHtxqqfUJ
	ieAwMor2T5rlefmYGJdEVn9CztWpbibL2m61WFwbSl8phavzFgWqMOnHJQhoHsxNSUjuoIxYrXsPH
	xdzTxB5uXZoeeHViTg4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIK1p-0001yp-QD; Wed, 09 Oct 2019 22:01:53 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIK1j-0001v0-PF
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 22:01:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570658513; x=1602194513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=glioQ9gbQCwDyZ1lhDR7P9tsfgoc1+ZWkzIr2khfKYM=;
 b=GTcUihyyR+wftKwCeTU8ZyQ22Wrb71quXf9pAXdGixJ8iHvYUISfonPN
 LcejjEtO7anS8/yEue7DR3AegNn62tVfqPUIlt9XolBrOz7Q0SDfz3Yhk
 4PUaodGKq2zgC64NqpGSdBjXs5PvKLJLvOrHvSav9RTaN52a0Zsa0TvWq
 jW9zce3BmFPfS1LOraF5DkgRyl3XwTk9nMn/zXQ7ebUtSQ8hk4zTal0b6
 RdGCk96lf/FyfxIr45W6lbUMPvVJKrgHbHog+9+Cfn1BhA8Z0S9IzFamN
 vkVLFxXd4xUFd968+mNsQap7PLzLFnYAD1piqEuQZ7C1Z2Q4T0CQAoAvj Q==;
IronPort-SDR: Vm+8m3DLLEtFHJsIT8542KDGHpZpBe4cBVSy3mohLsUVIqBCC+SXuER8OFzU586jJbzIzh3hE6
 /R5Rl6qbVt9SpdfINKSO9tA8dJETUOet0dyGyDg0VfUZ4KY16c/iYMqHte1syvV+vzU6EQ+SYI
 DjE9WPiPr0B/0F4m95OzLBk5MQWQZ2uac2YvkXqns0ShX1K6ehQV637wyVAY2UDZXFUMDKhGSd
 +fYQ/U2eNIOg0ijODW+igJzNBWqJRBPc7PsRpnUk0ukhIDRhiwnPI7143UAwTXIZycQ6A/xtIl
 v1Y=
X-IronPort-AV: E=Sophos;i="5.67,277,1566835200"; d="scan'208";a="221171276"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 10 Oct 2019 06:02:10 +0800
IronPort-SDR: 8eSMkCONGX+o3DU/sZe5im8xtMwSe6MMU12jI5Z3xZxppQPpImS99KQRC+smEA0y+Ut9Fdgp7Z
 md96040GEMQy+hxNPcBDUP6poVxYtvFaAzQdGYQ5noWXmw06cNj7U+yigi00Nig/KdZrAVj2eo
 K4gjhVMJZiOp0wBwKvFGgrALnJ6Jj+//LFPvmKYETbFY9Fj522d9Q70trcsjuHZZ8Ld4s0wtAV
 1wDq3Ku3sE+ubMnhbGOKZDwnp0jR4SM6Or/DqE/4aMphsr3LzkDaMjxnuauIjf8n6xdp1ajaaW
 JKmqvl1pKuiR6RklVHhYmpPY
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 14:57:28 -0700
IronPort-SDR: NyxctKEn7ncwH/wA8FjcZp+ShlYaHe5YcCbwrG7kc3vUEoYiZzialcvIWkyZMDcgCofvTkPo+G
 rU4chCkgn3vdYe7QKBSzx9mPmUzKJhQDvpU97V5tN0IyRMHBVVio47LNeKEh31SdyRo+3MS+fM
 /+h7dM/yttFW8wtmuMpxpts7jFKS9H+cRw5OmcItbGRcp5NlKJpwfIt7VGW6ksoN3TsfjkvvRi
 B5YmcR7746rsJ+v4M8PyaWad30CWqc3TIAhxeXE766F+LdQkGgJT61vkSkpLLkgvEO2AMebrFq
 K90=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 09 Oct 2019 15:01:29 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2  2/2] RISC-V: Consolidate isa correctness check
Date: Wed,  9 Oct 2019 15:00:58 -0700
Message-Id: <20191009220058.24964-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191009220058.24964-1-atish.patra@wdc.com>
References: <20191009220058.24964-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_150147_854786_21E3B968 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, isa string is read and checked for correctness at multiple
places.

Consolidate them into one function and use it only during early bootup.
In case of a incorrect isa string, the cpu shouldn't boot at all.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/processor.h |  1 +
 arch/riscv/kernel/cpu.c            | 41 ++++++++++++++++++++++--------
 arch/riscv/kernel/cpufeature.c     |  4 +--
 arch/riscv/kernel/smpboot.c        |  4 +++
 4 files changed, 37 insertions(+), 13 deletions(-)

diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index f539149d04c2..189bf98f9a3f 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -74,6 +74,7 @@ static inline void wait_for_interrupt(void)
 }
 
 struct device_node;
+int riscv_read_check_isa(struct device_node *node, const char **isa);
 int riscv_of_processor_hartid(struct device_node *node);
 
 extern void riscv_fill_hwcap(void);
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 40a3c442ac5f..6bd4c7176bf6 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -8,13 +8,43 @@
 #include <linux/of.h>
 #include <asm/smp.h>
 
+int riscv_read_check_isa(struct device_node *node, const char **isa)
+{
+	u32 hart;
+
+	if (of_property_read_u32(node, "reg", &hart)) {
+		pr_warn("Found CPU without hart ID\n");
+		return -ENODEV;
+	}
+
+	if (of_property_read_string(node, "riscv,isa", isa)) {
+		pr_warn("CPU with hartid=%d has no \"riscv,isa\" property\n",
+			hart);
+		return -ENODEV;
+	}
+	/*
+	 * Linux doesn't support rv32e or rv128i, and we only support booting
+	 * kernels on harts with the same ISA that the kernel is compiled for.
+	 */
+	if (IS_ENABLED(CONFIG_32BIT) && (strncmp(*isa, "rv32i", 5) != 0)) {
+		pr_warn("hartid=%d has an invalid ISA \"%s\" for 32bit config\n",
+			hart, *isa);
+		return -ENODEV;
+	} else if (IS_ENABLED(CONFIG_64BIT) &&
+		  (strncmp(*isa, "rv64i", 5) != 0)) {
+		pr_warn("hartid=%d has an invalid ISA \"%s\" for 64bit config\n",
+			hart, *isa);
+		return -ENODEV;
+	}
+	return 0;
+}
+
 /*
  * Returns the hart ID of the given device tree node, or -ENODEV if the node
  * isn't an enabled and valid RISC-V hart node.
  */
 int riscv_of_processor_hartid(struct device_node *node)
 {
-	const char *isa;
 	u32 hart;
 
 	if (!of_device_is_compatible(node, "riscv")) {
@@ -32,15 +62,6 @@ int riscv_of_processor_hartid(struct device_node *node)
 		return -ENODEV;
 	}
 
-	if (of_property_read_string(node, "riscv,isa", &isa)) {
-		pr_warn("CPU with hartid=%d has no \"riscv,isa\" property\n", hart);
-		return -ENODEV;
-	}
-	if (isa[0] != 'r' || isa[1] != 'v') {
-		pr_warn("CPU with hartid=%d has an invalid ISA of \"%s\"\n", hart, isa);
-		return -ENODEV;
-	}
-
 	return hart;
 }
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index b1ade9a49347..eaad5aa07403 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -38,10 +38,8 @@ void riscv_fill_hwcap(void)
 		if (riscv_of_processor_hartid(node) < 0)
 			continue;
 
-		if (of_property_read_string(node, "riscv,isa", &isa)) {
-			pr_warn("Unable to find \"riscv,isa\" devicetree entry\n");
+		if (riscv_read_check_isa(node, &isa) < 0)
 			continue;
-		}
 
 		for (i = 0; i < strlen(isa); ++i)
 			this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 18ae6da5115e..15ee71297abf 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -60,12 +60,16 @@ void __init setup_smp(void)
 	int hart;
 	bool found_boot_cpu = false;
 	int cpuid = 1;
+	const char *isa;
 
 	for_each_of_cpu_node(dn) {
 		hart = riscv_of_processor_hartid(dn);
 		if (hart < 0)
 			continue;
 
+		if (riscv_read_check_isa(dn, &isa) < 0)
+			continue;
+
 		if (hart == cpuid_to_hartid_map(0)) {
 			BUG_ON(found_boot_cpu);
 			found_boot_cpu = 1;
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
