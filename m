Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC7866019
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jul 2019 21:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e45aIYEbupg42Vjo37aUXM0w/JcdsT/3vY/WZqSvRK0=; b=aIXNvCBE4uf1gK
	bTzrKKYr+0DizWY1r1bJcPK0mRRJrLFs8Zmomqurkv1k807zqeekzu+7t7cSkgHYVXl8MDqgNxW2U
	kK4ou2SvPu0+q/NHigB5v6mNMEOmnhLOjUvhzMp7d24FZ8NY0hfIqZcyIu41ygZ7lLsv2ddEFMyN4
	/ILl/vT7/FP2qW9SAT6jUipIJm01C18ZfiqGOpf01iIwwgo8j49xPm09kfKR2H4bzTzxeqQKtPbZp
	op9zcsXdg1IFE/tz4j3KY+AjoZjSnLnkOSA63MnlxTzkdmlTUYneOfV53ypK8YlK7kN2NfogrwU1y
	VG8h9QRw+FbWcFN/h+pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlexf-0004EU-EC; Thu, 11 Jul 2019 19:42:35 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlexb-0004D9-10
 for linux-riscv@lists.infradead.org; Thu, 11 Jul 2019 19:42:33 +0000
Received: by mail-io1-xd44.google.com with SMTP id u19so15125734ior.9
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jul 2019 12:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=MI4SXHOymT8P6kYfmh+Hx3e+cJoJ4h+bDPlaBCRc/oM=;
 b=QuWLHoVCrWD3y/0qNjoNEA2upf7ky0hnfkeX9Ac1qgCCN+ZBPgeH0bKgbDTSwhv2PT
 X9z1+3zGVntknKfTqUFWf+Hd07MCYNvFJyfe+mgX2fyoWF3u5vBWxh4BlTQTtlBrmq5l
 UyY3ARWGphmEiEtwg3h7lwgMyQ3FvqfEv08Ud332qxWgBnW0K/QgbaO+SZ3f5nFlBHKb
 g9Vu0T9xbCkvCp4QdXCPXvS8vQTkuK8Gb8G2xsAHvfdsQ+nMJPjVIUpTXp6CR3BY8D4R
 ckGGxC3dPmQeTqxH8JPNMK10XY3WcjuZqX3NVpvHBUMwaNOhttMxNPLSZMZerqXV5Jz9
 sHlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=MI4SXHOymT8P6kYfmh+Hx3e+cJoJ4h+bDPlaBCRc/oM=;
 b=EGyPmr9eS+upslWZyrfoG6ic8rXotiuxOoHq8aR7+FhSTgqbaKmO3uCwpX4HIMtDhW
 VOWIz7CAexAoFwuUZxVfFd4V/lKlYhddDq6896DlQXX0YirqKtfPneJF98nUi79AQNIJ
 I74GLQ13+SEGhSXjlgZd3d6IIdE7JAagupAhNO5Ld2Bjl1DfBgq+avHsM8IyYpqmAgtS
 wQUFZ/pOLzdhX98HoTS/X9S2uJAkLFPULROuZf2NTRmH9g6qLrJnk8yBcaO8BPhotS5v
 rGT82ImOKuaowV/mdCUQopa7ZfPb7mw209MUcWd//UndamAZ99gxQXXqyZjOogrekZfk
 pHig==
X-Gm-Message-State: APjAAAVJjw7kXQ4FwOr/5JdiQ85z3+syNFVHy7hI0ikTjPCR/1RCxvG1
 qy62ZyZqVkslh47b5vhXbxRHJQ==
X-Google-Smtp-Source: APXvYqyDvsY/AXHMOZ73B35scDK+tFyHuzlcUCFoHbVxI1bgQiG6SaWl4AkrszQZdiJyTz/K88ATmA==
X-Received: by 2002:a5d:9ec4:: with SMTP id a4mr6007973ioe.125.1562874147497; 
 Thu, 11 Jul 2019 12:42:27 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id m20sm6806256ioh.4.2019.07.11.12.42.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 12:42:26 -0700 (PDT)
Date: Thu, 11 Jul 2019 12:42:25 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH v4] RISC-V: Add an Image header that boot loader can parse.
In-Reply-To: <c0bdc25bc3aee9eee8bf9ebe561900b88df0540b.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907111237520.8586@viisi.sifive.com>
References: <20190606230800.19932-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1906281207290.3867@viisi.sifive.com>
 <c0bdc25bc3aee9eee8bf9ebe561900b88df0540b.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_124231_109291_5410E58E 
X-CRM114-Status: GOOD (  30.62  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 "trini@konsulko.com" <trini@konsulko.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>, "khilman@baylibre.com" <khilman@baylibre.com>,
 "mick@ics.forth.gr" <mick@ics.forth.gr>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "merker@debian.org" <merker@debian.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 28 Jun 2019, Atish Patra wrote:

> On Fri, 2019-06-28 at 12:09 -0700, Paul Walmsley wrote:
> > On Thu, 6 Jun 2019, Atish Patra wrote:
> > 
> > > Currently, the last stage boot loaders such as U-Boot can accept
> > > only
> > > uImage which is an unnecessary additional step in automating boot
> > > process.
> > > 
> > > Add an image header that boot loader understands and boot Linux
> > > from
> > > flat Image directly.
> > 
> > ...
> > 
> > 
> > > +#if __riscv_xlen == 64
> > > +	/* Image load offset(2MB) from start of RAM */
> > > +	.dword 0x200000
> > > +#else
> > > +	/* Image load offset(4MB) from start of RAM */
> > > +	.dword 0x400000
> > > +#endif
> > 
> > Is there a rationale behind these load offset values?
> > 
> 
> 2MB/4MB alignment requirement is mandatory for current RISC-V kernel.
> Anup had a patch that tried to remove that but not accepted yet.
> 
> https://patchwork.kernel.org/patch/10868465/

Thanks for doing this work; this should really help.  Patch queued with a 
few minor tweaks to the documentation file and to the comments.  (Updated 
patch below)

Not sure if this will make it for v5.3-rc1.  If not, we'll try to get it 
in as soon as possible afterwards.

Something else to think about: we'll probably want some flag bits soon to 
identify whether the kernel binary is a 32-bit, 64-bit, or 128-bit binary.  
If two bits are used, and 64-bit is defined as 00, then it should be 
backwards compatible.  I would hope that this could be something that we'd 
be able to coordinate with the ARM64 folks also; otherwise we may need to 
start using that res3 field.


- Paul

From: Atish Patra <atish.patra@wdc.com>
Date: Thu, 6 Jun 2019 16:08:00 -0700
Subject: [PATCH] RISC-V: Add an Image header that boot loader can parse.

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
[paul.walmsley@sifive.com: fixed whitespace in boot-image-header.txt;
 converted structure comment to kernel-doc format and added some detail]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 Documentation/riscv/boot-image-header.txt | 50 +++++++++++++++++
 arch/riscv/include/asm/image.h            | 65 +++++++++++++++++++++++
 arch/riscv/kernel/head.S                  | 32 +++++++++++
 3 files changed, 147 insertions(+)
 create mode 100644 Documentation/riscv/boot-image-header.txt
 create mode 100644 arch/riscv/include/asm/image.h

diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
new file mode 100644
index 000000000000..1b73fea23b39
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
+	Bits 0:15  - Minor version
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
index 000000000000..ef28e106f247
--- /dev/null
+++ b/arch/riscv/include/asm/image.h
@@ -0,0 +1,65 @@
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
+/**
+ * struct riscv_image_header - riscv kernel image header
+ * @code0:		Executable code
+ * @code1:		Executable code
+ * @text_offset:	Image load offset (little endian)
+ * @image_size:		Effective Image size (little endian)
+ * @flags:		kernel flags (little endian)
+ * @version:		version
+ * @res1:		reserved
+ * @res2:		reserved
+ * @magic:		Magic number
+ * @res3:		reserved (will be used for additional RISC-V specific
+ *			header)
+ * @res4:		reserved (will be used for PE COFF offset)
+ *
+ * The intention is for this header format to be shared between multiple
+ * architectures to avoid a proliferation of image header formats.
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
index e368106f2228..0f1ba17e476f 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -11,9 +11,41 @@
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
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
