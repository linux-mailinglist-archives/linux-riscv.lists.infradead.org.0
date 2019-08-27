Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CD99EB6B
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 16:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rc9hawSsgbHzRREmSiUVHiBO+oS+jkdBod6A7iYrXuQ=; b=W8NiP7T48zYvAF
	+EYsT0/GsgfBfGUZZ+gOshq8FJawZe23iOtG5/RlyqWEF0TqnerpQN3fZ9uoF8Ut9r1o6Vn7vg3Kb
	tpSIiNZjIz+Oe3kM0Vt5B9aanZGvfDPy/anwT5OMhr+o1yFSQ8ZgWuXf/LvybWkhL59IdMNPNY1Hr
	K36nWd4TjPYe4r6fXxDy3G6Q5IzRi1OOcZHGlpvTjiE49fZvwuZMR5WQNdLnn3pbQ2Dj0GnofhXGE
	uqb563Y2pwjUlhxpzKlYQ+hUtYd0CUdmXXX/C2L0VP3/lqe73u2hCNB9BiaVX/q9A5u6PJPg9ejvx
	zcU+523u9Qcg8uTBWvAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cjr-0006TX-EX; Tue, 27 Aug 2019 14:46:27 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i2cjo-0006Sj-Fw; Tue, 27 Aug 2019 14:46:24 +0000
Date: Tue, 27 Aug 2019 07:46:24 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [RFC PATCH 0/2] Add support for SBI version to 0.2
Message-ID: <20190827144624.GA18535@infradead.org>
References: <20190826233256.32383-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826233256.32383-1-atish.patra@wdc.com>
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 04:32:54PM -0700, Atish Patra wrote:
> This patch series aims to add support for SBI specification version
> v0.2. It doesn't break compatibility with any v0.1 implementation.
> Internally, all the v0.1 calls are just renamed to legacy to be in
> sync with specification [1].
> 
> The patches for v0.2 support in OpenSBI are available at
> http://lists.infradead.org/pipermail/opensbi/2019-August/000422.html
> 
> [1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc

I really don't like the current design of that SBI 0.2 spec,
and don't think implementing it as-is is helpful.

For one the way how the extension id is placed creates a compatibilty
problem, not allowing your to implement a backwards compatible sbi,
which seems bad.

Second just blindly moving all the existing calls to a single legacy
extension doesn't seem useful.  We need to differenciate the existing
calls:

 (1) actually board specific and have not place in a cpu abstraction
     layer: getchar/putchar, these should just never be advertised in a
      non-legacy setup, and the drivers using them should not probe
      on a sbi 0.2+ system
 (2) useful for currently taped out cpus and in the long run for
     virtualization to avoid mmio traps:  ipis, timers, tlb shootdown.
     These should stay backwards compatible, but for sbi 0.2 be
     negotiated individually
 (3) in theory useful, but given how much of a big hammer sfence.i
     not useful in theory: SBI_REMOTE_FENCE_I we can decide if we want
     to either not allow it for sbi 0.2+ or also negotiate it.  I'd
     personally favor not advertising it and just use ipis to implement
     it.  If we want useful acceleration of i-cache synchronization
     we'll need actual instructions that are much more fine grained
     in the future.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
