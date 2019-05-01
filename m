Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A2B10D85
	for <lists+linux-riscv@lfdr.de>; Wed,  1 May 2019 21:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ktYS4gMRVy/vcB532e22gRBumC6vIjNJC6y1T4xVZik=; b=D8TgnV2pemDL7M
	0p5+3ykZZdat08Eg8i0SZK1MOmqRdeG15HFNkFRyKn1Bn6q2vKx7ro9tJSD30sKVQ4EBXB9ghAaGD
	r8WzV1O4Hn9W1o/uCxNEBYYCKbUbZxDXA41ZdkeifapKTHyqfCxJNH4212YhIlSfhI7wxd0PmwPzV
	jo2AMrWPlh6l7A0ECL/QYTrBUf0YIKNO1/xTPsogiuDjQ43JBPJLciUf7NHb2M3kUlI5iLlYqWveU
	sRTHykMyLXp/WeR/KfyzZZo9yeSvvOCchVrKDV1Ms9D7aiFLsFInPLXtP/Hih90f7ioaa6qp8ExE6
	IC9zIbmYJX1cLV1FhJyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvLA-0006pU-V9; Wed, 01 May 2019 19:56:28 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvL7-0006p1-5n
 for linux-riscv@lists.infradead.org; Wed, 01 May 2019 19:56:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556740586; x=1588276586;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HiC1BhVQDcUK5m3uXFgIx1Wx/ouIkY0QSuBsbL+0D6U=;
 b=AyTGWg9wJdMPXq3rAJUV0ezMmO8VbLQbb2s7bkKLXaPU4XPsUZRgNBct
 d2FE1mqaRLZLe4TJb2aHHHFZpf/H1n4NuJ70IGG5Umtzacwfq9pd0mHIE
 zZdPSrk70GsC/3jhzHNhB0rmuLGdXiHm2ZUVObLAFiLhgTZWeE1A9TG2q
 v2VdWZbj4i88lZTraPmiLNJN97eIHGkQmZGJTf1907GEz8WPh7LiuwaWk
 kT27NWFp1ZfQpOkCzIHXgGdyevUAheD2GXLK5N2nTvEiPspagET1ymtyL
 SW/dVixvVyb4OPl+ytlTjXEh3pYhohJXwdkAWTog7WbohROwgoXeXhqIp A==;
X-IronPort-AV: E=Sophos;i="5.60,418,1549900800"; d="scan'208";a="112238828"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2019 03:56:24 +0800
IronPort-SDR: LedXF7kgRzRkvCRQOGwH7qQubRFzsy+5NtqeGruNonrYXoqX6DFCuIRzA2Cwbjb2QrRrp8BTeq
 tm83MUU8HpiC2ouE3wLixJvnOZV8v0k15mnLKhxOp7ioF5qqlyxpXSm8yldhR0vAuh8Ss+l+9I
 MiGT9cBARFUXL/NfyJ0tt/ZIf7YuR7oAcIv8cZAtt++47Q0/njGKnHDLhZ1VlKJSyw5o3CYYJd
 U5oRBOqmJiRXhw3nLI/HofoDaiAMmRx0e9OkTHAKkN5oOKg5prtIZ4q5xb3ikluEz8IxUnLuGa
 K9FRwJOMOoXw68oks14xLXeO
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 01 May 2019 12:34:51 -0700
IronPort-SDR: 64bfk7lvm02jAvWULVkiHb/LDqgE0xh3Jfd2ZwMXj3wwvTcqloWgF4crIPBBElJ+uAqK8WOvXg
 GxUEGfa4SH4uti10/WBT/xLdSi+O3g7k68OGaRp6/gZz16Zw5xg40885TNsmzlC5qXp+ZiV49e
 lMH/GQPI5qAMQ+xEyuHJOS2M9AeVJJlUKySfll9O+eHlzODL7TigzC3JW08F/O0U3fNi+hp1Qu
 CqwSo4nIIJBDkyeFwWkfE09yEdXggZGLPEc+bU8yYi5IIqRBdL45HyLwewfTwdJdk03ERuADwU
 QdY=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 01 May 2019 12:56:22 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
Date: Wed,  1 May 2019 12:56:07 -0700
Message-Id: <20190501195607.32553-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_125625_361234_7518706C 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 Zong Li <zong@andestech.com>, Atish Patra <atish.patra@wdc.com>,
 merker@debian.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, last stage boot loaders such as U-Boot can accept only
uImage which is an unnecessary additional step in automating boot flows.

Add a PE/COFF compliant image header that boot loaders can parse and
directly load kernel flat Image. The existing booting methods will continue
to work as it is.

Another goal of this header is to support EFI stub for RISC-V in future.
EFI specification needs PE/COFF image header in the beginning of the kernel
image in order to load it as an EFI application. In order to support
EFI stub, code0 should be replaced with "MZ" magic string and res5(at
offset 0x3c) should point to the rest of the PE/COFF header (which will
be added during EFI support).

Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
Changes from v1-v2:
1. Added additional reserved elements to make it fully PE compatible.
---
 arch/riscv/include/asm/image.h | 37 ++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/head.S       | 30 +++++++++++++++++++++++++++
 2 files changed, 67 insertions(+)
 create mode 100644 arch/riscv/include/asm/image.h

diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
new file mode 100644
index 000000000000..927333ededee
--- /dev/null
+++ b/arch/riscv/include/asm/image.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_IMAGE_H
+#define __ASM_IMAGE_H
+
+#define RISCV_IMAGE_MAGIC	"RISCV"
+
+#ifndef __ASSEMBLY__
+/*
+ * struct riscv_image_header - riscv kernel image header
+ *
+ * @code0:		Executable code
+ * @code1:		Executable code
+ * @text_offset:	Image load offset
+ * @image_size:		Effective Image size
+ * @reserved:		reserved
+ * @reserved:		reserved
+ * @reserved:		reserved
+ * @magic:		Magic number
+ * @reserved:		reserved
+ * @reserved:		reserved (will be used for PE COFF offset)
+ */
+
+struct riscv_image_header {
+	u32 code0;
+	u32 code1;
+	u64 text_offset;
+	u64 image_size;
+	u64 res1;
+	u64 res2;
+	u64 res3;
+	u64 magic;
+	u32 res4;
+	u32 res5;
+};
+#endif /* __ASSEMBLY__ */
+#endif /* __ASM_IMAGE_H */
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index fe884cd69abd..12d660d929ba 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -19,9 +19,39 @@
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
+	.dword 0
+	.dword 0
+	.dword 0
+	.asciz RISCV_IMAGE_MAGIC
+	.word 0
+	.word 0
+
+.global _start_kernel
+_start_kernel:
 	/* Mask all interrupts */
 	csrw sie, zero
 
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
