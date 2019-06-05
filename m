Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8309636134
	for <lists+linux-riscv@lfdr.de>; Wed,  5 Jun 2019 18:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dLy6L/IvuCuDsBJoNFWzwlHlDGPo64WUwbE4q1RTnc=; b=lWJumAd0olWZIV
	WnCvo1VD+kRLGCKMeURTz2nsDIhkyIvxgMpjKDIG1nHnBRKoiHR+eXSmJGwANA2gneqlzt3QmqHBe
	DP3s8lMHwrwhfR/9U+400Lk4oYEmM5k9rOLO6Vg0NYedak6AIIdtGZ+i98kgedZXuZtoZRqmrPIRw
	RERsUF+xUZYHuNPOqXLFkFtiA9HAqDJfD3EA/g8lozv0UhJWUUfzCMK5syJbugGv5DyK2K//wLqyZ
	lZhbQBxulkN6frEM1fCwkxzW85IRCchEByNtJDox+UHHelewKSr+RQh6yB+FpMTSjfxgZki8/h1wc
	ZdfY+7qc0AHf/mYNYsyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYkS-0001PC-AF; Wed, 05 Jun 2019 16:26:48 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYkI-0001GW-SM; Wed, 05 Jun 2019 16:26:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6C75374;
 Wed,  5 Jun 2019 09:26:35 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 318D83F5AF;
 Wed,  5 Jun 2019 09:26:33 -0700 (PDT)
Date: Wed, 5 Jun 2019 17:26:30 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v3 PATCH] RISC-V: Add a PE/COFF compliant Image header.
Message-ID: <20190605162630.GE30925@lakrids.cambridge.arm.com>
References: <20190523183516.583-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523183516.583-1-atish.patra@wdc.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_092638_927672_84DC0AE3 
X-CRM114-Status: GOOD (  27.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jonathan Corbet <corbet@lwn.net>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-doc@vger.kernel.org, catalin.marinas@arm.com,
 Anup Patel <Anup.Patel@wdc.com>, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, Zong Li <zong@andestech.com>,
 marek.vasut@gmail.com, Palmer Dabbelt <palmer@sifive.com>,
 paul.walmsley@sifive.com, Nick Kossifidis <mick@ics.forth.gr>,
 linux-riscv@lists.infradead.org, trini@konsulko.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 11:35:16AM -0700, Atish Patra wrote:
> Currently, last stage boot loaders such as U-Boot can accept only
> uImage which is an unnecessary additional step in automating boot flows.
> 
> Add a PE/COFF compliant image header that boot loaders can parse and
> directly load kernel flat Image. The existing booting methods will continue
> to work as it is.
> 
> Another goal of this header is to support EFI stub for RISC-V in future.
> EFI specification needs PE/COFF image header in the beginning of the kernel
> image in order to load it as an EFI application. In order to support
> EFI stub, code0 should be replaced with "MZ" magic string and res5(at
> offset 0x3c) should point to the rest of the PE/COFF header (which will
> be added during EFI support).
> 
> This patch is based on ARM64 boot image header and provides an opprtunity
> to combine both ARM64 & RISC-V image headers.
> 
> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> 
> ---
> I have not sent out corresponding U-Boot patch as all the changes are
> compatible with current u-boot support. Once, the kernel header format
> is agreed upon, I will update the U-Boot patch.
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
> +				Boot image header in RISC-V Linux
> +			=============================================
> +
> +Author: Atish Patra <atish.patra@wdc.com>
> +Date  : 20 May 2019
> +
> +This document only describes the boot image header details for RISC-V Linux.
> +The complete booting guide will be available at Documentation/riscv/booting.txt.
> +
> +The following 64-byte header is present in decompressed Linux kernel image.
> +
> +	u32 code0;		  /* Executable code */
> +	u32 code1; 		  /* Executable code */
> +	u64 text_offset;	  /* Image load offset, little endian */
> +	u64 image_size;		  /* Effective Image size, little endian */
> +	u64 flags;		  /* kernel flags, little endian */
> +	u32 version;		  /* Version of this header */
> +	u32 res1  = 0;		  /* Reserved */
> +	u64 res2  = 0;    	  /* Reserved */
> +	u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
> +	u32 res3;		  /* Reserved for additional RISC-V specific header */
> +	u32 res4;		  /* Reserved for PE COFF offset */
> +
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
> +  	Bits 0:15  - Minor version
> +	Bits 16:31 - Major version
> +
> +  This preserves compatibility across newer and older version of the header.
> +  The current version is defined as 0.1.
> +
> +- res3 is reserved for offset to any other additional fields. This makes the
> +  header extendible in future. One example would be to accommodate ISA
> +  extension for RISC-V in future. For current version, it is set to be zero.
> +
> +- In current header, the flag field has only one field.
> +	Bit 0: Kernel endianness. 1 if BE, 0 if LE.
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
> +#define RISCV_IMAGE_MAGIC	"RISCV"
> +
> +
> +#define RISCV_IMAGE_FLAG_BE_SHIFT	0
> +#define RISCV_IMAGE_FLAG_BE_MASK	0x1
> +
> +#define RISCV_IMAGE_FLAG_LE		0
> +#define RISCV_IMAGE_FLAG_BE		1
> +
> +
> +#ifdef CONFIG_CPU_BIG_ENDIAN
> +#define __HEAD_FLAG_BE		RISCV_IMAGE_FLAG_BE
> +#else
> +#define __HEAD_FLAG_BE		RISCV_IMAGE_FLAG_LE
> +#endif
> +
> +#define __HEAD_FLAG(field)	(__HEAD_FLAG_##field << \
> +				RISCV_IMAGE_FLAG_##field##_SHIFT)
> +
> +#define __HEAD_FLAGS		(__HEAD_FLAG(BE))

If you have a CONFIG_CPU_BIG_ENDIAN kernel, this will not be
little-endian, nor will other fields in your header (e.g. the image
size), so I would recommend dropping this for now.

To manage that for the image_size field you'll probably need to play the
same linker trick games we play on arm64.

It's probably worth having:

#ifdef CONFIG_CPU_BIG_ENDIAN
#error conversion of header fields to LE not yet implemented
#endif

... to catch that later.

Thanks,
Mark,

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
