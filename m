Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6372D16F4BE
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 02:11:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CREg0iZ420gF9e4l45nZua0LY1twAjDYLWDcK5ZW1zM=; b=qyMxG3Ow2yOXs5
	qpX0tCysPms1IGzPpSBdsvnOaDS8NhKWbPe3JLZzg1XzmVqovnm/4acaH136uuDSLCiJqF5kGGncU
	+2+BwRnZRrXKMyGj9Yx2XXth8OHDMqOYQ9DVaEQsm3Q5c/7fpRKXPasCUrTdg6fLzuuLvdOFv6nAG
	b+75XWh0yJ8fl5VRDdooaSzdWmSF820SWbYYOeI1HpIfh4/Y/Jj8f4U0PWvwlhFjz1SCJTy69Bwc8
	pvVKrPnhWou8YBBCoL7qV9DAeU4+1Tx3ox/Sg9WHrreRxVHSN6zIeJ1BF3/bzG6wItnIV1h2Xvsf7
	2h0Ic2JcA4rSn/DKFQ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lED-0006v0-4f; Wed, 26 Feb 2020 01:11:09 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lE5-0006mA-AO
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 01:11:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582679468; x=1614215468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jG6X4JnNilU/eW30gWfXMqqgjMVBZILEbLLORFCd6Bs=;
 b=VGd9eO+4BPaITOI9iyG9+QXcoqYBJb4brtvpWtlhapIsL71hhAAUN3ez
 upjfuWR6liKrxt2nLFHOfU0aVSjZfyWtXGAZ73G0lJireiAxOODM+/afz
 gTVp5+M3j3ZQ6Tt3B1bDBejpl+2gySt4BzfE+aqZYyDt47AXnNS2jRjeX
 dWFWFoIda5h6UqWMJz1w9DsAgHgFYfqu4rleGOcSENij1jBovFoy6sEXV
 iIvXFhL0w2usohecx547X0KiV/ZSLH3SQrO1xDNTPuZnP/HyuqM97kZLk
 9mZOAG+1v1itd7RtCC34BXJnhlnBxWyu4tvBcFjzehGNoz3caIhaQCawv w==;
IronPort-SDR: jCb615dnWjCMX+QQ06nQ1k7iZyb3ng356F5SFLRHlG6Lbb1K5FINn0e/NCZGkfBvnxmVfXbeMo
 cz6iFRyOOcRy/q7ct+iMSIhTnpt94Pi7p9TXxHR4ldUjM0MebtGBz43rB10ollGdb3yupYflWU
 ooMD0bj4CyePPvBLN8wP6NyXBNLaOxHPSvHA4Lopyz/u6Z/V+/RvAIfaUIPprWlPASgkh2vnDN
 0ZzdJFnyFjsYmhiMbT+iaGr4PsZNyPJsTSh/ePiAbd+Hw80ofCE5JuWxANJko81u4fELlH8khs
 1Vo=
X-IronPort-AV: E=Sophos;i="5.70,486,1574092800"; d="scan'208";a="232649064"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 26 Feb 2020 09:10:51 +0800
IronPort-SDR: xq9sIXe1zMNShRABqZ5Bx9t8APeqxlorBUiTaR3yxVl/s13eWwdU7yGmx6pG3W+wqKZNU3DmOy
 GwEXFBxfnIQX/Cjj8NFCVJHOIOgfXyMtVgPXPUdCwgG+uDw8wmxDgrjVPVnJnc0KCUEH/km1Y1
 6qG+B/YfEgr2Uq1PQNRurEr85IKpxGgA8ZOBoC1o1imlYGOfUaUIF9u1ETQ/vbXBMEl2Mba7iy
 w754l0caKQZfkFp75Wrmx3uiuvbi8hnZZ1fhtD2MUVGIqSr1cBJQvJmzQ/IWShLg0jD23dJatm
 vWn/KRGKgoK8R9a9kK4NTQiT
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:03:16 -0800
IronPort-SDR: uYo8/yrdVKwUzqReGdMdTrQ3dSJmyKvsNgCAiPHd8mBJG5pa8Xkamt42xv+OK0H1Ikp3xGDQsF
 ftEMYmliGZhro6eqMNQ0uZ1bBq+V5Q3ZnweFEcLHkJYZcjBTj0ZQVSQjLVwhjT/+Cwt7EUky2o
 SagAFlELftAlMUBYjHpNT5CLhV3eejODZHig/Qt7cIcL4hGTTxcbxzekGU22nJPWuWNIZgzKB2
 qhpSaRB6WDIZmTAI0d1zashabLhrnFRJvbfJdAHIQPvWJHVSyPwsz+lpBxLknNeXurWJDtbWfF
 OZY=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 25 Feb 2020 17:10:48 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 3/5] RISC-V: Define fixmap bindings for generic early
 ioremap support
Date: Tue, 25 Feb 2020 17:10:35 -0800
Message-Id: <20200226011037.7179-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200226011037.7179-1-atish.patra@wdc.com>
References: <20200226011037.7179-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_171101_465478_3DE3F993 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "Chang,
 Abner \(HPS SW/FW Technologist\)" <abner.chang@hpe.com>,
 Michal Simek <michal.simek@xilinx.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, daniel.schaefer@hpe.com,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Alexios Zavras <alexios.zavras@intel.com>,
 Alexander Graf <agraf@csgraf.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "leif@nuviainc.com" <leif@nuviainc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

UEFI uses early IO or memory mappings for runtime services before
normal ioremap() is usable. This patch only adds minimum necessary
fixmap bindings and headers for generic ioremap support to work.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/Kconfig              |  1 +
 arch/riscv/include/asm/Kbuild   |  1 +
 arch/riscv/include/asm/fixmap.h | 21 ++++++++++++++++++++-
 arch/riscv/include/asm/io.h     |  1 +
 4 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 27bfc7947e44..42c122170cfd 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -65,6 +65,7 @@ config RISCV
 	select ARCH_HAS_GCOV_PROFILE_ALL
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_ARCH_KASAN if MMU && 64BIT
+	select GENERIC_EARLY_IOREMAP
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index ec0ca8c6ab64..517394390106 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -4,6 +4,7 @@ generic-y += checksum.h
 generic-y += compat.h
 generic-y += device.h
 generic-y += div64.h
+generic-y += early_ioremap.h
 generic-y += extable.h
 generic-y += flat.h
 generic-y += dma.h
diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
index 42d2c42f3cc9..7a4beb7e29a3 100644
--- a/arch/riscv/include/asm/fixmap.h
+++ b/arch/riscv/include/asm/fixmap.h
@@ -25,9 +25,28 @@ enum fixed_addresses {
 #define FIX_FDT_SIZE	SZ_1M
 	FIX_FDT_END,
 	FIX_FDT = FIX_FDT_END + FIX_FDT_SIZE / PAGE_SIZE - 1,
+	FIX_EARLYCON_MEM_BASE,
+
 	FIX_PTE,
 	FIX_PMD,
-	FIX_EARLYCON_MEM_BASE,
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


