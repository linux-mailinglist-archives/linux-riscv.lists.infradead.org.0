Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC30F6156A
	for <lists+linux-riscv@lfdr.de>; Sun,  7 Jul 2019 17:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2cz86N9STC1V++YmLPWhehhMdXP1C8JAqnftlbILxsE=; b=uUHGctpi81QrKKMM4A0M4uSXY
	5jiVb6n5E5C3VNxyc5i5Kbb+0a5+zPnS0383b2AMviVL0eRfLTTlnUteAldBvAbRMnkLamhkhQPgw
	d7K3+PtQBvpBL9O6PjpdR+adr3uJSpDmju/lwoJ2N4veogTfvTUxBMh5K6dYqkV0BduJ0KvW69XRt
	T7O9JkkNIQzqxHdhPmiKzw8VDPUpSjrZqPVSUXeDS5KolWh/xZPtIrX5p+wpBXtpoOZVFSWjJqcGZ
	l0UihRRUrAnFKmAjZOPlWL+BYfXVLF/VzTbVVVeN1DYITVnL0jV8Zsz7Wo+IrR2RFAstzxeQcXcFh
	POHnyyttQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk8sv-0008E6-F7; Sun, 07 Jul 2019 15:15:25 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk8sN-0006nM-3Z; Sun, 07 Jul 2019 15:14:53 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E391BC0002;
 Sun,  7 Jul 2019 15:14:22 +0000 (UTC)
Subject: Re: [PATCH v3 0/2] Hugetlbfs support for riscv
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190701175900.4034-1-alex@ghiti.fr>
 <alpine.DEB.2.21.9999.1907031344330.10620@viisi.sifive.com>
 <c06441fd-0022-8fb9-36b0-2f5d956c3ed5@ghiti.fr>
 <alpine.DEB.2.21.9999.1907040429170.24872@viisi.sifive.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <040f378d-e483-fa3a-28f4-fdb1bb62591d@ghiti.fr>
Date: Sun, 7 Jul 2019 11:14:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1907040429170.24872@viisi.sifive.com>
Content-Language: sv-FI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_081451_476687_09BCEF91 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: Hanjun Guo <guohanjun@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 7/4/19 7:35 AM, Paul Walmsley wrote:
> On Thu, 4 Jul 2019, Alexandre Ghiti wrote:
>
>> On 7/4/19 12:57 AM, Paul Walmsley wrote:
>>> On Mon, 1 Jul 2019, Alexandre Ghiti wrote:
>>>
>>>> - libhugetlbfs testsuite on riscv64/2M:
>>>>     - brk_near_huge triggers an assert in malloc.c, does not on x86.
>>> I was able to reproduce the 2MB megapages test results on rv64 QEMU.  On a
>>> HiFive Unleashed, though, a few more tests fail:
> [ ... ]
>
>>> - One of the heapshrink tests fails ("Heap did not shrink")
>>>
>>>     # LD_PRELOAD="obj64/libhugetlbfs_privutils.so obj64/libhugetlbfs.so
>>> tests/obj64/libheapshrink.so" HUGETLB_MORECORE_SHRINK=yes
>>> HUGETLB_MORECORE=yes tests/obj64/heapshrink
>>>     Starting testcase "tests/obj64/heapshrink", pid 753
>>>     FAIL    Heap did not shrink
>>>     #
>>>
>>> Some of these may be related to the top-down mmap work, but there might be
>>> more work to do on actual hardware.
>>
>> I don't think this is related to top-down mmap layout, this test only
>> mmaps a huge page. It might be interesting to see more verbose messages
>> adding HUGETLB_VERBOSE=99 when launching the test.
> Here is the HUGETLB_VERBOSE=99 output from the above heapshrink test on an
> FU540:
>
> libhugetlbfs [(none):86]: INFO: Found pagesize 2048 kB
> libhugetlbfs [(none):86]: INFO: Parsed kernel version: [5] . [2] . [0]  [pre-release: 6]
> libhugetlbfs [(none):86]: INFO: Feature private_reservations is present in this kernel
> libhugetlbfs [(none):86]: INFO: Feature noreserve_safe is present in this kernel
> libhugetlbfs [(none):86]: INFO: Feature map_hugetlb is present in this kernel
> libhugetlbfs [(none):86]: INFO: Kernel has MAP_PRIVATE reservations.  Disabling heap prefaulting.
> libhugetlbfs [(none):86]: INFO: Kernel supports MAP_HUGETLB
> libhugetlbfs [(none):86]: INFO: HUGETLB_SHARE=0, sharing disabled
> libhugetlbfs [(none):86]: INFO: HUGETLB_NO_RESERVE=no, reservations enabled
> libhugetlbfs [(none):86]: INFO: No segments were appropriate for remapping
> libhugetlbfs [(none):86]: INFO: setup_morecore(): heapaddr = 0x2aaac00000
> libhugetlbfs [(none):86]: INFO: hugetlbfs_morecore(1052672) = ...
> libhugetlbfs [(none):86]: INFO: heapbase = 0x2aaac00000, heaptop = 0x2aaac00000, mapsize = 0, delta=1052672
> libhugetlbfs [(none):86]: INFO: Attempting to map 2097152 bytes
> libhugetlbfs [(none):86]: INFO: ... = 0x2aaac00000
> libhugetlbfs [(none):86]: INFO: hugetlbfs_morecore(0) = ...
> libhugetlbfs [(none):86]: INFO: heapbase = 0x2aaac00000, heaptop = 0x2aaad01000, mapsize = 200000, delta=-1044480
> libhugetlbfs [(none):86]: INFO: ... = 0x2aaad01000
> Starting testcase "tests/obj64/heapshrink", pid 86
> libhugetlbfs [(none):86]: INFO: hugetlbfs_morecore(33558528) = ...
> libhugetlbfs [(none):86]: INFO: heapbase = 0x2aaac00000, heaptop = 0x2aaad01000, mapsize = 200000, delta=32514048
> libhugetlbfs [(none):86]: INFO: Attempting to map 33554432 bytes
> libhugetlbfs [(none):86]: INFO: ... = 0x2aaad01000
> FAIL    Heap did not shrink
>
>
> This is with this hugepage configuration:
>
> # /usr/local/bin/hugeadm --pool-list
>        Size  Minimum  Current  Maximum  Default
>     2097152       64       64       64        *
> #
>

Ok thanks for that, but it does not say much :)

While trying to understand why it may fail on HW, I actually failed to 
reproduce the results on qemu (I did not
check the results for v3 and I recently switched from yocto to buildroot 
so I lost my configuration...).

What configuration do you use to reproduce the results on qemu ?

FYI, while playing around, I noticed that with qemu v4.0.0, 
icache_hygiene stalls whereas with
v3.1.0, it does not but I did not investigate though.

Thanks,

Alex


> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
