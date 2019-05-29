Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA802E329
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 19:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I42tx2v0W4IA+nhfmX0eC+PHEjTBYNoqKmK4oqy6hZM=; b=BFcBFf/lv4b2qF2bNestKFDpn
	V0h58lE3S9JLZWk57I4pqd3CF+TDIn5r3wBuQv+/FjgbGQy/5nZRCnzWq+jnCQZRQwFWrfT0w5j11
	kV81Vxs/P83UOkaVS/RZZhp5+sYnDgu89knGHRUNcfStzaPCe6iQh++cj2xfddFoNxCvSI+aOsqTu
	cpbXJUiGK81++or+0JuT/EuHcEX6HZtYxjVSbeZtjuKVsFzX+EouBEZeAvme8mzxDGcmcuRRzFQP7
	Cdiq6A50KL0A+J6Sd/bhRLd4o85yLY3SMFuZCeh4pi+kCHiBvMBCaUorZaQfegNAmI6xb9ihpvcM2
	BfFAzu4mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW2K1-0008LY-8g; Wed, 29 May 2019 17:25:05 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW2Jq-0008EQ-FA; Wed, 29 May 2019 17:24:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559150694; x=1590686694;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=GmwkQjsql+93mksfGBKpKv07dJD3LbLgm/uiMZ0AHPo=;
 b=IcNAdzEQHPgc+4aIKJ22ALt59JN4DyaiFuyqq7AuV8FrszVDq1OToeZF
 hKjf8sR/F6JPKoG1cwNqrxYG6jRzy8nuuMNmwyadTVlWu/8wpt23WCvk9
 sQO8rnL4kdphpgEw6lo9zN0rk9HcYDNtNOpoSuFILuvYCwlRbwx2hgMFl
 MZdBwy8RUcnX8cOm8ukqkXZTfvlpBX4L1DKRCoPXwbEGywOET3j+DmvL/
 mgLr35s4QlONX3Rs80dX6CCiyG2hwVPwxe2MRpxRV12UhMf37gbJEXA01
 5vO+c0Mgg9avdPKB1rpK0gwjJXI6aEsPTuVUn1afzqh8+kpELr33pBC/F g==;
X-IronPort-AV: E=Sophos;i="5.60,527,1549900800"; d="scan'208";a="114284009"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2019 01:24:45 +0800
IronPort-SDR: a+vStgqvpc6Uh0GexzAsMiaaK9j75+cUaBAeZ4PzStqO2Pz9zuZdwl3jaUPIGnYvKcxNt1MCfu
 ZOkTi8KUxiZiNR6XRS+5+mnwMlMsHlNpVDYAu6bEyVyN38N1dSy+sk583IyPQBLfR5oyXUwumO
 0XB0zeT0cd9sBh4lvPKUz9wf6foe9lXhA8y/L1pt3hk3En8MrzaHLiBTDG3itHLYVfmXI8ihcP
 sLJITa19PAOs5+47rYFeV9M7PAjiYidtLphWB5n51Lxc8rNxAbTEnN5ltGxzCbg+3Nl/01nAhj
 o/oNgfoxhFYk+ysxt7tyeCuw
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 May 2019 10:02:17 -0700
IronPort-SDR: qwx1yS5ZHNt0FCMSYqf+WJKfwEZzDe1m1COXuHEaXSEA1gbjcAghTgoZA/pAPmiHYjRRuhMwaS
 4YU0yZuBBWOR8HMPPKVU5iZV0wOR6jpU6gpjoSofyjnMX+Yj+CLJ54VyieeJDHrICAWbFkwZEE
 8fiPHmX0AWUyXp5ROGUHIaH1uox4cxYmupRrmw0K0LfN1+pPMJXpEiN7/T4ppYloUEVMdUMMYe
 0f9cT1yfCL6ZBGsZeJTclAy1epn3qLfhy4lQ1mzKbXDz2qH6YA/AnqpC7lGAh68rWc2HbLUYqk
 pt8=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip02.wdc.com with ESMTP; 29 May 2019 10:24:46 -0700
Subject: Re: [RFT PATCH v5 3/5] cpu-topology: Move cpu topology code to common
 code.
To: Sudeep Holla <sudeep.holla@arm.com>, Jeffrey Hugo <jhugo@codeaurora.org>
References: <20190524000653.13005-1-atish.patra@wdc.com>
 <20190524000653.13005-4-atish.patra@wdc.com>
 <20190529104801.GA13155@e107155-lin>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <b291e1da-47a7-32b9-ab36-90f65b2a961a@wdc.com>
Date: Wed, 29 May 2019 10:24:44 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529104801.GA13155@e107155-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_102454_616890_C6B07A9B 
X-CRM114-Status: GOOD (  24.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Andreas Schwab <schwab@suse.de>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Otto Sabart <ottosabart@seberm.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Ingo Molnar <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/29/19 3:48 AM, Sudeep Holla wrote:
> On Thu, May 23, 2019 at 05:06:50PM -0700, Atish Patra wrote:
>> Both RISC-V & ARM64 are using cpu-map device tree to describe
>> their cpu topology. It's better to move the relevant code to
>> a common place instead of duplicate code.
>>
> 
> I couldn't test this on any ARM64 server platforms, tested on Juno
> and other embedded platforms.
> 

Jeff had tested earlier patch series on ARM64 server platform.
Since then, the series has changed. Even though, I don't expect it break 
ARM64, if it can be verified again that would be great.

@Jeff: Can you give it a shot if you have some time ?

> Tested-by: Sudeep Holla <sudeep.holla@arm.com>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> 

Thanks!

>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>> Tested-by: Jeffrey Hugo <jhugo@codeaurora.org>
>> ---
>>   arch/arm64/include/asm/topology.h |  23 ---
>>   arch/arm64/kernel/topology.c      | 303 +-----------------------------
>>   drivers/base/arch_topology.c      | 296 +++++++++++++++++++++++++++++
>>   include/linux/arch_topology.h     |  28 +++
>>   include/linux/topology.h          |   1 +
>>   5 files changed, 329 insertions(+), 322 deletions(-)
>>
> 
> [...]
> 
>> diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
>> index 0825c4a856e3..6b95c91e7d67 100644
>> --- a/arch/arm64/kernel/topology.c
>> +++ b/arch/arm64/kernel/topology.c
>>
> 
> [...]
> 
>> -static int __init parse_cluster(struct device_node *cluster, int depth)
>> -{
>> -	char name[10];
>> -	bool leaf = true;
>> -	bool has_cores = false;
>> -	struct device_node *c;
>> -	static int package_id __initdata;
>> -	int core_id = 0;
> 
> [Ultra minor nit]: you seem to have reordered the above declaration when
> you moved, just noticed as it showed up when comparing.
> 

Arrgh. Sorry!

I think I was trying to fix a checkpatch or something and forgot to 
revert. I will update it.

>> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
>> index 1739d7e1952a..20a960131bee 100644
>> --- a/drivers/base/arch_topology.c
>> +++ b/drivers/base/arch_topology.c
> 
> [...]
> 
>> +
>> +static int __init parse_cluster(struct device_node *cluster, int depth)
>> +{
>> +	char name[10];
>> +	bool leaf = true;
>> +	bool has_cores = false;
>> +	int core_id = 0;
>> +	static int package_id __initdata;
>> +	struct device_node *c;
>> +	int i, ret;
>> +
> 
> [...]
> 
>> +#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
>> +void update_siblings_masks(unsigned int cpu);
>> +#endif
>> +void remove_cpu_topology(unsigned int cpuid);
>> +
> 
> Another thing(not a block and we can do it once this is merged) is to
> remove these #ifdefs
> 

This #ifdef is removed in patch 4.

But we should remove the other ones around init_cpu_topology, 
parse_dt_topology and friends in a follow up patch once this is merged.

> --
> Regards,
> Sudeep
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
