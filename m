Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3BC57ECD
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 10:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xnw5ah7q5i/MDIZ4yCBD6ggBCyQn0PFUys0a/SMdO4M=; b=KJTJ8Qwzh4B40G
	PGfvyLPD8kGTfLKCHyxOOEGmjdL1ll7TSKyeH8oz2lGol3PrnC92kK+OJjOrqi4y3cIxhhP6Phyl0
	Qugq5BGMHXHqG66xLOWUpLnQ6t8RHcbGXJPvjwaee1QMFaJau4MFtgouGMi7smViD14a9IE8XoNz1
	cK1d+FVlqBwbAHRlk9K3CmDjWihaCrjvCVeMzzBLC0AgIx/ZHi+aED0DTpjULXMhWXNCxSnUUH1bW
	jF5Y1qr8eD00+nguklzeEr+JaHtBaOTLidYCagLgu7td5912HOUKL939T5xeGAjcXwhgurda1/q7H
	HH12ywq/qVUqJqlJmTXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgQFd-0006B3-Kt; Thu, 27 Jun 2019 08:59:29 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hgQFa-0006As-NS; Thu, 27 Jun 2019 08:59:26 +0000
Date: Thu, 27 Jun 2019 01:59:26 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH] riscv: ccache: Remove unused variable
Message-ID: <20190627085926.GA15810@infradead.org>
References: <1561624486-22867-1-git-send-email-yash.shah@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561624486-22867-1-git-send-email-yash.shah@sifive.com>
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
Cc: aou@eecs.berkeley.edu, palmer@sifive.com, linux-kernel@vger.kernel.org,
 sachin.ghadi@sifive.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 02:04:46PM +0530, Yash Shah wrote:
> Reading the count register clears the interrupt signal. Currently, the
> count registers are read into 'regval' variable but the variable is
> never used. Therefore remove it.
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/mm/sifive_l2_cache.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Unrelated note:  that driver absolutely does not belong into
arch/riscv/mm.  arch/$(ARCH)/mm is for architecte-specific memory
management code, not for random drivers.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
