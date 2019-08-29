Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC4BA175A
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 12:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6asICB4hUs37ENo9DXisHLP0SstKeJe4lxon95hIxU=; b=YonNFFZbvN7WIj
	GlEzJVQq/uvfBM3Xwv1vHIqcyYvgMJeIBnvYgpSymy/ZanZAoEbgA+BiqMHAPPBkrHX/UY2z0u0eB
	+2SgJz2+g1iMiFWivV82VHrYvFdkJA/LGL4G30ZleDXIHPFBdkWLCCV6NE4x8BsQgstEyhY5O5ACV
	i54xIKRU4qMOCA75ML8Z4wYLwPGYNkHVluzJ4ida6fGuAFjJDGNEi+gB5kLZHTqBSYShomyfq+1lm
	Fb3QefTOLXmPPADD59/9WqqmR34TyrNbp8i3aNwaoFqc6YNpv0YVNQdsIPULo4+RkNcL1kFWeS+Cv
	vvG9RxHbSKxAaRrIpa7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3I6G-0002N1-Rq; Thu, 29 Aug 2019 10:56:20 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3I6B-0002Mc-Gt; Thu, 29 Aug 2019 10:56:15 +0000
Date: Thu, 29 Aug 2019 03:56:15 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [RFC PATCH 1/2] RISC-V: Mark existing SBI as legacy SBI.
Message-ID: <20190829105615.GA8968@infradead.org>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-2-atish.patra@wdc.com>
 <20190827140304.GA21855@infradead.org>
 <ac3cfe4502090354a7c49fae277adb757ad900d5.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac3cfe4502090354a7c49fae277adb757ad900d5.camel@wdc.com>
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
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "hch@infradead.org" <hch@infradead.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 08:37:27PM +0000, Atish Patra wrote:
> That would split the implementation between C file & assembly file for
> no good reason.
> 
> How about moving everything in sbi.c and just write everything inline
> assembly there.

Well, if we implement it in pure assembly that would be the entire
implementation, wouldn't it?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
