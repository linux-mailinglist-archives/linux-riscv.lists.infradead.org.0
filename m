Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B261B2B27
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 14:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=bDV3kQw0d/hbiQelm+NENREaUvrxxcFAevdFfsBUZag=; b=SezWVHRUqtf0QGqdq+A5/DWBx
	syPepUlpHWWgn0McLlnYlvc/OC4JZVZDKH2IvEhvJJrEhAQQBshu2b77k0vQJNcfREyFy/RWx2CMb
	NQOLkAgo01pZAwsOrZ1mRfrVdRA8XLqinfpF7krjFa6ReOzyE0RKwBB1Yg60/23rOznCV2BdH956n
	pRgiLQSwyf1nubN9RV660SAFITh8oOl0YOQJ75Bv0YCmcmw6vPE31wrVOytqz91np4iFQ91BWjtch
	i84gkCqguFs+tBK1AGV+j0Zb+V6lzu5lcFrSA0kKvwpYfFLSxIHthhDZVIicVTWJdUga1tLfH7L8W
	FpL3EVrLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i970l-0006oA-DW; Sat, 14 Sep 2019 12:18:43 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i970f-0006nn-1v
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 12:18:38 +0000
Received: by mail-pf1-f194.google.com with SMTP id b128so830949pfa.1
 for <linux-riscv@lists.infradead.org>; Sat, 14 Sep 2019 05:18:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=eG246burL7Epz04lN/Agoxuxu8FKEZNpqBGb+bGHtZM=;
 b=fhdvR9pLRxVe02DSnWGb1MaCdgl/hetZS7bMsuVaMpIBMLHcLZqutFrT3byyh2/bOa
 dZv1tHuSk1o75c9/PqkXmkOtMBRGuwzm6NwvK7KTuAtFiY+a2JK3mBAbYxpiqp17iukg
 +5z7216Bcks3bKwuVKWOYEbIin9PDhk6TijVqKMZV+p8IoS6zbyQklX6UDtU5U+GTj8l
 NCywNWyOBY5dYTF/RzPpWBPZvtVlVNRpDIhHORkpbEt6jifT9Y/SLiHNFPACI5jk3gZJ
 7w9don1BuarXTRmfUKzmbVei1nUsUQBTWul85c0xYXIo2CMFtMCwJG2McvzLUGM8Yldp
 72kA==
X-Gm-Message-State: APjAAAXVyldatWnarxwuIB9EUvk7XJtL1jQnuBX5qZYXDPUNv7gxHVWH
 U5B14wNGMtDc1/X/GnpcqkPPkgynTn0LUgXg
X-Google-Smtp-Source: APXvYqzVgQrhKkG6g0lvhiBLe+qqPUOeknf2nbS5nMorxrOX2tNnSXyV1t7CeZmF/cqojo4WNJoebg==
X-Received: by 2002:a63:355:: with SMTP id 82mr16568722pgd.81.1568463512195;
 Sat, 14 Sep 2019 05:18:32 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id m12sm2344408pff.66.2019.09.14.05.18.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 05:18:30 -0700 (PDT)
Date: Sat, 14 Sep 2019 05:18:30 -0700 (PDT)
X-Google-Original-Date: Sat, 14 Sep 2019 05:18:21 PDT (-0700)
Subject: Re: [PATCH] riscv: modify the Image header to improve compatibility
 with the ARM64 header
In-Reply-To: <alpine.DEB.2.21.9999.1909132005200.24255@viisi.sifive.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-755b14c4-8f35-4079-a7ff-e421fd1b02bc@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_051837_101051_A236DF8C 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: merker@debian.org, Atish Patra <Atish.Patra@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 13 Sep 2019 20:08:14 PDT (-0700), Paul Walmsley wrote:
>
> Part of the intention during the definition of the RISC-V kernel image
> header was to lay the groundwork for a future merge with the ARM64
> image header.  One error during my original review was not noticing
> that the RISC-V header's "magic" field was at a different size and
> position than the ARM64's "magic" field.  If the existing ARM64 Image
> header parsing code were to attempt to parse an existing RISC-V kernel
> image header format, it would see a magic number 0.  This is
> undesirable, since it's our intention to align as closely as possible
> with the ARM64 header format.  Another problem was that the original
> "res3" field was not being initialized correctly to zero.
>
> Address these issues by creating a 32-bit "magic2" field in the RISC-V
> header which matches the ARM64 "magic" field.  RISC-V binaries will
> store "RSC\x05" in this field.  The intention is that the use of the
> existing 64-bit "magic" field in the RISC-V header will be deprecated
> over time.  Increment the minor version number of the file format to
> indicate this change, and update the documentation accordingly.  Fix
> the assembler directives in head.S to ensure that reserved fields are
> properly zero-initialized.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Reported-by: Palmer Dabbelt <palmer@sifive.com>
> Cc: Atish Patra <atish.patra@wdc.com>
> Cc: Karsten Merker <merker@debian.org>
> ---
> Will try to get this merged before v5.3, to minimize the delta with the
> ARM64 header in the final release.
>
>  Documentation/riscv/boot-image-header.txt | 13 +++++++------
>  arch/riscv/include/asm/image.h            | 12 ++++++------
>  arch/riscv/kernel/head.S                  |  4 ++--
>  3 files changed, 15 insertions(+), 14 deletions(-)
>
> diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
> index 1b73fea23b39..14b1492f689b 100644
> --- a/Documentation/riscv/boot-image-header.txt
> +++ b/Documentation/riscv/boot-image-header.txt
> @@ -18,7 +18,7 @@ The following 64-byte header is present in decompressed Linux kernel image.
>  	u32 res1  = 0;		  /* Reserved */
>  	u64 res2  = 0;    	  /* Reserved */
>  	u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
> -	u32 res3;		  /* Reserved for additional RISC-V specific header */
> +	u32 magic2 = 0x56534905;  /* Magic number 2, little endian, "RSC\x05" */
>  	u32 res4;		  /* Reserved for PE COFF offset */
>
>  This header format is compliant with PE/COFF header and largely inspired from
> @@ -37,13 +37,14 @@ Notes:
>  	Bits 16:31 - Major version
>
>    This preserves compatibility across newer and older version of the header.
> -  The current version is defined as 0.1.
> +  The current version is defined as 0.2.
>
> -- res3 is reserved for offset to any other additional fields. This makes the
> -  header extendible in future. One example would be to accommodate ISA
> -  extension for RISC-V in future. For current version, it is set to be zero.
> +- The "magic" field is deprecated as of version 0.2.  In a future
> +  release, it may be removed.  This originally should have matched up
> +  with the ARM64 header "magic" field, but unfortunately does not.
> +  The "magic2" field replaces it, matching up with the ARM64 header.
>
> -- In current header, the flag field has only one field.
> +- In current header, the flags field has only one field.
>  	Bit 0: Kernel endianness. 1 if BE, 0 if LE.
>
>  - Image size is mandatory for boot loader to load kernel image. Booting will
> diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
> index ef28e106f247..344db5244547 100644
> --- a/arch/riscv/include/asm/image.h
> +++ b/arch/riscv/include/asm/image.h
> @@ -3,7 +3,8 @@
>  #ifndef __ASM_IMAGE_H
>  #define __ASM_IMAGE_H
>
> -#define RISCV_IMAGE_MAGIC	"RISCV"
> +#define RISCV_IMAGE_MAGIC	"RISCV\0\0\0"
> +#define RISCV_IMAGE_MAGIC2	"RSC\x05"
>
>  #define RISCV_IMAGE_FLAG_BE_SHIFT	0
>  #define RISCV_IMAGE_FLAG_BE_MASK	0x1
> @@ -23,7 +24,7 @@
>  #define __HEAD_FLAGS		(__HEAD_FLAG(BE))
>
>  #define RISCV_HEADER_VERSION_MAJOR 0
> -#define RISCV_HEADER_VERSION_MINOR 1
> +#define RISCV_HEADER_VERSION_MINOR 2
>
>  #define RISCV_HEADER_VERSION (RISCV_HEADER_VERSION_MAJOR << 16 | \
>  			      RISCV_HEADER_VERSION_MINOR)
> @@ -39,9 +40,8 @@
>   * @version:		version
>   * @res1:		reserved
>   * @res2:		reserved
> - * @magic:		Magic number
> - * @res3:		reserved (will be used for additional RISC-V specific
> - *			header)
> + * @magic:		Magic number (RISC-V specific; deprecated)
> + * @magic2:		Magic number 2 (to match the ARM64 'magic' field pos)
>   * @res4:		reserved (will be used for PE COFF offset)
>   *
>   * The intention is for this header format to be shared between multiple
> @@ -58,7 +58,7 @@ struct riscv_image_header {
>  	u32 res1;
>  	u64 res2;
>  	u64 magic;
> -	u32 res3;
> +	u32 magic2;
>  	u32 res4;
>  };
>  #endif /* __ASSEMBLY__ */
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 0f1ba17e476f..52eec0c1bf30 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -39,9 +39,9 @@ ENTRY(_start)
>  	.word RISCV_HEADER_VERSION
>  	.word 0
>  	.dword 0
> -	.asciz RISCV_IMAGE_MAGIC
> -	.word 0
> +	.ascii RISCV_IMAGE_MAGIC
>  	.balign 4
> +	.ascii RISCV_IMAGE_MAGIC2
>  	.word 0
>
>  .global _start_kernel

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
