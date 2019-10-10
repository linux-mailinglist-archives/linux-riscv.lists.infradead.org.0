Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C51D2F84
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 19:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbmDN2AgLf3ni5mLzRqqRNs+g1nYnbCBJL6+aC0iEB4=; b=VWZiBhj1y7KUwc
	Busg8WGMu+Eadkvt28wMatzm4zhz+2fWwIamr18KRjxYpZvto4HnEP7J0TCbvma69V9rwtBgBdLhM
	Spb7On9StpZ60S9iEVqSA3HRx3rrcGuB82doZw9Dhoz+dWbQTIguoyg02XlSq+ytxX59NLA8ikSCV
	FvUGYUYMci2XEkAn6b+4zg7clQ81iBE6rGYsAZJs+sv8wD1L+DP6Bw3uCzWU6BiwSlO6BzInlVmAo
	qyB106HULAiFuQmMfJSOxdrL49pMh2yeFHiNEdmZaHPv5PjI9bZoCzkYrsVZcIHb0oYPIMGEK6wM9
	af3473uD3RlxdYswfKsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIcAP-0002eu-RV; Thu, 10 Oct 2019 17:23:57 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIcAM-0002eZ-Cs
 for linux-riscv@lists.infradead.org; Thu, 10 Oct 2019 17:23:55 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 5B8CC5A0;
 Thu, 10 Oct 2019 17:23:48 +0000 (UTC)
Date: Thu, 10 Oct 2019 11:23:47 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] Documentation: admin-guide: add earlycon documentation
 for RISC-V
Message-ID: <20191010112347.4a7237bb@lwn.net>
In-Reply-To: <CAMuHMdUfqvkVJHHwyuYxLSxj_iUofx-vSvEj92C5mg3bGxHqmA@mail.gmail.com>
References: <alpine.DEB.2.21.9999.1910091252160.11044@viisi.sifive.com>
 <CAMuHMdUfqvkVJHHwyuYxLSxj_iUofx-vSvEj92C5mg3bGxHqmA@mail.gmail.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_102354_437862_86A36FF5 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Andreas Schwab <schwab@suse.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 09:10:18 +0200
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> On Wed, Oct 9, 2019 at 9:53 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > Kernels booting on RISC-V can specify "earlycon" with no options on
> > the Linux command line, and the generic DT earlycon support will query
> > the "chosen/stdout-path" property (if present) to determine which
> > early console device to use.  Document this appropriately in the
> > admin-guide.
> >
> > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>  
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied, thanks.

jon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
