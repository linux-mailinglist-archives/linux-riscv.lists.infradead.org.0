Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F99195ADD
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 11:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7J5n1xHtdGTg9PHHXq6i7AUUMrZlMAm846wM0uozs4=; b=O76M2DE3Lg/on1
	eP4ni6ZVVRKFu9BX/PKZCMBE6siodet0l6/BlSqjrZ+AHqakpApPumYwd5P+JUKLhspVK0kZByvT1
	wywViJBBm/mCIYpGYaTZ4jNphHl/RLQyboHBDkgmB5vp0jSPgQzySBueQNLemT4IY5Q3OQ02nGzfg
	X9qg+s2cYSCFapzofx4FcNmS7A98gDsqo+f1wva3HBu/fdjdOtM1N9Yr3AI6wlhoR5YN6JWrAAxL1
	wbDXyuAjRBsmqss7Go3dElN8OJNf4/OaeZcy4bIJneQP7GBIYhmbgn7Sua9whaVJtkMKLIDmH8pyp
	c7RV1qzL1QQJYpBgeLRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00LF-00006V-EE; Tue, 20 Aug 2019 09:22:13 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i00L9-0008NM-Ly; Tue, 20 Aug 2019 09:22:07 +0000
Date: Tue, 20 Aug 2019 02:22:07 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Message-ID: <20190820092207.GA26271@infradead.org>
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <mvmh86cl1o3.fsf@linux-m68k.org>
 <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com>
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
 "hch@infradead.org" <hch@infradead.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 08:42:19AM +0000, Atish Patra wrote:
> cmask NULL is pretty common case and we would  be unnecessarily
> executing bunch of instructions everytime while not saving much. Kernel
> still have to make an SBI call and OpenSBI is doing a local flush
> anyways.
> 
> Looking at the code again, I think we can just use cpumask_weight and
> do local tlb flush only if local cpu is the only cpu present. 
> 
> Otherwise, it will just fall through and call sbi_remote_sfence_vma().

Maybe it is just time to split the different cases at a higher level.
The idea to multiple everything onto a single function always seemed
odd to me.

FYI, here is what I do for the IPI based tlbflush for the native S-mode
clint prototype, which seems much easier to understand:

http://git.infradead.org/users/hch/riscv.git/commitdiff/ea4067ae61e20fcfcf46a6f6bd1cc25710ce3afe

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
