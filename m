Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 107832FBCA
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 14:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VzdJ0mKl9AhZP1tKlCPDjCHhCuTJMewbX7qV4mcBMEU=; b=aTHcMRJ2HXTFzTJCi3lTio7TA
	9hHB69vp8Bg8Sti6Y/Cjw7RRyLEZWMnW2tcJAjBYT6P+rIuUnqacJUNklVcTmOtewfafeVwD2k0nC
	UUM9fngh7hEjpg543a0U+VTwTxYXglVXxjDdVh8p92ZEdm9p4ebOXr1IvT8gswJk8DNunc8wH4N2H
	sAdQEyFVFjUV8Te433XXw8lbJ+pJ3LhaTLgHz5cU++4YQ75iXqdFIqGzwKMTsQhnJ05/oxKza8fi0
	lQjch6KwGO6hA6Q4WtWdKrhYsr0ALnHF+IV1P15RR2jdf98o8hX5jD5XPIoFmnD8GXnz1ls68rhyg
	Ar0ZoVMrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWKbl-0002IK-Hk; Thu, 30 May 2019 12:56:37 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWKbi-0002Hu-91; Thu, 30 May 2019 12:56:35 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4UCu5DC038584;
 Thu, 30 May 2019 07:56:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559220965;
 bh=yfsOyzA/w0iHAo88Lim+9pYU3sP+lTVSj1gMoRm+IRc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ddAoZJV3O3SjnGH9+ATpox3dT93TWhxKCISRrbGLs9LFAbRLHysUrElN6YWYLT8QE
 d8Q7Fh7/cXQj9fMmUMZWZ+4Uzr2PLcvs60tHreblxsFmBWdfc88CcdNMTAqqPz+ifd
 +udj9djsPUutSwb+jbCQ+7rKnozfTLt8EKp4wIIQ=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4UCu5Kg096915
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 30 May 2019 07:56:05 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 30
 May 2019 07:56:05 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 30 May 2019 07:56:05 -0500
Received: from [10.250.93.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4UCu3Dt070901;
 Thu, 30 May 2019 07:56:03 -0500
Subject: Re: [PATCH v6 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
To: Morten Rasmussen <morten.rasmussen@arm.com>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-2-atish.patra@wdc.com>
 <49f41e62-5354-a674-d95f-5f63851a0ca6@ti.com>
 <20190530115103.GA10919@e105550-lin.cambridge.arm.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <70639181-09d1-4644-f062-b19e06db7471@ti.com>
Date: Thu, 30 May 2019 08:56:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190530115103.GA10919@e105550-lin.cambridge.arm.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_055634_399443_44A3E52D 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Rob Herring <robh@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/30/19 7:51 AM, Morten Rasmussen wrote:
> On Wed, May 29, 2019 at 07:39:17PM -0400, Andrew F. Davis wrote:
>> On 5/29/19 5:13 PM, Atish Patra wrote:
>>> From: Sudeep Holla <sudeep.holla@arm.com>
>>>
>>> The current ARM DT topology description provides the operating system
>>> with a topological view of the system that is based on leaf nodes
>>> representing either cores or threads (in an SMT system) and a
>>> hierarchical set of cluster nodes that creates a hierarchical topology
>>> view of how those cores and threads are grouped.
>>>
>>> However this hierarchical representation of clusters does not allow to
>>> describe what topology level actually represents the physical package or
>>> the socket boundary, which is a key piece of information to be used by
>>> an operating system to optimize resource allocation and scheduling.
>>>
>>
>> Are physical package descriptions really needed? What does "socket" imply
>> that a higher layer "cluster" node grouping does not? It doesn't imply a
>> different NUMA distance and the definition of "socket" is already not well
>> defined, is a dual chiplet processor not just a fancy dual "socket" or are
>> dual "sockets" on a server board "slotket" card, will we need new names for
>> those too..
> 
> Socket (or package) just implies what you suggest, a grouping of CPUs
> based on the physical socket (or package). Some resources might be
> associated with packages and more importantly socket information is
> exposed to user-space. At the moment clusters are being exposed to
> user-space as sockets which is less than ideal for some topologies.
> 

I see the benefit of reporting the physical layout and packaging 
information to user-space for tracking reasons, but from software 
perspective this doesn't matter, and the resource partitioning should be 
described elsewhere (NUMA nodes being the go to example).

> At the moment user-space is only told about hw threads, cores, and
> sockets. In the very near future it is going to be told about dies too
> (look for Len Brown's multi-die patch set).
> 

Seems my hypothetical case is already in the works :(

> I don't see how we can provide correct information to user-space based
> on the current information in DT. I'm not convinced it was a good idea
> to expose this information to user-space to begin with but that is
> another discussion.
> 

Fair enough, it's a little late now to un-expose this info to userspace 
so we should at least present it correctly. My worry was this getting 
out of hand with layering, for instance what happens when we need to add 
die nodes in-between cluster and socket?

Andrew

> Morten
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
