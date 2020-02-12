Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDD415A681
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 11:35:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1IrGwXnk567rCJBdop4MANTG7oPLLhsp9cHhZA1n38=; b=M+RWlv3bCnMHrf
	SbpKtdYVqnIM99f5mVxPw3MVO2iFtB87XAM9hrYRr0cvomPf/9yZ2S4iW9hCEcZse6npeEB82kc9R
	bG8sLrNcBQX0dXjBAPja70mVUUmPXWZuiE9zrFvwPVqrocEzw0zcp4SI3Df8V+cwOh9JKukjH5trq
	tHabN26JQOcqyqpAnaVTogfymFQYLzvpgi58LEGyvNtSf8K0aX4++vDfky9/OOWrt4YBIqQtoR9t9
	9dK+bi8F6qZU423zzQuVmAvr4RbAkf1FQwRdmgtR+N9TqAUAZSqPCYXI/OLC/yQU0XqUXTpWmYAhL
	9DDQU2nUdQWJGTL0cBBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pMS-0003ke-2I; Wed, 12 Feb 2020 10:35:16 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pLr-0002KQ-0Y
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 10:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581503680; x=1613039680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/PTKJ+YcgE/HN6s7hvfi243jvvcU9khWyfuZtNRbj60=;
 b=hvW7lrDAFlCLa0rpVsq6JJ5w92d8cvfSHIv/e1++D3Hg1OoxEz0NCddc
 UTM2BdcpLclL3BW5cb7llQmLa5sZTsFHnpR0JYTLM55n8EnaYrleF6FhU
 mbqTTduAsuq8gLHbYJb85ABlaOVjRJbvrFGrvqXnIcjiYQoaCrcbgvKdK
 jkSTKjstDwR4GlXnvadZlsRxdIlRF8vcn4d8/9jxqEOJrD4IxIMC9DGSV
 bm5RJ1w+9L3FHe5dpau6mZQZuaJZhD1NdqfI2IPNO1I4+JoSH+divseSH
 pbWlHvCv87xHqFTiZ61T8M5+ogtEkv2YUoR8wInQQeYGsmRbP61gmnNDQ A==;
IronPort-SDR: WwKV9PMVwHpasY4r5aMqbD3VRZKoHEBJ4HnP6njbl9SoFftFEDGTXh1TIe4fSt5OL+SBnFh6K1
 jNxb9wCscziqLqOLGbHZMfcsJpTqkDsQ3QOhAmbPdFHNGxY4ohTUbjYLAeXaZVgREImtwmyMJY
 fqhNX+EvPUnq8D+S14XsiGwFY5Fme6doeVuwM1lSlq14D47CkG8qQTOelhzcKYZWSj9efQEmoD
 LbtHSvgt9gsemDBfry3Y6YwOUqixVAlEdF7YtlrDSgEpH2g1gxb7gZ98GugU4L1NXXL/uBTlGl
 VfI=
X-IronPort-AV: E=Sophos;i="5.70,428,1574092800"; d="scan'208";a="131113049"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Feb 2020 18:34:38 +0800
IronPort-SDR: VH1aol0peSvNH8X3/wIlgZQIg/6q26u82F26+4K52H0KvCZgbjCE6Vu4Moc3FIM4yqhr5s6rWC
 Kcgsp4jELNKxJZlfBA/YtEfd3fI17i0hREwsIQos4ZAarBfoISW2+hdL/GNzvatcA4aa4hBKRC
 ZFzCHeZyr0YC+t05he0ELWI0kNzQThraqpwjdKYW7RdRmj/HlVP9/Rlj3vku/BwH6DmRXd5f/c
 oEuVqv7iGts46OmUijxRuiTR0nd30vorzb/UQ11+9DaS5M7c1XVQe7QJsIFQeUX1RA9URCMd5b
 0H05UWpZV+vIir5r0M9kFUcN
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:27:27 -0800
IronPort-SDR: knzS+tK0FmCuFp5oMjW19avMydx25WqBktO6k1ESjDNJBn5x7rb4+9M/hRmQx/nlwR//F8sFyb
 IDJZtzSatXljsUGO42Aur0xazZAvODiB7sjtESYqUVgC1OLBPQ053Y/OrilqDQS05Vf4XHdvXM
 HRfHcrKCp6kYWf1Ip38HGJ4NK1sHu67oLQculVcEbIvBwdEpZBBGkt3inarerEQrq9HPu9XdWM
 cZ8GsInuSS4bocCouss+P8Gp6QIxvR3t9+AeSZyD6kT+kI8NZ9dn5a/vIin9c6WTs3mhRzxD85
 +aU=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 Feb 2020 02:34:36 -0800
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Date: Wed, 12 Feb 2020 19:34:26 +0900
Message-Id: <20200212103432.660256-5-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212103432.660256-1-damien.lemoal@wdc.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023439_100320_8949B3B0 
X-CRM114-Status: GOOD (  11.50  )
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

Enable a kernel builtin dtb for boards not capable of providing a
device tree to the kernel.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/Kbuild            |  1 +
 arch/riscv/Kconfig           | 18 ++++++++++++++++++
 arch/riscv/boot/dts/Makefile |  4 ++++
 arch/riscv/kernel/setup.c    |  6 ++++++
 arch/riscv/mm/init.c         |  4 ++++
 5 files changed, 33 insertions(+)

diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild
index d1d0aa70fdf1..988804e430e4 100644
--- a/arch/riscv/Kbuild
+++ b/arch/riscv/Kbuild
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += kernel/ mm/ net/
+obj-$(CONFIG_USE_BUILTIN_DTB)	+= boot/dts/
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 1a3b5a5276be..28899e15f548 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -355,6 +355,24 @@ config CMDLINE_FORCE
 
 endchoice
 
+config USE_BUILTIN_DTB
+	bool "Use builtin DTB"
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
index 965a8cf4829c..1274e889d008 100644
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


