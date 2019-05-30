Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972253039F
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 22:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tYfeBo6+mHL5xE8qJvF0K2InFwTBuX8a187Cmlg+VnI=; b=gKSuD8Ltqupt+Dn6NJD0h03Li
	WHhaSAULlWHDIJpDMHeY1hdmLC+DXRzAJWQJIeXLXtDkQc0ny3IJ8QnU7O8w6xK3BXqSTdHBNyTUn
	GqUGduxPRlXDOQ9637Ly01tyimRY+rsAzTka52V3HQN6SeLueHsEPKST0ZNyEcS1M2zXsyR68a7aT
	0dArC5EBYTci7eea5iyFSDJ+9pWGA6xbvTzZVUj5hyk1CmVvNg0orxYqzniy/DUGhWQcYCrgiRWX4
	LdZIvqB8+gq77Dg3c/QLB4ukXau0O0byQXn0Vksr+6I8yYDPlKZq4W/emzaqzobaCFl5A+19dAX+Z
	YB5r942sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWS56-0002AR-Nr; Thu, 30 May 2019 20:55:24 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWS4w-00022q-8i; Thu, 30 May 2019 20:55:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF11C341;
 Thu, 30 May 2019 13:55:11 -0700 (PDT)
Received: from [192.168.100.220] (usa-sjc-mx-foss1.foss.arm.com
 [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 193FB3F690;
 Thu, 30 May 2019 13:55:10 -0700 (PDT)
Subject: Re: [PATCH v6 2/7] dt-binding: cpu-topology: Move cpu-map to a common
 binding.
To: Atish Patra <atish.patra@wdc.com>, linux-kernel@vger.kernel.org
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-3-atish.patra@wdc.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <0515d803-0da5-dcbe-3d3e-bb786b320d8b@arm.com>
Date: Thu, 30 May 2019 15:55:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529211340.17087-3-atish.patra@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_135514_321771_D2F03E65 
X-CRM114-Status: GOOD (  29.49  )
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
 Rob Herring <robh@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@kernel.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On 5/29/19 4:13 PM, Atish Patra wrote:
> cpu-map binding can be used to described cpu topology for both
> RISC-V & ARM. It makes more sense to move the binding to document
> to a common place.
> 
> The relevant discussion can be found here.
> https://lkml.org/lkml/2018/11/6/19
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>   .../topology.txt => cpu/cpu-topology.txt}     | 82 +++++++++++++++----
>   1 file changed, 66 insertions(+), 16 deletions(-)
>   rename Documentation/devicetree/bindings/{arm/topology.txt => cpu/cpu-topology.txt} (86%)
> 
> diff --git a/Documentation/devicetree/bindings/arm/topology.txt b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
> similarity index 86%
> rename from Documentation/devicetree/bindings/arm/topology.txt
> rename to Documentation/devicetree/bindings/cpu/cpu-topology.txt
> index 3b8febb46dad..069addccab14 100644
> --- a/Documentation/devicetree/bindings/arm/topology.txt
> +++ b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
> @@ -1,12 +1,12 @@
>   ===========================================
> -ARM topology binding description
> +CPU topology binding description
>   ===========================================
>   
>   ===========================================
>   1 - Introduction
>   ===========================================
>   
> -In an ARM system, the hierarchy of CPUs is defined through three entities that
> +In a SMP system, the hierarchy of CPUs is defined through three entities that
>   are used to describe the layout of physical CPUs in the system:
>   
>   - socket
> @@ -14,9 +14,6 @@ are used to describe the layout of physical CPUs in the system:
>   - core
>   - thread
>   
> -The cpu nodes (bindings defined in [1]) represent the devices that
> -correspond to physical CPUs and are to be mapped to the hierarchy levels.
> -
>   The bottom hierarchy level sits at core or thread level depending on whether
>   symmetric multi-threading (SMT) is supported or not.
>   
> @@ -25,33 +22,31 @@ threads existing in the system and map to the hierarchy level "thread" above.
>   In systems where SMT is not supported "cpu" nodes represent all cores present
>   in the system and map to the hierarchy level "core" above.
>   
> -ARM topology bindings allow one to associate cpu nodes with hierarchical groups
> +CPU topology bindings allow one to associate cpu nodes with hierarchical groups
>   corresponding to the system hierarchy; syntactically they are defined as device
>   tree nodes.
>   
> -The remainder of this document provides the topology bindings for ARM, based
> -on the Devicetree Specification, available from:
> +Currently, only ARM/RISC-V intend to use this cpu topology binding but it may be
> +used for any other architecture as well.
>   
> -https://www.devicetree.org/specifications/
> +The cpu nodes, as per bindings defined in [4], represent the devices that
> +correspond to physical CPUs and are to be mapped to the hierarchy levels.
>   
> -If not stated otherwise, whenever a reference to a cpu node phandle is made its
> -value must point to a cpu node compliant with the cpu node bindings as
> -documented in [1].
>   A topology description containing phandles to cpu nodes that are not compliant
> -with bindings standardized in [1] is therefore considered invalid.
> +with bindings standardized in [4] is therefore considered invalid.
>   
>   ===========================================
>   2 - cpu-map node
>   ===========================================
>   
> -The ARM CPU topology is defined within the cpu-map node, which is a direct
> +The ARM/RISC-V CPU topology is defined within the cpu-map node, which is a direct
>   child of the cpus node and provides a container where the actual topology
>   nodes are listed.
>   
>   - cpu-map node
>   
> -	Usage: Optional - On ARM SMP systems provide CPUs topology to the OS.
> -			  ARM uniprocessor systems do not require a topology
> +	Usage: Optional - On SMP systems provide CPUs topology to the OS.
> +			  Uniprocessor systems do not require a topology
>   			  description and therefore should not define a
>   			  cpu-map node.
>   
> @@ -494,8 +489,63 @@ cpus {
>   	};
>   };
>   
> +Example 3: HiFive Unleashed (RISC-V 64 bit, 4 core system)
> +
> +{
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +	compatible = "sifive,fu540g", "sifive,fu500";
> +	model = "sifive,hifive-unleashed-a00";
> +
> +	...
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&CPU1>;
> +				};
> +				core1 {
> +					cpu = <&CPU2>;
> +				};
> +				core2 {
> +					cpu0 = <&CPU2>;
> +				};
> +				core3 {
> +					cpu0 = <&CPU3>;
> +				};
> +			};
> +		};


<nit picking>

While socket is optional, its probably a good idea to include the node 
in the example even if the result is the same. That is because at least 
on arm64 the DT clusters=sockets decision had performance implications 
for larger systems.

Assuring the socket information is correct is helpful by itself to avoid 
having to explain why a single socket machine is displaying some other 
value in lscpu.



> +
> +		CPU1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "sifive,rocket0", "riscv";
> +			reg = <0x1>;
> +		}
> +
> +		CPU2: cpu@2 {
> +			device_type = "cpu";
> +			compatible = "sifive,rocket0", "riscv";
> +			reg = <0x2>;
> +		}
> +		CPU3: cpu@3 {
> +			device_type = "cpu";
> +			compatible = "sifive,rocket0", "riscv";
> +			reg = <0x3>;
> +		}
> +		CPU4: cpu@4 {
> +			device_type = "cpu";
> +			compatible = "sifive,rocket0", "riscv";
> +			reg = <0x4>;
> +		}
> +	}
> +};
>   ===============================================================================
>   [1] ARM Linux kernel documentation
>       Documentation/devicetree/bindings/arm/cpus.yaml
>   [2] Devicetree NUMA binding description
>       Documentation/devicetree/bindings/numa.txt
> +[3] RISC-V Linux kernel documentation
> +    Documentation/devicetree/bindings/riscv/cpus.txt
> +[4] https://www.devicetree.org/specifications/
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
