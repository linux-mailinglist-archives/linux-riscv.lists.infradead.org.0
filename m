Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E3ACE9F3
	for <lists+linux-riscv@lfdr.de>; Mon,  7 Oct 2019 18:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgQnbYCnc8Vt9l1ATHrPmdP/kqoa+pFm03bNSaTh2YI=; b=ad2Nf08UdTRbNz
	xOK6adtNjvcERGFbwn9vZTOmopPQmDhoZmJ2v1y/zrrNRBOCB5V7rum9w5grtehGzIkAgVDfP3JBP
	W9GRBYDCuJMPIhoIB0J5Ndu+U8/U9eWMVq8phFpuOV7ipuCR6tbBFK8pznyck6YqTGHuOqDMN6N+/
	Ell056oae8FDkwzYTn9Ap0s2v5hsWaDSQW75o2SHdIja+jWyWgzejyRKwfNeObGpMjGED8bzcIvyc
	eFRmFGKTp6WKn7xXp9JSspdGxQuCrc4SXuZYxixMwf7anCAqxqRrr3Z5h9WKziCPiQ3H2y3ygZHtf
	AaG/6mPd1CciXg5NCejQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWL3-0001Mv-J1; Mon, 07 Oct 2019 16:58:25 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iHWL1-0001MY-46; Mon, 07 Oct 2019 16:58:23 +0000
Date: Mon, 7 Oct 2019 09:58:23 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [v6 PATCH] RISC-V: Remove unsupported isa string info print
Message-ID: <20191007165823.GA5116@infradead.org>
References: <20191001002318.7515-1-atish.patra@wdc.com>
 <20191001070236.GA7622@infradead.org>
 <b0c39a9895698d74e2f44eb1f2faed46eee54bc3.camel@wdc.com>
 <20191001101016.GB23507@infradead.org>
 <20191002015338.GA28086@andestech.com>
 <bc0d2f2803950ebb38fd487fddb0fcf8a370512e.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc0d2f2803950ebb38fd487fddb0fcf8a370512e.camel@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 "alankao@andestech.com" <alankao@andestech.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "johan@kernel.org" <johan@kernel.org>, "hch@infradead.org" <hch@infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 06:28:59AM +0000, Atish Patra wrote:
> On Wed, 2019-10-02 at 09:53 +0800, Alan Kao wrote:
> > On Tue, Oct 01, 2019 at 03:10:16AM -0700, hch@infradead.org wrote:
> > > On Tue, Oct 01, 2019 at 08:22:37AM +0000, Atish Patra wrote:
> > > > riscv_of_processor_hartid() or seems to be a better candidate. We
> > > > already check if "rv" is present in isa string or not. I will
> > > > extend
> > > > that to check for rv64i or rv32i. Is that okay ?
> > > 
> > > I'd rather lift the checks out of that into a function that is
> > > called
> > > exactly once per hart on boot (and future cpu hotplug).
> > 
> @Christoph
> Do you mean to lift the checks for "rv" as well from
> riscv_of_processor_hartid as well or leave that as it is? 

Sounds good to me (as a separate patch).  Again it makes much more
sense to validate this once early at boot time rather than a function
that can be called many tims during run time.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
