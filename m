Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3305184F93
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 17:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wI9vn7FeX8VJMynhT2fyFfYdPA4/E9hNxlUA2YwO8HI=; b=XmWhGAbmohh6pq
	LbXF9+OD495Y8b/mVzK9R1n78ZIBxamsL91oShz7WaWs9H7l0g7arRQ8NXZMbT4YpHoNiizf58qHk
	DPNBJeX460hGCkNaEzrxdVMET/piQwqjVBEvQB8c1PEUpgnPro9+YK7w9srCKApmTMaptG7+G7X7B
	giFLbWrE2nqVOkt7XhsHsaEShCTfRKG49ybyXGe1kQwTlRyCVJ+zPdPDxXKNzbGem4P4CPStqtn0M
	fZdKZUcNwkI7YT6DnNt3oP/Ftv9jNOnkcvgq5kVqUQSCKnw3T9bCOfTNkn8ViX1a2HI62qZKXf+Jr
	AvwmZq4X3t/UPtnBetBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNcs-0004hk-NK; Wed, 07 Aug 2019 15:13:18 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvNcq-0004hR-82; Wed, 07 Aug 2019 15:13:16 +0000
Date: Wed, 7 Aug 2019 08:13:16 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH] Use CSR numbers instead of names
Message-ID: <20190807151316.GB16432@infradead.org>
References: <mvmr25z4toj.fsf@suse.de> <20190806204939.GA19596@infradead.org>
 <alpine.DEB.2.21.9999.1908061703100.13971@viisi.sifive.com>
 <CAEUhbmXz9EzjJvc4BQ46CGfSe-qyB0W7MEDZvABCpo5aLzXf3w@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908061838260.13971@viisi.sifive.com>
 <20190807054019.GA1398@infradead.org>
 <CAEUhbmURQxPtmU78__OqOnQhzyVHpihxgzLtkOk1K0dDNprZYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEUhbmURQxPtmU78__OqOnQhzyVHpihxgzLtkOk1K0dDNprZYw@mail.gmail.com>
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
Cc: Christoph Hellwig <hch@infradead.org>, Andreas Schwab <schwab@suse.de>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@lists.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 09:34:03PM +0800, Bin Meng wrote:
> I've included your SoB and Andreas's into my v2 patch which added the
> changes of arch/riscv/mm/init.c that was recently changed.
> https://patchwork.kernel.org/patch/11082147/

I don;t think you need mine at all, as you did the same change
independently.  And maybe well just keep the hunk from Andreas separate
to keep it simple.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
