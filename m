Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859C9E8EBE
	for <lists+linux-riscv@lfdr.de>; Tue, 29 Oct 2019 18:56:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vOR5//KwRd1dADPkeD4IvR0DcOexdBQtVC8WXcFi2IM=; b=iVIDz9MN0AhJ+l
	Sc/gV6t/h88nZVWbbFyKjjzuzOru1YcRvk9QmfTfyZnt2TQBfgqtPQcVKfJpTYCUOT3dbtQr3JeNG
	AZVaUDx9AYZ7gJGO/TBFOY3FueKitRo19hA3S8hyvE8nm1dIXmic8KbZTiYgLgfDwwNGz/tOi0NWO
	KA4QFOxxrD9JRnDVtAT9rf5BsD8HaMRO0nhVyzppCapxM35gR1qcBkzLJF09SU8PzBAkgMFM0GFsn
	MPEyoqAfO4eMvS2Xv9jLyvyv73if9cQp/EalH9d2994hAD62PGhSL0t3SXJTmjz3OfbmoU2o36Pti
	L7O7M9Wk/lGS8ifNEfUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVjE-0003LB-2t; Tue, 29 Oct 2019 17:56:24 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVjA-0003Jj-3s
 for linux-riscv@lists.infradead.org; Tue, 29 Oct 2019 17:56:22 +0000
Received: by mail-io1-xd41.google.com with SMTP id w12so15741959iol.11
 for <linux-riscv@lists.infradead.org>; Tue, 29 Oct 2019 10:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=nplEZ0NhrxZ6nG48+zy/+yPSG8XMu0oh1vJSmlgKjS0=;
 b=LN/6/FAdQIelyoRV0+o+dRUGsUs60kB8RPPL8clgw/ulwYEwRwJOshUrXg4sVGqYpx
 vh44k4pbLip/RB3hpHXchp00TiASSDx6yJE1mw4m69aVa0Mou93gshFW5zvcxX5HAG1y
 nDLRgQnAr8uE4ZKsR5ZpKHkgi+oewINqh5GSXJIv/PQCmVs8H9C+dDcBQb+x34Awyzyk
 yLUCjc2OTOud8pyr2gaPX3h0MbnCQ/tfWKsBHWlWOEJJKKnxgwobQj8ujFStH78zpUmn
 hcrqxiNeUuRoHWIFN2omzCGt2/lZt+jUr5qbtx0n/OyrkPR3+2mmYU6X9fcxMsH02WS4
 LKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=nplEZ0NhrxZ6nG48+zy/+yPSG8XMu0oh1vJSmlgKjS0=;
 b=AchC7+3ftkbmTkik0k1SywVSRrMK0oS9O3kH61V0VZP6XPheCrZbUcgeitS80Extix
 vLBCevqqFZGYZSmRhBQZ1IZknpApFxsiu3SEtkSLUFe2ZJfp4JL/5G7SUKvRBQ15MzUs
 yUwOlGTcefAFMtfgjYDfjxNkMYn/KdOD5NQ9knGctVMfjxpFXaWciRjSC4bfnnfWKaXZ
 Uw5vd/Oswi1sTXwSlYmSI21LAX55CWjaBaLSnoUz2UY8O1Xb0SI2LMZ64WtHldTkRkKD
 FRYcGn4cAQMOIZk3/CNracVPn+3u+UpewoOEbKOVkBUN1If0M/nNSWiPE+qlL+ekinrj
 2wWA==
X-Gm-Message-State: APjAAAVho30NDYlXRLWpbrDGe++mJifGquDmgBsk5vjDs9exEubrWwAM
 uxakRK2Y5wU5g8WXZeXQcWlti3yg8mk=
X-Google-Smtp-Source: APXvYqxDJmEi/grm3ysHxYlt24yg79BLBd988V5fwk5iIfOpmvaI+UMkUxZv690EnYyJT2WRhnGNPw==
X-Received: by 2002:a02:9f0f:: with SMTP id z15mr188189jal.97.1572371778127;
 Tue, 29 Oct 2019 10:56:18 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id s28sm1414021ioa.88.2019.10.29.10.56.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:56:17 -0700 (PDT)
Date: Tue, 29 Oct 2019 10:56:15 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: separate MMIO functions into their own header file
Message-ID: <alpine.DEB.2.21.9999.1910291053450.1601@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_105620_194931_9CB99C26 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: yash.shah@sifive.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Separate the low-level MMIO static inline functions and macros, such
as {read,write}{b,w,l,q}(), into their own header file under
arch/riscv/include: asm/mmio.h.  This is done to break a header
dependency chain that arises when both asm/pgtable.h and asm/io.h are
included by asm/timex.h.  Since the problem is related to the legacy
I/O port support in asm/io.h, this allows files under arch/riscv that
encounter those issues to simply include asm/mmio.h instead, and
bypass the legacy I/O port functions.  Existing users of asm/io.h
don't need to change anything, since asm/mmio.h is included by
asm/io.h.

While here, clean up some checkpatch.pl-related issues with the
original code.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
This fixes the build when Christoph's nommu series is applied on top of  
Yash's PCI I/O port fix patch.

 arch/riscv/include/asm/io.h   | 147 +-----------------------------
 arch/riscv/include/asm/mmio.h | 164 ++++++++++++++++++++++++++++++++++
 2 files changed, 167 insertions(+), 144 deletions(-)
 create mode 100644 arch/riscv/include/asm/mmio.h

diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index 3ba4d93721d3..d5af79cd89db 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -15,152 +15,11 @@
 #include <asm/mmiowb.h>
 #include <asm/pgtable.h>
 
-extern void __iomem *ioremap(phys_addr_t offset, unsigned long size);
-
-/*
- * The RISC-V ISA doesn't yet specify how to query or modify PMAs, so we can't
- * change the properties of memory regions.  This should be fixed by the
- * upcoming platform spec.
- */
-#define ioremap_nocache(addr, size) ioremap((addr), (size))
-#define ioremap_wc(addr, size) ioremap((addr), (size))
-#define ioremap_wt(addr, size) ioremap((addr), (size))
-
-extern void iounmap(volatile void __iomem *addr);
-
-/* Generic IO read/write.  These perform native-endian accesses. */
-#define __raw_writeb __raw_writeb
-static inline void __raw_writeb(u8 val, volatile void __iomem *addr)
-{
-	asm volatile("sb %0, 0(%1)" : : "r" (val), "r" (addr));
-}
-
-#define __raw_writew __raw_writew
-static inline void __raw_writew(u16 val, volatile void __iomem *addr)
-{
-	asm volatile("sh %0, 0(%1)" : : "r" (val), "r" (addr));
-}
-
-#define __raw_writel __raw_writel
-static inline void __raw_writel(u32 val, volatile void __iomem *addr)
-{
-	asm volatile("sw %0, 0(%1)" : : "r" (val), "r" (addr));
-}
-
-#ifdef CONFIG_64BIT
-#define __raw_writeq __raw_writeq
-static inline void __raw_writeq(u64 val, volatile void __iomem *addr)
-{
-	asm volatile("sd %0, 0(%1)" : : "r" (val), "r" (addr));
-}
-#endif
-
-#define __raw_readb __raw_readb
-static inline u8 __raw_readb(const volatile void __iomem *addr)
-{
-	u8 val;
-
-	asm volatile("lb %0, 0(%1)" : "=r" (val) : "r" (addr));
-	return val;
-}
-
-#define __raw_readw __raw_readw
-static inline u16 __raw_readw(const volatile void __iomem *addr)
-{
-	u16 val;
-
-	asm volatile("lh %0, 0(%1)" : "=r" (val) : "r" (addr));
-	return val;
-}
-
-#define __raw_readl __raw_readl
-static inline u32 __raw_readl(const volatile void __iomem *addr)
-{
-	u32 val;
-
-	asm volatile("lw %0, 0(%1)" : "=r" (val) : "r" (addr));
-	return val;
-}
-
-#ifdef CONFIG_64BIT
-#define __raw_readq __raw_readq
-static inline u64 __raw_readq(const volatile void __iomem *addr)
-{
-	u64 val;
-
-	asm volatile("ld %0, 0(%1)" : "=r" (val) : "r" (addr));
-	return val;
-}
-#endif
-
 /*
- * Unordered I/O memory access primitives.  These are even more relaxed than
- * the relaxed versions, as they don't even order accesses between successive
- * operations to the I/O regions.
+ * MMIO access functions are separated out to break dependency cycles
+ * when using {read,write}* fns in low-level headers
  */
-#define readb_cpu(c)		({ u8  __r = __raw_readb(c); __r; })
-#define readw_cpu(c)		({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
-#define readl_cpu(c)		({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
-
-#define writeb_cpu(v,c)		((void)__raw_writeb((v),(c)))
-#define writew_cpu(v,c)		((void)__raw_writew((__force u16)cpu_to_le16(v),(c)))
-#define writel_cpu(v,c)		((void)__raw_writel((__force u32)cpu_to_le32(v),(c)))
-
-#ifdef CONFIG_64BIT
-#define readq_cpu(c)		({ u64 __r = le64_to_cpu((__force __le64)__raw_readq(c)); __r; })
-#define writeq_cpu(v,c)		((void)__raw_writeq((__force u64)cpu_to_le64(v),(c)))
-#endif
-
-/*
- * Relaxed I/O memory access primitives. These follow the Device memory
- * ordering rules but do not guarantee any ordering relative to Normal memory
- * accesses.  These are defined to order the indicated access (either a read or
- * write) with all other I/O memory accesses. Since the platform specification
- * defines that all I/O regions are strongly ordered on channel 2, no explicit
- * fences are required to enforce this ordering.
- */
-/* FIXME: These are now the same as asm-generic */
-#define __io_rbr()		do {} while (0)
-#define __io_rar()		do {} while (0)
-#define __io_rbw()		do {} while (0)
-#define __io_raw()		do {} while (0)
-
-#define readb_relaxed(c)	({ u8  __v; __io_rbr(); __v = readb_cpu(c); __io_rar(); __v; })
-#define readw_relaxed(c)	({ u16 __v; __io_rbr(); __v = readw_cpu(c); __io_rar(); __v; })
-#define readl_relaxed(c)	({ u32 __v; __io_rbr(); __v = readl_cpu(c); __io_rar(); __v; })
-
-#define writeb_relaxed(v,c)	({ __io_rbw(); writeb_cpu((v),(c)); __io_raw(); })
-#define writew_relaxed(v,c)	({ __io_rbw(); writew_cpu((v),(c)); __io_raw(); })
-#define writel_relaxed(v,c)	({ __io_rbw(); writel_cpu((v),(c)); __io_raw(); })
-
-#ifdef CONFIG_64BIT
-#define readq_relaxed(c)	({ u64 __v; __io_rbr(); __v = readq_cpu(c); __io_rar(); __v; })
-#define writeq_relaxed(v,c)	({ __io_rbw(); writeq_cpu((v),(c)); __io_raw(); })
-#endif
-
-/*
- * I/O memory access primitives. Reads are ordered relative to any
- * following Normal memory access. Writes are ordered relative to any prior
- * Normal memory access.  The memory barriers here are necessary as RISC-V
- * doesn't define any ordering between the memory space and the I/O space.
- */
-#define __io_br()	do {} while (0)
-#define __io_ar(v)	__asm__ __volatile__ ("fence i,r" : : : "memory");
-#define __io_bw()	__asm__ __volatile__ ("fence w,o" : : : "memory");
-#define __io_aw()	mmiowb_set_pending()
-
-#define readb(c)	({ u8  __v; __io_br(); __v = readb_cpu(c); __io_ar(__v); __v; })
-#define readw(c)	({ u16 __v; __io_br(); __v = readw_cpu(c); __io_ar(__v); __v; })
-#define readl(c)	({ u32 __v; __io_br(); __v = readl_cpu(c); __io_ar(__v); __v; })
-
-#define writeb(v,c)	({ __io_bw(); writeb_cpu((v),(c)); __io_aw(); })
-#define writew(v,c)	({ __io_bw(); writew_cpu((v),(c)); __io_aw(); })
-#define writel(v,c)	({ __io_bw(); writel_cpu((v),(c)); __io_aw(); })
-
-#ifdef CONFIG_64BIT
-#define readq(c)	({ u64 __v; __io_br(); __v = readq_cpu(c); __io_ar(__v); __v; })
-#define writeq(v,c)	({ __io_bw(); writeq_cpu((v),(c)); __io_aw(); })
-#endif
+#include <asm/mmio.h>
 
 /*
  *  I/O port access constants.
diff --git a/arch/riscv/include/asm/mmio.h b/arch/riscv/include/asm/mmio.h
new file mode 100644
index 000000000000..308b98f85753
--- /dev/null
+++ b/arch/riscv/include/asm/mmio.h
@@ -0,0 +1,164 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * {read,write}{b,w,l,q} based on arch/arm64/include/asm/io.h
+ *   which was based on arch/arm/include/io.h
+ *
+ * Copyright (C) 1996-2000 Russell King
+ * Copyright (C) 2012 ARM Ltd.
+ * Copyright (C) 2014 Regents of the University of California
+ */
+
+#ifndef _ASM_RISCV_MMIO_H
+#define _ASM_RISCV_MMIO_H
+
+#include <linux/types.h>
+#include <asm/mmiowb.h>
+
+void __iomem *ioremap(phys_addr_t offset, unsigned long size);
+
+/*
+ * The RISC-V ISA doesn't yet specify how to query or modify PMAs, so we can't
+ * change the properties of memory regions.  This should be fixed by the
+ * upcoming platform spec.
+ */
+#define ioremap_nocache(addr, size) ioremap((addr), (size))
+#define ioremap_wc(addr, size) ioremap((addr), (size))
+#define ioremap_wt(addr, size) ioremap((addr), (size))
+
+void iounmap(volatile void __iomem *addr);
+
+/* Generic IO read/write.  These perform native-endian accesses. */
+#define __raw_writeb __raw_writeb
+static inline void __raw_writeb(u8 val, volatile void __iomem *addr)
+{
+	asm volatile("sb %0, 0(%1)" : : "r" (val), "r" (addr));
+}
+
+#define __raw_writew __raw_writew
+static inline void __raw_writew(u16 val, volatile void __iomem *addr)
+{
+	asm volatile("sh %0, 0(%1)" : : "r" (val), "r" (addr));
+}
+
+#define __raw_writel __raw_writel
+static inline void __raw_writel(u32 val, volatile void __iomem *addr)
+{
+	asm volatile("sw %0, 0(%1)" : : "r" (val), "r" (addr));
+}
+
+#ifdef CONFIG_64BIT
+#define __raw_writeq __raw_writeq
+static inline void __raw_writeq(u64 val, volatile void __iomem *addr)
+{
+	asm volatile("sd %0, 0(%1)" : : "r" (val), "r" (addr));
+}
+#endif
+
+#define __raw_readb __raw_readb
+static inline u8 __raw_readb(const volatile void __iomem *addr)
+{
+	u8 val;
+
+	asm volatile("lb %0, 0(%1)" : "=r" (val) : "r" (addr));
+	return val;
+}
+
+#define __raw_readw __raw_readw
+static inline u16 __raw_readw(const volatile void __iomem *addr)
+{
+	u16 val;
+
+	asm volatile("lh %0, 0(%1)" : "=r" (val) : "r" (addr));
+	return val;
+}
+
+#define __raw_readl __raw_readl
+static inline u32 __raw_readl(const volatile void __iomem *addr)
+{
+	u32 val;
+
+	asm volatile("lw %0, 0(%1)" : "=r" (val) : "r" (addr));
+	return val;
+}
+
+#ifdef CONFIG_64BIT
+#define __raw_readq __raw_readq
+static inline u64 __raw_readq(const volatile void __iomem *addr)
+{
+	u64 val;
+
+	asm volatile("ld %0, 0(%1)" : "=r" (val) : "r" (addr));
+	return val;
+}
+#endif
+
+/*
+ * Unordered I/O memory access primitives.  These are even more relaxed than
+ * the relaxed versions, as they don't even order accesses between successive
+ * operations to the I/O regions.
+ */
+#define readb_cpu(c)		({ u8  __r = __raw_readb(c); __r; })
+#define readw_cpu(c)		({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
+#define readl_cpu(c)		({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
+
+#define writeb_cpu(v, c)	((void)__raw_writeb((v), (c)))
+#define writew_cpu(v, c)	((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
+#define writel_cpu(v, c)	((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
+
+#ifdef CONFIG_64BIT
+#define readq_cpu(c)		({ u64 __r = le64_to_cpu((__force __le64)__raw_readq(c)); __r; })
+#define writeq_cpu(v, c)	((void)__raw_writeq((__force u64)cpu_to_le64(v), (c)))
+#endif
+
+/*
+ * Relaxed I/O memory access primitives. These follow the Device memory
+ * ordering rules but do not guarantee any ordering relative to Normal memory
+ * accesses.  These are defined to order the indicated access (either a read or
+ * write) with all other I/O memory accesses. Since the platform specification
+ * defines that all I/O regions are strongly ordered on channel 2, no explicit
+ * fences are required to enforce this ordering.
+ */
+/* FIXME: These are now the same as asm-generic */
+#define __io_rbr()		do {} while (0)
+#define __io_rar()		do {} while (0)
+#define __io_rbw()		do {} while (0)
+#define __io_raw()		do {} while (0)
+
+#define readb_relaxed(c)	({ u8  __v; __io_rbr(); __v = readb_cpu(c); __io_rar(); __v; })
+#define readw_relaxed(c)	({ u16 __v; __io_rbr(); __v = readw_cpu(c); __io_rar(); __v; })
+#define readl_relaxed(c)	({ u32 __v; __io_rbr(); __v = readl_cpu(c); __io_rar(); __v; })
+
+#define writeb_relaxed(v, c)	({ __io_rbw(); writeb_cpu((v), (c)); __io_raw(); })
+#define writew_relaxed(v, c)	({ __io_rbw(); writew_cpu((v), (c)); __io_raw(); })
+#define writel_relaxed(v, c)	({ __io_rbw(); writel_cpu((v), (c)); __io_raw(); })
+
+#ifdef CONFIG_64BIT
+#define readq_relaxed(c)	({ u64 __v; __io_rbr(); __v = readq_cpu(c); __io_rar(); __v; })
+#define writeq_relaxed(v, c)	({ __io_rbw(); writeq_cpu((v), (c)); __io_raw(); })
+#endif
+
+/*
+ * I/O memory access primitives. Reads are ordered relative to any
+ * following Normal memory access. Writes are ordered relative to any prior
+ * Normal memory access.  The memory barriers here are necessary as RISC-V
+ * doesn't define any ordering between the memory space and the I/O space.
+ */
+#define __io_br()	do {} while (0)
+#define __io_ar(v)	__asm__ __volatile__ ("fence i,r" : : : "memory")
+#define __io_bw()	__asm__ __volatile__ ("fence w,o" : : : "memory")
+#define __io_aw()	mmiowb_set_pending()
+
+#define readb(c)	({ u8  __v; __io_br(); __v = readb_cpu(c); __io_ar(__v); __v; })
+#define readw(c)	({ u16 __v; __io_br(); __v = readw_cpu(c); __io_ar(__v); __v; })
+#define readl(c)	({ u32 __v; __io_br(); __v = readl_cpu(c); __io_ar(__v); __v; })
+
+#define writeb(v, c)	({ __io_bw(); writeb_cpu((v), (c)); __io_aw(); })
+#define writew(v, c)	({ __io_bw(); writew_cpu((v), (c)); __io_aw(); })
+#define writel(v, c)	({ __io_bw(); writel_cpu((v), (c)); __io_aw(); })
+
+#ifdef CONFIG_64BIT
+#define readq(c)	({ u64 __v; __io_br(); __v = readq_cpu(c); __io_ar(__v); __v; })
+#define writeq(v, c)	({ __io_bw(); writeq_cpu((v), (c)); __io_aw(); })
+#endif
+
+#endif /* _ASM_RISCV_MMIO_H */
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
