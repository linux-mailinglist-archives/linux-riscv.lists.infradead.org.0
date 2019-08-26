Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FC39CE45
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 13:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BOag1hBBY11PeUZioBl/r8/2H9QBm9qhRT+Taf8G4a0=; b=iKjm9bRZRN7cpE
	ofxhdyc3SwJObE9i909CREWGhVif1+1/vZJvtUA8g0aWmlfwrZ5Aco/pRaCjuss1YJfOp9CHYcQYa
	S5TSTaZU7hKTunsGH0gB1JZ3TjJt6bpQd0KxpFPf+uA4iBSThKr/A7iVSFfmg5TEGupBJRG3iZAyt
	DxdcdpOJPsVIX1VAetP15/CXT4Q0yTxh1u89yd8QRsGr/C1nN9EBgrVL3uBvqm31rjiE6m1ukz61Q
	W8nof7y8igNWWDsux0Y8TLfry80tzFyqPHqbrV4Q+02I3g9Z6IPpObGYrHf3dll6+T7IDwOlJpdXc
	U34fziEKFBuCRT1MBfow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DKb-0002a8-4T; Mon, 26 Aug 2019 11:38:41 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DKY-0002Zb-4v
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 11:38:39 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0958568AFE; Mon, 26 Aug 2019 13:38:35 +0200 (CEST)
Date: Mon, 26 Aug 2019 13:38:34 +0200
From: "hch@lst.de" <hch@lst.de>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH 6/8] riscv: use get_cpu and put_cpu in
 sys_riscv_flush_icache
Message-ID: <20190826113834.GE15002@lst.de>
References: <20190822065612.28634-1-hch@lst.de>
 <20190822065612.28634-7-hch@lst.de>
 <157504fc8f48057a8198e39262a786f901e67cd2.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157504fc8f48057a8198e39262a786f901e67cd2.camel@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_043838_338679_F9189B83 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>, "hch@lst.de" <hch@lst.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 05:49:20PM +0000, Atish Patra wrote:
> On Thu, 2019-08-22 at 15:56 +0900, Christoph Hellwig wrote:
> > Use get_cpu/put_cpu instead of opencoding them.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  arch/riscv/mm/cacheflush.c | 7 ++-----
> >  1 file changed, 2 insertions(+), 5 deletions(-)
> > 
> > diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> > index dacf72f94d12..9180b2e93058 100644
> > --- a/arch/riscv/mm/cacheflush.c
> > +++ b/arch/riscv/mm/cacheflush.c
> > @@ -19,11 +19,9 @@ void flush_icache_all(void)
> >  
> >  static void flush_icache_mm(bool local)
> >  {
> > -	unsigned int cpu;
> > +	unsigned int cpu = get_cpu();
> 
> I thought it is recommended to put variables with assignment at the
> end. But I can't find anything about it in coding guidelines. So it
> might be all in my head ;-)

I've never heard of that before.  In fact I usually keep them at
the beginning.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
