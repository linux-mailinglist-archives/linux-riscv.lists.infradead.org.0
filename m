Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE94303E7
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 23:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gaRsjH+yCzp+Yf5y0KvVhe/0l2NRaop+4tz9/ID+K+k=; b=uj4WlNEMHd0kNennyrNufngn3
	OLvMNjjOl98ovMGkyS38LvRX1UgC3pA4ZxbsnaLdvAahNRv1PSrNCrIDwPr2EJScf0JUM1FK2+BiB
	+h4H0PPzJhbpEGMx5NdjEAvqjBX4XMShdPcRuIUh9AmK4TtERHu26bfcUv4pxMNMWLDQnjioBDQvl
	Bnp7rRmPquzLYAo6mj59NM4TX33LlprgHVe9P1YyuoZj+hON8PQv1ZqjZjXEF5vY1arevjqz0tKj9
	2HS9V563B5i2ZnABcm9UNnVQRounFR/Bz1l4JLiVh2uPutFC81x/4X/74vzsKi2F5kmPcVdUWRwqX
	C8XYm0Qng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWSLe-00072j-NI; Thu, 30 May 2019 21:12:30 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWSLV-0006w3-7V; Thu, 30 May 2019 21:12:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C8B0341;
 Thu, 30 May 2019 14:12:20 -0700 (PDT)
Received: from [192.168.100.220] (usa-sjc-mx-foss1.foss.arm.com
 [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 210CC3F690;
 Thu, 30 May 2019 14:12:19 -0700 (PDT)
Subject: Re: [PATCH v6 0/7] Unify CPU topology across ARM & RISC-V
To: Atish Patra <atish.patra@wdc.com>, linux-kernel@vger.kernel.org
References: <20190529211340.17087-1-atish.patra@wdc.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <1b61e699-79c7-bbfd-c7ed-d51d321ae7ef@arm.com>
Date: Thu, 30 May 2019 16:12:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529211340.17087-1-atish.patra@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_141221_282854_19BF1FCD 
X-CRM114-Status: GOOD (  30.12  )
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
 Will Deacon <will.deacon@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@kernel.org>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On 5/29/19 4:13 PM, Atish Patra wrote:
> The cpu-map DT entry in ARM can describe the CPU topology in much better
> way compared to other existing approaches. RISC-V can easily adopt this
> binding to represent its own CPU topology. Thus, both cpu-map DT
> binding and topology parsing code can be moved to a common location so
> that RISC-V or any other architecture can leverage that.
> 
> The relevant discussion regarding unifying cpu topology can be found in
> [1].
> 
> arch_topology seems to be a perfect place to move the common code. I
> have not introduced any significant functional changes in the moved code.
> The only downside in this approach is that the capacity code will be
> executed for RISC-V as well. But, it will exit immediately after not
> able to find the appropriate DT node. If the overhead is considered too
> much, we can always compile out capacity related functions under a
> different config for the architectures that do not support them.
> 
> There was an opportunity to unify topology data structure for ARM32 done
> by patch 3/4. But, I refrained from making any other changes as I am not
> very well versed with original intention for some functions that
> are present in arch_topology.c. I hope this patch series can be served
> as a baseline for such changes in the future.
> 
> The patches have been tested for RISC-V and compile tested for ARM64,
> ARM32 & x86.
>

I applied these to 5.2rc2, along with my PPTT/MT change and verified the 
system & scheduler topology/etc on DAWN and ThunderX2 using ACPI on 
arm64. They appear to be working correctly.

so for the series,
Tested-by: Jeremy Linton <jeremy.linton@arm.com>

The code itself looks fine to me as well:

Reviewed-by: Jeremy Linton <jeremy.linton@arm.com>

Thanks!

> The socket change[2] is also now part of this series.
> 
> [1] https://lkml.org/lkml/2018/11/6/19
> [2] https://lkml.org/lkml/2018/11/7/918
> 
> QEMU changes for RISC-V topology are available at
> 
> https://github.com/atishp04/qemu/tree/riscv_topology_dt
> 
> HiFive Unleashed DT with topology node is available here.
> https://github.com/atishp04/opensbi/tree/HiFive_unleashed_topology
> 
> It can be verified with OpenSBI with following additional compile time
> option.
> 
> FW_PAYLOAD_FDT="unleashed_topology.dtb"
> 
> Changes from v5->v6
> 1. Added two more patches from Sudeep about maintainership of arch_topology.c
>     and Kconfig update.
> 2. Added Tested-by & Reviewed-by
> 3. Fixed a nit (reordering of variables)
> 
> Changes from v4-v5
> 1. Removed the arch_topology.h header inclusion from topology.c and arch_topology.c
> file. Added it in linux/topology.h.
> 2. core_id is set to -1 upon reset. Otherwise, ARM topology store function does not
> work.
> 
> Changes from v3->v4
> 1. Get rid of ARM32 specific information in topology structure.
> 2. Remove redundant functions from ARM32 and use common code instead.
> 
> Changes from v2->v3
> 1. Cover letter update with experiment DT for topology changes.
> 2. Added the patch for [2].
> 
> Changes from v1->v2
> 1. ARM32 can now use the common code as well.
> 
> Atish Patra (4):
> dt-binding: cpu-topology: Move cpu-map to a common binding.
> cpu-topology: Move cpu topology code to common code.
> arm: Use common cpu_topology structure and functions.
> RISC-V: Parse cpu topology during boot.
> 
> Sudeep Holla (3):
> Documentation: DT: arm: add support for sockets defining package
> boundaries
> base: arch_topology: update Kconfig help description
> MAINTAINERS: Add an entry for generic architecture topology
> 
> .../topology.txt => cpu/cpu-topology.txt}     | 134 ++++++--
> MAINTAINERS                                   |   7 +
> arch/arm/include/asm/topology.h               |  20 --
> arch/arm/kernel/topology.c                    |  60 +---
> arch/arm64/include/asm/topology.h             |  23 --
> arch/arm64/kernel/topology.c                  | 303 +-----------------
> arch/riscv/Kconfig                            |   1 +
> arch/riscv/kernel/smpboot.c                   |   3 +
> drivers/base/Kconfig                          |   2 +-
> drivers/base/arch_topology.c                  | 298 +++++++++++++++++
> include/linux/arch_topology.h                 |  26 ++
> include/linux/topology.h                      |   1 +
> 12 files changed, 452 insertions(+), 426 deletions(-)
> rename Documentation/devicetree/bindings/{arm/topology.txt => cpu/cpu-topology.txt} (66%)
> 
> --
> 2.21.0
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
