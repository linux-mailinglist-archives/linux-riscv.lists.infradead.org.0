Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BAE1A30B7
	for <lists+linux-riscv@lfdr.de>; Thu,  9 Apr 2020 10:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BImZsM1cTiYSEjFfGdx6tLaq5tHheNvBVlanWbVzuUU=; b=NTw5aoJXIOJepx
	TmqfEQ8KvrHKGlVVt0RU+lHJftZof744aoO/NzNwwkK4rXtrrvpQC660tB2tIjLz28O8NixTAFijq
	q6Y7847gqD8iCf5W7NYasmdelsZ6BXZCuCyYQJzpZnqGV+HeEO9wyHaZXmCr+D2nnw3BvropqP1qf
	oOFrBSmhbp0UZO5XBI3PzyYsuzXQx0HR7SjHRVPp4BtGKjDqPuyQaXRGh+kJGkJDQ/LXD6djUilp+
	d7wKMQKWuBE7xPx2NDTY2TLlZrWRjRdn+IJiDix+dJLQ2oEPNjIt6deGtGg4B/p7idYTqPesFF6Bm
	S8bdZeVFeJVYmafzF02g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMSKV-0002gB-LE; Thu, 09 Apr 2020 08:14:31 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSKS-0002fH-D6
 for linux-riscv@lists.infradead.org; Thu, 09 Apr 2020 08:14:30 +0000
X-Originating-IP: 2.7.45.25
Received: from [192.168.1.101] (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A16CFC000D;
 Thu,  9 Apr 2020 08:14:23 +0000 (UTC)
Subject: Re: [PATCH RFC 6/8] riscv/kaslr: clear the original kernel image
From: Alex Ghiti <alex@ghiti.fr>
To: Zong Li <zong.li@sifive.com>
References: <cover.1584352425.git.zong.li@sifive.com>
 <8373a9d18958b99b72ed9499786dffe45adf9617.1584352425.git.zong.li@sifive.com>
 <772ee8e0-f5ff-cf40-4e84-3f703953cd08@ghiti.fr>
 <CANXhq0p7A2HeyFDRQaw5brzembsFM0-v3kPwQKvFZuyeCm6tsg@mail.gmail.com>
 <9e980cce-2d6a-c854-0a09-886ac525d176@ghiti.fr>
Message-ID: <dc395b45-6300-fcbc-7043-89059af5c70d@ghiti.fr>
Date: Thu, 9 Apr 2020 04:14:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <9e980cce-2d6a-c854-0a09-886ac525d176@ghiti.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_011428_717512_AE9DF9F3 
X-CRM114-Status: GOOD (  24.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 4/9/20 1:53 AM, Alex Ghiti wrote:
> 
> 
> On 4/7/20 7:18 AM, Zong Li wrote:
>> On Tue, Apr 7, 2020 at 1:11 PM Alex Ghiti <alex@ghiti.fr> wrote:
>>>
>>> On 3/24/20 3:30 AM, Zong Li wrote:
>>>> After completing final page table, we can clear original kernel image
>>>> and remove executable permission.
>>>>
>>>> Signed-off-by: Zong Li <zong.li@sifive.com>
>>>> ---
>>>>    arch/riscv/include/asm/kaslr.h | 12 ++++++++++++
>>>>    arch/riscv/kernel/kaslr.c      | 12 ++++++++++++
>>>>    arch/riscv/mm/init.c           |  6 ++++++
>>>>    3 files changed, 30 insertions(+)
>>>>    create mode 100644 arch/riscv/include/asm/kaslr.h
>>>>
>>>> diff --git a/arch/riscv/include/asm/kaslr.h 
>>>> b/arch/riscv/include/asm/kaslr.h
>>>> new file mode 100644
>>>> index 000000000000..b165fe71dd4a
>>>> --- /dev/null
>>>> +++ b/arch/riscv/include/asm/kaslr.h
>>>> @@ -0,0 +1,12 @@
>>>> +/* SPDX-License-Identifier: GPL-2.0-only */
>>>> +/*
>>>> + * Copyright (C) 2020 SiFive
>>>> + * Copyright (C) 2020 Zong Li <zong.li@sifive.com>
>>>> + */
>>>> +
>>>> +#ifndef _ASM_RISCV_KASLR_H
>>>> +#define _ASM_RISCV_KASLR_H
>>>> +
>>>> +void __init kaslr_late_init(void);
>>>> +
>>>> +#endif /* _ASM_RISCV_KASLR_H */
>>>> diff --git a/arch/riscv/kernel/kaslr.c b/arch/riscv/kernel/kaslr.c
>>>> index 59001d6fdfc3..0bd30831c455 100644
>>>> --- a/arch/riscv/kernel/kaslr.c
>>>> +++ b/arch/riscv/kernel/kaslr.c
>>>> @@ -356,6 +356,18 @@ static __init uintptr_t get_random_offset(u64 
>>>> seed, uintptr_t kernel_size)
>>>>        return get_legal_offset(random, kernel_size_align);
>>>>    }
>>>>
>>>> +void __init kaslr_late_init(void)
>>>> +{
>>>> +     uintptr_t kernel_size;
>>>> +
>>>> +     /* Clear original kernel image. */
>>>> +     if (kaslr_offset) {
>>>> +             kernel_size = (uintptr_t) _end - (uintptr_t) _start;
>>>
>>> kernel_size = (uintptr_t) _end - (uintptr_t) _start + 1;
>>
>> OK, change it in the next version. Thanks.
>>
>>>
>>>> +             memset((void *)PAGE_OFFSET, 0, kernel_size);
>>>
>>> I have been thinking again about our discussion regarding PAGE_OFFSET:
>>> PAGE_OFFSET actually points to the address where the kernel was loaded,
>>> not the beginning of memory, that's a bit weird.
>>>
>>> Just saying that here, because it took me a few seconds to remember that
>>> and understand what you were doing here.
>>
>> In non-kaslr case, we load the kernel to PAGE_OFFSET which points to,
>> so we clear the old kernel image through PAGE_OFFSET here. Certainly,
>> we could use a symbol to record the start address of the old kernel
>> image instead of PAGE_OFFSET here. I don't see other architectures
>> changing PAGE_OFFSET after copying the kernel to the new location in
>> kaslr. If you think the PAGE_OFFSET needs to be changed, we need to
>> give another way to make the page table could create the mappings for
>> the whole memory and memblock/buddy system could see the whole memory
>> after the kernel moves.
>>  >>
>>>> +             set_memory_nx(PAGE_OFFSET, kaslr_offset >> PAGE_SHIFT);
>>>
>>> Again, I certainly missed something but when do you use old kernel
>>> mappings ?
>>
>> We use old kernel mappings when KASLR calculates the random offset, at
>> that moment, kernel is running on old kernel location.
> 
> Yes but haven't you already cleared the page table from the mappings for 
> the old kernel in clear_page_tables called in setup_vm of the new kernel ?
> 
> Alex
> 

I had a doubt so I read set_memory_nx implementation again and I was 
indeed completely wrong: set_memory_nx tackles init_mm and then 
swapper_pg_dir. So you just remove executability for the old kernel 
zone, that's ok I think.

Sorry for the noise !

Alex

>>
>>>
>>>> +     }
>>>> +}
>>>> +
>>>>    uintptr_t __init kaslr_early_init(void)
>>>>    {
>>>>        u64 seed;
>>>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
>>>> index 34c6ecf2c599..08e2ce170533 100644
>>>> --- a/arch/riscv/mm/init.c
>>>> +++ b/arch/riscv/mm/init.c
>>>> @@ -15,6 +15,7 @@
>>>>    #include <linux/set_memory.h>
>>>>    #ifdef CONFIG_RELOCATABLE
>>>>    #include <linux/elf.h>
>>>> +#include <asm/kaslr.h>
>>>>    #endif
>>>>
>>>>    #include <asm/fixmap.h>
>>>> @@ -649,6 +650,11 @@ static void __init setup_vm_final(void)
>>>>        /* Move to swapper page table */
>>>>        csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | 
>>>> SATP_MODE);
>>>>        local_flush_tlb_all();
>>>> +
>>>> +#ifdef CONFIG_RANDOMIZE_BASE
>>>> +     /* Clear orignial kernel image and set the right permission. */
>>>> +     kaslr_late_init();
>>>> +#endif
>>>>    }
>>>>
>>>>    void free_initmem(void)
>>>>
>>>
>>> Alex

