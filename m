Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8CDA3FDC
	for <lists+linux-riscv@lfdr.de>; Fri, 30 Aug 2019 23:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSc5ao3EIbMuuR1UAb7dlH4fCSLJ3uGKcq5RYDyg1Es=; b=nUcm9CHDYczHst
	BiliqlYQ1PO12uxzlfLzHwEKkzr5u+4r8PldkmilfHKiQFOupCr3U0rgQ5x/wpJL1oXJmykJHJVVg
	5Gdh9GqaoKZ89pPQ36J4bLigEBWplTmU0vXSNpbJhlvTvoxkpRuV9QPuqu/skl88Y9q8hg0deO5ZP
	iGj2OfesYWDEOHUjK9FqyeLabN7j0HPNoE1QA4nYnHq5lbBHTU/PB5uR0840sUzsWwt4Wxkg2zLFB
	rR0rxdclhhdPnCzuwSSi2mcH3ON4AoOPgDL1v6Q7H7oV4J6Kqsq5Vw8IgqJ7hP7oaZAWbiCOt8Vq9
	HL8y5Jw6dxv++/iGVt5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3oi7-0001GD-2g; Fri, 30 Aug 2019 21:45:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3oho-000179-Kc; Fri, 30 Aug 2019 21:45:17 +0000
Received: by mail-pl1-x641.google.com with SMTP id f19so3942404plr.3;
 Fri, 30 Aug 2019 14:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CyAnPYKlnqoE6HYrk4XrrLs/lfWC1furlwMXZwIbdJM=;
 b=Ey9XQvoj8H/Rnwv8NzD/KreDQNAtk/Y1mAfNtWWSPWRvpRHkSG3qzrkTUiyqzLyy8y
 FhYeM7nvgl239YS8plycKvLT74pvzlcX8njCo82d73vUDrqGOQIz8oARAkP7UKilrwM5
 NDqVYaJdxQw5YtmBNy2VGaqetGKnvddyuLZTFzzrXm1WRH2hh5P7VzQIaPjNRzRh/cM8
 +iOgz2nm0iGcnxDUVyloWrKJlS93KDGv8twzcGSeFsCL8uqXFf9uQEZtHNVy3yjgG/aD
 DEMAEjrPTZxgLBaKb3rpS25bBzOjAWuXx/Z+kiRAvu2tepHCjzQrK3HOb0q7by4MMmYW
 wmeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CyAnPYKlnqoE6HYrk4XrrLs/lfWC1furlwMXZwIbdJM=;
 b=ODvSA5qdsZaZhgbRTv9iw0WGl0VNj0iklI7EU4caHdVITiuRuPvNQYw6VmqssmdQGE
 zMQfBRTIo9uQLjPXai1W7oS3uYJ6kpzgo9bMOkJnQTA7ugdnlf68WGQychpvhD52Zbxq
 jqJmg+pDiGBkhh7Zs4AnukzJvHRBZYqdPtsrQkclNgs8+OA2Ig+XdSTdg6bUY90WscJ7
 3Hvv0Ku74Q8nlYxIlugN4ais81OOO+zfCIHh2Y++GhL61LaAaUEyuvRL/tbDhremf+8m
 kqP+j3knDL8KojJgVNOnSUmD43e4F1on3IWWEIt3vN6+OrNDI5FnbmHC6YMx5IACoCh9
 nyHw==
X-Gm-Message-State: APjAAAXEyNUE8OmAo732naP4GTwIIQVAY0ZiAg6fwSoLF7SlKhvME0OK
 kyt7hd9oRxlai3Qb25Q5/LY=
X-Google-Smtp-Source: APXvYqzQSc6jNbxZKUcovD9FZLciwfGuo7Kt2wn5aZSHSDm6zSKrBIeIlpBZCEWXRcfFUHXs7Afe6Q==
X-Received: by 2002:a17:902:9b8f:: with SMTP id
 y15mr18714988plp.194.1567201515169; 
 Fri, 30 Aug 2019 14:45:15 -0700 (PDT)
Received: from localhost (g75.222-224-160.ppp.wakwak.ne.jp. [222.224.160.75])
 by smtp.gmail.com with ESMTPSA id
 q69sm5777108pjb.0.2019.08.30.14.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 14:45:14 -0700 (PDT)
Date: Sat, 31 Aug 2019 06:45:12 +0900
From: Stafford Horne <shorne@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 05/26] openrisc: map as uncached in ioremap
Message-ID: <20190830214512.GX24874@lianli.shorne-pla.net>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-6-hch@lst.de>
 <20190823135539.GC24874@lianli.shorne-pla.net>
 <20190830160705.GF26887@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830160705.GF26887@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_144516_705322_E1A58ABD 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shorne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 06:07:05PM +0200, Christoph Hellwig wrote:
> On Fri, Aug 23, 2019 at 10:55:39PM +0900, Stafford Horne wrote:
> > On Sat, Aug 17, 2019 at 09:32:32AM +0200, Christoph Hellwig wrote:
> > > Openrisc is the only architecture not mapping ioremap as uncached,
> > > which has been the default since the Linux 2.6.x days.  Switch it
> > > over to implement uncached semantics by default.
> > > 
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > ---
> > >  arch/openrisc/include/asm/io.h      | 20 +++-----------------
> > >  arch/openrisc/include/asm/pgtable.h |  2 +-
> > >  arch/openrisc/mm/ioremap.c          |  8 ++++----
> > >  3 files changed, 8 insertions(+), 22 deletions(-)
> > 
> > Acked-by: Stafford Horne <shorne@gmail.com>
> 
> Can you send this one to Linus for 5.4?  That would help with the
> possibility to remove ioremap_nocache after that.

Sure, I will pick this up.

-Stafford

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
