Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E107F1B53FC
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 07:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQOse9hB0t+K70/jnTnd98X5m9YT3pNtskCYHmrUrF8=; b=j2xub+apygJKHf
	lu9grjJRibJbsx0OEyd9ZOEZ0IF8krFyZVMnytLtKBZxwJKhU3oFiRrS9p2mcRTdz5PSQ01x7P/Q0
	iwC469jJq86NIRhQoLJbkfEcwNNGBt9Edf9t3I/i3gfGw+ts+7LB4MyvLa5MTM77LJpLZSeGpirWo
	ZwwJJG3613A2QQeg5PTGx7gr/iGvXN9jwyoYowmaxX2tIXrB6JQxVo07XJ8TdtdUgBpuXBQ59g7/R
	OIIn5AtdaVV1j5FCLbeV345LknYpSPoqWp9SgQ18itCsHIBbq/9BAk1ZV7tNv8qXbn+bFJkMltP5E
	gXYp6Hhfu6r9X4WVWhTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRU8w-0004Wc-E8; Thu, 23 Apr 2020 05:11:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRU8l-0004Pc-T9; Thu, 23 Apr 2020 05:11:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42B421FB;
 Wed, 22 Apr 2020 22:11:07 -0700 (PDT)
Received: from [10.163.1.9] (unknown [10.163.1.9])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60FD33F6CF;
 Wed, 22 Apr 2020 22:10:56 -0700 (PDT)
Subject: Re: [PATCH V3 0/3] arm64: Enable vmemmap mapping from device memory
To: linux-mm@kvack.org
References: <1585631387-18819-1-git-send-email-anshuman.khandual@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <ff29a6a3-a75d-878d-75a0-2c458be429f4@arm.com>
Date: Thu, 23 Apr 2020 10:40:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1585631387-18819-1-git-send-email-anshuman.khandual@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_221111_978520_DEE065ED 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@samba.org>,
 linux-ia64@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, jgg@mellanox.com, aneesh.kumar@linux.ibm.com,
 x86@kernel.org, "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, rcampbell@nvidia.com,
 Pavel Tatashin <pasha.tatashin@soleen.com>, jglisse@redhat.com,
 Andy Lutomirski <luto@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, robin.murphy@arm.com,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 03/31/2020 10:39 AM, Anshuman Khandual wrote:
> This series enables vmemmap backing memory allocation from device memory
> ranges on arm64. But before that, it enables vmemmap_populate_basepages()
> and vmemmap_alloc_block_buf() to accommodate struct vmem_altmap based
> alocation requests.
> 
> This series applies after latest (v14) arm64 memory hot remove series
> (https://lkml.org/lkml/2020/3/3/1746) on Linux 5.6.
> 
> Pending Question:
> 
> altmap_alloc_block_buf() does not have any other remaining users in the
> tree after this change. Should it be converted into a static function and
> it's declaration be dropped from the header (include/linux/mm.h). Avoided
> doing so because I was not sure if there are any off-tree users or not.
> 
> Changes in V3:
> 
> - Dropped comment from free_hotplug_page_range() per Robin
> - Modified comment in unmap_hotplug_range() per Robin
> - Enabled altmap support in vmemmap_alloc_block_buf() per Robin

Just a gentle ping. Any updates on this series ? In particular, is there
any comments or suggestions or concerns with respect to the first two
patches here that change the core MM and relevant call sites on some
platforms. Thank you.

- Anshuman

