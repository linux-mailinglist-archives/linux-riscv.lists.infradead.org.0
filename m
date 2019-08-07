Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5C4843F4
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 07:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pIDUZIz9b1TGn0aQfYrDUVhwjwaeGCN+DHV2D3nTlI=; b=pihi27lt212Ir/
	E0Q8UkT1zLns4SvPQu+BlvE6qydcXCh2F2BP1fKM7OKEiP5a4qU7Y2YUUbBpEcA3ITdj6ciDHWu1m
	p0iu3jX1xC9JQpq76ymEffrS8JMAzu1Urx7Qjjo8yUFUUgDL0JHBvSUD7MtEkwWBlR+d/k1lI7TbX
	/6Y6fK8knum8kqJuSZadWqK2EcA2QPzpoYqDY+WADttCJxHh4LjGfNleiXUb2a0Es9JKemHSSYq4V
	ALO1hXBIR5ok1e5dK2cZ6k1DV/8rQP6GjS5rAGLTZmmyb5b5pnB9VcEaI5+yQyCrqm9pOYoewA1LI
	JG0obCyTF86pTmJxrLVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvEgR-00020J-DU; Wed, 07 Aug 2019 05:40:23 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvEgO-0001zd-0v; Wed, 07 Aug 2019 05:40:20 +0000
Date: Tue, 6 Aug 2019 22:40:20 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] Use CSR numbers instead of names
Message-ID: <20190807054019.GA1398@infradead.org>
References: <mvmr25z4toj.fsf@suse.de> <20190806204939.GA19596@infradead.org>
 <alpine.DEB.2.21.9999.1908061703100.13971@viisi.sifive.com>
 <CAEUhbmXz9EzjJvc4BQ46CGfSe-qyB0W7MEDZvABCpo5aLzXf3w@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908061838260.13971@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1908061838260.13971@viisi.sifive.com>
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
Cc: Christoph Hellwig <hch@infradead.org>, Andreas Schwab <schwab@suse.de>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>,
 linux-kernel@lists.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 06:39:59PM -0700, Paul Walmsley wrote:
> > 
> > I have already sent a similar patch (with more places fixed) on Jul 11.
> > https://patchwork.kernel.org/patch/11039421/
> 
> Christoph's patch predates yours.
> 
> If all looks well with your patch, I'll update it to remove the overlap 
> and queue it after his.

The one from Bin looks most comprehensive, so maybe go with that, plus
the hunk from Andreas for the instance that was only recently introduced.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
