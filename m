Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CB2294F5
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 11:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9v3ZWsn1HpnizpGqoxCmYaLgfvPQwWKnb+a5qzXpBb4=; b=N9xNqWn83oEE3F
	rEf4jaRWngKyF+zOjKyk9tc7feHJ9PRJqKweIqbv1yhTfYYBuGWdTUHx0v6elO8laYU/9/EXPrwjh
	RusBVR/2ouNKzzv5QmQ1yRAM2WEXMhJa8OTkBFAwkuT1/HNhX+8IfeftNSTdwISKvC5Qzy79rY8OY
	0lqra1CXyNXXq7YI2K+kOIOqB48I+P4OON3dkHH/Q1Zkpc9N54NGHVYV3x0eZiRMfdCb2f4+7K5dc
	PlGefR5DIu1Vi6A1G52PosB2LW/0SzmMLf3qQ+OrsD14KWym6Cxe2rEVqvXkQeZ9Yg6VYEv/Xlf+f
	ut49jWyQsB9WPSc3Lkhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6fF-0005Uf-GT; Fri, 24 May 2019 09:39:01 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6f6-0005OD-DB; Fri, 24 May 2019 09:38:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C6D65A78;
 Fri, 24 May 2019 02:38:51 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1FD4E3F703;
 Fri, 24 May 2019 02:38:47 -0700 (PDT)
Date: Fri, 24 May 2019 10:38:41 +0100
From: Will Deacon <will.deacon@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [RFT PATCH v5 3/5] cpu-topology: Move cpu topology code to
 common code.
Message-ID: <20190524093754.GA3432@fuggles.cambridge.arm.com>
References: <20190524000653.13005-1-atish.patra@wdc.com>
 <20190524000653.13005-4-atish.patra@wdc.com>
 <20190524081333.GA15566@kroah.com>
 <20190524085720.GA13121@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524085720.GA13121@e107155-lin>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_023852_448209_D4AC55FE 
X-CRM114-Status: GOOD (  20.16  )
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
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Anup Patel <anup@brainfault.org>,
 Ingo Molnar <mingo@kernel.org>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Andreas Schwab <schwab@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 09:57:40AM +0100, Sudeep Holla wrote:
> On Fri, May 24, 2019 at 10:13:33AM +0200, Greg Kroah-Hartman wrote:
> > On Thu, May 23, 2019 at 05:06:50PM -0700, Atish Patra wrote:
> > > Both RISC-V & ARM64 are using cpu-map device tree to describe
> > > their cpu topology. It's better to move the relevant code to
> > > a common place instead of duplicate code.
> > > 
> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > Tested-by: Jeffrey Hugo <jhugo@codeaurora.org>
> > > ---
> > >  arch/arm64/include/asm/topology.h |  23 ---
> > >  arch/arm64/kernel/topology.c      | 303 +-----------------------------
> > >  drivers/base/arch_topology.c      | 296 +++++++++++++++++++++++++++++
> > >  include/linux/arch_topology.h     |  28 +++
> > >  include/linux/topology.h          |   1 +
> > >  5 files changed, 329 insertions(+), 322 deletions(-)
> >
> > What, now _I_ have to maintain drivers/base/arch_topology.c?  That's
> > nice for everyone else, but not me :(
> >
> > Ugh.
> >
> > Anyway, what are you wanting to happen to this series?  I think we need
> > some ARM people to sign off on it before I can take the whole thing,
> > right?
> >
> 
> Greg, I am ready to take ownership. Juri the original author of this file
> agreed and I have been reviewing this file since Juri first wrote it.
> I am happy to submit a patch assuming maintainership for this file, was
> just waiting to hear from you when I asked explicitly you and Juri in
> last version of the patch when Will wanted someone from ARM to be reviewer
> of this file at-least. I am happy to take over as reviewer or maintainer
> which ever you prefer.

Yes, please just include this update to MAINTAINERS as part of the series.
I'll ack it.

Will

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
