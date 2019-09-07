Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B158AC4AA
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Sep 2019 06:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQzmva5vLS66jYSjLH303qtYzd/2F9Mbeq+/dlBZk/o=; b=kb4vWwFZ1YHh/Y
	ru9oW6IVGmqmTSxasmjAlhiyHPMoHvuBNyMtqswcS/R4HZmKwnAHImNL/HRHgyt1Ic5LKYl5k5dpQ
	SJAHeR4dgadaYtvAAa3q5JISOKDm9mfPun+574eR+5rpxkK4lHiEovTUQ9bdD3lXUjbrN5t673JeE
	DMw4hCQyUUA28mp7LeN3R56H0Q/3v2Pb+HiUOPbyYXJ++jdVwDwxn34ae6BxjOhqojRM41l7Wn45z
	dtfEKsprtHrSPPjCQK/j5NTykKOcFzAd2veJbywLOWGgWTC9VC/jB+4N9qHNLbudMKMnMX5pa4oOF
	WxU7IyOgTx+68IRqiT3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6SYK-00069Y-RW; Sat, 07 Sep 2019 04:42:24 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6SYG-00068x-Tc
 for linux-riscv@lists.infradead.org; Sat, 07 Sep 2019 04:42:22 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id ABA0268B05; Sat,  7 Sep 2019 06:42:17 +0200 (CEST)
Date: Sat, 7 Sep 2019 06:42:17 +0200
From: Christoph Hellwig <hch@lst.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
Message-ID: <20190907044217.GC21510@lst.de>
References: <20190818082935.14869-1-hch@lst.de>
 <20190819060904.GA4841@zn.tnic> <20190819062619.GA20211@lst.de>
 <alpine.DEB.2.21.9999.1909061527510.6292@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1909061527510.6292@viisi.sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_214221_108198_1258E40D 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: palmer@sifive.com, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, Borislav Petkov <bp@alien8.de>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 03:33:02PM -0700, Paul Walmsley wrote:
> If that's your primary concern, then in the short term, how about just 
> sending a single-line patch to the arch/riscv/mm Makefile to skip building 
> it if !CONFIG_SOC_SIFIVE?  Assuming, that is, you won't be enabling EDAC 
> support for those low-end SoCs.  Then you won't need to get the ack 
> from the EDAC folks in the short term.  

Paul, stop it.  The patch that meged this was complete crap and fucked up.
And instead of just fixing up this mess ASAP you just keep arguing even
when I finally get hold of a RISC-V maintainer after weeks of waiting.

If this isn't going to get any better I'm just going to bypass you for
RISC-V patches and will send patches straight to Linus.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
