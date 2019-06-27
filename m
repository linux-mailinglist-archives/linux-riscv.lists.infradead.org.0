Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E9057B61
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 07:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7SSPCiotHo3vqOpprexx1q+GyWRZWq7U7IOer8OLkXA=; b=DulHx/X+dos7GCZXwVRjbdHeC
	U5ljGCd9jLmeNKzAAvLouhKl485BKQNXsBT5i3r9LbSBcAafrbiSxRpYovPdV7biVN+BYucocH1G5
	XCwTH/Q8P8jp0j1I7cIqxO7fwrNJ8LLQ1ldrTYMLLsh6TXvNvx2eIgLREIgEFY7LSsuPHeO/dZ1Cc
	2mIlNSA68qSSyAETRpKZV8+MQDAqA6/wFQjAX85vHe+zp1O21NcOL4KcNpOY4vcOIR0po484p/fLl
	RMaMhSy5mImNd87yXC+HGUtd8s1kdZvsjUf2e8BKdYaz42JF8rkNpc8li7wbNweQ8rRxTpTlVuqLs
	CLcWOj7vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMwE-0007BH-0r; Thu, 27 Jun 2019 05:27:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMpi-0006ep-HX; Thu, 27 Jun 2019 05:20:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UNLyOsV3OGMw6xlUhvSGjqaekUuyTSupeV2vLHx35Xc=; b=FeIJdkYbOOgkVj5dB/Fom4Td4r
 rX3qEOcqKi5jRt+nUFMOkXjrEOb7wV53nAmxP8hGXfWNY9+cp/nubZvZ1ob9IiOIqh2WI7AvWp8mG
 eDJkZ+0UndOOdS2KjPcBthCT4OVyZ5m8bn4s5NMHPq/BFoJjNK/kNyuOuTKDiQsrhlnY9/dOFsQ7X
 2VBezca9eDMBhLGh7BUIhJW9DhVYE8hU/BRRHc1cn3pvwVqGgzXmXQUH2RXOsSE54dfyYpx8pgaBp
 LyKo6J/Wr8zVzfp2YuVgFonu0L0/kkLvchOj41Rm0890MOC1tT3nFU8SjAhogvMV2/AGYHhTNkDrG
 /h4P8I+g==;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgK0Q-0002Y3-J0; Thu, 27 Jun 2019 02:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561601961; x=1593137961;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=Tfwp7gFaZ6qND8kZaF7KWkT1wyf1zxCP1c9dIpITNvc=;
 b=ofXrSGA2cDs/mrb95EkpIHTAM+W/LKW7hY9jflaM7FcXIHPBWRJDmAU0
 UUvKV/yL5bfda4KYYeNjFDidFfYR/coEb66G+pG7c/NMZScOw6PiA6sti
 POhmdJwVzzcfyzP4w9UhYRxYH+Wl+1LNTZDpADvjNx1B9JEKmAGEINJ/G
 L0Vko7FzkyuwoJNzSF7FVc+bw2BGnFp+kRkVk/NPcXv3sBef0zaJD0WJW
 oEGbBBNcEEMJxyLPFZDkYpogL9+dUL7eOtOSln+yrmfbMfyShvBywqiHB
 dm3T8Y3nWHbFQGHk/0817AKqQmEF4a4htGg888W3XwDYqJuztkUW7pCX/ w==;
X-IronPort-AV: E=Sophos;i="5.63,422,1557158400"; d="scan'208";a="211454252"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Jun 2019 10:20:09 +0800
IronPort-SDR: 1+Ew/4+sXLSS51N8u7BooKieY4X+jkbs409ph5WvfkvTPe4kykDlpI+3N64Kq8xcaY1YybRQsu
 DO52WUbpv/b5kCU4mrA52KzsKVnjyGXRqsKNBVO9+42/jYutlIjqvTHl0OMQ+rX/Hidstw3D2v
 kX1xYyJ+5Mhhyrbwmou4v3eAsoTek9buCiCWuzrQJ3w9phW0ytNt8U5/v9LSEOJyNveIbPSTkh
 bb9kceiPuH9bbSOuKnZ6+uuF4kuTlr1JVKJPccsQAFRLH9QKIs4fAPVAXll5GOUd8qIwIJt7tR
 VfXxAs2bnojDKsG0Vz92gaFL
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 26 Jun 2019 19:17:52 -0700
IronPort-SDR: ciLexNHCv6HL8MZuckFUeBuAAqxAHwDwL0T3akazDuuvQlT+UmUai8SZlQcgLlMo31DzQYCy9C
 hUmWFABApl4vhwrHwwwNgApIeFL7zgMAQsNfesmsMzYlcHY/bExk7+MCe6LFtwJP5mf9NcCS5I
 yosY85vqe7YCnHakfyQMwyQjzZEz/2iJf1D2qk2ScLEpepDs50z5eYX5Yas7bf4/E5rwInY8df
 VA2fHixn7pD+aJT3u6PzOm755RWHxstUQ+JkAIqkjoIGczFDwhyJa85Jy2zwmAziFv0/Njm1rR
 +rY=
Received: from usa005100.ad.shared (HELO [10.225.99.96]) ([10.225.99.96])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Jun 2019 19:18:37 -0700
Subject: Re: [PATCH v7 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20190617185920.29581-1-atish.patra@wdc.com>
 <20190617185920.29581-2-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1906261724000.23534@viisi.sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <873a80f0-e704-dd7e-4db9-b159b23847fc@wdc.com>
Date: Wed, 26 Jun 2019 19:18:36 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1906261724000.23534@viisi.sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_031922_970578_DF0047A9 
X-CRM114-Status: GOOD (  23.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
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
 Will Deacon <will.deacon@arm.com>, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Rob Herring <robh@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Otto Sabart <ottosabart@seberm.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/26/19 5:31 PM, Paul Walmsley wrote:
> Hi Sudeep, Atish,
> 
> On Mon, 17 Jun 2019, Atish Patra wrote:
> 
>> From: Sudeep Holla <sudeep.holla@arm.com>
>>
>> The current ARM DT topology description provides the operating system
>> with a topological view of the system that is based on leaf nodes
>> representing either cores or threads (in an SMT system) and a
>> hierarchical set of cluster nodes that creates a hierarchical topology
>> view of how those cores and threads are grouped.
>>
>> However this hierarchical representation of clusters does not allow to
>> describe what topology level actually represents the physical package or
>> the socket boundary, which is a key piece of information to be used by
>> an operating system to optimize resource allocation and scheduling.
>>
>> Lets add a new "socket" node type in the cpu-map node to describe the
>> same.
>>
>> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> This one doesn't apply cleanly here on top of v5.2-rc2, Linus's master
> branch, and next-20190626.  The reject file is below.  Am I missing
> a patch?
> 

That's weird. I could apply the patch from any git tree (github or 
git.kernel.org) but not from mail or patchworks.

git log doesn't show any recent modifications of that file. I am trying 
to figure out what's wrong.
> 
> - Paul
> 
> --- Documentation/devicetree/bindings/arm/topology.txt
> +++ Documentation/devicetree/bindings/arm/topology.txt
> @@ -185,13 +206,15 @@ Bindings for cluster/cpu/thread nodes are defined as follows:
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
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
