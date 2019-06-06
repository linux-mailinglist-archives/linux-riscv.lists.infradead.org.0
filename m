Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E760236F3C
	for <lists+linux-riscv@lfdr.de>; Thu,  6 Jun 2019 10:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2LCKNFcFywGFjzZOQOTXAmUAjqnc65Nhv8SDIAnjqg=; b=TykYrQGWGspuTY
	JEkSIb6l4upUl2CTcsre4d7AKx4/CpywBhyjDsrFndCiRRcZpbvnjUQ70iWgW8tUBVwCgzQIb3Y9h
	wiZx8LnoH1QQiryHcd/c/7lSUcl3Z6bvW7kb5lWQuA9/ccgkUnH2g3RGz2/v/35eK+ylUZIREQvTu
	xLhMU/fUkRkmGesP0xU9/x+ajkuMBzT5+KOTrSVBzCtdvwzr499J4yJKnGwtmfDoIaIBLxIJjLDLx
	Am6ghGDvuxwP9kDC55GciyhiL9EVgbB02tcfZoZq9lHlX0h32kNmbB0QEDAprvhBD3THUHA+C0FPd
	46OwoUq5K4N1nhgWIMcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoCw-0000pJ-OD; Thu, 06 Jun 2019 08:57:14 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hYoCj-0000XC-QQ; Thu, 06 Jun 2019 08:57:01 +0000
Date: Thu, 6 Jun 2019 01:57:01 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH] RISC-V: defconfig: enable clocks, serial console
Message-ID: <20190606085701.GA1369@infradead.org>
References: <20190605175042.13719-1-khilman@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605175042.13719-1-khilman@baylibre.com>
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
Cc: Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Loys Ollivier <lollivier@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 10:50:42AM -0700, Kevin Hilman wrote:
> Enable PRCI clock driver and serial console by default, so the default
> upstream defconfig is bootable to a serial console.
> 
> Signed-off-by: Kevin Hilman <khilman@baylibre.com>

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
