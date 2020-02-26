Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E154170B1F
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 23:03:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAbRvG3s9T/tY04+fiZ4KZmRY181sKIxmNnCganjCJE=; b=dEnozL5N3VMf4N
	k7vnrsR/Uhfb8ORoRvp+06MDLnSxchuk0v6ZWVuTkUBycpkA3YYh4Pu0CKuLxrcjKavae6viN66Iz
	NT5OmqL17+nl8qVwjJpwv6zn7d6szszT8LAd6yt3tRD+vk6dnW5Ew+FfsqlDqfOPGyrThwmb5fwRr
	InuGPsDvhVPEK/a0rSvTBDBd7dhm3P2d6aWcQuuMPuPkJIMRbpPSCrbJt5j8cTx4eYvYQF7LGRIwq
	F/LVynAL2MQJAxx9SM6fKtZtADQzOUb1ikwQOm8ZLGxNstC06dfIvt5sEOIqLJocVHS+wwu6lxfYZ
	FN7ktUIzHCb8GQPqQHQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74lm-0004bw-LI; Wed, 26 Feb 2020 22:03:06 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74lE-0003ne-Ek
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 22:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582754552; x=1614290552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rQpWeai3GBbIb6BkBx8DbAEiU0Kg2MIkEVW4P65W++w=;
 b=Lc34c3G6DJ8V/9xIrUSkPWyIT1xkIXq16yZVxlC1yEwwgZPud4nCmBNP
 gSmDi7Fq0KNhH8FN1SfjAaOAeX9f5D4FxcXGC9SX6aKXHxBbiptEl4eNp
 DVVYrJC6KkhgZnqd/Podc6xd7iWdgiYlhixm+q7OCmGzmJNh+7FNbHWiu
 rWDnh4o8ncUY/1WZB7xKKZNyKShzUCI8JzyeX8Tg81DJ7Z/Zh+lQohcoo
 vI4z4rwS9hwsg6kif7i+XA+4Ej5hjV0OctHBlRDvbRBI/VAgkyuhf4e+S
 troyUdZkudCk9L26dclMNK3zosHRHro/JsJQbtUhhiOIGjlc1nZL1Jphi w==;
IronPort-SDR: B9vinn3WtVS6/VEC5z4ytsCktWZck+RI/YmdQAcaYYCrleV64hmqQjqfDVPFb7kc1ZFBk+3iy6
 KQ6m+SYgFhrbywRf7pN8cV1gdgEUZ6SzpC+zJtsmrQPX4badltc7j0/8/I98h3z5/qRVF/GZVl
 DWr5uom3mlyrXCFlZyu/0uB8z3sOoBOTu1EmHLKeqeHFwnJNqgkonZVBKa7RQJsQKY5LxHo4QD
 1bPRqY6HHmM23JUPXRFID5NYQHVJXCUIKo2myjfhvISZKpSxoF2VlcSjVKb0u0rhtFV4yr+09E
 kik=
X-IronPort-AV: E=Sophos;i="5.70,489,1574092800"; d="scan'208";a="238981893"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 27 Feb 2020 06:02:27 +0800
IronPort-SDR: yQBUbXOoUhA4Y1yzdrWt5N7JuYRKudSFjoZRmuYLvdH8W0hUtQKo99bMpWJjhBG8Y/Y0cRmHzx
 8bixE+fBW1j+Wb7XkQFIDtkbwyThRsV+5oh3tbbBrOdoF8QVaI3ut7UITNDutGckadMgkFDiKb
 JBRsC5yMfK6ojJElf6h5DocRWeNkfXKav0g247vC/aWLgEnqEAJ3UjrLUmyD3u9NmmbEWPGrpe
 QcT0hNoxMQsxVqjmxwzuDYbHr4UtpTsN19rPd5vL4iokOrIs7vOPENL1h0fpQ9EXZc6ftu/tii
 sMZ8RKEpmMkNk5U7pu8BOcR9
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 13:54:52 -0800
IronPort-SDR: SGkEvRNXKfIFdxe2v5grLyGhwf6sIXYzVfN+QHIvGkbE2LH5zW1s43qb9In+JL4NcrtlVUrP/n
 4MtgAqBiufdOJ9+Q1OPtPalllTq55OdRNNtMjbxrSSDfks0aCnx01frZNYtmM8CQDzI11GAHon
 AeUFw/+ApDXvEMUJXv7XVuoenG7qvLnumo0ttt8hszR3Xx8W4UTdiGCBGjtMkRRREwPUuATaNs
 nYYDQ2Fh1IdxjrIh1V3VsYR1etLdHwrBgV8FK+PT0ZpcKNF419nacFYlKVcDFW8kCFeAsu4zhE
 MOI=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Feb 2020 14:02:27 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v10 12/12] irqchip/sifive-plic: Initialize the plic handler
 when cpu comes online
Date: Wed, 26 Feb 2020 14:02:13 -0800
Message-Id: <20200226220213.27423-13-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226220213.27423-1-atish.patra@wdc.com>
References: <20200226220213.27423-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_140232_616451_24B7C1ED 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Madhavan Srinivasan <maddy@linux.vnet.ibm.com>, Zong Li <zong.li@sifive.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michael Kelley <mikelley@microsoft.com>, Atish Patra <atish.patra@wdc.com>,
 Gary Guo <gary@garyguo.net>, linux-riscv@lists.infradead.org,
 Mike Rapoport <rppt@linux.ibm.com>, Kees Cook <keescook@chromium.org>,
 Marc Zyngier <maz@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vincent Chen <vincent.chen@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Anup Patel <anup@brainfault.org>,
 Steven Price <steven.price@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, plic threshold and priority are only initialized once in the
beginning. However, threshold can be set to disabled if cpu is marked
offline with cpu hotplug feature. This will not allow to change the
irq affinity to a cpu that just came online.

Add plic specific cpu hotplug callback and initialize the per cpu handler
when cpu comes online.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/kernel/traps.c         |  2 +-
 drivers/irqchip/irq-sifive-plic.c | 38 +++++++++++++++++++++++++++----
 include/linux/cpuhotplug.h        |  1 +
 3 files changed, 36 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 8e13ad45ccaa..16c59807da6a 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -157,5 +157,5 @@ void trap_init(void)
 	/* Set the exception vector address */
 	csr_write(CSR_TVEC, &handle_exception);
 	/* Enable interrupts */
-	csr_write(CSR_IE, IE_SIE | IE_EIE);
+	csr_write(CSR_IE, IE_SIE);
 }
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index aa4af886e43a..7c7f37393f99 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -4,6 +4,7 @@
  * Copyright (C) 2018 Christoph Hellwig
  */
 #define pr_fmt(fmt) "plic: " fmt
+#include <linux/cpu.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/irq.h>
@@ -55,6 +56,9 @@
 #define     CONTEXT_THRESHOLD		0x00
 #define     CONTEXT_CLAIM		0x04
 
+#define	PLIC_DISABLE_THRESHOLD		0xf
+#define	PLIC_ENABLE_THRESHOLD		0
+
 static void __iomem *plic_regs;
 
 struct plic_handler {
@@ -230,6 +234,32 @@ static int plic_find_hart_id(struct device_node *node)
 	return -1;
 }
 
+static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
+{
+	/* priority must be > threshold to trigger an interrupt */
+	writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
+}
+
+static int plic_dying_cpu(unsigned int cpu)
+{
+	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
+
+	csr_clear(CSR_IE, IE_EIE);
+	plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
+
+	return 0;
+}
+
+static int plic_starting_cpu(unsigned int cpu)
+{
+	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
+
+	csr_set(CSR_IE, IE_EIE);
+	plic_set_threshold(handler, PLIC_ENABLE_THRESHOLD);
+
+	return 0;
+}
+
 static int __init plic_init(struct device_node *node,
 		struct device_node *parent)
 {
@@ -267,7 +297,6 @@ static int __init plic_init(struct device_node *node,
 		struct plic_handler *handler;
 		irq_hw_number_t hwirq;
 		int cpu, hartid;
-		u32 threshold = 0;
 
 		if (of_irq_parse_one(node, i, &parent)) {
 			pr_err("failed to parse parent for context %d.\n", i);
@@ -301,7 +330,7 @@ static int __init plic_init(struct device_node *node,
 		handler = per_cpu_ptr(&plic_handlers, cpu);
 		if (handler->present) {
 			pr_warn("handler already present for context %d.\n", i);
-			threshold = 0xffffffff;
+			plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
 			goto done;
 		}
 
@@ -313,13 +342,14 @@ static int __init plic_init(struct device_node *node,
 			plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
 
 done:
-		/* priority must be > threshold to trigger an interrupt */
-		writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
 		for (hwirq = 1; hwirq <= nr_irqs; hwirq++)
 			plic_toggle(handler, hwirq, 0);
 		nr_handlers++;
 	}
 
+	cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
+				  "irqchip/sifive/plic:starting",
+				  plic_starting_cpu, plic_dying_cpu);
 	pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
 		nr_irqs, nr_handlers, nr_contexts);
 	set_handle_irq(plic_handle_irq);
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index d37c17e68268..77d70b633531 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -102,6 +102,7 @@ enum cpuhp_state {
 	CPUHP_AP_IRQ_ARMADA_XP_STARTING,
 	CPUHP_AP_IRQ_BCM2836_STARTING,
 	CPUHP_AP_IRQ_MIPS_GIC_STARTING,
+	CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
 	CPUHP_AP_ARM_MVEBU_COHERENCY,
 	CPUHP_AP_MICROCODE_LOADER,
 	CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING,
-- 
2.25.0


