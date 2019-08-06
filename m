Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A1C82DBF
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 10:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6bNOOVvO/TTakhKF4bd0lQb+hBYShC6UygAQDVfc5Q=; b=Nh5seEsfn8w9hC
	F2dr483X5BdC3/2D3Sz3xnUOn7v+oOrX7SdegVbx80+4gfBK33ZPI3jAzXCMerTZwjrcLMxEUS5tT
	jYaxCnETnsdKYiATnlvvxa56EOZ67gajjZbuDdj4wfsou525s0QOZNgotBq5l6vuxPSkzAk4UdBfI
	fO7miaT7ijfUWjpFS3flpN0o8pE9OjVy2EdCab4pYAAl3Xr/lclPdMqoFOmlULXT6VvZOvNAbctoh
	26jsar/P2n3qrEgtyEKIqx3I7VYYIbbSBAXi0nysQNK2mcZJOinjIs2tKOYDyraXVKHTc7R7qUHop
	/o4FECSw/zsoqL/oKK4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huusc-0004Ua-Gp; Tue, 06 Aug 2019 08:31:38 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1huusZ-0004UQ-TB; Tue, 06 Aug 2019 08:31:35 +0000
Date: Tue, 6 Aug 2019 01:31:35 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jim Wilson <jimw@sifive.com>
Subject: Re: About __udivdi3
Message-ID: <20190806083135.GA12410@infradead.org>
References: <20190805055844.GE4292@andestech.com>
 <20190806013723.GA5417@andestech.com>
 <alpine.DEB.2.21.9999.1908051911290.13971@viisi.sifive.com>
 <CAFyWVaYd1vGFLJj6hh+a5Ufubh3tvwER+-ShQXA3faEJbEFe3A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFyWVaYd1vGFLJj6hh+a5Ufubh3tvwER+-ShQXA3faEJbEFe3A@mail.gmail.com>
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
Cc: Eric Lin <tesheng@andestech.com>, dslin1010@gmail.com,
 alankao@andestech.com, Palmer Dabbelt <palmer@sifive.com>, rick@andestech.com,
 kclin@andestech.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 08:01:27PM -0700, Jim Wilson wrote:
> On Mon, Aug 5, 2019 at 7:13 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > > > It seems __udivdi3 only supports 64-bit platform.
> > > > Do you have any comments? Thanks.
> >
> > It sounds like you're describing a potential issue with gcc, rather than
> > the kernel.  If that's so, then the gcc mailing list(s) would be a better
> > place to discuss this:  https://gcc.gnu.org/lists.html
> 
> The kernel doesn't link with libgcc.a.  It has its own copy of udivdi3
> when needed.

Linus still maintains his stance to not support 64 by 64-bit divisions
on 32-bit platforms, and thus Linux does not support it.  You can do
64 by 32-bit divisions using the awkward do_div macros, but that's it.

This is supposed to apply to all 32-bit platforms, not just RISC-V.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
