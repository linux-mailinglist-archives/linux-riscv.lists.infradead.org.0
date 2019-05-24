Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3517828FE2
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 06:19:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WKsvUNpisaY5kwuy2h0uljzqZh+buwGpZnovtN5nYGE=; b=EdG/+EWvIcrM5F
	Tg45Hs7trFJ9ya5JCYUP4ZrJ+KahsGVMcm6F+Bg74YyhZdzDXSoCmLJBIzqkyGKe/DVpxR0cIwWxT
	hKId04X7oK9kWrRgT1QhevyWf4EBgAFFwR3Jh7NdPAJGCkV/2i+pWpMt0VDNjFsTes+TIV+1F9lpN
	+B9lxz1UyDNUsR4tNiGUdDTbuNXYO/jo4tAC/xauBdiFpqIEsGq+xUWWA1PCvrgRxFS1S8f9iiSb8
	EqWJ2rTt7iKikBqJ0FsvdQucRwQGvSIEpcQGR/oDSKdFQeGaxraI1MD/VQ6M8ukqBrBiDfdU4zrWf
	+ekh+OJUnryF5iqhqRnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1fV-00050b-1L; Fri, 24 May 2019 04:18:57 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1fQ-000503-NN; Fri, 24 May 2019 04:18:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558671533; x=1590207533;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kpAUTdu+s3Bqv6wA/9SKsl84MGlY7n2l9hP/DaqKAWE=;
 b=Ay9ikx9DA+JPkoH/Itinc3IWm+i3VOGmCrYAnSYT3lRhgYEOIZtQ/NlG
 eREQhSkCLpgoX0iRq9deDhN7aL+QnEM2RHLPhenlAjjUEhsp6GrnU8Pqa
 k1t76VfyecrlQ1MP/MsAdMvbAnsUFhS5KLHd3FZ2rqhC3FHasxnwmpYNg
 qtEpfuqBSqtiiPJchVv6r6IlHBAyk5QVCDEQP3XN+xZgUSNBWskQ+KHNz
 G8Wk5Pzib8GqNBVr6gc6Yy4i5ysJFcUEHpsFK5lFwetgeEd/Py9plg0cf
 UGElQx66IEULY1T6D8oU6dGPOuCswJxjZnav0rh4BfT7yEmPXRD7l4/dg Q==;
X-IronPort-AV: E=Sophos;i="5.60,505,1549900800"; d="scan'208";a="110246319"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 24 May 2019 12:18:49 +0800
IronPort-SDR: tPjyrG37WQysnXolPYHKjl8O5Zxuzo17s/scr51IdMl0HZJgEMs+qJiY77fF/5UlO2da/DJMmS
 z9W4/B1MRk70MACqyXTAjlWpndTaQgkkYcps6f/lRzVS3vd+te0L3VzxBTBj9thEiaHFPS8kyf
 Ssrp9hl1Lu4o4QNV3RwaaC+f2cTHJ0VSxl64413OaKrCYjESJtRZwIQLBzTJ5NDiq8pzKumbLW
 L7OGliYio1CUfrxfHWRjODLBIen9J0c7/MZ6zUzNT+FTZUPGY8x772+1uPTTpFOjCuSAFrgQOi
 ouzq672bAkVA+Ay1Nv1/YV3T
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 23 May 2019 20:56:30 -0700
IronPort-SDR: 5shGaPH1nVHyaJqsvy2c080RP96se6h3f4gy7NlCzqk7lf5ILFLe5hC8lI54N9w8qEeZvN694p
 +BYEQyQs91V3Gxpykzq9dCMEW4r3kbJB8ABZZR4n13ydC/M1BvHcgclxzHppZlffS3SBoykiec
 eatAvf4PUmRDAblSxEQh6MQm3db3C3ORCZHSh3Bg2ttxX63Wl+cO4FFspmclJFPmarQ+N7MZef
 BApccEiYzu/Idw1gfomMv8kaga3Z8gXBBWKKXXx54MJXzyoXBCRSiFEWsKLz9h28BnzdYDks5x
 9us=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 23 May 2019 21:18:49 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v4 PATCH] RISC-V: Add an Image header that boot loader can parse.
Date: Thu, 23 May 2019 21:18:14 -0700
Message-Id: <20190524041814.7497-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_211852_892171_397D572A 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, Jonathan Corbet <corbet@lwn.net>,
 Albert Ou <aou@eecs.berkeley.edu>, linux-doc@vger.kernel.org,
 ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 Anup Patel <Anup.Patel@wdc.com>, Zong Li <zong@andestech.com>,
 Atish Patra <atish.patra@wdc.com>, Nick Kossifidis <mick@ics.forth.gr>,
 Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Karsten Merker <merker@debian.org>, linux-riscv@lists.infradead.org,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, the last stage boot loaders such as U-Boot can accept only
uImage which is an unnecessary additional step in automating boot
process.

Add an image header that boot loader understands and boot Linux from
flat Image directly.

This header is based on ARM64 boot image header and provides an
opportunity to combine both ARM64 & RISC-V image headers in future.

Also make sure that PE/COFF header can co-exist in the same image so
that EFI stub can be supported for RISC-V in future. EFI specification
needs PE/COFF image header in the beginning of the kernel image in order
to load it as an EFI application. In order to support EFI stub, code0
should be replaced with "MZ" magic string and res4(at offset 0x3c)
should point to the rest of the PE/COFF header (which will be added
during EFI support).

Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Karsten Merker <merker@debian.org>
Tested-by: Karsten Merker <merker@debian.org> (QEMU+OpenSBI+U-Boot)

---
I have not sent out corresponding U-Boot patch as all the changes are
compatible with current u-boot support. Once, the kernel header format
is agreed upon, I will update the U-Boot patch.

Changes from v3->v4
1. Update the commit text to clarify about PE/COFF header.

Changes from v2->v3
1. Modified reserved fields to define a header version.
2. Added header documentation.

Changes from v1-v2:
1. Added additional reserved elements to make it fully PE compatible.
---
 Documentation/riscv/boot-image-header.txt | 50 ++++++++++++++++++
 arch/riscv/include/asm/image.h            | 64 +++++++++++++++++++++++
 arch/riscv/kernel/head.S                  | 32 ++++++++++++
 3 files changed, 146 insertions(+)
 create mode 100644 Documentation/riscv/boot-image-header.txt
 create mode 100644 arch/riscv/include/asm/image.h

diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
new file mode 100644
index 000000000000..68abc2353cec
--- /dev/null
+++ b/Documentation/riscv/boot-image-header.txt
@@ -0,0 +1,50 @@
+				Boot image header in RISC-V Linux
+			=============================================
+
+Author: Atish Patra <atish.patra@wdc.com>
+Date  : 20 May 2019
+
+This document only describes the boot image header details for RISC-V Linux.
+The complete booting guide will be available at Documentation/riscv/booting.txt.
+
+The following 64-byte header is present in decompressed Linux kernel image.
+
+	u32 code0;		  /* Executable code */
+	u32 code1; 		  /* Executable code */
+	u64 text_offset;	  /* Image load offset, little endian */
+	u64 image_size;		  /* Effective Image size, little endian */
+	u64 flags;		  /* kernel flags, little endian */
+	u32 version;		  /* Version of this header */
+	u32 res1  = 0;		  /* Reserved */
+	u64 res2  = 0;    	  /* Reserved */
+	u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
+	u32 res3;		  /* Reserved for additional RISC-V specific header */
+	u32 res4;		  /* Reserved for PE COFF offset */
+
+This header format is compliant with PE/COFF header and largely inspired from
+ARM64 header. Thus, both ARM64 & RISC-V header can be combined into one common
+header in future.
+
+Notes:
+- This header can also be reused to support EFI stub for RISC-V in future. EFI
+  specification needs PE/COFF image header in the beginning of the kernel image
+  in order to load it as an EFI application. In order to support EFI stub,
+  code0 should be replaced with "MZ" magic string and res5(at offset 0x3c) should
+  point to the rest of the PE/COFF header.
+
+- version field indicate header version number.
+  	Bits 0:15  - Minor version
+	Bits 16:31 - Major version
+
+  This preserves compatibility across newer and older version of the header.
+  The current version is defined as 0.1.
+
+- res3 is reserved for offset to any other additional fields. This makes the
+  header extendible in future. One example would be to accommodate ISA
+  extension for RISC-V in future. For current version, it is set to be zero.
+
+- In current header, the flag field has only one field.
+	Bit 0: Kernel endianness. 1 if BE, 0 if LE.
+
+- Image size is mandatory for boot loader to load kernel image. Booting will
+  fail otherwise.
diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
new file mode 100644
index 000000000000..61c9f20d2f19
--- /dev/null
+++ b/arch/riscv/include/asm/image.h
@@ -0,0 +1,64 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_IMAGE_H
+#define __ASM_IMAGE_H
+
+#define RISCV_IMAGE_MAGIC	"RISCV"
+
+
+#define RISCV_IMAGE_FLAG_BE_SHIFT	0
+#define RISCV_IMAGE_FLAG_BE_MASK	0x1
+
+#define RISCV_IMAGE_FLAG_LE		0
+#define RISCV_IMAGE_FLAG_BE		1
+
+
+#ifdef CONFIG_CPU_BIG_ENDIAN
+#define __HEAD_FLAG_BE		RISCV_IMAGE_FLAG_BE
+#else
+#define __HEAD_FLAG_BE		RISCV_IMAGE_FLAG_LE
+#endif
+
+#define __HEAD_FLAG(field)	(__HEAD_FLAG_##field << \
+				RISCV_IMAGE_FLAG_##field##_SHIFT)
+
+#define __HEAD_FLAGS		(__HEAD_FLAG(BE))
+
+#define RISCV_HEADER_VERSION_MAJOR 0
+#define RISCV_HEADER_VERSION_MINOR 1
+
+#define RISCV_HEADER_VERSION (RISCV_HEADER_VERSION_MAJOR << 16 | \
+			      RISCV_HEADER_VERSION_MINOR)
+
+#ifndef __ASSEMBLY__
+/*
+ * struct riscv_image_header - riscv kernel image header
+ *
+ * @code0:		Executable code
+ * @code1:		Executable code
+ * @text_offset:	Image load offset
+ * @image_size:		Effective Image size
+ * @flags:		kernel flags
+ * @version:		version
+ * @reserved:		reserved
+ * @reserved:		reserved
+ * @magic:		Magic number
+ * @reserved:		reserved (will be used for additional RISC-V specific header)
+ * @reserved:		reserved (will be used for PE COFF offset)
+ */
+
+struct riscv_image_header {
+	u32 code0;
+	u32 code1;
+	u64 text_offset;
+	u64 image_size;
+	u64 flags;
+	u32 version;
+	u32 res1;
+	u64 res2;
+	u64 magic;
+	u32 res3;
+	u32 res4;
+};
+#endif /* __ASSEMBLY__ */
+#endif /* __ASM_IMAGE_H */
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 370c66ce187a..577893bb150d 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -19,9 +19,41 @@
 #include <asm/thread_info.h>
 #include <asm/page.h>
 #include <asm/csr.h>
+#include <asm/image.h>
 
 __INIT
 ENTRY(_start)
+	/*
+	 * Image header expected by Linux boot-loaders. The image header data
+	 * structure is described in asm/image.h.
+	 * Do not modify it without modifying the structure and all bootloaders
+	 * that expects this header format!!
+	 */
+	/* jump to start kernel */
+	j _start_kernel
+	/* reserved */
+	.word 0
+	.balign 8
+#if __riscv_xlen == 64
+	/* Image load offset(2MB) from start of RAM */
+	.dword 0x200000
+#else
+	/* Image load offset(4MB) from start of RAM */
+	.dword 0x400000
+#endif
+	/* Effective size of kernel image */
+	.dword _end - _start
+	.dword __HEAD_FLAGS
+	.word RISCV_HEADER_VERSION
+	.word 0
+	.dword 0
+	.asciz RISCV_IMAGE_MAGIC
+	.word 0
+	.balign 4
+	.word 0
+
+.global _start_kernel
+_start_kernel:
 	/* Mask all interrupts */
 	csrw CSR_SIE, zero
 	csrw CSR_SIP, zero
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
