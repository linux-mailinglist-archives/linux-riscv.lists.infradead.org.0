Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B284F1E3B73
	for <lists+linux-riscv@lfdr.de>; Wed, 27 May 2020 10:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Pvjwk/n6XpSKsFU1yL/UyqSsSwArACV6a9IFuCvWoI=; b=s2ywVAkwQyPOGw+m1BCyQ6XbJ
	KwXl9Bdimrmoucmwx9UKPzMeCVvTJfh5xgsZoAg1GFY4wcjNCC87mY6RMbZ6PKZFX69aKZxGoHqIV
	Hz5bPepEFg3KfuA3CmhyIRSKqR85gh1gpyXQms6YQCeMFsm4fiECgdk8L/GntVPFND9URBUHRJJ7t
	5nL0eryQ3s8KdMQfybuwocU/DEtwhZIOeXJMadwKeBCp2tAtcainZQN3g5SmSBeWDSt8pGkW4e4IV
	N6tjZebsO8K0y0cl34kLAZEG+pTvAR+pG5FJh+mitcMM5e7HMPTP3oH8SBp75rHBcyn1gk3oX6WJm
	0jVOvigLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrC7-0002kj-7P; Wed, 27 May 2020 08:13:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrC3-0002k8-QG; Wed, 27 May 2020 08:13:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id 131so3127366pfv.13;
 Wed, 27 May 2020 01:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1Pvjwk/n6XpSKsFU1yL/UyqSsSwArACV6a9IFuCvWoI=;
 b=g+OBuTNL+ZECp7gRenSfzoC/L0SIFQs2wUNgQ5XneQ49ve7MCXLFqHyaI1J9HP8hFF
 xZFvHdBiADmGYGqBL80SR5GtgLTUbXo9d3UfqDFFj0SLN/B5WFfGMlNyWLAR+tVbvYCz
 C4EDVhl4IEpe78El/g9Nz+dJDWkO/ABrWAn818mbecK+TzsU4h/qWOTh9KLV22jXIyGm
 SrUEFGzeyILWXpcIFBAIOJnIMer+3w8CniZCi5TVTCW1nLLYmDQxBwulWUNK49ca4BOt
 f5OAT0gMgdznpvyOENVsocczF2HFLHy6Oq37nWMHgKTV2N1Nl/lqod7kwe1GiYzM7JwH
 lhVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1Pvjwk/n6XpSKsFU1yL/UyqSsSwArACV6a9IFuCvWoI=;
 b=Ipqqagki508gw2YcLTmhYhx0JhpbmxxLgyHGyEFNm8fVzQF863tSdTs45GuoACRKK6
 YXut56qHJCuuqK9BDSbuRqLK5pwRWOUHLuI9vmGUTKdRw+3c2I0XxIABchOPVXs5CfFT
 k6x/6VXValDhsIQaeD+GOKmWDoP4dHYIlQNxh5epkBxKBydJ1GoXgWvhj/KXq6b619vt
 D0XqKYCwo6TNxap2LuzF3HK4CiALitsLU7kncwjTmKvWXRdrqhBZm3FdAGw9Un1DQZga
 6QbPYrpDokkNHPvC1HnGWsCGqZYy24wvcV6HuTiwve1mwjzMlIpzw9QBUNxtBGHExzDC
 o1aw==
X-Gm-Message-State: AOAM532etKzTA6RxS0DiZXnPqWsxcCbsASjBau6MvNxDw0UIdMXx8a9F
 agFP9sWONL9V1JGV2Q8NyAQ=
X-Google-Smtp-Source: ABdhPJzbLRuMmxwJUPY5sv1El/ZdSk39d9IjzJRaDZ9+OJbVht9mTOUgNcWeTP5sLyuANVdm7nAJ8g==
X-Received: by 2002:a63:554e:: with SMTP id f14mr2850561pgm.191.1590567223153; 
 Wed, 27 May 2020 01:13:43 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id gz19sm1568851pjb.33.2020.05.27.01.13.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 01:13:42 -0700 (PDT)
Date: Wed, 27 May 2020 01:13:37 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] media: omap3isp: Shuffle cacheflush.h and include mm.h
Message-ID: <20200527081337.GA3506499@ubuntu-s3-xlarge-x86>
References: <20200515143646.3857579-7-hch@lst.de>
 <20200527043426.3242439-1-natechancellor@gmail.com>
 <CAMuHMdVSduTOi5bUgF9sLQdGADwyL1+qALWsKgin1TeOLGhAKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdVSduTOi5bUgF9sLQdGADwyL1+qALWsKgin1TeOLGhAKQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_011343_852168_A122591B 
X-CRM114-Status: GOOD (  26.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, Roman Zippel <zippel@linux-m68k.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 sparclinux <sparclinux@vger.kernel.org>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Linux-Arch <linux-arch@vger.kernel.org>,
 linux-c6x-dev@linux-c6x.org,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>, alpha <linux-alpha@vger.kernel.org>,
 linux-um <linux-um@lists.infradead.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Jessica Yu <jeyu@kernel.org>, Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Geert,

On Wed, May 27, 2020 at 09:02:51AM +0200, Geert Uytterhoeven wrote:
> Hi Nathan,
> 
> CC Laurent
> 
> On Wed, May 27, 2020 at 6:37 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > After mm.h was removed from the asm-generic version of cacheflush.h,
> > s390 allyesconfig shows several warnings of the following nature:
> >
> > In file included from ./arch/s390/include/generated/asm/cacheflush.h:1,
> >                  from drivers/media/platform/omap3isp/isp.c:42:
> > ./include/asm-generic/cacheflush.h:16:42: warning: 'struct mm_struct'
> > declared inside parameter list will not be visible outside of this
> > definition or declaration
> >
> > cacheflush.h does not include mm.h nor does it include any forward
> > declaration of these structures hence the warning. To avoid this,
> > include mm.h explicitly in this file and shuffle cacheflush.h below it.
> >
> > Fixes: 19c0054597a0 ("asm-generic: don't include <linux/mm.h> in cacheflush.h")
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Thanks for your patch!
> 
> > I am aware the fixes tag is kind of irrelevant because that SHA will
> > change in the next linux-next revision and this will probably get folded
> > into the original patch anyways but still.
> >
> > The other solution would be to add forward declarations of these structs
> > to the top of cacheflush.h, I just chose to do what Christoph did in the
> > original patch. I am happy to do that instead if you all feel that is
> > better.
> 
> That actually looks like a better solution to me, as it would address the
> problem for all users.
> 
> >  drivers/media/platform/omap3isp/isp.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/media/platform/omap3isp/isp.c b/drivers/media/platform/omap3isp/isp.c
> > index a4ee6b86663e..54106a768e54 100644
> > --- a/drivers/media/platform/omap3isp/isp.c
> > +++ b/drivers/media/platform/omap3isp/isp.c
> > @@ -39,8 +39,6 @@
> >   *     Troy Laramy <t-laramy@ti.com>
> >   */
> >
> > -#include <asm/cacheflush.h>
> > -
> >  #include <linux/clk.h>
> >  #include <linux/clkdev.h>
> >  #include <linux/delay.h>
> > @@ -49,6 +47,7 @@
> >  #include <linux/i2c.h>
> >  #include <linux/interrupt.h>
> >  #include <linux/mfd/syscon.h>
> > +#include <linux/mm.h>
> >  #include <linux/module.h>
> >  #include <linux/omap-iommu.h>
> >  #include <linux/platform_device.h>
> > @@ -58,6 +57,8 @@
> >  #include <linux/sched.h>
> >  #include <linux/vmalloc.h>
> >
> > +#include <asm/cacheflush.h>
> > +
> >  #ifdef CONFIG_ARM_DMA_USE_IOMMU
> >  #include <asm/dma-iommu.h>
> >  #endif
> 
> Why does this file need <asm/cacheflush.h> at all?
> It doesn't call any of the flush_*() functions, and seems to compile fine
> without (on arm32).
> 
> Perhaps it was included at the top intentionally, to override the definitions
> of copy_{to,from}_user_page()? Fortunately that doesn't seem to be the
> case, from a quick look at the assembler output.
> 
> So let's just remove the #include instead?

Sounds good to me. I can send a patch if needed or I suppose Andrew can
just make a small fixup patch for it. Let me know what I should do.

Cheers,
Nathan

