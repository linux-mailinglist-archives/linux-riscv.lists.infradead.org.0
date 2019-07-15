Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4939D68742
	for <lists+linux-riscv@lfdr.de>; Mon, 15 Jul 2019 12:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAxXK2bvoANm7Wa+rOA3ihjmXFwjIbQ0d8DXFZEgJh8=; b=El2sRX9Xp3/FPx
	s/zqO0Nl29O+mydhknUCtlYL4wOhq79/B/Lf9Ui1QJtfocPHcQSUL5hMA40tBcyYbdyaumvImj/y4
	v+2KD9CcnSbJNG9aNmiWuFL4z5gEZRwMm0qOcIdIv/dZgNsMMKa3xK7UAZXMeaX2SSjxc+WO/MetJ
	802Iwjo5n8qbWUdIgK1uWe2lAWvXT38IhrWAE39As50wOjRUd0tdg53VKIOQv/8+azC2xZRD0pfWO
	D+Sy6SWcuSWgJ18KbEz8OorIdtDt2h/VDHHvudA4ie1D3+pw1ehN4ADUeoK2qHevcdABWY4bTIohR
	xWUHq2nB+yljrNu+1ulw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmyUR-0000xm-2M; Mon, 15 Jul 2019 10:45:51 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmyUI-0000x6-LF
 for linux-riscv@lists.infradead.org; Mon, 15 Jul 2019 10:45:44 +0000
Received: by mail-vs1-xe44.google.com with SMTP id u3so11011834vsh.6
 for <linux-riscv@lists.infradead.org>; Mon, 15 Jul 2019 03:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m69Q++mc12a2NdGKc1ehjmZg7I2gwJhoO4eDVouumsY=;
 b=ZYyigqqfTJL1M1v1PbJny8OLbsPkDjGGDBR3VfZY/RXWLHKEl/KQK4jlw/2hFoYUKJ
 BAP7IlQ/rIebx9O3QXfuOYQN9KRgO1XiV0DM0I2Bx9ikTXL/ZBHnq6buUTFkqSYJO+QM
 ft1o2d3BU8wCUYObg0hqi8NMhO0JQg7UV0gvYWRwi5PyBZ8Gu6U9xNg21yqzjkn5kTbF
 Qlu1lat0RJHOrtbuqmUcKEaALrFCygdwVlOMfGPSXgYU/2JZvkwPpsA5eNn0jce3B/1p
 Q26PJ8z4nPqekv7aJdmpDaH4dMquwbydPLnX+VH32cUhVqZMk9jzNkSstcvxlq6wcpZ9
 +c3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m69Q++mc12a2NdGKc1ehjmZg7I2gwJhoO4eDVouumsY=;
 b=eIoN6Cb8WAcBKnTH8WcWe5Nt8GXCfQZeaXNHx55QN+bz4GVSN5qz7EF+Pv936RC7N8
 aMmBLEUqCOEbREMIAiXhkABlm76e/K8rDHmd/Be8ENfy/QBSlWj3+FD1Sg4lGyiDvPfR
 oZhwo+nkSmswqTCROmUpRLnutNKr+fzQYHL7D2pC7+7CRqESBeigARMQKybggkt4kbeD
 qAx+xpZLGpSUVSH5bWNoKWkD/zhYsEAr9mfBUG/Tjm6Oi4K18eonxGWnhs5E+yTrp2Ev
 tAnPHA3vuCaehE1yHQkKnj0K6KfRCUrdvnbCn873xML1ArJqmlczYcEbMSP39CTBgfkc
 eAAQ==
X-Gm-Message-State: APjAAAWEcAlLg6Xe7yhNQHfFtXGaICifikEIishZ/9Z33hl7sC4NHnK2
 D2qhnO2CLZq1zpNoD4cCt5+8jxJrypjHEVQTeBhWzw==
X-Google-Smtp-Source: APXvYqzUK7SwMuPo4ZL3JjgvyDVZtw0Ap9WNDsf6lO/m0M9uas49McrkrvqykfTKIOeehCC4Vj9JKrLUnWGRNxkLDYA=
X-Received: by 2002:a67:7c92:: with SMTP id
 x140mr16783284vsc.229.1563187541125; 
 Mon, 15 Jul 2019 03:45:41 -0700 (PDT)
MIME-Version: 1.0
References: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
In-Reply-To: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 15 Jul 2019 16:15:29 +0530
Message-ID: <CAARK3HkMz3AdcVyrteGmqczCaMDTYS1h9uALspm75RFE9c6jFQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] mtd: spi-nor: add support for is25wp256 spi-nor
 flash
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org, 
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at, 
 Vignesh Raghavendra <vigneshr@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_034542_761961_8F85EA33 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 12:10 AM Sagar Shrikant Kadam
<sagar.kadam@sifive.com> wrote:
>
> The patch series adds support for 32MiB spi-nor is25wp256 present on HiFive
> Unleashed A00 board. The flash device gets BFPT_DWORD1_ADDRESS_BYTES_3_ONLY
> from BFPT table for address width, whereas the flash can support 4 byte
> address width, so the address width is configured by using the post bfpt
> fixup hook as done for is25lp256 device in
> commit cf580a924005 ("mtd: spi-nor: fix nor->addr_width when its value
> configured from SFDP does not match the actual width") queued in
> spi-nor/next branch [1].
>
> Patches 1 and 3 are based on original work done by Wesley Terpstra and/or
> Palmer Dabbelt:
> https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b
>
> Erase/Read/Write operations are verified on HiFive Unleashed board using  mtd and
> flash utils (v1.5.2):
> 1. mtd_debug    : Options available are : erase/read/write.
> 2. flashcp      : Single utility that erases flash, writes a file to flash and verifies the data back.
> 3. flash_unlock : Unlock flash memory blocks. Arguments: are offset and number of blocks.
> 3. flash_lock   : Lock flash memory blocks. Arguments: are offset and number of blocks.
>
> The Unlock scheme clears the protection bits of all blocks in the Status register.
>
> Lock scheme:
> A basic implementation based on the stm_lock scheme and is validated for a different
> number of blocks passed to flash_lock. ISSI devices have top/bottom area selection
> in function register which is OTP memory. so we are not updating the OTP section
> of function register.
>
> The changes along are available under branch v5.2-rc1-mtd-spi-nor/next at:
> https://github.com/sagsifive/riscv-linux-hifive
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git/log/?h=spi-nor/next
>
> Revision history:
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
> Sagar Shrikant Kadam (4):
>   mtd: spi-nor: add support for is25wp256
>   mtd: spi-nor: fix nor->addr_width for is25wp256
>   mtd: spi-nor: add support to unlock the flash device
>   mtd: spi-nor: add locking support for is25wp256 device
>
>  drivers/mtd/spi-nor/spi-nor.c | 343 +++++++++++++++++++++++++++++++++++-------
>  include/linux/mtd/spi-nor.h   |   8 +
>  2 files changed, 300 insertions(+), 51 deletions(-)
>
> --
> 1.9.1
>

Hi All,

Any comments on this series?

BR,
Sagar Kadam

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
