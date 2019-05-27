Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F01D2B79D
	for <lists+linux-riscv@lfdr.de>; Mon, 27 May 2019 16:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCw9E+6u2bQwTOMualRiSZ2WF0xnTPWBeNB73SLzy1s=; b=n3KE8nvMUYIELm
	LgyeRKv01Vx0JTHfZUSytlBcrEnWZOdFlTmrfN0MdTKVnfu3KBaKAnyosjS/eU7jBz8RaDnBjY6j4
	C1cUNxNEY3p5fhEZotL5CQsdNjZdOJMSnwhQXlIpRaBug32dyktv9B5UEB/C4UJEjS9pobLK/EZnt
	eDHS4ehGeULZJEK19A+TcsEqINhRlb2/c/71YuiQ2qpHvvMS/pv2xIrct5hy+OwukYeFIOebD2vsQ
	emV01JNpxElaZqpMeJri8I2hqivvfMDr+mOAiEWADXn3rg34fg3NqjaD7k7EvYVT9J9fRgklDsdzA
	B6uhAg+h0LFWTlGHlyow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVGie-00053G-5F; Mon, 27 May 2019 14:35:20 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVGiV-0004wA-42
 for linux-riscv@lists.infradead.org; Mon, 27 May 2019 14:35:12 +0000
Received: by mail-it1-x143.google.com with SMTP id t184so9845097itf.2
 for <linux-riscv@lists.infradead.org>; Mon, 27 May 2019 07:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6+XqkDysJ2lvGlKGrEtCwy0REIn7B+jIsk/sq1Q8Vh4=;
 b=E58Me3Tz1u/QoiJcikhnl2d3zng3tBKgKOumiiI6dv2g3y+O7kUWnv7Pjq1daDAW79
 D2ql/54QGPpUXEJlVLf2QocUirkcgoXaaf/MjFWeKtGv61T7bqi3EGvs+kqw+aDoZm6U
 vUW13b0mgBtfzU12+Dn6KuQDB/9foTXqGWLFv9noMC6JAPcNgTJPOzS6loCDWxKIwINN
 qt9tTZ42Nln/51H+8Zs00WfTMpQ/oeL9GMy7UNOXI9kWI102D1r/e8b2sa7+c+GEO5Wz
 FdTjUzSurlM44w2QWdZPiK+JHXLBf5eKib57d7N3Q0ovqeyEocFdmNsdRT85vnro54qq
 O6fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6+XqkDysJ2lvGlKGrEtCwy0REIn7B+jIsk/sq1Q8Vh4=;
 b=R6ygWaNRNPseTEXfRZYmZDHOta7M83KHUVdemVf6tteRfCoC9+QxPGBQHZg2Upl/Ju
 LIsAbWrENfZqEDSfxFSNzDIr0YrAHnzlrI287/138kj0YLOeWDxPgCanx1vSh9Dy1kUX
 cXOM2OE0YvfXuSaTX91Iw/rVpPwuvrUqLA2IS5sWkg6PX6tHl3cup8OJsTw2Idw4fKm2
 7lqFOeWT59LSlqY69KrZSOP0jV3bFbs42jCtzzHOE/ghESZB+jRstLmufS47UIi9ozU0
 dw/atnYD7+XMmowOn3CLKONXI5JkbzZQ5hdKefoI1padjby3hRKl6BGYXgYtdQY2gasM
 31ew==
X-Gm-Message-State: APjAAAWn3w+o3476TOodcW9YjOgse8AB+MzjENDjrvspJhLAdIAVwF0/
 QXVBYIqRjfVGZfssTnk2Wf42DFDEm4nVbApOtEOjLQ==
X-Google-Smtp-Source: APXvYqysuSDkEC03OKzYxKO9hKrSv/c6TWgGj1d7E77j/f1DATyHT2dJDdLLf5mCtN+89X3xLa7S0wjnjSrQaDCZhIY=
X-Received: by 2002:a02:ce37:: with SMTP id v23mr6771111jar.2.1558967709273;
 Mon, 27 May 2019 07:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190524041814.7497-1-atish.patra@wdc.com>
In-Reply-To: <20190524041814.7497-1-atish.patra@wdc.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 27 May 2019 16:34:57 +0200
Message-ID: <CAKv+Gu9U56b50TrfriBfRFed_1aoXg2Y624tu7v5m2y+6DVq5w@mail.gmail.com>
Subject: Re: [v4 PATCH] RISC-V: Add an Image header that boot loader can parse.
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_073511_178635_0DF90F80 
X-CRM114-Status: GOOD (  31.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Anup Patel <Anup.Patel@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, Nick Kossifidis <mick@ics.forth.gr>,
 Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Karsten Merker <merker@debian.org>, linux-riscv@lists.infradead.org,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 24 May 2019 at 06:18, Atish Patra <atish.patra@wdc.com> wrote:
>
> Currently, the last stage boot loaders such as U-Boot can accept only
> uImage which is an unnecessary additional step in automating boot
> process.
>
> Add an image header that boot loader understands and boot Linux from
> flat Image directly.
>
> This header is based on ARM64 boot image header and provides an
> opportunity to combine both ARM64 & RISC-V image headers in future.
>
> Also make sure that PE/COFF header can co-exist in the same image so
> that EFI stub can be supported for RISC-V in future. EFI specification
> needs PE/COFF image header in the beginning of the kernel image in order
> to load it as an EFI application. In order to support EFI stub, code0
> should be replaced with "MZ" magic string and res4(at offset 0x3c)
> should point to the rest of the PE/COFF header (which will be added
> during EFI support).
>
> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Karsten Merker <merker@debian.org>
> Tested-by: Karsten Merker <merker@debian.org> (QEMU+OpenSBI+U-Boot)
>
> ---
> I have not sent out corresponding U-Boot patch as all the changes are
> compatible with current u-boot support. Once, the kernel header format
> is agreed upon, I will update the U-Boot patch.
>
> Changes from v3->v4
> 1. Update the commit text to clarify about PE/COFF header.
>
> Changes from v2->v3
> 1. Modified reserved fields to define a header version.
> 2. Added header documentation.
>
> Changes from v1-v2:
> 1. Added additional reserved elements to make it fully PE compatible.
> ---
>  Documentation/riscv/boot-image-header.txt | 50 ++++++++++++++++++
>  arch/riscv/include/asm/image.h            | 64 +++++++++++++++++++++++
>  arch/riscv/kernel/head.S                  | 32 ++++++++++++
>  3 files changed, 146 insertions(+)
>  create mode 100644 Documentation/riscv/boot-image-header.txt
>  create mode 100644 arch/riscv/include/asm/image.h
>
> diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
> new file mode 100644
> index 000000000000..68abc2353cec
> --- /dev/null
> +++ b/Documentation/riscv/boot-image-header.txt
> @@ -0,0 +1,50 @@
> +                               Boot image header in RISC-V Linux
> +                       =============================================
> +
> +Author: Atish Patra <atish.patra@wdc.com>
> +Date  : 20 May 2019
> +
> +This document only describes the boot image header details for RISC-V Linux.
> +The complete booting guide will be available at Documentation/riscv/booting.txt.
> +
> +The following 64-byte header is present in decompressed Linux kernel image.
> +
> +       u32 code0;                /* Executable code */
> +       u32 code1;                /* Executable code */

Apologies for not mentioning this in my previous reply, but given that
you already know that you will need to put the magic string MZ at
offset 0x0, it makes more sense to not put any code there at all, but
educate the bootloader that the first executable instruction is at
offset 0x20, and put the spare fields right after it in case you ever
need more than 2 slots. (On arm64, we were lucky to be able to find an
opcode that happened to contain the MZ bit pattern and act almost like
a NOP, but it seems silly to rely on that for RISC-V as well)

So something like

u16 pe_res1;  /* MZ for EFI bootable images, don't care otherwise */
u8 magic[6];    /* "RISCV\0"

u64 text_offset;          /* Image load offset, little endian */
u64 image_size;           /* Effective Image size, little endian */
u64 flags;                /* kernel flags, little endian */

u32 code0;                /* Executable code */
u32 code1;                /* Executable code */

u64 reserved[2];     /* reserved for future use */

u32 version;              /* Version of this header */
u32 pe_res2;                 /* Reserved for PE COFF offset */



> +This header format is compliant with PE/COFF header and largely inspired from
> +ARM64 header. Thus, both ARM64 & RISC-V header can be combined into one common
> +header in future.
> +
> +Notes:
> +- This header can also be reused to support EFI stub for RISC-V in future. EFI
> +  specification needs PE/COFF image header in the beginning of the kernel image
> +  in order to load it as an EFI application. In order to support EFI stub,
> +  code0 should be replaced with "MZ" magic string and res5(at offset 0x3c) should
> +  point to the rest of the PE/COFF header.
> +
> +- version field indicate header version number.
> +       Bits 0:15  - Minor version
> +       Bits 16:31 - Major version
> +
> +  This preserves compatibility across newer and older version of the header.
> +  The current version is defined as 0.1.
> +
> +- res3 is reserved for offset to any other additional fields. This makes the
> +  header extendible in future. One example would be to accommodate ISA
> +  extension for RISC-V in future. For current version, it is set to be zero.
> +
> +- In current header, the flag field has only one field.
> +       Bit 0: Kernel endianness. 1 if BE, 0 if LE.
> +
> +- Image size is mandatory for boot loader to load kernel image. Booting will
> +  fail otherwise.
> diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
> new file mode 100644
> index 000000000000..61c9f20d2f19
> --- /dev/null
> +++ b/arch/riscv/include/asm/image.h
> @@ -0,0 +1,64 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __ASM_IMAGE_H
> +#define __ASM_IMAGE_H
> +
> +#define RISCV_IMAGE_MAGIC      "RISCV"
> +
> +
> +#define RISCV_IMAGE_FLAG_BE_SHIFT      0
> +#define RISCV_IMAGE_FLAG_BE_MASK       0x1
> +
> +#define RISCV_IMAGE_FLAG_LE            0
> +#define RISCV_IMAGE_FLAG_BE            1
> +
> +
> +#ifdef CONFIG_CPU_BIG_ENDIAN
> +#define __HEAD_FLAG_BE         RISCV_IMAGE_FLAG_BE
> +#else
> +#define __HEAD_FLAG_BE         RISCV_IMAGE_FLAG_LE
> +#endif
> +
> +#define __HEAD_FLAG(field)     (__HEAD_FLAG_##field << \
> +                               RISCV_IMAGE_FLAG_##field##_SHIFT)
> +
> +#define __HEAD_FLAGS           (__HEAD_FLAG(BE))
> +
> +#define RISCV_HEADER_VERSION_MAJOR 0
> +#define RISCV_HEADER_VERSION_MINOR 1
> +
> +#define RISCV_HEADER_VERSION (RISCV_HEADER_VERSION_MAJOR << 16 | \
> +                             RISCV_HEADER_VERSION_MINOR)
> +
> +#ifndef __ASSEMBLY__
> +/*
> + * struct riscv_image_header - riscv kernel image header
> + *
> + * @code0:             Executable code
> + * @code1:             Executable code
> + * @text_offset:       Image load offset
> + * @image_size:                Effective Image size
> + * @flags:             kernel flags
> + * @version:           version
> + * @reserved:          reserved
> + * @reserved:          reserved
> + * @magic:             Magic number
> + * @reserved:          reserved (will be used for additional RISC-V specific header)
> + * @reserved:          reserved (will be used for PE COFF offset)
> + */
> +
> +struct riscv_image_header {
> +       u32 code0;
> +       u32 code1;
> +       u64 text_offset;
> +       u64 image_size;
> +       u64 flags;
> +       u32 version;
> +       u32 res1;
> +       u64 res2;
> +       u64 magic;
> +       u32 res3;
> +       u32 res4;
> +};
> +#endif /* __ASSEMBLY__ */
> +#endif /* __ASM_IMAGE_H */
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 370c66ce187a..577893bb150d 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -19,9 +19,41 @@
>  #include <asm/thread_info.h>
>  #include <asm/page.h>
>  #include <asm/csr.h>
> +#include <asm/image.h>
>
>  __INIT
>  ENTRY(_start)
> +       /*
> +        * Image header expected by Linux boot-loaders. The image header data
> +        * structure is described in asm/image.h.
> +        * Do not modify it without modifying the structure and all bootloaders
> +        * that expects this header format!!
> +        */
> +       /* jump to start kernel */
> +       j _start_kernel
> +       /* reserved */
> +       .word 0
> +       .balign 8
> +#if __riscv_xlen == 64
> +       /* Image load offset(2MB) from start of RAM */
> +       .dword 0x200000
> +#else
> +       /* Image load offset(4MB) from start of RAM */
> +       .dword 0x400000
> +#endif
> +       /* Effective size of kernel image */
> +       .dword _end - _start
> +       .dword __HEAD_FLAGS
> +       .word RISCV_HEADER_VERSION
> +       .word 0
> +       .dword 0
> +       .asciz RISCV_IMAGE_MAGIC
> +       .word 0
> +       .balign 4
> +       .word 0
> +
> +.global _start_kernel
> +_start_kernel:
>         /* Mask all interrupts */
>         csrw CSR_SIE, zero
>         csrw CSR_SIP, zero
> --
> 2.21.0
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
