Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB2A1860E3
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 01:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AezZ3pP55Joc945ERCB/TKvW7CDwpk+RTJ+XbnCTtA=; b=Z5j01HYvLMKlOl
	qfHHtpYOxk1XsMAIdxmekzIBGF0eGEsQ5QbbV4Tid4iQgRiCWhG60g0fYW+VNhM09FtJZde13dqIk
	ICv3euyfDsvw2Z910djuuAPLf3fGIFib7VFR2lMvix2JR0uYYTm0N79PLb90yS48pw6AGQglDXPTc
	K7TYdAy5clg7YB6WOCFo/zdfp0VuDJ/MYLsNhUL11rpiX0qnWFX6MMdKxkfz/TGBy6mvLtj4wmc5u
	vdUhBmppEXdyEfATDRqsR6U4GDcIvLtRGoUjEkUr0bSlFnO0+jOLxhm1hukf3MhONhC+f9QcWM/Fd
	mvi2EtVFGlN24Wpod7Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdvN-0005Bz-Nq; Mon, 16 Mar 2020 00:48:09 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdv5-0004tA-06
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 00:47:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584319672; x=1615855672;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PYhEVpmbjCnBVgw9L4xp6JuupFXA1P8lyt0WquX0Y0w=;
 b=UCFD0lYnW4Ez1ESPjCmfw06yBFfeXRqlH5K2yCLoePgC5TdGxxBioVeg
 CGuy+Ewh8zbljyZ5qWASa/cZEHyrF0VzOjZSGrhgXLPADDv3dqgcEHZoo
 TgHQ5naZXUpkFqqaMnWTJAs7T3UetGFc/zyx0pP9qDD2G4DXaHD9IU79B
 mDxsGS5tDv24Ac3mIkN6OEU7RpJOt+Fal4V5Bzgs+KXeDhLbHmCgphetD
 jxMh+KyfRF1GoEl9w6IXYS7xJyoD2PGpq85kcTXWdaKKSS+q8Qv/uOz/t
 5EQMKzouYIcIXihSWpDtYpFms5+/FTIAZEdCBKQFi0YOEHy4Z1tpp3JnE g==;
IronPort-SDR: nPpLgBbyLiFxNQe740F09Gg6BsxDvkCK5phsn5qoA9OehvvWXbU+EF95iGi5HahOseoUMMSnGb
 YE+zwS+L4K8WW5u7APKb3aTywZI8zgQ9fw4LeHmaDXB0uC5856qn6cZGsCI7oaJXkzro/a2KmR
 DLVZ+W+RIxRGP3vi40nhWTSkS12y7/buQGvBQvKzkKA5dP+Ekxc7KL1WGiiPfyaic4sBoxUniJ
 EbJ3kMGwL1zsBCtP/GdKAaHLHoCtpIyLxhuO5xcvQkGTYdMKqTly9IATUaMP+N1UWYCe68vd8H
 7Io=
X-IronPort-AV: E=Sophos;i="5.70,558,1574092800"; d="scan'208";a="133011923"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 Mar 2020 08:47:49 +0800
IronPort-SDR: t/LV1OSTa+YpUin4V7rfYhzQjWOR4itOB/EBPwRTuV1+sXnLCCzA099Rb1Ezjb3Orf+f+HoXHv
 1cf1BNkHbpYqldqWjgj1Q+wBVBC1w1zzzmdIE9GmDQrCeVQQsQnuKMg3TC4xdkiLqEZt5TXdiq
 LuXjYizzP9tAFW9ffwuNrqfWQkFwMY3qQr6f+tRl6zjn9vGdkw3oTXLH//QwqloVn/XG1FkAFI
 7xsuQflfWIZAdvbikBHsOYcWfEgcFWDlWtIrV9JbV0nmf6YSR7Pj57t5HNY6/Fk9+DEP/euaqX
 b93O7w4sRb2MyHEF5mW6KYFN
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2020 17:39:19 -0700
IronPort-SDR: l2TLJudhnDS2Y5q2wYwobtc1hRM38AzpAABAbsa0OCU7KOLYj5xTxJDpPvTDDEGErG74GCwsMg
 PBv9dpfJqtW5GNJ3kDHtHCNVyjQETHW4PvTtLBIbKADwJX0Zjwi5Yn974VcHPVC6gGG7CiTrMX
 UlHjQeDUqRGKDU0tgx+j2i5MySWHRgRjPCuxKbB7Pfb63L7ptBc8KQIqt//Evi+St07WXdVAOu
 2nHFj+ZoT9gzyRi2xhmcL8IRoGgbEtB4TFSHey8sXhqICbtrK/LM0HITZQRvtNcNM9EzZ8PLRq
 Qfk=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 Mar 2020 17:47:48 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v4 3/9] riscv: Add SOC early init support
Date: Mon, 16 Mar 2020 09:47:38 +0900
Message-Id: <20200316004744.209292-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200316004744.209292-1-damien.lemoal@wdc.com>
References: <20200316004744.209292-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_174751_060891_24AACC73 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add a mechanism for early SoC initialization for platforms that need
additional hardware initialization not possible through the regular
device tree and drivers mechanism. With this, a SoC specific
initialization function can be called very early, before DTB parsing
is done by parse_dtb() in Linux RISC-V kernel setup code.

This can be very useful for early hardware initialization for No-MMU
kernels booted directly in M-mode because it is quite likely that no
other booting stage exist prior to the No-MMU kernel.

Example use of a SoC early initialization is as follows:

static void vendor_abc_early_init(const void *fdt)
{
	/*
	 * some early init code here that can use simple matches
	 * against the flat device tree file.
	 */
}
SOC_EARLY_INIT_DECLARE("vendor,abc", abc_early_init);

This early initialization function is executed only if the flat device
tree for the board has a 'compatible = "vendor,abc"' entry;

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/soc.h    | 23 +++++++++++++++++++++++
 arch/riscv/kernel/Makefile      |  1 +
 arch/riscv/kernel/head.S        |  1 +
 arch/riscv/kernel/soc.c         | 28 ++++++++++++++++++++++++++++
 arch/riscv/kernel/vmlinux.lds.S |  6 ++++++
 5 files changed, 59 insertions(+)
 create mode 100644 arch/riscv/include/asm/soc.h
 create mode 100644 arch/riscv/kernel/soc.c

diff --git a/arch/riscv/include/asm/soc.h b/arch/riscv/include/asm/soc.h
new file mode 100644
index 000000000000..7cec1968c8b4
--- /dev/null
+++ b/arch/riscv/include/asm/soc.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+
+#ifndef _ASM_RISCV_SOC_H
+#define _ASM_RISCV_SOC_H
+
+#include <linux/of.h>
+#include <linux/linkage.h>
+#include <linux/types.h>
+
+#define SOC_EARLY_INIT_DECLARE(name, compat, fn)			\
+	static const struct of_device_id __soc_early_init__##name	\
+		__used __section(__soc_early_init_table)		\
+		 = { .compatible = compat, .data = fn  }
+
+void soc_early_init(void);
+
+extern unsigned long __soc_early_init_table_start;
+extern unsigned long __soc_early_init_table_end;
+
+#endif
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 97d0c35f8b37..e4a22999dbc6 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -10,6 +10,7 @@ endif
 extra-y += head.o
 extra-y += vmlinux.lds
 
+obj-y	+= soc.o
 obj-y	+= cpu.o
 obj-y	+= cpufeature.o
 obj-y	+= entry.o
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 85f2073e7fe4..52ed11b4fda6 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -131,6 +131,7 @@ clear_bss_done:
 	call kasan_early_init
 #endif
 	/* Start the kernel */
+	call soc_early_init
 	call parse_dtb
 	tail start_kernel
 
diff --git a/arch/riscv/kernel/soc.c b/arch/riscv/kernel/soc.c
new file mode 100644
index 000000000000..0b3b3dc9ad0f
--- /dev/null
+++ b/arch/riscv/kernel/soc.c
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+#include <linux/init.h>
+#include <linux/libfdt.h>
+#include <asm/pgtable.h>
+#include <asm/soc.h>
+
+/*
+ * This is called extremly early, before parse_dtb(), to allow initializing
+ * SoC hardware before memory or any device driver initialization.
+ */
+void __init soc_early_init(void)
+{
+	void (*early_fn)(const void *fdt);
+	const struct of_device_id *s;
+	const void *fdt = dtb_early_va;
+
+	for (s = (void *)&__soc_early_init_table_start;
+	     (void *)s < (void *)&__soc_early_init_table_end; s++) {
+		if (!fdt_node_check_compatible(fdt, 0, s->compatible)) {
+			early_fn = s->data;
+			early_fn(fdt);
+			return;
+		}
+	}
+}
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 1e0193ded420..32b160942f40 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -24,6 +24,12 @@ SECTIONS
 	HEAD_TEXT_SECTION
 	INIT_TEXT_SECTION(PAGE_SIZE)
 	INIT_DATA_SECTION(16)
+	. = ALIGN(8);
+	__soc_early_init_table : {
+		__soc_early_init_table_start = .;
+		KEEP(*(__soc_early_init_table))
+		__soc_early_init_table_end = .;
+	}
 	/* we have to discard exit text and such at runtime, not link time */
 	.exit.text :
 	{
-- 
2.24.1


