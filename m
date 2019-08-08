Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A3485C78
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 10:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1Nb6Pw/0JLkenz4BqD1jmWIMk5GSc9ZcpE5q2uBCGA=; b=djnTjEwr2qmM2c
	9Jb0bOGyVWRJ/Yzkby84PMTUhKxZhgGNjBn25rB1UIRisZKYDSizoouXlB/ed55qpzGB+ZnRtRwzQ
	TqbbumGuVIFb/YYoDq8vdaOhUowdjAxiSpYal35oNVQtxWJXCFYP0FU2+v6xA0ka7qJk87NvHTZYD
	/BfpjanZBESdNFrDrDGb9/dN/F62+CSPZuGAS2dFyu+GIGuknpRLeb7VRIp3yZ3Y4432dwf2ZHc/m
	xXVM7RE61eqf0ECyu/Ob6A8vH+AIxweMSgYadmpl/OwIs3Vu3V3e1KsJ71V5JwG3JpZRIa0EzS6h9
	7CLf9PjChy0kRkO93zpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdSe-0000n4-5a; Thu, 08 Aug 2019 08:07:48 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdSa-0000mB-BV
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 08:07:45 +0000
Received: by mail-qt1-f196.google.com with SMTP id d17so12299004qtj.8
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 01:07:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zpfTTWIVTM8a0np0YvcvEQ5LKGlmAj7NsTRFbsCvaus=;
 b=hNn3GJHBtx6jyIWQBF8wuyjjRkhVzn1Nn9Uh3aJvvG+SYFJbqhBv81q5Twz2MPXVZ9
 pJDWb3a4BHYo7ggsvZBqnPe9XlCt4G4xf7ZBtUviTATw4Ez6rgMEL20o3HOsC4575jHT
 KAonN3Z4DBKSgIWWa5fINd6aQARb0j5XsEJMhiJfGmjG5e1BZKLvTv1KTtgbEzsUxJUt
 FDptrInfVz5FwjgckuZjktpF1Ok3l3FZ/mRzpsGKfV/dRwVLJ3pO7hqvL1I6SxE7ptIl
 /rVIf7EXllCWqm76B0FCaz81bYS/k/pW0/iE3CR4u6N+B38Bh8WHNTCq/szfK9ca7gee
 qkZA==
X-Gm-Message-State: APjAAAUtHU2miida5xGJBSXT0CBUfoW/rCY4rUX6CY/gj04VzhAgciQH
 luCE0ouJPPzJU4e+HuaYgZaeyEt6tWSwPdHf4yg=
X-Google-Smtp-Source: APXvYqwZZW9N6HttLUMOUHu8OVQ7m6alCwA745gemlJdjpV2mFtSjU3BCMjNtw+/B8K/8fMOgXq8xsaod0+xpp8WY4U=
X-Received: by 2002:ac8:6684:: with SMTP id d4mr6915506qtp.204.1565251662202; 
 Thu, 08 Aug 2019 01:07:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190807151009.31971-1-hch@lst.de>
 <20190807152215.GA26690@kroah.com> <20190807152438.GA16495@lst.de>
 <alpine.DEB.2.21.9999.1908070832500.13971@viisi.sifive.com>
 <20190808075029.GB30308@lst.de>
In-Reply-To: <20190808075029.GB30308@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 8 Aug 2019 10:07:26 +0200
Message-ID: <CAK8P3a1nwTjt7gbL7bCa11-smQ0c6o-6QUL0vLZnZxzT_aa4-g@mail.gmail.com>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/misc
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_010744_400463_9DC96F9F 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Greg KH <gregkh@linuxfoundation.org>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 9:50 AM Christoph Hellwig <hch@lst.de> wrote:
> On Wed, Aug 07, 2019 at 08:40:58AM -0700, Paul Walmsley wrote:
> > On Wed, 7 Aug 2019, Christoph Hellwig wrote:
> > > On Wed, Aug 07, 2019 at 05:22:15PM +0200, Greg KH wrote:
> > > > > Fixes: a967a289f169 ("RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs")
> > > > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > > > ---
> > > > >  arch/riscv/mm/Makefile                            | 1 -
> > > > >  drivers/misc/Makefile                             | 1 +
> > > > >  {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c | 0
> > > > >  3 files changed, 1 insertion(+), 1 deletion(-)
> > > > >  rename {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c (100%)
> > > >
> > > > Why isn't this in drivers/edac/ ?
> > > > why is this a misc driver?  Seems like it should sit next to the edac
> > > > stuff.
> > >
> > > No idea.  EDAC maintainers, would you object to taking what is
> > > currently in arch/riscv/mm//sifive_l2_cache.c to drivers/edac/ ?
> >
> > If this driver is moved out of arch/riscv/mm, it should ideally go into
> > some sort of common L2 cache controller driver directory, along
> > with other L2 cache controller drivers like arch/arm/mm/*l2c*.
> >
> > Like many L2 cache controllers, this controller also supports cache
> > flushing operations and SoC-specific way operations.  We just don't use
> > those on RISC-V - yet.
>
> Well, another reason to not have it under arch/riscv/ as it is a SOC
> specific driver, which we all have somewhere else, just like arm64
> and new arm ports do.  And especially not unconditionally built.

soc specific drivers that don't have their own subsystem can
go into drivers/soc/$VENDOR/.

For this driver, I would also think that the edac subsystem is the
best fit. Right now, the driver is split in two halves: there
is drivers/edac/sifive_edac.c and arch/riscv/mm/sifive_l2_cache.c,
with neither of those working without the other.

Moving both into a single file would seem to allow simplifying
it as a proper 'platform_driver', which the drivers/edac side today
is not (it just registers a platform device in its module_init call).

      Arnd

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
