Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC33DA3B0E
	for <lists+linux-riscv@lfdr.de>; Fri, 30 Aug 2019 17:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1/ImRQtRHmeZ2O85bIFQ+sAPFSq0A+gLri1w3ssI3o=; b=cE9o+OeB0pIrFC
	RcCPoouaHkcIB3t7/hcZuxjPHBI4KWP7lh6F668j8A8DkKApHs6mRfhNHso1le7mnx+/BgnA2Bkif
	XUGSMop3mFC845/koSylnyYJzEvurhsSGJCFEIyIVTJLK7wZq8o1Fk9awZ20gbuioGoZyajDF3xmL
	mvpu3mh9YDFWl4Rv95CoAIVrt1DPSY8pir42toD9xkj+4zRlnaJ/VIn8D5qZ80GtN8Q4qomgSHhDZ
	bVMbqy6AtiW4KuT0a0txjIyIBlB16WVs1eqpeLdyZb8cMJyTtpnIxN8jNXjjXrEkv7iIV79v+SbOX
	aICcEe3LGZ8cPfzukycQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jDJ-0007wd-GS; Fri, 30 Aug 2019 15:53:25 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3jDG-0007w4-FQ; Fri, 30 Aug 2019 15:53:22 +0000
Date: Fri, 30 Aug 2019 08:53:22 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] riscv: add arch/riscv/Kbuild
Message-ID: <20190830155322.GA30046@infradead.org>
References: <20190821092658.32764-1-yamada.masahiro@socionext.com>
 <20190826113526.GA23425@infradead.org>
 <CAK7LNAQ_5Hz_CXAdx8W0bLjMWQ08KDWK3gG2pfDZOEE+cr0KEw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAQ_5Hz_CXAdx8W0bLjMWQ08KDWK3gG2pfDZOEE+cr0KEw@mail.gmail.com>
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 02:14:59PM +0900, Masahiro Yamada wrote:
> There is a small documentation about "Makefile" vs "Kbuild"
> in Documentation/kbuild/modules.rst section 3.2

I know that part.

> 
> It is talking about external modules, but the benefit applies
> to arch/$(SRCARCH)/Kbuild as well.

I fail to fully understand this part, though.

> arch/$(SRCARCH)/Makefile is included by the top Makefile
> to specify arch-specific compiler flags, etc.
> 
> On the other hand, arch/$(SRCARCH)/Kbuild, if exists, is included
> when Kbuild actually descends into arch/$(SRCARCH)/.
> 
> This allows you to hierarchize the sub-directories to visit
> instead of specifying everything in flat in arch/$(SRCARCH)/Makefile.

Yes, but what is the plan in the long run?  arch/$(ARCH)/Makefile
is still a weird hodge-podge of overriding global variables and misc
Makefile targets, it now just has a tiny little work.  Is there any
actual benefit from using Kbuild for the build process?  Can we
eventually move the setting of variables in the Makefile into another
special purpose file?  Is the support for actually compiling kernel
source files from the arch/$(ARCH) Makefile eventually going away?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
