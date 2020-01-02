Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6310612E1DF
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 04:12:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrnl5pqsbBbH6F45X1aAStXLXzEqune2QF/YSawnpX0=; b=Z5PIQnbAjpTR9o
	SNfUUSTZbge4QVarhX/rRnfTv5lQ3C2YxqpxjZTM/3b0dB/UUW8trn9BiSls8enAsCebSmxK12Go0
	zUJD6vqMZUBwRk2Fqj6dHowpmThuNalhccrCqkkw8KFs1fZAQMOEnhAi3HUURpPYfYpBVmMqw572X
	2ZbHRbeg2XVfeWrhgUWabddYhYedb37BehjkGMExHp0R79e+pygaYtIObFV+4roEaHmYnhJAjRps5
	hm8oPakh2JMR0Kwn8CPLaHkUCXVtYZOZ7pUpBxDTWlPBdB9AB8vTaPLxTDPOauFjjjvr3rSmxMcSU
	D/G72nO+ACREqp/DU5ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imqur-00047H-Ev; Thu, 02 Jan 2020 03:12:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imqun-00045d-TA
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 03:12:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id x185so21415356pfc.5
 for <linux-riscv@lists.infradead.org>; Wed, 01 Jan 2020 19:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yrnl5pqsbBbH6F45X1aAStXLXzEqune2QF/YSawnpX0=;
 b=XxlWTZhu7MUWuU0imHRmm3H/uybQqfEJix4Mfh+3FryKGVEhrvpStOPE/yxEU2FFjG
 wmpyERlibemZG83QVBh63c/KDIXTbpVFxeGqZc/+KV6tTgmruYUgw26jwNgUkgagL2d3
 4rDFlU9KWelxh4lkOVXQ2MFPp5++0YlWWP6fZPbWobRH4FjTHlHFib2beotO9EFCoW/L
 5vGlPZtT+dSRgSds3FEPN73a9VRmE4qVS8ybrfnSKEMLyV1AR1kp2ImiHyJgAYD2U6Z6
 zfra/GS3zp5Mv+ID+xBRsDEQrVil5/arqOsWbpV+ixutyaUE7ZCtRumaPHsJmMbhMAuL
 HZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yrnl5pqsbBbH6F45X1aAStXLXzEqune2QF/YSawnpX0=;
 b=Bc7h7BEsNU1QjBJJK5U4XfuRJSSszN3I0kNdgJQ0HgoQC2I36my1Om2vsrFWoCA7QV
 ZIXzt1wQRLU9sIb26C5YyQtRiPQFCl0lHpdIcGzEEuN9wSJEnwsDOQebTtFjv4h2O6Hw
 yiRg0N7/WXugZSYVSLEPTsw+QAplAMWKGMWiImYt52S7eYfotV7Kdu7OxkLNHhzsdXJ5
 2mfb3F1zm7HJ0JSDooVq2kNXYwiUWqONm10T0U7vFxLdxrZ/9zuJ0xfXHKwLbCHfWZV+
 4ggl+vzTNqeZFUcyRTSI2hQgSeczWgTvv3sfQng8ivAdZsrMw6buQYxJpiXwkxJHWLRP
 jAmg==
X-Gm-Message-State: APjAAAUS7phw1VAHID1ZDLEtASwu8oNBgTS+vpbWMAH45kodOaf68qO+
 IpD4MBAIOqEzR4ZyiUSV2jdZLg==
X-Google-Smtp-Source: APXvYqzEvuyuQyuEaHXT0llObHpB5vtWcskyeyLF1x+ZRS5oEoHmAIeUKy9oX9T5VGo7oLSaMMruLA==
X-Received: by 2002:a63:da14:: with SMTP id c20mr64215100pgh.280.1577934769071; 
 Wed, 01 Jan 2020 19:12:49 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id l127sm57943938pgl.48.2020.01.01.19.12.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 19:12:48 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] riscv: mm: add support for CONFIG_DEBUG_VIRTUAL
Date: Thu,  2 Jan 2020 11:12:39 +0800
Message-Id: <20200102031240.44484-2-zong.li@sifive.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200102031240.44484-1-zong.li@sifive.com>
References: <20200102031240.44484-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_191249_948116_2F8C2204 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch implements CONFIG_DEBUG_VIRTUAL to do additional checks on
virt_to_phys and __pa_symbol calls. virt_to_phys used for linear mapping
check, and __pa_symbol used for kernel symbol check. In current RISC-V,
kernel image maps to linear mapping area. If CONFIG_DEBUG_VIRTUAL is
disable, these two functions calculate the offset on the address feded
directly without any checks.

The result of test_debug_virtual as follows:

[    0.358456] ------------[ cut here ]------------
[    0.358738] virt_to_phys used for non-linear address: (____ptrval____) (0xffffffd000000000)
[    0.359174] WARNING: CPU: 0 PID: 1 at arch/riscv/mm/physaddr.c:16 __virt_to_phys+0x3c/0x50
[    0.359409] Modules linked in:
[    0.359630] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.5.0-rc3-00002-g5133c5c0ca13 #57
[    0.359861] epc: ffffffe000253d1a ra : ffffffe000253d1a sp : ffffffe03aa87da0
[    0.360019]  gp : ffffffe000ae03b0 tp : ffffffe03aa88000 t0 : ffffffe000af2660
[    0.360175]  t1 : 0000000000000064 t2 : 00000000000000b7 s0 : ffffffe03aa87dc0
[    0.360330]  s1 : ffffffd000000000 a0 : 000000000000004f a1 : 0000000000000000
[    0.360492]  a2 : 0000000000000000 a3 : 0000000000000000 a4 : ffffffe000a84358
[    0.360672]  a5 : 0000000000000000 a6 : 0000000000000000 a7 : 0000000000000000
[    0.360876]  s2 : ffffffe000ae0600 s3 : ffffffe00000fc7c s4 : ffffffe0000224b0
[    0.361067]  s5 : ffffffe000030890 s6 : ffffffe000022470 s7 : 0000000000000008
[    0.361267]  s8 : ffffffe0000002c4 s9 : ffffffe000ae0640 s10: ffffffe000ae0630
[    0.361453]  s11: 0000000000000000 t3 : 0000000000000000 t4 : 000000000001e6d0
[    0.361636]  t5 : ffffffe000ae0a18 t6 : ffffffe000aee54e
[    0.361806] status: 0000000000000120 badaddr: 0000000000000000 cause: 0000000000000003
[    0.362056] ---[ end trace aec0bf78d4978122 ]---
[    0.362404] PA: 0xfffffff080200000 for VA: 0xffffffd000000000
[    0.362607] PA: 0x00000000baddd2d0 for VA: 0xffffffe03abdd2d0

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig            |  1 +
 arch/riscv/include/asm/page.h | 16 +++++++++++++--
 arch/riscv/mm/Makefile        |  2 ++
 arch/riscv/mm/physaddr.c      | 37 +++++++++++++++++++++++++++++++++++
 4 files changed, 54 insertions(+), 2 deletions(-)
 create mode 100644 arch/riscv/mm/physaddr.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index d8efbaa78d67..7f268816be5b 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -57,6 +57,7 @@ config RISCV
 	select GENERIC_ARCH_TOPOLOGY if SMP
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_MMIOWB
+	select ARCH_HAS_DEBUG_VIRTUAL
 	select HAVE_EBPF_JIT if 64BIT
 	select EDAC_SUPPORT
 	select ARCH_HAS_GIGANTIC_PAGE
diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index ac699246ae7e..8ca1930caa44 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -100,8 +100,20 @@ extern unsigned long pfn_base;
 extern unsigned long max_low_pfn;
 extern unsigned long min_low_pfn;
 
-#define __pa(x)		((unsigned long)(x) - va_pa_offset)
-#define __va(x)		((void *)((unsigned long) (x) + va_pa_offset))
+#define __pa_to_va_nodebug(x)	((void *)((unsigned long) (x) + va_pa_offset))
+#define __va_to_pa_nodebug(x)	((unsigned long)(x) - va_pa_offset)
+
+#ifdef CONFIG_DEBUG_VIRTUAL
+extern phys_addr_t __virt_to_phys(unsigned long x);
+extern phys_addr_t __phys_addr_symbol(unsigned long x);
+#else
+#define __virt_to_phys(x)	__va_to_pa_nodebug(x)
+#define __phys_addr_symbol(x)	__va_to_pa_nodebug(x)
+#endif /* CONFIG_DEBUG_VIRTUAL */
+
+#define __pa_symbol(x)	__phys_addr_symbol(RELOC_HIDE((unsigned long)(x), 0))
+#define __pa(x)		__virt_to_phys((unsigned long)(x))
+#define __va(x)		((void *)__pa_to_va_nodebug((phys_addr_t)(x)))
 
 #define phys_to_pfn(phys)	(PFN_DOWN(phys))
 #define pfn_to_phys(pfn)	(PFN_PHYS(pfn))
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index a1bd95c8047a..7de157ecfb77 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -15,3 +15,5 @@ ifeq ($(CONFIG_MMU),y)
 obj-$(CONFIG_SMP) += tlbflush.o
 endif
 obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
+
+obj-$(CONFIG_DEBUG_VIRTUAL) += physaddr.o
diff --git a/arch/riscv/mm/physaddr.c b/arch/riscv/mm/physaddr.c
new file mode 100644
index 000000000000..e8e4dcd39fed
--- /dev/null
+++ b/arch/riscv/mm/physaddr.c
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/types.h>
+#include <linux/mmdebug.h>
+#include <linux/mm.h>
+#include <asm/page.h>
+#include <asm/sections.h>
+
+phys_addr_t __virt_to_phys(unsigned long x)
+{
+	phys_addr_t y = x - PAGE_OFFSET;
+
+	/*
+	 * Boundary checking aginst the kernel linear mapping space.
+	 */
+	WARN(y >= KERN_VIRT_SIZE,
+	     "virt_to_phys used for non-linear address: %pK (%pS)\n",
+	     (void *)x, (void *)x);
+
+	return __va_to_pa_nodebug(x);
+}
+EXPORT_SYMBOL(__virt_to_phys);
+
+phys_addr_t __phys_addr_symbol(unsigned long x)
+{
+	unsigned long kernel_start = (unsigned long)PAGE_OFFSET;
+	unsigned long kernel_end = (unsigned long)_end;
+
+	/*
+	 * Boundary checking aginst the kernel image mapping.
+	 * __pa_symbol should only be used on kernel symbol addresses.
+	 */
+	VIRTUAL_BUG_ON(x < kernel_start || x > kernel_end);
+
+	return __va_to_pa_nodebug(x);
+}
+EXPORT_SYMBOL(__phys_addr_symbol);
-- 
2.24.1


