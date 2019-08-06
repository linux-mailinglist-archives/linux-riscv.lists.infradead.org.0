Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFD183AA2
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 22:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvOjZKfAlUr1waU9oDbMy344dOCduNFy3yJwrn4fjFs=; b=uY/22vJDh2st9W
	QzSVm22DZ2+HND++ob2kWqP6wxenQ92rDJ7IWLIegK+lg9fPDWoZIGlb3gEi8aCG+HmnQX/5T9FFg
	cgElPcPc7rTYdJGtZn5QpdEPzYWoHzeTYXSyzazH2SoBTdJcBed882rt4kmUu9PaYB2v7OhOaNYZO
	sih4wjOR7HNcGGPvHadsu2n21XXjNFGv2a1dx9GIXQWNrViphO05IzjH7pHyWt8Gw5VpWDUUJbPW3
	SKEC1MMLF90QnKKx0HDoMVpJHxZj1CDEHoMyEc+wOg4/na34IhqH+USajCEgC6kM9+knlHRU1Uy4B
	8TC9R56A4xodWsWYzvEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv6Ot-0005K1-NQ; Tue, 06 Aug 2019 20:49:43 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hv6Oq-0005Js-0K; Tue, 06 Aug 2019 20:49:40 +0000
Date: Tue, 6 Aug 2019 13:49:39 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH] Use CSR numbers instead of names
Message-ID: <20190806204939.GA19596@infradead.org>
References: <mvmr25z4toj.fsf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mvmr25z4toj.fsf@suse.de>
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
Cc: linux-kernel@lists.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Looks good.  I've been trying to get the same patch in for about two
month now, maybe this one has more luck..

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
