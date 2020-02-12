Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4263315A67F
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 11:35:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vt2q4QpKfioET70Vl5Mns/Bfl19TAMhUEhUEOAdU8Y=; b=YzxlO8rdWx2gAR
	yMheKyZE+zZoPO7hgawN+tHwvBqIWfNgc/oegHXNmH6rMxq3t5jP1nybX2MvthvduEfF4nX9bYch7
	JVGxxpY3HpzIFx+Dnz+XR0v3eT6osKMdcmh9E6kS+rciMtsWffNrvHOaNXsNbqRU3MzbJSpZ//Az/
	BpzKU0HRJnvW0gV1XSXYfWhqwQvMSaW/texLVd0dPeG5slnG9YBqvq98MeQi/abIWXonT9oj3DWMW
	lRtS/U6F/ntS54wM2HK7GAHwOaLNCyQBfWpk/SA+P5nY8kQkNWvyVZ5Hg/RHMc1cdDHbEsTU95NGs
	yEKVbxfqaF7ym+24WU3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pMG-0002b8-46; Wed, 12 Feb 2020 10:35:04 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pLr-0002L5-Kv
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 10:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581503680; x=1613039680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vFBjZekTCxNNIE1YmVc6ZDKFSSXCOLpWGBy0271ZW3U=;
 b=VkGeUrAMVZgP14tf24B/fDwxzTxkiuQ08mgm6ONh4PcqhrcjPtX/a7an
 yIZJUk+TB0Hd/BlM7tPns4OKK7+ogSKekQOUTTj4BSR6QAc7HmFA0GPDi
 yXqHztCKT4gAX4Veqq7c6IvxufgT/V3bBVjNGyoWtmoKTUVtzHP7u8AKW
 OscN8pcZibDXhTItajBjgOMRZYzjemnIWQPpUqmBqxFyK/1m2ohf4XPEI
 R1S9Bo4hL9oIyn5QxDcjYZCPDrdQ7B1Vs1GiG/VB19zPx29sAAad6xhqx
 O1r3ExpDgMiDQeEYIxyp8FSUXlciPIjagi5hfyuwUGR+63GK1eB+e1I1U A==;
IronPort-SDR: IZeSqImcaPbxOr2ojtrMDU4kEhED5vbtog2QQHSwnFyzObZAZHR8HzMkzCY/Na9Ndi1gvgGbEg
 PFImUoOecf8pMCUoDd9faI+yJn0r4KAMjDptuH9013Z0AibimAqnv0eqvLiKitEQpFnkzwCpr5
 KiQF3BPn/eQAPid3kxaV76hCvE+tK2pG/ZHzPanu/+blXSrMa9kspe1iBJyPxQ90umr/bKuj7K
 uTw2sWIsq2BZNc7aEa2FUu8gm2J3rL2SaDgZsNglqXU0b1T0swKz0Ox/z0+Gmr6nxG8QqcwVld
 YHc=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="131113051"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 18:34:39 +0800
IronPort-SDR: sH4PGVZdhYoVN0uNvSk6vXj1wgQ9+gtDyUhsjXnEuVTslOLBjOWbKzLH/arP5mpAVcCiNYv+r3
 zYxGReXIohIMZcCAU7C04JwyXfh/HT+hiZsBSfE/z90uIQJTF/5ySXRGEM8x4VW1PDzt0qcRSC
 fK1zCTRlithpeeyHKZH+e1Y+K57pSoz9TtBR9zvj/yiEKGijP8Cg0GncoZZdU+nOt9a9rpAUUA
 UgtskRlnu+/j5tgxrfZSGYDy8fsG01IRjrT7KUW4piUO0viPidgN/XkCDNIsJ79JiijQg+lkau
 IJVUPIWNqN9hxOBw0Kdbo7oH
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:27:28 -0800
IronPort-SDR: ZQsYvkJHzQ8oZLfNwHOlW7v9weHzY60o+AfUqSo0pI6gZlxiNUvfYuWXKaIezVw3eBY6cm97GJ
 7oYKmPJ1Xbhc5XccVXZs6l6KoW8BWy+34EAwwHVmJKMT+SpwQvgELVsbxqRsDfF/z6VDdNd8m3
 MxtfqatMIehfvuhwQw/aterr6iiTfdxyIXNhAvzBysK7uzFSEKOBXlNxbvEUydxhHsQjqn/HPx
 iF4rRXoywGOdHYTSsmZrOmF9Q9irfQkrXfa9U4UBbMy8a8ciirnSPIvhXykQRXaLNKJXarm7zJ
 gGo=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 Feb 2020 02:34:37 -0800
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 05/10] riscv: Add SOC early init support
Date: Wed, 12 Feb 2020 19:34:27 +0900
Message-Id: <20200212103432.660256-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212103432.660256-1-damien.lemoal@wdc.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023439_760516_5847569F 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
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
index 271860fc2c3f..a7768d6165d4 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -125,6 +125,7 @@ clear_bss_done:
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


