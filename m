Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED77B3A444
	for <lists+linux-riscv@lfdr.de>; Sun,  9 Jun 2019 09:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ypfe/jNsctjtHIE4D2YA9NymZtgTDv3c5dE26Laj/k=; b=jA9HwrkVZpvOzl
	VBNYe3gaar+JSb0Vlf3zhzgKNYT7fqqgwok5HS5Z7PgIFSnmr/iJxtgNyveVyINgmdvJb3XI9v16h
	TqRkEfmZ7+eYRSlxpenLXLay8dmi5liZ8K0/RgWKiRsAUlzimphz22zPAJgmyghzF+nZjYN4IZflG
	qvisckfJR8lH6kpDkGv3qIVLeAq8LzQJ77yWlqJ3D2PhJp4/c1Nu7IvPaMwI5BTka597nLffopTVa
	yFd1jqtUiwzrkNGChNJMZ0dqvIaEn++u6F5Q7/SpoZhzmLPJw8VDK/5OurRxJNA3upthQsVlMtwUT
	LuyQYgPDH0Wd1sppjxUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZsg6-0001SS-Sf; Sun, 09 Jun 2019 07:55:46 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hZsg4-0001S9-Ta; Sun, 09 Jun 2019 07:55:44 +0000
Date: Sun, 9 Jun 2019 00:55:44 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] RISC-V: defconfig: enable clocks, serial console
Message-ID: <20190609075544.GA32207@infradead.org>
References: <20190605175042.13719-1-khilman@baylibre.com>
 <alpine.DEB.2.21.9999.1906081848410.720@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1906081848410.720@viisi.sifive.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Kevin Hilman <khilman@baylibre.com>,
 Loys Ollivier <lollivier@baylibre.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Jun 08, 2019 at 06:49:09PM -0700, Paul Walmsley wrote:
> On Wed, 5 Jun 2019, Kevin Hilman wrote:
> 
> > Enable PRCI clock driver and serial console by default, so the default
> > upstream defconfig is bootable to a serial console.
> > 
> > Signed-off-by: Kevin Hilman <khilman@baylibre.com>
> 
> Thanks, queued for v5.2-rc with Christoph's Reviewed-by:.

To repeat myself:  where do you apply it to?  And could we please just
have a shared maintainer tree on infradead.org or kernel.org so that
people don't have to chase multiple trees to base their patches on?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
