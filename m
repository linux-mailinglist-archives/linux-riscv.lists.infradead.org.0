Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AB39580E
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 09:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Pmnkl0H6TQdHCgCPBFCd0gBLEXWC7KmISLXPXwBGUg=; b=mg9gsPkP5o43st
	4vO9xxT93h9nY99/LwE5YsRW1jwn87+V25Qfy1eGHI+GhQZHm7U/DkWsjAHCOWOrdd9cRcrc8hud8
	mJrehH9SKYJjelZMY1a8axlBjHDEx9yMd/PQgHaTQCPF5vi6KPLL31PhK1AgboO4WfVv3HXYrq98Q
	DZKuv+EQpKy/ZfmFIFWYFPCBlyegm4lzlMAH3iqeYnuqadmbfJlvoXDM9VxCaJEIwmIPstUccDKxu
	RZ91b/cjmkiGTm7nbO9GyD5kJsljaDHjLwMK8I8hL3JhhWRhom2itspIw+NfMRM7trowmazg96HyD
	FW4lNniwnS7RXc+8tEyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyNo-0002gh-Hb; Tue, 20 Aug 2019 07:16:44 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hzyNk-0002fi-2h; Tue, 20 Aug 2019 07:16:40 +0000
Date: Tue, 20 Aug 2019 00:16:40 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Andreas Schwab <schwab@linux-m68k.org>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Message-ID: <20190820071639.GA2335@infradead.org>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <20190820030641.GA24946@infradead.org>
 <mvmo90kl34d.fsf@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mvmo90kl34d.fsf@linux-m68k.org>
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <atish.patra@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 09:14:58AM +0200, Andreas Schwab wrote:
> On Aug 19 2019, "hch@infradead.org" <hch@infradead.org> wrote:
> 
> > This looks a little odd to m and assumes we never pass a size smaller
> > than PAGE_SIZE.  Whule that is probably true, why not something like:
> >
> > 	if (size < PAGE_SIZE && size != -1)
> 
> ITYM size <= PAGE_SIZE.  And since size is unsigned it cannot be == -1
> at the same time.

Yes, the <= was obvious, that's what you get for hacking up a demo
patch on the plan.  And true for the -1.  That being said I find the
-1 convention rather annoying, a ULONG_MAX in the callers would be
a lot more obvious.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
