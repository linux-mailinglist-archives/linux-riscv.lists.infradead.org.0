Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E585F2EA
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jul 2019 08:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tviUo9cRSM9nh6DuX51I1aLeHoP0agiPtuXydI30Sx0=; b=scxNQBxqVLZ+cSJsAwVupXsz4
	p1PM6MRFrrQrx3WKcY4KpVnNNC7eN6XVhfV9/vNsQJYnOSoQHz4UcXAPtjVQrppa6sgc+tcgbXLVx
	lO6uI46afM4BBcQSac7nzRegXQwtY4I3l2oXLAk85nli3rkS5Zox097VoaKUBm9Hadi+Kn/Y2Q542
	7McVs3gql4H8LA+vAnGGe0IkBC1S8oII26/qSarnXDzNVBUHUVx4bT9ZXxbR517SK337g5XVwZ/s3
	3mVKxvnE9trzyY2Srph80tM85IrUVrVyggi5rLvPhJurES6KnaIEezfmMQgkYOr/zl4atoQgaVDtQ
	/CgJf1NSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hivK8-0007O1-AY; Thu, 04 Jul 2019 06:34:28 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivJm-0007D2-76; Thu, 04 Jul 2019 06:34:08 +0000
X-Originating-IP: 81.250.144.103
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 0B08460004;
 Thu,  4 Jul 2019 06:33:44 +0000 (UTC)
Subject: Re: [PATCH v3 0/2] Hugetlbfs support for riscv
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190701175900.4034-1-alex@ghiti.fr>
 <alpine.DEB.2.21.9999.1907031344330.10620@viisi.sifive.com>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <c06441fd-0022-8fb9-36b0-2f5d956c3ed5@ghiti.fr>
Date: Thu, 4 Jul 2019 08:33:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1907031344330.10620@viisi.sifive.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_233406_574997_B5E87511 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On 7/4/19 12:57 AM, Paul Walmsley wrote:
> Hi Alex,
>
> Thanks for writing and testing these patches, and thanks for your patience
> waiting for reviews and testing.


No problem :)


> On Mon, 1 Jul 2019, Alexandre Ghiti wrote:
>
>> This series introduces hugetlbfs support for both riscv 32/64. Riscv32
>> is architecturally limited to huge pages of size 4MB whereas riscv64 has
>> 2MB/1G huge pages support. Transparent huge page support is not
>> implemented here, I will submit another series later.
>>                                                                                   
> [ ... ]
>
>> This series was validated using libhugetlbfs testsuite ported to riscv64
>> without linker script support.
>> (https://github.com/AlexGhiti/libhugetlbfs.git, branch dev/alex/riscv).
>>                                                                                   
>> - libhugetlbfs testsuite on riscv64/2M:
>>    - brk_near_huge triggers an assert in malloc.c, does not on x86.
> I was able to reproduce the 2MB megapages test results on rv64 QEMU.  On a
> HiFive Unleashed, though, a few more tests fail:
>
> - icache_hygiene fails ("icache unclean")
>
>    # LD_LIBRARY_PATH=obj64 ./tests/obj64/icache-hygiene
>    Starting testcase "./tests/obj64/icache-hygiene", pid 732
>    SIGILL at 0x15559fff80 (sig_expected=0x15559fff80)
>    SIGILL at 0x1555dfff80 (sig_expected=0x1555dfff80)
>    SIGILL at 0x15561fff80 (sig_expected=0x15561fff80)
>    SIGILL at 0x15565fff80 (sig_expected=0x15565fff80)
>    SIGILL at 0x15569fff80 (sig_expected=0x15569fff80)
>    SIGILL at 0x1556dfff80 (sig_expected=(nil))
>    FAIL   SIGILL somewhere unexpected
>    #
>
> - One of the heapshrink tests fails ("Heap did not shrink")
>
>    # LD_PRELOAD="obj64/libhugetlbfs_privutils.so obj64/libhugetlbfs.so tests/obj64/libheapshrink.so" HUGETLB_MORECORE_SHRINK=yes HUGETLB_MORECORE=yes tests/obj64/heapshrink
>    Starting testcase "tests/obj64/heapshrink", pid 753
>    FAIL    Heap did not shrink
>    #
>
> Some of these may be related to the top-down mmap work, but there might be
> more work to do on actual hardware.


I don't think this is related to top-down mmap layout, this test only 
mmaps a huge page.
It might be interesting to see more verbose messages adding 
HUGETLB_VERBOSE=99
when launching the test.


>
>> - libhugetlbfs testsuite on riscv64/1G:
>>    - brk_near_huge triggers an assert in malloc.c, does not on x86.
>>    - mmap-gettest, mmap-cow: testsuite passes the number of default free
>>      pages as parameters and then fails for 1G which is not the default.
>>      Otherwise succeeds when given the right number of pages.
>>    - map_high_truncate_2 fails on x86 too: 0x60000000 is not 1G aligned
>>      and fails at line 694 of fs/hugetlbfs/inode.c.
>>    - heapshrink on 1G fails on x86 too, not investigated.
>>    - counters.sh on 1G fails on x86 too: alloc_surplus_huge_page returns
>>      NULL in case of gigantic pages.
>>    - icache-hygiene succeeds after patch #3 of this series which lowers
>>      the base address of mmap.
>>    - fallocate_stress.sh on 1G never ends, on x86 too, not investigated.
> I can reproduce some of these here on QEMU.  But for reasons that are
> unclear to me, 1G gigapages aren't working on the HiFive Unleashed here.
>
> In any case, these patches are clearly a good start, so I've queued
> them for v5.3.
>
>
> - Paul
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
