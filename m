Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C233E2AB2
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 09:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvQfEcoSYw8ggSIvuqNiYFM7q3QjPzjGSBNQ+wCWUS8=; b=iS19MilLUuBoMd
	hLDsDCKU8Y+4bwqF/izleoivPC4wXN/hVO2ckcKj0lQcseuUHn8R9ZTF1HCTMPPkdwgXqNJWvWDE7
	G0J2sxdTV0eh6StWNXSBSoe2K3xU+G9rhiFXpfiKcwhl+MtEXbySlTaelWOww62AmGo8qAkZaQq5p
	i5YzJ3/M7F+CwRtuJDoWPeE6p6LyCO17sCGmhmsxU4RdcS62Lpk3mvm/R8d5DEl77z8qOeVRtk00I
	A1FrVWRZ16YXdD4ZMoSNymw+HEmoGfIp4xZ8HDy0bfb+Q+m2HWhqxKVNBqjslKA9vaRzfZmh3aYC9
	cNJv01zxBiQpldvIa/RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNX9O-0004Mv-5D; Thu, 24 Oct 2019 07:03:14 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iNX9L-0004MN-If; Thu, 24 Oct 2019 07:03:11 +0000
Date: Thu, 24 Oct 2019 00:03:11 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] irqchip: Skip contexts other supervisor in plic_init()
Message-ID: <20191024070311.GA16652@infradead.org>
References: <alpine.DEB.2.21.9999.1910231152580.16536@viisi.sifive.com>
 <mhng-aefb3209-29c4-46db-8cf2-e12db46d9a6e@palmer-si-x1c4>
 <20191024013019.GA675@infradead.org> <20191024075116.48055961@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024075116.48055961@why>
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
Cc: jason@lakedaemon.net, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 alan.mikhak@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 07:51:16AM +0100, Marc Zyngier wrote:
> > > > Will this need to change for RISC-V M-mode Linux support?
> > > > 
> > > > https://lore.kernel.org/linux-riscv/20191017173743.5430-1-hch@lst.de/  
> > > 
> > > Yes.  
> > 
> > For M-mode we'll want to check IRQ_M_EXT above.  So we should just
> > merge this patch ASAP and then for my rebased M-mode series I'll
> > fix the check to do that for the M-Mode case, which is much cleaner
> > than my hack.
> 
> Does this need to be taken as a fix, potentially Cc to stable? Or is
> that 5.5 material?

So I though that the S-mode context were kinda aways to be sorted before
M-mode, but I can't find anything guranteeing it.  So I think this
actually is a fix, and getting this queued up in the next -rc would
really help me with the nommu stuff - otherwise we'd need to take it
through the riscv tree for 5.5 to avoid conflicts.

Btw, here is my:

Reviewed-by: Christoph Hellwig <hch@lst.de>

for the patch.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
