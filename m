Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47766C0DFD
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 00:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6tI9aVDhFOiKN0u6hkxeGN7iBfgYZNBtU/w3QOyJD4=; b=czt1wli2ZRBchN
	9vs3DvWNstBSjhrIa51m5d5Y7fBx3QYYmKNtvw/pGO53IiUOSA69n7M/RC8YJbQ0FmtvPt9iih6Td
	1KMW5tBNJg/XdYe49GirHVEX9w8sdEtBigEFX4dOYPwl7Mwf3mWmCi5tjVY/lnrKnykudfkJ2ZZTs
	d82uyOqnGMHSxMV9ntPDoml1i3bFuv55qwLlTleCArKi1esPjM0HKX9syksbuMJlV5kw3wUW+R2ui
	WbPmj9iMGXJukg3fVcviqx0N+3r797ZMqm1xA8xAbia4FtiOJbJOmQ/Eeno8auyVccS6e2rm8Zhe/
	Z/dukYnda0zEmZBI6sBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDyei-0002wX-91; Fri, 27 Sep 2019 22:24:04 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iDyef-0002wN-2O; Fri, 27 Sep 2019 22:24:01 +0000
Date: Fri, 27 Sep 2019 15:24:01 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] RISC-V: Clear load reservations while restoring hart
 contexts
Message-ID: <20190927222401.GE4700@infradead.org>
References: <20190925001556.12827-1-palmer@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925001556.12827-1-palmer@sifive.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: mark.rutland@arm.com, me@carlosedp.com, linux-kernel@vger.kernel.org,
 joel@sing.id.au, linux-riscv@lists.infradead.org, marco@decred.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 05:15:56PM -0700, Palmer Dabbelt wrote:
> This is almost entirely a comment.  The bug is unlikely to manifest on
> existing hardware because there is a timeout on load reservations, but
> manifests on QEMU because there is no timeout.

Given how many different lines of RISC-V hardware are around how do
you know it doesn't affect any existing hardware?

Except for that the patch looks fine to me:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
