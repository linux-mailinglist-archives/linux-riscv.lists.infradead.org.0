Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBFC3819B
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 01:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HdHmXonI9Y7/suhoa/UnbRJL0yIxgl6s7IKvmubJW7k=; b=V7nwZyvJ6my1tL
	BblZ7Kkvn+GRwhz+3IcG2ZzKwKrDqb6aBN32Sc+CpFag6Ji6iCZMh3Hzct74pUd5pzyfoF0laHhcj
	fQakOJQefTKXYjWYkbTG4Vlbpr+QHCpPjUjbBHw2+lX6ewr2XCuo0c3RXrFVlTWyKkdseVEkOX5h7
	H2eL6ncoW5WKRT0CRhwiylYL95sx0NChEWtXOyEq/IdT/HcLQ8IVC2kh8dveFPTWhMb/vTsm/ZuG1
	vk6MZLHZowzgTGjOdvOlrsEe1D/zHoX9b+hq0wjxgw97WkxD+xZvn9ZRaDcbJgbu95HncdXRUt++d
	YAUCJy+Wl+7VwGsrjL0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1Wa-0000Tq-Sd; Thu, 06 Jun 2019 23:10:25 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1Uw-0000Lb-19; Thu, 06 Jun 2019 23:08:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559862522; x=1591398522;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=upVlQ+4Mne3aPfXOJDTzQOYL5IxlDk66p/UoaDlefbc=;
 b=Sp0h06S8lyEmvtP5cHOV6F6DLiEn7TJ6T4LeOSLgOFZGLX6q7Vf8wYMx
 jULeu393J3O9/UaIbc1RdJUQycLu2X5w2Y+NE9hea3k3jKQy/npggu/8f
 qG5RFGv4W7sLNmLyVLo6CR75K42YeG8AbRipIPJgBURmRT5JxVjJK8E2g
 KfuCY62OH48H2YXuLevUSg17KkhQL74wPzvSYdtsS4Zus3WXKu/gZCtWA
 hoJHPGahv1zD9V6H0x+7hR0v+0oxNQsLzYtaVBFVFXukT+z6XzaAyWUeR
 0ShH224ofhGJ48YS8zlqfisqQP1UQYAiCRtU84wHP35rytvZ1Da3uxPgL A==;
X-IronPort-AV: E=Sophos;i="5.63,561,1557158400"; d="scan'208";a="111654861"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 07 Jun 2019 07:08:37 +0800
IronPort-SDR: NcoWzyAyhWG1f0JRTdbj5OBEdX+47sLlVoxrvWIt258+GnLjI6Lt9hSCKd0SDhXvRBn++A+Nyj
 nopZyG3m+19XR8XHeM4JOgA4K/wDk318eBgbH1Y9muwU+beuUugd+HfisItjas76GeYS3imhDL
 bctGp1FRRnN0AJ5T6vy/SQkXDnOZSPWmqAfVmCpcifEbA6lCH1Xp0t+MKn+YdhDRhclUZt1MC1
 42KQUe90zC9aBuu18H2QpXskl6ygARLvXsO7+67bFJNPeoaSjleqNCO/v+bg6nHdB54K5w9J9x
 nHAtQ5tWgXOgO2bnRUzzosvy
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 06 Jun 2019 15:45:55 -0700
IronPort-SDR: PmVJQWYCE7E1REr5WsNdXw+8u4L3f2dGZ/EsgKEefImQGJxpfKc4hMHenITq0au7C9ZAGH24uz
 4TfVRI6Tu+IzUq/UkqoMI1ROhwBixmIwnTUV+bOpXJeDqbEZehzK4j7/bnRQ6dkA1SWa77B0JH
 lSaWNxMYtG0ms8zwLAjBamviYMcg978SL3RBCqYlTc2E5mMZP2TiW5hEpnFhW00lfffSDw013k
 BZGjL4VSr8Nl9TEqjmY6rnqy6kE96yCNgehUIZBZBpb3Hg+vVfm1PuxF9kTW56skrgoX2UMja8
 Odc=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 06 Jun 2019 16:08:37 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4] RISC-V: Add an Image header that boot loader can parse.
Date: Thu,  6 Jun 2019 16:08:00 -0700
Message-Id: <20190606230800.19932-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_160844_511320_610A4978 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "trini@konsulko.com" <trini@konsulko.com>, Albert Ou <aou@eecs.berkeley.edu>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Kevin Hilman <khilman@baylibre.com>,
 Anup Patel <Anup.Patel@wdc.com>, linux-doc@vger.kernel.org,
 "will.deacon@arm.com" <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Nick Kossifidis <mick@ics.forth.gr>, Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Karsten Merker <merker@debian.org>, linux-riscv@lists.infradead.org,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
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
Tested-by: Kevin Hilman <khilman@baylibre.com> (OpenSBI + U-Boot + Linux)

---
I have not sent out corresponding U-Boot patch as all the changes are
compatible with current u-boot support. Once, the kernel header format
is agreed upon, I will update the U-Boot patch.

Changes from v4->v5
1. Error if CONFIG_CPU_BIG_ENDIAN is enabled in kernel.
2. Typo fix

Changes from v3->v4
1. Update the commit text to clarify about PE/COFF header.

Changes from v2->v3
1. Modified reserved fields to define a header version.
2. Added header documentation.

Changes from v1-v2:
1. Added additional reserved elements to make it fully PE compatible.
---
 Documentation/riscv/boot-image-header.txt | 50 ++++++++++++++++++
 arch/riscv/include/asm/image.h            | 62 +++++++++++++++++++++++
 arch/riscv/kernel/head.S                  | 32 ++++++++++++
 3 files changed, 144 insertions(+)
 create mode 100644 Documentation/riscv/boot-image-header.txt
 create mode 100644 arch/riscv/include/asm/image.h

diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
new file mode 100644
index 000000000000..acbf3b4cacfe
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
+ 	Bits 0:15  - Minor version
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
index 000000000000..13f4365d2dd6
--- /dev/null
+++ b/arch/riscv/include/asm/image.h
@@ -0,0 +1,62 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_IMAGE_H
+#define __ASM_IMAGE_H
+
+#define RISCV_IMAGE_MAGIC	"RISCV"
+
+#define RISCV_IMAGE_FLAG_BE_SHIFT	0
+#define RISCV_IMAGE_FLAG_BE_MASK	0x1
+
+#define RISCV_IMAGE_FLAG_LE		0
+#define RISCV_IMAGE_FLAG_BE		1
+
+#ifdef CONFIG_CPU_BIG_ENDIAN
+#error conversion of header fields to LE not yet implemented
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
