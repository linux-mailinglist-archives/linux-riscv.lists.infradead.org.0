Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4CB2A36E
	for <lists+linux-riscv@lfdr.de>; Sat, 25 May 2019 10:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGQZMbyPw/eUU4Zu50US231b3bXVT4G0rELa4B24UWs=; b=Ops8O2jIcKwXta
	AnePVcazLo79eHNNuJx9HitsO8U+TIqChx3gDfMU3y2ZF8T70D53yIYj97AIle7U53ZC9hz22jkmX
	+1zdgzKCdOrfMK3gp9HTkGkzHRg0XdgtZP4KKu22yhzoQ+GwX7quCvj3t5pK48Jc7s0CA+AN/r/Qq
	wD8wJ5vLoELV/OGe4nBPfixtNRJmaQgcdIV1YoCmkPj30PYSmaehicUoYGCcPaW3nU4a6LnSLJR0S
	+WUu5K4r/cOZwKfiUcVcQnXOlH57JYo2rY4Tv4eu8ZNbuAyfCrNzaDJ4EdZ1f92SF8z6a18SONFzw
	hMYNu1UNtuu4W+OcjAQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hURxe-0001E0-AE; Sat, 25 May 2019 08:23:26 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hURxc-0001Dg-S5; Sat, 25 May 2019 08:23:24 +0000
Date: Sat, 25 May 2019 01:23:24 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH v2] PCI: endpoint: Set endpoint controller pointer to null
Message-ID: <20190525082324.GB18854@infradead.org>
References: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
 <20190524063809.GA25866@infradead.org>
 <CABEDWGxUDkNOcpT1K+Ez2i47TKi8bHRn-32NaVNkCQgkbPbvmw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABEDWGxUDkNOcpT1K+Ez2i47TKi8bHRn-32NaVNkCQgkbPbvmw@mail.gmail.com>
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
Cc: Christoph Hellwig <hch@infradead.org>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 11:23:04AM -0700, Alan Mikhak wrote:
> Chrisoph,
> 
> These changes were implemented in Linux PCI Endpoint framework to
> exercise PCIe endpoint mode on RISCV.

Well, arch/riscv isn't involved in this patch (which having an interest
in the PCIe EP stuff I really like).  I still don't see how it relates
to riscv except that you apparently have been able to use it on a
RISCV SOC somehow.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
