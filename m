Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E96D7731F
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 23:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Y18G1VDqi0KxvdmqI/oJm/dQeXjsq9QvVJtOOQQAGA=; b=iYe3ZfJOtZAr3D
	9nzl98HIGaLZ9UHv6XpCtw63b3xl3qexENRh+oJFuUCbz4u/x3J5XOErWpzrg7/DsZ5Nzgx/1muce
	ntMjzFekIBpuI6TY8X4k7FeYu9ydTr+YJnc62Fa9t9fniIjrhWO7dMTZMXa0DEwBdxrIqEc9QA8Hv
	AubJ2pY1Lz5o/YlKansa+DQXn/MyeYAYMoozPknT2NW8I4I26pxRUw7Zk47Ms1a3+0VZQc16NpvBK
	83BWsNuWN6qtSYYUNy6ja8HWMWa4RTZG6Z+dGq86UQOcos8jYARoxTQBof+sfyi+j2rUgcl93/FKp
	eoAycB6L29Yy27BlLaWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr7Lm-0006IQ-J2; Fri, 26 Jul 2019 21:02:02 +0000
Received: from [179.95.31.157] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hr7Lj-0006ID-PJ; Fri, 26 Jul 2019 21:01:59 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hr7Lh-0005HC-06; Fri, 26 Jul 2019 18:01:57 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH] docs: riscv: convert boot-image-header.txt to ReST
Date: Fri, 26 Jul 2019 18:01:55 -0300
Message-Id: <1eaeb3fbb74de55af0b3f6d93ab40776dcbbb5c8.1564174903.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <57eaa99a-d644-7b79-7177-a45d3ef1e71a@wdc.com>
References: <57eaa99a-d644-7b79-7177-a45d3ef1e71a@wdc.com>
MIME-Version: 1.0
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@infradead.org>,
 Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Karsten Merker <merker@debian.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Convert this small file to ReST format by:
   - Using a proper markup for the document title;
   - marking a code block as such;
   - use tags for Author and date;
   - use tables for bit map fields.

While here, fix a broken reference for a document with is
planned but is not here yet.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 ...image-header.txt => boot-image-header.rst} | 39 ++++++++++++-------
 Documentation/riscv/index.rst                 |  1 +
 2 files changed, 26 insertions(+), 14 deletions(-)
 rename Documentation/riscv/{boot-image-header.txt => boot-image-header.rst} (72%)

diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.rst
similarity index 72%
rename from Documentation/riscv/boot-image-header.txt
rename to Documentation/riscv/boot-image-header.rst
index 1b73fea23b39..43e9bd0731d5 100644
--- a/Documentation/riscv/boot-image-header.txt
+++ b/Documentation/riscv/boot-image-header.rst
@@ -1,22 +1,25 @@
-				Boot image header in RISC-V Linux
-			=============================================
+=================================
+Boot image header in RISC-V Linux
+=================================
 
-Author: Atish Patra <atish.patra@wdc.com>
-Date  : 20 May 2019
+:Author: Atish Patra <atish.patra@wdc.com>
+:Date:   20 May 2019
 
 This document only describes the boot image header details for RISC-V Linux.
-The complete booting guide will be available at Documentation/riscv/booting.txt.
 
-The following 64-byte header is present in decompressed Linux kernel image.
+TODO:
+  Write a complete booting guide.
+
+The following 64-byte header is present in decompressed Linux kernel image::
 
 	u32 code0;		  /* Executable code */
-	u32 code1; 		  /* Executable code */
+	u32 code1;		  /* Executable code */
 	u64 text_offset;	  /* Image load offset, little endian */
 	u64 image_size;		  /* Effective Image size, little endian */
 	u64 flags;		  /* kernel flags, little endian */
 	u32 version;		  /* Version of this header */
-	u32 res1  = 0;		  /* Reserved */
-	u64 res2  = 0;    	  /* Reserved */
+	u32 res1 = 0;		  /* Reserved */
+	u64 res2 = 0;		  /* Reserved */
 	u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
 	u32 res3;		  /* Reserved for additional RISC-V specific header */
 	u32 res4;		  /* Reserved for PE COFF offset */
@@ -25,16 +28,21 @@ This header format is compliant with PE/COFF header and largely inspired from
 ARM64 header. Thus, both ARM64 & RISC-V header can be combined into one common
 header in future.
 
-Notes:
+Notes
+=====
+
 - This header can also be reused to support EFI stub for RISC-V in future. EFI
   specification needs PE/COFF image header in the beginning of the kernel image
   in order to load it as an EFI application. In order to support EFI stub,
   code0 should be replaced with "MZ" magic string and res5(at offset 0x3c) should
   point to the rest of the PE/COFF header.
 
-- version field indicate header version number.
-	Bits 0:15  - Minor version
-	Bits 16:31 - Major version
+- version field indicate header version number
+
+	==========  =============
+	Bits 0:15   Minor version
+	Bits 16:31  Major version
+	==========  =============
 
   This preserves compatibility across newer and older version of the header.
   The current version is defined as 0.1.
@@ -44,7 +52,10 @@ Notes:
   extension for RISC-V in future. For current version, it is set to be zero.
 
 - In current header, the flag field has only one field.
-	Bit 0: Kernel endianness. 1 if BE, 0 if LE.
+
+	=====  ====================================
+	Bit 0  Kernel endianness. 1 if BE, 0 if LE.
+	=====  ====================================
 
 - Image size is mandatory for boot loader to load kernel image. Booting will
   fail otherwise.
diff --git a/Documentation/riscv/index.rst b/Documentation/riscv/index.rst
index e3ca0922a8c2..215fd3c1f2d5 100644
--- a/Documentation/riscv/index.rst
+++ b/Documentation/riscv/index.rst
@@ -5,6 +5,7 @@ RISC-V architecture
 .. toctree::
     :maxdepth: 1
 
+    boot-image-header
     pmu
 
 .. only::  subproject and html
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
