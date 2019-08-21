Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A12C96F00
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 03:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50k2Uba83VaZikaAXHDNUTEAluRx4kuQ3PtJSHidbVQ=; b=MaBL2lC2pySTHQ
	/7sBbk3P67gJnbf7mVaH0eSGTzDOXW8I2ODIHeplDaI80+JON/LXFX/AvVZIAaKzHHNJFTw6thao7
	MAFtXggr8DgR0pmyr9w9y9dQmSt6aQ4sDxoN3PgrKDgjFm3Lg4Do+2NP2rgr3vFGPxqvhbaDy5M3+
	xZvCP3ERucdf2Vj3vN4JvImi54h005zgV5mLxeN8H89DN4g7UGTkOmnZsOEdsf93t2HN4rEhcdhSR
	HCWcozAPeGtIhqN7iGk3cBCiQZ3xCuZy21KJY64E+cZtt1jLyUvyoqCCu3K949qqutRPPbLoIIWDl
	EQWVjLrXJsG4KwAWn48Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0FcO-0008PL-31; Wed, 21 Aug 2019 01:40:56 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i0FcK-0008O7-Ph; Wed, 21 Aug 2019 01:40:52 +0000
Date: Tue, 20 Aug 2019 18:40:52 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Alan Kao <alankao@andestech.com>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Message-ID: <20190821014052.GA25550@infradead.org>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <mvmh86cl1o3.fsf@linux-m68k.org>
 <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com>
 <20190820092207.GA26271@infradead.org>
 <76467815b464709f4c899444c957d921ebac87db.camel@wdc.com>
 <20190821012921.GA30187@andestech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821012921.GA30187@andestech.com>
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 09:29:22AM +0800, Alan Kao wrote:
> IMHO, this approach should be avoided because CLINT is compatible to but
>  not mandatory in the privileged spec.  In other words, it is possible that
> a Linux-capable RISC-V platform does not contain a CLINT component but
> rely on some other mechanism to deal with SW/timer interrupts.

Hi Alan,

at this point the above is just a prototype showing the performance
improvement if we can inject IPIs and timer interrups directly from
S-mode and delivered directly to S-mode.  It is based on a copy of
the clint IPI block currently used by SiFive, qemu, Ariane and Kendryte.

If the experiment works out (which I think it does), I'd like to
define interfaces for the unix platform spec to make something like
this available.  My current plan for that is to have one DT node
each for the IPI registers, timer cmp and time val register each
as MMIO regions.  This would fit the current clint block but also
allow other register layouts.  Is that something you'd be fine with?
If not do you have another proposal?  (note that eventually the
dicussion should move to the unix platform spec list, but now that
I have you here we can at least brain storm a bit).

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
