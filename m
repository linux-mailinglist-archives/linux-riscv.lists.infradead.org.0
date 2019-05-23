Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C0228DE6
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 01:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XsRrkioxlUG+/INayOB+jztgGrXYICxU0lqzleRBk6A=; b=lNDMNRJ5882oMHS1fc642atRt
	6c+nfaZwGYe+UMhJtkgL7gyik3Sz0lml/du41rJ4Uki6L9Nus0eT3U6xHczLICS/XDzgDYwd/L5d2
	voOSRvVcRxbhDfXGBrEepZ3WKYo5I/mHrSgEuxkZEew6UsGvf28pmNtXhTeORfgBj5i5D0iVw9T5d
	/JV144YICocDc7EPUwXpRqIYSsDhtpmt6YNVVnwhJacpsr1DavzAHZXBh+/OQ7Eiyk5wiFVWYwON7
	MAb07aw8osqOneJZCGeQ2c4d1P93wEhvPoqQ3lzKvjwQu5Xwf/Czfg5eSBM9Gk1/41Zp912w3eYlC
	VdHFNIGCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTxGy-0006oR-8F; Thu, 23 May 2019 23:37:20 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTxGp-0006jA-Py; Thu, 23 May 2019 23:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558654641; x=1590190641;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=ZIhhpIGFD7zJj6WDIZ2agldWpQH1V2HpIRQEJrRB3ck=;
 b=h/6hmZdrZOIGonDag1O0CgH9iOsp6N/j6si+BUDoygCrx578jyCNgbCS
 aqvQt2R7sQ37M4f+t1qBP/G9kFj8FzqqD2iBpu9xJnPqXwUO4B3DZEE4K
 rznPXfnLNA/XMMcCUpYHvdEOvZ8rvPzNB1YdJdeBqLKcwL/f1G2M5qqfO
 y5+CJOJTnaJ33KZ8l1RXqkzFJLw6s4lnuCGCduErY2KZseHy3D5yIK3mS
 xq+hiBVi4gHTGY4PSHzdR2xPBizuUzRJ1yKyKaxkLrDGFWwo3gazaPHMQ
 TqqrUbCIjZImAzK7Nm+HYjRL0pwqF/WhhD+250S5HDlNhGa88qmHupcaU Q==;
X-IronPort-AV: E=Sophos;i="5.60,505,1549900800"; d="scan'208";a="208479252"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 24 May 2019 07:37:12 +0800
IronPort-SDR: AYvJUdvnGtNk+7dNUtq0q8QnY9vLMncEujUqyYhtGjldtfY2qHx0Ej+u/WeVTTPblt8WCXHXnE
 k/zVDC6n7hQH1dqsohCg8VPQxJAeAZtDKDSMg6oc4OnDY1DJ6mr4A9yhuQw/eCyQGtt+cSMOWP
 x1pf/9zDbwVepJxN3Vl5E4iFJp6BddsmsNEy47V065zWbczpz1HkXm+FKrOGV2RI8WU06tRnED
 tjwGO5STrnukFP/xVon2ZZTh2Njs4PN/8rL6w3bV7f6J/Df+kL3DmlklFBwO3csiC6o0Y27s4Z
 NlxrPRWj63ahrTSqZGveF2s8
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 23 May 2019 16:14:47 -0700
IronPort-SDR: db2blUkD4RtcGdB4eRBhiFkHDDBUCRe9NZ6lRc2cEw51pgA69avNI/0gV7G0cCNMoVH6IUItxj
 qY6QXRyY93vwoPtjtTE6KxRM9pnikVpk9yOcQ6CxFgEpGT1L45i1uNOXQVvLLaEL3KPTP2LNE0
 dcqLTJ59s9xphjvNYHVh+QkRotxKo/s+Ly6C57bWzGn+QdBt+Z24CSiFJnD/QA591TENp0+65G
 Dh2JalP7gVh8cGzipTk8+9G3QxylCtxuoRS0bZ/i3KYAZQE/ddfFhlQS+smfzVLwX6eXJBy69s
 1Pg=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip02.wdc.com with ESMTP; 23 May 2019 16:37:05 -0700
Subject: Re: [RFT PATCH v4 3/5] cpu-topology: Move cpu topology code to common
 code.
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20190428002529.14229-1-atish.patra@wdc.com>
 <20190428002529.14229-4-atish.patra@wdc.com>
 <20190523093549.GA13560@e107155-lin>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <935ee66e-d303-5e0f-bbf9-20139ba79d77@wdc.com>
Date: Thu, 23 May 2019 16:34:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523093549.GA13560@e107155-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_163711_880412_E4789DD8 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Andreas Schwab <schwab@suse.de>,
 Ingo Molnar <mingo@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Anup Patel <anup@brainfault.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/23/19 2:36 AM, Sudeep Holla wrote:
> On Sat, Apr 27, 2019 at 05:25:27PM -0700, Atish Patra wrote:
>> Both RISC-V & ARM64 are using cpu-map device tree to describe
>> their cpu topology. It's better to move the relevant code to
>> a common place instead of duplicate code.
>>
>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>> Tested-by: Jeffrey Hugo <jhugo@codeaurora.org>
>> ---
>>   arch/arm64/include/asm/topology.h |  23 ---
>>   arch/arm64/kernel/topology.c      | 303 +-----------------------------
>>   drivers/base/arch_topology.c      | 298 ++++++++++++++++++++++++++++-
>>   drivers/base/topology.c           |   1 +
>>   include/linux/arch_topology.h     |  28 +++
>>   5 files changed, 330 insertions(+), 323 deletions(-)
>>
>> -void store_cpu_topology(unsigned int cpuid);
> [...]
> 
> 
>> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
>> index edfcf8d982e4..2b0758c01cee 100644
>> --- a/drivers/base/arch_topology.c
>> +++ b/drivers/base/arch_topology.c
>> @@ -6,8 +6,8 @@
>>    * Written by: Juri Lelli, ARM Ltd.
>>    */
>>
>> -#include <linux/acpi.h>
>>   #include <linux/arch_topology.h>
>> +#include <linux/acpi.h>
> 
> I assume this was to avoid compilation errors, when I rebased I got
> conflict and I ordered them back alphabetically as before and hit the
> compilation error.
> 
> The actual fix would be to include linux/arch_topology.h in linux/topology.h
> as you are moving contents of asm/topology.h which it includes.
> 
> I did the change and get it tested by kbuild. See [1]
> 

Thanks for pointing that out. I think we can remove arch_topology.h 
include in base/arch_topology.c and base/topology.c as they already 
include sched/topology.h or linux/topology.h.

I will send out v5 soon.

> Regards,
> Sudeep
> 
> [1] https://git.kernel.org/sudeep.holla/linux/h/cpu_topology
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
