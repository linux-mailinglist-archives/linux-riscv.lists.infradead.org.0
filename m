Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A32A32B20
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 10:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o446fp2UaKj9VS4QTWTS4imNiEn4tle8vfcXgIekvZI=; b=u2I4SfwqmaWY5H3n/P7qgHElT
	gVzR0ku/aeW3HBiuGg6twPFdGeSIQrs/Avl6wivto0crAR4g97AihNWskJFO/cDrZiZTJ4PKCJeOd
	7sGu9/Y4e96r56CVGLZ6TbvU7HbwZ39Glnw+6HNCrhAq6vMjQQc833dEVxDNNt2J6nxNNvpkNQiUD
	XEqDaTsjxq5AIlbIwr8WP0dEyW9prRty1TIm9MR5dR6VbMMF0qzns3B+lsYnRqoufGo1AvpwcqJ5v
	dmuUsYgYdJSoSc0Qzxkzts6NntDh6eNdlNU40pimJe9FCgcExGbo4ztawMAgNeCt9P/adlpV+mYt0
	4uriNUUng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXifE-0005Em-OS; Mon, 03 Jun 2019 08:49:56 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXieg-0004TO-Fu; Mon, 03 Jun 2019 08:49:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559551762; x=1591087762;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=MwpcSDOILdT5IlbEBeqtJ6errBQ16K1SSoalEiTlrzk=;
 b=KTD/VsFHnRCoOcF9yjfUg1efoYMuL9VPg0t6TtUYBpJfR/DyHZA7Z3lK
 EZwPHEeQ2RQJ6PuQNQFXYQzdxDBdEV8XAtKIEBOVGru/rUkVgqSgCxjwz
 CXCz07ffJeFvDH/bFNH60+YJI5dGv6pJ7ViCatdMDWPH2oRB0D2g6d/TY
 43IKFAHyBLWPxYNVBY1lpta5tG6j1ZNK4O+HTH2Cxtj384qZTm4EDDjnY
 ugvk0amzd/Fqb6ZIRpX9737j0PaYi91S8R5t6KHlFsZg1Mc6pMEnTb1Ug
 K9bVO1D8oX7HTdWhK0oKWBCK6pi4d58qiIZrSts/wj7VCkaNGK5bDtt03 A==;
X-IronPort-AV: E=Sophos;i="5.60,546,1549900800"; d="scan'208";a="109645035"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 16:49:19 +0800
IronPort-SDR: OQRH6/S4bXi7ApVkGYJr12QsrAKXZVwBPSkk0YMQo4tMLsPAmOj87Ekh0r/SbZpSMEgEbXuBC6
 71Xu5PTC0sS3W01jSihqjtgv+zH58HjegFmkCMctbA0HJ5sQX0yL9uv3SBSGIj8kSrjrtwtYzJ
 XziAZ1AxNhj+gu31FNnLf4xxIAmx/R4Yp40DKSLXqBWUn3eP7EH9iphqvlzuJLAzfyLrnv1kKf
 jjqKmK5DHXQAHbVrShXUKNI6ih3Vzk9qFf3YDXskeSLqcxQHucYAwMzeexfc57NA4UipeYPZPH
 FNSdTVj0mg0/6dOU59yOYfhQ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 03 Jun 2019 01:26:43 -0700
IronPort-SDR: gCsdst6ihQVc3cWehGBwrDNcFnkYEvZYfs6K5Bd8evj/57lPWFsV64FqebkBljZbypOrN5zULP
 N+w4qwTlLLUejnUfC10+n0jo6Myy7+aN0AWvxJ/P8ffZ4rUpcfjr/yMZd8WCide5DX2WH5uGlK
 5a4/zFsUE6loi3os/hC6DfsF1RIVnQfGAKZJq/b30wbkX7X9lnf15aBlsOHLwUjfF9JqKo0yQt
 CxHWUfAw/UKuEKC10bitMU/1GaLYJdXbNdVH8b4KA0lbj1cPUQfA1s7VRa39VSHPlPzc05uFSr
 KG4=
Received: from unknown (HELO [10.225.104.42]) ([10.225.104.42])
 by uls-op-cesaip01.wdc.com with ESMTP; 03 Jun 2019 01:49:19 -0700
Subject: Re: [PATCH v6 2/7] dt-binding: cpu-topology: Move cpu-map to a common
 binding.
To: Jeremy Linton <jeremy.linton@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-3-atish.patra@wdc.com>
 <0515d803-0da5-dcbe-3d3e-bb786b320d8b@arm.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <28118149-193d-2a8a-995a-2f1829e95c1c@wdc.com>
Date: Mon, 3 Jun 2019 01:49:13 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0515d803-0da5-dcbe-3d3e-bb786b320d8b@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_014923_074730_497D933D 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
 Ingo Molnar <mingo@kernel.org>, Rob Herring <robh@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>,
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

On 5/30/19 1:55 PM, Jeremy Linton wrote:
> Hi,
> 
> On 5/29/19 4:13 PM, Atish Patra wrote:
>> cpu-map binding can be used to described cpu topology for both
>> RISC-V & ARM. It makes more sense to move the binding to document
>> to a common place.
>>
>> The relevant discussion can be found here.
>> https://lkml.org/lkml/2018/11/6/19
>>
>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>    .../topology.txt => cpu/cpu-topology.txt}     | 82 +++++++++++++++----
>>    1 file changed, 66 insertions(+), 16 deletions(-)
>>    rename Documentation/devicetree/bindings/{arm/topology.txt => cpu/cpu-topology.txt} (86%)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/topology.txt b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
>> similarity index 86%
>> rename from Documentation/devicetree/bindings/arm/topology.txt
>> rename to Documentation/devicetree/bindings/cpu/cpu-topology.txt
>> index 3b8febb46dad..069addccab14 100644
>> --- a/Documentation/devicetree/bindings/arm/topology.txt
>> +++ b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
>> @@ -1,12 +1,12 @@
>>    ===========================================
>> -ARM topology binding description
>> +CPU topology binding description
>>    ===========================================
>>    
>>    ===========================================
>>    1 - Introduction
>>    ===========================================
>>    
>> -In an ARM system, the hierarchy of CPUs is defined through three entities that
>> +In a SMP system, the hierarchy of CPUs is defined through three entities that
>>    are used to describe the layout of physical CPUs in the system:
>>    
>>    - socket
>> @@ -14,9 +14,6 @@ are used to describe the layout of physical CPUs in the system:
>>    - core
>>    - thread
>>    
>> -The cpu nodes (bindings defined in [1]) represent the devices that
>> -correspond to physical CPUs and are to be mapped to the hierarchy levels.
>> -
>>    The bottom hierarchy level sits at core or thread level depending on whether
>>    symmetric multi-threading (SMT) is supported or not.
>>    
>> @@ -25,33 +22,31 @@ threads existing in the system and map to the hierarchy level "thread" above.
>>    In systems where SMT is not supported "cpu" nodes represent all cores present
>>    in the system and map to the hierarchy level "core" above.
>>    
>> -ARM topology bindings allow one to associate cpu nodes with hierarchical groups
>> +CPU topology bindings allow one to associate cpu nodes with hierarchical groups
>>    corresponding to the system hierarchy; syntactically they are defined as device
>>    tree nodes.
>>    
>> -The remainder of this document provides the topology bindings for ARM, based
>> -on the Devicetree Specification, available from:
>> +Currently, only ARM/RISC-V intend to use this cpu topology binding but it may be
>> +used for any other architecture as well.
>>    
>> -https://www.devicetree.org/specifications/
>> +The cpu nodes, as per bindings defined in [4], represent the devices that
>> +correspond to physical CPUs and are to be mapped to the hierarchy levels.
>>    
>> -If not stated otherwise, whenever a reference to a cpu node phandle is made its
>> -value must point to a cpu node compliant with the cpu node bindings as
>> -documented in [1].
>>    A topology description containing phandles to cpu nodes that are not compliant
>> -with bindings standardized in [1] is therefore considered invalid.
>> +with bindings standardized in [4] is therefore considered invalid.
>>    
>>    ===========================================
>>    2 - cpu-map node
>>    ===========================================
>>    
>> -The ARM CPU topology is defined within the cpu-map node, which is a direct
>> +The ARM/RISC-V CPU topology is defined within the cpu-map node, which is a direct
>>    child of the cpus node and provides a container where the actual topology
>>    nodes are listed.
>>    
>>    - cpu-map node
>>    
>> -	Usage: Optional - On ARM SMP systems provide CPUs topology to the OS.
>> -			  ARM uniprocessor systems do not require a topology
>> +	Usage: Optional - On SMP systems provide CPUs topology to the OS.
>> +			  Uniprocessor systems do not require a topology
>>    			  description and therefore should not define a
>>    			  cpu-map node.
>>    
>> @@ -494,8 +489,63 @@ cpus {
>>    	};
>>    };
>>    
>> +Example 3: HiFive Unleashed (RISC-V 64 bit, 4 core system)
>> +
>> +{
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +	compatible = "sifive,fu540g", "sifive,fu500";
>> +	model = "sifive,hifive-unleashed-a00";
>> +
>> +	...
>> +	cpus {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +		cpu-map {
>> +			cluster0 {
>> +				core0 {
>> +					cpu = <&CPU1>;
>> +				};
>> +				core1 {
>> +					cpu = <&CPU2>;
>> +				};
>> +				core2 {
>> +					cpu0 = <&CPU2>;
>> +				};
>> +				core3 {
>> +					cpu0 = <&CPU3>;
>> +				};
>> +			};
>> +		};
> 
> 
> <nit picking>
> 
> While socket is optional, its probably a good idea to include the node
> in the example even if the result is the same. 

Sure. I will update that.

That is because at least
> on arm64 the DT clusters=sockets decision had performance implications
> for larger systems.
> 
> Assuring the socket information is correct is helpful by itself to avoid
> having to explain why a single socket machine is displaying some other
> value in lscpu.
> 
Just for my understanding, can you give a example?

> 
> 
>> +
>> +		CPU1: cpu@1 {
>> +			device_type = "cpu";
>> +			compatible = "sifive,rocket0", "riscv";
>> +			reg = <0x1>;
>> +		}
>> +
>> +		CPU2: cpu@2 {
>> +			device_type = "cpu";
>> +			compatible = "sifive,rocket0", "riscv";
>> +			reg = <0x2>;
>> +		}
>> +		CPU3: cpu@3 {
>> +			device_type = "cpu";
>> +			compatible = "sifive,rocket0", "riscv";
>> +			reg = <0x3>;
>> +		}
>> +		CPU4: cpu@4 {
>> +			device_type = "cpu";
>> +			compatible = "sifive,rocket0", "riscv";
>> +			reg = <0x4>;
>> +		}
>> +	}
>> +};
>>    ===============================================================================
>>    [1] ARM Linux kernel documentation
>>        Documentation/devicetree/bindings/arm/cpus.yaml
>>    [2] Devicetree NUMA binding description
>>        Documentation/devicetree/bindings/numa.txt
>> +[3] RISC-V Linux kernel documentation
>> +    Documentation/devicetree/bindings/riscv/cpus.txt
>> +[4] https://www.devicetree.org/specifications/
>>
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
