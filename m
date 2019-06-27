Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6123057ED9
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 11:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1fILQrpxDj9Q0d4AcHZ6BrbprceqjOm85Ova2rJLOo=; b=pAt2+jGUi/RbJW
	WCXluKguF6lb/0hOdEnAZB9W6ouONhHM1w/zXpx6hOzYkHwaNSqDHHpToYxIN3oe94wXL5sF2wUGe
	Q5pTbtsojpPTkKPIozq/j8XuJoR7HR+whaF4sxTQWkn57+U+SbRvRQ6esw0dm4lCycP8AIFlc+j/u
	1hCfQ0zUEsJJorZ37hY8Gknu6GEXvs+vqbxCn9/NbtkQ26csD1VJJmRODx9w/G6Z9sJp0dOUNOy7e
	1LWr5Nkf0UTjTClGGZoWPqQmNx62t+tHqTSCHMJ7M9MRU/hbp1gORjEKNDMi4yfdw+SGk07nU9IOG
	eIusNiJfxiiqzOlVlnAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgQHR-0007fA-2w; Thu, 27 Jun 2019 09:01:21 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hgQHM-0007f0-SE; Thu, 27 Jun 2019 09:01:16 +0000
Date: Thu, 27 Jun 2019 02:01:16 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] MAINTAINERS: change the arch/riscv git tree to the new
 shared tree
Message-ID: <20190627090116.GB23838@infradead.org>
References: <20190613070721.8341-1-paul.walmsley@sifive.com>
 <20190613072518.GA1327@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613072518.GA1327@infradead.org>
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:25:18AM -0700, Christoph Hellwig wrote:
> On Thu, Jun 13, 2019 at 12:07:21AM -0700, Paul Walmsley wrote:
> > Palmer, with Konstantin's gracious help, set up a shared kernel.org
> > git tree for arch/riscv patches going forward.  Change the MAINTAINERS
> > file accordingly.
> > 
> > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> > Cc: Palmer Dabbelt <palmer@sifive.com>
> 
> Should you be added to the maintainers?  Is Albert still around, as
> I see a lot of people Ccing him, but never getting an answer?

ping?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
