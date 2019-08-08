Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93EC85C05
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 09:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ+a+ykKCYSyOOmdmayWL6ewbKrpft7URTBw5Ua7L0g=; b=rz6BZj2igTvUIv
	ej+dmoJK4fu3SwS1uBKkFqXnRDK0t+fQvQpRvH8YsgS9U3PuQGBsG5RIbgB80GRYlIyWvMgurczTQ
	9Uh2Ea3ny8U9mLzT7McACk4vj9XWYb/5/g7G16V1ddfY2WgrGozwWmFPjQWo4967Xa+GNxGu4VSA5
	eXvG7v/q0SFLrwaQ4H6qQD34mBgR+WpLXsFPToaInI9LkTz4yL4okkbtjl+IZdvaC9nFF+Gzcc2tx
	Uw3nTKaNeWrQZgeT30Vu4VX8yA5dU6rqsApBDDE2I11rz1G7BYJeGsgf5P5MVPKUSn9GsSIvTBMEv
	HYRqd8UI1qVQKUM/iHFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdC2-0002Iq-Hl; Thu, 08 Aug 2019 07:50:38 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdBx-0002IK-1P
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 07:50:34 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 32BFA68B02; Thu,  8 Aug 2019 09:50:30 +0200 (CEST)
Date: Thu, 8 Aug 2019 09:50:29 +0200
From: Christoph Hellwig <hch@lst.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/misc
Message-ID: <20190808075029.GB30308@lst.de>
References: <20190807151009.31971-1-hch@lst.de>
 <20190807152215.GA26690@kroah.com> <20190807152438.GA16495@lst.de>
 <alpine.DEB.2.21.9999.1908070832500.13971@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1908070832500.13971@viisi.sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_005033_236923_FB7D5F4F 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arnd@arndb.de, Greg KH <gregkh@linuxfoundation.org>, palmer@sifive.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com,
 linux-riscv@lists.infradead.org, mchehab@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 08:40:58AM -0700, Paul Walmsley wrote:
> On Wed, 7 Aug 2019, Christoph Hellwig wrote:
> 
> > On Wed, Aug 07, 2019 at 05:22:15PM +0200, Greg KH wrote:
> > > > Fixes: a967a289f169 ("RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs")
> > > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > > ---
> > > >  arch/riscv/mm/Makefile                            | 1 -
> > > >  drivers/misc/Makefile                             | 1 +
> > > >  {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c | 0
> > > >  3 files changed, 1 insertion(+), 1 deletion(-)
> > > >  rename {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c (100%)
> > > 
> > > Why isn't this in drivers/edac/ ?
> > > why is this a misc driver?  Seems like it should sit next to the edac
> > > stuff.
> > 
> > No idea.  EDAC maintainers, would you object to taking what is 
> > currently in arch/riscv/mm//sifive_l2_cache.c to drivers/edac/ ?
> 
> If this driver is moved out of arch/riscv/mm, it should ideally go into 
> some sort of common L2 cache controller driver directory, along 
> with other L2 cache controller drivers like arch/arm/mm/*l2c*. 
> 
> Like many L2 cache controllers, this controller also supports cache 
> flushing operations and SoC-specific way operations.  We just don't use 
> those on RISC-V - yet.

Well, another reason to not have it under arch/riscv/ as it is a SOC
specific driver, which we all have somewhere else, just like arm64
and new arm ports do.  And especially not unconditionally built.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
