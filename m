Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E3C16572F
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Feb 2020 06:49:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ezP70zCRwrnAfhTLqcZ8PRKl0LfdbGIqQr3S/RKl2c=; b=a/bpP2rv1+q+9t
	WiDga5qhJDx8bnajwygn/+O6apEYIDe3AFMEwPV/qy+5GDNXbBbmN9URdo5xLPDhptbCOh8ZJqP9P
	RiV8Sea5ihbWvOkovNqcSZajAn0eJOpJDUh6REUo2yPhQRv6O4zb+cxqVqX2ieHRq+tO435tMYXYh
	UZCxNUNJp9BAXpIFe2YRt1UlyTFhtji0S+Nj5vHkpmXnBRIFI8HYaWfT3RqF1Wu3bzyYMYLnM3WQM
	CwfVB+M2vDpWgPg3w4rDwMJZTGfgXVPJYv3+mXPsUwFYrP59OnSyKUe0Kc/snyRFsk2qkSewSThDs
	7XyXaWhuNdaAB89nqguA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4eiM-0001m5-Bm; Thu, 20 Feb 2020 05:49:34 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eiI-0001le-Aa
 for linux-riscv@lists.infradead.org; Thu, 20 Feb 2020 05:49:32 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7561A20006;
 Thu, 20 Feb 2020 05:49:21 +0000 (UTC)
Subject: Re: [PATCH v2 3/3] riscv: Fix crash when flushing executable ioremap
 regions
From: Alex Ghiti <alex@ghiti.fr>
To: Jan Kiszka <jan.kiszka@web.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
References: <cover.1581767384.git.jan.kiszka@web.de>
 <8a555b0b0934f0ba134de92f6cf9db8b1744316c.1581767384.git.jan.kiszka@web.de>
 <e721c440-2baf-d962-62ef-41a4f3b1333b@ghiti.fr>
 <b63e5945-0e31-940f-5ff7-6754ef5c034f@web.de>
 <441527ef-1fd4-ed98-8381-8902c4e05fc5@ghiti.fr>
Message-ID: <74bd5c0c-cdeb-5498-2948-35f40600a8bc@ghiti.fr>
Date: Thu, 20 Feb 2020 00:49:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <441527ef-1fd4-ed98-8381-8902c4e05fc5@ghiti.fr>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_214930_639404_9040D4B4 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
Cc: linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Jan,

On 2/16/20 2:56 PM, Alex Ghiti wrote:
> On 2/16/20 11:05 AM, Jan Kiszka wrote:
>> On 16.02.20 15:41, Alex Ghiti wrote:
>>> Hi Jan,
>>>
>>> On 2/15/20 6:49 AM, Jan Kiszka wrote:
>>>> From: Jan Kiszka <jan.kiszka@siemens.com>
>>>>
>>>> Those are not backed by page structs, and pte_page is returning an
>>>> invalid pointer.
>>>>
>>>> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
>>>> =2D--
>>>>   arch/riscv/mm/cacheflush.c | 3 ++-
>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
>>>> index 8930ab7278e6..9ee2c1a387cc 100644
>>>> =2D-- a/arch/riscv/mm/cacheflush.c
>>>> +++ b/arch/riscv/mm/cacheflush.c
>>>> @@ -84,7 +84,8 @@ void flush_icache_pte(pte_t pte)
>>>>   {
>>>>       struct page *page =3D pte_page(pte);
>>>>
>>>> -    if (!test_and_set_bit(PG_dcache_clean, &page->flags))
>>>> +    if (!pfn_valid(pte_pfn(pte)) ||
>>>> +        !test_and_set_bit(PG_dcache_clean, &page->flags))
>>>>           flush_icache_all();
>>>>   }
>>>>   #endif /* CONFIG_MMU */
>>>> =2D-
>>>> 2.16.4
>>>>
>>>>
>>>
>>> When did you encounter such a situation ? i.e. executable code that is
>>> not backed by struct page ?
>>>
>>> Riscv uses the generic implementation of ioremap and the way
>>> _PAGE_IOREMAP is defined does not allow to map executable memory region
>>> using ioremap, so I'm interested to understand how we end up in
>>> flush_icache_pte for an executable region not backed by any struct page.
>>
>> You can create executable mappings of memory that Linux does not
>> initially consider as RAM via ioremap_prot or ioremap_page_range. We are
>> using that in Jailhouse to load the hypervisor code into reserved memory
>> that is ioremapped for the purpose. Works fine on x86, arm and arm64.
>>
>> Jan
> 
> Ok thanks, I had missed this API.
> 
> Regarding your patch, I find it weird to do anything if the pfn is 
> invalid, we could have garbage in pte pointing to an invalid region for 
> example (I admit that the effect of flushing the icache would not be 
> catastrophic in that situation).
> 
> I'm not saying I will come with a better solution but I'll take a deeper 
> look tomorrow.
> 
> Alex
> 

I took a look at the Jailhouse driver. After loading the hypervisor into 
the ioremapped region, it explicitly ensures icache/dcache consistency 
by calling flush_icache_range here:

https://github.com/siemens/jailhouse/blob/master/driver/main.c#L505

There seems to be an implicit (?) rule that states that in-kernel code 
modification must handle icache/dcache consistency:

In arm64 set_pte_at definition, they do not sync icache/dcache when the 
pte is kernel:

https://elixir.bootlin.com/linux/latest/source/arch/arm64/include/asm/pgtable.h#L271

In mips, they do the same:

https://elixir.bootlin.com/linux/latest/source/arch/mips/mm/cache.c#L137

So funnily, I'd do the contrary of what you have done, the mips way:

diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index 8930ab7278e6..c90c8bb49109 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -84,6 +84,9 @@ void flush_icache_pte(pte_t pte)
  {
         struct page *page = pte_page(pte);

+       if (unlikely(!pfn_valid(pte_pfn(pte))))
+               return;
+
         if (!test_and_set_bit(PG_dcache_clean, &page->flags))
                 flush_icache_all();
  }

What do you think ?

Alex

