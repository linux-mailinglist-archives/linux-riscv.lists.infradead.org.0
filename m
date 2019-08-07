Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDC8843FC
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 07:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDHiOXL7NzPuqstdtR5sl59BqMCgMgwjLUeeX3JHtjQ=; b=rDP2IL3mm2fT2/
	1EHktamIBKkh8WDbNxKLndvKuyghXCBuUKWsAFCD7gJT1H89jexGr+CZ3I0XLoo6ELwvERGApM0vj
	RqyeWF2K9lni94+7xwHWAHvI244NI41iCtG9GdR0MFO1hV9nmJmLSKt5Q1eG58ueo/Pcm9wbWjhEj
	CcZmKRxXNQzTNNzd0obx3TiVrhqK8EIOkx3fnBKPAehu8MqyXsedie5KKT5nXXU2h5v878dGOc1bP
	GBsKFpmvEh52Q3JOVT81DXvAnaqwPxWQV++D9zi99IBiQ1s3yPr3/W1tV4phidrqW0gO+BJutby9X
	L167+lCHE5LYHQA1/6Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvEim-0002CA-MZ; Wed, 07 Aug 2019 05:42:48 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvEik-0002Bp-3E; Wed, 07 Aug 2019 05:42:46 +0000
Date: Tue, 6 Aug 2019 22:42:46 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: kbuild: add virtual memory system selection
Message-ID: <20190807054246.GB1398@infradead.org>
References: <alpine.DEB.2.21.9999.1907261259420.26670@viisi.sifive.com>
 <20190802084453.GA1410@infradead.org>
 <alpine.DEB.2.21.9999.1908061648220.13971@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1908061648220.13971@viisi.sifive.com>
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
Cc: Christoph Hellwig <hch@infradead.org>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 05:02:03PM -0700, Paul Walmsley wrote:
> The rationale is to encourage others to start laying the groundwork for 
> future Sv48 support.  The immediate trigger for it was Alex's mmap 
> randomization support patch series, which needs to set some Kconfig 
> options differently depending on the selection of Sv32/39/48.  

Writing a formal todo list is much better encouragement than adding
dead code.  Th latter has a tendency of lingering around forever and
actually hurting people.

> 
> > but actively harmful, which is even worse.
> 
> Reflecting on this assertion, the only case that I could come up with is 
> that randconfig or allyesconfig build testing could fail.  Is this the 
> case that you're thinking of, or is there a different one?  If that's the 
> one, I do agree that it would be best to avoid this case, and it looks 
> like there's no obvious way to work around that issue.

randconfig or just a user thinking bigger is better and picking it.

> > Even if we assume we want to implement Sv48 eventually (which seems
> > to be a bit off), we need to make this a runtime choice and not a
> > compile time one to not balloon the number of configs that distributions
> > (and kernel developers) need to support.
> 
> The expectation is that kernels that support multiple virtual memory 
> system modes at runtime will probably incur either a performance or a 
> memory layout penalty for doing so.  So performance-sensitive embedded 
> applications will select only the model that they use, while distribution 
> kernels will likely take the performance hit for broader single-kernel 
> support.

Even if we want to support Sv39 only or Sv39+Sv39 the choice in the
patch doesn't make any sense.  So better do the whole thing when its
ready than doing false "groundwork".

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
