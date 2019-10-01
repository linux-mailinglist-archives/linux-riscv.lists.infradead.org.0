Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A62CC2DA8
	for <lists+linux-riscv@lfdr.de>; Tue,  1 Oct 2019 09:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aO/yw6A9o9DLE6DlH948FeuoZqFMji9QEP/DG6NeZaw=; b=XRDC+OMHqCHJB7
	p+BNt84mj75rENDqbxh87tGd4nFfVT9MxGJLuWd6L6KXeBW8/iovSxq/RxwwB+HgUXL+iwo22odk+
	SFtKS2syVvGo6mdtustnK4d96xa9cJGjdKQEKcfwc/oIwuvpS7UyWSAtCfMaqaulC25hADtlk48vP
	wHc5UBwFJ4o5v4Y+o/IczhzC+B8IopfYmeOxFb/0bqqXp80R57foN5/ECyQzXp3cG1X1GATd3HDku
	RYmRK+J1WFnK5sgdD6g42P4HAFumNP7nV3uSUohFGNIb71yhj/v2o3y9zQbI1D0LMN0TW+kK2yJR9
	8eMu5bEmsyRwGRX71k2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCBD-0003OV-DH; Tue, 01 Oct 2019 07:02:39 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iFCBA-0003O3-Fe; Tue, 01 Oct 2019 07:02:36 +0000
Date: Tue, 1 Oct 2019 00:02:36 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v6 PATCH] RISC-V: Remove unsupported isa string info print
Message-ID: <20191001070236.GA7622@infradead.org>
References: <20191001002318.7515-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001002318.7515-1-atish.patra@wdc.com>
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, hch@infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 05:23:18PM -0700, Atish Patra wrote:
> /proc/cpuinfo should just print all the isa string as an information
> instead of determining what is supported or not. ELF hwcap can be
> used by the userspace to figure out that.
> 
> Simplify the isa string printing by removing the unsupported isa string
> print and all related code.
> 
> The relevant discussion can be found at
> http://lists.infradead.org/pipermail/linux-riscv/2019-September/006702.html

This looks good, but can you also rename the orig_isa argument to isa
now that we never modify it?

>  	/*
>  	 * Linux doesn't support rv32e or rv128i, and we only support booting
>  	 * kernels on harts with the same ISA that the kernel is compiled for.
>  	 */
>  #if defined(CONFIG_32BIT)
> -	if (strncmp(isa, "rv32i", 5) != 0)
> +	if (strncmp(orig_isa, "rv32i", 5) != 0)
>  		return;
>  #elif defined(CONFIG_64BIT)
> -	if (strncmp(isa, "rv64i", 5) != 0)
> +	if (strncmp(orig_isa, "rv64i", 5) != 0)
>  		return;
>  #endif

And I don't think having these checks here makes much sense.  If we want
to check this at all we should do it somewhere in the boot process.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
