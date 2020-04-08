Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3401A279C
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 18:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D3LzZE0UMVNVcDL+HQwh/ZpkNjkV7N5k0QgoDrqIP8w=; b=Fxkbo0/udqU7nAmnaEHKm1LVK
	dVuKYOakTbSvJrZDAu1OLQFHshzeGVlTqhgpiG1EoSHSgoxw29tuhsLXp2LRqkHQA7naF8UOgqjER
	A7XDckKenEWQYJ3Taz+ngPZM0oZ1RRhXty/OAc/04XSRoxejMUrgcvmP2SevdXWChLgjtWkBz/QO5
	phrxdKPO98pSp8JiEMvJFsn1aojGNVvJRDr2cdfr34VssM+wa2nIn3rG9JM/xhOy3PpE/cEvcv+YA
	4EELao80DNwPP+JKcSYVsjBmSb95UlCQWFq2BiJaYk5+G/b2vhx8LtIA9wVxWcIGDi98A+kAXylxW
	SAUHAVkeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jME2S-0003rO-Jx; Wed, 08 Apr 2020 16:58:56 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jME2N-0003nM-U9
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 16:58:53 +0000
Received: by mail-pf1-x442.google.com with SMTP id v23so3325401pfm.1
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 09:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=D3LzZE0UMVNVcDL+HQwh/ZpkNjkV7N5k0QgoDrqIP8w=;
 b=FnkZUB0IKieSN8606zUWndwfCzxZ5ulWkgdhwU7zxbhhORY8ClcoOuECMsnvdxtkie
 quY5NWbZCc2KWJ3nA1PiIFj/Y1xsgqIhHbvuHhFhAkv06y6rtG2K9ySHbgUKr6J4Itjp
 RaQ8VYAZQmDBcWNJ1ILELQNVPsmS2pVt0RiQwq5CO+/ecCIAZCtGKudMG0s03nTjNQlQ
 pONyDq4wlGN9AoA1z07KaIWjMYRfs1YoOZmS+7JbPVY8RNgqCZqN+RhzruwMS2oEuRB+
 PYm091kD/C911/Dn+S7nBkX84boz+U74lc1440QNcvl9DpSlgf48Gq/JtILlzaHAXs0W
 Q9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding:cc:from:to;
 bh=D3LzZE0UMVNVcDL+HQwh/ZpkNjkV7N5k0QgoDrqIP8w=;
 b=QaMArpd6RrWkQShEWKs/QifEBBCc/Q/iYUPYUOi1vJgmc/EBhL2jikuRk2/l1edYD+
 pAy+b0gWvahcpAWU82topPFGsir0nAIrX11k1jHuKYm5icwzcNvn+El8fHQv485MDaVR
 IyMYklV8jJmPOxzS9Bpsnr9JHn9Mm65Uo/aIXcm1ItxEsnVjVBt/2W0j9jt5YIOEV4Q/
 f2CJSFQxLEheV1QWWS0lXRUvBdxg1OsQxQ8ELFPfxaqufaRIOPtYEq4su+s5iaI3CmMe
 XZxfLHVxfsSHvAmurQm+00MAWZHkeMQm74pAn/XqTkTQqL6VN3LUtfttmx3Fb/ji/70l
 WMnA==
X-Gm-Message-State: AGi0PuZTThYrI7m67wMQpi/+wrKg/Mm95BZOvb28yRSsplN+38SHDdLM
 hl3vf0vtYGyWz97BKNQCn5pzSw==
X-Google-Smtp-Source: APiQypLW1mxyHfs2yhI4Nh0Dv307YcOWD0+Bpcr/KKbG4SWpkGjg7KJbCkRUXMXqHqgaEYptCRehBQ==
X-Received: by 2002:a63:5c01:: with SMTP id q1mr7510797pgb.177.1586365130908; 
 Wed, 08 Apr 2020 09:58:50 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id t1sm77803pjf.26.2020.04.08.09.58.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 09:58:50 -0700 (PDT)
Subject: [PATCH 2/3] RISC-V: K210: Add a built-in device tree
Date: Wed,  8 Apr 2020 09:57:40 -0700
Message-Id: <20200408165802.167546-3-palmer@dabbelt.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
In-Reply-To: <20200408165802.167546-1-palmer@dabbelt.com>
References: <20200408165802.167546-1-palmer@dabbelt.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_095851_971174_F61BA4AC 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

The K210's bootloader doesn't provide a device tree, so we must provide
our own.

FIXME: I don't actually know the unique IDs on the K210.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig.socs               | 13 ++++++++++++-
 arch/riscv/boot/dts/kendryte/Makefile |  2 +-
 arch/riscv/kernel/builtin-dtb-table.c |  5 +++++
 arch/riscv/kernel/builtin-dtb.S       |  6 ++++++
 4 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index a843100124ae..49e953f45e1f 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -37,11 +37,22 @@ config SOC_VIRT
 config SOC_KENDRYTE
 	bool "Kendryte K210 SoC"
 	depends on !MMU
-	select BUILTIN_DTB
 	select SERIAL_SIFIVE if TTY
 	select SERIAL_SIFIVE_CONSOLE if TTY
 	select SIFIVE_PLIC
+	select SOC_KENDRYTE_K210_DTB_BUILTIN
 	help
 	  This enables support for Kendryte K210 SoC platform hardware.
 
+config SOC_KENDRYTE_K210_DTB
+	def_bool y
+	depends on OF
+
+config SOC_KENDRYTE_K210_DTB_BUILTIN
+	bool "Builtin device tree for the Kendryte K210"
+	depends on BUILTIN_DTB
+	select SOC_KENDRYTE_K210_DTB
+	help
+	  Builds a device tree for the Kendryte K210 into the Linux image.
+
 endmenu
diff --git a/arch/riscv/boot/dts/kendryte/Makefile b/arch/riscv/boot/dts/kendryte/Makefile
index 815444e69e89..01d7eb15673f 100644
--- a/arch/riscv/boot/dts/kendryte/Makefile
+++ b/arch/riscv/boot/dts/kendryte/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0
-dtb-$(CONFIG_SOC_KENDRYTE) += k210.dtb
+dtb-$(CONFIG_SOC_KENDRYTE_K210_DTB) += k210.dtb
diff --git a/arch/riscv/kernel/builtin-dtb-table.c b/arch/riscv/kernel/builtin-dtb-table.c
index 7ad6fe93b8a6..203174ba6f22 100644
--- a/arch/riscv/kernel/builtin-dtb-table.c
+++ b/arch/riscv/kernel/builtin-dtb-table.c
@@ -4,3 +4,8 @@
  */
 
 #include <asm/soc.h>
+
+#ifdef CONFIG_SOC_KENDRYTE_K210_DTB_BUILTIN
+extern void *kendryte_k210_dtb;
+SOC_BUILTIN_DTB_DECLARE(kendryte_k210, 0x0, 0x0, 0x0, kendryte_k210_dtb);
+#endif
diff --git a/arch/riscv/kernel/builtin-dtb.S b/arch/riscv/kernel/builtin-dtb.S
index 3d459ad86948..b0fd5ca231d7 100644
--- a/arch/riscv/kernel/builtin-dtb.S
+++ b/arch/riscv/kernel/builtin-dtb.S
@@ -1,3 +1,9 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 
 .section .dtb.init.rodata,"a"
+
+#ifdef CONFIG_SOC_KENDRYTE_K210_DTB_BUILTIN
+.global kendryte_k210_dtb
+kendryte_k210_dtb:
+	.incbin "arch/riscv/boot/dts/kendryte/k210.dtb"
+#endif
-- 
2.26.0.292.g33ef6b2f38-goog


