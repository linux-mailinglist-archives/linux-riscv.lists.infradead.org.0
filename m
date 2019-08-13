Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D778BB90
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 16:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nd+Qmd+NQnPmSyFHKzXg9LItOqeqnofyMWkTdMsbh/U=; b=rEccNTRraUSf1j
	A5dmlHDMkDDh5x/ROZQ6urj/jBdP+ZSRMH2vWHV440u+LCDFk2OGtOfqbklTHEybS0jn3sn0Hbrnj
	jRuFup5jvn+Pf8ntsoalCdFQL7NHcZKYPKBHZNk8FVKWIvpZD9M1RklWhR5JTofSXt1Q7EpJu4Qbe
	jpuA/8hB17Z86lvrutLpq2nK94VEE5cLaId/3GI9ZTrePbL+OLnXjiTfVx54o+yvFf91E8Kki7tM7
	NlOc/3GBTe1emLOzQ0rU0Z6ta3l3dtjA7bIe2Jdunqt0MosK3+xRoOwCjnl6jsIq0JYzwYsUhvF5S
	Th6YBsLIZzN8Ig9sLZBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXon-0003BP-B1; Tue, 13 Aug 2019 14:30:33 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hxXoh-0003B5-FW; Tue, 13 Aug 2019 14:30:27 +0000
Date: Tue, 13 Aug 2019 07:30:27 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
Message-ID: <20190813143027.GA31668@infradead.org>
References: <20190810014309.20838-1-atish.patra@wdc.com>
 <20190812145631.GC26897@infradead.org>
 <f58814e156b918531f058acfac944abef34f5fb1.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f58814e156b918531f058acfac944abef34f5fb1.camel@wdc.com>
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 12:15:15AM +0000, Atish Patra wrote:
> I thought if it recieves an empty cpumask, then it should at least do a
> local flush is the expected behavior. Are you saying that we should
> just skip all and return ? 

How could we ever receive an empty cpu mask?  I think it could only
be empty without the current cpu.  At least that is my reading of
the callers and a few other implementations.

> > 	if (!cpumask || cpumask_test_cpu(cpu, cpumask) {
> > 		if ((start == 0 && size == -1) || size > PAGE_SIZE)
> > 			local_flush_tlb_all();
> > 		else if (size == PAGE_SIZE)
> > 			local_flush_tlb_page(start);
> > 		cpumask_clear_cpu(cpuid, cpumask);
> 
> This will modify the original cpumask which is not correct. clear part
> has to be done on hmask to avoid a copy.

Indeed.  But looking at the x86 tlbflush implementation it seems like we
could use cpumask_any_but() to avoid having to modify the passed in
cpumask.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
