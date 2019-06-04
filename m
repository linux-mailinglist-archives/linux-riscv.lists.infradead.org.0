Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BE233F11
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Jun 2019 08:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LL4IxTPlovGyTVn+yJdAmnwW1lNYxcqGjxhYqCZwmVY=; b=lyTfrIvEtY6qFs
	1C0RbedypT6ZHAsCL+LcH/KnrS1cqkl6gO887q3kOcvMc7+v1J24ndWXWHXEiqKjFyGjQND2mVoQ8
	gsAiuml16FuKzMx17k291hUY3CFLdtTrVU7kdYNSlDVyGuWrUcFM401ijMfTGXWdRitN+9L3AbXm8
	gI4IFuRrRLbix6ruRS5sbO/pjzlDdoGN0Plo+ZB7qfdXX4JWvVCCrHOpnM2ZRXEERITdi7VMpShWw
	kTxscQ+y8J67FGI54++0J3YlodTnrRoAwywkLlI9K2KJl6DbPJLtLSAh1wR2Hw9ubiSSCbN1DyWvD
	3cbXhQwh6FFWvvlrIzDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY38v-0005fn-Da; Tue, 04 Jun 2019 06:41:57 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hY38t-0005fV-57; Tue, 04 Jun 2019 06:41:55 +0000
Date: Mon, 3 Jun 2019 23:41:55 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] RISC-V: defconfig: Enable NO_HZ_IDLE and HIGH_RES_TIMERS
Message-ID: <20190604064155.GA21667@infradead.org>
References: <mhng-faba08ec-69a7-43b1-b2d7-c2e996751506@palmer-si-x1c4>
 <alpine.DEB.2.21.9999.1906030944170.9338@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1906030944170.9338@viisi.sifive.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Palmer Dabbelt <palmer@sifive.com>, schwab@suse.de, Anup.Patel@wdc.com,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, aou@eecs.berkeley.edu, anup@brainfault.org,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 09:44:44AM -0700, Paul Walmsley wrote:
> > Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
> 
> Thanks, queued for v5.3.

Where do you apply these patches to?  Is there a chance we could just
set up a multi commiter riscv tree insted of growing the number of
trees?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
