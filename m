Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C1C9FA3C
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 08:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iauam96m1MVVQQ+qnWJYDu/fVWsXVyqwRre1yom2kWI=; b=l3HFQq8BV94WvA
	WnVZ9Xd+BWr1Wdbfztf7kxNRGUYbZrYERrKEpzciOl2HW3HUBRzGL9hH8U6u5BVEy8TiW7PG3jrGr
	HAO6FFHxwV/JAQDNaO+V44ET9CMDKFRuTKfvSq5D+FXrWTuKfgxajn6EvkHY6mWHUnsHyJHO79X1n
	6NzbxfrEj4NEQaXZFbYRn0U5OqhY5+LCsgRcw2Wk4x0wNVaRnOc+Vy9HKjC0K6oPenzTlWiKZ1jvO
	+pxjOdXnh6H+HLjwqtcVGNQNOXLv67hgyg4Nmp+uPUgNiAtCLDmt8Ms2SE7ECj36m8TrC+uZIn5ZT
	oMYKkp1gOeViWOKLQW/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2rBS-0007Sa-80; Wed, 28 Aug 2019 06:11:54 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2rBN-0007SB-IR
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 06:11:50 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D25A168AFE; Wed, 28 Aug 2019 08:11:46 +0200 (CEST)
Date: Wed, 28 Aug 2019 08:11:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH 08/15] riscv: provide native clint access for M-mode
Message-ID: <20190828061146.GA21670@lst.de>
References: <20190819101648.GA29645@lst.de>
 <mhng-6c980844-cfea-4aaa-ac86-3c99ce6a6d14@palmer-si-x1e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-6c980844-cfea-4aaa-ac86-3c99ce6a6d14@palmer-si-x1e>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_231149_761916_66B6D586 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, Damien Le Moal <Damien.LeMoal@wdc.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 04:37:16PM -0700, Palmer Dabbelt wrote:
> clint0 would be version 0 of the clint, with is the core-local interrupt 
> controller in rocket chip.  It should be "sifive,clint-1.0.0", not 
> "riscv,clint0", as it's a SiFive widget.  Unfortunately there are a lot of 
> legacy device trees floating around, but I'm only considering what's been 
> upstream to be actually part of the spec.
>
> In this case the code should match on a "sifive,clint-1.0.0", and the 
> device trees should be fixed up to match.  We match on "riscv,plic0" for 
> legacy systems, and I guess it makes sense to do something similar here.

IFF we decided to change it I'd rather separate DT noes for the ipi
bank vs timecmp register vs timeval to support variable layouts.  The
downside is that we can't just boot on unmodified upstream qemu, which
has used the "riscv,clint0" for years.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
