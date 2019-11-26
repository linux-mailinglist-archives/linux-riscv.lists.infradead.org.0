Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3D510A6C7
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 23:46:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GY4uv4thifqgEv+JjFBROpmkNi0AEX+GZ0FnSX4u73c=; b=CL+ZL5qQa/XgJSs7lPhYRN2j9b
	XKB6Nn2RoF2MD2ae3BOwEH9hlQD9mS6aElkB2rGFtCdus0c9dU352GXlEAvOWpp6Xs01WoiXvfNQH
	PRKbEOI4+I6xeya+9TfOiZNoPIqCnWlx1G1PolOg0Cz7mC7E3b5KfIgrOV/7EENc+Zk9EONTAsms8
	VGxKjFAk3G7TOhsZMfLKz79lvADfNg34wh2Jbxj6iBiG6bSobwr+9iz40BRNNVcQvchjGvzRkOnQS
	efzXBSBAHIeOnHh1nsX02aYxYGrFvxI47hzp44d3cBJbk2Ql4oQ1XAWdyZULcuH0/Ixbk6BZs7PRL
	pnPqLalQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZjbA-0005mO-TR; Tue, 26 Nov 2019 22:46:20 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZjb6-0005m0-UF
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 22:46:18 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id DA5E5769;
 Tue, 26 Nov 2019 17:46:15 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Tue, 26 Nov 2019 17:46:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gstardust.com;
 h=from:to:cc:subject:date:message-id:in-reply-to:references; s=
 mesmtp; bh=GR3YREDwUxTesxmdecPn1Ziirn6iQvdiG1EtQR1iGss=; b=fxHiv
 DGaXRqokvFf60X0gYboLdG7MszxKLt1MbEd2PfSNhg8miAgxcT+1HJ6LEz5qDyLk
 1HxJf+vuZtpeRXQYADJKqfDZLuDaqI7XFPYEKLuE1prQ3e2Q3Rhh6YLklb6wtO9o
 iJYrlhSxo/xo+34npfwg4VDHv2cBkPBQS+Yf0Q=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:date:from:in-reply-to:message-id
 :references:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; bh=GR3YREDwUxTesxmdecPn1Ziirn6iQ
 vdiG1EtQR1iGss=; b=MB1vGKt+0BGzQjwOSMHB9rxpNdY9DlF6QmXmoagNkQ0Ae
 UUnOBoYrpHuc6aQ2Ir8kIK4n3XP7cu8sgTSeWva7dF84CLNC8hvoFkd30ir+lBsD
 IiBfl8gDKybUDEYGF3frQPhQBSgxfcBiKJTLHNK00saap7kFsn3GieZdvc/ziveE
 lm+ZgeBKQPtVlQsGnTZ/vP8GGDmOW/C708hbe9mRGLQwAx3Lg+AA6welvaYLnpOW
 B50RY1xw5K69YDTRCDG8KyBFxlnQUovrx8JLCDxdWMpv2pYt/Etj1+/T9ScRg8b8
 V0m2m3QxsuiOpjCz5SAYKUJCB0fj4f9qOlGc9w9YA==
X-ME-Sender: <xms:N6vdXXh1Sy68wi6E2yYKcKRiSDV6nm9QIDBymv9b6KFBZxhdUNpjaw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeigedgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfsedttdertdertddtnecuhfhrohhmpeforghrtgcuifgr
 uhhthhhivghruceotghonhhsuhhlthdqmhhgsehgshhtrghrughushhtrdgtohhmqeenuc
 fkphepudegvddrheelrdehledrvdelnecurfgrrhgrmhepmhgrihhlfhhrohhmpegtohhn
 shhulhhtqdhmghesghhsthgrrhguuhhsthdrtghomhenucevlhhushhtvghrufhiiigvpe
 du
X-ME-Proxy: <xmx:N6vdXbmj3DLQpaG7Y887e7pRGFFKC6RADGyPRjT7bsJUrmqx8DI2og>
 <xmx:N6vdXWv2QFplxYkhe4fl16myYNFjP-UcQAFqbnsi-n_DMzfv3u3oBA>
 <xmx:N6vdXRBtZHOMYkcYL2lXq_92qGKtTMA3VOxxXJHIN5EKQYtzfiHGLA>
 <xmx:N6vdXXqOOLvPQmyF5l8BhSSis4A0mt0dA9ZbEJEZQqg0aHqJAkwndA>
Received: from SurfBoard.localdomain (unknown [142.59.59.29])
 by mail.messagingengine.com (Postfix) with ESMTPA id 10DE93060060;
 Tue, 26 Nov 2019 17:46:15 -0500 (EST)
From: Marc Gauthier <consult-mg@gstardust.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v2 2/2] riscv: Set SHMLBA according to cache geometry
Date: Tue, 26 Nov 2019 17:44:46 -0500
Message-Id: <20191126224446.15145-3-consult-mg@gstardust.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191126224446.15145-1-consult-mg@gstardust.com>
References: <20191126224446.15145-1-consult-mg@gstardust.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_144617_022074_49880A9C 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Gauthier <consult-mg@gstardust.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Paul Walmsley <paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Set SHMLBA to the maximum cache "span" (line size * number of sets) of
all CPU L1 instruction and data caches (L2 and up are rarely VIPT).
This avoids VIPT cache aliasing with minimal alignment constraints.

If the device tree does not provide cache parameters, use a conservative
default of 16 KB:  only large enough to avoid aliasing in most VIPT caches.

Signed-off-by: Marc Gauthier <consult-mg@gstardust.com>
---
 arch/riscv/include/asm/Kbuild     |  1 -
 arch/riscv/include/asm/shmparam.h | 12 +++++++
 arch/riscv/kernel/cacheinfo.c     | 52 +++++++++++++++++++++++++++++++
 3 files changed, 64 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/shmparam.h

diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index 16970f246860..3905765807af 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -27,7 +27,6 @@ generic-y += percpu.h
 generic-y += preempt.h
 generic-y += sections.h
 generic-y += serial.h
-generic-y += shmparam.h
 generic-y += topology.h
 generic-y += trace_clock.h
 generic-y += unaligned.h
diff --git a/arch/riscv/include/asm/shmparam.h b/arch/riscv/include/asm/shmparam.h
new file mode 100644
index 000000000000..9b6a98153648
--- /dev/null
+++ b/arch/riscv/include/asm/shmparam.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_RISCV_SHMPARAM_H
+#define _ASM_RISCV_SHMPARAM_H
+
+/*
+ * Minimum alignment of shared memory segments as a function of cache geometry.
+ */
+#define	SHMLBA	arch_shmlba()
+
+long arch_shmlba(void);
+
+#endif /* _ASM_RISCV_SHMPARAM_H */
diff --git a/arch/riscv/kernel/cacheinfo.c b/arch/riscv/kernel/cacheinfo.c
index 4c90c07d8c39..1bc7df8577d6 100644
--- a/arch/riscv/kernel/cacheinfo.c
+++ b/arch/riscv/kernel/cacheinfo.c
@@ -1,12 +1,61 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2017 SiFive
+ * Copyright (C) 2019 Aril Inc
  */
 
 #include <linux/cacheinfo.h>
 #include <linux/cpu.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/mm.h>
+
+static long shmlba;
+
+
+/*
+ * Assuming  cache size = line size * #sets * N  for N-way associative caches,
+ * return the max cache "span" == (line size * #sets) == (cache size / N)
+ * across all L1 caches, or 0 if cache parameters are not available.
+ * VIPT caches with span > min page size are susceptible to aliasing.
+ */
+static long get_max_cache_span(void)
+{
+	struct cpu_cacheinfo *this_cpu_ci;
+	struct cacheinfo *this_leaf;
+	long span, max_span = 0;
+	int cpu, leaf;
+
+	for_each_possible_cpu(cpu) {
+		this_cpu_ci = get_cpu_cacheinfo(cpu);
+		this_leaf = this_cpu_ci->info_list;
+		for (leaf = 0; leaf < this_cpu_ci->num_leaves; leaf++) {
+			if (this_leaf->level > 1)
+				break;
+			span = this_leaf->coherency_line_size *
+			       this_leaf->number_of_sets;
+			if (span > max_span)
+				max_span = span;
+			this_leaf++;
+		}
+	}
+	return max_span;
+}
+
+/*
+ * Align shared mappings to the maximum cache "span" to avoid aliasing
+ * in VIPT caches, for performance.
+ * The returned SHMLBA value is always a power-of-two multiple of PAGE_SIZE.
+ */
+long arch_shmlba(void)
+{
+	if (shmlba == 0) {
+		long max_span = get_max_cache_span();
+
+		shmlba = max_span ? PAGE_ALIGN(max_span) : 4 * PAGE_SIZE;
+	}
+	return shmlba;
+}
 
 static void ci_leaf_init(struct cacheinfo *this_leaf,
 			 struct device_node *node,
@@ -93,6 +142,9 @@ static int __populate_cache_leaves(unsigned int cpu)
 	}
 	of_node_put(np);
 
+	/* Force recalculating SHMLBA if cache parameters are updated. */
+	shmlba = 0;
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
