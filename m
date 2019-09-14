Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE56AB2972
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 05:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZLF9x2On9/ERnKxD1nTQVcuTttVkKZZPX9YZyVC7+vE=; b=gs1jickb9kwuwy
	XoHhubGI4A34dvH40isKbK38hdkvdrjOVXKiRPMoeNRWRe8c0A35BmomRJ0221jz118MoA384JOtC
	dUL+L5tL0Qv/dzsO512uUPbDa+Qy/OXGIzRQrCztnSIDWz0NJT9i9t+LOXLWoSJDyxMVyKZiBuARL
	rhnCteV5z7xA4QKmGNsjrUO3fhVT5p4oinXuoKlGuy4la84EB28xCXNBp16QDkWlECnUNL+cELnor
	HGjqrsVIoQyvWtZQW/vcGTHSPWYlNE7Y8z06Dw6sLwagnbCZsm2vRo37R1srYBxbrkxyLDZCxQWRq
	NOJreay2Cng2dyvNRXEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8yQ9-0000TI-9M; Sat, 14 Sep 2019 03:08:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8yQ6-0000St-5l
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 03:08:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id c10so4561630wmc.0
 for <linux-riscv@lists.infradead.org>; Fri, 13 Sep 2019 20:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=StncRQt0nDIHqdXIRXxEVWMfNs5X3Bj29Wh8Q5LIJYw=;
 b=IHM9Uf18MOWfsHuu7Rd2xT6UOKffI5Y6pEZI/wwZtUCVmPxZ7m6p1/tg/WgBRlmWZL
 6vgWbu2s1aifvPQ62veRv7JqbULXyFIpcjCClivffjPnWVRBPAmDL9hd5T+GOi9HrzOK
 u+0ULTtGdAjjOgJEpUd9WpbnfDTqvfQ59hUPKV7Nv6RQyfdxMF07NdVkT2LsBgjfj1OZ
 m7qcAhGLtnXTbbbIpqouOo3bnKxCjU7CPEiMEzhG8oxsNV2T4MVnFwk2DR1BzXpqL5ST
 GpymCt2ZNUkMcMiFhxrvm+AQa1yRnK4kXBTae6U6vdCvvVMYkNvm5asULLP894y9dLxt
 trUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=StncRQt0nDIHqdXIRXxEVWMfNs5X3Bj29Wh8Q5LIJYw=;
 b=dW1ZyUimpUQOk4J42aWNL1mtHJA1nJVT8rQWh813NBP3/0m9Uq6RsMtDezl6nJwjls
 XID1UjA6XoBdONON88rF1eNKhsBUfrvAl9tdL9PQ6WazctdXqSX0I467L9iE/xT5le7N
 oQYJxU8Zs+0hfRE1Q9hk0tmxPduB8JYmDhL9bkcKgvN/Rc3iDxGUjvQF/NIetcCLpwC+
 5y9ChW0V/8DPNvVWaDB7QXQMysgaeZykxjaxEk81HTn9nqsCkagxH3V5uauQ6P6dlfvv
 F8UjfOIfw5CUZ7sS7SpWJsjvPTLhTY9FwCgBvf2H6XElYGNiZQFd6uQF48CkcqfO0Z5g
 tQ4Q==
X-Gm-Message-State: APjAAAWYY0sdzmuZmk+YyJGz+6vnzF87xblz+0g4/zG6c/0FitbDWOk3
 c16V6jvc8Q4EjqAxT/Vs/Zlpxx5HQg8=
X-Google-Smtp-Source: APXvYqwyGPyPxvw7qS+Vgvo7f+0pfCgg/YnjuoHwAbhNoFfM8tNVwJUL/04XDltm9yB6O9ta2Y3hlA==
X-Received: by 2002:a7b:ce8f:: with SMTP id q15mr5500034wmj.106.1568430496196; 
 Fri, 13 Sep 2019 20:08:16 -0700 (PDT)
Received: from localhost (193-126-247-196.net.novis.pt. [193.126.247.196])
 by smtp.gmail.com with ESMTPSA id z1sm3884961wmf.20.2019.09.13.20.08.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 20:08:15 -0700 (PDT)
Date: Fri, 13 Sep 2019 20:08:14 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: modify the Image header to improve compatibility with
 the ARM64 header
Message-ID: <alpine.DEB.2.21.9999.1909132005200.24255@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_200818_230775_8B00E04C 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: merker@debian.org, atish.patra@wdc.com, palmer@sifive.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Part of the intention during the definition of the RISC-V kernel image
header was to lay the groundwork for a future merge with the ARM64
image header.  One error during my original review was not noticing
that the RISC-V header's "magic" field was at a different size and
position than the ARM64's "magic" field.  If the existing ARM64 Image
header parsing code were to attempt to parse an existing RISC-V kernel
image header format, it would see a magic number 0.  This is
undesirable, since it's our intention to align as closely as possible
with the ARM64 header format.  Another problem was that the original
"res3" field was not being initialized correctly to zero.

Address these issues by creating a 32-bit "magic2" field in the RISC-V
header which matches the ARM64 "magic" field.  RISC-V binaries will
store "RSC\x05" in this field.  The intention is that the use of the
existing 64-bit "magic" field in the RISC-V header will be deprecated
over time.  Increment the minor version number of the file format to
indicate this change, and update the documentation accordingly.  Fix
the assembler directives in head.S to ensure that reserved fields are
properly zero-initialized.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Reported-by: Palmer Dabbelt <palmer@sifive.com>
Cc: Atish Patra <atish.patra@wdc.com>
Cc: Karsten Merker <merker@debian.org>
---
Will try to get this merged before v5.3, to minimize the delta with the 
ARM64 header in the final release.

 Documentation/riscv/boot-image-header.txt | 13 +++++++------
 arch/riscv/include/asm/image.h            | 12 ++++++------
 arch/riscv/kernel/head.S                  |  4 ++--
 3 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
index 1b73fea23b39..14b1492f689b 100644
--- a/Documentation/riscv/boot-image-header.txt
+++ b/Documentation/riscv/boot-image-header.txt
@@ -18,7 +18,7 @@ The following 64-byte header is present in decompressed Linux kernel image.
 	u32 res1  = 0;		  /* Reserved */
 	u64 res2  = 0;    	  /* Reserved */
 	u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
-	u32 res3;		  /* Reserved for additional RISC-V specific header */
+	u32 magic2 = 0x56534905;  /* Magic number 2, little endian, "RSC\x05" */
 	u32 res4;		  /* Reserved for PE COFF offset */
 
 This header format is compliant with PE/COFF header and largely inspired from
@@ -37,13 +37,14 @@ Notes:
 	Bits 16:31 - Major version
 
   This preserves compatibility across newer and older version of the header.
-  The current version is defined as 0.1.
+  The current version is defined as 0.2.
 
-- res3 is reserved for offset to any other additional fields. This makes the
-  header extendible in future. One example would be to accommodate ISA
-  extension for RISC-V in future. For current version, it is set to be zero.
+- The "magic" field is deprecated as of version 0.2.  In a future
+  release, it may be removed.  This originally should have matched up
+  with the ARM64 header "magic" field, but unfortunately does not.
+  The "magic2" field replaces it, matching up with the ARM64 header.
 
-- In current header, the flag field has only one field.
+- In current header, the flags field has only one field.
 	Bit 0: Kernel endianness. 1 if BE, 0 if LE.
 
 - Image size is mandatory for boot loader to load kernel image. Booting will
diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
index ef28e106f247..344db5244547 100644
--- a/arch/riscv/include/asm/image.h
+++ b/arch/riscv/include/asm/image.h
@@ -3,7 +3,8 @@
 #ifndef __ASM_IMAGE_H
 #define __ASM_IMAGE_H
 
-#define RISCV_IMAGE_MAGIC	"RISCV"
+#define RISCV_IMAGE_MAGIC	"RISCV\0\0\0"
+#define RISCV_IMAGE_MAGIC2	"RSC\x05"
 
 #define RISCV_IMAGE_FLAG_BE_SHIFT	0
 #define RISCV_IMAGE_FLAG_BE_MASK	0x1
@@ -23,7 +24,7 @@
 #define __HEAD_FLAGS		(__HEAD_FLAG(BE))
 
 #define RISCV_HEADER_VERSION_MAJOR 0
-#define RISCV_HEADER_VERSION_MINOR 1
+#define RISCV_HEADER_VERSION_MINOR 2
 
 #define RISCV_HEADER_VERSION (RISCV_HEADER_VERSION_MAJOR << 16 | \
 			      RISCV_HEADER_VERSION_MINOR)
@@ -39,9 +40,8 @@
  * @version:		version
  * @res1:		reserved
  * @res2:		reserved
- * @magic:		Magic number
- * @res3:		reserved (will be used for additional RISC-V specific
- *			header)
+ * @magic:		Magic number (RISC-V specific; deprecated)
+ * @magic2:		Magic number 2 (to match the ARM64 'magic' field pos)
  * @res4:		reserved (will be used for PE COFF offset)
  *
  * The intention is for this header format to be shared between multiple
@@ -58,7 +58,7 @@ struct riscv_image_header {
 	u32 res1;
 	u64 res2;
 	u64 magic;
-	u32 res3;
+	u32 magic2;
 	u32 res4;
 };
 #endif /* __ASSEMBLY__ */
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 0f1ba17e476f..52eec0c1bf30 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -39,9 +39,9 @@ ENTRY(_start)
 	.word RISCV_HEADER_VERSION
 	.word 0
 	.dword 0
-	.asciz RISCV_IMAGE_MAGIC
-	.word 0
+	.ascii RISCV_IMAGE_MAGIC
 	.balign 4
+	.ascii RISCV_IMAGE_MAGIC2
 	.word 0
 
 .global _start_kernel
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
