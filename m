Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1B1BD794
	for <lists+linux-riscv@lfdr.de>; Wed, 25 Sep 2019 07:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ts2qruSc8EhCHAAkxq2NXeCY+1Ok5fvzGFOgHuf6++I=; b=DOewLDNig5H98s
	xCT1yKiyBWbeLV26Wrx5iS6fSgj3N/lteLd4sUeOezprcUMD7ZVvoosBkbSYPJn34WYxS9Cq15M8N
	QTQNSG40lyfQFsapn/Ozdra2nuaRONNNBTjqVt334leUjcR18ZdU5JBayrRUobGXyuAk9rUO8HayJ
	FIeroI9yRlWCzYfz8g3zAkOyvZSAVWVM82rr9qxrtKaFnl4S0a6bBLQeB+PHpoVH5UIZktZ/DKozT
	lq2xUcQTrcRFlPN2DnEDjNGZlMnRedbyYjbsEemC/wyLvrAboF23XNQvtDlvcImcIvMukRtSUJOy6
	d2lMvmyqK73xbIJhdzdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCzW7-0001Dl-8G; Wed, 25 Sep 2019 05:07:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCzW3-0001DS-D3
 for linux-riscv@lists.infradead.org; Wed, 25 Sep 2019 05:07:04 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75FEC21D81;
 Wed, 25 Sep 2019 05:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569388023;
 bh=c5/d+TL32DDKR4zrZOhj8g4B4tFDujkoeIXaSUevUvw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ViHccNiZ6k3Rm7Iga397cVf8P0Rx9fHMwGdF/Zv2tZTM/Dz3hUpUSfOlSJ4dDUyVU
 9YzXzJsiRTP7WgVEp2VSy7FPNpStI7x5CVBW51tA36tpWdjDqdkid1P2USN6YRJ95M
 ByQdf5th2sxiFO7aIYvf9S8EYS/HGdz8D20LyNmY=
Date: Wed, 25 Sep 2019 07:06:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH 1/2] platform: goldfish: Allow goldfish virtual platform
 drivers for RISCV
Message-ID: <20190925050653.GA1337454@kroah.com>
References: <20190925042912.119553-1-anup.patel@wdc.com>
 <20190925042912.119553-2-anup.patel@wdc.com>
 <20190925044308.GA1245729@kroah.com>
 <CAAhSdy1Z09tpNtfS10gL5BXJ=1wydLy4nmtFyKQenAPDSyTLTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhSdy1Z09tpNtfS10gL5BXJ=1wydLy4nmtFyKQenAPDSyTLTQ@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_220703_462308_57E0485E 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Roman Kiryanov <rkir@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 10:30:00AM +0530, Anup Patel wrote:
> On Wed, Sep 25, 2019 at 10:13 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Sep 25, 2019 at 04:30:03AM +0000, Anup Patel wrote:
> > > We will be using some of the Goldfish virtual platform devices (such
> > > as RTC) on QEMU RISC-V virt machine so this patch enables goldfish
> > > kconfig option for RISC-V architecture.
> > >
> > > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > > ---
> > >  drivers/platform/goldfish/Kconfig | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/platform/goldfish/Kconfig b/drivers/platform/goldfish/Kconfig
> > > index 77b35df3a801..0ba825030ffe 100644
> > > --- a/drivers/platform/goldfish/Kconfig
> > > +++ b/drivers/platform/goldfish/Kconfig
> > > @@ -1,7 +1,7 @@
> > >  # SPDX-License-Identifier: GPL-2.0-only
> > >  menuconfig GOLDFISH
> > >       bool "Platform support for Goldfish virtual devices"
> > > -     depends on X86_32 || X86_64 || ARM || ARM64 || MIPS
> > > +     depends on X86_32 || X86_64 || ARM || ARM64 || MIPS || RISCV
> >
> > Why does this depend on any of these?  Can't we just have:
> 
> May be Goldfish drivers were compile tested/tried on these architectures only.

True, but that does not mean a driver should only have a specific list
of arches.  This should only be needed if you _know_ it doesn't work on
a specific arch, not the other way around.

> > >       depends on HAS_IOMEM
> >
> > And that's it?
> 
> I think it should be just "depends on HAS_IOMEM && HAS_DMA" just like
> VirtIO MMIO. Agree ??

No idea, but if that's what  is needed for building, then sure :)

thanks,

greg k-h

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
