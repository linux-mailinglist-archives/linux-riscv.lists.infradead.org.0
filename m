Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2A610BAF
	for <lists+linux-riscv@lfdr.de>; Wed,  1 May 2019 19:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+AHZlS45rDt+k8KDP9e/OXQNRW6TBvkRBnFlcuc1Wg=; b=d6za/p8cTIlN3Y
	OX52hM47sb8xBZHMys7ifCYxiQ/ghLKlcRdMUgSKh7J+RJ21KtjttfSfvz8GAxFpwa63r4sPOlQ+2
	rD4G3cJ9j9FXekH98H89EeBTh3i8TMJbB3SDCFY10tDXnK+4X9E00k9JZyRyoCaWjI0wj0D9DtUnI
	hXOkHX3HDr2u9p4dy4XvAIzrRKaXfk7xRbnxhyTqXCUaxi835rmGkkd0vpo3G8PGzv92BgNsQ27Ew
	hBljRSTZjmiDmVL2Iw240JKS+e9QVpKgZj9b7IQTwGMiWfNIO5I+SAN91kekn/WDv6zi1ogGvvwbw
	smiTO08dACZYNF/YDq2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsbN-0000iU-43; Wed, 01 May 2019 17:01:01 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsbJ-0000hX-PQ
 for linux-riscv@lists.infradead.org; Wed, 01 May 2019 17:00:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9102C80D;
 Wed,  1 May 2019 10:00:57 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C2023F719;
 Wed,  1 May 2019 10:00:56 -0700 (PDT)
Date: Wed, 1 May 2019 18:00:53 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH] RISC-V: Add an Image header that boot loader can parse.
Message-ID: <20190501170053.GG11740@lakrids.cambridge.arm.com>
References: <mhng-cab2c6b9-f623-4286-99a4-61e4b3a58761@palmer-si-x1e>
 <e801ca8b-c8e2-d8b1-d55a-744414db77e3@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e801ca8b-c8e2-d8b1-d55a-744414db77e3@wdc.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_100057_829404_6C233B4C 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "zong@andestech.com" <zong@andestech.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 10:42:40PM -0700, Atish Patra wrote:
> On 4/29/19 4:40 PM, Palmer Dabbelt wrote:
> > On Tue, 23 Apr 2019 16:25:06 PDT (-0700), atish.patra@wdc.com wrote:
> > > Currently, last stage boot loaders such as U-Boot can accept only
> > > uImage which is an unnecessary additional step in automating boot flows.
> > > 
> > > Add a simple image header that boot loaders can parse and directly
> > > load kernel flat Image. The existing booting methods will continue to
> > > work as it is.
> > > 
> > > Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
> > > 
> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > ---
> > >   arch/riscv/include/asm/image.h | 32 ++++++++++++++++++++++++++++++++
> > >   arch/riscv/kernel/head.S       | 28 ++++++++++++++++++++++++++++
> > >   2 files changed, 60 insertions(+)
> > >   create mode 100644 arch/riscv/include/asm/image.h
> > > 
> > > diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
> > > new file mode 100644
> > > index 000000000000..76a7e0d4068a
> > > --- /dev/null
> > > +++ b/arch/riscv/include/asm/image.h
> > > @@ -0,0 +1,32 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +
> > > +#ifndef __ASM_IMAGE_H
> > > +#define __ASM_IMAGE_H
> > > +
> > > +#define RISCV_IMAGE_MAGIC	"RISCV"
> > > +
> > > +#ifndef __ASSEMBLY__
> > > +/*
> > > + * struct riscv_image_header - riscv kernel image header
> > > + *
> > > + * @code0:		Executable code
> > > + * @code1:		Executable code
> > > + * @text_offset:	Image load offset
> > > + * @image_size:		Effective Image size
> > > + * @reserved:		reserved
> > > + * @magic:		Magic number
> > > + * @reserved:		reserved
> > > + */
> > > +
> > > +struct riscv_image_header {
> > > +	u32 code0;
> > > +	u32 code1;
> > > +	u64 text_offset;
> > > +	u64 image_size;
> > > +	u64 res1;
> > > +	u64 magic;
> > > +	u32 res2;
> > > +	u32 res3;
> > > +};
> > 
> > I don't want to invent our own file format.  Is there a reason we can't just
> > use something standard?  Off the top of my head I can think of ELF files and
> > multiboot.
> 
> Additional header is required to accommodate PE header format. Currently,
> this is only used for booti command but it will be reused for EFI headers as
> well. Linux kernel Image can pretend as an EFI application if PE/COFF header
> is present. This removes the need of an explicit EFI boot loader and EFI
> firmware can directly load Linux (obviously after EFI stub implementation
> for RISC-V).

Adding the EFI stub on arm64 required very careful consideration of our
Image header and the EFI spec, along with the PE/COFF spec.

For example, to be a compliant PE/COFF header, the first two bytes of
your kernel image need to be "MZ" in ASCII. On arm64 we happened to find
a valid instruction that we could rely upon that met this requirement...

> > >   __INIT
> > >   ENTRY(_start)
> > > +	/*
> > > +	 * Image header expected by Linux boot-loaders. The image header data
> > > +	 * structure is described in asm/image.h.
> > > +	 * Do not modify it without modifying the structure and all bootloaders
> > > +	 * that expects this header format!!
> > > +	 */
> > > +	/* jump to start kernel */
> > > +	j _start_kernel

... but it's not clear to me if this instruction meets that requriement.

I would strongly encourage you to consider what you actually need for a
compliant EFI header before you set the rest of this ABI in stone.

On arm64 we also had issues with endianness, and I would strongly
recommend that you define how big/little endian will work ahead of time.
e.g. whether fields are always in a fixed endianness.

Thanks,
Mark.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
