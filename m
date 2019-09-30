Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F67AC220C
	for <lists+linux-riscv@lfdr.de>; Mon, 30 Sep 2019 15:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SY4cPpZGjT6bSQ1tOQR1HuPA9R1ltMKVEQi4dt5rbiE=; b=t+7RX8ZDbP+U1Y
	eBiHaLWD8N7d3cHVuZUZ24k7nxmM0ActNicoz+Koj7S33CyYgLoQNRzjARr+UCQHDE9PWJvvr/B8C
	kzKSe799tuvWHhJzVEQH+RhZ4+vmG+XiLSWtK7TbOkd5Wl06VwACqiRugbHhKn3oeoi1Imtqb4R1X
	azILXtAK+fxbZNJeXTzIm3nGvXQOuWzeBsefxBRICSXzmO2mPUeSANRb95WOGV32QlwVqycDCOqcW
	Z81j+3KpQ8QilRmWTMLqQ7SdbAdzOwtBcgN4aXeLW8zINU0xyAKcBPGJOQQnZGjZpJFcZ34qLtxcE
	V5jPqNbA1t9DjCBc6LPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvpI-0008UQ-Gp; Mon, 30 Sep 2019 13:34:56 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvpF-0008Td-5l
 for linux-riscv@lists.infradead.org; Mon, 30 Sep 2019 13:34:54 +0000
Received: by mail-vs1-xe42.google.com with SMTP id v19so6768036vsv.3
 for <linux-riscv@lists.infradead.org>; Mon, 30 Sep 2019 06:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AMvf0aJLSBw670rdzFO9x6SzJk02/YpUBF290pMe194=;
 b=XRHsgO2ll4Out3o1wWqMo9/abYElPhYcstVnCjrAX4aJrgfwN3SSOi/aFXRHfmoHHQ
 KieWKrU3/AlNLArqYMjHIkhyQsWX1bKkMj3Cy05J0In/IglcbWMeOzdgPfEQ0JGXeEoY
 Ly8MkBlzdNqEkscNPaJWQMwsgNSQlneFvr9c8uj4bdNHLyBOD/RBlbMtEuOazxlROCZB
 zyRh9eBTf+T5h7F0DsfDbwugnqO2BG3TTeTK3V4q3V4OIwNA9nqI0gB3HUkg38F+hxDJ
 teov5TcNbR1trLL4uRTSp93QzxHScrbmgI4+kb4NNWtFM76u7MkDK4dHz6hgdWR4Tbys
 xqmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AMvf0aJLSBw670rdzFO9x6SzJk02/YpUBF290pMe194=;
 b=mweclOGKNFpqxnR016mbru4IJFMNPFJT9K5s0hGTsn/NUsNNCniL8qHXrobAQDZxlJ
 tXvzmG3snnOjFjBVzOERO2C62zPKQSiSEOsRrnrjxkJmWcYPsUYUeKBd1hfW+rNxJZI5
 YvsnyTOdg4+u/eP+z2KHf7XTepIRa6n+HRj/0Giqbkgej1/xZ40WLw330pokXWpAyuso
 JxFMn9+Dhi0aUsYJqTuQdClIZQXsu+QCS6FmGSZimUj69nUPtA3Gta5X2ZqAquKvJvkE
 akC6yXm3RSyFzfIAYIxIgjSot7uHm1Vyk1JDhHzC1cPw0yYXE1qgUmJ45AaEroPS2GcZ
 oMag==
X-Gm-Message-State: APjAAAV7e92f4+5ZRH0ViYlyTuy/zmFEB19cI1ZKSSRpdsxDGLYnsM1x
 vyvEA6yf6BU/IqiitQfzBXGXsFhTLuWWM994/HR8oQ==
X-Google-Smtp-Source: APXvYqwFoFBboIPgwzdCmxDRfbxS1fhkFS38SreFnzfJ31NLXbmDoVntXc3bbJ78f872NGqPaK/9xydoPhVnoDLPfKk=
X-Received: by 2002:a67:f0dd:: with SMTP id j29mr4889144vsl.92.1569850491648; 
 Mon, 30 Sep 2019 06:34:51 -0700 (PDT)
MIME-Version: 1.0
References: <1568822505-19297-1-git-send-email-sagar.kadam@sifive.com>
In-Reply-To: <1568822505-19297-1-git-send-email-sagar.kadam@sifive.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 30 Sep 2019 19:04:40 +0530
Message-ID: <CAARK3HkOwyvg=xr7fw1SrP_=B+Gj+waQmtZvgiK4AUpQrbM41Q@mail.gmail.com>
Subject: Re: [PATCH v9 0/2] mtd: spi-nor: add support for is25wp256 spi-nor
 flash
To: Marek Vasut <marek.vasut@gmail.com>, tudor.ambarus@microchip.com, 
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_063453_248701_000FC90E 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On Wed, Sep 18, 2019 at 9:32 PM Sagar Shrikant Kadam
<sagar.kadam@sifive.com> wrote:
>
> The patch series adds basic support for 32MiB spi-nor is25wp256 present on HiFive
> Unleashed A00 board. The flash device gets BFPT_DWORD1_ADDRESS_BYTES_3_ONLY
> from BFPT table for address width, whereas the flash can support 4 byte
> address width, so the address width is configured by using the post bfpt
> fixup hook as done for is25lp256 device in
> commit cf580a924005 ("mtd: spi-nor: fix nor->addr_width when its value
> configured from SFDP does not match the actual width")
>
> Patches are based on original work done by Wesley Terpstra and/or
> Palmer Dabbelt:
> https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b
>
> Erase/Read/Write operations are verified on HiFive Unleashed board using  mtd and
> flash utils (v1.5.2):
> 1. mtd_debug    : Options available are : erase/read/write.
> 2. flashcp      : Single utility that erases flash, writes a file to flash and verifies the data back.
>
> The changes are available under branch dev/sagark/spi-nor-v9 at
> https://github.com/sagsifive/riscv-linux-hifive
>
> Revision history:
> V8<->V9:
> -Rebased this series to mainline v5.3-rc8
> -Corrected number of sectors in the spi nor id table for is25wp256 device as suggested in the review.
> -The lock/unlock scheme in the V8 version of this series needs to have a more generic approach.
>  These protection scheme patches are not included in this series, will submit those separately.
>

A gentle reminder!!
Any comments on this series?

Thanks & BR,
Sagar Kadam

> V7<->V8:
> -Rebased this series on mainline v5.3-rc4.
> -Removed remaining func_reg reference from issi_lock as updating OTP region was dropped as part of V6.
> -Updated Reviewed-By tags to 1st and 2nd patch.
>
> V6<->V7:
> -Incorporated review comments from Vignesh.
> -Used post bfpt fixup hook as suggested by Vignesh.
> -Introduce SPI_NOR_HAS_BP3 to identify whether the flash has 4th bit protect bit.
> -Prefix generic flash access functions with spi_nor_xxxx.
>
> V5<->V6:
> -Incorporated review comments from Vignesh.
> -Set addr width based on device size and if SPI_NOR_4B_OPCODES is set.
> -Added 4th block protect identifier (SPI_NOR_HAS_BP3) to flash_info structure
> -Changed flash_info: flag from u16 to u32 to accommodate SPI_NOR_HAS_BP3
> -Prefix newly added function with spi_nor_xxx.
> -Dropped write_fr function, as updating OTP bit's present in function register doesn't seem to be a good idea.
> -Set lock/unlock schemes based on whether the ISSI device has locking support and  BP3 bit present.
>
> V4<->V5:
> -Rebased to linux version v5.2-rc1.
> -Updated heading of this cover letter with sub-system, instead of just plain "add support for is25wp256..."
>
> V3<->V4:
> -Extracted comman code and renamed few stm functions so that it can be reused for issi lock implementation.
> -Added function's to read and write FR register, for selecting Top/Bottom area.
>
> V2<->V3:
> -Rebased patch to mainline v5.1 from earlier v5.1-rc5.
> -Updated commit messages, and cover letter with reference to git URL and author information.
> -Deferred flash_lock mechanism and can go as separate patch.
>
> V1<-> V2:
> -Incorporated changes suggested by reviewers regarding patch/cover letter versioning, references of patch.
> -Updated cover letter with description for flash operations verified with these changes.
> -Add support for unlocking is25xxxxxx device.
> -Add support for locking is25xxxxxx device.
>
> v1:
> -Add support for is25wp256 device.
>
> Sagar Shrikant Kadam (2):
>   mtd: spi-nor: add support for is25wp256
>   mtd: spi-nor: fix nor->addr_width for is25wp256
>
>  drivers/mtd/spi-nor/spi-nor.c | 9 ++++++++-
>  include/linux/mtd/spi-nor.h   | 1 +
>  2 files changed, 9 insertions(+), 1 deletion(-)
>
> --
> 1.9.1
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
