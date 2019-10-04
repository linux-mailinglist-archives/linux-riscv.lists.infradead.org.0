Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A082CB2F3
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 03:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3E4yXHCiJ/izVt++N94e7s2tAzYgHuyRLxk1DFtEdwY=; b=I/qTmZk3Fbo0WP
	jPGFiWGvocPDFT8qbUmi7kozRqkZadvtKpkkopxYvz9KnxMpNibLAfhBr5frlE7plUz04acsJwYKv
	nAy8AJ92NX8VIATTVCaau5vKPpj6GshM+K4/C9RR1XUIEih+z+RU32j9lAN9hobIH6AJRwejSNiBw
	UJBMcvGycY4XBpxop58PQPNt0Jaijqrz5qGgh1PdHVKrFA/RSIZcETBsMTT894oNNwOM7ZhNgz8t6
	02O7viXpxRc9ef/idGzZh5WDF3pjkqJHvNDO4DNGNg/uMTpK5LziNAPe2RnRmXVY4nXZsZTUSdLod
	Iq1YUOA1C+G5mW0c36Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGCGV-000246-LW; Fri, 04 Oct 2019 01:20:15 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGCGN-0001hv-SQ
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 01:20:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570152007; x=1601688007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JJtoW7EbTMq3z+5/83sAIqWFB2c/7rptzmLUxfNEu+A=;
 b=n0aATawcdwOGINwDCn9xKXgXSClRoak0LjEdRfmVfcTsgFtvV4Smi6wK
 9QCqfTVmQfXl9KrN1SpnAj8sqz+VKUDDl6Dv+T9G7u41Wxu6+VKX4tB4G
 chVwUbt9JhgCG9STMY3Gw4j/ztiznKjAhhY5yyd/TRKn3P892qVPKPCXU
 +sZAZr9jkqbFfcmeweqR2Kby7fFegEyZ8Mrsh8/jS0XXwerWXKwv7zjPW
 V8mzbaR0kuHvHOR7y0a3iI5FoMRsMMcutYBl+JvgJPs+4RCt2QofpMyRx
 0e5nyZ2+9f14RuwYERPZaKE9i/TCmU9N+exQicn4o5UvwDLAosU8qpUQ2 Q==;
IronPort-SDR: IbwEtREU9CCM2cWd5V0nds8qeXqHhVF5YpZYRsbQcm2a1ZKi7vU8C6Ylo9tNPSNRMIWp2sg1ug
 2L0ef7YqyI185lydAuVc7OCaPqolCexhqEdhn1F5T0Tq0gd8ekRwKVpz6KJtJEISdJZxbzeLwm
 IZpg/bth02ci42xo179w4B+U325YgVFS/3UvFC4Q2wK8YFDzwa8JUJERqhV714R0m6S6PsWjlE
 rMSJagwxLWwllUWfg0dz9v+cwUv+bI7rCdVlUpVURxKBFF+5vkaZt225sBIurIimUTP9TOaqDh
 UIY=
X-IronPort-AV: E=Sophos;i="5.67,254,1566835200"; d="scan'208";a="121336707"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 04 Oct 2019 09:20:02 +0800
IronPort-SDR: V0+NvogtadaQwQLLrKzsiW/KebQzUkmpDn6UHALk84EHCcr9SsoRdJkBVbXp8bcJEyn9e4Vw1j
 tSwD5SP6FCSA7FDNotPAfQ4IoqZSpQqh462epLZVvI0w1fRl4A2o+6qhNdjLrZAaBahcCIy39U
 s6vd+cQgQreb8iSLS1fYFiHIWEddUUycQJL/CnCessFlyRQYxtp9tYyw0rUVAdW3yQ44a6S7ye
 3PY5oua5d+2A/OWFXs4a+QPEsJRjKZ6CVljKAc0LVGeV5vxQBCnjjlh7H5uS0zw2gprnDkJt4S
 XGyjhG+SNXi5qf5xODNiSIlF
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 18:16:11 -0700
IronPort-SDR: u7A02DRehnzLmOmcpmq6YlaRr85A14SoW78LuIuz2ZMnPLX71NoDXU2MhZSFN9a4c5AdptRds/
 A71A4ILtiUrOQNQiGtRWu8PdN5+yGmW8BoadSqeO67X5Xiz4lmNIs4w4P7lDJ5+D2E06I2yFqq
 acM/NrAGFyQASXoRMIkvWPtOjulMpgDT8Iq729lqnp3fvSTtz7B/X1cXpTGX33yb9ldGPtCMvf
 UJnWi1cWmYzzsB+K+Ua5WQvYbVatVjtIWZEeOGgFMtb81XG8MdpQ7TBF8arAGEHi53zBFBPEsX
 caI=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 03 Oct 2019 18:20:03 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v1 PATCH  2/2] RISC-V: Consolidate isa correctness check
Date: Thu,  3 Oct 2019 18:20:00 -0700
Message-Id: <20191004012000.2661-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004012000.2661-1-atish.patra@wdc.com>
References: <20191004012000.2661-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_182007_957186_9131D382 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alexandre Ghiti <aghiti@upmem.com>, Atish Patra <atish.patra@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Anup Patel <anup@brainfault.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-riscv@lists.infradead.org
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
 arch/riscv/kernel/cpu.c            | 40 ++++++++++++++++++++++--------
 arch/riscv/kernel/cpufeature.c     |  4 +--
 arch/riscv/kernel/smpboot.c        |  4 +++
 4 files changed, 36 insertions(+), 13 deletions(-)

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
index 40a3c442ac5f..95ef5c91823d 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -8,13 +8,42 @@
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
+
+	/*
+	 * Linux doesn't support rv32e or rv128i, and we only support booting
+	 * kernels on harts with the same ISA that the kernel is compiled for.
+	 */
+#if defined(CONFIG_32BIT)
+	if (strncmp(*isa, "rv32i", 5) != 0)
+		return -ENODEV;
+#elif defined(CONFIG_64BIT)
+	if (strncmp(*isa, "rv64i", 5) != 0)
+		return -ENODEV;
+#endif
+
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
@@ -32,15 +61,6 @@ int riscv_of_processor_hartid(struct device_node *node)
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
