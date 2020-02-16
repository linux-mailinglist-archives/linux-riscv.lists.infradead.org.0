Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F0A16061A
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Feb 2020 20:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XQyQuYytrO5gDTwaDpFBdZzyIFaPAu6G5Sk9BfjJuA=; b=XflEHDUnWbBQL9
	2z0PU07/drP2Q39g1izl4C3pBwl5zszwAASQoe6H+UvkKGCChRkWOz4aLWjuURdQ1AaQOddqRPv1W
	paNk24tvOqcb2T2TCAevrtZ1CloEjdQIDGR9lchfzWfTQniJ0p2XhlWo6mpsmxfqig65MPcV+11Vr
	9WcrH/xqRZGukbNK9C9Z111lCDb9vkloj3PLxYwVWjj2AgNmMx6Tdw1p8Rw4Bgfljx3RNWkp4G3qn
	o5tiIyeRyNmTY0uOv9lUdqn1B0zNPiEdZFtyYhrKPs//fcIOuamwlramGzqzOOIws+HeGp44TzOFk
	NcHPeCHhNlV9NRcQVkjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Q1u-0000HV-4Z; Sun, 16 Feb 2020 19:56:38 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Q1q-0000Gy-8V
 for linux-riscv@lists.infradead.org; Sun, 16 Feb 2020 19:56:35 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 40287C0005;
 Sun, 16 Feb 2020 19:56:12 +0000 (UTC)
Subject: Re: [PATCH v2 3/3] riscv: Fix crash when flushing executable ioremap
 regions
To: Jan Kiszka <jan.kiszka@web.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
References: <cover.1581767384.git.jan.kiszka@web.de>
 <8a555b0b0934f0ba134de92f6cf9db8b1744316c.1581767384.git.jan.kiszka@web.de>
 <e721c440-2baf-d962-62ef-41a4f3b1333b@ghiti.fr>
 <b63e5945-0e31-940f-5ff7-6754ef5c034f@web.de>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <441527ef-1fd4-ed98-8381-8902c4e05fc5@ghiti.fr>
Date: Sun, 16 Feb 2020 14:56:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <b63e5945-0e31-940f-5ff7-6754ef5c034f@web.de>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_115634_437316_7E393110 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2/16/20 11:05 AM, Jan Kiszka wrote:
> On 16.02.20 15:41, Alex Ghiti wrote:
>> Hi Jan,
>>
>> On 2/15/20 6:49 AM, Jan Kiszka wrote:
>>> From: Jan Kiszka <jan.kiszka@siemens.com>
>>>
>>> Those are not backed by page structs, and pte_page is returning an
>>> invalid pointer.
>>>
>>> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
>>> =2D--
>>>   arch/riscv/mm/cacheflush.c | 3 ++-
>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
>>> index 8930ab7278e6..9ee2c1a387cc 100644
>>> =2D-- a/arch/riscv/mm/cacheflush.c
>>> +++ b/arch/riscv/mm/cacheflush.c
>>> @@ -84,7 +84,8 @@ void flush_icache_pte(pte_t pte)
>>>   {
>>>       struct page *page =3D pte_page(pte);
>>>
>>> -    if (!test_and_set_bit(PG_dcache_clean, &page->flags))
>>> +    if (!pfn_valid(pte_pfn(pte)) ||
>>> +        !test_and_set_bit(PG_dcache_clean, &page->flags))
>>>           flush_icache_all();
>>>   }
>>>   #endif /* CONFIG_MMU */
>>> =2D-
>>> 2.16.4
>>>
>>>
>>
>> When did you encounter such a situation ? i.e. executable code that is
>> not backed by struct page ?
>>
>> Riscv uses the generic implementation of ioremap and the way
>> _PAGE_IOREMAP is defined does not allow to map executable memory region
>> using ioremap, so I'm interested to understand how we end up in
>> flush_icache_pte for an executable region not backed by any struct page.
> 
> You can create executable mappings of memory that Linux does not
> initially consider as RAM via ioremap_prot or ioremap_page_range. We are
> using that in Jailhouse to load the hypervisor code into reserved memory
> that is ioremapped for the purpose. Works fine on x86, arm and arm64.
> 
> Jan

Ok thanks, I had missed this API.

Regarding your patch, I find it weird to do anything if the pfn is 
invalid, we could have garbage in pte pointing to an invalid region for 
example (I admit that the effect of flushing the icache would not be 
catastrophic in that situation).

I'm not saying I will come with a better solution but I'll take a deeper 
look tomorrow.

Alex


