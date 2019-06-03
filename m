Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A6432B25
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 10:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vLkVEorKq9IVRoFtk6/nEYKXxqaX74g3BNU4q9BC7to=; b=e8+oEe+11iXw3oAKJ7ypolEK6
	wSscjCsK9fpf+NaZqhk3XtB7ANFGBSfdEqEhUkuex8+AL72GaiQnFkm7vBD31my4Oo7qOK+9aF4Ly
	A1GiqUTcsmxI3M8rVqmH9zyg2JtFZBejMvJGzRi7igd9eQTrRTnOEGKWbPFTW6klQd6oDVQejKOMz
	RQPGDkX2HpRg2dIEBbjiHQ3GATOaNdn53d7dW84wvW22IM2ijLuc1FdpmiPcXCl0UzyqgMqAApCbr
	BN3YEvHy/SOyKPaoyy9w1Jx6mo885IXnObQjyDEmHS9vY+PCjCaBha96eicYU88PspvZ9kbAZFaL5
	CUaGrPBag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXifu-0006xk-UE; Mon, 03 Jun 2019 08:50:38 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXifk-0006px-PL; Mon, 03 Jun 2019 08:50:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559551865; x=1591087865;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=MIAH61ZDoSTIi8UI2nEz3ddvY2H2UI9t9luM6KSxPSM=;
 b=nFaZ0xgrwwbD6RrZ757Y/jwU+ur/YBh15MzGm4rskeMpLuYImI2ZDyn8
 r5JIJsFaOl+v+Bkt/jXNMRmoXHihiqqSJFGHkycoeapfgJ6xw21ofmtH5
 VCmSx6IqIMA11ciDQ9Inj2ZqR+De0E+fN4IMrG5x8m0jmfxcnK4hqTU28
 umNGS5tEvdJ96MSwmcbErU+5EqnCbh5fhW4/QTnCcZ5GS+RK7s/lla5RC
 5Wrmbj4QYLPMJVzxzwX95w5/ajAtqjK6zwlA3dSQVO40xpZnSLmyZ1VO9
 trAZneE6LoHUrMlTWG3dJvghiKmClN2gu7fx52N4/yITDZsu0tB1839In Q==;
X-IronPort-AV: E=Sophos;i="5.60,546,1549900800"; d="scan'208";a="209243163"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 16:51:02 +0800
IronPort-SDR: wd4dqhKqNSjMp4V/9P3rVabO4Hva2a+qpVH9uLY9QEvB9+i6LA7LQgz69DRh7/eNb4CAqPA6yl
 aZz7cpnz8RVlaG5/9IBzdhQDR+ZCVRkkjSK5O4MC1/vgM2RgxzQLbWDjEDQKLReDxdqbpYE3gQ
 4k3K6bgGYuH2PEQMOR2sz6Y106aJf+aBv3mb8Lnim2lFE4IzFdejrF4HIj86++CecLOu1WOv0c
 6ixcckFqjX5WeXfAMj6xk0R40NjZUPj71X75kaulevzRJ+AG8xhUGQHnyS0lyVB0LEEFTuhwk9
 aQzEuMeOxBIgDs8/ESAjxbd1
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 03 Jun 2019 01:25:29 -0700
IronPort-SDR: BFoXFGYP9juvqbXuMHbRgJh6jvpVhIbp0yQpP2IxiYAHVF0SyJtFKGxa+lYptSpbrh8ATdj/2F
 Uu3ojGhtuBMTdltS2t/r7PY7QW0py++iuHKLIhIzOeyED/NrJJByCIU8tpsacS6wyksSX5u1Nk
 UcjV6Voz5PGI1p8paSbgIZxpp5QgWd8PZU6LjGi43+EQlRDSbV3Kx5/qHa6uajicArdYbArPRi
 v4k7q/8pXcgz6iJXQmenVN0WYlE/ViGNZ3ns1s8Ag8xhwY1EnjEfCUUAFakjmQg99MqTlkE+JW
 UxI=
Received: from unknown (HELO [10.225.104.42]) ([10.225.104.42])
 by uls-op-cesaip01.wdc.com with ESMTP; 03 Jun 2019 01:50:26 -0700
Subject: Re: [PATCH v6 0/7] Unify CPU topology across ARM & RISC-V
To: Jeremy Linton <jeremy.linton@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <1b61e699-79c7-bbfd-c7ed-d51d321ae7ef@arm.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <ed23bed6-91bf-f132-1b8f-03b02c6dd28a@wdc.com>
Date: Mon, 3 Jun 2019 01:50:19 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1b61e699-79c7-bbfd-c7ed-d51d321ae7ef@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_015028_860510_0657E05F 
X-CRM114-Status: GOOD (  25.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/30/19 2:12 PM, Jeremy Linton wrote:
> Hi,
> 
> On 5/29/19 4:13 PM, Atish Patra wrote:
>> The cpu-map DT entry in ARM can describe the CPU topology in much better
>> way compared to other existing approaches. RISC-V can easily adopt this
>> binding to represent its own CPU topology. Thus, both cpu-map DT
>> binding and topology parsing code can be moved to a common location so
>> that RISC-V or any other architecture can leverage that.
>>
>> The relevant discussion regarding unifying cpu topology can be found in
>> [1].
>>
>> arch_topology seems to be a perfect place to move the common code. I
>> have not introduced any significant functional changes in the moved code.
>> The only downside in this approach is that the capacity code will be
>> executed for RISC-V as well. But, it will exit immediately after not
>> able to find the appropriate DT node. If the overhead is considered too
>> much, we can always compile out capacity related functions under a
>> different config for the architectures that do not support them.
>>
>> There was an opportunity to unify topology data structure for ARM32 done
>> by patch 3/4. But, I refrained from making any other changes as I am not
>> very well versed with original intention for some functions that
>> are present in arch_topology.c. I hope this patch series can be served
>> as a baseline for such changes in the future.
>>
>> The patches have been tested for RISC-V and compile tested for ARM64,
>> ARM32 & x86.
>>
> 
> I applied these to 5.2rc2, along with my PPTT/MT change and verified the
> system & scheduler topology/etc on DAWN and ThunderX2 using ACPI on
> arm64. They appear to be working correctly.
> 
> so for the series,
> Tested-by: Jeremy Linton <jeremy.linton@arm.com>
> 
> The code itself looks fine to me as well:
> 
> Reviewed-by: Jeremy Linton <jeremy.linton@arm.com>
> 
Thank you the review and testing on arm64 server.

> Thanks!
> 
>> The socket change[2] is also now part of this series.
>>
>> [1] https://lkml.org/lkml/2018/11/6/19
>> [2] https://lkml.org/lkml/2018/11/7/918
>>
>> QEMU changes for RISC-V topology are available at
>>
>> https://github.com/atishp04/qemu/tree/riscv_topology_dt
>>
>> HiFive Unleashed DT with topology node is available here.
>> https://github.com/atishp04/opensbi/tree/HiFive_unleashed_topology
>>
>> It can be verified with OpenSBI with following additional compile time
>> option.
>>
>> FW_PAYLOAD_FDT="unleashed_topology.dtb"
>>
>> Changes from v5->v6
>> 1. Added two more patches from Sudeep about maintainership of arch_topology.c
>>      and Kconfig update.
>> 2. Added Tested-by & Reviewed-by
>> 3. Fixed a nit (reordering of variables)
>>
>> Changes from v4-v5
>> 1. Removed the arch_topology.h header inclusion from topology.c and arch_topology.c
>> file. Added it in linux/topology.h.
>> 2. core_id is set to -1 upon reset. Otherwise, ARM topology store function does not
>> work.
>>
>> Changes from v3->v4
>> 1. Get rid of ARM32 specific information in topology structure.
>> 2. Remove redundant functions from ARM32 and use common code instead.
>>
>> Changes from v2->v3
>> 1. Cover letter update with experiment DT for topology changes.
>> 2. Added the patch for [2].
>>
>> Changes from v1->v2
>> 1. ARM32 can now use the common code as well.
>>
>> Atish Patra (4):
>> dt-binding: cpu-topology: Move cpu-map to a common binding.
>> cpu-topology: Move cpu topology code to common code.
>> arm: Use common cpu_topology structure and functions.
>> RISC-V: Parse cpu topology during boot.
>>
>> Sudeep Holla (3):
>> Documentation: DT: arm: add support for sockets defining package
>> boundaries
>> base: arch_topology: update Kconfig help description
>> MAINTAINERS: Add an entry for generic architecture topology
>>
>> .../topology.txt => cpu/cpu-topology.txt}     | 134 ++++++--
>> MAINTAINERS                                   |   7 +
>> arch/arm/include/asm/topology.h               |  20 --
>> arch/arm/kernel/topology.c                    |  60 +---
>> arch/arm64/include/asm/topology.h             |  23 --
>> arch/arm64/kernel/topology.c                  | 303 +-----------------
>> arch/riscv/Kconfig                            |   1 +
>> arch/riscv/kernel/smpboot.c                   |   3 +
>> drivers/base/Kconfig                          |   2 +-
>> drivers/base/arch_topology.c                  | 298 +++++++++++++++++
>> include/linux/arch_topology.h                 |  26 ++
>> include/linux/topology.h                      |   1 +
>> 12 files changed, 452 insertions(+), 426 deletions(-)
>> rename Documentation/devicetree/bindings/{arm/topology.txt => cpu/cpu-topology.txt} (66%)
>>
>> --
>> 2.21.0
>>
> 
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
