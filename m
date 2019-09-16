Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74243B3A2E
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 14:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WLlUNmIT1lMRklccorQSROZ/U/vWm1TfxwOzFNmnAw=; b=q6X3Z5p1hi2NHP
	d2y927v5DmdMpc9T/Hu2RZZ11BPTP45x8HGEY5lU9mVhwLQmrrRgAxZ+W+IJ2p5xkawJyjiWBaELH
	jzUWN2V4Pxqo6PQ8CIeSslU9uY+KK42RE1744e5TLjJ/sGtbWqAMq5RFdyIrFhvqBEuoILnjBWQVS
	x6SgoozBEjHUN4Omfa9UaOKG5w+74zRvGDTKGZotTC5kJtSWGDRUfiOlQWyAbnY73r1jG5DyfOvOS
	D8kYncrxPWqWdSGnat5aWdVc94/fVGjxpXACH0HhpsvgqWzrFsBLeNqTLKw+N/U0ilK44ZxOJUvlR
	WIaiBg9mCzy5aiOnWHsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9q1y-0001pU-F6; Mon, 16 Sep 2019 12:22:58 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9q1u-0001ok-EM
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 12:22:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 90C2E68B05; Mon, 16 Sep 2019 14:22:49 +0200 (CEST)
Date: Mon, 16 Sep 2019 14:22:49 +0200
From: Christoph Hellwig <hch@lst.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
Message-ID: <20190916122249.GA30058@lst.de>
References: <20190910055923.28384-1-hch@lst.de> <mvm4l1kskny.fsf@suse.de>
 <20190910070503.GA31743@lst.de> <mvmzhjcr2d4.fsf@suse.de>
 <alpine.DEB.2.21.9999.1909160456010.7214@viisi.sifive.com>
 <mvm7e68fo2g.fsf@suse.de>
 <alpine.DEB.2.21.9999.1909160513100.9917@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1909160513100.9917@viisi.sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_052254_635047_9E0D2E48 
X-CRM114-Status: UNSURE (   7.10  )
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
Cc: gregkh@linuxfoundation.org, Andreas Schwab <schwab@suse.de>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 05:18:57AM -0700, Paul Walmsley wrote:
> I support Christoph's plan to add generic implicit earlycon support.

I'm not planning to add it, it exist already.  You just need a DT that
sets the stdout node up properly, and a earlycon driver using
OF_EARLYCON_DECLARE like the sifive uart driver.

The DT here for example works perfectly fine:

http://git.infradead.org/users/hch/riscv.git/commitdiff/f10e64873eafc68516b8884c06b9290b9887633b

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
