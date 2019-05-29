Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1372E97E
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 01:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=44dyQKzQWkAqSzo8wT6cWE0mbii2AcGegHzX50nCAME=; b=DlTL+iqy0o5cDD1TmLR70Lz5O
	eA71NT+9lCMAYEBff6EXztsi+5H6JdXi2JAyoeZBK/zndipWIzjlKgDPHZSq6d9jWB5h2NJCR9voL
	UuMkRq/YD/5PsPTE9xsfzJWe5JgB4YK1WB8wnWmxsHr7in545Afz9Cp2+bP4mp+I9GfWuargq7AdP
	LfYUuDFQBC/Kz1xmLlQUfcVt7Xq3+1C7o8B1X068OD/cSPa/MNEvytzaKDbADjrxXEF8ILgCSyxcm
	AkLUufl9RtZS6uEGszevC00g13K/PtuW4QedQOUfSuDPeEGWcIjczE8jqVf8G7kPOZ3G+Y7xYopjk
	0vOdfGrfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW8Ar-0002yf-CC; Wed, 29 May 2019 23:40:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW8An-0002wm-EF; Wed, 29 May 2019 23:39:59 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4TNdJpm045204;
 Wed, 29 May 2019 18:39:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559173159;
 bh=Ob84HKBpBDTg+9kN26JNOTwj7/pKEiiBDZ6BFO8Ly2U=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=xY2rvs6J1JpuBlyy+QK2mc2U+I9JjBnLA9VbnplG4BQTLpqWB6Sy2mLxg0bScLBP+
 AsIR4ArxnHRQR06r62fnlVI6hmyb0msh3tnY7DFPIz6e9YSbJdKWdgQu5v2K17bDir
 NJ1d/9hWtstSKtlXQsqgM+k1Wl4t4uzwP2QRlv6c=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4TNdJsX105229
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 29 May 2019 18:39:19 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 29
 May 2019 18:39:18 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 29 May 2019 18:39:19 -0500
Received: from [10.250.93.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4TNdHmh064568;
 Wed, 29 May 2019 18:39:17 -0500
Subject: Re: [PATCH v6 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
To: Atish Patra <atish.patra@wdc.com>, <linux-kernel@vger.kernel.org>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-2-atish.patra@wdc.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <49f41e62-5354-a674-d95f-5f63851a0ca6@ti.com>
Date: Wed, 29 May 2019 19:39:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190529211340.17087-2-atish.patra@wdc.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_163957_562500_6B89DBE9 
X-CRM114-Status: GOOD (  30.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 "Rafael J. Wysocki" <rafael@kernel.org>, "Peter
 Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Rob Herring <robh@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/29/19 5:13 PM, Atish Patra wrote:
> From: Sudeep Holla <sudeep.holla@arm.com>
> 
> The current ARM DT topology description provides the operating system
> with a topological view of the system that is based on leaf nodes
> representing either cores or threads (in an SMT system) and a
> hierarchical set of cluster nodes that creates a hierarchical topology
> view of how those cores and threads are grouped.
> 
> However this hierarchical representation of clusters does not allow to
> describe what topology level actually represents the physical package or
> the socket boundary, which is a key piece of information to be used by
> an operating system to optimize resource allocation and scheduling.
> 

Are physical package descriptions really needed? What does "socket" 
imply that a higher layer "cluster" node grouping does not? It doesn't 
imply a different NUMA distance and the definition of "socket" is 
already not well defined, is a dual chiplet processor not just a fancy 
dual "socket" or are dual "sockets" on a server board "slotket" card, 
will we need new names for those too..

Andrew

> Lets add a new "socket" node type in the cpu-map node to describe the
> same.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>   .../devicetree/bindings/arm/topology.txt      | 52 ++++++++++++++-----
>   1 file changed, 39 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/topology.txt b/Documentation/devicetree/bindings/arm/topology.txt
> index b0d80c0fb265..3b8febb46dad 100644
> --- a/Documentation/devicetree/bindings/arm/topology.txt
> +++ b/Documentation/devicetree/bindings/arm/topology.txt
> @@ -9,6 +9,7 @@ ARM topology binding description
>   In an ARM system, the hierarchy of CPUs is defined through three entities that
>   are used to describe the layout of physical CPUs in the system:
>   
> +- socket
>   - cluster
>   - core
>   - thread
> @@ -63,21 +64,23 @@ nodes are listed.
>   
>   	The cpu-map node's child nodes can be:
>   
> -	- one or more cluster nodes
> +	- one or more cluster nodes or
> +	- one or more socket nodes in a multi-socket system
>   
>   	Any other configuration is considered invalid.
>   
> -The cpu-map node can only contain three types of child nodes:
> +The cpu-map node can only contain 4 types of child nodes:
>   
> +- socket node
>   - cluster node
>   - core node
>   - thread node
>   
>   whose bindings are described in paragraph 3.
>   
> -The nodes describing the CPU topology (cluster/core/thread) can only
> -be defined within the cpu-map node and every core/thread in the system
> -must be defined within the topology.  Any other configuration is
> +The nodes describing the CPU topology (socket/cluster/core/thread) can
> +only be defined within the cpu-map node and every core/thread in the
> +system must be defined within the topology.  Any other configuration is
>   invalid and therefore must be ignored.
>   
>   ===========================================
> @@ -85,26 +88,44 @@ invalid and therefore must be ignored.
>   ===========================================
>   
>   cpu-map child nodes must follow a naming convention where the node name
> -must be "clusterN", "coreN", "threadN" depending on the node type (ie
> -cluster/core/thread) (where N = {0, 1, ...} is the node number; nodes which
> -are siblings within a single common parent node must be given a unique and
> +must be "socketN", "clusterN", "coreN", "threadN" depending on the node type
> +(ie socket/cluster/core/thread) (where N = {0, 1, ...} is the node number; nodes
> +which are siblings within a single common parent node must be given a unique and
>   sequential N value, starting from 0).
>   cpu-map child nodes which do not share a common parent node can have the same
>   name (ie same number N as other cpu-map child nodes at different device tree
>   levels) since name uniqueness will be guaranteed by the device tree hierarchy.
>   
>   ===========================================
> -3 - cluster/core/thread node bindings
> +3 - socket/cluster/core/thread node bindings
>   ===========================================
>   
> -Bindings for cluster/cpu/thread nodes are defined as follows:
> +Bindings for socket/cluster/cpu/thread nodes are defined as follows:
> +
> +- socket node
> +
> +	 Description: must be declared within a cpu-map node, one node
> +		      per physical socket in the system. A system can
> +		      contain single or multiple physical socket.
> +		      The association of sockets and NUMA nodes is beyond
> +		      the scope of this bindings, please refer [2] for
> +		      NUMA bindings.
> +
> +	This node is optional for a single socket system.
> +
> +	The socket node name must be "socketN" as described in 2.1 above.
> +	A socket node can not be a leaf node.
> +
> +	A socket node's child nodes must be one or more cluster nodes.
> +
> +	Any other configuration is considered invalid.
>   
>   - cluster node
>   
>   	 Description: must be declared within a cpu-map node, one node
>   		      per cluster. A system can contain several layers of
> -		      clustering and cluster nodes can be contained in parent
> -		      cluster nodes.
> +		      clustering within a single physical socket and cluster
> +		      nodes can be contained in parent cluster nodes.
>   
>   	The cluster node name must be "clusterN" as described in 2.1 above.
>   	A cluster node can not be a leaf node.
> @@ -164,13 +185,15 @@ Bindings for cluster/cpu/thread nodes are defined as follows:
>   4 - Example dts
>   ===========================================
>   
> -Example 1 (ARM 64-bit, 16-cpu system, two clusters of clusters):
> +Example 1 (ARM 64-bit, 16-cpu system, two clusters of clusters in a single
> +physical socket):
>   
>   cpus {
>   	#size-cells = <0>;
>   	#address-cells = <2>;
>   
>   	cpu-map {
> +		socket0 {
>   			cluster0 {
>   				cluster0 {
>   					core0 {
> @@ -253,6 +276,7 @@ cpus {
>   				};
>   			};
>   		};
> +	};
>   
>   	CPU0: cpu@0 {
>   		device_type = "cpu";
> @@ -473,3 +497,5 @@ cpus {
>   ===============================================================================
>   [1] ARM Linux kernel documentation
>       Documentation/devicetree/bindings/arm/cpus.yaml
> +[2] Devicetree NUMA binding description
> +    Documentation/devicetree/bindings/numa.txt
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
