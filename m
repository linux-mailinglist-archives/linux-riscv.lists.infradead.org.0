Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0A42022BB
	for <lists+linux-riscv@lfdr.de>; Sat, 20 Jun 2020 11:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAYWls23gdeJUwiad1hDkO8zNstg5j+/CmRar4VGPeE=; b=axjBV0gB4uyCDm
	Dnp1nTOmYMhPyqeeNKQyAqp5cPOxGrtR/FOYoSoyf42dTGM0SGUoEaYA1MTPe2P3Ncqg8vgBzOKqi
	RnzL7wjXjvzLp5/jNBKeoWkobGbLAHcSgpqf8JXHOUA1AdsGhSu1QJt8dLJPBFxMzOO6etpyjlkue
	yki2Bkv81UrpHpogGKqQ6Bs08kq8EAL2q2BwEwLLGXrLpZl9T/5xJQPkoFtCPhg/KOKbK62/OVcLC
	rT2BRep7ssHLpkUhzXb4VPD01HpmKKSBqMWk3bCDcP9Y2tBV0c8Tr49wWo5YVFz+UwsiI7MI/fT9Z
	PZes1dwKVVLGOtj2leDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmZQ9-0002Pb-Dm; Sat, 20 Jun 2020 09:04:17 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmZQ4-0002Oh-Ud
 for linux-riscv@lists.infradead.org; Sat, 20 Jun 2020 09:04:14 +0000
X-Originating-IP: 2.7.62.168
Received: from [192.168.1.36] (lfbn-lyo-1-472-168.w2-7.abo.wanadoo.fr
 [2.7.62.168]) (Authenticated sender: alex@ghiti.fr)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 3DEE040003;
 Sat, 20 Jun 2020 09:04:01 +0000 (UTC)
Subject: Re: [PATCH 2/2] riscv: Use PUD/PGDIR entries for linear mapping when
 possible
To: Atish Patra <atishp@atishpatra.org>
References: <20200603153608.30056-1-alex@ghiti.fr>
 <20200603153608.30056-3-alex@ghiti.fr>
 <CAOnJCU+JSuOGbOmZW-vqb-A_qR7CJc=qG16FbgOLWSm1vhJH1A@mail.gmail.com>
 <23529a84-44a0-3c45-f16d-5a7ee528610d@ghiti.fr>
 <CAOnJCU+s5JuNdPg_R-Cg2+WnMjR51DD0ekbRr84EFCig6=YyZA@mail.gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <f1a5ec6e-540b-497f-a9ad-f2d1e7adfc65@ghiti.fr>
Date: Sat, 20 Jun 2020 05:04:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAOnJCU+s5JuNdPg_R-Cg2+WnMjR51DD0ekbRr84EFCig6=YyZA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_020413_261496_85845BA7 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Atish,

Le 6/19/20 à 2:16 PM, Atish Patra a écrit :
> On Thu, Jun 18, 2020 at 9:28 PM Alex Ghiti <alex@ghiti.fr> wrote:
>> Hi Atish,
>>
>> Le 6/18/20 à 8:47 PM, Atish Patra a écrit :
>>> On Wed, Jun 3, 2020 at 8:38 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
>>>> Improve best_map_size so that PUD or PGDIR entries are used for linear
>>>> mapping when possible as it allows better TLB utilization.
>>>>
>>>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>>>> ---
>>>>    arch/riscv/mm/init.c | 45 +++++++++++++++++++++++++++++++++-----------
>>>>    1 file changed, 34 insertions(+), 11 deletions(-)
>>>>
>>>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
>>>> index 9a5c97e091c1..d275f9f834cf 100644
>>>> --- a/arch/riscv/mm/init.c
>>>> +++ b/arch/riscv/mm/init.c
>>>> @@ -424,13 +424,29 @@ static void __init create_pgd_mapping(pgd_t *pgdp,
>>>>           create_pgd_next_mapping(nextp, va, pa, sz, prot);
>>>>    }
>>>>
>>>> -static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
>>>> +static bool is_map_size_ok(uintptr_t map_size, phys_addr_t base,
>>>> +                          uintptr_t base_virt, phys_addr_t size)
>>>>    {
>>>> -       /* Upgrade to PMD_SIZE mappings whenever possible */
>>>> -       if ((base & (PMD_SIZE - 1)) || (size & (PMD_SIZE - 1)))
>>>> -               return PAGE_SIZE;
>>>> +       return !((base & (map_size - 1)) || (base_virt & (map_size - 1)) ||
>>>> +                       (size < map_size));
>>>> +}
>>>> +
>>>> +static uintptr_t __init best_map_size(phys_addr_t base, uintptr_t base_virt,
>>>> +                                     phys_addr_t size)
>>>> +{
>>>> +#ifndef __PAGETABLE_PMD_FOLDED
>>>> +       if (is_map_size_ok(PGDIR_SIZE, base, base_virt, size))
>>>> +               return PGDIR_SIZE;
>>>> +
>>>> +       if (pgtable_l4_enabled)
>>>> +               if (is_map_size_ok(PUD_SIZE, base, base_virt, size))
>>>> +                       return PUD_SIZE;
>>>> +#endif
>>>> +
>>>> +       if (is_map_size_ok(PMD_SIZE, base, base_virt, size))
>>>> +               return PMD_SIZE;
>>>>
>>>> -       return PMD_SIZE;
>>>> +       return PAGE_SIZE;
>>>>    }
>>>>
>>>>    /*
>>>> @@ -576,7 +592,7 @@ void create_kernel_page_table(pgd_t *pgdir, uintptr_t map_size)
>>>>    asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>>>>    {
>>>>           uintptr_t va, end_va;
>>>> -       uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
>>>> +       uintptr_t map_size;
>>>>
>>>>           load_pa = (uintptr_t)(&_start);
>>>>           load_sz = (uintptr_t)(&_end) - load_pa;
>>>> @@ -587,6 +603,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>>>>
>>>>           kernel_virt_addr = KERNEL_VIRT_ADDR;
>>>>
>>>> +       map_size = best_map_size(load_pa, PAGE_OFFSET, MAX_EARLY_MAPPING_SIZE);
>>>>           va_pa_offset = PAGE_OFFSET - load_pa;
>>>>           va_kernel_pa_offset = kernel_virt_addr - load_pa;
>>>>           pfn_base = PFN_DOWN(load_pa);
>>>> @@ -700,6 +717,8 @@ static void __init setup_vm_final(void)
>>>>
>>>>           /* Map all memory banks */
>>>>           for_each_memblock(memory, reg) {
>>>> +               uintptr_t remaining_size;
>>>> +
>>>>                   start = reg->base;
>>>>                   end = start + reg->size;
>>>>
>>>> @@ -707,15 +726,19 @@ static void __init setup_vm_final(void)
>>>>                           break;
>>>>                   if (memblock_is_nomap(reg))
>>>>                           continue;
>>>> -               if (start <= __pa(PAGE_OFFSET) &&
>>>> -                   __pa(PAGE_OFFSET) < end)
>>>> -                       start = __pa(PAGE_OFFSET);
>>>>
>>>> -               map_size = best_map_size(start, end - start);
>>>> -               for (pa = start; pa < end; pa += map_size) {
>>>> +               pa = start;
>>>> +               remaining_size = reg->size;
>>>> +
>>>> +               while (remaining_size) {
>>>>                           va = (uintptr_t)__va(pa);
>>>> +                       map_size = best_map_size(pa, va, remaining_size);
>>>> +
>>>>                           create_pgd_mapping(swapper_pg_dir, va, pa,
>>>>                                              map_size, PAGE_KERNEL);
>>>> +
>>>> +                       pa += map_size;
>>>> +                       remaining_size -= map_size;
>>>>                   }
>>>>           }
>>>>
>>> This may not work in the RV32 with 2G memory  and if the map_size is
>>> determined to be a page size
>>> for the last memblock. Both pa & remaining_size will overflow and the
>>> loop will try to map memory from zero again.
>> I'm not sure I understand: if pa starts at 0x8000_0000 and size is 2G,
>> then pa will overflow in the last iteration, but remaining_size will
>> then be equal to 0 right ?
>>
> Not unless the remaining_size is at least page size aligned. The last
> remaining size would "fff".
> It will overflow as well after subtracting the map_size.
>
>> And by the way, I realize that this loop only handles sizes that are
>> aligned on map_size.
>>
> Yeah.


Thanks for noticing, I send a v2.

Alex


>
>> Thanks,
>>
>> Alex
>>
>>
>>>> --
>>>> 2.20.1
>>>>
>>>>
>
>

