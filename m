Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5373D37686
	for <lists+linux-riscv@lfdr.de>; Thu,  6 Jun 2019 16:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2NWdekaJ0HuzGzL2lmoMQbylH8CogyZCgpe7OtyXm44=; b=CJZeRRxLY/jRm99JT8Bvps1Az
	qSgN0qUJIA7kpAdLsTsw/RoakyLSZLJ3G6rM5IOlOSGqb2FlyGx77++aXZyXqUTT2JtHIqxdBCFmd
	7uYzMABzMnwbES8nbK5Hs7fUTGEIjNZLdZwcxkwpCzxLxpqu5eza/PRBiJgagzb1qUscWvoB/4eg7
	MginIJUBpuOlzuSgnOyBVJDC9ScyE4Ej8UkwZOdUT6rY4UIXK+92tAFFobnQB8+QMGipwMl9KzF91
	zL6oUdfDxjuPVvLrwom1g8UuOtERP4NaxhQfRry30C+FmFa0XcOrEakpEZW2mwLMl5dxPx0kVXRlS
	GOuN+iNkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYtKO-0005O5-Up; Thu, 06 Jun 2019 14:25:16 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYtKG-00050B-1E; Thu, 06 Jun 2019 14:25:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559831108; x=1591367108;
 h=subject:from:to:cc:references:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=rEjq0xdKk1JknlqpDZ/HFtUuPxL/PyV36Pg5yw6K8x8=;
 b=pKVVhqCdbBSYGEZLUG5PgBiEKUTxcf+n9YmJzCPuV/oIc+mbyWLjE2er
 +6+wy1H0xRt0no2jvq3aqk4Of33GD32KcnVA2TFlpFoXFV94xEyWCfesx
 NNOsZRf8CAoRqE/Q+rhPwtvw9RCThqmGaV1Hdec7hrUy8MbQqJQmcQ7vX
 NsSWtfiIzslUPGcMm8NPtgc+FKvZz4t3PluZxGkSOfLBI8ntNWxZQKeMO
 3HbYKgGZI3JDDSG9WTAmdj35i9RRJzYDDr7orL2oWXfaMpNN5MKhWTPVN
 KB6FJWocXBOe2TXagpM8f4OVi2f7j3qm1CqYlah7yVpXncuVt1hELcEZB Q==;
X-IronPort-AV: E=Sophos;i="5.63,559,1557158400"; d="scan'208";a="111231364"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 06 Jun 2019 22:25:06 +0800
IronPort-SDR: c7N3q52vC59WwkGX7Yi0qcFbZZtw1bqjrN9ZtNOVo+jIBek3FXoVcGj/L9r+kB94OjKyVfisXt
 uPaI5iiaGpIlAupdbFlmB8g0w57XnYRJZzVcidrTMl76X4p9aEDLAHsCCp6fuYlM0DA6OxIRFw
 MUWqVDHIOmmheaiBCSNpiKRRQt+bQNVfhdofTQdkLeZsCtieFCULaAwqV9iW9IWhXF4YO8+8Rq
 w0CYwNKyWeUMQbhf3s0l8TmnEfrq71OKVvC23E3tazn77pnFl/IEZnMcjebEpQDkmrMS2pCSJ9
 mUQoV4FLOafbT06dA8aLVRHM
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 06 Jun 2019 07:00:00 -0700
IronPort-SDR: JqEwNtP0feyi0QP+GRXCTEoS3x5m3WoXZziRmFdN3rKtyRAPs9vOm53tX5nskpiktumA46i+W9
 mlxE6e/rQTVqV7TWiQXbfkoerYBZ6MvQzrej7ZXjqM7fzntLr5Z0eTDNYnFVudBcZnZhp3rq7z
 lP4v9BOcGsSQi5wgxrO+KSFYEFnPsfwRUA5b3P2H7K8kBUp0Lg3jmXXdMOwcEl1S5+bdr+k3qz
 2bGBaWELQYdCXO7MPlSrMWJSWx+E8yDrFw9/SGH1ZUfWvdh9ZLM4/sLFtXhOeJSUoYuM1Appv6
 N1c=
Received: from unknown (HELO [10.225.105.220]) ([10.225.105.220])
 by uls-op-cesaip01.wdc.com with ESMTP; 06 Jun 2019 07:25:04 -0700
Subject: Re: [PATCH v6 4/7] arm: Use common cpu_topology structure and
 functions.
From: Atish Patra <atish.patra@wdc.com>
To: Russell King <linux@armlinux.org.uk>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-5-atish.patra@wdc.com>
Message-ID: <de0dc9f6-8d20-86f3-7d7e-eb8a2a290901@wdc.com>
Date: Thu, 6 Jun 2019 07:25:01 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190529211340.17087-5-atish.patra@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_072508_215693_ECC99854 
X-CRM114-Status: GOOD (  29.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Ingo Molnar <mingo@kernel.org>, Anup Patel <anup@brainfault.org>,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/29/19 2:15 PM, Atish Patra wrote:
> Currently, ARM32 and ARM64 uses different data structures to represent
> their cpu topologies. Since, we are moving the ARM64 topology to common
> code to be used by other architectures, we can reuse that for ARM32 as
> well.
> 
> Take this opprtunity to remove the redundant functions from ARM32 and
> reuse the common code instead.
> 
> To: Russell King <linux@armlinux.org.uk>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Tested-by: Sudeep Holla <sudeep.holla@arm.com> (on TC2)
> Reviewed-by : Sudeep Holla <sudeep.holla@arm.com>
> 
> ---
> Hi Russell,
> Can we get a ACK for this patch ? We are hoping that the entire
> series can be merged at one go.
> ---
>   arch/arm/include/asm/topology.h | 20 -----------
>   arch/arm/kernel/topology.c      | 60 ++++-----------------------------
>   drivers/base/arch_topology.c    |  4 ++-
>   include/linux/arch_topology.h   |  6 ++--
>   4 files changed, 11 insertions(+), 79 deletions(-)
> 
> diff --git a/arch/arm/include/asm/topology.h b/arch/arm/include/asm/topology.h
> index 2a786f54d8b8..8a0fae94d45e 100644
> --- a/arch/arm/include/asm/topology.h
> +++ b/arch/arm/include/asm/topology.h
> @@ -5,26 +5,6 @@
>   #ifdef CONFIG_ARM_CPU_TOPOLOGY
>   
>   #include <linux/cpumask.h>
> -
> -struct cputopo_arm {
> -	int thread_id;
> -	int core_id;
> -	int socket_id;
> -	cpumask_t thread_sibling;
> -	cpumask_t core_sibling;
> -};
> -
> -extern struct cputopo_arm cpu_topology[NR_CPUS];
> -
> -#define topology_physical_package_id(cpu)	(cpu_topology[cpu].socket_id)
> -#define topology_core_id(cpu)		(cpu_topology[cpu].core_id)
> -#define topology_core_cpumask(cpu)	(&cpu_topology[cpu].core_sibling)
> -#define topology_sibling_cpumask(cpu)	(&cpu_topology[cpu].thread_sibling)
> -
> -void init_cpu_topology(void);
> -void store_cpu_topology(unsigned int cpuid);
> -const struct cpumask *cpu_coregroup_mask(int cpu);
> -
>   #include <linux/arch_topology.h>
>   
>   /* Replace task scheduler's default frequency-invariant accounting */
> diff --git a/arch/arm/kernel/topology.c b/arch/arm/kernel/topology.c
> index 60e375ce1ab2..238f1da0219c 100644
> --- a/arch/arm/kernel/topology.c
> +++ b/arch/arm/kernel/topology.c
> @@ -177,17 +177,6 @@ static inline void parse_dt_topology(void) {}
>   static inline void update_cpu_capacity(unsigned int cpuid) {}
>   #endif
>   
> - /*
> - * cpu topology table
> - */
> -struct cputopo_arm cpu_topology[NR_CPUS];
> -EXPORT_SYMBOL_GPL(cpu_topology);
> -
> -const struct cpumask *cpu_coregroup_mask(int cpu)
> -{
> -	return &cpu_topology[cpu].core_sibling;
> -}
> -
>   /*
>    * The current assumption is that we can power gate each core independently.
>    * This will be superseded by DT binding once available.
> @@ -197,32 +186,6 @@ const struct cpumask *cpu_corepower_mask(int cpu)
>   	return &cpu_topology[cpu].thread_sibling;
>   }
>   
> -static void update_siblings_masks(unsigned int cpuid)
> -{
> -	struct cputopo_arm *cpu_topo, *cpuid_topo = &cpu_topology[cpuid];
> -	int cpu;
> -
> -	/* update core and thread sibling masks */
> -	for_each_possible_cpu(cpu) {
> -		cpu_topo = &cpu_topology[cpu];
> -
> -		if (cpuid_topo->socket_id != cpu_topo->socket_id)
> -			continue;
> -
> -		cpumask_set_cpu(cpuid, &cpu_topo->core_sibling);
> -		if (cpu != cpuid)
> -			cpumask_set_cpu(cpu, &cpuid_topo->core_sibling);
> -
> -		if (cpuid_topo->core_id != cpu_topo->core_id)
> -			continue;
> -
> -		cpumask_set_cpu(cpuid, &cpu_topo->thread_sibling);
> -		if (cpu != cpuid)
> -			cpumask_set_cpu(cpu, &cpuid_topo->thread_sibling);
> -	}
> -	smp_wmb();
> -}
> -
>   /*
>    * store_cpu_topology is called at boot when only one cpu is running
>    * and with the mutex cpu_hotplug.lock locked, when several cpus have booted,
> @@ -230,7 +193,7 @@ static void update_siblings_masks(unsigned int cpuid)
>    */
>   void store_cpu_topology(unsigned int cpuid)
>   {
> -	struct cputopo_arm *cpuid_topo = &cpu_topology[cpuid];
> +	struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
>   	unsigned int mpidr;
>   
>   	/* If the cpu topology has been already set, just return */
> @@ -250,12 +213,12 @@ void store_cpu_topology(unsigned int cpuid)
>   			/* core performance interdependency */
>   			cpuid_topo->thread_id = MPIDR_AFFINITY_LEVEL(mpidr, 0);
>   			cpuid_topo->core_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
> -			cpuid_topo->socket_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> +			cpuid_topo->package_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
>   		} else {
>   			/* largely independent cores */
>   			cpuid_topo->thread_id = -1;
>   			cpuid_topo->core_id = MPIDR_AFFINITY_LEVEL(mpidr, 0);
> -			cpuid_topo->socket_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
> +			cpuid_topo->package_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
>   		}
>   	} else {
>   		/*
> @@ -265,7 +228,7 @@ void store_cpu_topology(unsigned int cpuid)
>   		 */
>   		cpuid_topo->thread_id = -1;
>   		cpuid_topo->core_id = 0;
> -		cpuid_topo->socket_id = -1;
> +		cpuid_topo->package_id = -1;
>   	}
>   
>   	update_siblings_masks(cpuid);
> @@ -275,7 +238,7 @@ void store_cpu_topology(unsigned int cpuid)
>   	pr_info("CPU%u: thread %d, cpu %d, socket %d, mpidr %x\n",
>   		cpuid, cpu_topology[cpuid].thread_id,
>   		cpu_topology[cpuid].core_id,
> -		cpu_topology[cpuid].socket_id, mpidr);
> +		cpu_topology[cpuid].package_id, mpidr);
>   }
>   
>   static inline int cpu_corepower_flags(void)
> @@ -298,18 +261,7 @@ static struct sched_domain_topology_level arm_topology[] = {
>    */
>   void __init init_cpu_topology(void)
>   {
> -	unsigned int cpu;
> -
> -	/* init core mask and capacity */
> -	for_each_possible_cpu(cpu) {
> -		struct cputopo_arm *cpu_topo = &(cpu_topology[cpu]);
> -
> -		cpu_topo->thread_id = -1;
> -		cpu_topo->core_id =  -1;
> -		cpu_topo->socket_id = -1;
> -		cpumask_clear(&cpu_topo->core_sibling);
> -		cpumask_clear(&cpu_topo->thread_sibling);
> -	}
> +	reset_cpu_topology();
>   	smp_wmb();
>   
>   	parse_dt_topology();
> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
> index 5781bb4c457c..797e3cd71bea 100644
> --- a/drivers/base/arch_topology.c
> +++ b/drivers/base/arch_topology.c
> @@ -426,6 +426,7 @@ static int __init parse_dt_topology(void)
>   	of_node_put(cn);
>   	return ret;
>   }
> +#endif
>   
>   /*
>    * cpu topology table
> @@ -491,7 +492,7 @@ static void clear_cpu_topology(int cpu)
>   	cpumask_set_cpu(cpu, &cpu_topo->thread_sibling);
>   }
>   
> -static void __init reset_cpu_topology(void)
> +void __init reset_cpu_topology(void)
>   {
>   	unsigned int cpu;
>   
> @@ -526,6 +527,7 @@ __weak int __init parse_acpi_topology(void)
>   	return 0;
>   }
>   
> +#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
>   void __init init_cpu_topology(void)
>   {
>   	reset_cpu_topology();
> diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
> index d4e76e0a283f..d4311127970d 100644
> --- a/include/linux/arch_topology.h
> +++ b/include/linux/arch_topology.h
> @@ -54,11 +54,9 @@ extern struct cpu_topology cpu_topology[NR_CPUS];
>   void init_cpu_topology(void);
>   void store_cpu_topology(unsigned int cpuid);
>   const struct cpumask *cpu_coregroup_mask(int cpu);
> -#endif
> -
> -#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
>   void update_siblings_masks(unsigned int cpu);
> -#endif
>   void remove_cpu_topology(unsigned int cpuid);
> +void reset_cpu_topology(void);
> +#endif
>   
>   #endif /* _LINUX_ARCH_TOPOLOGY_H_ */
> 
Hi Russell,
Can we get an ACK for ARM if you don't have any objection to the series ?

-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
