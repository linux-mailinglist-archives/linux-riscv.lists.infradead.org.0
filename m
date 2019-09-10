Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3307FAE364
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 08:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DM4jlpfQmlnBhxcsCYn0eN1n5QsE04hsV5ttCaRj9fM=; b=CGONIUP2HXQ0QR
	utfIL+NI+o0GPeeiSN50n6aCvGpSVEPIyCSI90u+bu9URTPMYVpAbcr8o9kzLotaJ5+DQObAXFSzP
	1YhcMCUAsM4r8D7d0pjIYhOWJl6Ht6DzjfwLK5evP022fB4afXo8Vbzft/wM8itBerplAdeg9jaiK
	3PXd9yjgqWSlkaD3QE7PYDmqZaFUJZ2hQ4xXYhWXE5KyGhCTL4DS4yLPXzFcqyWc2Ygj86dIfTGuW
	EonySo/bZpniq59EXeWy5HqfSk8DKHxbTuynqRjjN3IbcPIMt6J6aKK8FoEtGVxWavj/RSg5OToM0
	pElA0nRbaHeboFMSyLjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ZCH-0002nJ-ND; Tue, 10 Sep 2019 06:00:13 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i7ZCE-0002mj-RI; Tue, 10 Sep 2019 06:00:10 +0000
Date: Mon, 9 Sep 2019 23:00:10 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [v5 PATCH] RISC-V: Fix unsupported isa string info.
Message-ID: <20190910060010.GA6027@infradead.org>
References: <20190807182316.28013-1-atish.patra@wdc.com>
 <20190812150215.GF26897@infradead.org>
 <3fb8d4f0383b005ecd932a69c4dd295a79b6fb1a.camel@wdc.com>
 <20190818181630.GA20217@infradead.org>
 <67e670a4600d7dc7ec3c7a7374e330b9a1dbe654.camel@wdc.com>
 <4615b682352a2e67094d327fa058ec7dd287423f.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4615b682352a2e67094d327fa058ec7dd287423f.camel@wdc.com>
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>, "hch@infradead.org" <hch@infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 11:27:57PM +0000, Atish Patra wrote:
> > Agreed. May be something like this ?
> > 
> > Let's say f/d is enabled in kernel but cpu doesn't support it.
> > "unsupported isa" will only appear if there are any unsupported isa.
> > 
> > processor       : 3
> > hart            : 4
> > isa             : rv64imac
> > unsupported isa	: fd
> > mmu             : sv39
> > uarch           : sifive,u54-mc
> > 
> > May be I am just trying over optimize one corner case :) :).
> > /proc/cpuinfo should just print all the isa string. That's it.
> > 
> 
> Ping ?

Yes, I agree with the "dumb" reporting of all capabilities.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
