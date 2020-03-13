Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7653184386
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 10:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRy9gX4F7+XvT3xhmTyWyVqkZrULunQaWVKFPuhmMLk=; b=rkMYmL5gZRHdKt
	BhW9gLhi+pWmct6ksusv9OO7SO2imgSjMhfiVvMTVZ2eKbKlTfhO4i/Vxd9gNGxWQaKO4FHEpAgUV
	dNziKMinf244UfIMNiF5JWH8mnx9VtDfoITybmUdKxYE3eNkEkOX3dd+2OX76n+tcBHzKpmSOW/bR
	okmitVMM7WII9L0H8qK4Fu0OAFxevEF8ycVv29I21CMdY/BpM/GVPFzFnyeTwxe3q1a4wfkLsvHzg
	WNfP5iREUTbHNvvuekqL2QfMe/6IZ73HRmNm/xoMuuDZS/wiQiQVoj/ukkOUcpSwhfjmSA8SxThAZ
	QGdhJ/19wg/kTlVhxcuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgR1-0006NQ-V8; Fri, 13 Mar 2020 09:16:51 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgQu-0006JH-Og
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 09:16:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584091004; x=1615627004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g3BptAvMawkXrlgFrkdxrlK/typLe6cL/5thNaNwAuM=;
 b=KbeR6zFmjYUYldDxfOrqfk+vgOgmznDo3ECFKTryeyhTKwcKy65kQ2Pt
 /ECny9HFvJZS903egR/qt9CtLE9MmN/2/BiFvgbRTT3W9jDVrtgP2HpSG
 VuDqC23dBT1JyGsXL2Zf+mVQgQqp441rMtWM998/ApsXNtCAVqKipfbni
 1sDMpBLCpaIRh+10H1NlU0tomjpNJZLElloE9WOdCKgeCgtSsij9XHPk8
 eYbwmHMOuiIqlxhQmWQYw+TVYea7aMW+SHAktBUXL6kylyfNuXpN0qXbP
 kMHjukBuMVDfGkvx+iVqW7UoPjVaUw7pxAH7DSYiFl6sl4s9k8pP6Ltri Q==;
IronPort-SDR: MJfeDsT6lzlhDIQTB+U3g/o5kNfFKIi17oxGauMrObVSNK6mQszrp8P7RxO6oyDDA6Rnl3UgMX
 oawl9TMonyynH26HiD+L/2os2XLmOQyDGBcahDhIhrepH1nBnzTtfwOGi9ZkJB6cIYv04Zm82h
 s+d6HfHicgCilcRWCAdR+tHEI5dujHxJIrGy+2nJDxyv50mK+ZmUsX/sOE4dCLXxi5eirnZReX
 SFtrCG3R29DFDnHL4PlcqHYyFstASP2vpiMiLhZX5KprFon9VLxIjhOziApD5okquJUWU5cbOz
 elA=
X-IronPort-AV: E=Sophos;i="5.70,548,1574092800"; d="scan'208";a="240669774"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 17:16:42 +0800
IronPort-SDR: IBLmXiJP3Aewv7/BIkooY95wQeIkGlWqEOsyahV38vmJOn4zjm5N33Mr3lHuzlf12/neXC1XMT
 RDGdhUcgGezFxwhilVWtTh1u09/vEdvhy9zaNLfZptYdickgLpWqdMLqFzgC+EhcsWHHOMPS1C
 1Ovrj8gDcTyD3/eCN1zyLBlqvaddYBq1ODM9Q9Zm+S4GT27x0Gc/HBQP9FYt5MgBri1iaqpzUi
 Ma7mg25YQ/9iQCTRp8dubg5taPkpOqlX2oEjMOx02yfWtNqh0j/fz1/CGhKUvSU0qZ+QwztmrK
 Dbo3lbV1ywKJd2Lp7zSa82fF
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:08:41 -0700
IronPort-SDR: 5zZeTNh/R+JbxS1t5Kj9tW0ezpZa1AJ29trRkU6jju1Estb6VzGfotUVlRLnCYlxELDrYF/ww/
 KKtwxnJq5Ch7rebeLu760cR/z6yWxiz/tVcDF8Odh/KMfDzrnKE5PDP0EXxrZyfDSCs4sA719P
 RRqFdK30hy65wfpDgHmQQlPyq9OoxpyHpvWPZkR/CJj7TX3A6sACLPA661ZpNKKUxYIvBoz7CL
 /NAmK7nCl8r7j03gsLzOeo5FEDbIPWKmBvCdMBM1enwJv07bWH/JDMnd7WIqxOMfOaHLYGuqU5
 iGc=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Mar 2020 02:16:41 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v3 2/9] riscv: Add BUILTIN_DTB support
Date: Fri, 13 Mar 2020 18:16:32 +0900
Message-Id: <20200313091639.87862-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313091639.87862-1-damien.lemoal@wdc.com>
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021644_809339_571F7F51 
X-CRM114-Status: GOOD (  10.55  )
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

For the NOMMU case, enable a kernel builtin dtb to allow direct kernel
loading without a bootloader. This option also allows booting on boards
not capable of providing a device tree to the bootloader.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kbuild            |  1 +
 arch/riscv/Kconfig           | 19 +++++++++++++++++++
 arch/riscv/boot/dts/Makefile |  4 ++++
 arch/riscv/kernel/setup.c    |  6 ++++++
 arch/riscv/mm/init.c         |  4 ++++
 5 files changed, 34 insertions(+)

diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild
index d1d0aa70fdf1..988804e430e4 100644
--- a/arch/riscv/Kbuild
+++ b/arch/riscv/Kbuild
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += kernel/ mm/ net/
+obj-$(CONFIG_USE_BUILTIN_DTB)	+= boot/dts/
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 1a3b5a5276be..025f5ba1dd68 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -355,6 +355,25 @@ config CMDLINE_FORCE
 
 endchoice
 
+config USE_BUILTIN_DTB
+	bool "Use builtin DTB"
+	depends on !MMU
+	help
+	  Link a device tree blob for particular hardware into the kernel,
+	  suppressing use of the DTB pointer provided by the bootloader.
+	  This option should only be used with hardware or bootloaders that
+	  are not capable of providing a DTB to the kernel, or for
+	  experimental hardware without stable device tree bindings.
+
+config BUILTIN_DTB_SOURCE
+	string "Source file for builtin DTB"
+	default ""
+	depends on USE_BUILTIN_DTB
+	help
+	  Base name (without suffix, relative to arch/riscv/boot/dts) for
+	  the a DTS file that will be used to produce the DTB linked into
+	  the kernel.
+
 endmenu
 
 menu "Power management options"
diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
index dcc3ada78455..0bf2669aa12d 100644
--- a/arch/riscv/boot/dts/Makefile
+++ b/arch/riscv/boot/dts/Makefile
@@ -1,2 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
+ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")
+obj-$(CONFIG_USE_BUILTIN_DTB) += $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_SOURCE)).dtb.o
+else
 subdir-y += sifive
+endif
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 0a6d415b0a5a..3e89be9d888c 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -68,7 +68,13 @@ void __init setup_arch(char **cmdline_p)
 
 	setup_bootmem();
 	paging_init();
+
+#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
+	unflatten_and_copy_device_tree();
+#else
 	unflatten_device_tree();
+#endif
+
 	clint_init_boot_cpu();
 
 #ifdef CONFIG_SWIOTLB
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index fab855963c73..51f1ee0a24a6 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -480,7 +480,11 @@ static void __init setup_vm_final(void)
 #else
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 {
+#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
+	dtb_early_va = __dtb_start;
+#else
 	dtb_early_va = (void *)dtb_pa;
+#endif
 }
 
 static inline void setup_vm_final(void)
-- 
2.24.1


