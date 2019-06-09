Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F743A439
	for <lists+linux-riscv@lfdr.de>; Sun,  9 Jun 2019 09:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zw/J+pWrNEiS56/ZPgwss/CqDcXRrSiUom1JkWHgDPU=; b=OrMcZityCcbBO1
	sIibAi6RznIyOR8xe/ETsfBt4oVBT7ay2gmOmTvhyheeUAvHWI4TOblyv23qdMhMc4T3FNcBK3MFT
	Ax1ftWW4ReYDyFzHeK7O7pxdQqcmLK3OFJjhjOJb9dVGLJ+PHOJCODEkr4aGV7NJ08uiJv24cReCp
	6gY4OrZdQwIBWkrkKMqWU9svvZH/aM2QNhnGoeqBgZdyrJdL7SL9kJPM9zqHIUeunr2r1K1aoFuxr
	DxmbSa45wEvXbHw3lw1KdJNDk5zh++qKjqhdNtmuve/CAL1MpFYd3GzSl1P63cI/ENNRaSWwl7Unl
	7jmlGEGNAn/Yhj7z+ubw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZsa4-0006bn-Tj; Sun, 09 Jun 2019 07:49:32 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hZsa2-0006bN-3M; Sun, 09 Jun 2019 07:49:30 +0000
Date: Sun, 9 Jun 2019 00:49:30 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 1/5] arch: riscv: add support for building DTB files
 from DT source data
Message-ID: <20190609074930.GA25109@infradead.org>
References: <mhng-802d67ce-9f78-4ebc-9981-a27e5e4e40df@palmer-si-x1e>
 <alpine.DEB.2.21.9999.1906082245300.720@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1906082245300.720@viisi.sifive.com>
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
Cc: paul@pwsan.com, aou@eecs.berkeley.edu, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 lollivier@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Jun 08, 2019 at 10:50:14PM -0700, Paul Walmsley wrote:
> Once there are SoC variants that have different CPU cores, but with the 
> remaining chip integration the same, I think it would make sense to move 
> the CONFIG_SOC_ stuff out from ARM, RISC-V, etc., into something that's 
> not CPU architecture-specific.  But for the time being, that seems 
> premature.  Might as well have it be driven by an actual use-case.

We've already had a few SOC families with the same periphals glue and
either m68k/powerpc, powerpc/mips or mips/arm/arm64 CPUs, so this isn't
exactly new.  Not really sure the grouping adds that much value, though.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
