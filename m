Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29EE191F7C
	for <lists+linux-riscv@lfdr.de>; Wed, 25 Mar 2020 03:59:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEo4kIh+b9n9aigulsQ/uh/LmvPOPG1TWQ5TR7NDDBU=; b=bYl94IyNuD8AQe
	xfrHeBAVEt9aoOwXJ47uZngEBKOt5s0DOjpzYgBKAulx60ozHTXf6tlQ4TRyXDa5SKkPcW1HOI0YR
	c/JNFosA9G0ymDj/ijFv3tWS6xnCyjNNd4P61nYdF5pn9nCpHkLn7qdEt0OEtouR+JK6jRzrdRtOM
	ttQC/Mqg/9NivoSwypGFscfRCPX0gf1JbyVYt27Zvg4r+iStkgKUQnBELUPoMrcp3a5djQb66FwJI
	AA9JCCO0o9zLC/l5k9UJHlAGAwk2Z4m94EdlmykhpitBaeV69u+jznNPDyF1Lr4juhGQHIAGDhCB0
	ndI+I51Wscj/OsW/944g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGwG5-0007EZ-SW; Wed, 25 Mar 2020 02:59:09 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGwFr-00074k-Nq; Wed, 25 Mar 2020 02:58:57 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2FC8EC61B4371320B3C4;
 Wed, 25 Mar 2020 10:58:52 +0800 (CST)
Received: from [10.173.228.124] (10.173.228.124) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 25 Mar
 2020 10:58:47 +0800
Subject: Re: [PATCH 1/4] hugetlbfs: add arch_hugetlb_valid_size
To: Mike Kravetz <mike.kravetz@oracle.com>, Dave Hansen
 <dave.hansen@intel.com>, <linux-mm@kvack.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linuxppc-dev@lists.ozlabs.org>, <linux-riscv@lists.infradead.org>,
 <linux-s390@vger.kernel.org>, <sparclinux@vger.kernel.org>,
 <linux-doc@vger.kernel.org>
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-2-mike.kravetz@oracle.com>
 <831a0773-1ba6-4d72-44b9-7472123b8528@intel.com>
 <5aceea6a-8dc0-a44b-80c6-94511b5c75ca@oracle.com>
From: "Longpeng (Mike, Cloud Infrastructure Service Product Dept.)"
 <longpeng2@huawei.com>
Message-ID: <5ea6313e-ec4f-a043-632b-ef2901ce2cc9@huawei.com>
Date: Wed, 25 Mar 2020 10:58:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5aceea6a-8dc0-a44b-80c6-94511b5c75ca@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.173.228.124]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_195855_947760_75767271 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Andrew Morton <akpm@linux-foundation.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Mackerras <paulus@samba.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, "David S.Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2020/3/19 6:52, Mike Kravetz wrote:
> On 3/18/20 3:15 PM, Dave Hansen wrote:
>> Hi Mike,
>>
>> The series looks like a great idea to me.  One nit on the x86 bits,
>> though...
>>
>>> diff --git a/arch/x86/mm/hugetlbpage.c b/arch/x86/mm/hugetlbpage.c
>>> index 5bfd5aef5378..51e6208fdeec 100644
>>> --- a/arch/x86/mm/hugetlbpage.c
>>> +++ b/arch/x86/mm/hugetlbpage.c
>>> @@ -181,16 +181,25 @@ hugetlb_get_unmapped_area(struct file *file, unsigned long addr,
>>>  #endif /* CONFIG_HUGETLB_PAGE */
>>>  
>>>  #ifdef CONFIG_X86_64
>>> +bool __init arch_hugetlb_valid_size(unsigned long long size)
>>> +{
>>> +	if (size == PMD_SIZE)
>>> +		return true;
>>> +	else if (size == PUD_SIZE && boot_cpu_has(X86_FEATURE_GBPAGES))
>>> +		return true;
>>> +	else
>>> +		return false;
>>> +}
>>
>> I'm pretty sure it's possible to have a system without 2M/PMD page
>> support.  We even have a handy-dandy comment about it in
>> arch/x86/include/asm/required-features.h:
>>
>> 	#ifdef CONFIG_X86_64
>> 	#ifdef CONFIG_PARAVIRT
>> 	/* Paravirtualized systems may not have PSE or PGE available */
>> 	#define NEED_PSE        0
>> 	...
>>
>> I *think* you need an X86_FEATURE_PSE check here to be totally correct.
>>
>> 	if (size == PMD_SIZE && cpu_feature_enabled(X86_FEATURE_PSE))
>> 		return true;
>>
>> BTW, I prefer cpu_feature_enabled() to boot_cpu_has() because it
>> includes disabled-features checking.  I don't think any of it matters
>> for these specific features, but I generally prefer it on principle.
> 
> Sounds good.  I'll incorporate those changes into a v2, unless someone
> else with has a different opinion.
> 
> BTW, this patch should not really change the way the code works today.
> It is mostly a movement of code.  Unless I am missing something, the
> existing code will always allow setup of PMD_SIZE hugetlb pages.
> 
Hi Mike,

Inspired by Dave's opinion, it seems the x86-specific hugepages_supported should
also need to use cpu_feature_enabled instead.

Also, I wonder if the hugepages_supported is correct ? There're two arch
specific hugepages_supported:
x86:
#define hugepages_supported() boot_cpu_has(X86_FEATURE_PSE)
and
s390:
#define hugepages_supported() (MACHINE_HAS_EDAT1)

Is it possible that x86 has X86_FEATURE_GBPAGES but hasn't X86_FEATURE_GBPAGES
or s390 has MACHINE_HAS_EDAT2 but hasn't MACHINE_HAS_EDAT1 ?

---
Regards,
Longpeng(Mike)

