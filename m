Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BDA182816
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 06:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iceHli9lTmyufgerNakmLWF18lqHO7BNo7bmiC324iI=; b=PIOHXOnT0aodxU
	KGyqRoIVSSxsreFC2OlqvWJAMjgwxfYXc+Yzkf/m/abI5wC4GoviukuUU35fF//qUM+WuMyGhsFOK
	AbUiQLoKqeSFWlN8Ek9+MwobWnlbOEYdn5RV4l57whn5JW7HnvHg50pxHuvocV0aD8K3n8dRrDmeu
	DFUbjOj0e8o43TPpTNK/7LioEOFsdhY8Z9ejds7Ysi49rYbU6xJKRQuDGmMOvVoR1ZzxhO2NUGRBY
	z9l8+NfYkx++kXoKAWwenGZ7sNBXytCPxTq7c0yhk9gMb7inBAUCD/0L8k8h6uBDi+ce13/xq6E7u
	uRLCYu2LwU4Xc+pW69mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCG7s-0000Ac-45; Thu, 12 Mar 2020 05:11:20 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCG7l-0008W8-AL
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 05:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583989873; x=1615525873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IIMuCn5SxomiyKPyT/piHr+unhkaBXfBNDfVncVy5js=;
 b=jaS2rzTolVREGnIpwsFmRafA6xj44GQA9uu9wbxBdXC1clzoSal7UD7p
 N5qJLWaVsbztDXbkn61QFqF8oh1KrVnU4RDaS82StmdzVnESf5YKCbaYK
 y0OdAw/O01YjCD9mnfeq08KZ5RSWEmAfBk6DG8e81NJeEFBaJulYSHDQB
 BDUmmiYiaSYJ1vFw3fW+PXbVBy+sOlrClqeilQSQHvQBxCeulQmdEn3q2
 Tk9QGfKSfwmpCIVDYshXMPQKysxrDnBUxfCVbJzo+tgCSMf6+f6lYwiwk
 KdsmrqosR14H6O2G5gDZgqE6hVBHecaEQhBgTig+ZYwKItIHtCaNzAt+q w==;
IronPort-SDR: fEBllnbxG/cnD1xZ6iTzK00+Cic8Vnf180TG3qdo5emtzHUcor1kkRLY6MKpYcbPyKoUlSh4ow
 85nYS5xDQ1LXw8iujtPiaCM33Tap4lZXMF7nY2QcIVb3UIzBf8S8Hm5jHMt5Xu7gLi62Z+nXLx
 sttuEbgIVdwG8u0KkSOGs+vmI4M6vId6LEbbRIkCE/n7IVl7CQXWZ0kL9rNRerVMXylaEeQWAK
 siXqbKDSB/TAY3MtxPHVzmcmz6PVeokndKwVWTQRbllSOmFcL9/Ksu5JMc2kMG7nfFE5D1yA+G
 3Kg=
X-IronPort-AV: E=Sophos;i="5.70,543,1574092800"; d="scan'208";a="133718971"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Mar 2020 13:11:11 +0800
IronPort-SDR: 0gCMkLxtmUhlIlqM7xOkvZwdYpV0knyXRgpdXroz0Imqe73EgH18lD8cW+PFi2bRzGaCGW5iJU
 GDNlEVBUJ2TrjDzOgsIpBIMbdTK6HKRkhzaXcP+26J/Hjl+1S/FovVRXXWkfxAap1GmTLMfvHu
 UaASZ65MZEK6znZf7++SQuo9Ae8Fe31/HNBLqbqTm6xtkSBGsUMlKxapuUNFctKDmIPiMrhFlJ
 KHolTKj1IpzzYi3tACxwM8Lj9OlT18ot/JRNJfKCS+Pk8I06/Nkv4SmapaBVz5Gg6kQa/rgvUm
 5ER6trZyUv0AW1khHUxA5aor
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 22:03:11 -0700
IronPort-SDR: t6Br1vebHo6/Qe6ZfYoiwPKHXlDnjQCMRrYcouX9E1zL58hW73HaXnzG2RyDRpJDYJMPyN3b//
 4QKPgTcvKgEzhBd6xJAQ7nWdWmmrd/K2USjdAxsTKlFQu7jbnWRCmS99XBXWtneZr2sxl6rlo4
 Q8jI14ZlYkFg0vZbYveOUGeitX/tyhzLq/anF32GskQOtv6LYEb052d70zQzDvc9C5RFpON3hL
 rjNAGE+85F1DlHF1v95Fe5VDjuY6wWzTHrKS4rMzb9Gx9XXh2lPODAq4xxyj/4DzRLgCwnkTTs
 GmY=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Mar 2020 22:11:10 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v2 2/9] riscv: Add BUILTIN_DTB support
Date: Thu, 12 Mar 2020 14:11:00 +0900
Message-Id: <20200312051107.1454880-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312051107.1454880-1-damien.lemoal@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_221113_391476_3F796C32 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

For the NOMMU case, enable a kernel builtin dtb to allow direct kernel
loading without a bootloader. This option also allows booting on boards
not capable of providing a device tree to the bootloader.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
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


