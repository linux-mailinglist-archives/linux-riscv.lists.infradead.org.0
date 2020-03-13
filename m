Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF96184388
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 10:17:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAoXpaIwBdolv+ectXmP3OxR5Lj8/GvNetdhx+uCMYs=; b=buDNR6VmKnQpdx
	OWxPYyK8NdPbKusr5t7WFK3O1zjiF51DPDToPhUsl3Hc8/TVAqhX7ooXfnucOSvG0SmXNGWtyZRx9
	FW1wkTuio7f8aN2hRUnUURmV1jGMsSc8MfwMKZsF2x03UNPxRht5oouZfiQ4yaUdUguceKwUMpIZo
	7nvK/nufAYdIJ+lr60C+Kr2AS2ATCYmj3Tt+LB+q/fJydXoWAQusYG+A/A3aSjp0dSZZC7a1BpWnt
	XK4hkzZu/bpgRlnU+khfkl9G1oXnYbRrY/T8lRpg2tBB/IVx0fmRxrTUdeDaDv6DJh2q6+XGq6AkT
	tOdLCjr8FkagfRszHzhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgR6-0006QD-7G; Fri, 13 Mar 2020 09:16:56 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgQu-0006IT-Vo
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 09:16:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584091004; x=1615627004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jAefqkoaquO57lJsa577UesLDIa+4Gs9zh9QSrMT0Nc=;
 b=hG7/eCgu2SubwQRJgAEgNvQVoxl0QkFx2rRihdDZojPzVqFSjCDxEYjp
 DTOi9do/zWX7b+fUYnJpsU4MeHxX4Kbam3zGeeSzDRfT2enelbAvagkhc
 8+HLbKoRhStnqwiAgqkRduwuCTbgjUUR2EA1CjwT3bqG5QROHxXmicOv6
 F6YTnDC8TZ4pSJbf2LSlGXB25sRhNorwZXYE9d76TQEqXkBIve0pV/5Qq
 jnOQP4uMgztg0UPCSHn598NaYGbhL3fVKNgS4DG/TbG5IsGsMdZmUPhQb
 lbGuSUgwSo4yP7QRDHt3NuIZb2qAjtUa+0S0XkfHCzkc3eW5BdhiLZP1H Q==;
IronPort-SDR: uJxTQgRNT06InyQpg3OB0xNBjvjDXK//k9i9mM125PVcPvMlO8cCsc9xNhx13yNUfRPvdHYPXY
 aa1JLZuOJM6by9tBTczPaYwsJPzr9rWGRfam8qOerFwr3HxuGU79FBw2auKN6g5+vIjTOLPW5b
 ic0NW2DYAm3EJDZextRiVArUHyuGWwBQpyghSH7E6XfhkSyb7NunLMt4NooZFG42UarTd/yOkr
 yhcSbaLYh+KdJ3WQOxy1ed89pJpIVL5Z1sa3QOX5CNheEUnccKeit3++KEnmezWW5IN1WQhTZe
 zHc=
X-IronPort-AV: E=Sophos;i="5.70,548,1574092800"; d="scan'208";a="240669775"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 17:16:43 +0800
IronPort-SDR: 29DIq7rIjp7x6FHzPnKQSRSdlHEsJwpaGNWVsc0PrEHJ8u4I9texyHGyjgjPMHkrtkGvnSoVx2
 nMwYajxLHTScXz7WwyZFXctPEfl9DjGbIiHUMtY11n5oGaYubbT1W6IJWtsAHKKyqyG+MhO4Sg
 ygeOmjwK4dYyUgoXlAt2AyXIQ/XhO+Hhdn+Mz1yLKrZQ7OruM8slgeTM3l7aiT59e8fG+Lwpmf
 nHD2YnCkAvAoQ5e17CFi/XRTIiYNdjZq+nbWp4gxEyANt3dVfav3YhEHeHgOCD3E+lzAhtTHJF
 6UUtgmYiQap7sga2a0RuaveN
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:08:42 -0700
IronPort-SDR: JZmr4HJrIcbAfifJ2Gsftk9QwgnSb+/7RIPrUoLFzd3ZQC2rvZzlTVoRjzStxMyI9gjGQcN6zJ
 D174jSBWKfsPrjlbtmBYSOlytmjKmpUUUwFB0yaA3eQqQ+5xypsJe6G+4I7cxy1rgzisP8MQ27
 72EJOz6voaa/ngxFW1rDiZI9ZqE0wu03hbUm78FudvX6JXMRg93lbgphiD14oGU9237SJX31ia
 hyTKCU/VollAc8z6l0BaSwM1DiYBXWx4YfGAAgU34WcnLrDhNgapXo+bG9aN5lNm9gz9/GY9rH
 c30=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Mar 2020 02:16:42 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v3 3/9] riscv: Add SOC early init support
Date: Fri, 13 Mar 2020 18:16:33 +0900
Message-Id: <20200313091639.87862-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313091639.87862-1-damien.lemoal@wdc.com>
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021645_046113_A444EA60 
X-CRM114-Status: GOOD (  16.26  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
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
index 000000000000..9b8c332cbe76
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
+#define SOC_EARLY_INIT_DECLARE(compat, fn)				\
+	static const struct of_device_id __soc_early_init		\
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


