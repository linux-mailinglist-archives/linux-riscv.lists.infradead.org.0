Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774AEE27BA
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 03:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=on+wI4v94QfqOTCWJPe42+1Cy0MyZ+fOiKoVV/9rDR0=; b=tJjoElqyUl3tin
	/qgxeogz+VRVmDKQz+lqvE/EoLsLd1axtGxlDof27yk8v0r33YzmuvYOZZy4v/gcKCvay29hPH51I
	Tt4bYgKY+daJh6SEfUxLFe94a2gdn3dRJtyHDicFjQRcBCZBV+pWohL1DzuF5rYXcp9wLTmZ9TMn+
	phbWM5JrQXCTGktE+ygB0pJ+Kc39q2leSleGVlZRv3nbfrni3Eyf/kLABBzYvmaDYZpdmAoIxaKup
	aP3dKXTJPF2XiYcGvzE5NVKuUpLYXe0Z/cB/EQmiYuM6ymwO17b6P9RFJsx9QdJcE5LOUv9yi+T7W
	2lZVSHWaByupFPXApb2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNRxG-0001YO-B4; Thu, 24 Oct 2019 01:30:22 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iNRxD-0001Xn-Co; Thu, 24 Oct 2019 01:30:19 +0000
Date: Wed, 23 Oct 2019 18:30:19 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] irqchip: Skip contexts other supervisor in plic_init()
Message-ID: <20191024013019.GA675@infradead.org>
References: <alpine.DEB.2.21.9999.1910231152580.16536@viisi.sifive.com>
 <mhng-aefb3209-29c4-46db-8cf2-e12db46d9a6e@palmer-si-x1c4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-aefb3209-29c4-46db-8cf2-e12db46d9a6e@palmer-si-x1c4>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: jason@lakedaemon.net, maz@kernel.org, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, alan.mikhak@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 03:07:10PM -0700, Palmer Dabbelt wrote:
> > > +		/* skip contexts other than supervisor external interrupt */
> > > +		if (parent.args[0] != IRQ_S_EXT)
> > >  			continue;
> > 
> > Will this need to change for RISC-V M-mode Linux support?
> > 
> > https://lore.kernel.org/linux-riscv/20191017173743.5430-1-hch@lst.de/
> 
> Yes.

For M-mode we'll want to check IRQ_M_EXT above.  So we should just
merge this patch ASAP and then for my rebased M-mode series I'll
fix the check to do that for the M-Mode case, which is much cleaner
than my hack.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
