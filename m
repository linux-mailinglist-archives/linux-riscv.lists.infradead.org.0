Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E3330C18
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 11:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yas00SVzI7h3mJyboXCBWOWah1j6XeVTUvAAxCDVq20=; b=AZHtrepKsTpagt
	Z2X2VdZDuU6+uZhUzCaCts62urUIrBPovh2mVfiot4id1Nsv5C+VJiBkavJK7LeAQq1MPIKDdbalM
	t+ZH0BRJ/BcEJnY6Ltl/d96QbCogndtR7ootbmIX3eL2VYXQMNQ6iB7MqwDFH3sCfKnL2zwrd5QGL
	MZpfhGGfYCA2OHX4n69Pd1irvrV5j5caqgDN4yZ8mMSNX8hJkf19CC3VREj27TL8cMhSa0edvEBoS
	JfwBlLUycTbng4x5H+jVWCGwtISG/N3qd7VAqXqOTVMYd8xkCHeqNZarTWyZaODR1JDymyPTGRpYN
	VZ3M8BZXADHKZvB7BciQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWeFQ-0000yd-CC; Fri, 31 May 2019 09:54:52 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeFG-0000rK-De; Fri, 31 May 2019 09:54:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CFAB5341;
 Fri, 31 May 2019 02:54:34 -0700 (PDT)
Received: from e105550-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F9353F59C;
 Fri, 31 May 2019 02:54:30 -0700 (PDT)
Date: Fri, 31 May 2019 10:54:28 +0100
From: Morten Rasmussen <morten.rasmussen@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v6 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
Message-ID: <20190531095428.GC10919@e105550-lin.cambridge.arm.com>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-2-atish.patra@wdc.com>
 <49f41e62-5354-a674-d95f-5f63851a0ca6@ti.com>
 <20190530115103.GA10919@e105550-lin.cambridge.arm.com>
 <20190530214254.tuxsnyv52a2fyhck@shell.armlinux.org.uk>
 <20190531093743.GB18292@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531093743.GB18292@e107155-lin>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_025442_479242_2F2CC7CA 
X-CRM114-Status: GOOD (  23.00  )
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
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, "Andrew F. Davis" <afd@ti.com>,
 Otto Sabart <ottosabart@seberm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 10:37:43AM +0100, Sudeep Holla wrote:
> On Thu, May 30, 2019 at 10:42:54PM +0100, Russell King - ARM Linux admin wrote:
> > On Thu, May 30, 2019 at 12:51:03PM +0100, Morten Rasmussen wrote:
> > > On Wed, May 29, 2019 at 07:39:17PM -0400, Andrew F. Davis wrote:
> > > > On 5/29/19 5:13 PM, Atish Patra wrote:
> > > > >From: Sudeep Holla <sudeep.holla@arm.com>
> > > > >
> > > > >The current ARM DT topology description provides the operating system
> > > > >with a topological view of the system that is based on leaf nodes
> > > > >representing either cores or threads (in an SMT system) and a
> > > > >hierarchical set of cluster nodes that creates a hierarchical topology
> > > > >view of how those cores and threads are grouped.
> > > > >
> > > > >However this hierarchical representation of clusters does not allow to
> > > > >describe what topology level actually represents the physical package or
> > > > >the socket boundary, which is a key piece of information to be used by
> > > > >an operating system to optimize resource allocation and scheduling.
> > > > >
> > > >
> > > > Are physical package descriptions really needed? What does "socket" imply
> > > > that a higher layer "cluster" node grouping does not? It doesn't imply a
> > > > different NUMA distance and the definition of "socket" is already not well
> > > > defined, is a dual chiplet processor not just a fancy dual "socket" or are
> > > > dual "sockets" on a server board "slotket" card, will we need new names for
> > > > those too..
> > >
> > > Socket (or package) just implies what you suggest, a grouping of CPUs
> > > based on the physical socket (or package). Some resources might be
> > > associated with packages and more importantly socket information is
> > > exposed to user-space. At the moment clusters are being exposed to
> > > user-space as sockets which is less than ideal for some topologies.
> >
> > Please point out a 32-bit ARM system that has multiple "socket"s.
> >
> > As far as I'm aware, all 32-bit systems do not have socketed CPUs
> > (modern ARM CPUs are part of a larger SoC), and the CPUs are always
> > in one package.
> >
> > Even the test systems I've seen do not have socketed CPUs.
> >
> 
> As far as we know, there's none. So we simply have to assume all
> those systems are single socket(IOW all CPUs reside inside a single
> SoC package) system.

Right, but we don't make that assumption. Clusters are reported as
sockets/packages for arm, just like they are for arm64. My comment above
applied to what can be described using DT, not what systems actually
exists. We need to be able describe packages for architecture where we
can't make assumptions.

arm example (ARM TC2):
root@morras01-tc2:~# lstopo
Machine (985MB)
  Package L#0
    Core L#0 + PU L#0 (P#0)
    Core L#1 + PU L#1 (P#1)
  Package L#1
    Core L#2 + PU L#2 (P#2)
    Core L#3 + PU L#3 (P#3)
    Core L#4 + PU L#4 (P#4)

Morten

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
