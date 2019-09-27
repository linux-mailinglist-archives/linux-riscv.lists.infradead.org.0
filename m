Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB393C0E01
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 00:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Yapg7l1znqz+SHehPeGkK5Jn/5SKYEyfR97Ro8y5I4=; b=DTBsGtvaQJ6nRX
	wM565fb2jGIwf8Z78YP3xVxeZJI1iOhB2fe7TI/OF2U0kmXSsTxk/jYKZQBQ2am+ZOtS+cBbwyYqu
	L+MaM0qdOiL1jVsFUdU3ZLJrW5V6VolENe5fUjWoMGhv7YGmPiF253TLSqSjFRWqsp7eTEK7uuj81
	Fd8bYwk4u0NUSwrhaTuGxt3mEnTQq8vxjYKoqJJOe/ZGEJ/t4xiYGq4jzFtQ6XCY8VLSNOOfOkcpK
	gow/c0ShI2cnGRBQ0gP7Kp5JCgHfmgfYRZ8qnCxMOwknnIPvdxP8dmSKF2Lp2YtFyZuN5TwomlLRj
	MohGx8dnwWMop5Krwm/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDyfx-0004Fe-6t; Fri, 27 Sep 2019 22:25:21 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iDyfu-0004FN-Lb; Fri, 27 Sep 2019 22:25:18 +0000
Date: Fri, 27 Sep 2019 15:25:18 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH 1/4] riscv: avoid kernel hangs when trapped in BUG()
Message-ID: <20190927222518.GF4700@infradead.org>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-2-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569199517-5884-2-git-send-email-vincent.chen@sifive.com>
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu, paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 08:45:14AM +0800, Vincent Chen wrote:
> When the CONFIG_GENERIC_BUG is disabled by disabling CONFIG_BUG, if a
> kernel thread is trapped by BUG(), the whole system will be in the
> loop that infinitely handles the ebreak exception instead of entering the
> die function. To fix this problem, the do_trap_break() will always call
> the die() to deal with the break exception as the type of break is
> BUG_TRAP_TYPE_BUG.
> 
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
