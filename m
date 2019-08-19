Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DF091D04
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 08:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnqB813dSjDTk0YDhT+rQDTspAvvGxhUap+DIk/llvU=; b=VSejQO/VBH0Y3i
	Twv1E++Uy5+xk0yDIOFAvGYg8gbl1/3/M3hGUCBCsUTgNzgnxq6dwoqyMl5cbggbUGeMSi0L8ffS4
	Tbqt26gxYrLWCuKyC+eZ7KqL5xErr4VcwQXXouVjPxXDuhp6cg7ptOkqBgHop4qakwUswVCdb+pyM
	zQhQTGSTNaegsxzXNRtLEm4ysn/MFLirdgF7PExlbnuiwATKQ7nTqX5/UMpQKanrWqUtf6lYnScCx
	jZN/olGCaIgZt41WegPjD+5uA9T5dixk0qTVkse38qO4rmBJ3lomRl6Pd13S+4fG1sPNIY7YYSc5P
	vf6ERWqO9VAb/284k/lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzb7b-0000eU-PX; Mon, 19 Aug 2019 06:26:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzb7Y-0000e1-MZ
 for linux-riscv@lists.infradead.org; Mon, 19 Aug 2019 06:26:25 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2018B68B02; Mon, 19 Aug 2019 08:26:20 +0200 (CEST)
Date: Mon, 19 Aug 2019 08:26:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
Message-ID: <20190819062619.GA20211@lst.de>
References: <20190818082935.14869-1-hch@lst.de> <20190819060904.GA4841@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819060904.GA4841@zn.tnic>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_232624_891241_3168B56B 
X-CRM114-Status: GOOD (  11.09  )
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
Cc: palmer@sifive.com, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 08:09:04AM +0200, Borislav Petkov wrote:
> On Sun, Aug 18, 2019 at 10:29:35AM +0200, Christoph Hellwig wrote:
> > The sifive_l2_cache.c is in no way related to RISC-V architecture
> > memory management.  It is a little stub driver working around the fact
> > that the EDAC maintainers prefer their drivers to be structured in a
> > certain way
> 
> That changed recently so I guess we can do the per-IP block driver after
> all, if people would still prefer it.

That would seem like the best idea.  But I don't really know this code
well enough myself, and I really need to get this code out of the
forced on RISC-V codebase as some SOCs I'm working with simply don't
have the memory for it..

So unless someone signs up to do a per-IP block edac drivers instead
very quickly I'd still like to see something like this go into 5.4
for now.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
