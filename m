Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6FD1860DF
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 01:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRy9gX4F7+XvT3xhmTyWyVqkZrULunQaWVKFPuhmMLk=; b=URmdRSlJ3JqHj3
	8rYdjpIDHPKeLdgHROqJfq8mdpkuEt1C/Ebr+XpBiiCdot1+AnjKaZfDbBxOCd6TZ1yN03E+wuTp8
	sLewTrvbfp+BXK9aOsdm5Q2Y1T0FW7u6l4gqVDqxU11D2j8rruaIK1Hyn+BDvmh3mfhK+V4OWSYcG
	ekCwZnzLhJDm2SLAo+GYqVcQ9MH/rSp7/FYMehp+kH6n2JRQNDbo30fjfnDBJyoy/QvJhV6jJQWkm
	ra0ZmwOsK9s8OIiynFyR1AV7QgDEx3BDA8dXK4VLe5ETnXfHhawDdBBJHi/+gGzxFGA/41ItE12Qv
	q6zcmMr7d4NsH/HAkTKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdvC-00050K-P3; Mon, 16 Mar 2020 00:47:58 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdv4-0004td-As
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 00:47:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584319671; x=1615855671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g3BptAvMawkXrlgFrkdxrlK/typLe6cL/5thNaNwAuM=;
 b=YgL9B16+ZMZjcw5bnc54mZzquKAEwlq4D45ybnoTcyNJ4KH9h+f4vYWA
 X4K6+GaVe8Yc8wUpz3D/BUOXJQ9Eq0cYbTt9xvf+xmqbqPZW5UPjxlbio
 rIcisr6eAeMseYcJo5lfKYBC3c/Fv3iSGdeDNZTSGVVriGuvv09MVHcRa
 z0Hw9j4nl815v/x5eGbm9Vxjl/c3V5pBi/V7VDN2yVPryzstvAgxTU0s/
 IfKfCBcImdY63D4uPVF09ejSL0vpsnp/oWZHj29dnilaEhGjjXXRG20Fu
 CRZsa7rsc3zordQ/PiBltCB/qKGjlkEH7/b7zwSJMK3YrSkrRlRpy8Ucs w==;
IronPort-SDR: f0F/XXdeFAbxZUHAXx9dyyeM0YNbsV3htC2MngvmjeFlnpMh3MOV3v1YR3sBg045ARRNJvfXqx
 WIke4UltYzaH5iY0Jdu+KwWNREb5vKYS4Q0bUpIZXBG4qmGOy/ea1uKdf9mZfcYlPn8efXxZYR
 0rZBtvTFgcgl77By4TvOzy2VNQ/XjWhi9jsrQAK13xv2tU7BCAwSGfAGWzShax3WsZqUjqjIUS
 fDV/ayRknrpUo2L/Hq8zWdXRx/vJU2vLTpgwsuEjo2V1WUCS4hpop2Ukdnz1xWp7ZkMBnZCZ4K
 B5Y=
X-IronPort-AV: E=Sophos;i="5.70,558,1574092800"; d="scan'208";a="133011922"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 Mar 2020 08:47:49 +0800
IronPort-SDR: rzzyr7pxx7TfPGuWGW01+KfaYKXU7vKjPV9m3ajHMfdFIUfufy1jaqatRvBIepC5+rNEOzvxgt
 +q+11mplprT4IodVPVq7TA6kEVhWQHSUMUFN8iWOB7mBYFaIBnLp7oKc3h+Si+Y80z6fwZEfhR
 KDvU88XMYXX04vZhbWOHbSH9bwy8+T8p0uWR6I8cv8vS4jfMP087vFBYC3of7ZK/FHDkStDuxk
 TCS2eKGDo6/AcQPjyJO1wHXWY+3M6Dn68SOeAyJuS+XgIPb6V3ikNJBnUpH5tbmLheYu2pwoT8
 I063w3KsoKyFJAt8TB/f7h6N
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2020 17:39:18 -0700
IronPort-SDR: QcL7zErSlaugp2LflQntCQkCD5BEmRU/cqZE6wG4V05s0OVl8EzQj7ddwGbJaQKV4PmjbOzpsN
 98BD4FSycyeVWNCGECqQJY0dTXRgOZvMJHlMv/OZuubuqVWjNA5ICLMTj9HsOR8pxHvnG0JtzI
 AE42qNPqcrL2hahhabAwA1XGh+ggpKqOwHSKwzgdRi3/v2EgyLTqj3sQxcwsofl9ikGbY2DfsB
 WxlVO5LQM3g6akhwwYlL7ehyRT+bbOAq2gj1+3pWxFcK14g4nlr1LuDvshKYPwicTwlK8B59Xd
 xrI=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 Mar 2020 17:47:47 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v4 2/9] riscv: Add BUILTIN_DTB support
Date: Mon, 16 Mar 2020 09:47:37 +0900
Message-Id: <20200316004744.209292-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200316004744.209292-1-damien.lemoal@wdc.com>
References: <20200316004744.209292-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_174750_384977_16C394ED 
X-CRM114-Status: GOOD (  10.20  )
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


