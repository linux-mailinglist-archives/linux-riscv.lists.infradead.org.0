Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9C55D313
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jul 2019 17:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1uSflCrAQwcgaZESSC1VnArcBsOO9f5wfRsHnA5rTiA=; b=T+CsXGMZVrSLX0Vy8qH0fVP9m
	9miHojjnGz69QZyAnwmmseh98GLHBrb15cL++uWFHsSxvHguWFKoFzE3EH7y/0RrlbHGE5/v8LU+B
	8b7s6FiKVdCU6CqdCk7BAPlXOCb+0tET3JOp9O4r2Fe/4cODCXJvopnbAynpP0OwVr9oNJQsLAtmW
	6jznCVhV1PppspxdSzpN/88li1d5TdOtYCNW3iV3k+t2RaSBjIkLmfKBO6a6LNolq5MiSaEFscj6n
	tdsUnfOiE6ldayzcyMA6UKfliQN8fWMjgCE2hA72Ywsd6lbOxhm6UhumigbULPAxuvZrkEInHhHf3
	iZ8JwG9cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKsd-0005ID-QF; Tue, 02 Jul 2019 15:39:39 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKsM-00057Y-Uk; Tue, 02 Jul 2019 15:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VbbwCKNVbaDazA/C9AKG/uIDeWLXTnnfF8JqIharbxQ=; b=ZrGA6PULp5aL9OjvglOCAWQPC8
 Fni1QzE7PCyWceOgWPIJB/o+6ZTlAnnpPxCCHUo+Zr0s7mDP1R21Wi1T9gDDPXuIUQwLEgw5yAGQi
 FzBzpDrCoCfxxcRjxkVdIDywuXsDdpgnMghA5ardeAeGcopqh1nB/a7fWWOzUPKTwvmMf1vIgEwbX
 Pu7Cs9WegYY2FJrLdy3g105bdZziyPpJzbjxSa5QWCSXEZStuI87akVcBoKqTvF6HoBU4c/Dkkrgp
 y+6UzWzjqhcDRvUmEn49/GEqqn0YYIIOY1cCUVzyN4fcq3rJsObJkxBtLIbhAsPyiHGQvupOSHJZ5
 ecBTbhNg==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKsI-0007m4-9Q; Tue, 02 Jul 2019 15:39:20 +0000
X-Originating-IP: 81.250.144.103
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 57833E0005;
 Tue,  2 Jul 2019 15:38:32 +0000 (UTC)
Subject: Re: [PATCH v3 1/2] x86, arm64: Move ARCH_WANT_HUGE_PMD_SHARE config
 in arch/Kconfig
To: Hanjun Guo <guohanjun@huawei.com>, Christoph Hellwig <hch@infradead.org>, 
 Mike Kravetz <mike.kravetz@oracle.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-riscv@lists.infradead.org
References: <20190701175900.4034-1-alex@ghiti.fr>
 <20190701175900.4034-2-alex@ghiti.fr>
 <18144cc2-f552-b2cc-c41a-47c754de2b0d@huawei.com>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <62390cef-2417-3b6d-970d-bddecc4ac005@ghiti.fr>
Date: Tue, 2 Jul 2019 17:38:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <18144cc2-f552-b2cc-c41a-47c754de2b0d@huawei.com>
Content-Language: fr
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 7/2/19 3:27 AM, Hanjun Guo wrote:
> On 2019/7/2 1:58, Alexandre Ghiti wrote:
>> ARCH_WANT_HUGE_PMD_SHARE config was declared in both architectures:
>> move this declaration in arch/Kconfig and make those architectures
>> select it.
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>> ---
>>   arch/Kconfig       | 3 +++
>>   arch/arm64/Kconfig | 4 +---
>>   arch/x86/Kconfig   | 4 +---
>>   3 files changed, 5 insertions(+), 6 deletions(-)
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
>> index 697ea0510729..c862575decd3 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -71,6 +71,7 @@ config ARM64
>>   	select ARCH_SUPPORTS_NUMA_BALANCING
>>   	select ARCH_WANT_COMPAT_IPC_PARSE_VERSION if COMPAT
>>   	select ARCH_WANT_FRAME_POINTERS
>> +	select ARCH_WANT_HUGE_PMD_SHARE if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
>>   	select ARCH_HAS_UBSAN_SANITIZE_ALL
>>   	select ARM_AMBA
>>   	select ARM_ARCH_TIMER
>> @@ -901,9 +902,6 @@ config HW_PERF_EVENTS
>>   config SYS_SUPPORTS_HUGETLBFS
>>   	def_bool y
>>   
>> -config ARCH_WANT_HUGE_PMD_SHARE
>> -	def_bool y if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
>> -
> Reviewed-by: Hanjun Guo <guohanjun@huawei.com>


Thanks for catching the previous mistake again and thanks for that,

Alex


>
> Thanks
> Hanjun
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
