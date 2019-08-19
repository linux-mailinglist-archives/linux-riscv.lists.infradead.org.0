Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3FD91F6D
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 10:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VH2C1VNZ4FGhGhZ5WGppW4KUl6YWa0UZyWNtgVz9WWE=; b=txRMKJhpLjClRK
	zVds+gNdDZSJINPDu8aFaYTNsKnrnWmkRQeufF7OOLiOWPQ3JY66IQ2Dx2nXt84+/1xPkXGuJaEPm
	mwqBizeAfq58DRiFpZk/d9MkgYFBTJtCbunoCWYTTGr02rwuF3MZbIpgsDYTbBflvEKeZ4OkBTiQ/
	k29VZoDA+WC/0FEk40o9sn8LyaNDr3CrS2JUzKVKBUM9lzfSJxml5X5uzAbyR4mckV3KsKT0afA98
	kiUe5/IHnN/FeMq0qI8A53j91TNuuZzAcxGKs9MsCI224DCoC6v+p4Yr1CyNhGyrJj2MIEq5t08tc
	KnAusI+8LHF8K77O9hMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdSq-0002dv-6c; Mon, 19 Aug 2019 08:56:32 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdSZ-0002QI-FH; Mon, 19 Aug 2019 08:56:16 +0000
Received: by mail-oi1-f193.google.com with SMTP id c15so744119oic.3;
 Mon, 19 Aug 2019 01:56:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6G5Q8MNHtBsxtM0EYIY9kLhACl1vZMsZYLOG6VK87LE=;
 b=ozDAE40FHDkHaDRIPFM5yhkgQazN9ijiuFzEPzJBaHsLgBvY+aPgE9UOJTjyQJgDKg
 OIrDyQc8i1HwxBjH6pa/+3qVt0sFKsgCeb3xVNeuYWFFrqBs+fSIvzIJE6oWy+x5Oamc
 1CjRojNaYgHzBw3OwRJ0rmtdXsLHEpeChxsLbYSxm1fyd+wwEraximbPqah0OPG+LA+x
 gmJ1324OQSzT9ZFqsSX5Z+3A78LzM2mOCSr/9kkipWtG4MI5qKPbqUSit7fUMcxTg0BL
 MUsyKUzQxiWoKH3ZwahrpBlFa2it4K8BBq7xteNHRyWeRAzxEGlCTVI7GWg1lTCFn+6g
 mh7g==
X-Gm-Message-State: APjAAAXP08mQI94aTvYSvWqgoaMbINnEirY/Geqm5G2EQxUWPZr5PWUH
 vbDRBRO4hWq9TorIaRURyWPH1QPg0q0H13NG3Bs=
X-Google-Smtp-Source: APXvYqwNkMBh58jQZs/taAE8CIPOk6D0evfJ20SfbPqDG1zrFPybSy7xKWIfKgi9aIO2Yy6HJzobqI2PMgSWcaN0QpY=
X-Received: by 2002:a54:478d:: with SMTP id o13mr12702951oic.54.1566204974376; 
 Mon, 19 Aug 2019 01:56:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-9-hch@lst.de>
In-Reply-To: <20190817073253.27819-9-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 19 Aug 2019 10:56:02 +0200
Message-ID: <CAMuHMdWyXGjokWi7tn9JHCTz9YMb_vHn6XKeE7KzH5n-54Sy0A@mail.gmail.com>
Subject: Re: [PATCH 08/26] m68k: simplify ioremap_nocache
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_015615_513540_C55ECFD3 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Sat, Aug 17, 2019 at 9:48 AM Christoph Hellwig <hch@lst.de> wrote:
> Just define ioremap_nocache to ioremap instead of duplicating the
> inline.  Also defined ioremap_uc in terms of ioremap instead of
> the using a double indirection.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

BTW, shouldn't we get rid of the sole user of ioremap_uc(), too?
Seems to make a difference on x86 only, where it is "strongly uncached"
(whatever that may mean ;-)

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
