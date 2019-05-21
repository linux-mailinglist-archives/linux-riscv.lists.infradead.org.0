Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7326124827
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 08:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VS81S+28KIVdUCvR0PSoQxpoFPnGaDG93EkQJHjnVfI=; b=mayGctTmwn6RaN
	qsYYsQuUG5iNCNC8h5uItINiHhqrOElcAihvXnnF58s9RCKc4+QiKJf++gSbv05hPK5Y5L01M4SDv
	BnBp6yfdV5rDBxsfIJIW0lKtNXWOK888iMH987Sl73lqbLjbGoqKtnoso5vfgrCOjlRVx295xOOOv
	leOvm1WPo7O8amgJ5vfCtYUqzHLk5R5E8xrsqJlBcPWSBrly4K6Ri2ovjiDHgr8gzlhBA0YFjcm/E
	3KGoyGfVkBEaBQLyCpM6iBzC+v8FiM6G1jEnEeMZeKp83hlQW4dQQuXvzyWDr2uLNd2iIaZwBklSY
	NgLRma2YcfLzaijyFDOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyNN-00053G-Pm; Tue, 21 May 2019 06:35:53 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hSyNL-00052s-Kj; Tue, 21 May 2019 06:35:51 +0000
Date: Mon, 20 May 2019 23:35:51 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: include generic support for MSI irqdomains
Message-ID: <20190521063551.GA5959@infradead.org>
References: <20190520182528.10627-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520182528.10627-1-paul.walmsley@sifive.com>
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
Cc: Wesley Terpstra <wesley@sifive.com>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul@pwsan.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 11:25:28AM -0700, Paul Walmsley wrote:
> Some RISC-V systems include PCIe host controllers that support PCIe
> message-signaled interrupts.  For this to work on Linux, we need to
> enable PCI_MSI_IRQ_DOMAIN and define struct msi_alloc_info.  Support
> for the latter is enabled by including the architecture-generic msi.h
> include.
> 
> Based on a patch from Wesley Terpstra <wesley@sifive.com>:
> 
> https://github.com/riscv/riscv-linux/commit/7d55f38fb79f459d2e88bcee7e147796400cafa8
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Cc: Wesley Terpstra <wesley@sifive.com>

Well, this is very much Wes' patch as-is.  It should probably be
attributed to him and you should ask for his signoff.

Otherwise this looks fine:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
