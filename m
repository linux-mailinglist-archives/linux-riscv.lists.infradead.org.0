Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64688DC861
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 17:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddtWpF5Rdh5HSWJF7pgxe1GqeE+kxRi/mCVq2nRoaJE=; b=fcjn++lmemR4hx
	grRdmCF4CzJkP+3ArNVbyRUL9f+RWCje5mkr5UiW1TLxSETOoxsUDZiOhzwgvGv5WENhv+t/aPlDn
	E3+Fwby2zuvbc7JeZYO6NfYDGwnCMuFu3yzj2EbptEWnyOcYbHjPkaOu5h18/D2g5aF4DTpYooC30
	J9zf8NkJ+U1qCAePcO5bEtxeKbS6Uzf8J7pHagl0H00nFMQRyw6ZXq4wd8mJc4Vb87V7jUpc9vEDL
	FOWPuqOlmMSBZzYb2q5fAx5aOx41Dl9R6O8ipH5vSq3+KsCEiQ2obtgobbySb38F+RQ3RFkIKPQra
	ffBLUe3MKAxcdHi0Z3vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLU86-0001OK-JQ; Fri, 18 Oct 2019 15:25:26 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLU83-0001Nm-Mb
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 15:25:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 960B868AFE; Fri, 18 Oct 2019 17:25:20 +0200 (CEST)
Date: Fri, 18 Oct 2019 17:25:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: RISC-V nommu support v5
Message-ID: <20191018152520.GA32281@lst.de>
References: <20191017173743.5430-1-hch@lst.de>
 <CAAhSdy1dvFzEh_WZ8aDNyCKi968Dwxm+ru6D0DF08QoOq3JjLA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1910172029170.3156@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1910172029170.3156@viisi.sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_082523_887722_E5C126FF 
X-CRM114-Status: UNSURE (   7.18  )
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 08:29:59PM -0700, Paul Walmsley wrote:
> On Fri, 18 Oct 2019, Anup Patel wrote:
> 
> > It will be really cool to have this series for Linux-5.4-rcX.
> 
> It's way too big to go in via the -rc series.  I'm hoping to have it ready 
> to go for v5.5-rc1.

Yes, this is 5.5 material.  Btw, the buildbot found two issues that
require one liner fixes, so I'll resend again this weekend.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
