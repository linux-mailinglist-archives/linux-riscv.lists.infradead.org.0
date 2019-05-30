Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83D42FC09
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 15:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTRMgfFVk+glSgw8b9L/0H7GfPsBtO9z9Up/LV4G/H0=; b=S03sxHoAHRpkH8
	bFc7r4sF1hPwJOfJG3nrsvbl8bSiWnTRU7urJ1qzW+F7Te9WpOtnaDhYIfFuaJXOcL5wb3AnNGWBu
	87l0bSY5hx2493uJFV1zRrIn5iic9rz1UNKiGDbpM2WSuTrHPmpWl4LVbD9lltyy/9cR9yhiD9/ma
	gC7p2HalxcIguc4owcxmCVocoTZkZnbbv2iSPZqCxHjR1Lhpivt4jiZxV049/6xiq1/XwbJbugzR3
	mtiGLembZYkTpRhUr0yf+YGKIzqg3iSDbim4x3a/1OHHs+rkKaLI8ryew6XgwFKqP4VdRc9xeeMRJ
	glS8kCBq69mLruxT672g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWKrb-0001qG-1j; Thu, 30 May 2019 13:12:59 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWKrS-0001jZ-8X; Thu, 30 May 2019 13:12:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E194A78;
 Thu, 30 May 2019 06:12:48 -0700 (PDT)
Received: from e105550-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C29753F59C;
 Thu, 30 May 2019 06:12:43 -0700 (PDT)
Date: Thu, 30 May 2019 14:12:41 +0100
From: Morten Rasmussen <morten.rasmussen@arm.com>
To: "Andrew F. Davis" <afd@ti.com>
Subject: Re: [PATCH v6 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
Message-ID: <20190530131241.GB10919@e105550-lin.cambridge.arm.com>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-2-atish.patra@wdc.com>
 <49f41e62-5354-a674-d95f-5f63851a0ca6@ti.com>
 <20190530115103.GA10919@e105550-lin.cambridge.arm.com>
 <70639181-09d1-4644-f062-b19e06db7471@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70639181-09d1-4644-f062-b19e06db7471@ti.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_061250_313796_DBC854D3 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Rob Herring <robh@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 08:56:03AM -0400, Andrew F. Davis wrote:
> On 5/30/19 7:51 AM, Morten Rasmussen wrote:
> >On Wed, May 29, 2019 at 07:39:17PM -0400, Andrew F. Davis wrote:
> >>On 5/29/19 5:13 PM, Atish Patra wrote:
> >>>From: Sudeep Holla <sudeep.holla@arm.com>
> >>>
> >>>The current ARM DT topology description provides the operating system
> >>>with a topological view of the system that is based on leaf nodes
> >>>representing either cores or threads (in an SMT system) and a
> >>>hierarchical set of cluster nodes that creates a hierarchical topology
> >>>view of how those cores and threads are grouped.
> >>>
> >>>However this hierarchical representation of clusters does not allow to
> >>>describe what topology level actually represents the physical package or
> >>>the socket boundary, which is a key piece of information to be used by
> >>>an operating system to optimize resource allocation and scheduling.
> >>>
> >>
> >>Are physical package descriptions really needed? What does "socket" imply
> >>that a higher layer "cluster" node grouping does not? It doesn't imply a
> >>different NUMA distance and the definition of "socket" is already not well
> >>defined, is a dual chiplet processor not just a fancy dual "socket" or are
> >>dual "sockets" on a server board "slotket" card, will we need new names for
> >>those too..
> >
> >Socket (or package) just implies what you suggest, a grouping of CPUs
> >based on the physical socket (or package). Some resources might be
> >associated with packages and more importantly socket information is
> >exposed to user-space. At the moment clusters are being exposed to
> >user-space as sockets which is less than ideal for some topologies.
> >
> 
> I see the benefit of reporting the physical layout and packaging information
> to user-space for tracking reasons, but from software perspective this
> doesn't matter, and the resource partitioning should be described elsewhere
> (NUMA nodes being the go to example).

That would make defining a NUMA node mandatory even for non-NUMA
systems?

> >At the moment user-space is only told about hw threads, cores, and
> >sockets. In the very near future it is going to be told about dies too
> >(look for Len Brown's multi-die patch set).
> >
> 
> Seems my hypothetical case is already in the works :(

Indeed. IIUC, the reasoning behind it is related to actual multi-die
x86 packages and some rapl stuff being per-die or per-core.

> 
> >I don't see how we can provide correct information to user-space based
> >on the current information in DT. I'm not convinced it was a good idea
> >to expose this information to user-space to begin with but that is
> >another discussion.
> >
> 
> Fair enough, it's a little late now to un-expose this info to userspace so
> we should at least present it correctly. My worry was this getting out of
> hand with layering, for instance what happens when we need to add die nodes
> in-between cluster and socket?

If we want the die mask to be correct for arm/arm64/riscv we need die
information from somewhere. I'm not in favour of adding more topology
layers to the user-space visible topology description, but others might
have a valid reason and if it is exposed I would prefer if we try to
expose the right information.

Btw, for packages, we already have that information in ACPI/PPTT so it
would be nice if we could have that for DT based systems too.

Morten

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
