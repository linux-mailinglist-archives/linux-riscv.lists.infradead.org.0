Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE88165735
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Feb 2020 06:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7O9RHWTTgwijVNk5ZorBCJAe3cDXWRFaWtkPqp1CSfI=; b=jEqN7029B4/289
	Vz6fn3OM2AWzYtZ9ynw0fYXnUh1x9D3gnd8HjlRTiKV4lbGgu9qtfFWhQnBFnZxtjCAUznBFa+j3L
	BIh2+VSReb5S1UCztJPMhtn8PriCSEWHeuCOkjKbUvDuhopJYdmRse4P/QUQBgftTZp//e45QWDhQ
	VdUPLifgE6IfD05qGelDRFzlhOQbVkpd1wr/wtwbgmdwpPAZ2g/yLYptbtXT7gmJMxXKHog7+3E+p
	CAeRdyljeLlvlw/yHapfuBWAz+Ja1XcenqsHgkDM9sqqBW6WPCZ8GVDHH9QA5wpB32uI2kHMv4dJG
	NRGryKFJ+ft27JfvBVqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4emu-0003W7-RP; Thu, 20 Feb 2020 05:54:16 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4emq-0003VS-Dn
 for linux-riscv@lists.infradead.org; Thu, 20 Feb 2020 05:54:14 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 6B4FF240005;
 Thu, 20 Feb 2020 05:53:58 +0000 (UTC)
Subject: Re: [PATCH 1/2] riscv: avoid the PIC offset of static percpu data in
 module beyond 2G limits
To: Vincent Chen <vincent.chen@sifive.com>
References: <1582097304-5547-1-git-send-email-vincent.chen@sifive.com>
 <1582097304-5547-2-git-send-email-vincent.chen@sifive.com>
 <b58183d5-a7db-3902-100f-8f4f0d06c148@ghiti.fr>
 <CABvJ_xjE_rWiNBP2ugr7R8nOiYhKbJTy6vU9-HkEU__TmKm2sg@mail.gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <1cbd0fe4-65cc-dcdc-3ff1-46f8d3d6fc4c@ghiti.fr>
Date: Thu, 20 Feb 2020 00:53:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CABvJ_xjE_rWiNBP2ugr7R8nOiYhKbJTy6vU9-HkEU__TmKm2sg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_215412_742923_DDE204C5 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>, deanbo422@gmail.com,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Vincent,

On 2/19/20 9:29 PM, Vincent Chen wrote:
> On Thu, Feb 20, 2020 at 1:52 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
>>
>> Hi Vincent,
>>
>> On 2/19/20 8:28 AM, Vincent Chen wrote:
>>> The compiler uses the PIC-relative method to access static variables
>>> instead of GOT when the code model is PIC. Therefore, the limitation of
>>> the access range from the instruction to the symbol address is +-2GB.
>>> Under this circumstance, the kernel cannot load a kernel module if this
>>> module has static per-CPU symbols declared by DEFINE_PER_CPU(). The reason
>>> is that kernel relocates the .data..percpu section of the kernel module to
>>> the end of kernel's .data..percpu. Hence, the distance between the per-CPU
>>> symbols and the instruction will exceed the 2GB limits. To solve this
>>> problem, the kernel should place the loaded module in the memory area
>>> [&_end-2G, VMALLOC_END].
>>>
>>> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
>>> Suggested-by: Alex Ghiti <alex@ghiti.fr>
>>> Suggested-by: Anup Patel <anup@brainfault.org>
>>>
>>> ---
>>>    arch/riscv/kernel/module.c | 18 ++++++++++++++++++
>>>    1 file changed, 18 insertions(+)
>>>
>>> diff --git a/arch/riscv/kernel/module.c b/arch/riscv/kernel/module.c
>>> index b7401858d872..c498beb82369 100644
>>> --- a/arch/riscv/kernel/module.c
>>> +++ b/arch/riscv/kernel/module.c
>>> @@ -8,6 +8,10 @@
>>>    #include <linux/err.h>
>>>    #include <linux/errno.h>
>>>    #include <linux/moduleloader.h>
>>> +#include <linux/vmalloc.h>
>>> +#include <linux/sizes.h>
>>> +#include <asm/pgtable.h>
>>> +#include <asm/sections.h>
>>>
>>>    static int apply_r_riscv_32_rela(struct module *me, u32 *location, Elf_Addr v)
>>>    {
>>> @@ -386,3 +390,17 @@ int apply_relocate_add(Elf_Shdr *sechdrs, const char *strtab,
>>>
>>>        return 0;
>>>    }
>>> +#if defined(CONFIG_MMU) && defined(CONFIG_64BIT)
>>> +#ifdef CONFIG_MAXPHYSMEM_2GB
>>> +#define VMALLOC_MODULE_START \
>>> +     max(PFN_ALIGN((unsigned long)&_end - SZ_2G), VMALLOC_START)
>>> +#else
>>> +#define VMALLOC_MODULE_START PFN_ALIGN((unsigned long)&_end - SZ_2G)
>>> +#endif
>>
>> I would use the same definition for both cases:
>>
>> #define VMALLOC_MODULE_START \
>>          max(PFN_ALIGN((unsigned long)&_end - SZ_2G), VMALLOC_START)
>>
>> as it avoids ifdefs and amounts to the same. And maybe you can avoid the
>> definition of VMALLOC_MODULE_START at the same time.
>>
> Thanks for your comments. I will follow your suggestion to use the
> same definition for both cases. For the definition of
> VMALLOC_MODULE_START, I may prefer to keep it , because I think it may
> be more readable than directly passing the max() function to the
> __vmalloc_node_range(). I am afriad that I misunderstood what you
> meant. If possible, could you give me an example? Thank you.
> 

I meant you could get rid of VMALLOC_MODULE_START definition if there 
was only one, but I don't mind, you can keep it if you prefer.

>>> +void *module_alloc(unsigned long size)
>>> +{
>>> +     return __vmalloc_node_range(size, 1, VMALLOC_MODULE_START,
>>> +     VMALLOC_END, GFP_KERNEL, PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
>>> +     __builtin_return_address(0));
>>> +}
>>> +#endif
>>>
>>
>> It's weird checkpatch does not complain about the alignment of those lines.
>>
> I will modify it.
>> Otherwise, I have just tested it and it works, so you can add:
>>
>> Tested-by: Alexandre Ghiti <alex@ghiti.fr>
>>
>> Thanks,
>>
>> Alex
> 
> Thank you for testing this patch, I will add it.
> 

Thanks again,

Alex

