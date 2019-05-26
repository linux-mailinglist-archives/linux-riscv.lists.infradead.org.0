Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEEF2AA9E
	for <lists+linux-riscv@lfdr.de>; Sun, 26 May 2019 18:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8rxLD0G+VtrG4meun6+cISFLWdR/f4uvBBPVcsAx7Vk=; b=UbNpesxPKATmcyLSAKx5bppGo
	Am8lWc8bcAL4BxOgK/wqiVSAwlLdvD/aQPwVCTuJGSVaXVLVAFs+wsZ+08Ny5gFa+ZJlPdIOtHlDN
	q6ONnY2YgavHkSnTHEsDUaxU5kzhTclDoRQkclReQXyJFGSTcPmBAebAhS++zCh3nMGp2c9qChss/
	CVJKtf48KDV86TYOsUVjO7ufIXh9xf4oTPjpprGaE5Qf0gUc8KyZAoC0i91zDLQNfql+A8IDfrdBU
	C1XYh56JFnv2XoVIvltjoKTbBsq5ffemablffAZal19G3Bz/aZd9fTyGpEAPBXuwNLkArip0v6uwD
	ZAsNLbb4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUvi2-0003Ic-87; Sun, 26 May 2019 16:09:18 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUvhs-0003BU-17; Sun, 26 May 2019 16:09:09 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E836A240005;
 Sun, 26 May 2019 16:08:48 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
To: Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH REBASE v2 1/2] x86, arm64: Move ARCH_WANT_HUGE_PMD_SHARE
 config in arch/Kconfig
References: <20190526125038.8419-1-alex@ghiti.fr>
 <20190526125038.8419-2-alex@ghiti.fr> <20190526144230.GA13220@gmail.com>
Message-ID: <2c1c9ad4-257a-faba-7ae0-0eb2dd0d09b3@ghiti.fr>
Date: Sun, 26 May 2019 12:08:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190526144230.GA13220@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_090908_222837_428EEDB2 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On 5/26/19 10:42 AM, Ingo Molnar wrote:
> * Alexandre Ghiti <alex@ghiti.fr> wrote:
>
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
>>   
>>   config ARCH_HAS_CACHE_LINE_SIZE
>>   	def_bool y
>> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
>> index 2bbbd4d1ba31..fa021ec38803 100644
>> --- a/arch/x86/Kconfig
>> +++ b/arch/x86/Kconfig
>> @@ -93,6 +93,7 @@ config X86
>>   	select ARCH_USE_QUEUED_SPINLOCKS
>>   	select ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
>>   	select ARCH_WANTS_DYNAMIC_TASK_STRUCT
>> +	select ARCH_WANT_HUGE_PMD_SHARE
>>   	select ARCH_WANTS_THP_SWAP		if X86_64
>>   	select BUILDTIME_EXTABLE_SORT
>>   	select CLKEVT_I8253
>> @@ -301,9 +302,6 @@ config ARCH_HIBERNATION_POSSIBLE
>>   config ARCH_SUSPEND_POSSIBLE
>>   	def_bool y
>>   
>> -config ARCH_WANT_HUGE_PMD_SHARE
>> -	def_bool y
>> -
>>   config ARCH_WANT_GENERAL_HUGETLB
>>   	def_bool y
> Acked-by: Ingo Molnar <mingo@kernel.org>

Thanks !

Alex

>
> Thanks,
>
> 	Ingo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
