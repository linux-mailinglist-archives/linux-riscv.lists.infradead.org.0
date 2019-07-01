Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCEF5B445
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jul 2019 07:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+06MzjQHodt4W2hlQU8sOzXQdTMr5O9cyt1QLFAj8Mg=; b=jt0pZucjUhp2VhIWkQkjdaJ2J
	xOszD+Jn2k0QI/Txut8euNmxN4OjHN/yzz/kVsx6H/FtTgFZ56SpdxiGjsT7H3GLkeSwLp8xmau44
	+fJT4YAiRV1miw7ZnlWPKEXKWxfig7pLUHnmIUB13eZdspFuI6RB9jbEMhwabSbql71tkaFjzlTkC
	0BLVNE+JadIcS1DYfOjAE6paitbvqFGi9BxQiVnBs1yN64mWMKp6vo1GY0QYT2k+31Z0L91u97t1M
	m9s762NpW8tbszxYza+72AcgdFz7ZhB6Kn/f9v0eWVncWe9yct4c75pgQBkOUXc1EwhVpDOwv2iyK
	fuW0FLrdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhp18-0004cx-M2; Mon, 01 Jul 2019 05:38:18 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhp0b-0004PK-OK; Mon, 01 Jul 2019 05:37:47 +0000
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 6C772100005;
 Mon,  1 Jul 2019 05:37:27 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH REBASE v2 1/2] x86, arm64: Move ARCH_WANT_HUGE_PMD_SHARE
 config in arch/Kconfig
References: <20190526125038.8419-1-alex@ghiti.fr>
 <20190526125038.8419-2-alex@ghiti.fr>
 <7bfe451b-3f6b-2a26-5d43-692dde891cc0@huawei.com>
Message-ID: <7298dc73-a0c6-54ae-b4bd-0c0a9f76f9d4@ghiti.fr>
Date: Mon, 1 Jul 2019 01:37:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <7bfe451b-3f6b-2a26-5d43-692dde891cc0@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_223745_945098_26D44960 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
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

On 6/30/19 9:58 PM, Hanjun Guo wrote:
> On 2019/5/26 20:50, Alexandre Ghiti wrote:
>> ARCH_WANT_HUGE_PMD_SHARE config was declared in both architectures:
>> move this declaration in arch/Kconfig and make those architectures
>> select it.
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
>> ---
>>   arch/Kconfig       | 3 +++
>>   arch/arm64/Kconfig | 2 +-
>>   arch/x86/Kconfig   | 4 +---
>>   3 files changed, 5 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/Kconfig b/arch/Kconfig
>> index c47b328eada0..d2f212dc8e72 100644
>> --- a/arch/Kconfig
>> +++ b/arch/Kconfig
>> @@ -577,6 +577,9 @@ config HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
>>   config HAVE_ARCH_HUGE_VMAP
>>   	bool
>>   
>> +config ARCH_WANT_HUGE_PMD_SHARE
>> +	bool
>> +
>>   config HAVE_ARCH_SOFT_DIRTY
>>   	bool
>>   
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 4780eb7af842..dee7f750c42f 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -70,6 +70,7 @@ config ARM64
>>   	select ARCH_SUPPORTS_NUMA_BALANCING
>>   	select ARCH_WANT_COMPAT_IPC_PARSE_VERSION
>>   	select ARCH_WANT_FRAME_POINTERS
>> +	select ARCH_WANT_HUGE_PMD_SHARE if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
>>   	select ARCH_HAS_UBSAN_SANITIZE_ALL
>>   	select ARM_AMBA
>>   	select ARM_ARCH_TIMER
>> @@ -884,7 +885,6 @@ config SYS_SUPPORTS_HUGETLBFS
>>   	def_bool y
>>   
>>   config ARCH_WANT_HUGE_PMD_SHARE
>> -	def_bool y if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
> Why not remove config ARCH_WANT_HUGE_PMD_SHARE as well?
> Did I miss something?

You're totally right ! Thanks for noticing,

Alex

> Thanks
> Hanjun
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
