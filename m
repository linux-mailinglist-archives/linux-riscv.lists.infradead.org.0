Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AA89FA33
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 08:10:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68D2w/f6hDP8M+IrdRD5/xxU2nfOaTgfGe80G7BYAH8=; b=TvbdzrXWc2JHm0
	i7YlK0+ip1uw1/qEe7Db5w/LkjnUdOl731cf2y8xgOHiajUjCe40C5dPW5eAC6XdmSmSAQX5tOK8Q
	0kmKIVr2TNyox78Aj4f5tZotrhxOSKwXaVH+x1NHKcZdBPABWNXk4NnYm+2WQXtMaPx59sLLEhapZ
	+KhdDQyW3fNIVTf1/E4YZzAqvUbMUgo5UXr0a2XSaG0Uy9llQ4LxLe5UmNnX2b4+Ca613PJZUdgBi
	PIOCHVC5UEssi7D25J8zivVVux+67LLZu1CRduYoVYQS9Kr4HPmRUw4qbOCgBMsB2zC4z0NqmZlnx
	ny5ntlVIWqtyiAEr8bLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2r9Z-000658-BZ; Wed, 28 Aug 2019 06:09:57 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2r9Q-00064Q-AZ
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 06:09:50 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9028268AFE; Wed, 28 Aug 2019 08:09:42 +0200 (CEST)
Date: Wed, 28 Aug 2019 08:09:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH 8/8] riscv: ignore the SYS_RISCV_FLUSH_ICACHE_LOCAL flag
Message-ID: <20190828060942.GA21592@lst.de>
References: <20190822065612.28634-9-hch@lst.de>
 <mhng-363188c5-b80c-4935-8a84-861fbdb1e8e4@palmer-si-x1e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-363188c5-b80c-4935-8a84-861fbdb1e8e4@palmer-si-x1e>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_230948_519212_C627A7A0 
X-CRM114-Status: GOOD (  12.50  )
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
Cc: linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 06:10:33PM -0700, Palmer Dabbelt wrote:
> This is meant to perform a context-local flush, not a cpu-local flush.  The 
> whole point here is that userspace doesn't know anything about CPUs, just 
> contexts -- that's why we have this deferred flush mechanism.  I think the 
> logic is complicated but sound, and removing this will almost certainly 
> lead to huge performance degradation.

All calls to flush_icache_mm are local to the context.  Take a look at
what the current code does:

 - set all bits in context.icache_stale_mask
 - clear the current cpu from context.icache_stale_mask
 - flush the cpu local icache
 - create a local others mask containing every cpu running the context
   except for the current one
 - now if others is empty OR the local flag is set don't do anything
   but a memory barrier, else flush the other cpus

>
> Maybe I'm missing something, what is the specific issue?

The issue is that the current implementation of
SYS_RISCV_FLUSH_ICACHE_LOCAL only flushes the icache of the currently
running core, which is an interface that can't be used correctly.

riscv_flush_icache without that flag on the other handle already just
flushes the caches for the cpus that run the current context, and then
causes a deferred flush if the context gets run on another cpu
eventually.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
