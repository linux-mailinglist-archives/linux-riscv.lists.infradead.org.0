Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660D61488F
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 12:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GBIvRLlhmgW+T3Ayh4RJegL8INVBhpvCd4SrXtcO0yc=; b=H5jw0Uplqy37mo06jI6FSXAsyI
	kh+6TiE+e5JQN071FBKNtBgtKMMXY+BYKxp0FZKjOBmlUfPMe2rulpKmwkYnFKEwRdkPtrD0ir+jJ
	rQgH0fjAp1QoMwkI92U5SXubK+ok0RP1x5wF1Zc+VfcWfOu6m0dfkKhMUQVmHHEY2FqiKwuPJTFlP
	YQDsKhpWtrW45UgJI0RNC2y80n/Sjj+grI2LxAYGFI24WQZvdSpSLnk2HhD9zjUHFMVT145TvPx2Y
	V91/KtzlqG5Swy0U6IGUH7S0uAqK9Rd+6TcbBb8qk2GKr7rTUID4zddZ/0t46Lq9CmT9uyNHRPIP2
	s40MlHdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNbBS-0003xJ-CS; Mon, 06 May 2019 10:49:22 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNbBO-0003vA-UA
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 10:49:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id l132so1598332pfc.8
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 03:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4HiK00SsH+pkXj3bib/Dm6kAutuvgEnhqs4fr0K5FLU=;
 b=HBBrzPCSragWeqLw9VL5g2rPc893dEPb5/25+bvYb0NfgsSnBhRPWLzy93bqb9v5Nu
 l4otNUX7cMdPP0jP0ra/us2VgV65r3hEJCv2fhjbzsOaQ3bDmlXU+o2BQtIwM/7/Uw97
 fpOmLJDea6SvvwUNetEPGxtEz+8RM4P7glSNTy5GQszNWRXBkAe6sqLt5u3bxHIuLsI+
 7i1jcjmjruWx0U//A83Iu3bGxR8PYoAZQlGHo9vS7EpOuuLHm+gKSBuDhIft9Vdf8dlZ
 VJeTQu+dAvjr6wBoTSQhkMxRH8pxFUHCHSDp6yOjhTqbA1pp+NMzXmCG3smb5zZt32Ys
 qLXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4HiK00SsH+pkXj3bib/Dm6kAutuvgEnhqs4fr0K5FLU=;
 b=VzKseFlNbIsGfsjo4oC7GCwSKGi+g6Z2Ba/sSuHPr24OBZqZBjswjexCiKKJTBB07J
 uLN2tSGahP+WJRPPtaUc7LEwvvoOO+QRakDeXxlsJsDw/PAcCT0hI1iKUGgc3lhrY4Gp
 dCLikp9bOghG1E/tf/LwyFT9WB4fL3RFmmOpNn7bCwxGiDSQfKrTQN+Y9d95yMEW5avd
 JSzWiH69+pcpNWFk2KGgbU/BTUd25mAsINF6o7pQSDBUDwnLM1vx1J7B0lJlh2tJBLic
 sVJ7PspoSSTGjZL03LERaiRtMfqpJ0EuYyWjm+G9Mp6Y4rggW8rdGg9vYX452nHyDwHh
 97jQ==
X-Gm-Message-State: APjAAAVuhQfbPTnWVz/DlQu22gZVEXZqb0X5gDJQIbL0FCwgX8WqbXIp
 4VvmZUhFTGaXfcCID5lIPim8c1iA3qo=
X-Google-Smtp-Source: APXvYqxNsts953IiloKTJ1hJwytN2Sl6bspyUJk+Nr/Kky6yX9IBsXli/CNSxZWw3gSLYfzgdStgZQ==
X-Received: by 2002:a62:a515:: with SMTP id v21mr32702376pfm.41.1557139757825; 
 Mon, 06 May 2019 03:49:17 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 p67sm21662257pfi.123.2019.05.06.03.49.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 03:49:17 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 palmer@sifive.com
Subject: [PATCH v3 2/2] RISC-V: sifive_l2_cache: Add L2 cache controller
 driver for SiFive SoCs
Date: Mon,  6 May 2019 16:18:40 +0530
Message-Id: <1557139720-12384-3-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557139720-12384-1-git-send-email-yash.shah@sifive.com>
References: <1557139720-12384-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_034918_975533_C8E68D87 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org,
 afd@ti.com, sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>,
 robh+dt@kernel.org, paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The driver currently supports only SiFive FU540-C000 platform.

The initial version of L2 cache controller driver includes:
- Initial configuration reporting at boot up.
- Support for ECC related functionality.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/include/asm/sifive_l2_cache.h |  16 +++
 arch/riscv/mm/Makefile                   |   1 +
 arch/riscv/mm/sifive_l2_cache.c          | 175 +++++++++++++++++++++++++++++++
 3 files changed, 192 insertions(+)
 create mode 100644 arch/riscv/include/asm/sifive_l2_cache.h
 create mode 100644 arch/riscv/mm/sifive_l2_cache.c

diff --git a/arch/riscv/include/asm/sifive_l2_cache.h b/arch/riscv/include/asm/sifive_l2_cache.h
new file mode 100644
index 0000000..04f6748
--- /dev/null
+++ b/arch/riscv/include/asm/sifive_l2_cache.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * SiFive L2 Cache Controller header file
+ *
+ */
+
+#ifndef _ASM_RISCV_SIFIVE_L2_CACHE_H
+#define _ASM_RISCV_SIFIVE_L2_CACHE_H
+
+extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
+extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
+
+#define SIFIVE_L2_ERR_TYPE_CE 0
+#define SIFIVE_L2_ERR_TYPE_UE 1
+
+#endif /* _ASM_RISCV_SIFIVE_L2_CACHE_H */
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index eb22ab4..1523ee5 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -3,3 +3,4 @@ obj-y += fault.o
 obj-y += extable.o
 obj-y += ioremap.o
 obj-y += cacheflush.o
+obj-y += sifive_l2_cache.o
diff --git a/arch/riscv/mm/sifive_l2_cache.c b/arch/riscv/mm/sifive_l2_cache.c
new file mode 100644
index 0000000..4eb6461
--- /dev/null
+++ b/arch/riscv/mm/sifive_l2_cache.c
@@ -0,0 +1,175 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * SiFive L2 cache controller Driver
+ *
+ * Copyright (C) 2018-2019 SiFive, Inc.
+ *
+ */
+#include <linux/debugfs.h>
+#include <linux/interrupt.h>
+#include <linux/of_irq.h>
+#include <linux/of_address.h>
+#include <asm/sifive_l2_cache.h>
+
+#define SIFIVE_L2_DIRECCFIX_LOW 0x100
+#define SIFIVE_L2_DIRECCFIX_HIGH 0x104
+#define SIFIVE_L2_DIRECCFIX_COUNT 0x108
+
+#define SIFIVE_L2_DATECCFIX_LOW 0x140
+#define SIFIVE_L2_DATECCFIX_HIGH 0x144
+#define SIFIVE_L2_DATECCFIX_COUNT 0x148
+
+#define SIFIVE_L2_DATECCFAIL_LOW 0x160
+#define SIFIVE_L2_DATECCFAIL_HIGH 0x164
+#define SIFIVE_L2_DATECCFAIL_COUNT 0x168
+
+#define SIFIVE_L2_CONFIG 0x00
+#define SIFIVE_L2_WAYENABLE 0x08
+#define SIFIVE_L2_ECCINJECTERR 0x40
+
+#define SIFIVE_L2_MAX_ECCINTR 3
+
+static void __iomem *l2_base;
+static int g_irq[SIFIVE_L2_MAX_ECCINTR];
+
+enum {
+	DIR_CORR = 0,
+	DATA_CORR,
+	DATA_UNCORR,
+};
+
+#ifdef CONFIG_DEBUG_FS
+static struct dentry *sifive_test;
+
+static ssize_t l2_write(struct file *file, const char __user *data,
+			size_t count, loff_t *ppos)
+{
+	unsigned int val;
+
+	if (kstrtouint_from_user(data, count, 0, &val))
+		return -EINVAL;
+	if ((val >= 0 && val < 0xFF) || (val >= 0x10000 && val < 0x100FF))
+		writel(val, l2_base + SIFIVE_L2_ECCINJECTERR);
+	else
+		return -EINVAL;
+	return count;
+}
+
+static const struct file_operations l2_fops = {
+	.owner = THIS_MODULE,
+	.open = simple_open,
+	.write = l2_write
+};
+
+static void setup_sifive_debug(void)
+{
+	sifive_test = debugfs_create_dir("sifive_l2_cache", NULL);
+
+	debugfs_create_file("sifive_debug_inject_error", 0200,
+			    sifive_test, NULL, &l2_fops);
+}
+#endif
+
+static void l2_config_read(void)
+{
+	u32 regval, val;
+
+	regval = readl(l2_base + SIFIVE_L2_CONFIG);
+	val = regval & 0xFF;
+	pr_info("L2CACHE: No. of Banks in the cache: %d\n", val);
+	val = (regval & 0xFF00) >> 8;
+	pr_info("L2CACHE: No. of ways per bank: %d\n", val);
+	val = (regval & 0xFF0000) >> 16;
+	pr_info("L2CACHE: Sets per bank: %llu\n", (uint64_t)1 << val);
+	val = (regval & 0xFF000000) >> 24;
+	pr_info("L2CACHE: Bytes per cache block: %llu\n", (uint64_t)1 << val);
+
+	regval = readl(l2_base + SIFIVE_L2_WAYENABLE);
+	pr_info("L2CACHE: Index of the largest way enabled: %d\n", regval);
+}
+
+static const struct of_device_id sifive_l2_ids[] = {
+	{ .compatible = "sifive,fu540-c000-ccache" },
+	{ /* end of table */ },
+};
+
+static ATOMIC_NOTIFIER_HEAD(l2_err_chain);
+
+int register_sifive_l2_error_notifier(struct notifier_block *nb)
+{
+	return atomic_notifier_chain_register(&l2_err_chain, nb);
+}
+EXPORT_SYMBOL_GPL(register_sifive_l2_error_notifier);
+
+int unregister_sifive_l2_error_notifier(struct notifier_block *nb)
+{
+	return atomic_notifier_chain_unregister(&l2_err_chain, nb);
+}
+EXPORT_SYMBOL_GPL(unregister_sifive_l2_error_notifier);
+
+static irqreturn_t l2_int_handler(int irq, void *device)
+{
+	unsigned int regval, add_h, add_l;
+
+	if (irq == g_irq[DIR_CORR]) {
+		add_h = readl(l2_base + SIFIVE_L2_DIRECCFIX_HIGH);
+		add_l = readl(l2_base + SIFIVE_L2_DIRECCFIX_LOW);
+		pr_err("L2CACHE: DirError @ 0x%08X.%08X\n", add_h, add_l);
+		regval = readl(l2_base + SIFIVE_L2_DIRECCFIX_COUNT);
+		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_CE,
+					   "DirECCFix");
+	}
+	if (irq == g_irq[DATA_CORR]) {
+		add_h = readl(l2_base + SIFIVE_L2_DATECCFIX_HIGH);
+		add_l = readl(l2_base + SIFIVE_L2_DATECCFIX_LOW);
+		pr_err("L2CACHE: DataError @ 0x%08X.%08X\n", add_h, add_l);
+		regval = readl(l2_base + SIFIVE_L2_DATECCFIX_COUNT);
+		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_CE,
+					   "DatECCFix");
+	}
+	if (irq == g_irq[DATA_UNCORR]) {
+		add_h = readl(l2_base + SIFIVE_L2_DATECCFAIL_HIGH);
+		add_l = readl(l2_base + SIFIVE_L2_DATECCFAIL_LOW);
+		pr_err("L2CACHE: DataFail @ 0x%08X.%08X\n", add_h, add_l);
+		regval = readl(l2_base + SIFIVE_L2_DATECCFAIL_COUNT);
+		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_UE,
+					   "DatECCFail");
+	}
+
+	return IRQ_HANDLED;
+}
+
+int __init sifive_l2_init(void)
+{
+	struct device_node *np;
+	struct resource res;
+	int i, rc;
+
+	np = of_find_matching_node(NULL, sifive_l2_ids);
+	if (!np)
+		return -ENODEV;
+
+	if (of_address_to_resource(np, 0, &res))
+		return -ENODEV;
+
+	l2_base = ioremap(res.start, resource_size(&res));
+	if (!l2_base)
+		return -ENOMEM;
+
+	for (i = 0; i < SIFIVE_L2_MAX_ECCINTR; i++) {
+		g_irq[i] = irq_of_parse_and_map(np, i);
+		rc = request_irq(g_irq[i], l2_int_handler, 0, "l2_ecc", NULL);
+		if (rc) {
+			pr_err("L2CACHE: Could not request IRQ %d\n", g_irq[i]);
+			return rc;
+		}
+	}
+
+	l2_config_read();
+
+#ifdef CONFIG_DEBUG_FS
+	setup_sifive_debug();
+#endif
+	return 0;
+}
+device_initcall(sifive_l2_init);
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
