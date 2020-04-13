Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696201A6E4F
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 23:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tttd728ZR7pfChiGqdkLPg42rQ3qB92mFJUxcj2QtZ0=; b=Hzof8Xj4Z9IA6V
	BGUTS4oTuzBhZ/CWA7fdFPd/ODqXdveVQ7ePejHUDlwMvd0GyF03s/UAqNqXFMCbc/jOTNtYg8Sxj
	Xv+Nk8q6qejIn6XfAS6zqkFLFx0YrHXAVx0G/8eelbPJ9C80CylFEfMG4AupTN9jF5ZgdGsmwxcsJ
	f7tpfuNhCgPYM3Br2HB4nt2LIO79V2OiBp4M/4DJLwt0MBElfb8cFiY+fK4f5WpyRTwCl1HO+sRcZ
	rEzTACBIeIn2QWw37OUg0GWw6pChhcu25adiVHZaPQTpcM5OWjXr7I0PegUiUiqBmo14tN0P6zlof
	jwbxspYIMS1P3D1H6hkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO6fM-0003dZ-QE; Mon, 13 Apr 2020 21:30:52 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO6eQ-0000Mo-Er; Mon, 13 Apr 2020 21:29:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586813395; x=1618349395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I/GiEGyOV5rt1rc9GnsBz8XcyhOtNk7wcIG4+FIGGnk=;
 b=jpbJvhFQ+fvafcLylwFillSNZ5NNaCpXKXEA7xpjxkwzgNkNQxUpjlGJ
 QLbjYKAzgA0ok7RddA6x0vPgCLBm6jyJUA3DBqRms7S5LYVo30kOkoEDY
 Vh3uHfkSbg1nxP0wKFNKONKrbiJFwGujMMSrQ0YPhtxBXh4bhjoY1biLO
 XIM6BwvSBXnQC2qDxTUTRQtS+z7Lti70zku7yownkKpjq2/P8FIu7pyqw
 3ObO0v4o7jHBKDtS9TENz+VJe0pQKR+CD23n+/ZS+lV68PvihEIoZOwg4
 hPi4dE5HuvnfXUF4IK1NIVelAXqNyMdOXdE8mWhcZf99dqzcsMFMFSnhw g==;
IronPort-SDR: S1iCwSe8/X09jFNxsNUPZLhyCYmp5YUr8iibGCUyhGbdWEb/UlqgKWGw8iJoTC2H6EdaBLe6FB
 uSEZSZzBnjPhbymp85PDdDCQdOmtkQhssLKjdwznXA3V4kK3H4Tg5g6cW0K6gLvpswhQJTeX56
 FFhlG9lpSQ4fU1R2CIJjoYg1XxcF4VWuB5qqoIRO7xa0SQAX2eTcvZdGAbVe08UY+g18OWSUuf
 JKyYTy5tVbMUmM6BaaGA4KIOYygM3ysOQIGXb5YC3Btoz+t5/4BKt118/oJXMBkXRz+72vgDQn
 nC4=
X-IronPort-AV: E=Sophos;i="5.72,380,1580745600"; d="scan'208";a="136683328"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2020 05:29:31 +0800
IronPort-SDR: 4q8ic4vz0+q+XNeLS/BpY+K06h8jcucBal6OD64PQ0uIvFFm6nNnLyC2pev7Eb3OjnofEzKQB8
 PvCiDuf3Hj60hbhsrHyCGOLf2gNVHGsOwlEkDCDqr6qYvVWxjmZ+vQDsZcp6OHKlPpdw1tFOtQ
 ujSvYc1dtdhAbuDkTRYhCU/r6WCRmwRwf7wQHmk9h5rpGxY+ZylTIZwx1dyWWtLrskTUvQ3gM+
 SRaPpp75d9gK1Gv+Ot9LorDb+nXbinwGcZX4DT0HbjBM9B192Zhvg4oMi+kVtl574d+TdzdP9J
 2D26SyKPzHPD/UGen5RFuPCA
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 14:20:02 -0700
IronPort-SDR: BseMmEGbdr0tCYWbKQphuB1iCB2ANCvg+j86bIbB8nd/xBtv73df2iAf1kOIAk5mlOsLuUo43g
 SeaVOSRUDO6VTRZAjJ/kv7HT+qXUBbJAIkDUCSAEDyyGXFztvYsUvXRcA4n0vm2AJiwtpNVdEq
 +9reJHs+lT5r40PSoQustcMlul/5Wq9D+KyjZYOboxtWIaqc8NrJQFapg28YEtFYjCqlxTgeHS
 +zVA+KcUN0I+volZI6cqbVJfG+23HjpXQvxKOw57rKVH6lwAAKj8Oe/OXnFJYWc8vM8TXNYNCP
 zvA=
WDCIronportException: Internal
Received: from 9dg4l72.ad.shared (HELO jedi-01.hgst.com) ([10.86.55.26])
 by uls-op-cesaip01.wdc.com with ESMTP; 13 Apr 2020 14:29:31 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v2 PATCH 3/5] RISC-V: Define fixmap bindings for generic early
 ioremap support
Date: Mon, 13 Apr 2020 14:29:05 -0700
Message-Id: <20200413212907.29244-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200413212907.29244-1-atish.patra@wdc.com>
References: <20200413212907.29244-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_142954_544155_C099E515 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

UEFI uses early IO or memory mappings for runtime services before
normal ioremap() is usable. This patch only adds minimum necessary
fixmap bindings and headers for generic ioremap support to work.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/riscv/Kconfig              |  1 +
 arch/riscv/include/asm/Kbuild   |  1 +
 arch/riscv/include/asm/fixmap.h | 18 ++++++++++++++++++
 arch/riscv/include/asm/io.h     |  1 +
 4 files changed, 21 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a197258595ef..f39e326a7a42 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -68,6 +68,7 @@ config RISCV
 	select ARCH_HAS_GCOV_PROFILE_ALL
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_ARCH_KASAN if MMU && 64BIT
+	select GENERIC_EARLY_IOREMAP
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index 3d9410bb4de0..59dd7be55005 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
+generic-y += early_ioremap.h
 generic-y += extable.h
 generic-y += flat.h
 generic-y += kvm_para.h
diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
index 2368d49eb4ef..ba5096d65fb0 100644
--- a/arch/riscv/include/asm/fixmap.h
+++ b/arch/riscv/include/asm/fixmap.h
@@ -30,6 +30,24 @@ enum fixed_addresses {
 	FIX_TEXT_POKE1,
 	FIX_TEXT_POKE0,
 	FIX_EARLYCON_MEM_BASE,
+	/*
+	 * Make sure that it is 2MB aligned.
+	 */
+#define NR_FIX_SZ_2M	(SZ_2M / PAGE_SIZE)
+	FIX_THOLE = NR_FIX_SZ_2M - FIX_PMD - 1,
+
+	__end_of_permanent_fixed_addresses,
+	/*
+	 * Temporary boot-time mappings, used by early_ioremap(),
+	 * before ioremap() is functional.
+	 */
+#define NR_FIX_BTMAPS		(SZ_256K / PAGE_SIZE)
+#define FIX_BTMAPS_SLOTS	7
+#define TOTAL_FIX_BTMAPS	(NR_FIX_BTMAPS * FIX_BTMAPS_SLOTS)
+
+	FIX_BTMAP_END = __end_of_permanent_fixed_addresses,
+	FIX_BTMAP_BEGIN = FIX_BTMAP_END + TOTAL_FIX_BTMAPS - 1,
+
 	__end_of_fixed_addresses
 };
 
diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index 0f477206a4ed..047f414b6948 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -14,6 +14,7 @@
 #include <linux/types.h>
 #include <asm/mmiowb.h>
 #include <asm/pgtable.h>
+#include <asm/early_ioremap.h>
 
 /*
  * MMIO access functions are separated out to break dependency cycles
-- 
2.24.0


