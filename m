Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1455EB47C2
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 08:56:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgbY4KPSEKEZ+j9aLl4uDiATwDtQICk0aGje6FdQA04=; b=urGKgLFkY5tA6Y
	UPhLTTWi88JZYRavkaOUy+nAssvu0+nh9QybrWrI6Cm7cuEX5jsAzQj+KXG4uotgb+liA7jshcNkP
	Dq5aBZ4xWryxELfk8a4rW4B1uwRFTYTPkWjYTbK49pMZSb8X4dEXxX0/inl1YZ+h89IOXnwygDN1k
	xGC2iRlAjiIg7jmVDV65o3adGgxOzDrf1Nz5QMtqFa+mpIZkArBFth9ODkC6908T9G+mbuAZ3EM+e
	C14Wrph0Z8hO8aaPHes3lnTSC5cSg6tPw5PV4FsoOftESMpg2VjqvZumSe+psKN1dbaahMyQVdJzI
	XyEogACofUTJ0Gt3Q3LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7Pl-00042A-5p; Tue, 17 Sep 2019 06:56:41 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iA7Ph-00041w-Me; Tue, 17 Sep 2019 06:56:37 +0000
Date: Mon, 16 Sep 2019 23:56:37 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
Message-ID: <20190917065637.GA15034@infradead.org>
References: <8636gxskmj.wl-maz@kernel.org>
 <mhng-8de39ab4-730a-4ded-a8b5-d50f34d1697b@palmer-si-x1e>
 <861rwhs9on.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <861rwhs9on.wl-maz@kernel.org>
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
Cc: jason@lakedaemon.net, Darius Rad <darius@bluespec.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 David Johnson <davidj@sifive.com>, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

With the fixes it seems to still work fine on the Kendryte KD210.
Although currently only the serial interrupt is tested and this might
not be a very exhaustive test case..

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
