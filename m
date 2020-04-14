Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F101A72B6
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Apr 2020 06:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDWZn+DpYQgWwrjAr0UugWPWNt6EI0s2QcDRiCa9pm8=; b=HPOZIDYq4uuWZO
	Ikl6+SDo71RfZASweZ6cn+LT6ISgCkMGaThAQGZ3Qg2OAM9dEF34C3Sv2yXpalET2WTWQEGBNzMC6
	4Ky9qLeqfDll/TLXwPgWTKSM02gf7bTVWyZXz+i6YxORk2zLo4z59QqaoGW8JPG3KUklPmZ/BzCi4
	0hhI5ldOYBvV3CCoVlatEZU38oxH7juH2bnc9feSwPdfNCSWPk51RnB+ghTEquR7oGcLBB63kTWyT
	s5fhwK3iXd7FzlXfTRSKMi42/zkBl0424VJfZvN5Kr2OiSyjft6tVCqbWN4fbCKR+z3nkboZxqrB3
	J9jcntHV+I5SSFUKDFsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jODQB-00079D-P5; Tue, 14 Apr 2020 04:43:39 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jODQ5-00071l-CM
 for linux-riscv@lists.infradead.org; Tue, 14 Apr 2020 04:43:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586839414; x=1618375414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Njx1pS3jquAeWUtvIn121j0sJ97hwflk1//V1bPhxzY=;
 b=Ta5DVYtekEZD5vUBCXmk2FwPpOnqvYmezLMg/pwS+Mc45/YvSv6GkBPl
 PjSRsFDBr+Km4x9JEQAyowe3H/oLxW8kG7maqihmGcJLI+n9KqQ8gRROz
 WuTwRwplh4oPwAMCn7E7Po0G+nem+KBSZHa+oT3UgVJZQBnf20vp2xO2d
 XrlfPi2iVJ3gJNq2FJYWPpd5tol1gAX12trUtGU7xwvIZ5PkLXYvOCyrW
 2jIAPqCj7lNyzOcYaXtst++7NdY4hOzhCDMtNrxOpJ0pZbyIC6yNtyGzf
 AznKDOKpNZ985l8lDftX24yW+pM/nP+dITW7/hDwNX4f5dLzoybdZJ/08 A==;
IronPort-SDR: ZKeeut/Khj1IHk1wPWN+meBsJTXJY7m66+Ff3pdtYNbGoywKtkYeSkztTfJQsrINohIDYb3U+y
 QYshA6UtdFgELDgdjXfiG1z671txPVQ3GrYgJAti5UN25y72dv9SUx0apFi2FNf3poAeubH+eu
 47mBsJZawNJqQShGQ+0fshRp1TaOdSfGDgZsakSsmb5449M/dmr3mOrXfeufvotJvGeZyaDQZV
 n35yiWf/58D32/1oxH5ADhvXS9NWyd0eC41kBWr2LmpdSAGmgrXWwE+hNQgChKnBaOpeSeyeSN
 j+0=
X-IronPort-AV: E=Sophos;i="5.72,381,1580745600"; d="scan'208";a="139605674"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2020 12:43:30 +0800
IronPort-SDR: TOjnJgykLqumGJF+rQkNSAJdpnCgbJcFu3hD+/kwcNa4x/llkuf9ou748sajKjoaCm0RpXgkp3
 SmG081de48UsciQZmO3DQt4zdnhVE3Caowf6bqOgD0uOoBFR5QZ14paqp6aPThYogMFp7ADfGm
 j8doIplP6gBRPtCw3mKFwKVltd7vpjVJGXb1zVjAEsI6bS/UzEdIFnLqfNRc+ZtJ0B9ss8Bhlz
 QlXCNtfUdzR5R7jQ4lOPmHZIqaDLg7RuemydVoisvIKDOSE0stN4ZVsYnJUUmpBDdrgDbSd+OE
 9UpLIWIJpUKa56AFBfcmte2c
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 21:34:01 -0700
IronPort-SDR: DvJNdRQYdJz5ElyB22G/9KgBFXGAFBc0aA7ocQhvzUyFsaC+jOe/wWi0gY/DQhnHTsifU50i//
 GDwf4HxDnOZxn1YphKwRLjDAA1m3N+G6bU8gfEQ+gz2B0O7MuD2NH1XrrQOffHVBbE0lUTu/FB
 khWTfcdyscjqYSwpfM6YuuW1YVT3BPQdhgmLtRYe2UikoLsrM2K5/ud3cJp5kAwuft1pMuZ2mQ
 8dq5vE5Eph6YxOv7cgcnVg7omiGuM8T6zCtjnuZQJszytXHTQyrHJ0Uo/Bw9naw6PcWcTGUUww
 EX4=
WDCIronportException: Internal
Received: from 2768r8lbtd9.hitachigst.global (HELO localhost.hgst.com)
 ([10.84.70.38])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Apr 2020 21:43:29 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 2/3] riscv: K210: Add a built-in device tree
Date: Tue, 14 Apr 2020 13:43:25 +0900
Message-Id: <20200414044326.103884-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200414044326.103884-1-damien.lemoal@wdc.com>
References: <20200414044326.103884-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_214333_429457_C83C8C8B 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

From: Palmer Dabbelt <palmerdabbelt@google.com>

The K210's bootloader does not provide a device tree. Give the ability
to providea builtin one with the SOC_KENDRYTE_K210_BUILTIN_DTB option.
If selected, this option result in the definition of a builtin DTB
entry in the k210 sysctl driver.

If defined, the builtin DTB entry points to the default k210.dts device
tree file and is keyed with the vendor ID 0x4B5, the arch ID
0xE59889E6A5A04149 ("Canaan AI" in UTF-8 coded Chinese) and the impl ID
0x4D41495832303030 ("MAIX200"). These values are reported by the SiPEED
MAIXDUINO board, the SiPEED MAIX Go board and the SiPEED Dan Dock board.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/Kconfig.socs               | 17 ++++++++++++++++-
 arch/riscv/boot/dts/Makefile          |  2 ++
 arch/riscv/boot/dts/kendryte/Makefile |  4 +++-
 drivers/soc/kendryte/k210-sysctl.c    | 12 ++++++++++++
 4 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 216286db81c9..4b2303ca20b9 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -23,11 +23,26 @@ config SOC_VIRT
 config SOC_KENDRYTE
 	bool "Kendryte K210 SoC"
 	depends on !MMU
-	select BUILTIN_DTB
 	select SERIAL_SIFIVE if TTY
 	select SERIAL_SIFIVE_CONSOLE if TTY
 	select SIFIVE_PLIC
 	help
 	  This enables support for Kendryte K210 SoC platform hardware.
 
+config SOC_KENDRYTE_K210_DTB
+	def_bool y
+	depends on SOC_KENDRYTE_K210_DTB_BUILTIN
+
+config SOC_KENDRYTE_K210_DTB_BUILTIN
+	bool "Builtin device tree for the Kendryte K210"
+	depends on SOC_KENDRYTE
+	default y
+	select OF
+	select BUILTIN_DTB
+	select SOC_KENDRYTE_K210_DTB
+	help
+	  Builds a device tree for the Kendryte K210 into the Linux image.
+	  This option should be selected if no bootloader is being used.
+	  If unsure, say Y.
+
 endmenu
diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
index 557f0b519c8e..ca1f8cbd78c0 100644
--- a/arch/riscv/boot/dts/Makefile
+++ b/arch/riscv/boot/dts/Makefile
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 subdir-y += sifive
 subdir-y += kendryte
+
+obj-$(CONFIG_BUILTIN_DTB) := $(addsuffix /, $(subdir-y))
diff --git a/arch/riscv/boot/dts/kendryte/Makefile b/arch/riscv/boot/dts/kendryte/Makefile
index 815444e69e89..1a88e616f18e 100644
--- a/arch/riscv/boot/dts/kendryte/Makefile
+++ b/arch/riscv/boot/dts/kendryte/Makefile
@@ -1,2 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-dtb-$(CONFIG_SOC_KENDRYTE) += k210.dtb
+dtb-$(CONFIG_SOC_KENDRYTE_K210_DTB) += k210.dtb
+
+obj-$(CONFIG_SOC_KENDRYTE_K210_DTB_BUILTIN) += $(addsuffix .o, $(dtb-y))
diff --git a/drivers/soc/kendryte/k210-sysctl.c b/drivers/soc/kendryte/k210-sysctl.c
index 4608fbca20e1..707019223dd8 100644
--- a/drivers/soc/kendryte/k210-sysctl.c
+++ b/drivers/soc/kendryte/k210-sysctl.c
@@ -246,3 +246,15 @@ static void __init k210_soc_early_init(const void *fdt)
 	iounmap(regs);
 }
 SOC_EARLY_INIT_DECLARE(generic_k210, "kendryte,k210", k210_soc_early_init);
+
+#ifdef CONFIG_SOC_KENDRYTE_K210_DTB_BUILTIN
+/*
+ * Generic entry for the default k210.dtb embedded DTB for boards with:
+ *   - Vendor ID: 0x4B5
+ *   - Arch ID: 0xE59889E6A5A04149 (= "Canaan AI" in UTF-8 encoded Chinese)
+ *   - Impl ID:	0x4D41495832303030 (= "MAIX2000")
+ * These values are reported by the SiPEED MAXDUINO, SiPEED MAIX GO and
+ * SiPEED Dan dock boards.
+ */
+SOC_BUILTIN_DTB_DECLARE(k210, 0x4B5, 0xE59889E6A5A04149, 0x4D41495832303030);
+#endif
-- 
2.25.2


