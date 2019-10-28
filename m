Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBA6E6DDE
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 09:12:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sp7ZMcwNgyKRvAo7gG2fGh5iSjRYsj4aYc8Nt1f5y7k=; b=KG+4U6cmGP9BKT
	5ydT4oeH9rRH/1vWZFb6hdjnKq8BnJ+/jO2oGfGER/KxuRPTZXoznaMV/oqhlM0ys2j5Tqe73Gwo1
	l2iX83VjJiS5XVSuZR9fEI1YzmpNsGHFpa3NYuy5mpgTaIm9NDU0ddzEJjzpmApz0spnF7L461uPb
	Qmeq8EN8qp4ksTq8KyCzbKVK/5EgPZMS5ezB5kiOc+GtSFwwid4FMKVW3QzKdPGIHRSc2+/mhFWym
	6zDZlfI2onq758isv2BDIyCMMlmbGNgSd/7cohAtBF6EpfL2bjz3LvgLoBRNN+SUeRWFk0DHLNtIT
	/dyvLoT6tgjy4h6yvaQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP08w-0003Zv-6l; Mon, 28 Oct 2019 08:12:50 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP08t-0003Z1-6f
 for linux-riscv@lists.infradead.org; Mon, 28 Oct 2019 08:12:48 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E8C9F68AFE; Mon, 28 Oct 2019 09:12:44 +0100 (CET)
Date: Mon, 28 Oct 2019 09:12:44 +0100
From: Christoph Hellwig <hch@lst.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 03/15] riscv: abstract out CSR names for supervisor vs
 machine mode
Message-ID: <20191028081244.GA20974@lst.de>
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-4-hch@lst.de>
 <alpine.DEB.2.21.9999.1910181647110.21875@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1910181647110.21875@viisi.sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_011247_392696_825D9FF1 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 04:55:02PM -0700, Paul Walmsley wrote:
> The basic idea looks good to me, but some of the X-prefixing can make the 
> code difficult to read.  The Xret macro looks fine to me, as do the 
> XIE_XTIE macros.  But I think it would be better if the X-prefixes on the 
> rest of the macros and structure members could be dropped.  This also 
> aligns with the way that these registers often are discussed at the 
> architectural level; e.g., we'd talk about the "epc" registers, not the 
> "xepc" registers.

If we get of the x we should get rid of all of them.  I'll make sure it
is all gone for the next version.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
