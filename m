Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE6BDB327
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxtiJYPHws3Vry03pavlXiB7U94oXGxNZ/WaXdoo5xA=; b=LqsZZ7eBHg8pRK
	TXl1modzSrgy44rVjX1qkGEyS51GmqU/NzYYVGXj47VQ11VQRq821iQlzbnM8iBWvd1Qoazno5eE+
	ZrKVDSHBG/Z/vBR1qAQzuoB+BcjPs4R3gWs5wlwfTw1RnoDkGYxEIdSojx7dMvbAk1HJOqFg2k/pU
	bgVxWS6ZC6djKKmGOHapxkOPwfcu7RuY+3CHdUk6fWyJmqBaHIVnT8taGMKlHvZ8QIgGogbku38ot
	TCYbH9UFCXtlEeUpI0cGOqRNTMwi0bo7zMRZJcV5EQ4Fzt24BjkKh3OCYeDMMAEMDkNSHjKRI5mmX
	6v7i9JG/AbBDzjDfQ1JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9Qx-0000Qe-84; Thu, 17 Oct 2019 17:19:31 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9Qu-0000Q2-KV
 for linux-riscv@lists.infradead.org; Thu, 17 Oct 2019 17:19:29 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B322368BE1; Thu, 17 Oct 2019 19:19:24 +0200 (CEST)
Date: Thu, 17 Oct 2019 19:19:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
Message-ID: <20191017171924.GA10928@lst.de>
References: <20190818082935.14869-1-hch@lst.de>
 <20190819060904.GA4841@zn.tnic> <20190819062619.GA20211@lst.de>
 <20190822062635.00f6e507@coco.lan> <20190927225304.GA18456@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927225304.GA18456@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_101928_823813_424C08FC 
X-CRM114-Status: GOOD (  13.61  )
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
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Mauro, can you Ack this patch?

On Sat, Sep 28, 2019 at 12:53:04AM +0200, Christoph Hellwig wrote:
> > > well enough myself, and I really need to get this code out of the
> > > forced on RISC-V codebase as some SOCs I'm working with simply don't
> > > have the memory for it..
> > > 
> > > So unless someone signs up to do a per-IP block edac drivers instead
> > > very quickly I'd still like to see something like this go into 5.4
> > > for now.
> > 
> > I'm wandering if we should at least add an entry for this one at
> > MAINTAINERS, pointing it to the EDAC mailing list. Something like:
> 
> Sounds fine.  Can you also ACK the patch with that, as Paul mention
> in another thread he wants an EDAC ACK for it.
---end quoted text---

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
