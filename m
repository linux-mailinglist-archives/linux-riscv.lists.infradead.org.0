Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18815A5072
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Sep 2019 09:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Od94VarLSck07oZ7+k9IWDsT89rzz7oY6eUykGithnw=; b=QloKkriFHMNNaC
	GQLSLnrcZ9zoK/DnJMpBNJR5PO+g805l6OKPTemffcdk71W67ooWwOBpE8D2t4CCf+lvlsN0yiit6
	LuEQnZqmlvL+mFR4lnP6/9oMxxGZ/Yj5sg4UI6zTvEIZXfSfHdnOZKQcCqxE/i728kkq1IWJ46sbZ
	Q2LuRRtdTHgvYEO0tAxhuf7VshRkNUuBxgV+XNdYd6EEf/UsuLAlH7CzkMc6nQG5lni50MB61UHVL
	dC7exHRzGttaGfIxtr0MtYZC6kDQHbueDs4yFzwJtPy5fMOuhXXBxcEfXh5xsskA3LMepKgyRBicr
	o3/usV9ncJ3Jpng17VIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hAp-0000LS-3U; Mon, 02 Sep 2019 07:54:51 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4h9G-0007kd-1F; Mon, 02 Sep 2019 07:53:15 +0000
Received: by mail-ot1-f66.google.com with SMTP id g16so906889otp.12;
 Mon, 02 Sep 2019 00:53:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eXerReUtklcQDMDiAd2B7yy5/iYyeA9QfRGIULHn46Y=;
 b=BqJbzqx/bqpKT9f66oFCVyZrK/uucwjs4N3enBw3eDy6U7SBlRyzq6dFlbb++WH4RO
 PbYJp0FrtEtA4say6fUx7NDcR4EPK2gkDKGSG82lJUGZtKPWD0HHNl/RqKqlB2Z952EE
 4ASyxznXZP/X0RGv3s3FvFMMUQnQEAJP7d6fsYeZC6BJ9O2XHZ/CNQsalsTH14Sbb1mK
 DmLxxG1zuC1Zl1D8K8Q2JB4Np5osxMyL+ZVeaTI6HtOCBvX8MqyZqNxkLucXwHDX9Ggt
 0y2jDf6OY2RVcUIJNPQwwwuye1dhHYk6av76fO+R2fcz1Q753lJTwwWxEgrdLItbg6IS
 3/gQ==
X-Gm-Message-State: APjAAAVrO/6vGF4/lv7hQ55mS6+R90F9QXIsbZn+1BWkCnbPfCtwsNC6
 tppz8P73UAOmrvd0utmJPpxepzHc0E2uVmR9XtY=
X-Google-Smtp-Source: APXvYqwnZmuBQPAycR4wh+MzLxpLnaIqn9yYtJhnEginGgy5iGXJS00OPV33e9x6cT87GYQg3tA+HlJbqb3xbqDiJRA=
X-Received: by 2002:a9d:61c3:: with SMTP id h3mr14729198otk.39.1567410792636; 
 Mon, 02 Sep 2019 00:53:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-9-hch@lst.de>
 <CAMuHMdWyXGjokWi7tn9JHCTz9YMb_vHn6XKeE7KzH5n-54Sy0A@mail.gmail.com>
 <20190830160620.GD26887@lst.de>
In-Reply-To: <20190830160620.GD26887@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Sep 2019 09:53:01 +0200
Message-ID: <CAMuHMdXB=DWyu=Y25gih5poeanVnhLEP2MXoozvxdEY6op32FA@mail.gmail.com>
Subject: Re: [PATCH 08/26] m68k: simplify ioremap_nocache
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_005314_154377_492CA570 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Linux-sh list <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, sparclinux <sparclinux@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>, Greentime Hu <green.hu@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>, Guan Xuetao <gxt@pku.edu.cn>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 linux-mips@vger.kernel.org, alpha <linux-alpha@vger.kernel.org>,
 nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On Fri, Aug 30, 2019 at 6:06 PM Christoph Hellwig <hch@lst.de> wrote:
> On Mon, Aug 19, 2019 at 10:56:02AM +0200, Geert Uytterhoeven wrote:
> > On Sat, Aug 17, 2019 at 9:48 AM Christoph Hellwig <hch@lst.de> wrote:
> > > Just define ioremap_nocache to ioremap instead of duplicating the
> > > inline.  Also defined ioremap_uc in terms of ioremap instead of
> > > the using a double indirection.
> > >
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> >
> > Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
>
> Do you mind picking this up through the m68k tree?

Sure. Applied and queued for v5.4.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
