Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BBF773FB
	for <lists+linux-riscv@lfdr.de>; Sat, 27 Jul 2019 00:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KxaVdpz93R5EsXShnSl76m4+xg2WHljQXeCaaZEnzoE=; b=Ph90eJh9Aqfq6stFkafX4Ybr5
	P7BvGfZUA56G0PbdYBMMbeWFhGrzjIM9fgSIrDqY64+2PKSIObBXVWWHfOaMZmrbhaCGZnr1f5VdM
	YEP0CA55bM8AYyiENkJ+9JTyI9JylTtWFFORpCpD0k8u8wAfV1v08sMJ8+s7Teelx4txC79THsPsi
	/fV/LvSJdkJRWeyVCNVYIufp7Mc1O8UpdB+rMEpl0PtWEnOWzaVfHWqF+wim+ymih0Lw1zXO36ul+
	8TPl5WiMMBAUQNljyZyPIjPLKIfSnTJsdwDZjI8DLyX3VLLPTpE7okQNurZWljqhdO23iwffj2U1h
	aMeKSYdCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr8df-00066k-CV; Fri, 26 Jul 2019 22:24:35 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr8db-00066D-Nd
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 22:24:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564179872; x=1595715872;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=if3brqcdHB/fxxSNFjpR7EE+qJbzAZzvUpJK8gt9Dh8=;
 b=nJxyf937h5pE0uouhs2WKRssqb/9ADv1sSjjwUjpxznOsviOhKMFYA/P
 LW5El8j+yeOSWzzljHESYVrI9OoBj0cL6JTJhHASPlTVRgK9bsPJ0Yr1f
 LJDX6GEV8t9fuEGFQqhkEcw7ZlrC63eRlVZurYCl3ls1yrRnfyP/R9L17
 0Oqw6R+5+pKR7c7ZE4JOd1dM6iPYYJaEXMTMv0an+YSnbXIKywdygKvqD
 kRx2W4Lzgg7TkmkUdHzcUQleHkWubNjmDncyeaI+HbfrPPgFrWzEfDrmK
 gRv/GBfjubH49K1yuYlebo/X36QlDv1ClGG+k4iq+rSeotTR86EJoAsGA A==;
IronPort-SDR: HnTGCxv1WAOOnGwlngit6uOx6sZ5jqLgnHSo1aHRVnV3NDQJVFiqurpEv5uE/oBFtp6XyXUCc2
 ljX/hmdJI5+mFBtvPrfAiFvtsnp3mRdUwQPe7GUQ0hYp7pARD23i2KP65cGOilQz9AvdGQu6dT
 mcdYaNN6xv2fWYqsB7O4Q6ngwWkuVvWGZFYYlS41zJwCZOkGHnl1i1X2Sp94hFqoVqy7f+NZXN
 CaVe3LSoPdbFLyxul4WtHk6BhjaqzM0zgW271hwtuhMsmFqJjNYyEsc8+wxKpYICbB5m8WH6F2
 bKI=
X-IronPort-AV: E=Sophos;i="5.64,312,1559491200"; d="scan'208";a="115837613"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 27 Jul 2019 06:24:29 +0800
IronPort-SDR: 9WgakNi55biF+6WQxWVDzBS2TjOUyzQh+NmO6imqEWJGrIKfLVTpVPrt3jxEiY6WYhqiXbVX94
 8ddibXopGLXJud1yal6ayKom1gZMagTqH3uQAXnMbifDdNhBqWjeKBWME3nhC8RDAo3edDuG2w
 bkRLeXMRc1lsWIgUMOf64fPa07P8/wU07Hn9fCwWVbCiD0TM+tuQU6LquEw+5+FSWd7BVJQYLA
 Cp03ABfLLxh1NqEOqF8KbIJdl77PPiy7WgVXW51iWSxS1Xc2zQb3tDcBSXvtO2eRyGPhjGvb6n
 WuUcxgo2Qm8zavx9z9otdFE6
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 26 Jul 2019 15:22:37 -0700
IronPort-SDR: jRa8eOdP/YuKfEzPjVyDpyFtNg+MPlqfk2n4XP6iJpn3/YPiLpWo2zO1hehiqWcxAZoTWjXrOS
 PMiNzCPi9bKZujDpYd8JGTCq3CXFvimIPZGZVgKpJvCipV8kZ5xKQY/gMnZZ0L5LBw/5/Ewi9E
 DDOaSpHgzou0PU1mik3wZdm5gyNssOF/044AidN0g/98RaHIjx8fg7+6BX11AYs+5IlC67Z9ND
 ReDmbdOQZovtt4wDXzhyLz/ZLfZ++jQSeS2q1QoXkx7YR1DKeloXqM7zVlasNSC0Y9euP9wISO
 rxI=
Received: from unknown (HELO [10.225.104.231]) ([10.225.104.231])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Jul 2019 15:24:29 -0700
Subject: Re: [PATCH] docs: riscv: convert boot-image-header.txt to ReST
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
References: <57eaa99a-d644-7b79-7177-a45d3ef1e71a@wdc.com>
 <1eaeb3fbb74de55af0b3f6d93ab40776dcbbb5c8.1564174903.git.mchehab+samsung@kernel.org>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <40e0f516-402b-29eb-d69b-fda1af26801e@wdc.com>
Date: Fri, 26 Jul 2019 15:24:24 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1eaeb3fbb74de55af0b3f6d93ab40776dcbbb5c8.1564174903.git.mchehab+samsung@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_152431_809214_4EDCFB48 
X-CRM114-Status: GOOD (  27.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Karsten Merker <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 7/26/19 2:02 PM, Mauro Carvalho Chehab wrote:
> Convert this small file to ReST format by:
>     - Using a proper markup for the document title;
>     - marking a code block as such;
>     - use tags for Author and date;
>     - use tables for bit map fields.
> 
> While here, fix a broken reference for a document with is
> planned but is not here yet.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> ---
>   ...image-header.txt => boot-image-header.rst} | 39 ++++++++++++-------
>   Documentation/riscv/index.rst                 |  1 +
>   2 files changed, 26 insertions(+), 14 deletions(-)
>   rename Documentation/riscv/{boot-image-header.txt => boot-image-header.rst} (72%)
> 
> diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.rst
> similarity index 72%
> rename from Documentation/riscv/boot-image-header.txt
> rename to Documentation/riscv/boot-image-header.rst
> index 1b73fea23b39..43e9bd0731d5 100644
> --- a/Documentation/riscv/boot-image-header.txt
> +++ b/Documentation/riscv/boot-image-header.rst
> @@ -1,22 +1,25 @@
> -				Boot image header in RISC-V Linux
> -			=============================================
> +=================================
> +Boot image header in RISC-V Linux
> +=================================
>   
> -Author: Atish Patra <atish.patra@wdc.com>
> -Date  : 20 May 2019
> +:Author: Atish Patra <atish.patra@wdc.com>
> +:Date:   20 May 2019
>   
>   This document only describes the boot image header details for RISC-V Linux.
> -The complete booting guide will be available at Documentation/riscv/booting.txt.
>   
> -The following 64-byte header is present in decompressed Linux kernel image.
> +TODO:
> +  Write a complete booting guide.
> +
> +The following 64-byte header is present in decompressed Linux kernel image::
>   
>   	u32 code0;		  /* Executable code */
> -	u32 code1; 		  /* Executable code */
> +	u32 code1;		  /* Executable code */
>   	u64 text_offset;	  /* Image load offset, little endian */
>   	u64 image_size;		  /* Effective Image size, little endian */
>   	u64 flags;		  /* kernel flags, little endian */
>   	u32 version;		  /* Version of this header */
> -	u32 res1  = 0;		  /* Reserved */
> -	u64 res2  = 0;    	  /* Reserved */
> +	u32 res1 = 0;		  /* Reserved */
> +	u64 res2 = 0;		  /* Reserved */
>   	u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
>   	u32 res3;		  /* Reserved for additional RISC-V specific header */
>   	u32 res4;		  /* Reserved for PE COFF offset */
> @@ -25,16 +28,21 @@ This header format is compliant with PE/COFF header and largely inspired from
>   ARM64 header. Thus, both ARM64 & RISC-V header can be combined into one common
>   header in future.
>   
> -Notes:
> +Notes
> +=====
> +
>   - This header can also be reused to support EFI stub for RISC-V in future. EFI
>     specification needs PE/COFF image header in the beginning of the kernel image
>     in order to load it as an EFI application. In order to support EFI stub,
>     code0 should be replaced with "MZ" magic string and res5(at offset 0x3c) should
>     point to the rest of the PE/COFF header.
>   
> -- version field indicate header version number.
> -	Bits 0:15  - Minor version
> -	Bits 16:31 - Major version
> +- version field indicate header version number
> +
> +	==========  =============
> +	Bits 0:15   Minor version
> +	Bits 16:31  Major version
> +	==========  =============
>   
>     This preserves compatibility across newer and older version of the header.
>     The current version is defined as 0.1.
> @@ -44,7 +52,10 @@ Notes:
>     extension for RISC-V in future. For current version, it is set to be zero.
>   
>   - In current header, the flag field has only one field.
> -	Bit 0: Kernel endianness. 1 if BE, 0 if LE.
> +
> +	=====  ====================================
> +	Bit 0  Kernel endianness. 1 if BE, 0 if LE.
> +	=====  ====================================
>   
>   - Image size is mandatory for boot loader to load kernel image. Booting will
>     fail otherwise.
> diff --git a/Documentation/riscv/index.rst b/Documentation/riscv/index.rst
> index e3ca0922a8c2..215fd3c1f2d5 100644
> --- a/Documentation/riscv/index.rst
> +++ b/Documentation/riscv/index.rst
> @@ -5,6 +5,7 @@ RISC-V architecture
>   .. toctree::
>       :maxdepth: 1
>   
> +    boot-image-header
>       pmu
>   
>   .. only::  subproject and html
> 

Thanks for the quick patch.

Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
