Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D007092128
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 12:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5PQvgXtMCCpn4Pju9mfn8mDZYdCUtw7IsBHuqZuG/U=; b=oGRxadaT1mCSlv
	aBfTIcqeTQRQUBjwltpCSqE5NWmiWYOX/+3VryQpxwt5e6cNVAhQ7C0Wu1DWMVHF8zMq131Fs0fSh
	RoG5y6Fj0izriWibbg0r5l1+RmgJh14IOssPUMWEmKs+zd3yU1XoSJaghiO6LlbqYtsWcNJamS0Bc
	vuj+dTckOaR+MiMu9kIW4IqxoEFxNO/ZUCeweKVfKFUnnh2hzc2VrNTP69qN+Rv5ndWtXluHq1QVs
	yzpn8OC3pcwFd6n6EGgSzuYhkAO2QPi+77fnpJFNFCAWCtlrCYeNKcdwC1ko/nHdQ4ncvw/YgK2Rk
	5sTBQBeG+selG44CbkBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzeif-0004bT-9m; Mon, 19 Aug 2019 10:16:57 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeia-0004ai-Rp
 for linux-riscv@lists.infradead.org; Mon, 19 Aug 2019 10:16:54 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 86B43227A81; Mon, 19 Aug 2019 12:16:48 +0200 (CEST)
Date: Mon, 19 Aug 2019 12:16:48 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 08/15] riscv: provide native clint access for M-mode
Message-ID: <20190819101648.GA29645@lst.de>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-9-hch@lst.de>
 <20190813162958.GA27821@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813162958.GA27821@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_031653_053037_45DD8F89 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 05:29:58PM +0100, Mark Rutland wrote:
> > +	np = of_find_compatible_node(NULL, NULL, "riscv,clint0");
> 
> Since the MMIO layout is that of the SiFive clint, the compatible string
> should be specific to that. e.g. "sifive,clint". That way it will be
> possible to distinguish it from other implementations.
> 
> What exactly is the "0" suffix for? Is that a version number?
> 
> If that's a CPU index, then I don't think that's the right way to encode
> this unless the programming interface actually differs across CPUs. It
> would be better to use an explicit phandle to express the affinity.

It isn't a cpu index, I suspect a version number.  These show up
in a lot of the early RISC-V DTs coming from the UCB/SiFive sphere.
They've now spread everywhere unfortunately.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
