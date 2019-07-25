Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91F675885
	for <lists+linux-riscv@lfdr.de>; Thu, 25 Jul 2019 22:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmBo2PHbtkNrDMVed4rs0Acy99O28ycgeLa1QN1EfqU=; b=TAzUngN044skcO
	3PYljTQX4GHM/dLZz/+SuW0jqdEgcYhileFKC/25YiDYkbVvGu2yrNlhJ1otqC1QkAUfZYUUGB2NT
	Yhqogh7LAyYwbt8b5hmtsaafFlYX+MftFr0o66r6TMn4RWmrljD0Ue0KJfSgUW8x00uM8O+/Zwg3d
	4qyN8OkTTHh0WQSSQMz3BbkK3CVYLOeVxFCLIe9w2Ib2XYNqCi+PploWb50IJoT5cZEBqxShZ4Msn
	DGILLTJjs1eFLGZNbLz9LSzWmhyVJUsVgMjgQ/kLyc0ybfByiOAy26OQ457usK6b7ixyuOwNmyD1J
	1Rx7hAQ7F42rXKGP4KfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjuq-0001mG-CX; Thu, 25 Jul 2019 20:00:40 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjum-0001lR-3M
 for linux-riscv@lists.infradead.org; Thu, 25 Jul 2019 20:00:37 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so23275382pfa.4
 for <linux-riscv@lists.infradead.org>; Thu, 25 Jul 2019 13:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=czhvpuMA3newxUE1Ok0eyKdEKMeSe/BMrFd/BkJbH88=;
 b=VFAYa7L009E7Uphizuk8EUTkPs3Kp07Ow0349Bvlb5HNDgpvBrzunrXj9n7hha+kMS
 bUM5MSI0W1TI2wdDk/dt+iOAY/2LqMW2igW+v6EdmydphptD2J677zHoPzFb2KTmBouE
 B/nckqeeuspAcsyRQBtXmWSYaDMekv/0MycuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=czhvpuMA3newxUE1Ok0eyKdEKMeSe/BMrFd/BkJbH88=;
 b=h3pI+/wcdHVCEqYFWxcuXmP6KSCZfdhznLX7KkIkNdqBmi3sXAPKVCpsKkYHBTrEog
 kPpoP1db+HK16VXIW70GODWLcdK8N+cC3d/F8YfPGbnHksx4i7+1CZK1hh6WK+l1tEEb
 YDnYZeW1tsBzmIcJ2aUFrm0grdcF8goxpwEWMOAkhepHH3l7z1x10yyRoxBcxhIjECWR
 buJrAhcOsxTjs7ghv7lv/qBK7Jz61TEULPrDzCcLacoiYhB3apiZ3PxCHMYW5s5CF26f
 zK0qN7b9xqBLZ6v3jRTH4WZ3qSj0s5PcObkZ/RWPitUGeCQm1K/HYEOlmW5uR5gZ1eRx
 3RgQ==
X-Gm-Message-State: APjAAAU6BXHNfqkomRCg27WbqYPM5XInnnjo5ynL62zxmDfBXg6W7QtH
 jcZZYb2coW9KC14NaL9aE4PKZw==
X-Google-Smtp-Source: APXvYqxpPEGm+2UHeZbjVl2jSdGpMi/b2Xe2soYfLXU2pENpqL6KqScEe4kJzeeCzenWEThRkjVa+g==
X-Received: by 2002:aa7:9713:: with SMTP id a19mr465671pfg.64.1564084835161;
 Thu, 25 Jul 2019 13:00:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j1sm75405528pgl.12.2019.07.25.13.00.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 13:00:34 -0700 (PDT)
Date: Thu, 25 Jul 2019 13:00:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH REBASE v4 11/14] mips: Adjust brk randomization offset to
 fit generic version
Message-ID: <201907251259.09E0101@keescook>
References: <20190724055850.6232-1-alex@ghiti.fr>
 <20190724055850.6232-12-alex@ghiti.fr>
 <1ba4061a-c026-3b9e-cd91-3ed3a26fce1b@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ba4061a-c026-3b9e-cd91-3ed3a26fce1b@ghiti.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_130036_147564_81FE52B6 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, James Hogan <jhogan@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-mips@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 08:22:06AM +0200, Alexandre Ghiti wrote:
> On 7/24/19 7:58 AM, Alexandre Ghiti wrote:
> > This commit simply bumps up to 32MB and 1GB the random offset
> > of brk, compared to 8MB and 256MB, for 32bit and 64bit respectively.
> > 
> > Suggested-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > ---
> >   arch/mips/mm/mmap.c | 7 ++++---
> >   1 file changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/mips/mm/mmap.c b/arch/mips/mm/mmap.c
> > index a7e84b2e71d7..faa5aa615389 100644
> > --- a/arch/mips/mm/mmap.c
> > +++ b/arch/mips/mm/mmap.c
> > @@ -16,6 +16,7 @@
> >   #include <linux/random.h>
> >   #include <linux/sched/signal.h>
> >   #include <linux/sched/mm.h>
> > +#include <linux/sizes.h>
> >   unsigned long shm_align_mask = PAGE_SIZE - 1;	/* Sane caches */
> >   EXPORT_SYMBOL(shm_align_mask);
> > @@ -189,11 +190,11 @@ static inline unsigned long brk_rnd(void)
> >   	unsigned long rnd = get_random_long();
> >   	rnd = rnd << PAGE_SHIFT;
> > -	/* 8MB for 32bit, 256MB for 64bit */
> > +	/* 32MB for 32bit, 1GB for 64bit */
> >   	if (TASK_IS_32BIT_ADDR)
> > -		rnd = rnd & 0x7ffffful;
> > +		rnd = rnd & SZ_32M;
> >   	else
> > -		rnd = rnd & 0xffffffful;
> > +		rnd = rnd & SZ_1G;
> >   	return rnd;
> >   }
> 
> Hi Andrew,
> 
> I have just noticed that this patch is wrong, do you want me to send
> another version of the entire series or is the following diff enough ?
> This mistake gets fixed anyway in patch 13/14 when it gets merged with the
> generic version.

While I can't speak for Andrew, I'd say, since you've got Paul and
Luis's Acks to add now, I'd say go ahead and respin with the fix and the
Acks added.

I'm really looking forward to this cleanup! Thanks again for working on
it. :)

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
